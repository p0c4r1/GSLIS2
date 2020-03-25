unit UnitIsiHasilNoLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniEdit, uniLabel,
  uniTreeView, uniButton, uniMemo, uniBasicGrid, uniStringGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniDBGrid;

type
  TfrmIsiHasilNoLab = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel1: TUniLabel;
    edTgl: TUniEdit;
    edNomor: TUniEdit;
    UniLabel2: TUniLabel;
    edNama: TUniEdit;
    UniLabel3: TUniLabel;
    edKelaminNama: TUniEdit;
    edUmur: TUniEdit;
    UniLabel4: TUniLabel;
    mmAlamat: TUniMemo;
    mmCatatan: TUniMemo;
    UniLabel5: TUniLabel;
    edDokter: TUniEdit;
    lblStatus: TUniLabel;
    UniLabel7: TUniLabel;
    UniButton1: TUniButton;
    tvHistori: TUniTreeView;
    UniLabel8: TUniLabel;
    mmCatatanOrder: TUniMemo;
    UniLabel9: TUniLabel;
    edTglSelesai: TUniEdit;
    qHdr: TFDQuery;
    grdHasil: TUniStringGrid;
    btnPrev: TUniButton;
    btnNext: TUniButton;
    btnValid: TUniButton;
    btnSave: TUniButton;
    cmdSave: TFDCommand;
    btnValidAll: TUniButton;
    btnAbnormal: TUniButton;
    btnPrint: TUniButton;
    btnRerun: TUniButton;
    procedure UniFormAfterShow(Sender: TObject);
    procedure edNomorKeyPress(Sender: TObject; var Key: Char);
    procedure UniFormCreate(Sender: TObject);
    procedure grdHasilDrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnValidClick(Sender: TObject);
    procedure edTglKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveClick(Sender: TObject);
    procedure btnValidAllClick(Sender: TObject);
    procedure btnAbnormalClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnRerunClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  var
    pasien_id: String;
  var
    header_id: String;
  public
    { Public declarations }
  end;

function frmIsiHasilNoLab: TfrmIsiHasilNoLab;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UnitJasper, UnitReportDisplay;

function FindRootNode(ACaption: String; ATreeView: TUniTreeView): TUniTreeNode;
var
  LCount: Integer;
begin
  result := nil;
  LCount := 0;
  while (LCount < ATreeView.Items.Count) and (result = nil) do
  begin
    if (ATreeView.Items.Item[LCount].Text = ACaption) and
      (ATreeView.Items.Item[LCount].Parent = nil) then
      result := ATreeView.Items.Item[LCount];
    inc(LCount);
  end;
end;

function getDataOrder(nomor: string): boolean;
var
  sql, tanggal, dokter_id, nama, umur, kelamin_nama, alamat,
    keterangan, catatan, dokter_nama, catatan_order, tgl_selesai, tgl_histori,
    hasil: string;
  i: Integer;
  LDestNode: TUniTreeNode;
begin
  frmIsiHasilNoLab.ShowMask('Loading');
  frmIsiHasilNoLab.UniSession.Synchronize();

  sql := 'select * from order_header where flgBatal=' + QuotedStr('N') +
    ' and nomor like' + QuotedStr('%' + frmIsiHasilNoLab.edNomor.Text) +
    ' and flgBatal=' + QuotedStr('N') +
    ' order by tanggal desc,id desc limit 0,1';

  if frmIsiHasilNoLab.qHdr.Active then
    frmIsiHasilNoLab.qHdr.Active := False;
  frmIsiHasilNoLab.qHdr.sql.Text := sql;
  frmIsiHasilNoLab.qHdr.Active := True;

  if frmIsiHasilNoLab.qHdr.RecordCount > 0 then
  begin
    frmIsiHasilNoLab.header_id := frmIsiHasilNoLab.qHdr.FieldByName
      ('id').AsString;
    nomor := frmIsiHasilNoLab.qHdr.FieldByName('nomor').AsString;
    tanggal := FormatDateTime('YYYY-MM-dd',
      frmIsiHasilNoLab.qHdr.FieldByName('tanggal').AsDateTime);
    frmIsiHasilNoLab.header_id := frmIsiHasilNoLab.qHdr.FieldByName
      ('id').AsString;
    dokter_id := frmIsiHasilNoLab.qHdr.FieldByName('dokter_id').AsString;
    frmIsiHasilNoLab.pasien_id := frmIsiHasilNoLab.qHdr.FieldByName('pasien_id').AsString;
    catatan_order := frmIsiHasilNoLab.qHdr.FieldByName('catatan').AsString;
    tgl_selesai := frmIsiHasilNoLab.qHdr.FieldByName
      ('ket_tgl_selesai_date').AsString;

    // pasien
    if frmIsiHasilNoLab.qHdr.Active then
      frmIsiHasilNoLab.qHdr.Active := False;
    frmIsiHasilNoLab.qHdr.sql.Text :=
      'select p.*,k.nama as kelamin_nama,pf.nama as pf_nama,CONCAT(TIMESTAMPDIFF( YEAR, p.tanggal_lahir, now() ),'
      + QuotedStr(' th ') +
      ',TIMESTAMPDIFF( MONTH, p.tanggal_lahir, now() ) % 12,' +
      QuotedStr(' bl ') +
      ',FLOOR( TIMESTAMPDIFF( DAY, p.tanggal_lahir, now() ) % 30.4375 )) as umur_lengkap from  pasien p, jenis_kelamin k, prefix pf where p.id = '
      + frmIsiHasilNoLab.pasien_id + ' and p.jenis_kelamin_id = k.id and p.prefix_id = pf.id ';
    frmIsiHasilNoLab.qHdr.Active := True;
    nama := frmIsiHasilNoLab.qHdr.FieldByName('nama').AsString;
    kelamin_nama := frmIsiHasilNoLab.qHdr.FieldByName('kelamin_nama').AsString;
    alamat := frmIsiHasilNoLab.qHdr.FieldByName('alamat').AsString;
    umur := frmIsiHasilNoLab.qHdr.FieldByName('umur_lengkap').AsString;

    // dokter
    if frmIsiHasilNoLab.qHdr.Active then
      frmIsiHasilNoLab.qHdr.Active := False;
    frmIsiHasilNoLab.qHdr.sql.Text := 'select * from dokter where id = ' +
      dokter_id + ' ';
    frmIsiHasilNoLab.qHdr.Active := True;
    dokter_nama := frmIsiHasilNoLab.qHdr.FieldByName('nama').AsString;

    // fill info
    frmIsiHasilNoLab.edTgl.Text := tanggal;
    frmIsiHasilNoLab.edNomor.Text := nomor;
    frmIsiHasilNoLab.edNama.Text := nama;
    frmIsiHasilNoLab.edKelaminNama.Text := kelamin_nama;
    frmIsiHasilNoLab.mmAlamat.Lines.Text := alamat;
    frmIsiHasilNoLab.mmCatatan.Lines.Text := keterangan;
    frmIsiHasilNoLab.edDokter.Text := dokter_nama;
    frmIsiHasilNoLab.mmCatatanOrder.Text := catatan_order;
    frmIsiHasilNoLab.edTglSelesai.Text := tgl_selesai;
    frmIsiHasilNoLab.edUmur.Text := umur;

    frmIsiHasilNoLab.grdHasil.RowCount := 1;
    // details
    if frmIsiHasilNoLab.qHdr.Active then
      frmIsiHasilNoLab.qHdr.Active := False;
    frmIsiHasilNoLab.qHdr.sql.Text :=
      'select od.*,t.ada_subtest,t.cetak_nota,t.cetak_hasil,t.ada_hasil,t.ada_harga,t.ref_test_id  from  order_detail od, test t where header_id = '
      + frmIsiHasilNoLab.header_id + ' and od.test_id = t.id order by t.kode ';
    frmIsiHasilNoLab.qHdr.Active := True;

    frmIsiHasilNoLab.qHdr.First;
    while not frmIsiHasilNoLab.qHdr.Eof do
    begin
      if frmIsiHasilNoLab.qHdr.FieldByName('ada_hasil').AsString = 'Y' then
      begin
        frmIsiHasilNoLab.grdHasil.RowCount :=
          frmIsiHasilNoLab.grdHasil.RowCount + 1;
        frmIsiHasilNoLab.grdHasil.Cells[1, frmIsiHasilNoLab.grdHasil.RowCount
          - 1] := '';
        frmIsiHasilNoLab.grdHasil.Cells[5, frmIsiHasilNoLab.grdHasil.RowCount
          - 1] := '';

        frmIsiHasilNoLab.grdHasil.Cells[0, frmIsiHasilNoLab.grdHasil.RowCount -
          1] := frmIsiHasilNoLab.qHdr.FieldByName('id').AsString;
        if frmIsiHasilNoLab.qHdr.FieldByName('flg_valid').AsString = 'Y' then
          frmIsiHasilNoLab.grdHasil.Cells[1, frmIsiHasilNoLab.grdHasil.RowCount
            - 1] := 'V';
        frmIsiHasilNoLab.grdHasil.Cells[2, frmIsiHasilNoLab.grdHasil.RowCount -
          1] := frmIsiHasilNoLab.qHdr.FieldByName('nama_test').AsString;
        frmIsiHasilNoLab.grdHasil.Cells[3, frmIsiHasilNoLab.grdHasil.RowCount -
          1] := frmIsiHasilNoLab.qHdr.FieldByName('rujukan').AsString;
        frmIsiHasilNoLab.grdHasil.Cells[4, frmIsiHasilNoLab.grdHasil.RowCount -
          1] := frmIsiHasilNoLab.qHdr.FieldByName('hasil').AsString;
        if frmIsiHasilNoLab.qHdr.FieldByName('flg_abnormal').AsString = 'Y' then
          frmIsiHasilNoLab.grdHasil.Cells[5, frmIsiHasilNoLab.grdHasil.RowCount
            - 1] := '*';

      end;
      frmIsiHasilNoLab.qHdr.Next;
    end;

    // histori
    if frmIsiHasilNoLab.qHdr.Active then
      frmIsiHasilNoLab.qHdr.Active := False;
    frmIsiHasilNoLab.qHdr.sql.Text :=
      'select oh.id,od.id as detail_id,t.nama, od.hasil, od.flg_valid,left(oh.tanggal,16) tanggal,oh.catatan from order_header oh, order_detail od, test t where t.ada_hasil='
      + QuotedStr('Y') +
      ' and oh.id = od.header_id and od.test_id = t.id and oh.flgBatal=' +
      QuotedStr('N') + ' and oh.pasien_id = ' + QuotedStr(frmIsiHasilNoLab.pasien_id) +
      ' and left(oh.tanggal,10) < left(now(),10) order by oh.tanggal desc ';
    frmIsiHasilNoLab.qHdr.Active := True;
    // tgl_histori := frmIsiHasilNoLab.qHdr.FieldByName('tanggal').AsString;

    // add
    frmIsiHasilNoLab.qHdr.First;
    tgl_histori := '';
    frmIsiHasilNoLab.tvHistori.Items.Clear;
    while not frmIsiHasilNoLab.qHdr.Eof do
    begin
      if tgl_histori <> frmIsiHasilNoLab.qHdr.FieldByName('tanggal').AsString
      then
      begin
        frmIsiHasilNoLab.tvHistori.Items.Add(nil,
          frmIsiHasilNoLab.qHdr.FieldByName('tanggal').AsString);
        tgl_histori := frmIsiHasilNoLab.qHdr.FieldByName('tanggal').AsString;
      end;

      frmIsiHasilNoLab.qHdr.Next;
    end;
    frmIsiHasilNoLab.qHdr.First;
    while not frmIsiHasilNoLab.qHdr.Eof do
    begin
      LDestNode := FindRootNode(frmIsiHasilNoLab.qHdr.FieldByName('tanggal')
        .AsString, frmIsiHasilNoLab.tvHistori);
      if LDestNode <> nil then
      begin
        if frmIsiHasilNoLab.qHdr.FieldByName('flg_valid').AsString = 'Y' then
          hasil := frmIsiHasilNoLab.qHdr.FieldByName('hasil').AsString
        else
          hasil := 'Validasi';
      end;
      frmIsiHasilNoLab.tvHistori.Items.AddChild(LDestNode,
        frmIsiHasilNoLab.qHdr.FieldByName('nama').AsString + ' : ' + hasil);
      frmIsiHasilNoLab.qHdr.Next;

    end;

    result := True;

  end
  else
  begin
    result := False;
  end;

  frmIsiHasilNoLab.HideMask;

end;

function frmIsiHasilNoLab: TfrmIsiHasilNoLab;
begin
  result := TfrmIsiHasilNoLab(UniMainModule.GetFormInstance(TfrmIsiHasilNoLab));
end;

procedure TfrmIsiHasilNoLab.btnPrevClick(Sender: TObject);
begin
  frmIsiHasilNoLab.ShowMask('Loading');
  frmIsiHasilNoLab.UniSession.Synchronize();
  if qHdr.Active then
    qHdr.Active := False;
  qHdr.sql.Text := 'select * from order_header where flgBatal=' + QuotedStr('N')
    + ' and id < ' + header_id + ' and left(tanggal,10) <= ' +
    QuotedStr(edTgl.Text) + '  and flgBatal=' + QuotedStr('N') +
    ' order by tanggal desc ,id desc limit 0,1';
  qHdr.Active := True;

  if qHdr.RecordCount > 0 then
  begin
    edNomor.Text := qHdr.FieldByName('nomor').AsString;
    edTgl.Text := FormatDateTime('YYYY-MM-dd',
      frmIsiHasilNoLab.qHdr.FieldByName('tanggal').AsDateTime);
    if not getDataOrder(edNomor.Text) then
      ShowMessage('Nomor Lab. tidak ada');
  end;
  frmIsiHasilNoLab.HideMask;

end;

procedure TfrmIsiHasilNoLab.btnPrintClick(Sender: TObject);
var
  result: string;
  nama_report: string;
begin
  nama_report := 'report_hasil';

  ShowMask('Loading');
  UniSession.Synchronize();

  frmReportDisplay.UniURLFrame1.URL := reportExecReqParams('pdf', nama_report,
    header_id, '', '');
  frmReportDisplay.ShowModal();
  HideMask;
end;

procedure TfrmIsiHasilNoLab.btnRerunClick(Sender: TObject);
begin
  if (grdHasil.Row > 0) and (grdHasil.Cells[1, grdHasil.Row] = 'V') then
  begin
    grdHasil.Cells[1, grdHasil.Row] := '';
    grdHasil.Cells[4, grdHasil.Row] := '';
    grdHasil.Cells[5, grdHasil.Row] := '';
  end;
end;

procedure TfrmIsiHasilNoLab.btnSaveClick(Sender: TObject);
var
  i: Integer;
  order_header_id, dtl_id, hasil, user_id, tgl_susul, flg_valid,
    flg_abnormal: string;
begin
  frmIsiHasilNoLab.ShowMask('Loading');
  frmIsiHasilNoLab.UniSession.Synchronize();

  user_id := UniApplication.Cookies.GetCookie('UserId');
  tgl_susul := edTgl.Text;
  order_header_id := header_id;

  for i := 1 to grdHasil.RowCount do
  begin
    dtl_id := grdHasil.Cells[0, i];
    if dtl_id <> '' then
    begin
      hasil := grdHasil.Cells[4, i];
      flg_valid := 'N';
      if grdHasil.Cells[1, i] <> '' then
        flg_valid := 'Y';
      flg_abnormal := 'N';
      if grdHasil.Cells[5, i] <> '' then
        flg_abnormal := 'Y';
      // save ke database
      if cmdSave.Active then
        cmdSave.Active := False;
      cmdSave.ParamByName('user_id').AsString := user_id;
      cmdSave.ParamByName('tgl_susul').AsString := tgl_susul;
      cmdSave.ParamByName('hasil').AsString := hasil;
      cmdSave.ParamByName('dtl_id').AsString := dtl_id;
      cmdSave.ParamByName('flg_valid').AsString := flg_valid;
      cmdSave.ParamByName('flg_abnormal').AsString := flg_abnormal;
      cmdSave.ParamByName('order_header_id').AsString := order_header_id;
      cmdSave.Execute();
    end;

  end;
  frmIsiHasilNoLab.HideMask;
end;

procedure TfrmIsiHasilNoLab.btnValidAllClick(Sender: TObject);
var
  i: Integer;
begin
  frmIsiHasilNoLab.ShowMask('Loading');
  frmIsiHasilNoLab.UniSession.Synchronize();
  for i := 1 to grdHasil.RowCount do
  begin
    if grdHasil.Cells[4, i] <> '' then
    begin
      grdHasil.Cells[1, i] := 'V';
    end;
  end;
  frmIsiHasilNoLab.HideMask;
end;

procedure TfrmIsiHasilNoLab.btnValidClick(Sender: TObject);
begin
  if (grdHasil.Row > 0) and (grdHasil.Cells[4, grdHasil.Row] <> '') then
    grdHasil.Cells[1, grdHasil.Row] := 'V';
end;

procedure TfrmIsiHasilNoLab.edNomorKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if not getDataOrder(edNomor.Text) then
      ShowMessage('Nomor Lab. tidak ada');
  end;
end;

procedure TfrmIsiHasilNoLab.edTglKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
  begin
    frmIsiHasilNoLab.ShowMask('Loading');
    frmIsiHasilNoLab.UniSession.Synchronize();
    if qHdr.Active then
      qHdr.Active := False;
    qHdr.sql.Text := 'select * from order_header where flgBatal=' +
      QuotedStr('N') + ' and left(tanggal,10) = ' + QuotedStr(edTgl.Text) +
      '  and flgBatal=' + QuotedStr('N') + ' order by tanggal asc,id limit 0,1';
    qHdr.Active := True;

    if qHdr.RecordCount > 0 then
    begin
      edNomor.Text := qHdr.FieldByName('nomor').AsString;
      edTgl.Text := FormatDateTime('YYYY-MM-dd',
        frmIsiHasilNoLab.qHdr.FieldByName('tanggal').AsDateTime);
      if not getDataOrder(edNomor.Text) then
        ShowMessage('Nomor Lab. tidak ada');
    end;
    frmIsiHasilNoLab.HideMask;
  end;
end;

procedure TfrmIsiHasilNoLab.grdHasilDrawCell(Sender: TObject;
  ACol, ARow: Integer; var Value: string; Attribs: TUniCellAttribs);
begin
  if ACol <> 2 then
    Attribs.Style.Style := 'text-align: center;';
end;

procedure TfrmIsiHasilNoLab.btnAbnormalClick(Sender: TObject);
begin
  if (grdHasil.Row > 0) and (grdHasil.Cells[4, grdHasil.Row] <> '') then
    grdHasil.Cells[5, grdHasil.Row] := '*';
end;

procedure TfrmIsiHasilNoLab.btnNextClick(Sender: TObject);
begin
  frmIsiHasilNoLab.ShowMask('Loading');
  frmIsiHasilNoLab.UniSession.Synchronize();
  if qHdr.Active then
    qHdr.Active := False;
  qHdr.sql.Text := 'select * from order_header where flgBatal=' + QuotedStr('N')
    + ' and id > ' + header_id + ' and left(tanggal,10) >= ' +
    QuotedStr(edTgl.Text) + '  and flgBatal=' + QuotedStr('N') +
    ' order by tanggal asc,id limit 0,1';
  qHdr.Active := True;

  if qHdr.RecordCount > 0 then
  begin
    edNomor.Text := qHdr.FieldByName('nomor').AsString;
    edTgl.Text := FormatDateTime('YYYY-MM-dd',
      frmIsiHasilNoLab.qHdr.FieldByName('tanggal').AsDateTime);
    if not getDataOrder(edNomor.Text) then
      ShowMessage('Nomor Lab. tidak ada');
  end;
  frmIsiHasilNoLab.HideMask;
end;

procedure TfrmIsiHasilNoLab.UniButton1Click(Sender: TObject);
var
  result: string;
  nama_report: string;
begin
  nama_report := 'report_hasil_historical';

  ShowMask('Loading');
  UniSession.Synchronize();

  frmReportDisplay.UniURLFrame1.URL := reportExecReqParams('pdf', nama_report,
    pasien_id, '', '');
  frmReportDisplay.ShowModal();
  HideMask;
end;

procedure TfrmIsiHasilNoLab.UniFormAfterShow(Sender: TObject);
begin

  if qHdr.Active then
    qHdr.Active := False;
  qHdr.sql.Text :=
    'select nomor from order_header where left(tanggal,10) = left(now(),10) and flgBatal='
    + QuotedStr('N') + ' order by nomor';
  qHdr.Active := True;

  if qHdr.RecordCount > 0 then
  begin
    getDataOrder(qHdr.FieldByName('nomor').AsString);
  end;

end;

procedure TfrmIsiHasilNoLab.UniFormCreate(Sender: TObject);
begin

  // grdHasil.JSInterface.JSConfigPlugin('Ext.grid.plugin.CellEditing',
  // ['clicksToEdit', 1]);

  edTgl.Text := FormatDateTime('YYYY-MM-dd', Now);

  grdHasil.Cells[0, 0] := '';
  grdHasil.Cells[1, 0] := 'V';
  grdHasil.Cells[2, 0] := 'Pemeriksaan';
  grdHasil.Cells[3, 0] := 'Nilai Normal';
  grdHasil.Cells[4, 0] := 'Hasil';
  grdHasil.Cells[5, 0] := 'X';
  grdHasil.Cells[6, 0] := 'I';
  grdHasil.ColWidths[0] := 0;
  grdHasil.ColWidths[1] := 20;
  grdHasil.ColWidths[2] := 200;
  grdHasil.ColWidths[3] := 150;
  grdHasil.ColWidths[4] := 200;
  grdHasil.ColWidths[5] := 20;
  grdHasil.ColWidths[6] := 20;

end;

end.
