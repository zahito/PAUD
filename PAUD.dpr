program PAUD;

uses
  Vcl.Forms,
  UMenuUtama in 'UMenuUtama.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  ULogin in 'ULogin.pas' {FLogin},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  UPendaftaran in 'UPendaftaran.pas' {FPendaftaran},
  UKeuangan in 'UKeuangan.pas' {FKeuangan},
  UMasterData in 'UMasterData.pas' {FMasterData},
  Ubayaran in 'Ubayaran.pas' {FBayaran},
  UGaji in 'UGaji.pas' {FGaji},
  ULupas in 'ULupas.pas' {FLupas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFPendaftaran, FPendaftaran);
  Application.CreateForm(TFMenuUtama, FMenuUtama);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFKeuangan, FKeuangan);
  Application.CreateForm(TFMasterData, FMasterData);
  Application.CreateForm(TFBayaran, FBayaran);
  Application.CreateForm(TFGaji, FGaji);
  Application.CreateForm(TFLupas, FLupas);
  Application.Run;
end.
