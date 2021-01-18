unit UMasterData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, System.Actions, Vcl.ActnList,
  Vcl.DBActns, Vcl.Mask, Vcl.DBCtrls, frxClass, frxDBSet;

type
  TFMasterData = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Button3: TButton;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Button4: TButton;
    Timer1: TTimer;
    ActionList1: TActionList;
    DatasetDelete1: TDataSetDelete;
    Button5: TButton;
    DatasetEdit1: TDataSetEdit;
    Button6: TButton;
    DatasetPost1: TDataSetPost;
    ENamaAnak: TEdit;
    EAlamat: TEdit;
    ENamaOT: TEdit;
    TDdaftar: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DatasetCancel1: TDataSetCancel;
    Button7: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EUser: TEdit;
    EPass: TEdit;
    ENama: TEdit;
    EWarna: TEdit;
    EHobi: TEdit;
    ECode: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BSGuru: TButton;
    BSUser: TButton;
    DBGrid4: TDBGrid;
    DatasetInsert1: TDataSetInsert;
    Button9: TButton;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    Button8: TButton;
    Button11: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BSGuruClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BSUserClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMasterData: TFMasterData;

implementation

{$R *.dfm}

uses DataModule, UPendaftaran;

procedure TFMasterData.BSGuruClick(Sender: TObject);
begin
  if Edit1.Text ='' then
  begin
    showmessage('Id Pengajar Kosong');
  end else
  if Edit2.Text ='' then
  begin
    showmessage('Nama Pengajar masih kosong');
  end else
  if Edit3.Text ='' then
  begin
    showmessage('Alamat Pengajar masih kosong');
  end else
  if Edit4.Text ='' then
  begin
    showmessage('Nomer Telepon masih kosong');
  end else
  begin
  with DM.TDataPengajar do
    begin
    FieldByName('id_pengajar').AsString := Edit1.Text;
    FieldByName('nama_pengajar').AsString := Edit2.Text;
    FieldByName('alamat_pengajar').AsString := Edit3.Text;
    FieldByName('no_tlpn').AsString := Edit4.Text;
    Post;
   end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  end;
end;

procedure TFMasterData.Button7Click(Sender: TObject);
begin
  DM.TUser.Cancel;
  DM.TDataAnak.Cancel;
  DM.TDataPengajar.Cancel;
  EUser.Clear;
  EPass.Clear;
  ENama.Clear;
  EWarna.Clear;
  EHobi.Clear;
  ECode.Clear;
  ENamaAnak.Clear;
  EAlamat.Clear;
  ENamaOT.Clear;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  DBEdit1.Hide;
  Button11.Hide;
end;


procedure TFMasterData.BSUserClick(Sender: TObject);
begin
begin
  if EUser.Text ='' then
  begin
    showmessage('Username masih Kosong');
  end else
  if EPass.Text ='' then
  begin
    showmessage('password masih kosong');
  end else
  if ENama.Text ='' then
  begin
    showmessage('Nama User masih kosong');
  end else
  if EWarna.Text ='' then
  begin
    showmessage('Warna Favorite masih kosong');
  end else
  if EHobi.Text ='' then
  begin
    showmessage('Hobi User masih kosong');
  end else
  if ECode.Text ='' then
  begin
    showmessage('Code Angka User masih kosong');
  end else
  begin
  with DM.TUser do
    begin
    FieldByName('Username').AsString := EUser.Text;
    FieldByName('Password').AsString := EPass.Text;
    FieldByName('Nama').AsString := ENama.Text;
    FieldByName('Warna').AsString := EWarna.Text;
    FieldByName('Hobi').AsString := EHobi.Text;
    FieldByName('Code').AsString := ECode.Text;
    Post;
   end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  EUser.Clear;
  EPass.Clear;
  ENama.Clear;
  EWarna.Clear;
  EHobi.Clear;
  ECode.Clear;
  end;
end;
end;

procedure TFMasterData.Button10Click(Sender: TObject);
begin
DM.TUser.Insert;
end;

procedure TFMasterData.Button11Click(Sender: TObject);
begin
  if DBEdit1.Text ='' then
  begin
    showmessage('Id Pengajar Kosong');
  end else
  if Edit2.Text ='' then
  begin
    showmessage('Nama Pengajar masih kosong');
  end else
  if Edit3.Text ='' then
  begin
    showmessage('Alamat Pengajar masih kosong');
  end else
  if Edit4.Text ='' then
  begin
    showmessage('Nomer Telepon masih kosong');
  end else
  begin
  with DM.TDataPengajar do
    begin
    FieldByName('id_pengajar').AsString := DBEdit1.Text;
    FieldByName('nama_pengajar').AsString := Edit2.Text;
    FieldByName('alamat_pengajar').AsString := Edit3.Text;
    FieldByName('no_tlpn').AsString := Edit4.Text;
    Post;
   end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  DBEdit1.Hide;
  end;

end;

procedure TFMasterData.Button1Click(Sender: TObject);
begin
 DM.TUser.Cancel;
 DM.TDataAnak.Cancel;
 DM.TDataPengajar.Cancel;
 if DM.TDataAnak.recordcount=0 then
 begin
   MessageDlg('Data Anak Kosong, Harus Melakukan Pendaftaran Terlebih Dahulu',mtInformation,[mbOK],1);
   FPendaftaran.Show;
 end else
 begin
 DBGrid1.Show;
 DBGrid2.Hide;
 DBGrid3.Hide;
 DBGrid4.Hide;
 Button4.Show;
 Button5.Show;
 Button6.Show;
 Button7.Show;
 Button8.Hide;
 BSGuru.Hide;
 BSUser.Hide;
 Label1.Show;
 Label2.Show;
 Label3.Show;
 Label4.Show;
 Label5.Hide;
 Label6.Hide;
 Label7.Hide;
 Label8.Hide;
 ENamaAnak.Show;
 EAlamat.Show;
 ENamaOT.Show;
 TDdaftar.Show;
 Edit1.Hide;
 Edit2.Hide;
 Edit3.Hide;
 Edit4.Hide;
 Label9.Hide;
 Label10.Hide;
 Label11.Hide;
 Label12.Hide;
 Label13.Hide;
 Label14.Hide;
 EUser.Hide;
 EPass.Hide;
 ENama.Hide;
 EWarna.Hide;
 EHobi.Hide;
 ECode.Hide;
 Button9.Hide;
 EUser.Clear;
 EPass.Clear;
 ENama.Clear;
 EWarna.Clear;
 EHobi.Clear;
 ECode.Clear;
 ENamaAnak.Clear;
 EAlamat.Clear;
 ENamaOT.Clear;
 Edit1.Clear;
 Edit2.Clear;
 Edit3.Clear;
 Edit4.Clear;
 DBEdit1.Hide;
 Button4.Show;
 end;

 end;

procedure TFMasterData.Button2Click(Sender: TObject);
begin
 DM.TUser.Cancel;
 DM.TDataAnak.Cancel;
 DM.TDataPengajar.Cancel;
 DBGrid2.Show;
 DBGrid1.Hide;
 DBGrid3.Hide;
 DBGrid4.Hide;
 Button4.Show;
 Button5.Hide;
 Button6.Show;
 Button7.Show;
 Button8.Show;
 Button9.Show;
 BSGuru.Show;
 Label5.Show;
 Label6.Show;
 Label7.Show;
 Label8.Show;
 Edit1.Show;
 Edit2.Show;
 Edit3.Show;
 Edit4.Show;
 Label1.Hide;
 Label2.Hide;
 Label3.Hide;
 Label4.Hide;
 BSUser.Hide;
 ENamaAnak.Hide;
 EAlamat.Hide;
 ENamaOT.Hide;
 TDdaftar.Hide;
 Label9.Hide;
 Label10.Hide;
 Label11.Hide;
 Label12.Hide;
 Label13.Hide;
 Label14.Hide;
 EUser.Hide;
 EPass.Hide;
 ENama.Hide;
 EWarna.Hide;
 EHobi.Hide;
 ECode.Hide;
 EUser.Clear;
 EPass.Clear;
 ENama.Clear;
 EWarna.Clear;
 EHobi.Clear;
 ECode.Clear;
 ENamaAnak.Clear;
 EAlamat.Clear;
 ENamaOT.Clear;
 Edit1.Clear;
 Edit2.Clear;
 Edit3.Clear;
 Edit4.Clear;
 Button4.Show;
end;

procedure TFMasterData.Button3Click(Sender: TObject);
begin
 DM.TUser.Cancel;
 DM.TDataAnak.Cancel;
 DM.TDataPengajar.Cancel;
 DBGrid3.Show;
 DBGrid1.Hide;
 DBGrid2.Hide;
 DBGrid4.Hide;
 Button4.Show;
 Button5.Hide;
 Button9.Hide;
 BSGuru.Hide;
 BSUser.Show;
 Button6.Show;
 Button7.Show;
 Button8.Hide;
 Label9.Show;
 Label10.Show;
 Label11.Show;
 Label12.Show;
 Label13.Show;
 Label14.Show;
 EUser.Show;
 EPass.Show;
 ENama.Show;
 EWarna.Show;
 EHobi.Show;
 ECode.Show;
 Label1.Hide;
 Label2.Hide;
 Label3.Hide;
 Label4.Hide;
 Label5.Hide;
 Label6.Hide;
 Label7.Hide;
 Label8.Hide;
 ENamaAnak.Hide;
 EAlamat.Hide;
 ENamaOT.Hide;
 TDdaftar.Hide;
 Edit1.Hide;
 Edit2.Hide;
 Edit3.Hide;
 Edit4.Hide;
 EUser.Clear;
 EPass.Clear;
 ENama.Clear;
 EWarna.Clear;
 EHobi.Clear;
 ECode.Clear;
 ENamaAnak.Clear;
 EAlamat.Clear;
 ENamaOT.Clear;
 Edit1.Clear;
 Edit2.Clear;
 Edit3.Clear;
 Edit4.Clear;
 DBEdit1.Hide;
 Button4.Hide;
end;

procedure TFMasterData.Button4Click(Sender: TObject);
begin
DM.TDataAnak.Delete;
DM.TDataPengajar.Delete;
end;

procedure TFMasterData.Button5Click(Sender: TObject);
begin
  if ENamaAnak.Text ='' then
  begin
    showmessage('Nama Anak masih kosong');
  end else
  if EAlamat.Text ='' then
  begin
    showmessage('Alamat masih kosong');
  end else
  if ENamaOT.Text ='' then
  begin
    showmessage('Nama OrangTua masih kosong');
  end else
  begin
  with DM.TDataAnak do
    begin
    FieldByName('nama_anak').AsString := ENamaAnak.Text;
    FieldByName('Alamat_anak').AsString := EAlamat.Text;
    FieldByName('Nama_ot').AsString := ENamaOT.Text;
    FieldByName('Tanggal_daftar').AsDateTime := TDdaftar.Date;
    Post;
   end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  ENamaAnak.Clear;
  EAlamat.Clear;
  ENamaOT.Clear;
  end;
end;


procedure TFMasterData.Button8Click(Sender: TObject);
begin
  DM.TDataPengajar.Edit;
  DBEdit1.Show;
  Button11.Show;
end;

procedure TFMasterData.Button9Click(Sender: TObject);
var code : String;
begin
  DM.TDataPengajar.Insert;
  DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Text := 'select * from pengajar order by right(id_pengajar,2) DESC limit 1';
    DM.ADOQuery1.ExecSQL;
    DM.ADOQuery1.Open;
    if DM.ADOQuery1.RecordCount = 0 then
    begin
      Edit1.Text := 'GP-'+FormatDateTime('yyyy',Now)+'-01';
    end
    else
    begin
      code := IntToStr(StrToInt(Copy(DM.ADOQuery1.FieldByName('id_pengajar').AsString,9,2))+1);
      if Length(code) < 2 then
      begin
        Edit1.Text := 'GP-'+FormatDateTime('yyyy',Now)+'-0'+code;
      end
      else
      begin
        Edit1.Text := 'GP-'+FormatDateTime('yyyy',Now)+'-'+code;
      end;
    end;
end;

procedure TFMasterData.FormActivate(Sender: TObject);
begin
Button5.Show;
BSGuru.Show;
BSUser.Show;
end;

procedure TFMasterData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DBGrid1.Hide;
 DBGrid2.Hide;
 DBGrid3.Hide;
 DBGrid4.Show;
 Label1.Hide;
 Label2.Hide;
 Label3.Hide;
 Label4.Hide;
 Label5.Hide;
 Label6.Hide;
 Label7.Hide;
 Label8.Hide;
 Label9.Hide;
 Label10.Hide;
 Label11.Hide;
 Label12.Hide;
 Label13.Hide;
 Label14.Hide;
 ENamaAnak.Hide;
 EAlamat.Hide;
 ENamaOT.Hide;
 TDdaftar.Hide;
 Edit1.Hide;
 Edit2.Hide;
 Edit3.Hide;
 Edit4.Hide;
 EUser.Hide;
 EPass.Hide;
 ENama.Hide;
 EWarna.Hide;
 EHobi.Hide;
 ECode.Hide;
 Button8.Hide;
 Button9.Hide;
 EUser.Clear;
 EPass.Clear;
 ENama.Clear;
 EWarna.Clear;
 EHobi.Clear;
 ECode.Clear;
 ENamaAnak.Clear;
 EAlamat.Clear;
 ENamaOT.Clear;
 Edit1.Clear;
 Edit2.Clear;
 Edit3.Clear;
 Edit4.Clear;
end;


procedure TFMasterData.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels[0].Text := 'User : '+DM.TUser.FieldByName('Nama').AsString;
    StatusBar1.Panels[1].Text:=FormatDateTime('ddd, dd mmmm yyyy  hh:mm:ss', Now);
end;

end.
