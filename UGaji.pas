unit UGaji;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, frxClass, frxDBSet;

type
  TFGaji = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGaji: TFGaji;

implementation

{$R *.dfm}
uses DataModule;

procedure TFGaji.Button1Click(Sender: TObject);
var code : String;
begin
  Button2.Enabled := True;
  Button3.Enabled := True;
  DM.TGaji.Insert;
  Edit2.Text := IntToStr(100000);
  DM.ADOQuery1.SQL.Clear;
    DM.ADOQuery1.Close;
    DM.ADOQuery1.SQL.Text := 'select * from gaji order by right(id_gaji,2) DESC limit 1';
    DM.ADOQuery1.ExecSQL;
    DM.ADOQuery1.Open;
    if DM.ADOQuery1.RecordCount = 0 then
    begin
      Edit1.Text := 'TGP-'+FormatDateTime('yyyy',Now)+'-01';
    end
    else
    begin
      code := IntToStr(StrToInt(Copy(DM.ADOQuery1.FieldByName('id_gaji').AsString,10,2))+1);
      if Length(code) < 2 then
      begin
        Edit1.Text := 'TGP-'+FormatDateTime('yyyy',Now)+'-0'+code;
      end
      else
      begin
        Edit1.Text := 'TGP-'+FormatDateTime('yyyy',Now)+'-'+code;
      end;
    end;
end;

procedure TFGaji.Button2Click(Sender: TObject);
begin
 if ComboBox1.Text ='' then
  begin
    showmessage('Belum Memasukan Bulan');
  end else
  begin
  with DM.TGaji do
    begin
    FieldByName('id_gaji').AsString := Edit1.Text;
    FieldByName('uang_gaji').AsString := Edit2.Text;
    FieldByName('tanggal_gaji').AsDateTime := DateTimePicker1.Date;
    FieldByName('bulan').AsString := ComboBox1.Text;
    Post;
   end;
  MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],1);
  Edit1.Clear;
  Edit2.Clear;
  ComboBox1.Clear;
  Button2.Enabled := False;
  Button3.Enabled := False;
  DM.TDataPengajar.Refresh;
  ComboBox1.Clear;
  ComboBox1.TextHint := 'Pilih Bulan';
  end;

end;

procedure TFGaji.Button3Click(Sender: TObject);
begin
 Edit1.Clear;
 Edit2.Clear;
 DM.TGaji.Cancel;
end;

procedure TFGaji.Button4Click(Sender: TObject);
begin
DM.TGaji.Delete;
DM.TDataPengajar.Refresh;
end;

procedure TFGaji.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TFGaji.ComboBox1DropDown(Sender: TObject);
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
