unit UPendaftaran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, Vcl.DBCGrids, Vcl.DBCtrls,
  System.Actions, Vcl.ActnList, Vcl.DBActns, Vcl.Mask;

type
  TFPendaftaran = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    TDdaftar: TDateTimePicker;
    DBGrid1: TDBGrid;
    Bsimpan: TButton;
    Bbatal: TButton;
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    Button1: TButton;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    EIdAnak: TEdit;
    ENamaAnak: TEdit;
    EAlamat: TEdit;
    ENamaOT: TEdit;
    EBiayaDaftar: TEdit;
    procedure BsimpanClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BbatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPendaftaran: TFPendaftaran;

implementation

{$R *.dfm}
uses DataModule,UMasterData;
procedure TFPendaftaran.BbatalClick(Sender: TObject);
begin
  EIdAnak.Clear;
  ENamaAnak.Clear;
  EAlamat.Clear;
  ENamaOT.Clear;
  EBiayaDaftar.Clear;
  DM.TDataAnak.Cancel;
end;

procedure TFPendaftaran.BsimpanClick(Sender: TObject);
begin
if EIdAnak.Text ='' then
  begin
    showmessage('Id Anak masih kosong');
  end else
  if ENamaAnak.Text ='' then
  begin
    showmessage('Nama Anak masih kosong');
  end else
  if EAlamat.Text ='' then
  begin
    showmessage('Alamat masih kosong');
  end else
  if EbiayaDaftar.Text ='' then
  begin
    showmessage('Biaya Daftar masih kosong');
  end else
  begin
  with DM.TDataAnak do
 begin
    FieldByName('id_anak').AsString := EIdAnak.Text;
    FieldByName('nama_anak').AsString := ENamaAnak.Text;
    FieldByName('Alamat_anak').AsString := EAlamat.Text;
    FieldByName('Nama_ot').AsString := ENamaOT.Text;
    FieldByName('Uang_daftar').AsString := EBiayaDaftar.Text;
    FieldByName('Tanggal_daftar').AsDateTime := TDdaftar.Date;
    Post;
 end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  DM.TDataAnak.Refresh;
  EIdAnak.Clear;
  ENamaAnak.Clear;
  EAlamat.Clear;
  ENamaOT.Clear;
  EBiayaDaftar.Clear;
  end;
end;

procedure TFPendaftaran.Button1Click(Sender: TObject);
var id : string;
begin
  EBiayaDaftar.Text := IntToStr(350000);
  DM.TDataAnak.Insert;
  DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Text := 'select * from dataanak order by right(id_anak,2) DESC limit 1';
    DM.ADOQuery1.ExecSQL;
    DM.ADOQuery1.Open;
    if DM.ADOQuery1.RecordCount = 0 then
    begin
      EIdAnak.Text := 'Ank-'+FormatDateTime('yyyy',Now)+'-01';
    end
    else
    begin
      id := IntToStr(StrToInt(Copy(DM.ADOQuery1.FieldByName('id_anak').AsString,10,2))+1);
      if Length(id) < 2 then
      begin
        EIdAnak.Text := 'Ank-'+FormatDateTime('yyyy',Now)+'-0'+id;
      end
      else
      begin
        EIdAnak.Text := 'Ank-'+FormatDateTime('yyyy',Now)+'-'+id;
      end;
    end;
end;

procedure TFPendaftaran.FormActivate(Sender: TObject);
begin
  DM.TDataAnak.Active := True;
end;


procedure TFPendaftaran.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EIdAnak.Clear;
  ENamaAnak.Clear;
  EAlamat.Clear;
  ENamaOT.Clear;
  EBiayaDaftar.Clear;
  DM.TDataAnak.Cancel;
end;

end.
