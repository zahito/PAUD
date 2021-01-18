
unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    TUser: TADOTable;
    DSUser: TDataSource;
    TDataAnak: TADOTable;
    DSDataAnak: TDataSource;
    TDataPengajar: TADOTable;
    DSPengajar: TDataSource;
    TBayaran: TADOTable;
    DSBayaran: TDataSource;
    ADOQuery1: TADOQuery;
    TKegiatanM: TADOTable;
    TSumbangan: TADOTable;
    DSKegiatanM: TDataSource;
    DSSumbangan: TDataSource;
    TGaji: TADOTable;
    DSGaji: TDataSource;
    TKegiatanK: TADOTable;
    DSKegiatanK: TDataSource;
    TOperasional: TADOTable;
    DSOperasional: TDataSource;
    TBulan: TADOTable;
    DSBulan: TDataSource;
    TLaporan: TADOTable;
    DSLaporan: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
