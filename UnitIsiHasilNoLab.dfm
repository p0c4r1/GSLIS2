object frmIsiHasilNoLab: TfrmIsiHasilNoLab
  Left = 0
  Top = 0
  ClientHeight = 573
  ClientWidth = 948
  Caption = 'Proses Edit Hasil By Nolab'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -16
  OnAfterShow = UniFormAfterShow
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 528
    Hint = ''
    ParentColor = False
    Align = alLeft
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 3
      Top = 3
      Width = 70
      Height = 19
      Hint = ''
      Caption = 'Tgl/Nolab'
      TabOrder = 1
    end
    object edTgl: TUniEdit
      Left = 79
      Top = 3
      Width = 98
      Hint = ''
      Text = '2019-08-07'
      TabOrder = 2
      OnKeyPress = edTglKeyPress
    end
    object edNomor: TUniEdit
      Left = 183
      Top = 3
      Width = 108
      Hint = ''
      Text = ''
      TabOrder = 3
      OnKeyPress = edNomorKeyPress
    end
    object UniLabel2: TUniLabel
      Left = 3
      Top = 28
      Width = 41
      Height = 19
      Hint = ''
      Caption = 'Nama'
      TabOrder = 4
    end
    object edNama: TUniEdit
      Left = 79
      Top = 31
      Width = 210
      Hint = ''
      Text = ''
      TabOrder = 5
      TabStop = False
      ReadOnly = True
    end
    object UniLabel3: TUniLabel
      Left = 3
      Top = 59
      Width = 72
      Height = 19
      Hint = ''
      Caption = 'Kel./Umur'
      TabOrder = 6
    end
    object edKelaminNama: TUniEdit
      Left = 79
      Top = 59
      Width = 98
      Hint = ''
      Text = ''
      TabOrder = 7
      TabStop = False
      ReadOnly = True
    end
    object edUmur: TUniEdit
      Left = 181
      Top = 59
      Width = 108
      Hint = ''
      Text = ''
      TabOrder = 8
      TabStop = False
      ReadOnly = True
    end
    object UniLabel4: TUniLabel
      Left = 3
      Top = 87
      Width = 50
      Height = 19
      Hint = ''
      Caption = 'Alamat'
      TabOrder = 9
    end
    object mmAlamat: TUniMemo
      Left = 79
      Top = 87
      Width = 210
      Height = 58
      Hint = ''
      ReadOnly = True
      TabOrder = 10
      TabStop = False
    end
    object mmCatatan: TUniMemo
      Left = 3
      Top = 151
      Width = 286
      Height = 74
      Hint = ''
      ReadOnly = True
      TabOrder = 11
      TabStop = False
    end
    object UniLabel5: TUniLabel
      Left = 3
      Top = 231
      Width = 54
      Height = 19
      Hint = ''
      Caption = 'Perujuk'
      TabOrder = 12
    end
    object edDokter: TUniEdit
      Left = 79
      Top = 231
      Width = 212
      Hint = ''
      Text = ''
      TabOrder = 13
      TabStop = False
      ReadOnly = True
    end
    object lblStatus: TUniLabel
      Left = 3
      Top = 259
      Width = 288
      Height = 62
      Hint = ''
      AutoSize = False
      Caption = ''
      ParentFont = False
      Font.Color = clBlue
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 14
    end
    object UniLabel7: TUniLabel
      Left = 3
      Top = 320
      Width = 160
      Height = 19
      Hint = ''
      Caption = 'Historikal Pemeriksaan'
      TabOrder = 15
    end
    object UniButton1: TUniButton
      Left = 181
      Top = 319
      Width = 110
      Height = 25
      Hint = ''
      Caption = 'Historikal'
      TabOrder = 16
      OnClick = UniButton1Click
    end
    object tvHistori: TUniTreeView
      Left = 0
      Top = 350
      Width = 297
      Height = 178
      Hint = ''
      Items.FontData = {0100000000}
      Align = alBottom
      TabOrder = 17
      Color = clWindow
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 528
    Width = 948
    Height = 45
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 1
    object btnPrev: TUniButton
      Left = 303
      Top = 6
      Width = 75
      Height = 35
      Hint = ''
      Caption = 'F1 Prev'
      TabOrder = 1
      OnClick = btnPrevClick
    end
    object btnNext: TUniButton
      Left = 384
      Top = 6
      Width = 75
      Height = 35
      Hint = ''
      Caption = 'F2 Next'
      TabOrder = 2
      OnClick = btnNextClick
    end
    object btnValid: TUniButton
      Left = 464
      Top = 6
      Width = 75
      Height = 35
      Hint = ''
      Caption = 'F3 Valid'
      TabOrder = 3
      OnClick = btnValidClick
    end
    object btnSave: TUniButton
      Left = 776
      Top = 6
      Width = 75
      Height = 35
      Hint = ''
      Caption = 'F7 Save'
      TabOrder = 4
      OnClick = btnSaveClick
    end
    object btnValidAll: TUniButton
      Left = 3
      Top = 7
      Width = 78
      Height = 35
      Hint = ''
      Caption = 'F9 V.All'
      TabOrder = 5
      OnClick = btnValidAllClick
    end
    object btnAbnormal: TUniButton
      Left = 81
      Top = 7
      Width = 98
      Height = 35
      Hint = ''
      Caption = 'F10 Abnrm.'
      TabOrder = 6
      OnClick = btnAbnormalClick
    end
    object btnPrint: TUniButton
      Left = 857
      Top = 7
      Width = 75
      Height = 35
      Hint = ''
      Caption = 'F8 Print'
      TabOrder = 7
      OnClick = btnPrintClick
    end
    object btnRerun: TUniButton
      Left = 695
      Top = 6
      Width = 75
      Height = 35
      Hint = ''
      Caption = 'F6 Rerun'
      TabOrder = 8
      OnClick = btnRerunClick
    end
  end
  object UniContainerPanel3: TUniContainerPanel
    Left = 297
    Top = 0
    Width = 651
    Height = 528
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 2
    object edTglSelesai: TUniEdit
      Left = 167
      Top = 71
      Width = 452
      Hint = ''
      Text = ''
      TabOrder = 1
      TabStop = False
      ReadOnly = True
    end
    object grdHasil: TUniStringGrid
      Left = 0
      Top = 97
      Width = 651
      Height = 431
      Hint = ''
      FixedCols = 0
      ColCount = 7
      Options = [goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goRowSelect, goAlwaysShowEditor, goThumbTracking]
      Columns = <>
      OnDrawCell = grdHasilDrawCell
      Align = alBottom
      TabOrder = 2
    end
  end
  object UniLabel8: TUniLabel
    Left = 303
    Top = 3
    Width = 92
    Height = 19
    Hint = ''
    Caption = 'Catatan Hasil'
    TabOrder = 3
  end
  object mmCatatanOrder: TUniMemo
    Left = 401
    Top = 3
    Width = 514
    Height = 62
    Hint = ''
    TabOrder = 4
  end
  object UniLabel9: TUniLabel
    Left = 303
    Top = 72
    Width = 159
    Height = 19
    Hint = ''
    Caption = 'Hasil dijanjikan selesai'
    TabOrder = 5
  end
  object qHdr: TFDQuery
    Connection = UniMainModule.FDConnection1
    Left = 160
    Top = 288
  end
  object cmdSave: TFDCommand
    Connection = UniMainModule.FDConnection1
    CommandText.Strings = (
      
        'update order_detail set  hasil = :hasil, flg_susul='#39'N'#39', tanggal_' +
        'susul = :tgl_susul,'
      
        'hasil_si = :hasil, flg_valid = :flg_valid, valid_user_id = :user' +
        '_id, flg_abnormal = :flg_abnormal'
      'where id = :dtl_id;'
      ''
      
        'insert into order_detail_status_time(order_header_id,order_detai' +
        'l_id, tanggal,order_status_id,user_id) values(:order_header_id,:' +
        'dtl_id,now(),6,:user_id);')
    ParamData = <
      item
        Name = 'HASIL'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TGL_SUSUL'
        ParamType = ptInput
      end
      item
        Name = 'FLG_VALID'
        ParamType = ptInput
      end
      item
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        Name = 'FLG_ABNORMAL'
        ParamType = ptInput
      end
      item
        Name = 'DTL_ID'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ORDER_HEADER_ID'
        ParamType = ptInput
      end>
    Left = 240
    Top = 272
  end
end