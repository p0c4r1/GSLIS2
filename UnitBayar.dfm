object frmBayar: TfrmBayar
  Left = 0
  Top = 0
  ClientHeight = 465
  ClientWidth = 412
  Caption = 'Pembayaran'
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  OnKeyDown = UniFormKeyDown
  MonitoredKeys.Enabled = True
  MonitoredKeys.KeyHandleAll = False
  MonitoredKeys.Keys = <
    item
      KeyStart = 112
      KeyEnd = 123
      HandleBrowser = False
    end>
  Font.Height = -16
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 19
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 412
    Height = 128
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    object UniPanel1: TUniPanel
      Left = 0
      Top = 0
      Width = 412
      Height = 128
      Hint = ''
      Align = alClient
      TabOrder = 1
      Caption = ''
      Color = clNavy
      object LblStatusLunas: TUniLabel
        Left = 3
        Top = 11
        Width = 396
        Height = 38
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = 'Belum Lunas'
        ParentFont = False
        Font.Color = clWindow
        Font.Height = -32
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object lblNoLab: TUniLabel
        Left = 7
        Top = 55
        Width = 396
        Height = 38
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = 'No Lab :'
        ParentFont = False
        Font.Color = clWindow
        Font.Height = -32
        Font.Style = [fsBold]
        TabOrder = 2
      end
    end
  end
  object UniLabel1: TUniLabel
    Left = 16
    Top = 144
    Width = 35
    Height = 19
    Hint = ''
    Caption = 'Jenis'
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 16
    Top = 180
    Width = 50
    Height = 19
    Hint = ''
    Caption = 'Charge'
    TabOrder = 2
  end
  object UniLabel3: TUniLabel
    Left = 16
    Top = 208
    Width = 80
    Height = 19
    Hint = ''
    Caption = 'Total Bayar'
    TabOrder = 3
  end
  object UniLabel4: TUniLabel
    Left = 16
    Top = 236
    Width = 51
    Height = 19
    Hint = ''
    Caption = 'TOTAL'
    TabOrder = 4
  end
  object UniLabel5: TUniLabel
    Left = 16
    Top = 264
    Width = 87
    Height = 19
    Hint = ''
    Caption = 'Pembayaran'
    TabOrder = 5
  end
  object UniLabel6: TUniLabel
    Left = 16
    Top = 292
    Width = 28
    Height = 19
    Hint = ''
    Caption = 'Sisa'
    TabOrder = 6
  end
  object UniLabel7: TUniLabel
    Left = 16
    Top = 320
    Width = 57
    Height = 19
    Hint = ''
    Caption = 'Tagihan'
    TabOrder = 7
  end
  object edCharge: TUniEdit
    Left = 144
    Top = 177
    Width = 250
    Hint = ''
    Alignment = taRightJustify
    Text = '0'
    TabOrder = 8
    OnKeyDown = edChargeKeyDown
    OnKeyPress = edChargeKeyPress
  end
  object edTotalBayar: TUniEdit
    Left = 144
    Top = 205
    Width = 250
    Hint = ''
    Alignment = taRightJustify
    Text = '0'
    TabOrder = 9
    ReadOnly = True
    OnKeyDown = edTotalBayarKeyDown
  end
  object edTOtal: TUniEdit
    Left = 144
    Top = 233
    Width = 250
    Hint = ''
    Alignment = taRightJustify
    Text = '0'
    TabOrder = 10
    ReadOnly = True
    OnKeyDown = edTOtalKeyDown
  end
  object edPembayaran: TUniEdit
    Left = 144
    Top = 261
    Width = 250
    Hint = ''
    Alignment = taRightJustify
    Text = ''
    TabOrder = 11
    OnKeyDown = edPembayaranKeyDown
  end
  object edSisa: TUniEdit
    Left = 144
    Top = 289
    Width = 250
    Hint = ''
    Alignment = taRightJustify
    Text = ''
    TabOrder = 12
    ReadOnly = True
    OnKeyDown = edSisaKeyDown
  end
  object edTagihan: TUniEdit
    Left = 144
    Top = 317
    Width = 250
    Hint = ''
    Alignment = taRightJustify
    Text = ''
    TabOrder = 13
    ReadOnly = True
    OnKeyDown = edTagihanKeyDown
  end
  object edSave: TUniButton
    Left = 2
    Top = 362
    Width = 81
    Height = 47
    Hint = ''
    Caption = 'F1 Save'
    TabOrder = 14
    OnClick = edSaveClick
  end
  object edCancel: TUniButton
    Left = 84
    Top = 362
    Width = 80
    Height = 47
    Hint = ''
    Caption = 'F2 Cancel'
    TabOrder = 15
    OnClick = edCancelClick
  end
  object edPrint: TUniButton
    Left = 164
    Top = 362
    Width = 68
    Height = 47
    Hint = ''
    Enabled = False
    Caption = 'F3 Nota'
    TabOrder = 16
    OnClick = edPrintClick
  end
  object btnExit: TUniButton
    Left = 340
    Top = 362
    Width = 66
    Height = 47
    Hint = ''
    Caption = 'F4 Exit'
    TabOrder = 17
    OnClick = btnExitClick
  end
  object cbJenis: TUniDBLookupComboBox
    Left = 144
    Top = 144
    Width = 250
    Height = 27
    Hint = ''
    ListField = 'nama'
    ListSource = dsJenisPemb
    KeyField = 'nama'
    ListFieldIndex = 0
    DataField = 'id'
    TabOrder = 18
    Color = clWindow
    ForceSelection = True
    OnChange = cbJenisChange
    OnKeyDown = cbJenisKeyDown
    OnKeyUp = cbJenisKeyUp
  end
  object btnKuitansi: TUniButton
    Left = 233
    Top = 362
    Width = 106
    Height = 47
    Hint = ''
    Enabled = False
    Caption = 'F11 Kuitansi'
    TabOrder = 19
    OnClick = btnKuitansiClick
  end
  object btnBayarPenuh: TUniButton
    Left = 3
    Top = 410
    Width = 129
    Height = 47
    Hint = ''
    Caption = 'F5 Bayar Penuh'
    TabOrder = 20
    OnClick = btnBayarPenuhClick
  end
  object btnLabel: TUniButton
    Left = 138
    Top = 410
    Width = 89
    Height = 47
    Hint = ''
    Enabled = False
    Caption = 'F7 Label'
    TabOrder = 21
    OnClick = btnLabelClick
  end
  object qJenisPemb: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      'select id,kode,nama from tipe_pembayaran order by id')
    Left = 32
    Top = 72
  end
  object dsJenisPemb: TDataSource
    DataSet = qJenisPemb
    Left = 80
    Top = 64
  end
  object FDcmd: TFDCommand
    Connection = UniMainModule.FDConnection1
    Left = 256
    Top = 56
  end
  object FDQuery: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 304
    Top = 56
  end
  object frxRepNota: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43541.105095486100000000
    ReportOptions.LastChange = 43730.701949085640000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  //Engine.CurY := Engine.CurY + Engine.FreeSpace - ReportSummar' +
        'y1.Height - 1;                                                  ' +
        '                                                                ' +
        '                                                   '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 80
    Top = 160
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'dataNota'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 11
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 393.071120000000000000
        Width = 559.370440000000000000
        DataSet = frxDBDataset1
        DataSetName = 'dataNota'
        RowCount = 0
        object frxDBDataset1pemeriksaan: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 132.283550000000000000
          Width = 230.551330000000000000
          Height = 18.897640240000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataNota."pemeriksaan"]')
          ParentFont = False
        end
        object frxDBDataset1harga: TfrxMemoView
          Left = 559.370440000000000000
          Top = 7.559059999999988000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'harga'
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dataNota."harga"]')
          ParentFont = False
        end
        object frxDBDataset1harga1: TfrxMemoView
          Left = 308.031695000000000000
          Width = 120.944960000000000000
          Height = 18.897640240000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dataNota."harga_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 98.047310000000000000
          Top = 0.333333330000016300
          Width = 30.236240000000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 30.236240000000000000
        ParentFont = False
        Top = 340.157700000000000000
        Width = 559.370440000000000000
        object Memo18: TfrxMemoView
          Left = 102.047310000000000000
          Top = 7.559059999999988000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 132.283550000000000000
          Top = 7.559059999999988000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEMERIKSAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 336.378170000000000000
          Top = 7.559059999999988000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'HARGA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 134.842610000000000000
        Top = 434.645950000000000000
        Width = 559.370440000000000000
        object Line3: TfrxLineView
          Left = 68.031540000000000000
          Width = 427.086890000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 132.283550000000000000
          Top = 45.354359999999990000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 132.283550000000000000
          Top = 64.703463329999970000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'UANG MUKA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 132.283550000000000000
          Top = 84.380643330000050000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEMBAYARAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object dataNotajumlah: TfrxMemoView
          Left = 302.362400000000000000
          Top = 84.380643329999940000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dataNota."jumlah"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 302.362400000000000000
          Top = 60.923933330000010000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dataNota."uang_muka"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 132.283550000000000000
          Top = 26.456709999999990000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DISKON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 302.362400000000000000
          Top = 22.677180000000020000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dataNota."disc_amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 302.362400000000000000
          Top = 45.354359999999990000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[<dataNota."sub_total"> - <dataNota."disc_amount">]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 132.283550000000000000
          Top = 104.606370000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TAGIHAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 302.362400000000000000
          Top = 100.826840000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dataNota."tagihan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000022000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SUB TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000022000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dataNota."sub_total"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 105.826840000000000000
        Top = 687.874460000000000000
        Width = 559.370440000000000000
        object Memo24: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000010000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'hal. [PAGE#] dari [<TotalPages#>]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 260.787570000000000000
        Top = 18.897650000000000000
        Width = 559.370440000000000000
        object Memo2: TfrxMemoView
          Left = 26.456710000000000000
          Top = 102.047310000000000000
          Width = 498.897960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA PEMBAYARAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 102.047310000000000000
          Top = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nomor: TfrxMemoView
          Left = 211.653680000000000000
          Top = 128.504020000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataNota."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 196.535560000000000000
          Top = 128.504020000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Top = 147.181200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No. Lab')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 196.535560000000000000
          Top = 147.181200000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 102.047310000000000000
          Top = 166.191713340000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telepon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 196.535560000000000000
          Top = 166.191713340000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 102.047310000000000000
          Top = 185.868893330000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Dokter')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 196.535560000000000000
          Top = 185.868893330000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 211.653680000000000000
          Top = 147.181200000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataNota."nomor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 211.653680000000000000
          Top = 166.191713340000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataNota."hp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 211.653680000000000000
          Top = 185.868893330000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataNota."dokter"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 102.047310000000000000
          Top = 204.546073330000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Rekanan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 196.535560000000000000
          Top = 204.546073330000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 211.653680000000000000
          Top = 204.546073330000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataNota."perujuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 102.047310000000000000
          Top = 223.889920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 196.535560000000000000
          Top = 223.889920000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 211.653680000000000000
          Top = 223.889920000000000000
          Width = 721.890230000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataNota."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 282.735003330000000000
          Top = 147.181200000000000000
          Width = 242.619666670000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dataNota."tanggal"]  ([dataNota."user_name"])')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object BarCode1: TfrxBarCodeView
          Left = 411.968770000000000000
          Top = 52.913420000000000000
          Width = 79.000000000000000000
          Height = 71.811070000000000000
          BarType = bcCode128
          Expression = '<dataNota."nomor">'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo35: TfrxMemoView
          Left = 102.047310000000000000
          Top = 241.889920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Catatan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 196.535560000000000000
          Top = 241.889920000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 211.653680000000000000
          Top = 241.889920000000000000
          Width = 721.890230000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dataNota."catatan_pasien"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 631.181510000000000000
        Width = 559.370440000000000000
        object dataNotaflgLunas: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          DataField = 'flgLunas'
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dataNota."flgLunas"]')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    ExportNotPrintable = True
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    PrintOptimized = True
    Outline = False
    Background = True
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = True
    HideMenubar = True
    HideWindowUI = True
    FitWindow = True
    CenterWindow = True
    PrintScaling = True
    Left = 88
    Top = 216
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'dataNota'
    CloseDataSource = False
    FieldAliases.Strings = (
      'header_id=header_id'
      'level=level'
      'pemeriksaan=pemeriksaan'
      'harga=harga'
      'cetak_nota=cetak_nota'
      'ada_harga=ada_harga'
      'nomor=nomor'
      'nama=nama'
      'telepon=telepon'
      'dokter=dokter'
      'tipe_pasien=tipe_pasien'
      'alamat=alamat'
      'jumlah=jumlah'
      'id_pasien=id_pasien'
      'catatan=catatan'
      'asal=asal'
      'ansuransi=ansuransi'
      'user_name=user_name'
      'perujuk=perujuk'
      'tanggal=tanggal'
      'diskon=diskon'
      'disc_amount=disc_amount'
      'sub_total=sub_total'
      'tagihan=tagihan'
      'harga_total=harga_total'
      'disc_pct=disc_pct'
      'flgLunas=flgLunas'
      'hp=hp'
      'catatan_pasien=catatan_pasien'
      'uang_muka=uang_muka')
    DataSet = qPrint
    BCDToCurrency = False
    Left = 32
    Top = 144
  end
  object qPrint: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select od.header_id,t.level,t.nama as pemeriksaan,od.harga, od.c' +
        'etak_nota,t.ada_harga,'
      
        'oh.nomor,CONCAT(pr.nama,'#39' '#39',p.nama) nama,p.telepon,d.nama dokter' +
        ',tp.nama tipe_pasien,'
      
        'p.alamat, pb.jumlah,p.noreg id_pasien,oh.catatan,ap.nama asal, a' +
        'np.nama ansuransi, au.user_name,'
      'prj.nama perujuk'
      ',oh.tanggal,'
      'od.diskon,'
      'oh.disc_amount,'
      'oh.sub_total,'
      'oh.tagihan,'
      'od.harga - (od.harga * od.diskon/100) harga_total,'
      'oh.disc_pct,'
      'case oh.flgLunas when '#39'Y'#39' then '#39'LUNAS'#39
      'else '#39'BELUM LUNAS'#39
      'end flgLunas,'
      'p.hp,'
      'p.catatan catatan_pasien,'
      'IFNULL(sum(um.uang_muka),0) uang_muka'
      'from'
      'order_detail od'
      'LEFT JOIN order_header oh ON od.header_id = oh.id'
      'LEFT JOIN'
      '('
      'select id,sum(jumlah) uang_muka'
      'from'
      'pembayaran'
      'where'
      'order_header_id = :header_id'
      'group by id'
      ') um ON  um.id <> oh.pembayaran_id'
      'LEFT JOIN pasien p ON  oh.pasien_id = p.id'
      'LEFT JOIN prefix pr ON  p.prefix_id = pr.id'
      ''
      'LEFT JOIN dokter d ON  oh.dokter_id = d.id'
      'LEFT JOIN tipe_pasien tp ON  oh.tipe_pasien_id = tp.id'
      'LEFT JOIN pembayaran pb ON oh.pembayaran_id = pb.id'
      'LEFT JOIN test t ON od.test_id = t.id'
      'LEFT JOIN asal_pasien ap ON oh.asal_pasien_id = ap.id'
      
        'LEFT JOIN ansuransi_pasien anp ON oh.ansuransi_pasien_id = anp.i' +
        'd'
      'LEFT JOIN aguser au ON pb.user_id = au.id'
      'LEFT JOIN perujuk prj ON oh.perujuk_id = prj.id'
      'where'
      'od.header_id = :header_id'
      
        'group by od.header_id,t.level,t.nama,od.harga, od.cetak_nota,t.a' +
        'da_harga,'
      'oh.nomor,CONCAT(pr.nama,'#39' '#39',p.nama),p.telepon,d.nama,tp.nama ,'
      
        'p.alamat, pb.jumlah,p.noreg ,oh.catatan,ap.nama , anp.nama , au.' +
        'user_name,'
      'prj.nama,oh.tanggal,'
      'od.diskon,'
      'oh.disc_amount,'
      'oh.sub_total,'
      'oh.tagihan'
      'order by t.kode')
    Left = 40
    Top = 216
    ParamData = <
      item
        Name = 'HEADER_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '834478'
      end>
    object qPrintheader_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'header_id'
      Origin = 'header_id'
    end
    object qPrintlevel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'level'
      Origin = '`level`'
      ProviderFlags = []
      ReadOnly = True
    end
    object qPrintpemeriksaan: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pemeriksaan'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qPrintharga: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'harga'
      Origin = 'harga'
      Precision = 12
      Size = 2
    end
    object qPrintcetak_nota: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cetak_nota'
      Origin = 'cetak_nota'
      FixedChar = True
      Size = 1
    end
    object qPrintada_harga: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ada_harga'
      Origin = 'ada_harga'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qPrintnomor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomor'
      Origin = 'nomor'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qPrintnama: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nama'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 101
    end
    object qPrinttelepon: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telepon'
      Origin = 'telepon'
      ProviderFlags = []
      ReadOnly = True
    end
    object qPrintdokter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dokter'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qPrinttipe_pasien: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipe_pasien'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qPrintalamat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'alamat'
      Origin = 'alamat'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qPrintjumlah: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'jumlah'
      Origin = 'jumlah'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object qPrintid_pasien: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'id_pasien'
      Origin = 'noreg'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qPrintcatatan: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'catatan'
      Origin = 'catatan'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qPrintasal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'asal'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qPrintansuransi: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ansuransi'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qPrintuser_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_name'
      Origin = 'user_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qPrintperujuk: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'perujuk'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qPrinttanggal: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'tanggal'
      Origin = 'tanggal'
      ProviderFlags = []
      ReadOnly = True
    end
    object qPrintdiskon: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'diskon'
      Origin = 'diskon'
      Precision = 10
      Size = 2
    end
    object qPrintdisc_amount: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'disc_amount'
      Origin = 'disc_amount'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object qPrintsub_total: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sub_total'
      Origin = 'sub_total'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object qPrinttagihan: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tagihan'
      Origin = 'tagihan'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object qPrintharga_total: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'harga_total'
      Origin = 'harga_total'
      ProviderFlags = []
      ReadOnly = True
      Precision = 27
    end
    object qPrintdisc_pct: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'disc_pct'
      Origin = 'disc_pct'
      ProviderFlags = []
      ReadOnly = True
      Precision = 5
      Size = 2
    end
    object qPrintflgLunas: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'flgLunas'
      Origin = 'flgLunas'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object qPrinthp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hp'
      Origin = 'hp'
      ProviderFlags = []
      ReadOnly = True
    end
    object qPrintcatatan_pasien: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'catatan_pasien'
      Origin = 'catatan'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object qPrintuang_muka: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'uang_muka'
      Origin = 'uang_muka'
      ProviderFlags = []
      ReadOnly = True
      Precision = 56
      Size = 2
    end
  end
  object DSPrint: TDataSource
    DataSet = qPrint
    Left = 8
    Top = 200
  end
  object qCharge: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 144
    Top = 88
  end
  object frxRepKuitansi: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43541.105095486100000000
    ReportOptions.LastChange = 43647.509804340300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  //Engine.CurY := Engine.CurY + Engine.FreeSpace - ReportSummar' +
        'y1.Height - 1;                                                  ' +
        '                                                                ' +
        '                                                   '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxRepKuitansiGetValue
    Left = 80
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'terbilang'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 11
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 540.472790000000000000
        Width = 559.370440000000000000
        object Memo24: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'hal. [PAGE#] dari [<TotalPages#>]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 272.126160000000000000
        Top = 18.897650000000000000
        Width = 559.370440000000000000
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 109.606370000000000000
          Width = 498.897960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'KUITANSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 102.047310000000000000
          Top = 136.063080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nomor: TfrxMemoView
          Left = 211.653680000000000000
          Top = 136.063080000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 196.535560000000000000
          Top = 136.063080000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Top = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No. Lab')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 196.535560000000000000
          Top = 158.740260000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 102.047310000000000000
          Top = 181.417440000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telepon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 196.535560000000000000
          Top = 181.417440000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 102.047310000000000000
          Top = 204.094620000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Dokter')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 196.535560000000000000
          Top = 204.094620000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 211.653680000000000000
          Top = 158.740260000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."nomor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 211.653680000000000000
          Top = 181.417440000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."hp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 211.653680000000000000
          Top = 204.094620000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."dokter"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 102.047310000000000000
          Top = 226.771800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Rekanan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 196.535560000000000000
          Top = 226.771800000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 211.653680000000000000
          Top = 226.771800000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."tipe_pasien"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 102.047310000000000000
          Top = 249.448980000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 196.535560000000000000
          Top = 249.448980000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 211.653680000000000000
          Top = 249.448980000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 332.598640000000000000
          Top = 158.740260000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."tanggal"] ([frxDBDataset2."user"])')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object BarCode1: TfrxBarCodeView
          Left = 415.748300000000000000
          Top = 60.472480000000000000
          Width = 79.000000000000000000
          Height = 71.811070000000000000
          BarType = bcCode128
          Expression = '<frxDBDataset2."nomor">'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 351.496290000000000000
        Width = 559.370440000000000000
        object Memo25: TfrxMemoView
          Left = 139.842610000000000000
          Top = 34.015769999999970000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PEMBAYARAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 139.842610000000000000
          Top = 56.692949999999990000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TAGIHAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 340.157700000000000000
          Top = 34.015769999999970000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2tagihan: TfrxMemoView
          Left = 343.937230000000000000
          Top = 56.692949999999990000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."tagihan"]')
          ParentFont = False
        end
      end
    end
  end
  object qKuintansi: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select pb.nomor no_kuitansi,oh.nomor,p.noreg, p.nama, pb.jumlah,' +
        'tb.nama tipe_bayar, u.user_name user, pb.tanggal,'
      ' tp.nama tipe_pasien, d.nama dokter,p.alamat,p.telepon,p.hp,'
      
        'pb.tagihan,CONCAT(TIMESTAMPDIFF( YEAR, p.tanggal_lahir, now()),'#39 +
        ' th'#39') usia,p.tanggal_lahir,'
      'pf.nama prefix,jk.nama jenis_kelamin'
      'from'
      'order_header oh,'
      'pembayaran pb,'
      'pasien p,'
      'tipe_pembayaran tb,'
      'aguser u,'
      'tipe_pasien tp,'
      'dokter d,'
      'prefix pf,'
      'jenis_kelamin jk'
      'where'
      'oh.pembayaran_id = pb.id'
      'and oh.pasien_id = p.id'
      'and p.prefix_id = pf.id'
      'and p.jenis_kelamin_id = jk.id'
      'and pb.tipe_bayar_id = tb.id'
      'and pb.user_id = u.id'
      'and oh.tipe_pasien_id = tp.id'
      'and oh.dokter_id = d.id'
      'and oh.id = :header_id')
    Left = 48
    Top = 312
    ParamData = <
      item
        Name = 'HEADER_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '817008'
      end>
    object qKuintansinomor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomor'
      Origin = 'nomor'
      Size = 30
    end
    object qKuintansinoreg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'noreg'
      Origin = 'noreg'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qKuintansinama: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nama'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qKuintansijumlah: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'jumlah'
      Origin = 'jumlah'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object qKuintansitipe_bayar: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipe_bayar'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qKuintansiuser: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qKuintansitanggal: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'tanggal'
      Origin = 'tanggal'
      ProviderFlags = []
      ReadOnly = True
    end
    object qKuintansino_kuitansi: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'no_kuitansi'
      Origin = 'no_kuitansi'
      Size = 30
    end
    object qKuintansitipe_pasien: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipe_pasien'
      Origin = 'tipe_pasien'
      Size = 50
    end
    object qKuintansidokter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dokter'
      Origin = 'dokter'
      Size = 50
    end
    object qKuintansialamat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'alamat'
      Origin = 'alamat'
      Size = 100
    end
    object qKuintansitelepon: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telepon'
      Origin = 'telepon'
    end
    object qKuintansitagihan: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tagihan'
      Origin = 'tagihan'
      Precision = 12
      Size = 2
    end
    object qKuintansiusia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usia'
      Origin = 'usia'
      Size = 24
    end
    object qKuintansiprefix: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prefix'
      Origin = 'prefix'
      Size = 50
    end
    object qKuintansihp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hp'
      Origin = 'hp'
    end
    object qKuintansitanggal_lahir: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'tanggal_lahir'
      Origin = 'tanggal_lahir'
    end
    object qKuintansijenis_kelamin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'jenis_kelamin'
      Origin = 'jenis_kelamin'
      Size = 12
    end
  end
  object DataSource1: TDataSource
    DataSet = qKuintansi
    Left = 96
    Top = 328
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nomor=nomor'
      'noreg=noreg'
      'nama=nama'
      'jumlah=jumlah'
      'tipe_bayar=tipe_bayar'
      'user=user'
      'tanggal=tanggal'
      'no_kuitansi=no_kuitansi'
      'tipe_pasien=tipe_pasien'
      'dokter=dokter'
      'alamat=alamat'
      'telepon=telepon'
      'tagihan=tagihan'
      'usia=usia'
      'prefix=prefix'
      'hp=hp'
      'tanggal_lahir=tanggal_lahir'
      'jenis_kelamin=jenis_kelamin')
    DataSet = qKuintansi
    BCDToCurrency = False
    Left = 152
    Top = 312
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 200
    Top = 304
  end
  object qTmp: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      'SELECT * FROM order_header WHERE id = :id')
    Left = 280
    Top = 288
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
  end
  object frxLabel: TfrxReport
    Version = '5.2.3'
    DataSet = frxDBDataset2
    DataSetName = 'frxDBDataset2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43600.036735208300000000
    ReportOptions.LastChange = 43642.573722013900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 272
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 60.000000000000000000
      PaperHeight = 40.000000000000000000
      PaperSize = 256
      object Memo1: TfrxMemoView
        Width = 234.330860000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBlack
        Memo.UTF8W = (
          'LAB NO. [frxDBDataset2."nomor"]')
        ParentFont = False
      end
      object frxDBDataset2nama: TfrxMemoView
        Top = 22.677180000000000000
        Width = 226.771653540000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."prefix"] [frxDBDataset2."nama"]')
        ParentFont = False
      end
      object frxDBDataset2alamat: TfrxMemoView
        Top = 52.913420000000000000
        Width = 642.519953540000000000
        Height = 18.897650000000000000
        DataField = 'alamat'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."alamat"]')
        ParentFont = False
      end
      object frxDBDataset2tanggal: TfrxMemoView
        Top = 116.606370000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        DataField = 'tanggal'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset2."tanggal"]')
        ParentFont = False
      end
      object frxDBDataset2telepon: TfrxMemoView
        Left = 56.692950000000010000
        Top = 116.606370000000000000
        Width = 170.078703540000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset2."hp"]')
        ParentFont = False
      end
      object frxDBDataset2dokter: TfrxMemoView
        Top = 132.283550000000000000
        Width = 226.771653543307000000
        Height = 18.897650000000000000
        DataField = 'dokter'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset2."dokter"]')
        ParentFont = False
      end
      object BarCode1: TfrxBarCodeView
        Left = 22.677180000000000000
        Top = 72.031540000000000000
        Width = 142.200000000000000000
        Height = 45.354360000000000000
        BarType = bcCode128
        Expression = '<frxDBDataset2."nomor">'
        Rotation = 0
        ShowText = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.800000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object frxDBDataset2usia: TfrxMemoView
        Left = 34.015770000000010000
        Top = 22.677180000000000000
        Width = 192.756030000000000000
        Height = 18.897650000000000000
        DataField = 'usia'
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset2."usia"]')
        ParentFont = False
      end
      object frxDBDataset2tanggal_lahir: TfrxMemoView
        Top = 37.795300000000000000
        Width = 226.771800000000000000
        Height = 18.897650000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Memo.UTF8W = (
          '[frxDBDataset2."tanggal_lahir"]')
        Formats = <
          item
          end
          item
          end>
      end
    end
  end
  object cmdCallForm: TFDCommand
    Connection = UniMainModule.FDConnection1
    Left = 248
    Top = 416
  end
  object cmdLogging: TFDCommand
    Connection = UniMainModule.FDConnection1
    CommandText.Strings = (
      
        'INSERT INTO order_status_time (tanggal,order_header_id,order_sta' +
        'tus_id,user_id,keterangan)'
      
        'VALUES (NOW(),:order_header_id,:order_status_id,:user_id,:ketera' +
        'ngan)')
    ParamData = <
      item
        Name = 'ORDER_HEADER_ID'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ORDER_STATUS_ID'
        ParamType = ptInput
      end
      item
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        Name = 'KETERANGAN'
        ParamType = ptInput
      end>
    Left = 344
    Top = 416
  end
  object QSave: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 8
    Top = 256
  end
  object QSave2: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 48
    Top = 264
  end
  object QSave3: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 96
    Top = 304
  end
  object Qzpl: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 296
    Top = 416
  end
end
