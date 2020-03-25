-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.28-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for gsp
CREATE DATABASE IF NOT EXISTS `gsp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gsp`;

-- Dumping structure for table gsp.agama
CREATE TABLE IF NOT EXISTS `agama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.aguser
CREATE TABLE IF NOT EXISTS `aguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nopeg` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin_id` int(11) NOT NULL DEFAULT '0',
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `agama_id` int(11) NOT NULL DEFAULT '0',
  `tanggal_bergabung` date DEFAULT NULL,
  `departemen_id` int(11) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `flg_editHasilAlat` char(1) NOT NULL DEFAULT 'N',
  `flg_validasi` char(1) NOT NULL DEFAULT 'N',
  `flg_pembatalan` char(1) NOT NULL DEFAULT 'N',
  `flg_edit_tipe_bayar` char(1) DEFAULT 'N',
  `flg_edit_dokter` char(1) DEFAULT 'N',
  `flg_edit_tipe_pasien` char(1) DEFAULT 'N',
  `flg_editNormal` char(1) DEFAULT 'N',
  `flg_add_dokter` char(1) DEFAULT 'N',
  `flg_print_kuitansi` varchar(1) NOT NULL DEFAULT 'N',
  `flg_copy_kuitansi` varchar(1) NOT NULL DEFAULT 'N',
  `flagEditTipeBayar` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `kLog` (`user_name`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.alat
CREATE TABLE IF NOT EXISTS `alat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `serial_number` varchar(50) DEFAULT NULL,
  `layanan_id` int(11) NOT NULL DEFAULT '0',
  `tanggal_pembelian` date DEFAULT NULL,
  `garansi_sd` date DEFAULT NULL,
  `harga` decimal(12,2) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kV` (`vendor_id`),
  KEY `kK` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.alat_test
CREATE TABLE IF NOT EXISTS `alat_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alat_id` int(11) NOT NULL DEFAULT '0',
  `ref_test_id` int(11) NOT NULL DEFAULT '0',
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `flg_aktif` char(1) NOT NULL DEFAULT 'N',
  `prefix` varchar(30) NOT NULL DEFAULT '',
  `sufix` varchar(30) NOT NULL DEFAULT '',
  `desimal` int(11) NOT NULL DEFAULT '0',
  `flg_asis` char(1) NOT NULL DEFAULT 'Y',
  `flg_advance` char(1) NOT NULL DEFAULT 'N',
  `advance_string` varchar(200) DEFAULT NULL,
  `flg_quali` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `kA` (`alat_id`),
  KEY `kT` (`ref_test_id`),
  KEY `kKode` (`kode`),
  KEY `kasis` (`flg_asis`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.ansuransi_pasien
CREATE TABLE IF NOT EXISTS `ansuransi_pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.asal_pasien
CREATE TABLE IF NOT EXISTS `asal_pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.departement
CREATE TABLE IF NOT EXISTS `departement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `nama_eng` varchar(50) DEFAULT NULL,
  `nama_prc` varchar(50) DEFAULT NULL,
  `flg_ekspedisi` char(1) NOT NULL DEFAULT 'N',
  `flg_marketing` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `ke` (`flg_ekspedisi`),
  KEY `km` (`flg_marketing`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.dokter
CREATE TABLE IF NOT EXISTS `dokter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `umur` int(11) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin_id` int(11) NOT NULL DEFAULT '0',
  `alamat` varchar(100) DEFAULT NULL,
  `nama_prk` varchar(100) DEFAULT NULL,
  `alamat_prk` varchar(100) DEFAULT NULL,
  `telepon_prk` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `handphone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `agama_id` int(11) DEFAULT NULL,
  `marketing_user_id` int(11) NOT NULL DEFAULT '0',
  `ekspedisi_user_id` int(11) NOT NULL DEFAULT '0',
  `wilayah_id` int(11) NOT NULL DEFAULT '0',
  `discount` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tanggal_pasien_pertama` date DEFAULT NULL,
  `tanggal_pasien_terakhir` date DEFAULT NULL,
  `total_pasien` int(11) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `flg_dokter_besar` char(1) NOT NULL DEFAULT 'N',
  `norek` varchar(50) NOT NULL DEFAULT '',
  `bank` varchar(200) NOT NULL DEFAULT '',
  `spesialis` varchar(50) DEFAULT 'Umum',
  `flg_baca` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `kN` (`nama`),
  KEY `km` (`marketing_user_id`),
  KEY `ke` (`ekspedisi_user_id`),
  KEY `kw` (`wilayah_id`),
  KEY `kdb` (`flg_dokter_besar`),
  KEY `ku` (`tanggal_lahir`),
  KEY `dok_sp` (`spesialis`),
  KEY `kfbaca` (`flg_baca`)
) ENGINE=MyISAM AUTO_INCREMENT=10489 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.dokter_target
CREATE TABLE IF NOT EXISTS `dokter_target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dokter_id` int(11) NOT NULL DEFAULT '0',
  `tahun` varchar(4) NOT NULL DEFAULT '2000',
  `target` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ktg` (`dokter_id`,`tahun`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.harga
CREATE TABLE IF NOT EXISTS `harga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL DEFAULT '0',
  `tipe_pasien_id` int(11) NOT NULL DEFAULT '0',
  `urgency_id` int(11) NOT NULL DEFAULT '0',
  `harga` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kt` (`test_id`),
  KEY `ktp` (`tipe_pasien_id`),
  KEY `kui` (`urgency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4537 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.harga_baca
CREATE TABLE IF NOT EXISTS `harga_baca` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.harga_paket
CREATE TABLE IF NOT EXISTS `harga_paket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `induk_test_id` int(11) NOT NULL DEFAULT '0',
  `test_id` int(11) NOT NULL DEFAULT '0',
  `tipe_pasien_id` int(11) NOT NULL DEFAULT '0',
  `urgency_id` int(11) NOT NULL DEFAULT '0',
  `harga` decimal(12,2) DEFAULT NULL,
  `total_harga` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kti` (`induk_test_id`),
  KEY `kt` (`test_id`),
  KEY `ktp` (`tipe_pasien_id`),
  KEY `kui` (`urgency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.hasil_alat
CREATE TABLE IF NOT EXISTS `hasil_alat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alat_id` int(11) NOT NULL DEFAULT '0',
  `order_detail_id` int(11) NOT NULL DEFAULT '0',
  `ref_test_id` int(11) NOT NULL DEFAULT '0',
  `tanggal_masuk` datetime DEFAULT NULL,
  `tanggal_alat` datetime DEFAULT NULL,
  `hasil` varchar(100) DEFAULT NULL,
  `flg_reagen` char(1) DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `ka` (`alat_id`),
  KEY `ko` (`order_detail_id`),
  KEY `kt` (`ref_test_id`),
  KEY `kreagen` (`flg_reagen`)
) ENGINE=MyISAM AUTO_INCREMENT=2275454 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.hasil_lain
CREATE TABLE IF NOT EXISTS `hasil_lain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alat_id` int(11) NOT NULL DEFAULT '0',
  `ref_test_id` int(11) NOT NULL DEFAULT '0',
  `tanggal_masuk` datetime DEFAULT NULL,
  `tanggal_alat` datetime DEFAULT NULL,
  `hasil` varchar(100) DEFAULT NULL,
  `nomor_alat` varchar(100) DEFAULT NULL,
  `flg_control` char(1) DEFAULT 'N',
  `flg_reagen` char(1) DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `ka` (`alat_id`),
  KEY `krt` (`ref_test_id`),
  KEY `kt` (`tanggal_masuk`),
  KEY `kta` (`tanggal_alat`),
  KEY `kreagen` (`flg_reagen`)
) ENGINE=MyISAM AUTO_INCREMENT=411832 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.home_service
CREATE TABLE IF NOT EXISTS `home_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pasien_id` int(11) NOT NULL DEFAULT '0',
  `isi_user_id` int(11) NOT NULL DEFAULT '0',
  `ambil_user_id` int(11) NOT NULL DEFAULT '0',
  `proses_user_id` int(11) NOT NULL DEFAULT '0',
  `flg_ambil` char(1) NOT NULL DEFAULT 'N',
  `flg_proses` char(1) NOT NULL DEFAULT 'N',
  `tipe_pasien_id` int(11) DEFAULT NULL,
  `tipe_hasil_id` int(11) DEFAULT NULL,
  `urgency_id` int(11) DEFAULT NULL,
  `catatan` varchar(200) DEFAULT NULL,
  `order_header_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `k` (`ambil_user_id`),
  KEY `kp` (`pasien_id`),
  KEY `kab` (`flg_ambil`),
  KEY `ktg` (`tanggal`),
  KEY `kpro` (`flg_proses`),
  KEY `kho` (`order_header_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13192 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.home_service_detail
CREATE TABLE IF NOT EXISTS `home_service_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_id` int(11) NOT NULL DEFAULT '0',
  `test_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kh` (`header_id`),
  KEY `kt` (`test_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.interface_order
CREATE TABLE IF NOT EXISTS `interface_order` (
  `id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.jenis_kelamin
CREATE TABLE IF NOT EXISTS `jenis_kelamin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.jenis_sample
CREATE TABLE IF NOT EXISTS `jenis_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `nama_eng` varchar(50) DEFAULT NULL,
  `nama_prc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.kelompok_test
CREATE TABLE IF NOT EXISTS `kelompok_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layanan_id` int(11) NOT NULL DEFAULT '1',
  `kode` char(2) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `nama_eng` varchar(50) DEFAULT NULL,
  `nama_prc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kKode` (`kode`),
  KEY `kLy` (`layanan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.lab_rujukan
CREATE TABLE IF NOT EXISTS `lab_rujukan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kKode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.lab_rujukan_harga
CREATE TABLE IF NOT EXISTS `lab_rujukan_harga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_rujukan_id` int(11) NOT NULL DEFAULT '0',
  `ref_test_id` int(11) NOT NULL DEFAULT '0',
  `harga` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kl` (`lab_rujukan_id`),
  KEY `kt` (`ref_test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.layanan
CREATE TABLE IF NOT EXISTS `layanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(1) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `nama_eng` varchar(50) DEFAULT NULL,
  `nama_prc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.log_edit_tipe_bayar
CREATE TABLE IF NOT EXISTS `log_edit_tipe_bayar` (
  `bayar_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `old_tipe_bayar_id` int(11) DEFAULT NULL,
  `old_tipe_bayar` varchar(200) DEFAULT NULL,
  `new_tipe_bayar_id` int(11) DEFAULT NULL,
  `new_tipe_bayar` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.log_pasien
CREATE TABLE IF NOT EXISTS `log_pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `pasien_id` int(11) NOT NULL,
  `noreg` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `klg` (`login`),
  KEY `kdt` (`date`)
) ENGINE=MyISAM AUTO_INCREMENT=144708 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(50) DEFAULT NULL,
  `is_idx` char(1) DEFAULT 'N',
  `idx` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `kLevel` (`parent_id`),
  KEY `kmn` (`name`,`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.nilai_normal
CREATE TABLE IF NOT EXISTS `nilai_normal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL DEFAULT '0',
  `flg_umur` char(1) NOT NULL DEFAULT 'N',
  `flg_kelamin` char(1) NOT NULL DEFAULT 'N',
  `flg_kelamin_umur` char(1) NOT NULL DEFAULT 'N',
  `flg_text` char(1) NOT NULL DEFAULT 'N',
  `flg_auto` char(1) NOT NULL DEFAULT 'N',
  `jenis_kelamin_id` int(11) NOT NULL DEFAULT '0',
  `umur_awal` int(11) NOT NULL DEFAULT '0',
  `umur_akhir` int(11) NOT NULL DEFAULT '0',
  `umur_satuan_id` int(11) NOT NULL DEFAULT '1',
  `nilai_min` decimal(9,3) NOT NULL DEFAULT '0.000',
  `nilai_max` decimal(9,3) NOT NULL DEFAULT '0.000',
  `keterangan` text,
  `rujukan` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `kt` (`test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=908 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.nota
CREATE TABLE IF NOT EXISTS `nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seq` int(11) NOT NULL DEFAULT '1',
  `order_nomor` char(20) NOT NULL DEFAULT '',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jumlah` decimal(12,2) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ko` (`order_nomor`),
  KEY `kt` (`tanggal`),
  KEY `kU` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.order_baca
CREATE TABLE IF NOT EXISTS `order_baca` (
  `header_id` int(11) NOT NULL,
  `hb_kode` varchar(20) NOT NULL,
  `dokter_id` int(11) NOT NULL,
  `harga` decimal(12,2) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  KEY `khd` (`header_id`),
  KEY `hbk` (`hb_kode`),
  KEY `obd` (`dokter_id`),
  KEY `ktg` (`tanggal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.order_detail
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_id` int(11) NOT NULL DEFAULT '0',
  `test_id` int(11) NOT NULL DEFAULT '0',
  `test_kode` varchar(14) DEFAULT NULL,
  `test_harga` decimal(12,2) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `cetak_nota` char(1) NOT NULL DEFAULT 'N',
  `cetak_hasil` char(1) NOT NULL DEFAULT 'N',
  `ada_hasil` char(1) NOT NULL DEFAULT 'N',
  `urgency_id` int(11) NOT NULL DEFAULT '1',
  `nama_test` varchar(50) DEFAULT NULL,
  `harga` decimal(12,2) DEFAULT NULL,
  `nilai_normal` text,
  `nilai_normal_min` decimal(9,3) NOT NULL DEFAULT '0.000',
  `nilai_normal_max` decimal(9,3) NOT NULL DEFAULT '0.000',
  `nilai_normal_auto` char(1) NOT NULL DEFAULT 'N',
  `hasil` varchar(200) DEFAULT NULL,
  `hasil_si` varchar(200) DEFAULT NULL,
  `flg_susul` char(1) NOT NULL DEFAULT 'N',
  `flg_interface` char(1) NOT NULL DEFAULT 'N',
  `tanggal_susul` date DEFAULT NULL,
  `flg_valid` char(1) NOT NULL DEFAULT 'N',
  `flg_rerun` char(1) NOT NULL DEFAULT 'N',
  `valid_user_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  `flg_rujuk` char(1) NOT NULL DEFAULT 'N',
  `lab_rujuk_id` int(11) NOT NULL DEFAULT '0',
  `rujuk_harga` decimal(12,2) DEFAULT '0.00',
  `diskon` decimal(12,2) DEFAULT '0.00',
  `flg_abnormal` char(1) NOT NULL DEFAULT 'N',
  `rujukan` varchar(200) NOT NULL DEFAULT '',
  `flg_reagen` char(1) DEFAULT 'N',
  `rujuk_tanggal` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kh` (`header_id`),
  KEY `ktest` (`test_kode`),
  KEY `ks` (`flg_susul`),
  KEY `kr` (`flg_rujuk`),
  KEY `kst` (`status_id`),
  KEY `klr` (`lab_rujuk_id`),
  KEY `krr` (`flg_rerun`),
  KEY `kAbn` (`flg_abnormal`),
  KEY `kreagen` (`flg_reagen`),
  KEY `ktestid` (`test_id`),
  KEY `krjk` (`rujuk_tanggal`)
) ENGINE=InnoDB AUTO_INCREMENT=100534877 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.order_detail_status_time
CREATE TABLE IF NOT EXISTS `order_detail_status_time` (
  `order_header_id` int(11) NOT NULL DEFAULT '0',
  `order_detail_id` int(11) NOT NULL DEFAULT '0',
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  KEY `kOh` (`order_header_id`),
  KEY `kOd` (`order_detail_id`),
  KEY `ks` (`order_status_id`),
  KEY `ku` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.order_header
CREATE TABLE IF NOT EXISTS `order_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime DEFAULT NULL,
  `pasien_id` int(11) NOT NULL DEFAULT '0',
  `urgency_id` int(11) NOT NULL DEFAULT '1',
  `dokter_id` int(11) NOT NULL DEFAULT '0',
  `tipe_pasien_id` int(11) NOT NULL DEFAULT '0',
  `tipe_hasil_id` int(11) NOT NULL DEFAULT '0',
  `ansuransi_pasien_id` int(11) NOT NULL DEFAULT '0',
  `asal_pasien_id` int(11) NOT NULL DEFAULT '0',
  `ruangan_pasien_id` int(11) NOT NULL DEFAULT '0',
  `nomor` varchar(30) NOT NULL DEFAULT '',
  `sub_total` decimal(12,2) DEFAULT NULL,
  `disc_pct` decimal(4,2) DEFAULT NULL,
  `disc_amount` decimal(12,2) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `tagihan` decimal(12,2) DEFAULT '0.00',
  `flgLunas` char(1) NOT NULL DEFAULT 'N',
  `flgBatal` char(1) NOT NULL DEFAULT 'N',
  `cetak` int(11) DEFAULT '0',
  `pembayaran_id` int(11) NOT NULL DEFAULT '0',
  `perujuk_id` int(11) NOT NULL DEFAULT '1',
  `catatan` varchar(150) DEFAULT NULL,
  `diagnosa` varchar(150) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `batal_user_id` int(11) NOT NULL DEFAULT '0',
  `ket_tgl_selesai` varchar(250) NOT NULL DEFAULT '',
  `ket_tgl_selesai_date` date DEFAULT NULL,
  `flg_ambil_hasil` char(1) NOT NULL DEFAULT 'N',
  `tgl_ambil_hasil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_ambil_hasil` int(11) NOT NULL DEFAULT '0',
  `dokter_discount` decimal(4,2) DEFAULT '0.00',
  `catatan_hasil` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kNo` (`nomor`),
  KEY `kLun` (`flgLunas`),
  KEY `kdo` (`dokter_id`),
  KEY `kt` (`tipe_pasien_id`),
  KEY `khs` (`tipe_hasil_id`),
  KEY `kUr` (`urgency_id`),
  KEY `kBtl` (`flgBatal`),
  KEY `kd` (`dokter_discount`),
  KEY `kpas` (`pasien_id`),
  KEY `ktgl` (`tanggal`),
  KEY `ansuransi_pasien_id` (`ansuransi_pasien_id`),
  KEY `ruangan_pasien_id` (`ruangan_pasien_id`),
  KEY `asal_pasien_id` (`asal_pasien_id`),
  KEY `pembayaran_id` (`pembayaran_id`),
  KEY `perujuk_id` (`perujuk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=853981 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.order_interview
CREATE TABLE IF NOT EXISTS `order_interview` (
  `header_id` int(11) NOT NULL,
  `pertanyaan` varchar(200) NOT NULL,
  `jawaban` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `auditdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `header_id` (`header_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.order_pengiriman_hasil
CREATE TABLE IF NOT EXISTS `order_pengiriman_hasil` (
  `header_id` int(11) NOT NULL,
  `metode` varchar(100) NOT NULL,
  `data` varchar(100) NOT NULL,
  KEY `header_id` (`header_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.order_status
CREATE TABLE IF NOT EXISTS `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.order_status_time
CREATE TABLE IF NOT EXISTS `order_status_time` (
  `order_header_id` int(11) NOT NULL DEFAULT '0',
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `keterangan` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `kOd` (`order_header_id`),
  KEY `ks` (`order_status_id`),
  KEY `ku` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1083019 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.panel_detail
CREATE TABLE IF NOT EXISTS `panel_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL DEFAULT '0',
  `panel_header_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flg_aktif` char(50) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `test_id` (`test_id`),
  KEY `panel_header_id` (`panel_header_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.panel_header
CREATE TABLE IF NOT EXISTS `panel_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL DEFAULT '?',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `flg_aktif` char(50) NOT NULL DEFAULT 'N',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `disc_pct` decimal(5,2) NOT NULL DEFAULT '0.00',
  `disc_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.pasien
CREATE TABLE IF NOT EXISTS `pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noreg` varchar(30) NOT NULL DEFAULT '',
  `prefix_id` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `umur` int(11) NOT NULL DEFAULT '0',
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin_id` int(11) NOT NULL DEFAULT '0',
  `alamat` varchar(100) DEFAULT NULL,
  `no_ktp` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `agama_id` int(11) DEFAULT NULL,
  `tanggal_awal_periksa` date DEFAULT NULL,
  `tanggal_akhir_periksa` date DEFAULT NULL,
  `jumlah_periksa` int(11) DEFAULT NULL,
  `jumlah_amount` decimal(12,2) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `pangkat` varchar(50) NOT NULL DEFAULT '',
  `kesatuan` varchar(50) NOT NULL DEFAULT '',
  `gol_darah` varchar(10) NOT NULL DEFAULT '',
  `rhesus` varchar(10) NOT NULL DEFAULT '',
  `kartu_gs` char(1) DEFAULT 'N',
  `wilayah` varchar(50) DEFAULT 'Lain-lain',
  `catatan` text,
  PRIMARY KEY (`id`),
  KEY `kNoreg` (`noreg`),
  KEY `ktg` (`tanggal_akhir_periksa`),
  KEY `kN` (`nama`),
  KEY `ka` (`alamat`),
  KEY `kTp` (`telepon`),
  KEY `ktap` (`tanggal_akhir_periksa`),
  KEY `ku` (`tanggal_lahir`),
  KEY `pas_wil` (`wilayah`),
  KEY `kHp` (`hp`),
  KEY `no_ktp` (`no_ktp`)
) ENGINE=MyISAM AUTO_INCREMENT=1294901 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.pasien_baru
CREATE TABLE IF NOT EXISTS `pasien_baru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noreg` varchar(30) NOT NULL DEFAULT '',
  `prefix_id` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `umur` int(11) NOT NULL DEFAULT '0',
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin_id` int(11) NOT NULL DEFAULT '0',
  `alamat` varchar(100) DEFAULT NULL,
  `no_ktp` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `agama_id` int(11) DEFAULT NULL,
  `tanggal_awal_periksa` date DEFAULT NULL,
  `tanggal_akhir_periksa` date DEFAULT NULL,
  `jumlah_periksa` int(11) DEFAULT NULL,
  `jumlah_amount` decimal(12,2) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `pangkat` varchar(50) NOT NULL DEFAULT '',
  `kesatuan` varchar(50) NOT NULL DEFAULT '',
  `gol_darah` varchar(10) NOT NULL DEFAULT '',
  `rhesus` varchar(10) NOT NULL DEFAULT '',
  `kartu_gs` char(1) DEFAULT 'N',
  `wilayah` varchar(50) DEFAULT 'Lain-lain',
  PRIMARY KEY (`id`),
  KEY `kNoreg` (`noreg`),
  KEY `ktg` (`tanggal_akhir_periksa`),
  KEY `kN` (`nama`),
  KEY `ka` (`alamat`),
  KEY `kTp` (`telepon`),
  KEY `ktap` (`tanggal_akhir_periksa`),
  KEY `ku` (`tanggal_lahir`),
  KEY `pas_wil` (`wilayah`),
  KEY `kHp` (`hp`),
  KEY `no_ktp` (`no_ktp`)
) ENGINE=InnoDB AUTO_INCREMENT=1272238 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.pasien_duplicate
CREATE TABLE IF NOT EXISTS `pasien_duplicate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noreg` varchar(30) NOT NULL DEFAULT '',
  `prefix_id` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `umur` int(11) NOT NULL DEFAULT '0',
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin_id` int(11) NOT NULL DEFAULT '0',
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `agama_id` int(11) DEFAULT NULL,
  `tanggal_awal_periksa` date DEFAULT NULL,
  `tanggal_akhir_periksa` date DEFAULT NULL,
  `jumlah_periksa` int(11) DEFAULT NULL,
  `jumlah_amount` decimal(12,2) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `pangkat` varchar(50) NOT NULL DEFAULT '',
  `kesatuan` varchar(50) NOT NULL DEFAULT '',
  `gol_darah` varchar(10) NOT NULL DEFAULT '',
  `rhesus` varchar(10) NOT NULL DEFAULT '',
  `kartu_gs` char(1) DEFAULT 'N',
  `wilayah` varchar(50) DEFAULT 'Lain-lain',
  PRIMARY KEY (`id`),
  KEY `kNoreg` (`noreg`),
  KEY `ktg` (`tanggal_akhir_periksa`),
  KEY `kN` (`nama`),
  KEY `ka` (`alamat`),
  KEY `kTp` (`telepon`),
  KEY `ktap` (`tanggal_akhir_periksa`),
  KEY `ku` (`tanggal_lahir`),
  KEY `pas_wil` (`wilayah`),
  KEY `kHp` (`hp`)
) ENGINE=InnoDB AUTO_INCREMENT=675923 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.pasien_photo
CREATE TABLE IF NOT EXISTS `pasien_photo` (
  `pasien_id` int(11) DEFAULT NULL,
  `photo` mediumblob,
  KEY `kp` (`pasien_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.pembayaran
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `nomor` varchar(30) NOT NULL DEFAULT '000',
  `order_header_id` int(11) NOT NULL DEFAULT '0',
  `tipe_bayar_id` int(11) NOT NULL DEFAULT '0',
  `charge` decimal(12,2) DEFAULT NULL,
  `jumlah` decimal(12,2) DEFAULT NULL,
  `flg_first` char(1) DEFAULT 'N',
  `tagihan` decimal(12,2) DEFAULT NULL,
  `kuitansi` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ktg` (`tanggal`),
  KEY `kU` (`user_id`),
  KEY `kNo` (`nomor`),
  KEY `kO` (`order_header_id`),
  KEY `ktp` (`tipe_bayar_id`),
  KEY `kfrt` (`flg_first`)
) ENGINE=MyISAM AUTO_INCREMENT=1051900 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.penomoran
CREATE TABLE IF NOT EXISTS `penomoran` (
  `last_nolab` date DEFAULT '0000-00-00',
  `pf1_nolab` varchar(50) DEFAULT '',
  `pf2_nolab` varchar(50) DEFAULT '',
  `nolab_length` int(11) DEFAULT '1',
  `nolab_max` int(11) DEFAULT '1',
  `reset_nolab` int(11) DEFAULT '1',
  `last_noreg` date DEFAULT '0000-00-00',
  `pf1_noreg` varchar(50) DEFAULT '',
  `pf2_noreg` varchar(50) DEFAULT '',
  `noreg_length` int(11) DEFAULT '1',
  `noreg_max` int(11) DEFAULT '1',
  `reset_noreg` int(11) DEFAULT '1',
  `last_nodokter` date DEFAULT '0000-00-00',
  `pf1_nodokter` varchar(50) DEFAULT '',
  `pf2_nodokter` varchar(50) DEFAULT '',
  `nodokter_length` int(11) DEFAULT '1',
  `nodokter_max` int(11) DEFAULT '1',
  `reset_nodokter` int(11) DEFAULT '1',
  `last_nonota` date DEFAULT '0000-00-00',
  `pf1_nonota` varchar(50) DEFAULT '',
  `pf2_nonota` varchar(50) DEFAULT '',
  `nonota_length` int(11) DEFAULT '1',
  `nonota_max` int(11) DEFAULT '1',
  `reset_nonota` int(11) DEFAULT '1',
  `pf1_kuitansi` varchar(50) DEFAULT NULL,
  `pf2_kuitansi` varchar(50) DEFAULT NULL,
  `kuitansi_length` int(11) DEFAULT NULL,
  `kuitansi_max` int(11) DEFAULT NULL,
  `reset_kuitansi` int(11) DEFAULT NULL,
  `last_kuitansi` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.penomoran_ino
CREATE TABLE IF NOT EXISTS `penomoran_ino` (
  `last_nolab` date DEFAULT '0000-00-00',
  `pf1_nolab` varchar(50) DEFAULT '',
  `pf2_nolab` varchar(50) DEFAULT '',
  `nolab_length` int(11) DEFAULT '1',
  `nolab_max` int(11) DEFAULT '1',
  `reset_nolab` int(11) DEFAULT '1',
  `last_noreg` date DEFAULT '0000-00-00',
  `pf1_noreg` varchar(50) DEFAULT '',
  `pf2_noreg` varchar(50) DEFAULT '',
  `noreg_length` int(11) DEFAULT '1',
  `noreg_max` int(11) DEFAULT '1',
  `reset_noreg` int(11) DEFAULT '1',
  `last_nodokter` date DEFAULT '0000-00-00',
  `pf1_nodokter` varchar(50) DEFAULT '',
  `pf2_nodokter` varchar(50) DEFAULT '',
  `nodokter_length` int(11) DEFAULT '1',
  `nodokter_max` int(11) DEFAULT '1',
  `reset_nodokter` int(11) DEFAULT '1',
  `last_nonota` date DEFAULT '0000-00-00',
  `pf1_nonota` varchar(50) DEFAULT '',
  `pf2_nonota` varchar(50) DEFAULT '',
  `nonota_length` int(11) DEFAULT '1',
  `nonota_max` int(11) DEFAULT '1',
  `reset_nonota` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.perujuk
CREATE TABLE IF NOT EXISTS `perujuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10219 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.prefix
CREATE TABLE IF NOT EXISTS `prefix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.printer_label
CREATE TABLE IF NOT EXISTS `printer_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `port` varchar(50) NOT NULL DEFAULT 'COM10',
  `zpl_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.reagen
CREATE TABLE IF NOT EXISTS `reagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `satuan_in` varchar(20) DEFAULT NULL,
  `satuan_out` varchar(20) DEFAULT NULL,
  `conversi` decimal(12,3) DEFAULT NULL,
  `flag_aktif` char(1) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ka` (`flag_aktif`),
  KEY `kven` (`vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.reagen_out
CREATE TABLE IF NOT EXISTS `reagen_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reagen_id` int(11) NOT NULL DEFAULT '0',
  `alat_id` int(11) NOT NULL DEFAULT '0',
  `flg_paket` char(1) DEFAULT 'N',
  `ref_test_id` int(11) NOT NULL DEFAULT '0',
  `total` decimal(12,3) DEFAULT '0.000',
  `install` decimal(12,3) DEFAULT '0.000',
  PRIMARY KEY (`id`),
  KEY `kal` (`alat_id`),
  KEY `kr` (`reagen_id`),
  KEY `krt` (`ref_test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.ref_test
CREATE TABLE IF NOT EXISTS `ref_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `flg_calculation` char(1) DEFAULT 'N',
  `calculation_formula` varchar(200) DEFAULT '',
  `flg_multi` char(1) DEFAULT 'N',
  `harga` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `kKode` (`kode`),
  KEY `kPer` (`flg_calculation`)
) ENGINE=MyISAM AUTO_INCREMENT=868 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.ref_test_calculation
CREATE TABLE IF NOT EXISTS `ref_test_calculation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `ref_test_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kp` (`parent_id`),
  KEY `krt` (`ref_test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.reward
CREATE TABLE IF NOT EXISTS `reward` (
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `awal` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `reward_point` decimal(12,2) DEFAULT NULL,
  `min_point` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode`),
  KEY `ktg` (`awal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.ruangan_pasien
CREATE TABLE IF NOT EXISTS `ruangan_pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.sample_receive
CREATE TABLE IF NOT EXISTS `sample_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_header_id` int(11) NOT NULL DEFAULT '0',
  `jenis_sample_id` int(11) NOT NULL DEFAULT '0',
  `tgl_sampling` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sampling_user_id` int(11) DEFAULT NULL,
  `tgl_transport` datetime DEFAULT NULL,
  `transport_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_header_id` (`order_header_id`),
  KEY `jenis_sample_id` (`jenis_sample_id`),
  KEY `user_id` (`sampling_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.satuan_umur
CREATE TABLE IF NOT EXISTS `satuan_umur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `konversi` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.spesialis
CREATE TABLE IF NOT EXISTS `spesialis` (
  `nama` varchar(50) DEFAULT NULL,
  KEY `sp_Nm` (`nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.tagihan
CREATE TABLE IF NOT EXISTS `tagihan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `tglMulai` date NOT NULL DEFAULT '0000-00-00',
  `tglSelesai` date NOT NULL DEFAULT '0000-00-00',
  `nomor` varchar(30) NOT NULL DEFAULT '',
  `tipe_pasien_id` int(11) NOT NULL DEFAULT '0',
  `alamat` varchar(250) DEFAULT NULL,
  `header` varchar(250) DEFAULT NULL,
  `footer` varchar(250) DEFAULT NULL,
  `flg_lunas` char(1) NOT NULL DEFAULT 'N',
  `template_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `kn` (`nomor`),
  KEY `kl` (`flg_lunas`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.tagihan_detail
CREATE TABLE IF NOT EXISTS `tagihan_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagihan_id` int(11) NOT NULL DEFAULT '0',
  `header_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kt` (`tagihan_id`,`header_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1262 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.telemarketing
CREATE TABLE IF NOT EXISTS `telemarketing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `note` text NOT NULL,
  `pasien_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kUser` (`user_id`),
  KEY `kTanggal` (`tanggal`),
  KEY `kPas` (`pasien_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.telemarketing_user
CREATE TABLE IF NOT EXISTS `telemarketing_user` (
  `user_id` int(11) DEFAULT NULL,
  `flag_admin` char(1) DEFAULT 'N',
  KEY `ku` (`user_id`),
  KEY `ka` (`flag_admin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.test
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_test_id` int(11) NOT NULL DEFAULT '0',
  `kode` varchar(14) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `nama_eng` varchar(50) DEFAULT NULL,
  `layanan_id` int(11) NOT NULL DEFAULT '0',
  `kelompok_test_id` int(11) NOT NULL DEFAULT '0',
  `flg_paket` char(1) NOT NULL DEFAULT 'N',
  `level` int(11) NOT NULL DEFAULT '1',
  `induk_kode_id` int(11) NOT NULL DEFAULT '0',
  `cetak_nota` char(1) NOT NULL DEFAULT 'N',
  `cetak_hasil` char(1) NOT NULL DEFAULT 'N',
  `ada_subtest` char(1) NOT NULL DEFAULT 'N',
  `aktif` char(1) NOT NULL DEFAULT 'Y',
  `ada_hasil` char(1) NOT NULL DEFAULT 'Y',
  `ada_harga` char(1) NOT NULL DEFAULT 'N',
  `jenis_sample_id` int(11) NOT NULL DEFAULT '0',
  `satuan` varchar(10) DEFAULT NULL,
  `satuan_si` varchar(10) DEFAULT NULL,
  `konversi_si` decimal(12,2) DEFAULT '1.00',
  `alat_id` int(11) NOT NULL DEFAULT '0',
  `waktu_pengerjaan_hari` int(11) DEFAULT NULL,
  `metode` varchar(50) DEFAULT NULL,
  `flag` char(1) NOT NULL DEFAULT '',
  `flag_rujukan` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `kRef` (`ref_test_id`),
  KEY `kKod` (`kode`),
  KEY `kLay` (`layanan_id`),
  KEY `kLv` (`level`),
  KEY `kinduk` (`induk_kode_id`),
  KEY `knota` (`cetak_nota`),
  KEY `ksub` (`ada_subtest`),
  KEY `kHsl` (`ada_hasil`),
  KEY `kAk` (`aktif`),
  KEY `ksmp` (`jenis_sample_id`),
  KEY `ada_harga` (`ada_harga`),
  KEY `kelompok_test_id` (`kelompok_test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1099 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.test_interview
CREATE TABLE IF NOT EXISTS `test_interview` (
  `test_id` int(11) NOT NULL,
  `pertanyaan` varchar(200) NOT NULL,
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.tipe_hasil
CREATE TABLE IF NOT EXISTS `tipe_hasil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `nama_eng` varchar(50) DEFAULT NULL,
  `nama_prc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kKod` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.tipe_pasien
CREATE TABLE IF NOT EXISTS `tipe_pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(250) NOT NULL DEFAULT '',
  `telepon` varchar(30) NOT NULL DEFAULT '',
  `up_penagihan` varchar(30) NOT NULL DEFAULT '',
  `flg_tagihan` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `kTa` (`flg_tagihan`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.tipe_pembayaran
CREATE TABLE IF NOT EXISTS `tipe_pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `nama_eng` varchar(50) DEFAULT NULL,
  `nama_prc` varchar(50) DEFAULT NULL,
  `biaya_pct` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kKode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.transaksi_reagen
CREATE TABLE IF NOT EXISTS `transaksi_reagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime DEFAULT NULL,
  `jenis` varchar(10) NOT NULL DEFAULT 'OUT',
  `reagen_id` int(11) NOT NULL DEFAULT '0',
  `alat_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `total` double DEFAULT NULL,
  `total_test` int(11) DEFAULT '0',
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kr` (`reagen_id`),
  KEY `kra` (`alat_id`),
  KEY `kj` (`jenis`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.urgency
CREATE TABLE IF NOT EXISTS `urgency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.user_menu
CREATE TABLE IF NOT EXISTS `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kmenu` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16277 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.vendor
CREATE TABLE IF NOT EXISTS `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kKode` (`kode`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.wilayah
CREATE TABLE IF NOT EXISTS `wilayah` (
  `nama` varchar(50) DEFAULT NULL,
  KEY `wil_nm` (`nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.wilayah_marketing
CREATE TABLE IF NOT EXISTS `wilayah_marketing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `nama_eng` varchar(50) DEFAULT NULL,
  `nama_prc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.worklist
CREATE TABLE IF NOT EXISTS `worklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL DEFAULT 'Work List',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `kn` (`nama`),
  KEY `kt` (`tanggal`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table gsp.worklist_detail
CREATE TABLE IF NOT EXISTS `worklist_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_id` int(11) NOT NULL DEFAULT '0',
  `test_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kh` (`header_id`),
  KEY `kt` (`test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1137 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for trigger gsp.order_after_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `order_after_update` AFTER UPDATE ON `order_header` FOR EACH ROW IF NEW.tanggal >= (NOW() - INTERVAL 3 DAY)
THEN 
INSERT INTO interface_order (id) VALUES (NEW.id);
END IF//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
