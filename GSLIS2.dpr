{$DEFINE UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$IFNDEF UNIGUI_VCL}
library
{$else}
program
{$ENDIF}
  GSLIS2;

uses
  uniGUIISAPI,
  Forms,
{$IFDEF EurekaLog}
  EMemLeaks,
  EResLeaks,
  ExceptionLog7,
{$ENDIF EurekaLog}
  EAppUniGUI, // add this line
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule} ,
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule} ,
  Main in 'Main.pas' {MainForm: TUniForm} ,
  UnitLogin in 'UnitLogin.pas' {UniLoginForm1: TUniLoginForm} ,
  UnitFODaftar in 'UnitFODaftar.pas' {frmFODaftar: TUniForm} ,
  UnitCariPasien in 'UnitCariPasien.pas' {frmCariPasien: TUniForm} ,
  UnitPasienBaru in 'UnitPasienBaru.pas' {frmPasienBaru: TUniForm} ,
  UnitCariDokter in 'UnitCariDokter.pas' {frmCariDokter: TUniForm} ,
  UnitDokterBaru in 'UnitDokterBaru.pas' {frmDokterBaru: TUniForm} ,
  UnitBayar in 'UnitBayar.pas' {frmBayar: TUniForm} ,
  UnitReportDisplay in 'UnitReportDisplay.pas' {frmReportDisplay: TUniForm} ,
  UnitFOStatus in 'UnitFOStatus.pas' {frmFOStatus: TUniForm} ,
  UnitLaporanHarian in 'UnitLaporanHarian.pas' {frmLaporanHarian: TUniForm} ,
  UnitGantiPassword in 'UnitGantiPassword.pas' {frmGantiPassword: TUniForm} ,
  UnitKuitansi in 'UnitKuitansi.pas' {frmKuitansi: TUniForm} ,
  UnitReleaseNotes in 'UnitReleaseNotes.pas' {frmReleaseNote: TUniForm} ,
  UnitFOHomeService in 'UnitFOHomeService.pas' {frmFOHomeService: TUniForm} ,
  UnitSyslog in 'UnitSyslog.pas' {frmSysLog: TUniForm} ,
  UnitLogging in 'UnitLogging.pas',
  UnitTanggalSelesai in 'UnitTanggalSelesai.pas' {frmTanggalSelesai: TUniForm} ,
  UnitUser in 'UnitUser.pas' {frmUser: TUniForm} ,
  UnitSampling in 'UnitSampling.pas' {frmSampling: TUniForm} ,
  UnitLapPenjualan in 'UnitLapPenjualan.pas' {frmLapPenjualan: TUniForm} ,
  UnitJasper in 'UnitJasper.pas',
  UnitIsiHasilNoLab in 'UnitIsiHasilNoLab.pas' {frmIsiHasilNoLab: TUniForm} ,
  UnitLapDokter in 'UnitLapDokter.pas' {frmLapDokter: TUniForm} ,
  UnitQz in 'UnitQz.pas',
  UnitTest in 'UnitTest.pas' {frmTest: TUniForm} ,
  UnitFotoPasien in 'UnitFotoPasien.pas' {frmFotoPasien: TUniForm} ,
  UnitUtils in 'UnitUtils.pas',
  UnitCetakHasil in 'UnitCetakHasil.pas' {frmCetakHasil: TUniForm} ,
  UnitIsiHasilPx in 'UnitIsiHasilPx.pas' {frmIsiHasilPx: TUniForm};

{$R *.res}
{$IFNDEF UNIGUI_VCL}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$ENDIF}

begin
{$IFDEF UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$ENDIF}

end.
