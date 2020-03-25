unit UnitSampling;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniGroupBox, uniEdit,
  uniLabel, uniGUIBaseClasses, uniPanel, uniButton, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniMemo, CPort,
  uniStatusBar, uniStringGrid, uniPageControl, Vcl.Imaging.jpeg, uniImage;

type
  TfrmSampling = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel1: TUniLabel;
    edOrderNo: TUniEdit;
    grpPasien: TUniGroupBox;
    btnReceive: TUniButton;
    btnLabel: TUniButton;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    lblNama: TUniLabel;
    LblKelaminUmur: TUniLabel;
    lblALamat: TUniLabel;
    lblTelp: TUniLabel;
    lblPasienId: TUniLabel;
    lblDokter: TUniLabel;
    QSampling: TFDQuery;
    QSample: TFDQuery;
    dsSample: TDataSource;
    cmdReceive: TFDCommand;
    QPrinterLabel: TFDQuery;
    ComPort: TComPort;
    btnTransport: TUniButton;
    cmdTransport: TFDCommand;
    pnlFoto: TUniContainerPanel;
    imFotoPasien: TUniImage;
    pcSampel: TUniPageControl;
    tsSampel: TUniTabSheet;
    grdSample: TUniDBGrid;
    tsInterview: TUniTabSheet;
    grdInterview: TUniStringGrid;
    QFoto: TFDQuery;
    QInterview: TFDQuery;
    procedure UniFormAfterShow(Sender: TObject);
    procedure edOrderNoKeyPress(Sender: TObject; var Key: Char);
    procedure btnReceiveClick(Sender: TObject);
    procedure grdSampleSelectionChange(Sender: TObject);
    procedure btnLabelClick(Sender: TObject);
    procedure ComPortAfterOpen(Sender: TObject);
    procedure ComPortAfterClose(Sender: TObject);
    procedure ComPortError(Sender: TObject; Errors: TComErrors);
    procedure ComPortException(Sender: TObject; TComException: TComExceptions;
      ComportMessage: string; WinError: Int64; WinMessage: string);
    procedure grdSampleCellClick(Column: TUniDBGridColumn);
    procedure btnTransportClick(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSampling: TfrmSampling;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, UnitQz;

procedure ClearData();
begin
  frmSampling.lblNama.Text := '';
  frmSampling.LblKelaminUmur.Text := '';
  frmSampling.lblALamat.Text := '';
  frmSampling.lblTelp.Text := '';
  frmSampling.lblPasienId.Text := '';
  frmSampling.lblDokter.Text := '';
  // frmSampling.lblTipe.Text := '';
  // frmSampling.lblAsal.Text := '';
  // frmSampling.lblPenjamin.Text := '';

  if frmSampling.QSample.Active then
    frmSampling.QSample.Active := False;
  if frmSampling.QSampling.Active then
    frmSampling.QSampling.Active := False;
end;

function frmSampling: TfrmSampling;
begin
  Result := TfrmSampling(UniMainModule.GetFormInstance(TfrmSampling));
end;

procedure TfrmSampling.edOrderNoKeyPress(Sender: TObject; var Key: Char);
var
  header_id: string;
  blob: TStream;
  Bmp: TBitmap;
  Jpg: TJPEGImage;
  I, J: integer;
begin
  if Ord(Key) = VK_RETURN then
  begin
    ShowMask('Loading');
    UniSession.Synchronize();

    imFotoPasien.Picture.LoadFromFile(UniServerModule.FilesFolderPath +
      'foto-kosong.jpg');

    // kosongkan interview
    for I := 1 to grdInterview.rowcount do
    begin
      for J := 0 to grdInterview.ColCount do
        grdInterview.Cells[J, I] := '';

    end;

    if QSampling.Active then
      QSampling.Active := False;
    QSampling.ParamByName('nomor').Value := edOrderNo.Text;
    QSampling.Active := True;

    header_id := QSampling.FieldByName('id').AsString;

    if QSampling.RecordCount > 0 then
    begin
      // foto
      if QFoto.Active then
        QFoto.Active := False;
      QFoto.SQL.Text := 'select * from pasien_photo where pasien_id = ' +
        QSampling.FieldByName('pasien_id').AsString;
      QFoto.Active := True;

      if QFoto.RecordCount > 0 then
      begin
        Bmp := TBitmap.Create;
        blob := QFoto.CreateBlobStream(QFoto.FieldByName('photo'), bmRead);
        try
          Jpg := TJPEGImage.Create;
          try
            Jpg.LoadFromStream(blob);
            Bmp.Assign(Jpg);
            imFotoPasien.Assign(Bmp);
          finally
            Jpg.Free;
          end;
        finally
          blob.Free;
        end;
        Bmp.Free;
      end;
      // interview
      if QInterview.Active then
        QInterview.Active := False;
      QInterview.ParamByName('header_id').AsString := header_id;
      QInterview.Active := True;

      QInterview.First;
      while not QInterview.Eof do
      begin
        // tambah kan ke grid interview
        grdInterview.rowcount := grdInterview.rowcount + 1;
        grdInterview.Cells[0, grdInterview.rowcount - 2] :=
          QInterview.FieldByName('pertanyaan').AsString;
        grdInterview.Cells[1, grdInterview.rowcount - 2] :=
          QInterview.FieldByName('jawaban').AsString;
        QInterview.Next;

      end;

      // sample
      if QSample.Active then
        QSample.Active := False;
      QSample.ParamByName('header_id').Value := header_id;
      QSample.Active := True;
      QSample.Open();

      // isi
      lblNama.Text := QSampling.FieldByName('nama').AsString;
      LblKelaminUmur.Text := QSampling.FieldByName('kelamin').AsString + ' / ' +
        QSampling.FieldByName('umur').AsString;
      lblALamat.Text := QSampling.FieldByName('alamat').AsString;
      lblTelp.Text := QSampling.FieldByName('hp').AsString;
      lblPasienId.Text := QSampling.FieldByName('noreg').AsString;
      lblDokter.Text := QSampling.FieldByName('dokter').AsString;
      // lblTipe.Text := QSampling.FieldByName('tipe_pasien').AsString;
      // lblAsal.Text := QSampling.FieldByName('asal_pasien').AsString;
      // lblPenjamin.Text := QSampling.FieldByName('ansuransi').AsString;

    end;
    HideMask;
  end;

end;

procedure TfrmSampling.grdSampleCellClick(Column: TUniDBGridColumn);
begin
  grdSampleSelectionChange(self);
end;

procedure TfrmSampling.grdSampleSelectionChange(Sender: TObject);
begin
  if grdSample.SelectedRows.Count > 0 then
  begin
    btnReceive.Enabled := True;
    btnLabel.Enabled := True;
    // cek jika sudah sampling
    if QSample.FieldByName('user_sampling').AsString <> '' then
    begin
      btnTransport.Enabled := True;
    end
    else
      btnTransport.Enabled := False;

  end
  else
  begin
    btnReceive.Enabled := False;
    btnLabel.Enabled := False;
  end;
end;

procedure TfrmSampling.btnLabelClick(Sender: TObject);
var
  zpl_text: String;
  BM, SelectedBM: TBookmark;
  I: integer;
  hCommFile: THandle;
  NumberWritten, BytesRead, BytesToRead: LongWord;
  Data, port: String;
  Buffer: PChar;
  wideChars: array [0 .. 11] of WideChar;
  js: string;
begin
  if not QPrinterLabel.Active then
    QPrinterLabel.Active := True;

  if grdSample.SelectedRows.Count > 0 then
    port := QPrinterLabel.FieldByName('port').AsString;
  ComPort.port := port;
  if not ComPort.Connected then
    ComPort.Open;

  begin

    BM := grdSample.DataSource.DataSet.GetBookmark;
    try
      grdSample.DataSource.DataSet.DisableControls;
      grdSample.DataSource.DataSet.First;
      for I := 0 to grdSample.SelectedRows.Count - 1 do
      begin
        SelectedBM := grdSample.SelectedRows[I];
        grdSample.DataSource.DataSet.GotoBookmark(SelectedBM);
        //
        // // print label disini
        // zpl_text := QPrinterLabel.FieldByName('zpl_text').AsString;
        // zpl_text := StringReplace(zpl_text, '<order_number>',
        // QSampling.FieldByName('nomor').AsString,
        // [rfReplaceAll, rfIgnoreCase]);
        // zpl_text := StringReplace(zpl_text, '<patient_name>', lblNama.Caption,
        // [rfReplaceAll, rfIgnoreCase]);
        // zpl_text := StringReplace(zpl_text, '<origin_name>', lblAsal.Caption,
        // [rfReplaceAll, rfIgnoreCase]);
        // zpl_text := StringReplace(zpl_text, '<patient_id>', lblPasienId.Caption,
        // [rfReplaceAll, rfIgnoreCase]);
        // zpl_text := StringReplace(zpl_text, '<patient_dob>',
        // QSampling.FieldByName('tanggal_lahir').AsString,
        // [rfReplaceAll, rfIgnoreCase]);
        // zpl_text := StringReplace(zpl_text, '<gender_ext_code>',
        // QSampling.FieldByName('kelamin').AsString,
        // [rfReplaceAll, rfIgnoreCase]);
        // zpl_text := StringReplace(zpl_text, '<specimen_name>',
        // grdSample.DataSource.DataSet.FieldByName('jenis_sampel').AsString,
        // [rfReplaceAll, rfIgnoreCase]);
        // zpl_text := StringReplace(zpl_text, '<sample_no>',
        // grdSample.DataSource.DataSet.FieldByName('nosample').AsString,
        // [rfReplaceAll, rfIgnoreCase]);
        //
        // if ComPort.Connected then
        //
        // ComPort.WriteStr(zpl_text);

        js := printBarcode(grdSample.DataSource.DataSet.FieldByName('nosample')
          .AsString, lblPasienId.Caption, lblNama.Caption,
          grdSample.DataSource.DataSet.FieldByName('jenis_sampel').AsString);
        UniSession.AddJS(js);

        Sleep(200);

      end;
    finally
      grdSample.DataSource.DataSet.GotoBookmark(BM);
      grdSample.DataSource.DataSet.FreeBookmark(BM);
      grdSample.DataSource.DataSet.EnableControls;
    end;
  end;
end;

procedure TfrmSampling.btnReceiveClick(Sender: TObject);
var
  BM, SelectedBM: TBookmark;
  I: integer;
begin
  if grdSample.SelectedRows.Count > 0 then
  begin
    BM := grdSample.DataSource.DataSet.GetBookmark;
    try
      grdSample.DataSource.DataSet.DisableControls;
      grdSample.DataSource.DataSet.First;
      for I := 0 to grdSample.SelectedRows.Count - 1 do
      begin
        SelectedBM := grdSample.SelectedRows[I];
        grdSample.DataSource.DataSet.GotoBookmark(SelectedBM);
        if grdSample.DataSource.DataSet.FieldByName('user_sampling').AsString = ''
        then
        begin
          if cmdReceive.Active then
            cmdReceive.Active := False;
          cmdReceive.ParamByName('order_header_id').Value :=
            QSampling.FieldByName('id').AsInteger;
          cmdReceive.ParamByName('jenis_sample_id').Value :=
            grdSample.DataSource.DataSet.FieldByName('ID').AsInteger;
          cmdReceive.ParamByName('sampling_user_id').Value :=
            UniApplication.Cookies.GetCookie('UserId');
          cmdReceive.Execute();
        end;
      end;
    finally
      grdSample.DataSource.DataSet.GotoBookmark(BM);
      grdSample.DataSource.DataSet.FreeBookmark(BM);
      grdSample.DataSource.DataSet.EnableControls;

      // print label
      btnLabelClick(self);
      // refresh data
      if QSample.Active then
        QSample.Active := False;
      QSample.Active := True;
      edOrderNo.SetFocus;
      // edOrderNo.SelectAll;
    end;
  end;
end;

procedure TfrmSampling.ComPortAfterClose(Sender: TObject);
begin
  // stBar.Panels[1].Text := 'Closed.';
end;

procedure TfrmSampling.ComPortAfterOpen(Sender: TObject);
begin
  // stBar.Panels[1].Text := 'Open.';
end;

procedure TfrmSampling.ComPortError(Sender: TObject; Errors: TComErrors);
begin
  // stBar.Panels[1].Text := 'ERROR';
end;

procedure TfrmSampling.ComPortException(Sender: TObject;
  TComException: TComExceptions; ComportMessage: string; WinError: Int64;
  WinMessage: string);
begin
  // stBar.Panels[1].Text := 'Exception.';
end;

procedure TfrmSampling.btnTransportClick(Sender: TObject);
var
  BM, SelectedBM: TBookmark;
  I: integer;
begin
  if grdSample.SelectedRows.Count > 0 then
  begin
    BM := grdSample.DataSource.DataSet.GetBookmark;
    try
      grdSample.DataSource.DataSet.DisableControls;
      grdSample.DataSource.DataSet.First;
      for I := 0 to grdSample.SelectedRows.Count - 1 do
      begin
        SelectedBM := grdSample.SelectedRows[I];
        grdSample.DataSource.DataSet.GotoBookmark(SelectedBM);
        if grdSample.DataSource.DataSet.FieldByName('user_transport').AsString = ''
        then
        begin
          if cmdTransport.Active then
            cmdTransport.Active := False;
          cmdTransport.ParamByName('id').Value := QSample.FieldByName('sr_id')
            .AsInteger;
          cmdTransport.ParamByName('transport_user_id').Value :=
            UniApplication.Cookies.GetCookie('UserId');
          cmdTransport.Execute();
        end;
      end;
    finally
      grdSample.DataSource.DataSet.GotoBookmark(BM);
      grdSample.DataSource.DataSet.FreeBookmark(BM);
      grdSample.DataSource.DataSet.EnableControls;

      // print label
      // btnLabelClick(self);
      // refresh data
      if QSample.Active then
        QSample.Active := False;
      QSample.Active := True;

      edOrderNo.Clear;
      edOrderNo.SetFocus;

      // edOrderNo.SelectAll;
    end;
  end;

end;

procedure TfrmSampling.UniFormAfterShow(Sender: TObject);
begin
  ClearData();
  edOrderNo.SetFocus;
  // stBar.Panels[0].Text := ComPort.port;
  pcSampel.ActivePage.PageIndex := 1;
end;

procedure TfrmSampling.UniFormBeforeShow(Sender: TObject);
begin
  imFotoPasien.Picture.LoadFromFile(UniServerModule.FilesFolderPath +
    'foto-kosong.jpg');

end;

end.