object frmReleaseNote: TfrmReleaseNote
  Left = 0
  Top = 0
  ClientHeight = 562
  ClientWidth = 651
  Caption = 'frmReleaseNote'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Height = -16
  PixelsPerInch = 96
  TextHeight = 19
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 480
    Width = 651
    Height = 82
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 256
      Top = 24
      Width = 129
      Height = 41
      Hint = ''
      Caption = 'Close'
      ParentFont = False
      Font.Height = -16
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 480
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 1
    object UniMemo1: TUniMemo
      Left = 0
      Top = 0
      Width = 651
      Height = 480
      Hint = ''
      Lines.Strings = (
        '[0.0.0.7]'
        '- home service bisa difilter berdasrakan tanggal'
        '- proses pada home service tidak link ke registrasi'
        
          '- barcode label order di masukan ke table parameters ZPL_LABEL_O' +
          'RDER'
        '- hapus karakter a pada alamat di barcode'
        '[0.0.0.6]'
        '- koding ulang menu save F1 pada pembayaran'
        '- fix bug jika test tidak ada harga mucul error saat tambah test'
        '- tambahkan euroka log exeption untuk bug report'
        '- fix add dan delete test yang sudah dinput'
        '[0.0.0.5]'
        
          '- fix bug saat pembaharan kosong, error pada detail status penda' +
          'ftaran'
        '- tambahkan try except handle pada save F1 pendaftaran'
        '[0.0.0.4]'
        
          '- input tanggal lahir isu jadi 120 tahun, tambahkan validasi usi' +
          'a'
        
          '- bisa ganti dokter/perujuk dengan cara status hasil, pilih peru' +
          'juk otomatis tersimpan'
        '- tambahkan dokter baru fix readonly field'
        '- fix hotkey F1 di windows pasien'
        '[0.0.0.3]'
        '20200118'
        '- disable key F1 handle by browser pada buat pasien baru'
        '20200112'
        
          '- print nota,kuitansi, dan kuitansi pembayaran pindahkan ke jasp' +
          'er'
        '20200111'
        
          '- tanggal janji hasil selalu jam 4 sore hari ini, jika daftar le' +
          'bih dari jam 12 besok'
        
          '- pendaftaran tambahkan ambil manual, kirim dokter, dan kirim ru' +
          'mah'
        '- label dikecilkan pindahkan ke ZPL2'
        '- status hasil muncul semua hasil'
        '20191230'
        '- tambahanan menu proses > cetak hasil'
        '20191229'
        '- tambahkan data pasien: agama dan wilayah'
        '- tambahkan webcam untuk ambil foto pasien'
        
          '- tambahkan catatan pasien, catatan internal, histori pemeriksaa' +
          'n'
        '[ 0.0.0.2 ]'
        '20191212'
        '- fix monitorng > label (F7) ke printer label'
        
          '- fix error monitoring > detail > copy nota - langsung ke printe' +
          'r'
        '- fix error monitoring > detail > copy nota - report'
        '20191210'
        
          '- support direct printing dengan qztray - harus install programn' +
          'ya'
        '20191208'
        '- redesign form pedaftaran dengan lookupbox untuk pilih tes'
        '20191201'
        '- tambahkan menu isi hasil'
        '- insert report hasil'
        '- buat service with params'
        '20191006'
        '- tambahkan menu laporan dokter'
        '20190922'
        '- tambahkan fitur penambahan test setelah daftar'
        '- tambahkan uang muka pada catatan nota'
        '20190915'
        
          '- laporan print status hasil harian pada menu status hasil pasie' +
          'n'
        '- laporan nota di geser agar footer tidak timpa'
        '20190909'
        
          '- fix isu saat update data pasien tanpa pilih prefix update ke B' +
          'y.'
        '20190807'
        '- update tambahkan catatan pasien di  nota'
        '- tambahkan report harian dengan test'
        '20190804'
        '- update laporan harian dengan urutan sesuai permintaan'
        '- ubah form pendaftaran utuk mengganti rekanan dengan perujuk'
        
          '- ubah form nota di menu status hasi dan kuitansi rekanan diisi ' +
          'dengan perujuk'
        '- ubah laporan harian ke jasper report'
        '20190728'
        '- form pendaftaran memo diagnosa diganti ke catatan pasien'
        '- form pendaftaran tambahkan perujuk, dan hilangkan pilihan lain'
        '- fix transfer label reprint barcode'
        '- DAHL dipindahkan ke jasper'
        '20190721'
        '- tambahkan menu laporan penjualan'
        '- debug integrasi dengan jaspeserver dengan webservice'
        '20190701'
        '- tambahkan paket pada pendaftaran'
        '- fix nota tampilkan discount'
        '20190628'
        '- buat menu checkin sampel dan print barcode'
        '20190626'
        '- status hasil ditambahkan tombol cek copy nota'
        '- tambahkan loading saat display pdf'
        '- ukuran kertas utnuk cetak adalah A4'
        '- kuitansi tidak perlu ada simbol Rp.'
        '- prefix nama ditambahkan pada laporan home service'
        '- fix bug salah prefix'
        '- buat tombol laporan daftar ambil hasil lab'
        '20190615'
        '- Tambahkan menu Administrasi > User'
        '[  0.0.0.1 ]'
        '20190613'
        '- Grid cari pasien hilangkan page number'
        '- Grid cari dokter hilangkan page number'
        
          '- tambahkan menu status hasil tanggal dan catatan pada form pend' +
          'aftaran'
        '- fix tambah dokter baru error di program lama'
        '- fix total sub_total dan diskon pada nota'
        '- Grid tes pada menu pendaftaran tanpa page number'
        '- Tambahkan tombol edit pasien pada form pendaftaran'
        '- tambahkan tombol hasil sebelumnya pada form pendaftaran'
        '20190612'
        '- fix shortkey pada memu pembayaran'
        '20190522'
        '- Layout Nota Detail - Font kecil dan antar baris lebih rapat'
        '- Format LHKP (laporan harian) sesuai dengan system lama'
        '- Format laporan Home Service sesuai dengan contoh system lama'
        '- tambah menu baru front office > system log'
        '- tambah event logging saat register baru'
        '20190519'
        '- tambahkan fitur baru Home Service'
        '20190518'
        '- tambahkan status pembayaran dan ambil hasil'
        '- label tambahkan tanggal lahir dan telp ganti ke hp'
        '- nota di rapatkan'
        '20190517'
        '- nota font di kecilkan'
        
          '- barcde label di penuhkan ke kanan, tambahkan usia dan pindah n' +
          'omor ke atas'
        '- tambahkan menu ambil hasil'
        '- grid status hasil di buat all row tampil'
        '- tambahkan label tombol di monitoring'
        '20190516'
        '- daftar order menu monitoring urut berdasarkan nomor lab'
        '- pendaftaran pasien baru,jenis kelamin otomatis dari sufix'
        '- tambahkan barcode nomor lab pada label'
        '- fix bug, cari pasien field tidak ditemukan'
        '20190515'
        '- tambahkan print label'
        '- input diskon bisa dengan masukan amount'
        '- layout nota di turunkan'
        '- fix prefix dan kelamin tidak tersimpan'
        '20190513'
        '- kode wilayah dihilangkan karena tdk relevan lagi'
        '- tambahkan No. KTP di demografik pasien'
        '- Fix pencarian nomor lab tidak jalan'
        '20190512'
        
          '- Fix form pendaftaran tambahkan field: Form dan origin serta pe' +
          'njamin'
        '- form pembayaran tambahkan cetak nota dan kuitansi'
        '- form Status monitoring hasil tambahkan cetak kuitansi'
        '- form rekap harian, tambahkan export ke excel')
      ParentFont = False
      Font.Height = -16
      Font.Name = 'Arial'
      Align = alClient
      ReadOnly = True
      TabOrder = 1
    end
  end
end
