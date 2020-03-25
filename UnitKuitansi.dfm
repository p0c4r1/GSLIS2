object frmKuitansi: TfrmKuitansi
  Left = 0
  Top = 0
  ClientHeight = 326
  ClientWidth = 756
  Caption = 'Kuintansi'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -16
  PixelsPerInch = 96
  TextHeight = 19
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 216
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 0
      Width = 756
      Height = 216
      Hint = ''
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'tgl_bayar'
          Title.Caption = 'Tgl Bayar'
          Width = 100
        end
        item
          FieldName = 'tgl_periksa'
          Title.Caption = 'Tgl Periksa'
          Width = 99
        end
        item
          FieldName = 'nomor'
          Title.Caption = 'Nomor'
          Width = 108
        end
        item
          FieldName = 'kuitansi'
          Title.Caption = 'Kuintansi'
          Width = 105
        end
        item
          FieldName = 'nama'
          Title.Caption = 'Nama'
          Width = 213
        end
        item
          FieldName = 'jumlah'
          Title.Caption = 'Jumlah'
          Width = 98
        end>
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 216
    Width = 756
    Height = 110
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 1
    object UniButton1: TUniButton
      Left = 16
      Top = 70
      Width = 75
      Height = 37
      Hint = ''
      Caption = 'Print'
      ParentFont = False
      Font.Height = -16
      TabOrder = 1
      OnClick = UniButton1Click
    end
    object UniLabel1: TUniLabel
      Left = 16
      Top = 6
      Width = 41
      Height = 19
      Hint = ''
      Caption = 'Nama'
      ParentFont = False
      Font.Height = -16
      TabOrder = 2
    end
    object edNama: TUniEdit
      Left = 88
      Top = 6
      Width = 305
      Height = 27
      Hint = ''
      Text = ''
      ParentFont = False
      Font.Height = -16
      TabOrder = 3
    end
    object cbCopy: TUniCheckBox
      Left = 16
      Top = 39
      Width = 153
      Height = 17
      Hint = ''
      Checked = True
      Caption = 'Copy kuitansi'
      ParentFont = False
      Font.Height = -16
      TabOrder = 4
    end
    object UniButton2: TUniButton
      Left = 97
      Top = 70
      Width = 75
      Height = 37
      Hint = ''
      Caption = 'Batal'
      ParentFont = False
      Font.Height = -16
      TabOrder = 5
      OnClick = UniButton2Click
    end
  end
  object qKuintansiRows: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select pb.id id,date_format(pb.tanggal,'#39'%d-%m-%Y'#39') as tgl_bayar,' +
        ' date_format(h.tanggal,'#39'%d-%m-%Y'#39') as tgl_periksa, h.nomor,'
      
        'jumlah as jumlah, concat( pf.nama, '#39' '#39' , p.nama ) as nama,pb.nom' +
        'or kuitansi,pb.tagihan,'
      'p.catatan catatan_pasien'
      'From order_header h'
      'join pembayaran pb on h.id = pb.order_header_id'
      'join pasien p on h.pasien_id = p.id'
      'join prefix pf on p.prefix_id = pf.id'
      'Where h.id = :header_id and pb.jumlah > 0 order by tgl_bayar')
    Left = 464
    Top = 232
    ParamData = <
      item
        Name = 'HEADER_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
  end
  object DataSource1: TDataSource
    DataSet = qKuintansiRows
    Left = 520
    Top = 232
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
    ReportOptions.LastChange = 43684.899225717600000000
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
    Left = 456
    Top = 160
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
        Top = 555.590910000000000000
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
        Height = 287.244280000000000000
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
          DataSet = frmPendaftaran.frxDBDataset1
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
          DataSet = frmPendaftaran.frxDBDataset1
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
          DataSet = frmPendaftaran.frxDBDataset1
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
          DataSet = frmPendaftaran.frxDBDataset1
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
          DataSet = frmPendaftaran.frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."perujuk"]')
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
          DataSet = frmPendaftaran.frxDBDataset1
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
          DataSet = frmPendaftaran.frxDBDataset1
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
        object Memo18: TfrxMemoView
          Left = 102.047310000000000000
          Top = 268.346630000000000000
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
        object Memo19: TfrxMemoView
          Left = 196.535560000000000000
          Top = 268.346630000000000000
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
        object Memo20: TfrxMemoView
          Left = 211.653680000000000000
          Top = 268.346630000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          DataSet = frmPendaftaran.frxDBDataset1
          DataSetName = 'dataNota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."catatan_pasien"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 366.614410000000000000
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
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 464
    Top = 96
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 656
    Top = 178
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
      'hp=hp'
      'perujuk=perujuk'
      'catatan_pasien=catatan_pasien')
    DataSet = qKuintansi
    BCDToCurrency = False
    Left = 536
    Top = 178
  end
  object qKuintansi: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select pb.nomor no_kuitansi,oh.nomor,p.noreg, p.nama, pb.jumlah,' +
        'tb.nama tipe_bayar, u.user_name user, pb.tanggal, tp.nama tipe_p' +
        'asien, d.nama dokter,p.alamat,p.telepon,'
      'pb.tagihan,p.hp,'
      'prj.nama perujuk,'
      'p.catatan catatan_pasien'
      'from'
      'order_header oh,'
      'pembayaran pb,'
      'pasien p,'
      'tipe_pembayaran tb,'
      'aguser u,'
      'tipe_pasien tp,'
      'dokter d,'
      'perujuk prj'
      'where'
      'oh.id = pb.order_header_id'
      'and oh.pasien_id = p.id'
      'and pb.tipe_bayar_id = tb.id'
      'and pb.user_id = u.id'
      'and oh.tipe_pasien_id = tp.id'
      'and oh.dokter_id = d.id'
      'and pb.id = :id'
      'and oh.perujuk_id = prj.id')
    Left = 592
    Top = 226
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = '1011564'
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
    object qKuintansihp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hp'
      Origin = 'hp'
    end
    object qKuintansiperujuk: TStringField
      FieldName = 'perujuk'
      Origin = 'perujuk'
      Required = True
      Size = 100
    end
    object qKuintansicatatan_pasien: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'catatan_pasien'
      Origin = 'catatan_pasien'
      BlobType = ftMemo
    end
  end
end
