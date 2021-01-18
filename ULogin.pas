unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFLogin = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    EUser: TEdit;
    EPass: TEdit;
    CheckBoxLihat: TCheckBox;
    BLogin: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    procedure CheckBoxLihatClick(Sender: TObject);
    procedure BLoginClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses DataModule, UMenuUtama, ULupas;

procedure TFLogin.BLoginClick(Sender: TObject);
begin
  if DM.TUser.Locate('Username;Password',VarArrayof([EUser.Text,EPass.Text]),[]) then
    begin
      MessageDlg('Selamat Datang di Sistem PAUD Salman Al-Farisi',mtConfirmation,[mbOk],1);
      With FMenuUtama Do
        Begin
          Show;
        End;
      End
  Else
    MessageDlg('Username atau Password Salah',mtError,[mbOk],1);
    EUser.Text := '';
    EPass.Text := '';
end;

procedure TFLogin.CheckBoxLihatClick(Sender: TObject);
begin
 if CheckBoxLihat.Checked then
    EPass.PasswordChar := #0
  else
    EPass.PasswordChar := '*';
end;


procedure TFLogin.Label3Click(Sender: TObject);
begin
FLupas.Show;
end;

end.
