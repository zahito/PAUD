unit ULupas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFLupas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLupas: TFLupas;

implementation

{$R *.dfm}
uses DataModule, UMenuUtama, ULogin;

procedure TFLupas.Button1Click(Sender: TObject);
begin
 if DM.TUser.Locate('Nama;Warna;Hobi;Code',VarArrayOf([Edit1.Text,Edit2.Text,Edit3.Text,Edit4.Text]),[]) then
     begin
      MessageDlg('Selamat Datang di Sistem PAUD Salman Al-Farisi',mtConfirmation,[mbOk],1);
      FLogin.Hide;
      FLupas.Hide;
      With FMenuUtama Do
        Begin
          Show;
        End;
      End
  Else
    MessageDlg('Inputan ada yang Salah',mtError,[mbOk],1);
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
end;

procedure TFLupas.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
end;

end.
