unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TFLogin = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    EUser: TEdit;
    EPass: TEdit;
    CheckBox1: TCheckBox;
    BLogin: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

end.
