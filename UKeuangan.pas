unit UKeuangan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Menus, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.Mask, Data.Win.ADODB, frxClass,
  frxExportPDF, frxDBSet;

type
  TFKeuangan = class(TForm)
    TPanel: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Button3: TButton;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    PCPemasukan: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetDelete1: TDataSetDelete;
    DatasetCancel1: TDataSetCancel;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Button9: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ENamaKegiatan: TEdit;
    ELokasi: TEdit;
    DTKegiatanM: TDateTimePicker;
    EBiayaKegiatan: TEdit;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit3: TEdit;
    PCPengeluaran: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    Label10: TLabel;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button21: TButton;
    Button20: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EIdOperasional: TEdit;
    EJenis: TEdit;
    EKeterangan: TEdit;
    Ebiaya: TEdit;
    DTOperasional: TDateTimePicker;
    Label14: TLabel;
    Beditsim: TButton;
    DBEOperasional: TDBEdit;
    EidKegiatan: TEdit;
    Button26: TButton;
    DBEidKegiatan: TDBEdit;
    Edit1: TEdit;
    Button27: TButton;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EidKegiatanK: TEdit;
    ENamaKegiatanK: TEdit;
    ELokasiK: TEdit;
    EBiayaK: TEdit;
    DateTimePicker2: TDateTimePicker;
    DatasetInsert2: TDataSetInsert;
    DatasetDelete2: TDataSetDelete;
    DatasetEdit2: TDataSetEdit;
    DatasetPost2: TDataSetPost;
    DatasetCancel2: TDataSetCancel;
    DBEdit2: TDBEdit;
    Button28: TButton;
    DatasetPost3: TDataSetPost;
    PCLaporan: TPageControl;
    TabSheet7: TTabSheet;
    Panel1: TPanel;
    Panel4: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Panel5: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Panel6: TPanel;
    Label29: TLabel;
    ETotal: TEdit;
    ETotalPengeluaran: TEdit;
    ETotalPemasukan: TEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery5: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery6: TADOQuery;
    DataSource6: TDataSource;
    ADOQuery7: TADOQuery;
    DataSource7: TDataSource;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    frxReport1: TfrxReport;
    Button29: TButton;
    frxDBDataset8: TfrxDBDataset;
    frxReport2: TfrxReport;
    Button30: TButton;
    Button31: TButton;
    frxDBDataset9: TfrxDBDataset;
    frxReport3: TfrxReport;
    Button32: TButton;
    frxDBDataset10: TfrxDBDataset;
    frxReport4: TfrxReport;
    Panel7: TPanel;
    PCPencarianKM: TPageControl;
    TabSheet8: TTabSheet;
    ECariKM: TEdit;
    Button34: TButton;
    TabSheet9: TTabSheet;
    TDCariKM: TDateTimePicker;
    Button33: TButton;
    Label32: TLabel;
    ComboBox1: TComboBox;
    Panel8: TPanel;
    Label33: TLabel;
    PageControl1: TPageControl;
    TabSheet10: TTabSheet;
    ECariSM: TEdit;
    TabSheet11: TTabSheet;
    DateTimePicker3: TDateTimePicker;
    Button36: TButton;
    ComboBox2: TComboBox;
    Button35: TButton;
    Panel9: TPanel;
    Label34: TLabel;
    PageControl2: TPageControl;
    TabSheet12: TTabSheet;
    ECariO: TEdit;
    TabSheet13: TTabSheet;
    DateTimePicker4: TDateTimePicker;
    Button38: TButton;
    ComboBox3: TComboBox;
    Button39: TButton;
    frxDBDataset11: TfrxDBDataset;
    frxReport5: TfrxReport;
    Button40: TButton;
    Panel10: TPanel;
    Label35: TLabel;
    PageControl3: TPageControl;
    TabSheet14: TTabSheet;
    ECariKK: TEdit;
    TabSheet15: TTabSheet;
    DateTimePicker5: TDateTimePicker;
    Button41: TButton;
    ComboBox4: TComboBox;
    Button42: TButton;
    Button37: TButton;
    frxReport6: TfrxReport;
    frxDBDataset12: TfrxDBDataset;
    Button43: TButton;
    frxDBDataset13: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    PC: TPageControl;
    procedure Button9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure PCPengeluaranChange(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure BeditsimClick(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKeuangan: TFKeuangan;


implementation

{$R *.dfm}

uses DataModule, Ubayaran, UGaji;

procedure TFKeuangan.BeditsimClick(Sender: TObject);
begin
  if EJenis.Text ='' then
  begin
    showmessage('Jenis masih kosong');
  end else
  if EKeterangan.Text ='' then
  begin
    showmessage('Keterangan masih kosong');
  end else
  if Ebiaya.Text ='' then
  begin
    showmessage('Biaya Operasional masih kosong');
  end else
  begin
  with DM.TOperasional do
 begin
    FieldByName('id_operasional').AsString := DBEOperasional.Text;
    FieldByName('type').AsString := EJenis.Text;
    FieldByName('keterangan').AsString := EKeterangan.Text;
    FieldByName('tanggal_operasional').AsDateTime := DTOperasional.Date;
    FieldByName('biaya_operasional').AsString := Ebiaya.Text;
    Post;
  end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  EIdOperasional.Clear;
  EJenis.Clear;
  EKeterangan.Clear;
  Ebiaya.Clear;
  DBEOperasional.Hide;
end;
end;

procedure TFKeuangan.Button10Click(Sender: TObject);
begin
 DM.TSumbangan.Delete;
 Button27.Visible := False;
 DBEdit1.Visible := False;
end;

procedure TFKeuangan.Button11Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Button27.Visible := False;
  DBEdit1.Visible := False;
  DM.TSumbangan.Cancel;
end;

procedure TFKeuangan.Button12Click(Sender: TObject);
begin
  DM.TSumbangan.Edit;
  Button27.Visible := True;
  DBEdit1.Visible := True;
end;

procedure TFKeuangan.Button13Click(Sender: TObject);
begin
if Edit1.Text ='' then
  begin
    showmessage('Id Sumbangan masih kosong');
  end else
  if Edit2.Text ='' then
  begin
    showmessage('Asal Sumbangan masih kosong');
  end else
  if Edit3.Text ='' then
  begin
    showmessage('Jumlah Sumbangan masih kosong');
  end else
  begin
  with DM.TSumbangan do
 begin
    FieldByName('id_sumbangan').AsString := Edit1.Text;
    FieldByName('sumbangan_dari').AsString := Edit2.Text;
    FieldByName('jumlah_sumbangan').AsString := Edit3.Text;
    FieldByName('tanggal_sumbangan').AsDateTime := DateTimePicker1.Date;
    Post;
 end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  end;
end;

procedure TFKeuangan.Button14Click(Sender: TObject);
var ids : string;
begin
  DM.TSumbangan.Insert;
  DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Text := 'select * from sumbangan order by right(id_sumbangan,2) DESC limit 1';
    DM.ADOQuery1.ExecSQL;
    DM.ADOQuery1.Open;
    if DM.ADOQuery1.RecordCount = 0 then
    begin
      Edit1.Text := 'Smb-'+FormatDateTime('yyyy',Now)+'-01';
    end
    else
    begin
      ids := IntToStr(StrToInt(Copy(DM.ADOQuery1.FieldByName('id_sumbangan').AsString,10,2))+1);
      if Length(ids) < 2 then
      begin
        Edit1.Text := 'Smb-'+FormatDateTime('yyyy',Now)+'-0'+ids;
      end
      else
      begin
        Edit1.Text := 'Smb-'+FormatDateTime('yyyy',Now)+'-'+ids;
      end;
    end;
end;

procedure TFKeuangan.Button15Click(Sender: TObject);
var ido : string;
begin
  DM.TOperasional.Insert;
  Button16.Enabled := True;
  Button18.Enabled := True;
  DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Text := 'select * from operasional order by right(id_operasional,2) DESC limit 1';
    DM.ADOQuery1.ExecSQL;
    DM.ADOQuery1.Open;
    if DM.ADOQuery1.RecordCount = 0 then
    begin
      EIdOperasional.Text := 'OP-'+FormatDateTime('yyyy',Now)+'-01';
    end
    else
    begin
      ido := IntToStr(StrToInt(Copy(DM.ADOQuery1.FieldByName('id_operasional').AsString,9,2))+1);
      if Length(ido) < 2 then
      begin
        EIdOperasional.Text := 'OP-'+FormatDateTime('yyyy',Now)+'-0'+ido;
      end
      else
      begin
        EIdOperasional.Text := 'OP-'+FormatDateTime('yyyy',Now)+'-'+ido;
      end;
    end;
end;

procedure TFKeuangan.Button16Click(Sender: TObject);
begin
if EIdOperasional.Text ='' then
  begin
    showmessage('Id Operasional masih kosong');
  end else
  if EJenis.Text ='' then
  begin
    showmessage('Jenis masih kosong');
  end else
  if EKeterangan.Text ='' then
  begin
    showmessage('Keterangan masih kosong');
  end else
  if Ebiaya.Text ='' then
  begin
    showmessage('Biaya Operasional masih kosong');
  end else
  begin
  with DM.TOperasional do
 begin
    FieldByName('id_operasional').AsString := EIdOperasional.Text;
    FieldByName('type').AsString := EJenis.Text;
    FieldByName('keterangan').AsString := EKeterangan.Text;
    FieldByName('tanggal_operasional').AsDateTime := DTOperasional.Date;
    FieldByName('biaya_operasional').AsString := Ebiaya.Text;
    Post;
  end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  Button16.Enabled := False;
  Button18.Enabled := False;
  EIdOperasional.Clear;
  EJenis.Clear;
  EKeterangan.Clear;
  Ebiaya.Clear;
end;
end;

procedure TFKeuangan.Button17Click(Sender: TObject);
begin
DM.TOperasional.Edit;
DBEOperasional.Show;
Beditsim.Show;
Button18.Enabled := True;
end;

procedure TFKeuangan.Button18Click(Sender: TObject);
begin
 DM.TOperasional.Cancel;
 Button18.Enabled := False;
 Button16.Enabled := False;
 DBEOperasional.Hide;
 Beditsim.Hide;
 EIdOperasional.Clear;
 EJenis.Clear;
 EKeterangan.Clear;
 Ebiaya.Clear;
end;

procedure TFKeuangan.Button1Click(Sender: TObject);
begin
PCPemasukan.Show;
PCPengeluaran.Hide;
PCLaporan.Hide;
PC.Hide;
end;

procedure TFKeuangan.Button20Click(Sender: TObject);
begin
if EidKegiatanK.Text ='' then
  begin
    showmessage('Id Kegiatan masih kosong');
  end else
  if ENamaKegiatanK.Text ='' then
  begin
    showmessage('Nama Kegiatan masih kosong');
  end else
  if ELokasiK.Text ='' then
  begin
    showmessage('Lokasi Kegiatan masih kosong');
  end else
  if EBiayaK.Text ='' then
  begin
    showmessage('Biaya Kegiatan masih kosong');
  end else
  begin
  with DM.TKegiatanK do
 begin
    FieldByName('id_kegiatanK').AsString := EidKegiatanK.Text;
    FieldByName('nama_kegiatan_k').AsString := ENamaKegiatanK.Text;
    FieldByName('lokasi_kegiatan_k').AsString := ELokasiK.Text;
    FieldByName('tanggal_kegiatan_k').AsDateTime := DateTimePicker2.Date;
    FieldByName('biaya_kegiatan_k').AsString := EBiayaK.Text;
    Post;
 end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  EidKegiatanK.Clear;
  ENamaKegiatanK.Clear;
  ELokasiK.Clear;
  EBiayaK.Clear;
  end;
end;

procedure TFKeuangan.Button21Click(Sender: TObject);
var idkk : string;
begin

DM.TKegiatanK.Insert;
  DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Text := 'select * from kegiatan_keluar order by right(id_kegiatanK,2) DESC limit 1';
    DM.ADOQuery1.ExecSQL;
    DM.ADOQuery1.Open;
    if DM.ADOQuery1.RecordCount = 0 then
    begin
      EidKegiatanK.Text := 'KGK-'+FormatDateTime('yyyy',Now)+'-01';
    end
    else
    begin
      idkk := IntToStr(StrToInt(Copy(DM.ADOQuery1.FieldByName('id_kegiatanK').AsString,10,2))+1);
      if Length(idkk) < 2 then
      begin
        EidKegiatanK.Text := 'KGK-'+FormatDateTime('yyyy',Now)+'-0'+idkk;
      end
      else
      begin
        EidKegiatanK.Text := 'KGK-'+FormatDateTime('yyyy',Now)+'-'+idkk;
      end;
    end;
end;

procedure TFKeuangan.Button22Click(Sender: TObject);
begin
 DM.TKegiatanK.Edit;
 Button28.Show;
 DBEdit2.Show;
end;

procedure TFKeuangan.Button23Click(Sender: TObject);
begin
  DM.TKegiatanK.Cancel;
  Button28.Hide;
  DBEdit2.Hide;
  EidKegiatanK.Clear;
  ENamaKegiatanK.Clear;
  ELokasiK.Clear;
  EBiayaK.Clear;
end;

procedure TFKeuangan.Button24Click(Sender: TObject);
begin
DM.TKegiatanK.Delete;
 Button28.Hide;
  DBEdit2.Hide;
  EidKegiatanK.Clear;
  ENamaKegiatanK.Clear;
  ELokasiK.Clear;
  EBiayaK.Clear;
end;

procedure TFKeuangan.Button25Click(Sender: TObject);
begin
FGaji.Show;
end;

procedure TFKeuangan.Button26Click(Sender: TObject);
begin
if DBEidKegiatan.Text ='' then
  begin
    showmessage('Id Kegiatan masih kosong');
  end else
  if ENamaKegiatan.Text ='' then
  begin
    showmessage('Nama Kegiatan masih kosong');
  end else
  if ELokasi.Text ='' then
  begin
    showmessage('Lokasi Kegiatan masih kosong');
  end else
  if EBiayaKegiatan.Text ='' then
  begin
    showmessage('Biaya Kegiatan masih kosong');
  end else
  begin
  with DM.TKegiatanM do
 begin
    FieldByName('id_kegiatan').AsString := DBEidKegiatan.Text;
    FieldByName('nama_kegiatan_m').AsString := ENamaKegiatan.Text;
    FieldByName('lokasi_kegiatan_m').AsString := ELokasi.Text;
    FieldByName('tanggal_kegiatan_m').AsDateTime := DTKegiatanM.Date;
    FieldByName('biaya_kegiatan_m').AsString := EBiayaKegiatan.Text;
    Post;
 end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  ENamaKegiatan.Clear;
  ELokasi.Clear;
  EBiayaKegiatan.Clear;
  DBEidKegiatan.Hide;
  Button26.Hide;
  end;

end;

procedure TFKeuangan.Button27Click(Sender: TObject);
begin
if DBEdit1.Text ='' then
  begin
    showmessage('Id Sumbangan masih kosong');
  end else
  if Edit2.Text ='' then
  begin
    showmessage('Asal Sumbangan masih kosong');
  end else
  if Edit3.Text ='' then
  begin
    showmessage('Jumlah Sumbangan masih kosong');
  end else
  begin
  with DM.TSumbangan do
 begin
    FieldByName('id_sumbangan').AsString := DBEdit1.Text;
    FieldByName('sumbangan_dari').AsString := Edit2.Text;
    FieldByName('jumlah_sumbangan').AsString := Edit3.Text;
    FieldByName('tanggal_sumbangan').AsDateTime := DateTimePicker1.Date;
    Post;
 end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  Edit2.Clear;
  Edit3.Clear;
  Button27.Visible := False;
  DBEdit1.Visible := False;
  end;

end;

procedure TFKeuangan.Button28Click(Sender: TObject);
begin
if DBEdit2.Text ='' then
  begin
    showmessage('Id Kegiatan masih kosong');
  end else
  if ENamaKegiatanK.Text ='' then
  begin
    showmessage('Nama Kegiatan masih kosong');
  end else
  if ELokasiK.Text ='' then
  begin
    showmessage('Lokasi Kegiatan masih kosong');
  end else
  if EBiayaK.Text ='' then
  begin
    showmessage('Biaya Kegiatan masih kosong');
  end else
  begin
  with DM.TKegiatanK do
 begin
    FieldByName('id_kegiatanK').AsString := DBEdit2.Text;
    FieldByName('nama_kegiatan_k').AsString := ENamaKegiatanK.Text;
    FieldByName('lokasi_kegiatan_k').AsString := ELokasiK.Text;
    FieldByName('tanggal_kegiatan_k').AsDateTime := DateTimePicker2.Date;
    FieldByName('biaya_kegiatan_k').AsString := EBiayaK.Text;
    Post;
 end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  ENamaKegiatanK.Clear;
  ELokasiK.Clear;
  EBiayaK.Clear;
  Button28.Hide;
  DBEdit2.Hide;
  end;
end;

procedure TFKeuangan.Button29Click(Sender: TObject);
begin
 DM.TLaporan.Cancel;
 frxReport1.ShowReport();
end;

procedure TFKeuangan.Button2Click(Sender: TObject);
begin
PCPengeluaran.Show;
PCPemasukan.Hide;
PCLaporan.Hide;
PC.Hide;
end;

procedure TFKeuangan.Button30Click(Sender: TObject);
begin
frxReport2.ShowReport();
end;

procedure TFKeuangan.Button31Click(Sender: TObject);
begin
frxReport3.ShowReport();
end;

procedure TFKeuangan.Button32Click(Sender: TObject);
begin
frxReport4.ShowReport();
end;


procedure TFKeuangan.Button34Click(Sender: TObject);
begin
if (ECariKM.Text ='') then
  DM.TKegiatanM.Filtered := False
else
begin
  DM.TKegiatanM.Filtered := False;
  DM.TKegiatanM.Filter := ComboBox1.Text+' like '+QuotedStr(ECariKM.Text+'%');
  DM.TKegiatanM.Filtered := True;
  ComboBox1.TextHint := 'Kategori Berdasarkan';
  end;
end;

procedure TFKeuangan.Button35Click(Sender: TObject);
begin
if (ECariSM.Text ='') then
  DM.TSumbangan.Filtered := False
else
begin
  DM.TSumbangan.Filtered := False;
  DM.TSumbangan.Filter := ComboBox2.Text+' like '+QuotedStr(ECariSM.Text+'%');
  DM.TSumbangan.Filtered := True;
  ComboBox2.TextHint := 'Kategori Berdasarkan';
  end;
end;

procedure TFKeuangan.Button37Click(Sender: TObject);
begin
frxReport6.ShowReport();
end;

procedure TFKeuangan.Button39Click(Sender: TObject);
begin
frxReport5.ShowReport();
end;

procedure TFKeuangan.Button3Click(Sender: TObject);
begin
PCLaporan.Show;
PC.Hide;
PCPemasukan.Hide;
PCPengeluaran.Hide;
ADOQuery1.Close;
ADOQuery2.Close;
ADOQuery3.Close;
ADOQuery4.Close;
ADOQuery5.Close;
ADOQuery6.Close;
ADOQuery7.Close;
ADOQuery1.Open;
ADOQuery2.Open;
ADOQuery3.Open;
ADOQuery4.Open;
ADOQuery5.Open;
ADOQuery6.Open;
ADOQuery7.Open;
if DBEdit3.Text ='' then
  begin
    DBEdit3.Text := '0';
  end;
if DBEdit4.Text ='' then
  begin
     DBEdit4.Text := '0';
  end;
if DBEdit5.Text ='' then
   begin
     DBEdit5.Text := '0';
   end;
if DBEdit6.Text ='' then
   begin
     DBEdit6.Text := '0';
   end;
if DBEdit7.Text ='' then
   Begin
     DBEdit7.Text := '0';
   End;
if DBEdit8.Text ='' then
  begin
    DBEdit8.Text := '0';
  end;
if DBEdit9.Text ='' then
  begin
    DBEdit9.Text :='0';
  end;
ETotalPemasukan.Text := IntToStr(StrToInt(DBEdit3.Text)+StrToInt(DBEdit4.Text)
    +StrToInt(DBEdit5.Text)+StrToInt(DBEdit6.Text));
ETotalPengeluaran.Text := IntToStr(StrToInt(DBEdit7.Text)+StrToInt(DBEdit8.Text)
    +StrToInt(DBEdit9.Text));
ETotal.Text := IntToStr(StrToInt(ETotalPemasukan.Text)-
                StrToInt(ETotalPengeluaran.Text));
DM.TLaporan.Edit;
with DM.TLaporan do
    begin
    FieldByName('total_pendaftaran').AsString := DBEdit3.Text;
    FieldByName('total_bayaran').AsString := DBEdit4.Text;
    FieldByName('total_kegiatan_m').AsString := DBEdit5.Text;
    FieldByName('total_sumbangan').AsString := DBEdit6.Text;
    FieldByName('total_gaji').AsString := DBEdit7.Text;
    FieldByName('total_operasional').AsString := DBEdit8.Text;
    FieldByName('total_kegiatan_k').AsString := DBEdit9.Text;
    FieldByName('total_pemasukan').AsString := ETotalPemasukan.Text;
    FieldByName('total_pengeluaran').AsString := ETotalPengeluaran.Text;
    FieldByName('total_laba').AsString := ETotal.Text;
    Post;
    end;
end;

procedure TFKeuangan.Button40Click(Sender: TObject);
begin
if (ECariO.Text ='') then
  DM.TOperasional.Filtered := False
else
begin
  DM.TOperasional.Filtered := False;
  DM.TOperasional.Filter := ComboBox3.Text+' like '+QuotedStr(ECariO.Text+'%');
  DM.TOperasional.Filtered := True;
  ComboBox3.TextHint := 'Kategori Berdasarkan';
  end;
end;

procedure TFKeuangan.Button42Click(Sender: TObject);
begin
if (ECariKK.Text ='') then
  DM.TKegiatanK.Filtered := False
else
begin
  DM.TKegiatanK.Filtered := False;
  DM.TKegiatanK.Filter := ComboBox4.Text+' like '+QuotedStr(ECariKK.Text+'%');
  DM.TKegiatanK.Filtered := True;
  ComboBox4.TextHint := 'Kategori Berdasarkan';
  end;
end;

procedure TFKeuangan.Button4Click(Sender: TObject);
begin
if EidKegiatan.Text ='' then
  begin
    showmessage('Id Kegiatan masih kosong');
  end else
  if ENamaKegiatan.Text ='' then
  begin
    showmessage('Nama Kegiatan masih kosong');
  end else
  if ELokasi.Text ='' then
  begin
    showmessage('Lokasi Kegiatan masih kosong');
  end else
  if EBiayaKegiatan.Text ='' then
  begin
    showmessage('Biaya Kegiatan masih kosong');
  end else
  begin
  with DM.TKegiatanM do
 begin
    FieldByName('id_kegiatan').AsString := EidKegiatan.Text;
    FieldByName('nama_kegiatan_m').AsString := ENamaKegiatan.Text;
    FieldByName('lokasi_kegiatan_m').AsString := ELokasi.Text;
    FieldByName('tanggal_kegiatan_m').AsDateTime := DTKegiatanM.Date;
    FieldByName('biaya_kegiatan_m').AsString := EBiayaKegiatan.Text;
    Post;
 end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  EidKegiatan.Clear;
  ENamaKegiatan.Clear;
  ELokasi.Clear;
  EBiayaKegiatan.Clear;
  end;
end;

procedure TFKeuangan.Button5Click(Sender: TObject);
var idkm : string;
begin
DM.TKegiatanM.Insert;
  DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Text := 'select * from kegiatan_masuk order by right(id_kegiatan,2) DESC limit 1';
    DM.ADOQuery1.ExecSQL;
    DM.ADOQuery1.Open;
    if DM.ADOQuery1.RecordCount = 0 then
    begin
      EidKegiatan.Text := 'KGM-'+FormatDateTime('yyyy',Now)+'-01';
    end
    else
    begin
      idkm := IntToStr(StrToInt(Copy(DM.ADOQuery1.FieldByName('id_kegiatan').AsString,10,2))+1);
      if Length(idkm) < 2 then
      begin
        EidKegiatan.Text := 'KGM-'+FormatDateTime('yyyy',Now)+'-0'+idkm;
      end
      else
      begin
        EidKegiatan.Text := 'KGM-'+FormatDateTime('yyyy',Now)+'-'+idkm;
      end;
    end;
end;

procedure TFKeuangan.Button6Click(Sender: TObject);
begin
  DM.TKegiatanM.Edit;
  Button26.Visible := True;
  DBEidKegiatan.Visible := True;
end;

procedure TFKeuangan.Button7Click(Sender: TObject);
begin
 EidKegiatan.Clear;
 ENamaKegiatan.Clear;
 ELokasi.Clear;
 EBiayaKegiatan.Clear;
 DM.TKegiatanM.Cancel;
 Button26.Hide;
 DBEidKegiatan.Hide;
end;

procedure TFKeuangan.Button8Click(Sender: TObject);
begin
  DM.TKegiatanM.Delete;
  Button26.Visible := False;
  DBEidKegiatan.Visible := False;
end;

procedure TFKeuangan.Button9Click(Sender: TObject);
begin
 Fbayaran.Show;
end;

procedure TFKeuangan.FormActivate(Sender: TObject);
begin
  PCPemasukan.Show;
end;

procedure TFKeuangan.PCPengeluaranChange(Sender: TObject);
begin
 ENamaKegiatan.Clear;
 ELokasi.Clear;
 EBiayaKegiatan.Clear;
 DM.TKegiatanM.Cancel;
end;

procedure TFKeuangan.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels[0].Text := 'User : '+DM.TUser.FieldByName('Nama').AsString;
    StatusBar1.Panels[1].Text:=FormatDateTime('ddd, dd mmmm yyyy  hh:mm:ss', Now);
end;

end.
