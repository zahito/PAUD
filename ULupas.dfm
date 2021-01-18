object FLupas: TFLupas
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PAUD Salman Al-Faisii'
  ClientHeight = 298
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 298
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 366
      Height = 41
      Align = alTop
      Caption = 'FORM Lupa Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Font.Quality = fqDraft
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 64
    Width = 305
    Height = 209
    TabOrder = 1
    object Label1: TLabel
      Left = 50
      Top = 24
      Width = 70
      Height = 13
      Caption = 'Nama Lengkap'
    end
    object Label2: TLabel
      Left = 50
      Top = 51
      Width = 75
      Height = 13
      Caption = 'Warna Favorite'
    end
    object Label3: TLabel
      Left = 50
      Top = 78
      Width = 21
      Height = 13
      Caption = 'Hobi'
    end
    object Label5: TLabel
      Left = 50
      Top = 105
      Width = 58
      Height = 13
      Caption = 'Code Angka'
    end
    object Edit1: TEdit
      Left = 136
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 136
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 136
      Top = 75
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 136
      Top = 102
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Button1: TButton
      Left = 50
      Top = 157
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 182
      Top = 157
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
end
