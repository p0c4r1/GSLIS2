object frmIsiHasilPx: TfrmIsiHasilPx
  Left = 0
  Top = 0
  ClientHeight = 668
  ClientWidth = 1007
  Caption = 'Proses Edit Hasil By Pemeriksaan'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -16
  OnBeforeShow = UniFormBeforeShow
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 19
  object pnlSideBar: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 668
    Hint = ''
    ParentColor = False
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 666
    object pnlFilter: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 329
      Height = 91
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 305
      object UniLabel2: TUniLabel
        Left = 11
        Top = 12
        Width = 23
        Height = 19
        Hint = ''
        Caption = 'Tgl'
        TabOrder = 1
      end
      object UniLabel3: TUniLabel
        Left = 11
        Top = 43
        Width = 89
        Height = 19
        Hint = ''
        Caption = 'Pemeriksaan'
        TabOrder = 2
      end
      object cbTest: TUniDBLookupComboBox
        Left = 106
        Top = 43
        Width = 217
        Height = 27
        Hint = ''
        ListSource = DSTest
        KeyField = 'kode_nama'
        ListFieldIndex = 0
        DataField = 'id'
        AnyMatch = True
        TabOrder = 3
        Color = clWindow
        Style = csDropDown
        OnKeyPress = cbTestKeyPress
      end
      object edTgl: TUniEdit
        Left = 106
        Top = 15
        Width = 217
        Hint = ''
        Text = ''
        TabOrder = 4
        OnKeyPress = edTglKeyPress
      end
    end
    object pnlCatatanOrder: TUniContainerPanel
      Left = 0
      Top = 360
      Width = 329
      Height = 308
      Hint = ''
      ParentColor = False
      Align = alBottom
      TabOrder = 2
      object pcCatatanOrder: TUniPageControl
        Left = 0
        Top = 0
        Width = 329
        Height = 308
        Hint = ''
        ActivePage = tabInternal
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 418
        object tabInternal: TUniTabSheet
          Hint = ''
          Caption = 'Internal'
          ExplicitWidth = 297
          ExplicitHeight = 318
          object mmCatatanInternal: TUniMemo
            Left = 10
            Top = 16
            Width = 292
            Height = 105
            Hint = ''
            ReadOnly = True
            TabOrder = 0
          end
        end
        object tabInterview: TUniTabSheet
          Hint = ''
          Caption = 'Interview'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 329
          ExplicitHeight = 308
          object grdInterview: TUniStringGrid
            Left = 0
            Top = 0
            Width = 321
            Height = 274
            Hint = ''
            ParentCustomHint = False
            FixedCols = 0
            RowCount = 2
            ColCount = 2
            Options = [goVertLine, goHorzLine, goEditing, goRowSelect]
            Columns = <>
            ForceFit = True
            Align = alClient
            TabOrder = 0
            ExplicitLeft = -2
          end
        end
      end
    end
    object pnlPasien: TUniContainerPanel
      Left = 0
      Top = 91
      Width = 329
      Height = 269
      Hint = ''
      ParentColor = False
      Align = alClient
      TabOrder = 3
      ExplicitHeight = 222
      object UniLabel4: TUniLabel
        Left = 11
        Top = 20
        Width = 41
        Height = 19
        Hint = ''
        Caption = 'Nama'
        TabOrder = 1
      end
      object edNama: TUniEdit
        Left = 89
        Top = 17
        Width = 234
        Hint = ''
        Text = ''
        TabOrder = 2
        ReadOnly = True
      end
      object edKelamin: TUniEdit
        Left = 89
        Top = 45
        Width = 113
        Hint = ''
        Text = ''
        TabOrder = 3
        ReadOnly = True
      end
      object UniLabel5: TUniLabel
        Left = 11
        Top = 45
        Width = 72
        Height = 19
        Hint = ''
        Caption = 'Kel./Umur'
        TabOrder = 4
      end
      object UniLabel6: TUniLabel
        Left = 11
        Top = 70
        Width = 50
        Height = 19
        Hint = ''
        Caption = 'Alamat'
        TabOrder = 5
      end
      object edUmur: TUniEdit
        Left = 208
        Top = 45
        Width = 115
        Hint = ''
        Text = ''
        TabOrder = 6
        ReadOnly = True
      end
      object mmAlamat: TUniMemo
        Left = 89
        Top = 73
        Width = 234
        Height = 61
        Hint = ''
        ReadOnly = True
        TabOrder = 7
      end
      object UniLabel7: TUniLabel
        Left = 14
        Top = 143
        Width = 54
        Height = 19
        Hint = ''
        Caption = 'Perujuk'
        TabOrder = 8
      end
      object edDokter: TUniEdit
        Left = 88
        Top = 140
        Width = 235
        Hint = ''
        Text = ''
        TabOrder = 9
        TabStop = False
        ReadOnly = True
      end
      object mmCatatanPasien: TUniMemo
        Left = 89
        Top = 168
        Width = 234
        Height = 89
        Hint = ''
        ReadOnly = True
        TabOrder = 10
      end
      object UniLabel8: TUniLabel
        Left = 13
        Top = 168
        Width = 53
        Height = 19
        Hint = ''
        Caption = 'Catatan'
        TabOrder = 11
      end
    end
  end
  object pnlMain: TUniContainerPanel
    Left = 329
    Top = 0
    Width = 678
    Height = 668
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 656
    ExplicitTop = 176
    ExplicitWidth = 256
    ExplicitHeight = 128
    object pnlAction: TUniContainerPanel
      Left = 0
      Top = 616
      Width = 678
      Height = 52
      Hint = ''
      ParentColor = False
      Align = alBottom
      TabOrder = 1
    end
    object pnlCatatan: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 678
      Height = 97
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 618
      object mmCatatanHasil: TUniMemo
        Left = 102
        Top = 11
        Width = 555
        Height = 49
        Hint = ''
        TabOrder = 1
      end
      object UniLabel1: TUniLabel
        Left = 6
        Top = 11
        Width = 90
        Height = 19
        Hint = ''
        Caption = 'Catatan hasil'
        TabOrder = 2
      end
    end
    object grdHasil: TUniStringGrid
      Left = 0
      Top = 97
      Width = 678
      Height = 519
      Hint = ''
      FixedCols = 0
      ColCount = 7
      Options = [goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goRowSelect, goAlwaysShowEditor, goThumbTracking]
      Columns = <>
      OnDrawCell = grdHasilDrawCell
      OnSelectCell = grdHasilSelectCell
      OnClick = grdHasilClick
      Align = alClient
      TabOrder = 3
      ExplicitLeft = 2
    end
    object btnUpdate: TUniButton
      Left = 584
      Top = 66
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Update'
      TabOrder = 4
    end
  end
  object UniButton1: TUniButton
    Left = 335
    Top = 624
    Width = 90
    Height = 36
    Hint = ''
    Caption = 'Pervious'
    TabOrder = 2
  end
  object UniButton2: TUniButton
    Left = 431
    Top = 624
    Width = 90
    Height = 36
    Hint = ''
    Caption = 'Next'
    TabOrder = 3
  end
  object UniButton3: TUniButton
    Left = 527
    Top = 624
    Width = 90
    Height = 36
    Hint = ''
    Caption = 'Validasi'
    TabOrder = 4
  end
  object UniButton4: TUniButton
    Left = 623
    Top = 624
    Width = 90
    Height = 36
    Hint = ''
    Enabled = False
    Caption = 'Duplo'
    TabOrder = 5
  end
  object UniButton5: TUniButton
    Left = 719
    Top = 624
    Width = 90
    Height = 36
    Hint = ''
    Caption = 'Menyusul'
    TabOrder = 6
  end
  object UniButton6: TUniButton
    Left = 815
    Top = 624
    Width = 90
    Height = 36
    Hint = ''
    Caption = 'Rerun'
    TabOrder = 7
  end
  object UniButton7: TUniButton
    Left = 911
    Top = 624
    Width = 90
    Height = 36
    Hint = ''
    Caption = 'Save'
    TabOrder = 8
  end
  object QTest: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      'select id,kode,nama,CONCAT(kode,'#39' '#39',nama) kode_nama '
      'from test '
      'where '
      'ada_harga='#39'Y'#39' '
      'order by kode')
    Left = 216
    Top = 56
  end
  object DSTest: TDataSource
    DataSet = QTest
    Left = 248
    Top = 56
  end
  object QOrder: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      
        'select od.id,oh.nomor,oh.catatan,od.nilai_normal,od.hasil,od.ruj' +
        'ukan, od.flg_valid,od.flg_rerun,od.flg_abnormal,od.flg_interface' +
        ' from order_header oh,order_detail od '
      'where left(oh.tanggal,10) = :tanggal'
      'and oh.id = od.header_id and oh.flgBatal='#39'N'#39' '
      'and od.test_id = :test_id ')
    Left = 64
    Top = 72
    ParamData = <
      item
        Name = 'TANGGAL'
        DataType = ftString
        ParamType = ptInput
        Value = '2019-11-11'
      end
      item
        Name = 'TEST_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '10'
      end>
  end
  object QPasien: TFDQuery
    Connection = UniMainModule.FDConnection1
    SQL.Strings = (
      'select p.nama, jk.nama jk_nama,'
      
        'CONCAT(TIMESTAMPDIFF( YEAR, p.tanggal_lahir, now() ),'#39' th '#39' ,TIM' +
        'ESTAMPDIFF( MONTH, p.tanggal_lahir, now() ) % 12,'#39' bl '#39','
      
        'FLOOR( TIMESTAMPDIFF( DAY, p.tanggal_lahir, now() ) % 30.4375 ))' +
        ' as umur,'
      'p.alamat,d.nama dokter,p.catatan'
      'from'
      'order_detail od'
      'left join order_header oh on od.header_id = oh.id'
      'left join pasien p on oh.pasien_id = p.id'
      'left join jenis_kelamin jk on p.jenis_kelamin_id =  jk.id'
      'left join dokter d on oh.dokter_id = d.id'
      'where'
      'od.id = :detail_id')
    Left = 24
    Top = 203
    ParamData = <
      item
        Name = 'DETAIL_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '100376306'
      end>
  end
  object QCatatanOrder: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 24
    Top = 616
  end
end
