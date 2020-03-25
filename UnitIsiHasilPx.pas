unit UnitIsiHasilPx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniStringGrid, uniMemo, uniPanel,
  uniPageControl, uniEdit, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniLabel, uniGUIBaseClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniButton;

type
  TfrmIsiHasilPx = class(TUniForm)
    pnlSideBar: TUniContainerPanel;
    pnlFilter: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    cbTest: TUniDBLookupComboBox;
    edTgl: TUniEdit;
    pnlCatatanOrder: TUniContainerPanel;
    pcCatatanOrder: TUniPageControl;
    tabInternal: TUniTabSheet;
    pnlPasien: TUniContainerPanel;
    UniLabel4: TUniLabel;
    edNama: TUniEdit;
    edKelamin: TUniEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    edUmur: TUniEdit;
    mmAlamat: TUniMemo;
    pnlMain: TUniContainerPanel;
    pnlAction: TUniContainerPanel;
    pnlCatatan: TUniContainerPanel;
    mmCatatanHasil: TUniMemo;
    UniLabel1: TUniLabel;
    QTest: TFDQuery;
    DSTest: TDataSource;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    grdHasil: TUniStringGrid;
    UniLabel7: TUniLabel;
    edDokter: TUniEdit;
    QOrder: TFDQuery;
    QPasien: TFDQuery;
    btnUpdate: TUniButton;
    QCatatanOrder: TFDQuery;
    mmCatatanPasien: TUniMemo;
    UniLabel8: TUniLabel;
    tabInterview: TUniTabSheet;
    mmCatatanInternal: TUniMemo;
    grdInterview: TUniStringGrid;
    procedure UniFormBeforeShow(Sender: TObject);
    procedure grdHasilDrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
    procedure edTglKeyPress(Sender: TObject; var Key: Char);
    procedure cbTestKeyPress(Sender: TObject; var Key: Char);
    procedure grdHasilSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure grdHasilClick(Sender: TObject);
    procedure UniFormAfterShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmIsiHasilPx: TfrmIsiHasilPx;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

procedure clearInfoPasien;
begin
  frmIsiHasilPx.edNama.Clear;
  frmIsiHasilPx.edKelamin.Clear;
  frmIsiHasilPx.edUmur.Clear;
  frmIsiHasilPx.mmAlamat.Lines.Clear;
  frmIsiHasilPx.edDokter.Clear;
end;

procedure loadDataPasien(detail_id: string);
begin
  clearInfoPasien;
  if frmIsiHasilPx.QPasien.Active then
    frmIsiHasilPx.QPasien.Active := False;
  frmIsiHasilPx.QPasien.ParamByName('detail_id').Value := detail_id;
  frmIsiHasilPx.QPasien.Active := True;
  frmIsiHasilPx.edNama.Text := frmIsiHasilPx.QPasien.FieldByName
    ('nama').AsString;
  frmIsiHasilPx.edKelamin.Text := frmIsiHasilPx.QPasien.FieldByName
    ('jk_nama').AsString;
  frmIsiHasilPx.edUmur.Text := frmIsiHasilPx.QPasien.FieldByName
    ('umur').AsString;
  frmIsiHasilPx.mmAlamat.Lines.Text := frmIsiHasilPx.QPasien.FieldByName
    ('alamat').AsString;
  frmIsiHasilPx.edDokter.Text := frmIsiHasilPx.QPasien.FieldByName
    ('dokter').AsString;
  frmIsiHasilPx.mmCatatanPasien.Lines.Text := frmIsiHasilPx.QPasien.FieldByName
    ('catatan').AsString;
end;

procedure clearCatatanOrder;
var
  I, J: Integer;
begin
  for I := 1 to frmIsiHasilPx.grdInterview.rowcount do
  begin
    for J := 0 to frmIsiHasilPx.grdInterview.ColCount do
      frmIsiHasilPx.grdInterview.Cells[J, I] := '';
  end;
  frmIsiHasilPx.mmCatatanInternal.Lines.Clear;
  frmIsiHasilPx.pcCatatanOrder.Pages[1].Visible := False;
end;

procedure loadCatatanOrder(detail_id: string);
begin
  clearCatatanOrder;
  if frmIsiHasilPx.QCatatanOrder.Active then
    frmIsiHasilPx.QCatatanOrder.Active := False;
  frmIsiHasilPx.QCatatanOrder.SQL.Text :=
    ' select oh.catatan from order_detail od ' +
    ' left join order_header oh on od.header_id = oh.id' +
    ' where od.id = :detail_id';
  frmIsiHasilPx.QCatatanOrder.Params.Add.Name := 'detail_id';
  frmIsiHasilPx.QCatatanOrder.ParamByName('detail_id').Value := detail_id;
  frmIsiHasilPx.QCatatanOrder.Active := True;
  frmIsiHasilPx.mmCatatanInternal.Lines.Text :=
    frmIsiHasilPx.QCatatanOrder.FieldByName('catatan').AsString;

  // interview
  if frmIsiHasilPx.QCatatanOrder.Active then
    frmIsiHasilPx.QCatatanOrder.Active := False;
  frmIsiHasilPx.QCatatanOrder.SQL.Text := ' select ov.pertanyaan,ov.jawaban ' +
    ' from order_detail od ' +
    ' right join order_interview ov on ov.header_id = od.header_id ' +
    ' where od.id = :detail_id';
  frmIsiHasilPx.QCatatanOrder.Params.Add.Name := 'detail_id';
  frmIsiHasilPx.QCatatanOrder.ParamByName('detail_id').Value := detail_id;
  frmIsiHasilPx.QCatatanOrder.Active := True;
  if frmIsiHasilPx.QCatatanOrder.RecordCount > 0 then
  begin
    frmIsiHasilPx.grdInterview.rowcount := 2;
    // cek semua kode test
    frmIsiHasilPx.QCatatanOrder.First;
    while not frmIsiHasilPx.QCatatanOrder.Eof do
    begin
      // tambah kan ke grid interview
      frmIsiHasilPx.grdInterview.rowcount :=
        frmIsiHasilPx.grdInterview.rowcount + 1;
      frmIsiHasilPx.grdInterview.Cells[0, frmIsiHasilPx.grdInterview.rowcount -
        2] := frmIsiHasilPx.QCatatanOrder.FieldByName('pertanyaan').AsString;
      frmIsiHasilPx.QCatatanOrder.Next;
      frmIsiHasilPx.grdInterview.Cells[1, frmIsiHasilPx.grdInterview.rowcount -
        2] := frmIsiHasilPx.QCatatanOrder.FieldByName('jawaban').AsString;
      frmIsiHasilPx.QCatatanOrder.Next;
    end;
  end;

end;

procedure loadOrderInfo(ARow: Integer);
begin
  if (ARow > 0) and (frmIsiHasilPx.grdHasil.Cells[0, ARow] <> '') and
    (frmIsiHasilPx.QOrder.RecordCount > 0) then
  begin
    frmIsiHasilPx.ShowMask('Loading');
    UniSession.Synchronize();
    loadDataPasien(frmIsiHasilPx.grdHasil.Cells[0, ARow]);
    loadCatatanOrder(frmIsiHasilPx.grdHasil.Cells[0, ARow]);
    frmIsiHasilPx.HideMask;
  end;
end;

procedure loadTest;
var
  I, J: Integer;
begin
  frmIsiHasilPx.ShowMask('Loading');
  UniSession.Synchronize();
  if frmIsiHasilPx.QOrder.Active then
    frmIsiHasilPx.QOrder.Active := False;
  frmIsiHasilPx.QOrder.ParamByName('tanggal').Value := frmIsiHasilPx.edTgl.Text;
  frmIsiHasilPx.QOrder.ParamByName('test_id').Value :=
    frmIsiHasilPx.QTest.FieldByName('id').AsInteger;
  frmIsiHasilPx.QOrder.Active := True;

  for I := 1 to frmIsiHasilPx.grdHasil.rowcount do
  begin
    for J := 0 to frmIsiHasilPx.grdHasil.ColCount do
      frmIsiHasilPx.grdHasil.Cells[J, I] := '';
  end;

  frmIsiHasilPx.grdHasil.rowcount := 1;
  clearInfoPasien;

  if frmIsiHasilPx.QOrder.RecordCount > 0 then
  begin
    frmIsiHasilPx.QOrder.First;
    loadDataPasien(frmIsiHasilPx.QOrder.FieldByName('id').AsString);
    while not frmIsiHasilPx.QOrder.Eof do
    begin
      frmIsiHasilPx.grdHasil.rowcount := frmIsiHasilPx.grdHasil.rowcount + 1;
      frmIsiHasilPx.grdHasil.Cells[1, frmIsiHasilPx.grdHasil.rowcount -
        1] := '';
      frmIsiHasilPx.grdHasil.Cells[5, frmIsiHasilPx.grdHasil.rowcount -
        1] := '';

      frmIsiHasilPx.grdHasil.Cells[0, frmIsiHasilPx.grdHasil.rowcount - 1] :=
        frmIsiHasilPx.QOrder.FieldByName('id').AsString;
      if frmIsiHasilPx.QOrder.FieldByName('flg_valid').AsString = 'Y' then
        frmIsiHasilPx.grdHasil.Cells[1, frmIsiHasilPx.grdHasil.rowcount -
          1] := 'V';
      frmIsiHasilPx.grdHasil.Cells[2, frmIsiHasilPx.grdHasil.rowcount - 1] :=
        frmIsiHasilPx.QOrder.FieldByName('nomor').AsString;
      frmIsiHasilPx.grdHasil.Cells[3, frmIsiHasilPx.grdHasil.rowcount - 1] :=
        frmIsiHasilPx.QOrder.FieldByName('rujukan').AsString;
      frmIsiHasilPx.grdHasil.Cells[4, frmIsiHasilPx.grdHasil.rowcount - 1] :=
        frmIsiHasilPx.QOrder.FieldByName('hasil').AsString;
      if frmIsiHasilPx.QOrder.FieldByName('flg_abnormal').AsString = 'Y' then
        frmIsiHasilPx.grdHasil.Cells[5, frmIsiHasilPx.grdHasil.rowcount -
          1] := '*';
      frmIsiHasilPx.QOrder.Next;
    end;
  end;
  frmIsiHasilPx.HideMask;
end;

function frmIsiHasilPx: TfrmIsiHasilPx;
begin
  Result := TfrmIsiHasilPx(UniMainModule.GetFormInstance(TfrmIsiHasilPx));
end;

procedure TfrmIsiHasilPx.cbTestKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    loadTest;
end;

procedure TfrmIsiHasilPx.edTglKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    loadTest;

end;

procedure TfrmIsiHasilPx.grdHasilClick(Sender: TObject);
begin
  // loadOrderInfo(grdHasil.Row);
end;

procedure TfrmIsiHasilPx.grdHasilDrawCell(Sender: TObject; ACol, ARow: Integer;
  var Value: string; Attribs: TUniCellAttribs);
begin
  if ACol <> 2 then
    Attribs.Style.Style := 'text-align: center;';
end;

procedure TfrmIsiHasilPx.grdHasilSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  loadOrderInfo(ARow);
end;

procedure TfrmIsiHasilPx.UniFormAfterShow(Sender: TObject);
begin
  pcCatatanOrder.ActivePage.PageIndex := 0;
end;

procedure TfrmIsiHasilPx.UniFormBeforeShow(Sender: TObject);
begin
  edTgl.Text := FormatDateTime('YYYY-MM-dd', Now);
  QTest.Open();

  grdHasil.Cells[0, 0] := '';
  grdHasil.Cells[1, 0] := 'V';
  grdHasil.Cells[2, 0] := 'No. Lab';
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

  grdInterview.Cells[0, 0] := 'Pertanyaan';
  grdInterview.Cells[1, 0] := 'Jawaban';
  grdInterview.ColWidths[0] := 300;
  grdInterview.ColWidths[1] := 190;
end;

end.
