object FPendaftaran: TFPendaftaran
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'PAUD Salman Al-Farisi'
  ClientHeight = 279
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 41
    Height = 13
    Caption = 'ID Siswa'
  end
  object Label3: TLabel
    Left = 32
    Top = 92
    Width = 54
    Height = 13
    Caption = 'Nama Anak'
  end
  object Label4: TLabel
    Left = 32
    Top = 118
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label5: TLabel
    Left = 32
    Top = 145
    Width = 81
    Height = 13
    Caption = 'Nama Orang Tua'
  end
  object Label6: TLabel
    Left = 32
    Top = 172
    Width = 89
    Height = 13
    Caption = 'Biaya Pendaftaran'
  end
  object Label7: TLabel
    Left = 32
    Top = 199
    Width = 72
    Height = 13
    Caption = 'Tanggal Daftar'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 876
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 874
      Height = 24
      Align = alTop
      Alignment = taCenter
      Caption = 'FORM PENDAFTARAN ANAK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 293
    end
  end
  object TDdaftar: TDateTimePicker
    Left = 152
    Top = 196
    Width = 137
    Height = 21
    Date = 42902.667163159720000000
    Time = 42902.667163159720000000
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 312
    Top = 64
    Width = 557
    Height = 156
    DataSource = DM.DSDataAnak
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_anak'
        Title.Caption = 'ID Anak'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_anak'
        Title.Caption = 'Nama Anak'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat_anak'
        Title.Caption = 'Alamat Anak'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_ot'
        Title.Caption = 'Nama Orang Tua'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uang_daftar'
        Title.Caption = 'Uang Daftar'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_daftar'
        Title.Caption = 'Tanggal Daftar'
        Width = 82
        Visible = True
      end>
  end
  object Bsimpan: TButton
    Left = 152
    Top = 240
    Width = 65
    Height = 25
    Action = DatasetPost1
    Enabled = False
    TabOrder = 4
    OnClick = BsimpanClick
  end
  object Bbatal: TButton
    Left = 223
    Top = 240
    Width = 65
    Height = 25
    Action = DatasetCancel1
    Caption = '&Batal'
    TabOrder = 5
    OnClick = BbatalClick
  end
  object Button1: TButton
    Left = 81
    Top = 240
    Width = 65
    Height = 25
    Hint = 'post'
    Action = DatasetInsert1
    Caption = '&Tambah'
    TabOrder = 1
    OnClick = Button1Click
  end
  object EIdAnak: TEdit
    Left = 152
    Top = 61
    Width = 135
    Height = 21
    DoubleBuffered = False
    Enabled = False
    OEMConvert = True
    ParentColor = True
    ParentDoubleBuffered = False
    ReadOnly = True
    TabOrder = 6
  end
  object ENamaAnak: TEdit
    Left = 152
    Top = 88
    Width = 135
    Height = 21
    OEMConvert = True
    TabOrder = 7
  end
  object EAlamat: TEdit
    Left = 152
    Top = 115
    Width = 135
    Height = 21
    OEMConvert = True
    TabOrder = 8
  end
  object ENamaOT: TEdit
    Left = 152
    Top = 142
    Width = 135
    Height = 21
    OEMConvert = True
    TabOrder = 9
  end
  object EBiayaDaftar: TEdit
    Left = 152
    Top = 169
    Width = 135
    Height = 21
    Enabled = False
    OEMConvert = True
    ParentColor = True
    ReadOnly = True
    TabOrder = 10
  end
  object ActionList1: TActionList
    Left = 16
    Top = 232
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Simpan'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
  end
end
