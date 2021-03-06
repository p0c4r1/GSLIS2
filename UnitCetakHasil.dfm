object frmCetakHasil: TfrmCetakHasil
  Left = 0
  Top = 0
  ClientHeight = 617
  ClientWidth = 875
  Caption = 'Cetak hasil'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -16
  OnBeforeShow = UniFormBeforeShow
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object pnlHeader: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 89
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 16
      Top = 16
      Width = 57
      Height = 19
      Hint = ''
      Caption = 'Tanggal'
      TabOrder = 1
    end
    object edTgl: TUniEdit
      Left = 79
      Top = 16
      Width = 186
      Hint = ''
      Text = ''
      TabOrder = 2
      OnKeyPress = edTglKeyPress
    end
    object btnSearch: TUniButton
      Left = 79
      Top = 44
      Width = 98
      Height = 37
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Search'
      TabOrder = 3
      OnClick = btnSearchClick
    end
    object edNomor: TUniEdit
      Left = 392
      Top = 16
      Width = 169
      Hint = ''
      Text = ''
      TabOrder = 4
      OnKeyPress = edTglKeyPress
    end
    object edNama: TUniEdit
      Left = 392
      Top = 41
      Width = 169
      Hint = ''
      Text = ''
      TabOrder = 5
      OnKeyPress = edTglKeyPress
    end
    object UniLabel2: TUniLabel
      Left = 331
      Top = 16
      Width = 55
      Height = 19
      Hint = ''
      Caption = 'No. Lab'
      TabOrder = 6
    end
    object UniLabel3: TUniLabel
      Left = 331
      Top = 46
      Width = 41
      Height = 19
      Hint = ''
      Caption = 'Nama'
      TabOrder = 7
    end
    object lblStatus: TUniLabel
      Left = 592
      Top = 16
      Width = 265
      Height = 49
      Hint = ''
      Visible = False
      Alignment = taCenter
      AutoSize = False
      Caption = ''
      ParentFont = False
      Font.Color = clInfoBk
      Font.Height = -21
      Font.Style = [fsBold]
      TabOrder = 8
    end
  end
  object pnlContent: TUniContainerPanel
    Left = 0
    Top = 89
    Width = 875
    Height = 479
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 1
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 0
      Width = 875
      Height = 479
      Hint = ''
      DataSource = DSOrder
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgAutoRefreshRow]
      WebOptions.Paged = False
      WebOptions.FetchAll = True
      LoadMask.Message = 'Loading data...'
      Align = alClient
      TabOrder = 1
      OnMouseEnter = UniDBGrid1MouseEnter
      OnKeyPress = UniDBGrid1KeyPress
      OnSelectionChange = UniDBGrid1SelectionChange
      OnCellClick = UniDBGrid1CellClick
      Columns = <
        item
          FieldName = 'tanggal'
          Title.Caption = 'Tanggal'
          Width = 105
        end
        item
          FieldName = 'nomor'
          Title.Caption = 'Nomor Lab'
          Width = 104
        end
        item
          FieldName = 'nama_pasien'
          Title.Caption = 'Nama'
          Width = 190
        end
        item
          FieldName = 'telepon'
          Title.Caption = 'Telepon'
          Width = 123
        end
        item
          FieldName = 'alamat'
          Title.Caption = 'Alamat'
          Width = 190
        end
        item
          FieldName = 'dokter'
          Title.Caption = 'Dokter'
          Width = 132
        end>
    end
  end
  object pnlFooter: TUniContainerPanel
    Left = 0
    Top = 568
    Width = 875
    Height = 49
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 2
    object btnPrint: TUniButton
      Left = 3
      Top = 6
      Width = 94
      Height = 40
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Print'
      TabOrder = 1
      OnClick = btnPrintClick
    end
    object btnExit: TUniButton
      Left = 203
      Top = 6
      Width = 94
      Height = 40
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Exit'
      TabOrder = 2
      OnClick = btnExitClick
    end
    object UniButton1: TUniButton
      Left = 103
      Top = 6
      Width = 94
      Height = 40
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Historical'
      TabOrder = 3
      OnClick = UniButton1Click
    end
  end
  object QOrder: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select oh.id,left(oh.tanggal,10) tanggal,oh.nomor,oh.pasien_id,p' +
        '.nama as nama_pasien,oh.flgLunas,oh.cetak, p.alamat,p.telepon,d.' +
        'nama as dokter '
      'from order_header oh,pasien p, dokter d '
      
        'where oh.pasien_id= p.id and oh.dokter_id = d.id and flgBatal='#39'N' +
        #39' '
      'and  left(oh.tanggal,10) = :tanggal'
      'order by oh.nomor')
    Left = 120
    Top = 120
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftString
        ParamType = ptInput
        Value = '2019-12-29'
      end>
  end
  object DSOrder: TDataSource
    DataSet = QOrder
    Left = 168
    Top = 120
  end
end
