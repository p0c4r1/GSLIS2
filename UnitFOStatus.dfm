object frmFOStatus: TfrmFOStatus
  Left = 0
  Top = 0
  ClientHeight = 642
  ClientWidth = 946
  Caption = 'Status hasil dan pembayaran'
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnKeyDown = UniFormKeyDown
  MonitoredKeys.Keys = <>
  Font.Height = -16
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 19
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 89
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 24
      Top = 16
      Width = 57
      Height = 19
      Hint = ''
      Caption = 'Tanggal'
      TabOrder = 1
    end
    object edTgl: TUniEdit
      Left = 87
      Top = 16
      Width = 122
      Hint = ''
      Text = ''
      TabOrder = 2
      OnKeyDown = edTglKeyDown
    end
    object edNomor: TUniEdit
      Left = 392
      Top = 16
      Width = 177
      Hint = ''
      Text = ''
      TabOrder = 3
      OnKeyDown = edNomorKeyDown
    end
    object edNama: TUniEdit
      Left = 392
      Top = 44
      Width = 177
      Hint = ''
      Text = ''
      TabOrder = 4
      OnKeyDown = edNamaKeyDown
    end
    object btnSearch: TUniButton
      Left = 87
      Top = 44
      Width = 122
      Height = 37
      Hint = ''
      Caption = 'F1 Search'
      TabOrder = 5
      OnClick = btnSearchClick
    end
    object UniLabel2: TUniLabel
      Left = 312
      Top = 16
      Width = 45
      Height = 19
      Hint = ''
      Caption = 'NoLab'
      TabOrder = 6
    end
    object UniLabel3: TUniLabel
      Left = 312
      Top = 47
      Width = 41
      Height = 19
      Hint = ''
      Caption = 'Nama'
      TabOrder = 7
    end
    object lblStatus: TUniLabel
      Left = 592
      Top = 16
      Width = 297
      Height = 50
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = ''
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -21
      Font.Style = [fsBold]
      TabOrder = 8
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 89
    Width = 946
    Height = 471
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 1
  end
  object UniContainerPanel3: TUniContainerPanel
    Left = 0
    Top = 560
    Width = 946
    Height = 82
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 2
    object edDtl: TUniButton
      Left = 6
      Top = 6
      Width = 86
      Height = 33
      Hint = ''
      Caption = 'Detail (F2)'
      TabOrder = 1
      OnClick = edDtlClick
    end
    object edBayar: TUniButton
      Left = 98
      Top = 6
      Width = 86
      Height = 33
      Hint = ''
      Visible = False
      Caption = 'Bayar (F3)'
      TabOrder = 2
      OnClick = edBayarClick
    end
    object btnAmbilHasil: TUniButton
      Left = 190
      Top = 6
      Width = 134
      Height = 33
      Hint = ''
      Caption = 'Ambil Hasil (F4)'
      TabOrder = 3
      OnClick = btnAmbilHasilClick
    end
    object edBatal: TUniButton
      Left = 330
      Top = 6
      Width = 82
      Height = 33
      Hint = ''
      Visible = False
      Caption = 'Batal (F5)'
      TabOrder = 4
    end
    object edExit: TUniButton
      Left = 418
      Top = 6
      Width = 74
      Height = 33
      Hint = ''
      Caption = 'Exit (F6)'
      TabOrder = 5
      OnClick = edExitClick
    end
    object edLbl: TUniButton
      Left = 498
      Top = 6
      Width = 82
      Height = 33
      Hint = ''
      Caption = 'Label (F7)'
      TabOrder = 6
      OnClick = edLblClick
    end
    object edPrint: TUniButton
      Left = 584
      Top = 6
      Width = 94
      Height = 33
      Hint = ''
      Caption = 'Print (F10)'
      TabOrder = 7
      OnClick = edPrintClick
    end
    object edKuitansi: TUniButton
      Left = 682
      Top = 6
      Width = 114
      Height = 33
      Hint = ''
      Caption = 'Kuitansi (F11)'
      TabOrder = 8
      OnClick = edKuitansiClick
    end
    object btnCopyNota: TUniButton
      Left = 802
      Top = 6
      Width = 143
      Height = 33
      Hint = ''
      Caption = 'Copy Nota (F12)'
      TabOrder = 9
      OnClick = btnCopyNotaClick
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 45
      Width = 125
      Height = 33
      Hint = ''
      Caption = 'Cetak DAHL'
      TabOrder = 10
      OnClick = UniButton1Click
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 89
    Width = 946
    Height = 471
    Hint = ''
    DataSource = DSStatusHasil
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
    WebOptions.Paged = False
    WebOptions.FetchAll = True
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 3
    OnSelectionChange = UniDBGrid1SelectionChange
    OnCellClick = UniDBGrid1CellClick
    Columns = <
      item
        FieldName = 'nomor'
        Title.Caption = 'Nomor'
        Width = 99
      end
      item
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Width = 196
        ReadOnly = True
      end
      item
        FieldName = 'telepon'
        Title.Caption = 'Telepon'
        Width = 123
        ReadOnly = True
      end
      item
        FieldName = 'alamat'
        Title.Caption = 'Alamat'
        Width = 199
        ReadOnly = True
      end
      item
        FieldName = 'dokter'
        Title.Caption = 'Dokter'
        Width = 174
        ReadOnly = True
      end
      item
        FieldName = 'Lunas'
        Title.Caption = 'Lunas'
        Width = 58
      end
      item
        FieldName = 'ambil_hasil'
        Title.Caption = 'Ambil hasil'
        Width = 67
      end>
  end
  object qStatus: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select order_header.id,order_header.nomor,pasien.nama,pasien.tel' +
        'epon,pasien.alamat,dokter.nama dokter,order_header.flgLunas Luna' +
        's,flg_ambil_hasil ambil_hasil'
      'from'
      'order_header'
      'left join pasien on order_header.pasien_id = pasien.id'
      'left join dokter on order_header.dokter_id = dokter.id'
      'where'
      'order_header.tanggal like '#39'2019-06-26%'#39
      'order by order_header.nomor')
    Left = 656
    Top = 24
  end
  object DSStatusHasil: TDataSource
    DataSet = qStatus
    Left = 696
    Top = 24
  end
  object QPasien: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select p.id,p.jenis_kelamin_id,CONCAT(pf.nama,'#39' '#39', p.nama) nama,' +
        'p.wilayah,CONCAT(p.telepon,'#39'/'#39',p.hp) tlp,p.alamat,'
      
        'CONCAT(TIMESTAMPDIFF( YEAR, p.tanggal_lahir, now() ),'#39' th '#39',TIME' +
        'STAMPDIFF( MONTH, p.tanggal_lahir, now() ) % 12,'#39' bl '#39',FLOOR( TI' +
        'MESTAMPDIFF( DAY, p.tanggal_lahir, now() ) % 30.4375 )) as umur'
      
        ' from pasien p, prefix pf where p.prefix_id = pf.id and p.nama l' +
        'ike '#39'%tes%'#39' order by p.nama')
    Left = 792
    Top = 8
  end
  object DSPasien: TDataSource
    DataSet = QPasien
    Left = 824
    Top = 8
  end
  object qDetail: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select order_detail.id,order_detail.test_kode,order_detail.nama_' +
        'test,order_detail.harga,'
      'case when urgency.id = 1 then '#39'N'#39' else '#39'Y'#39' end cito'
      'from'
      'order_detail,'
      'urgency'
      'where'
      'order_detail.urgency_id = urgency.id and'
      'header_id = :header_id')
    Left = 864
    Top = 8
    ParamData = <
      item
        Name = 'HEADER_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '14'
      end>
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
      'hp=hp'
      'tanggal_lahir=tanggal_lahir'
      'prefix=prefix'
      'jenis_kelamin=jenis_kelamin')
    DataSet = qKuintansi
    BCDToCurrency = False
    Left = 152
    Top = 312
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
    ReportOptions.LastChange = 43642.573722013890000000
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
        Left = 56.692950000000000000
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
        Left = 34.015770000000000000
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
  object qKuintansi: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select pb.nomor no_kuitansi,oh.nomor,p.noreg, p.nama, pb.jumlah,' +
        'tb.nama tipe_bayar, u.nama user, pb.tanggal, tp.nama tipe_pasien' +
        ', d.nama dokter,p.alamat,p.telepon,p.hp,'
      
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
    object qKuintansiprefix: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prefix'
      Origin = 'prefix'
      Size = 50
    end
    object qKuintansijenis_kelamin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'jenis_kelamin'
      Origin = 'jenis_kelamin'
      Size = 12
    end
  end
  object cmdAmbilHasil: TFDCommand
    Connection = UniMainModule.FDConnection1
    CommandText.Strings = (
      
        'update order_header set flg_ambil_hasil = '#39'Y'#39',user_ambil_hasil =' +
        ' :user_ambil_hasil where id = :id')
    ParamData = <
      item
        Name = 'USER_AMBIL_HASIL'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 600
    Top = 24
  end
  object QNotaCopy: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select od.header_id,t.level,t.nama as pemeriksaan,od.harga, od.c' +
        'etak_nota,t.ada_harga,'
      
        'oh.nomor,CONCAT(pr.nama,'#39' '#39',p.nama) nama,p.telepon,d.nama dokter' +
        ',tp.nama tipe_pasien,'
      
        'p.alamat, pb.jumlah,p.noreg id_pasien,oh.catatan,ap.nama asal, a' +
        'np.nama ansuransi, au.user_name'
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
      'prj.nama perujuk,'
      'p.catatan catatan_pasien'
      'from'
      'order_detail od,'
      'order_header oh,'
      'prefix pr,'
      'pasien p,'
      'dokter d,'
      'tipe_pasien tp,'
      'pembayaran pb,'
      'test t,'
      'asal_pasien ap,'
      'ansuransi_pasien anp,'
      'aguser au,'
      'perujuk prj'
      'where'
      'od.test_id = t.id'
      'and od.header_id = oh.id'
      'and oh.pasien_id = p.id'
      'and p.prefix_id = pr.id'
      'and oh.dokter_id = d.id'
      'and oh.tipe_pasien_id = tp.id'
      'and oh.pembayaran_id = pb.id'
      'and oh.asal_pasien_id = ap.id'
      'and oh.ansuransi_pasien_id = anp.id'
      'and od.header_id = :header_id'
      'and pb.user_id = au.id'
      'and oh.perujuk_id = prj.id'
      'order by t.kode')
    Left = 560
    Top = 440
    ParamData = <
      item
        Name = 'HEADER_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '817016'
      end>
    object QNotaCopyheader_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'header_id'
      Origin = 'header_id'
    end
    object QNotaCopylevel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'level'
      Origin = '`level`'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNotaCopypemeriksaan: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pemeriksaan'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QNotaCopyharga: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'harga'
      Origin = 'harga'
      Precision = 12
      Size = 2
    end
    object QNotaCopycetak_nota: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cetak_nota'
      Origin = 'cetak_nota'
      FixedChar = True
      Size = 1
    end
    object QNotaCopyada_harga: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ada_harga'
      Origin = 'ada_harga'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QNotaCopynomor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomor'
      Origin = 'nomor'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QNotaCopynama: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nama'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 101
    end
    object QNotaCopytelepon: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telepon'
      Origin = 'telepon'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNotaCopydokter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dokter'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QNotaCopytipe_pasien: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipe_pasien'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QNotaCopyalamat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'alamat'
      Origin = 'alamat'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QNotaCopyjumlah: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'jumlah'
      Origin = 'jumlah'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object QNotaCopyid_pasien: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'id_pasien'
      Origin = 'noreg'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QNotaCopycatatan: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'catatan'
      Origin = 'catatan'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QNotaCopyasal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'asal'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QNotaCopyansuransi: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ansuransi'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QNotaCopyuser_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_name'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QNotaCopytanggal: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'tanggal'
      Origin = 'tanggal'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNotaCopydiskon: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'diskon'
      Origin = 'diskon'
      Precision = 10
      Size = 2
    end
    object QNotaCopyharga_total: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'harga_total'
      Origin = 'harga_total'
      ProviderFlags = []
      ReadOnly = True
      Precision = 27
    end
    object QNotaCopydisc_pct: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'disc_pct'
      Origin = 'disc_pct'
      ProviderFlags = []
      ReadOnly = True
      Precision = 4
      Size = 2
    end
    object QNotaCopyflgLunas: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'flgLunas'
      Origin = 'flgLunas'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object QNotaCopyhp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hp'
      Origin = 'hp'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNotaCopydisc_amount: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'disc_amount'
      Origin = 'disc_amount'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object QNotaCopysub_total: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'sub_total'
      Origin = 'sub_total'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object QNotaCopytagihan: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tagihan'
      Origin = 'tagihan'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object QNotaCopyperujuk: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'perujuk'
      Origin = 'nama'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QNotaCopycatatan_pasien: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'catatan_pasien'
      Origin = 'catatan'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
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
    ReportOptions.LastChange = 43723.971314814810000000
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
    Left = 680
    Top = 424
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
        Top = 396.850650000000000000
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
          Top = 7.559059999999990000
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
          Top = 0.333333330000016000
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
        Top = 343.937230000000000000
        Width = 559.370440000000000000
        object Memo18: TfrxMemoView
          Left = 102.047310000000000000
          Top = 7.559059999999990000
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
          Top = 7.559059999999990000
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
          Top = 7.559059999999990000
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
        Height = 120.504020000000000000
        Top = 438.425480000000000000
        Width = 559.370440000000000000
        object Line3: TfrxLineView
          Left = 68.031540000000000000
          Width = 427.086890000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 132.283550000000000000
          Top = 42.354360000000000000
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
          Top = 61.703463330000000000
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
          Top = 81.380643330000000000
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
          Top = 81.380643330000000000
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
          Top = 57.923933330000000000
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
            '0.00')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 132.283550000000000000
          Top = 23.456710000000000000
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
          Top = 21.897650000000000000
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
          Top = 42.354360000000000000
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
            '[<dataNota."sub_total">-<dataNota."disc_amount">]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 132.283550000000000000
          Top = 101.606370000000000000
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
          Top = 97.826840000000000000
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
        object Memo34: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000000000
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
        object Memo35: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
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
        Height = 113.385900000000000000
        Top = 676.535870000000000000
        Width = 559.370440000000000000
        object Memo24: TfrxMemoView
          Left = 3.779530000000000000
          Top = 90.708720000000000000
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
        Height = 264.567100000000000000
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
        object Memo33: TfrxMemoView
          Left = 77.480365000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COPY')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 102.047310000000000000
          Top = 245.669450000000000000
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
        object Memo37: TfrxMemoView
          Left = 196.535560000000000000
          Top = 245.669450000000000000
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
        object Memo38: TfrxMemoView
          Left = 211.653680000000000000
          Top = 245.669450000000000000
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
        Top = 619.842920000000000000
        Width = 559.370440000000000000
        object dataNotaflgLunas: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000020000
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
      'tanggal=tanggal'
      'diskon=diskon'
      'harga_total=harga_total'
      'disc_pct=disc_pct'
      'flgLunas=flgLunas'
      'hp=hp'
      'disc_amount=disc_amount'
      'sub_total=sub_total'
      'tagihan=tagihan'
      'perujuk=perujuk'
      'catatan_pasien=catatan_pasien')
    DataSet = QNotaCopy
    BCDToCurrency = False
    Left = 616
    Top = 424
  end
  object frxPDFExport2: TfrxPDFExport
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
    Left = 680
    Top = 480
  end
  object dataDAHL: TfrxDBDataset
    UserName = 'dataDAHL'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'nomor=nomor'
      'nama=nama'
      'telepon=telepon'
      'alamat=alamat'
      'dokter=dokter'
      'Lunas=Lunas'
      'ambil_hasil=ambil_hasil')
    DataSet = qStatus
    BCDToCurrency = False
    Left = 752
    Top = 424
  end
  object repDAHL: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43541.105095486100000000
    ReportOptions.LastChange = 43642.657600104200000000
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
    Left = 816
    Top = 424
    Datasets = <
      item
        DataSet = dataDAHL
        DataSetName = 'dataDAHL'
      end>
    Variables = <
      item
        Name = ' var'
        Value = Null
      end
      item
        Name = 'v_tanggal'
        Value = ''
      end
      item
        Name = ' New Category1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574817800000000000
        Top = 211.653680000000000000
        Width = 793.701300000000000000
        DataSet = dataDAHL
        DataSetName = 'dataDAHL'
        RowCount = 0
        object dataDAHLnomor: TfrxMemoView
          Left = 15.118120000000000000
          Width = 83.149660000000000000
          Height = 41.574830000000000000
          DataField = 'nomor'
          DataSet = dataDAHL
          DataSetName = 'dataDAHL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[dataDAHL."nomor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Width = 158.740260000000000000
          Height = 41.574830000000000000
          DataField = 'nama'
          DataSet = dataDAHL
          DataSetName = 'dataDAHL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dataDAHL."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 257.008040000000000000
          Width = 181.417440000000000000
          Height = 41.574830000000000000
          DataField = 'dokter'
          DataSet = dataDAHL
          DataSetName = 'dataDAHL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dataDAHL."dokter"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 438.425480000000000000
          Width = 113.385900000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Width = 113.385900000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 665.197280000000000000
          Width = 113.385900000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
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
        Height = 26.456710000000000000
        ParentFont = False
        Top = 162.519790000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Lab')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 257.008040000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dokter')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Diterima')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779530000000000000
          Width = 113.385826770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Diserahkan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 665.197280000000000000
          Top = 3.779530000000000000
          Width = 113.385826770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 313.700990000000000000
        Width = 793.701300000000000000
        object Memo24: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 82.267780000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 141.732375000000000000
          Top = 10.897650000000000000
          Width = 510.236550000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DAFTAR AMBIL HASIL LABORATORIUM GUNUNG SAHARI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 15.118120000000000000
          Top = 60.472480000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanggal : [v_tanggal]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object Qzpl: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 296
    Top = 416
  end
end