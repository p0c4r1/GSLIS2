object frmTest: TfrmTest
  Left = 0
  Top = 0
  ClientHeight = 649
  ClientWidth = 755
  Caption = 'Test'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -16
  OnBeforeShow = UniFormBeforeShow
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 19
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 600
    Width = 755
    Height = 49
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 3
      Top = 6
      Width = 89
      Height = 41
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 1
    end
    object btnEdit: TUniButton
      Left = 98
      Top = 6
      Width = 89
      Height = 41
      Hint = ''
      Caption = 'Edit'
      TabOrder = 2
      OnClick = btnEditClick
    end
    object UniButton3: TUniButton
      Left = 193
      Top = 6
      Width = 89
      Height = 41
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 3
    end
    object btnExit: TUniButton
      Left = 288
      Top = 6
      Width = 89
      Height = 41
      Hint = ''
      Caption = 'Exit'
      TabOrder = 4
      OnClick = btnExitClick
    end
    object UniButton5: TUniButton
      Left = 663
      Top = 6
      Width = 89
      Height = 41
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 5
    end
    object UniButton6: TUniButton
      Left = 568
      Top = 5
      Width = 89
      Height = 41
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 6
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 600
    Hint = ''
    ParentColor = False
    Align = alLeft
    TabOrder = 1
    object tvTest: TUniTreeView
      Left = 0
      Top = 0
      Width = 329
      Height = 600
      Hint = ''
      Items.FontData = {0100000000}
      Align = alClient
      TabOrder = 1
      Color = clWindow
      ShowIcons = False
    end
  end
  object UniContainerPanel3: TUniContainerPanel
    Left = 329
    Top = 0
    Width = 426
    Height = 600
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 335
    object UniLabel1: TUniLabel
      Left = 24
      Top = 204
      Width = 41
      Height = 19
      Hint = ''
      Caption = 'Nama'
      TabOrder = 1
    end
    object edNama: TUniEdit
      Left = 152
      Top = 201
      Width = 257
      Hint = ''
      Text = 'edNama'
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 24
      Top = 14
      Width = 73
      Height = 19
      Hint = ''
      Caption = 'Paket Test'
      TabOrder = 3
    end
    object cbLayanan: TUniDBLookupComboBox
      Left = 152
      Top = 73
      Width = 257
      Height = 27
      Hint = ''
      ListField = 'nama'
      ListSource = DSLayanan
      KeyField = 'id'
      ListFieldIndex = 0
      DataField = 'id'
      TabOrder = 4
      Color = clWindow
      ForceSelection = True
      OnChangeValue = cbLayananChangeValue
    end
    object cbPaket: TUniComboBox
      Left = 152
      Top = 12
      Width = 257
      Height = 27
      Hint = ''
      Style = csDropDownList
      Text = ''
      Items.Strings = (
        'Normal'
        'Paket')
      TabOrder = 5
      IconItems = <>
    end
    object cbKelompok: TUniDBLookupComboBox
      Left = 152
      Top = 107
      Width = 257
      Height = 27
      Hint = ''
      ListField = 'nama'
      ListSource = DSKelompok
      KeyField = 'id'
      ListFieldIndex = 0
      DataField = 'id'
      TabOrder = 6
      Color = clWindow
      ForceSelection = True
    end
    object cbInduk: TUniDBLookupComboBox
      Left = 152
      Top = 140
      Width = 257
      Height = 27
      Hint = ''
      KeyField = 'nama'
      ListFieldIndex = 0
      DataField = 'id'
      TabOrder = 7
      Color = clWindow
      ForceSelection = True
    end
    object UniEdit2: TUniEdit
      Left = 344
      Top = 173
      Width = 65
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 8
    end
    object UniEdit3: TUniEdit
      Left = 217
      Top = 173
      Width = 121
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 9
    end
    object UniLabel3: TUniLabel
      Left = 24
      Top = 50
      Width = 71
      Height = 19
      Hint = ''
      Caption = 'Level Test'
      TabOrder = 10
    end
    object UniLabel4: TUniLabel
      Left = 24
      Top = 76
      Width = 94
      Height = 19
      Hint = ''
      Caption = 'Bag. Layanan'
      TabOrder = 11
    end
    object UniLabel5: TUniLabel
      Left = 24
      Top = 111
      Width = 105
      Height = 19
      Hint = ''
      Caption = 'Kelompok Test'
      TabOrder = 12
    end
    object UniLabel6: TUniLabel
      Left = 24
      Top = 146
      Width = 76
      Height = 19
      Hint = ''
      Caption = 'Induk Test'
      TabOrder = 13
    end
    object UniLabel7: TUniLabel
      Left = 24
      Top = 175
      Width = 70
      Height = 19
      Hint = ''
      Caption = 'Kode Test'
      TabOrder = 14
    end
    object UniLabel8: TUniLabel
      Left = 24
      Top = 229
      Width = 161
      Height = 19
      Hint = ''
      Caption = 'Test dicetak pada Nota'
      TabOrder = 15
    end
    object UniLabel9: TUniLabel
      Left = 24
      Top = 254
      Width = 162
      Height = 19
      Hint = ''
      Caption = 'Test dicetak pada Hasil'
      TabOrder = 16
    end
    object UniLabel10: TUniLabel
      Left = 24
      Top = 279
      Width = 155
      Height = 19
      Hint = ''
      Caption = 'Test memiliki sub test'
      TabOrder = 17
    end
    object UniLabel11: TUniLabel
      Left = 24
      Top = 304
      Width = 132
      Height = 19
      Hint = ''
      Caption = 'Test memiliki hasil'
      TabOrder = 18
    end
    object UniLabel12: TUniLabel
      Left = 24
      Top = 329
      Width = 65
      Height = 19
      Hint = ''
      Caption = 'Test aktif'
      TabOrder = 19
    end
    object UniLabel13: TUniLabel
      Left = 24
      Top = 354
      Width = 73
      Height = 19
      Hint = ''
      Caption = 'Ada harga'
      TabOrder = 20
    end
    object UniCheckBox1: TUniCheckBox
      Left = 392
      Top = 230
      Width = 17
      Height = 17
      Hint = ''
      Caption = ''
      TabOrder = 21
    end
    object UniCheckBox2: TUniCheckBox
      Left = 392
      Top = 255
      Width = 17
      Height = 17
      Hint = ''
      Caption = ''
      TabOrder = 22
    end
    object UniCheckBox3: TUniCheckBox
      Left = 392
      Top = 280
      Width = 17
      Height = 17
      Hint = ''
      Caption = ''
      TabOrder = 23
    end
    object UniCheckBox4: TUniCheckBox
      Left = 392
      Top = 305
      Width = 17
      Height = 17
      Hint = ''
      Caption = ''
      TabOrder = 24
    end
    object UniCheckBox5: TUniCheckBox
      Left = 392
      Top = 329
      Width = 17
      Height = 17
      Hint = ''
      Caption = ''
      TabOrder = 25
    end
    object UniCheckBox6: TUniCheckBox
      Left = 392
      Top = 355
      Width = 17
      Height = 17
      Hint = ''
      Caption = ''
      TabOrder = 26
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Left = 152
      Top = 378
      Width = 257
      Height = 27
      Hint = ''
      KeyField = 'nama'
      ListFieldIndex = 0
      DataField = 'id'
      TabOrder = 27
      Color = clWindow
      ForceSelection = True
    end
    object UniLabel14: TUniLabel
      Left = 24
      Top = 379
      Width = 90
      Height = 19
      Hint = ''
      Caption = 'Jenis sampel'
      TabOrder = 28
    end
    object UniLabel15: TUniLabel
      Left = 24
      Top = 411
      Width = 48
      Height = 19
      Hint = ''
      Caption = 'Satuan'
      TabOrder = 29
    end
    object UniEdit4: TUniEdit
      Left = 288
      Top = 411
      Width = 121
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 30
    end
    object UniLabel16: TUniLabel
      Left = 24
      Top = 440
      Width = 128
      Height = 19
      Hint = ''
      Caption = 'Waktu pengerjaan'
      TabOrder = 31
    end
    object UniEdit5: TUniEdit
      Left = 288
      Top = 439
      Width = 88
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 32
    end
    object UniLabel17: TUniLabel
      Left = 382
      Top = 439
      Width = 27
      Height = 19
      Hint = ''
      Caption = 'hari'
      TabOrder = 33
    end
    object UniDBLookupComboBox4: TUniDBLookupComboBox
      Left = 152
      Top = 507
      Width = 257
      Height = 27
      Hint = ''
      KeyField = 'nama'
      ListFieldIndex = 0
      DataField = 'id'
      TabOrder = 34
      Color = clWindow
      ForceSelection = True
    end
    object UniLabel18: TUniLabel
      Left = 24
      Top = 479
      Width = 51
      Height = 19
      Hint = ''
      Caption = 'Metode'
      TabOrder = 35
    end
    object UniEdit6: TUniEdit
      Left = 81
      Top = 479
      Width = 208
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 36
    end
    object UniLabel19: TUniLabel
      Left = 295
      Top = 482
      Width = 29
      Height = 19
      Hint = ''
      Caption = 'Flag'
      TabOrder = 37
    end
    object UniEdit7: TUniEdit
      Left = 330
      Top = 479
      Width = 79
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 38
    end
    object UniLabel20: TUniLabel
      Left = 24
      Top = 515
      Width = 28
      Height = 19
      Hint = ''
      Caption = 'Alat'
      TabOrder = 39
    end
    object UniNumberEdit1: TUniNumberEdit
      Left = 328
      Top = 45
      Width = 81
      Hint = ''
      Alignment = taRightJustify
      TabOrder = 40
      DecimalSeparator = '.'
    end
  end
  object qMTest0: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 200
    Top = 8
  end
  object QMTest1: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 248
    Top = 8
  end
  object qMTest2: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 296
    Top = 8
  end
  object QLayanan: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      'select id,CONCAT(kode,'#39'|'#39',nama) nama'
      'from'
      'layanan'
      'order by id')
    Left = 279
    Top = 88
    object QLayananid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QLayanannama: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nama'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 52
    end
  end
  object DSLayanan: TDataSource
    DataSet = QLayanan
    Left = 239
    Top = 88
  end
  object DSKelompok: TDataSource
    DataSet = QKelompok
    Left = 247
    Top = 136
  end
  object QKelompok: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      'select id,CONCAT(kode,'#39'|'#39',nama) nama'
      'from'
      'kelompok_test'
      'where layanan_id = :layanan_id'
      'order by id')
    Left = 287
    Top = 136
    ParamData = <
      item
        Name = 'LAYANAN_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nama'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 52
    end
  end
end
