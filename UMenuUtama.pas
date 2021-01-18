unit UMenuUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TFMenuUtama = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Image2: TImage;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Button3: TButton;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    GroupBox4: TGroupBox;
    Button4: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenuUtama: TFMenuUtama;

implementation

{$R *.dfm}

uses ULogin, UPendaftaran, UMasterData, UKeuangan, DataModule;


procedure TFMenuUtama.Button1Click(Sender: TObject);
begin
  FPendaftaran.ShowModal;
end;

procedure TFMenuUtama.Button2Click(Sender: TObject);
begin
  FMasterData.ShowModal;
end;

procedure TFMenuUtama.Button3Click(Sender: TObject);
begin
  FKeuangan.ShowModal;
end;

procedure TFMenuUtama.Button4Click(Sender: TObject);
begin
  FMenuUtama.Close;
  FLogin.Show;
end;

procedure TFMenuUtama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FLogin.Show;
end;

procedure TFMenuUtama.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels[0].Text := 'User : '+DM.TUser.FieldByName('Nama').AsString;
    StatusBar1.Panels[1].Text:=FormatDateTime('ddd, dd mmmm yyyy  hh:mm:ss', Now);
end;

end.
