unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniPanel, uniGUIBaseClasses,
  uniButton, uniEdit, uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniButton1: TUniButton;
    btnLogin: TUniButton;
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    edUser: TUniEdit;
    edPass: TUniEdit;
    qLogin: TFDQuery;
    procedure btnLoginClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniLoginFormAfterShow(Sender: TObject);
    procedure edUserKeyPress(Sender: TObject; var Key: Char);
    procedure edPassKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Main;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.edPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnLoginClick(self);
end;

procedure TUniLoginForm1.edUserKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    edPass.SetFocus;
end;

procedure TUniLoginForm1.UniButton1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TUniLoginForm1.btnLoginClick(Sender: TObject);
begin
  // clean SQL char
  ShowMask('Loading');
  UniSession.Synchronize();
  edUser.Text := StringReplace(edUser.Text, '/', '',
    [rfReplaceAll, rfIgnoreCase]);
  edUser.Text := StringReplace(edUser.Text, '''', '',
    [rfReplaceAll, rfIgnoreCase]);

  if qLogin.Active then
    qLogin.Active := False;
  qLogin.SQL.Text := 'select id from aguser where user_name =' +
    quotedstr(edUser.Text) + ' and password=password(' +
    quotedstr(edPass.Text) + ')';
  qLogin.Active := True;

  if qLogin.RecordCount > 0 then
  begin
    ModalResult := mrOK;
    UniApplication.Cookies.SetCookie('UserId', qLogin.FieldByName('id')
      .AsString);
    UniApplication.Cookies.SetCookie('UserName', edUser.Text);
  end
  else
  begin
    ShowMessage('Invalid Login atau Password!');
  end;

  hidemask();
end;

procedure TUniLoginForm1.UniLoginFormAfterShow(Sender: TObject);
begin
  edUser.SetFocus;

  UniSession.AddJS('let data = {}; data.type = "OPEN_WINDOW";data.origin = "https://192.168.10.11";data.path = "/#";data.width=screen.width;data.height =screen.height; if (!(window.opener && window.opener !== window)) { window.postMessage(data,"http://192.168.10.11/");}');
end;

initialization

RegisterAppFormClass(TUniLoginForm1);

end.
