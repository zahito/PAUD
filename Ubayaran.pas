unit Ubayaran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, frxClass, frxDBSet;

type
  TFBayaran = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    DTBulan: TDateTimePicker;
    Button3: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button4: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBayaran: TFBayaran;

implementation

{$R *.dfm}

uses DataModule;
procedure TFBayaran.Button1Click(Sender: TObject);
var code : string;
begin
  Button2.Enabled := True;
  Button3.Enabled := True;
  DM.TBayaran.Insert;
  Edit2.Text := IntToStr(30000);
  DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Text := 'select * from bayaran order by right(id_bayaran,2) DESC limit 1';
    DM.ADOQuery1.ExecSQL;
    DM.ADOQuery1.Open;
    if DM.ADOQuery1.RecordCount = 0 then
    begin
      Edit1.Text := 'TBA-'+FormatDateTime('yyyy',Now)+'-01';
    end
    else
    begin
      code := IntToStr(StrToInt(Copy(DM.ADOQuery1.FieldByName('id_bayaran').AsString,10,2))+1);
      if Length(code) < 2 then
      begin
        Edit1.Text := 'TBA-'+FormatDateTime('yyyy',Now)+'-0'+code;
      end
      else
      begin
        Edit1.Text := 'TBA-'+FormatDateTime('yyyy',Now)+'-'+code;
      end;
    end;
end;

procedure TFBayaran.Button2Click(Sender: TObject);
begin
 if ComboBox1.Text ='' then
  begin
    showmessage('Belum Memasukan Bulan');
  end else
  begin
  with DM.TBayaran do
    begin
    FieldByName('id_bayaran').AsString := Edit1.Text;
    FieldByName('Uang_Bayaran').AsString := Edit2.Text;
    FieldByName('Tanggal_Bayar').AsDateTime := DTBulan.Date;
    FieldByName('bulan').AsString := ComboBox1.Text;
    Post;
   end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  Edit1.Clear;
  Edit2.Clear;
  Button2.Enabled := False;
  Button3.Enabled := False;
  DM.TDataAnak.Refresh;
  ComboBox1.Clear;
  ComboBox1.TextHint := 'Pilih Bulan';
  end;
end;

procedure TFBayaran.Button3Click(Sender: TObject);
begin
 Button3.Enabled := False;
 Edit1.Clear;
 Edit2.Clear;
 DM.TBayaran.Cancel;
end;

procedure TFBayaran.Button4Click(Sender: TObject);
begin
 DM.TBayaran.Delete;
 DM.TDataAnak.Refresh;
end;

procedure TFBayaran.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TFBayaran.ComboBox1DropDown(Sender: TObject);
begin
ComboBox1.Clear;
ComboBox1.TextHint := 'Pilih Bulan';
with DM.ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT bulan FROM bulan');
    Open;
    First;
    while not eof do
    begin
      ComboBox1.Items.Add(FieldByName('bulan').AsString);
      Next;
    end;
  end;
end;

end.
