unit UnitLapDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, IPPeerClient, IdCookieManager, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, REST.Client,
  REST.Authenticator.Basic, Data.Bind.Components, Data.Bind.ObjectScope,
  uniButton, uniMultiItem, uniComboBox, uniDateTimePicker, uniGUIBaseClasses,
  uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniDBComboBox, uniDBLookupComboBox;

type
  TfrmLapDokter = class(TUniForm)
    UniLabel1: TUniLabel;
    dtStart: TUniDateTimePicker;
    UniLabel2: TUniLabel;
    dtEnd: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    expXLSX: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    qDokter: TFDQuery;
    dsDokter: TDataSource;
    cbDokter: TUniDBLookupComboBox;
    procedure UniFormAfterShow(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
    procedure expXLSXClick(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmLapDokter: TfrmLapDokter;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UnitJasper, UnitReportDisplay;

function frmLapDokter: TfrmLapDokter;
begin
  Result := TfrmLapDokter(UniMainModule.GetFormInstance(TfrmLapDokter));
end;

procedure TfrmLapDokter.expXLSXClick(Sender: TObject);
var
  Result: string;
  nama_report, start_date, end_date: string;
begin
  nama_report := 'laporan_penjualan_per_dokter';

  ShowMask('Loading');
  UniSession.Synchronize();

  start_date := FormatDateTime('YYYY-MM-dd', dtStart.DateTime);
  end_date := FormatDateTime('YYYY-MM-dd', dtEnd.DateTime);

  Result := reportExecutionRequestParam('xlsx', nama_report, start_date, end_date,
    qDokter.FieldByName('id').AsString);
    UniSession.SendFile(Result);
  HideMask;

end;

procedure TfrmLapDokter.UniButton2Click(Sender: TObject);
var
  Result: string;
  nama_report, start_date, end_date: string;
begin
  nama_report := 'laporan_penjualan_per_dokter';

  ShowMask('Loading');
  UniSession.Synchronize();

  start_date := FormatDateTime('YYYY-MM-dd', dtStart.DateTime);
  end_date := FormatDateTime('YYYY-MM-dd', dtEnd.DateTime);

  frmReportDisplay.UniURLFrame1.URL := reportExecutionRequestParam('pdf', nama_report, start_date, end_date,
    qDokter.FieldByName('id').AsString);
    frmReportDisplay.ShowModal();
  HideMask;

end;

procedure TfrmLapDokter.UniButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLapDokter.UniFormAfterShow(Sender: TObject);
begin
  if qDokter.Active then
    qDokter.Active := False;
  qDokter.Active := True;
end;

procedure TfrmLapDokter.UniFormBeforeShow(Sender: TObject);
begin
  dtStart.DateTime := Now;
  dtEnd.DateTime := Now;
end;

end.
