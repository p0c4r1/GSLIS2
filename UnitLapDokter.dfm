object frmLapDokter: TfrmLapDokter
  Left = 0
  Top = 0
  ClientHeight = 184
  ClientWidth = 486
  Caption = 'Laporan Dokter'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -16
  OnBeforeShow = UniFormBeforeShow
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 19
  object UniLabel1: TUniLabel
    Left = 32
    Top = 32
    Width = 57
    Height = 19
    Hint = ''
    Caption = 'Tanggal'
    TabOrder = 0
  end
  object dtStart: TUniDateTimePicker
    Left = 95
    Top = 32
    Width = 120
    Hint = ''
    DateTime = 43649.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 221
    Top = 32
    Width = 22
    Height = 19
    Hint = ''
    Caption = 's/d'
    TabOrder = 2
  end
  object dtEnd: TUniDateTimePicker
    Left = 249
    Top = 32
    Width = 120
    Hint = ''
    DateTime = 43649.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 3
  end
  object UniLabel3: TUniLabel
    Left = 32
    Top = 72
    Width = 47
    Height = 19
    Hint = ''
    Caption = 'Dokter'
    TabOrder = 4
  end
  object expXLSX: TUniButton
    Left = 32
    Top = 135
    Width = 129
    Height = 41
    Hint = ''
    Caption = 'Export XLSX'
    TabOrder = 5
    OnClick = expXLSXClick
  end
  object UniButton2: TUniButton
    Left = 167
    Top = 135
    Width = 98
    Height = 41
    Hint = ''
    Caption = 'View'
    TabOrder = 6
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 359
    Top = 128
    Width = 106
    Height = 41
    Hint = ''
    Caption = 'Batal'
    TabOrder = 7
    OnClick = UniButton3Click
  end
  object cbDokter: TUniDBLookupComboBox
    Left = 95
    Top = 72
    Width = 370
    Height = 27
    Hint = ''
    ListSource = dsDokter
    KeyField = 'nama'
    ListFieldIndex = 0
    DataField = 'id'
    TabOrder = 8
    Color = clWindow
    Style = csDropDown
  end
  object qDokter: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      'select id,nama'
      'from dokter')
    Left = 392
    Top = 24
  end
  object dsDokter: TDataSource
    DataSet = qDokter
    Left = 432
    Top = 72
  end
end
