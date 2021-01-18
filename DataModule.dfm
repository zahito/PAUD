object DM: TDM
  OldCreateOrder = False
  Height = 304
  Width = 651
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=paud;' +
      'Initial Catalog=paud'
    CursorLocation = clUseServer
    DefaultDatabase = 'paud'
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object TUser: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    MaxRecords = 10
    TableName = 'user'
    Left = 48
    Top = 88
  end
  object DSUser: TDataSource
    DataSet = TUser
    Left = 48
    Top = 152
  end
  object TDataAnak: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dataanak'
    Left = 112
    Top = 88
  end
  object DSDataAnak: TDataSource
    DataSet = TDataAnak
    Left = 112
    Top = 152
  end
  object TDataPengajar: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'pengajar'
    Left = 176
    Top = 88
  end
  object DSPengajar: TDataSource
    DataSet = TDataPengajar
    Left = 176
    Top = 152
  end
  object TBayaran: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_anak'
    MasterFields = 'id_anak'
    MasterSource = DSDataAnak
    TableName = 'bayaran'
    Left = 240
    Top = 88
  end
  object DSBayaran: TDataSource
    DataSet = TBayaran
    Left = 240
    Top = 152
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 32
  end
  object TKegiatanM: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'kegiatan_masuk'
    Left = 304
    Top = 88
  end
  object TSumbangan: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sumbangan'
    Left = 376
    Top = 88
  end
  object DSKegiatanM: TDataSource
    DataSet = TKegiatanM
    Left = 304
    Top = 152
  end
  object DSSumbangan: TDataSource
    DataSet = TSumbangan
    Left = 376
    Top = 152
  end
  object TGaji: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_pengajar'
    MasterFields = 'id_pengajar'
    MasterSource = DSPengajar
    TableName = 'gaji'
    Left = 440
    Top = 88
  end
  object DSGaji: TDataSource
    DataSet = TGaji
    Left = 440
    Top = 152
  end
  object TKegiatanK: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'kegiatan_keluar'
    Left = 504
    Top = 88
  end
  object DSKegiatanK: TDataSource
    DataSet = TKegiatanK
    Left = 504
    Top = 152
  end
  object TOperasional: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'operasional'
    Left = 576
    Top = 88
  end
  object DSOperasional: TDataSource
    DataSet = TOperasional
    Left = 576
    Top = 152
  end
  object TBulan: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'bulan'
    Left = 48
    Top = 216
  end
  object DSBulan: TDataSource
    DataSet = TBulan
    Left = 112
    Top = 216
  end
  object TLaporan: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'laporan'
    Left = 176
    Top = 216
  end
  object DSLaporan: TDataSource
    DataSet = TLaporan
    Left = 240
    Top = 216
  end
end
