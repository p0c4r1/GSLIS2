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

-- Dumping data for table gsp.agama: 7 rows
DELETE FROM `agama`;
/*!40000 ALTER TABLE `agama` DISABLE KEYS */;
INSERT INTO `agama` (`id`, `nama`) VALUES
	(1, 'ISLAM'),
	(2, 'KRISTEN'),
	(3, 'KATHOLIK'),
	(4, 'HINDHU'),
	(5, 'BUDHA'),
	(6, '-'),
	(0, '-');
/*!40000 ALTER TABLE `agama` ENABLE KEYS */;

-- Dumping data for table gsp.asal_pasien: ~2 rows (approximately)
DELETE FROM `asal_pasien`;
/*!40000 ALTER TABLE `asal_pasien` DISABLE KEYS */;
INSERT INTO `asal_pasien` (`id`, `nama`) VALUES
	(1, '-'),
	(2, 'APS');
/*!40000 ALTER TABLE `asal_pasien` ENABLE KEYS */;

-- Dumping data for table gsp.jenis_kelamin: 2 rows
DELETE FROM `jenis_kelamin`;
/*!40000 ALTER TABLE `jenis_kelamin` DISABLE KEYS */;
INSERT INTO `jenis_kelamin` (`id`, `nama`) VALUES
	(1, 'LAKI-LAKI'),
	(2, 'PEREMPUAN');
/*!40000 ALTER TABLE `jenis_kelamin` ENABLE KEYS */;

-- Dumping data for table gsp.jenis_sample: 24 rows
DELETE FROM `jenis_sample`;
/*!40000 ALTER TABLE `jenis_sample` DISABLE KEYS */;
INSERT INTO `jenis_sample` (`id`, `kode`, `nama`, `nama_eng`, `nama_prc`) VALUES
	(1, 'S', 'SERUM', '', ''),
	(2, 'U', 'URINE', '', ''),
	(3, '', 'FAECES', '', ''),
	(7, '', 'DARAH EDTA', NULL, NULL),
	(10, 'RTG', 'RONTGEN', NULL, NULL),
	(9, 'P', 'DARAH-2PP', NULL, NULL),
	(11, 'EKG', 'EKG', NULL, NULL),
	(12, 'H', 'DARAH HEPARIN', NULL, NULL),
	(13, 'TEN', 'TENSI', NULL, NULL),
	(14, 'PHY', 'PHYSIC', NULL, NULL),
	(15, 'TRET', 'TREATMILL', NULL, NULL),
	(16, 'SPER', 'SPERMA', NULL, NULL),
	(17, 'SEK', 'SEKRET', NULL, NULL),
	(18, 'CAIR', 'CAIRAN KULIT', NULL, NULL),
	(19, 'BTA', 'BTA', NULL, NULL),
	(20, 'SPU', 'SPUTUM', NULL, NULL),
	(21, 'PUS', 'PUS', NULL, NULL),
	(22, 'USG', 'USG', NULL, NULL),
	(23, 'SIT', 'SITRAT', NULL, NULL),
	(24, 'KUL', 'KULIT', NULL, NULL),
	(25, 'KEL', 'CAIRAN KELENJAR', NULL, NULL),
	(26, '-', '-', NULL, NULL),
	(27, 'PLEU', 'CAIRAN PLEURA', NULL, NULL),
	(28, 'KL', 'KEROKAN LIDAH', NULL, NULL);
/*!40000 ALTER TABLE `jenis_sample` ENABLE KEYS */;

-- Dumping data for table gsp.layanan: 6 rows
DELETE FROM `layanan`;
/*!40000 ALTER TABLE `layanan` DISABLE KEYS */;
INSERT INTO `layanan` (`id`, `kode`, `nama`, `nama_eng`, `nama_prc`) VALUES
	(1, '1', 'LABORATORIUM', '', ''),
	(2, '2', 'RONTGEN', '', ''),
	(3, '3', 'EKG', '', ''),
	(4, '4', 'USG', NULL, NULL),
	(5, '5', 'SPIROMETRI', NULL, NULL),
	(6, '6', 'AUDIOMETRI', NULL, NULL);
/*!40000 ALTER TABLE `layanan` ENABLE KEYS */;

-- Dumping data for table gsp.menu: 85 rows
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `parent_id`, `name`, `description`, `is_idx`, `idx`) VALUES
	(1, 0, 'mnSystem', 'Menu System', 'N', -1),
	(2, 1, 'mnLogin', 'Menu Login', 'N', -1),
	(3, 1, 'mnLogoff', 'Menu Logoff', 'N', -1),
	(4, 1, 'mnPwd', 'Menu Ganti Password', 'N', -1),
	(5, 1, 'mnLog', 'Menu System Log', 'N', -1),
	(6, 1, 'mnExit', 'Keluar  Aplikasi', 'N', -1),
	(7, 0, 'mnFO', 'Front Office', 'N', -1),
	(8, 7, 'mnFODaftar', 'Pendaftaran', 'N', -1),
	(9, 7, 'mnFOStatus', 'Status Hasil/Pembayaran', 'N', -1),
	(10, 7, 'mnFOLaporanShift', 'Laporan Shift', 'N', -1),
	(11, 7, 'mnFOLaporanTranShift', 'Laporan Transaksi Shift', 'N', -1),
	(12, 7, 'mnFOHomeService', 'Home Service', 'N', -1),
	(13, 7, 'mnFOCheckup', 'Checkup Khusus', 'N', -1),
	(14, 0, 'mnProses', 'Proses', 'N', -1),
	(15, 14, 'mnSampling', 'Sampling', 'N', -1),
	(16, 14, 'mnRujukan', 'Rujukan', 'N', -1),
	(17, 14, 'mnWorklist', 'Worklist', 'N', -1),
	(18, 14, 'mnIsiHasil', 'Isi Hasil', 'N', -1),
	(19, 18, 'mnIsiHasilNolab', 'By Nomor Lab', 'N', -1),
	(20, 18, 'mnIsiHasilPx', 'By Pemeriksaan', 'N', -1),
	(21, 18, 'mnBySusulan', 'Susulan', 'N', -1),
	(22, 14, 'mnCetakHasil', 'Cetak Hasil', 'N', -1),
	(23, 0, 'mnLap', 'Laporan', 'N', -1),
	(24, 23, 'mnLapJual', 'Penjualan', 'N', -1),
	(25, 23, 'mnLapPdpt', 'Pendapatan', 'N', -1),
	(26, 23, 'mnLapDokter', 'Dokter', 'N', -1),
	(27, 23, 'mnLapPiutang', 'Piutang', 'N', -1),
	(28, 23, 'mnLapTagih', 'Penagihan', 'N', -1),
	(29, 23, 'mnLapReagen', 'Reagen', 'N', -1),
	(30, 23, 'mnLapRekapDokter', 'Rekap Dokter', 'N', -1),
	(31, 23, 'mnLapAntar', 'Pengantaran', 'N', -1),
	(32, 0, 'mnAdmin', 'Administrasi', 'N', -1),
	(33, 32, 'mnReferensi', 'Menu Table Referensi', 'N', -1),
	(34, 33, 'mnRef', 'Referensi Tipe Pasien', 'Y', 0),
	(35, 33, 'mnRef', 'Referensi Tipe Pembayaran', 'Y', 1),
	(36, 33, 'mnRef', 'Referensi Tipe Hasil', 'Y', 2),
	(37, 33, 'mnRef', 'Referensi Jenis Sample', 'Y', 3),
	(38, 33, 'mnRef', 'Referensi Layanan', 'Y', 4),
	(39, 33, 'mnRef', 'Referensi Departemen', 'Y', 5),
	(40, 33, 'mnRef', 'Referensi Wilayah Marketing', 'Y', 6),
	(41, 33, 'mnRef', 'Referensi Panggilan', 'Y', 7),
	(42, 33, 'mnRef', 'Referensi Agama', 'Y', 8),
	(43, 33, 'mnRef', 'Referensi Jenis Kelamin', 'Y', 9),
	(44, 33, 'mnRef', 'Referensi Urgency', 'Y', 10),
	(45, 33, 'mnRef', 'Kamus Test', 'Y', 11),
	(46, 33, 'mnKelompokTest', 'Kelompok Test', 'N', -1),
	(47, 33, 'mnLabRujukan', 'Lab Rujukan', 'N', -1),
	(48, 33, 'mnPenomoran', 'Penomoran', 'N', -1),
	(49, 32, 'mnUser', 'Menu User', 'N', -1),
	(50, 32, 'mnVendor', 'Menu Vendor', 'N', -1),
	(51, 32, 'mnAlat', 'Menu Alat', 'N', -1),
	(52, 32, 'mnDokter', 'Menu Dokter', 'N', -1),
	(53, 32, 'mnTestInduk', 'Menu Test', 'N', -1),
	(54, 53, 'mnAdmTestDraft', 'Draft List', 'N', -1),
	(55, 54, 'mnAdtList', 'List Test', 'N', -1),
	(56, 54, 'mnAdtListHarga', 'List Test Harga', 'N', -1),
	(57, 53, 'mnTest', 'Test', 'N', -1),
	(58, 53, 'mnTestEng', 'Test Inggris', 'N', -1),
	(59, 53, 'mnTestSI', 'Test S/I', 'N', -1),
	(60, 53, 'mnHargaTest', 'Harga Test', 'N', -1),
	(61, 53, 'mnHargaLabRujukan', 'Harga Lab Rujukan', 'N', -1),
	(62, 53, 'mnTestNormal', 'Test Normal', 'N', -1),
	(63, 32, 'mnPasien', 'Pasien', 'N', -1),
	(64, 32, 'mnCetakDokter', 'Cetak Dokter', 'N', -1),
	(65, 32, 'mnCetakPasien', 'Cetak Pasien', 'N', -1),
	(66, 32, 'mnUltah', 'Laporan Ultah', 'N', -1),
	(67, 32, 'mnReagen', 'Reagen', 'N', -1),
	(68, 67, 'mnReagenAdm', 'Administrasi', 'N', -1),
	(69, 67, 'mnReagenAdjust', 'Adjustment', 'N', -1),
	(70, 67, 'mnReagenPosting', 'Posting', 'N', -1),
	(71, 67, 'mnReagenLaporan', 'Laporan', 'N', -1),
	(72, 67, 'mnReagenIn', 'Incoming', 'N', -1),
	(73, 67, 'mnReagenAssign', 'Assignment', 'N', -1),
	(74, 32, 'mnReward', 'Reward', 'N', -1),
	(75, 23, 'mnLapRujukan', 'Lap. Rujukan', 'N', -1),
	(76, 33, 'mnWilP', 'Referensi Wilayah Pasien', 'N', -1),
	(77, 33, 'mnSpeDokter', 'Referensi Spesialisasi Dokter', 'N', -1),
	(78, 32, 'mnExportDokter', 'Export Dokter', 'N', -1),
	(79, 32, 'mnExportPasien', 'Export Pasien', 'N', -1),
	(80, 23, 'mnLapPemasaranLab', 'Laporan Pemasaran Lab', 'N', -1),
	(81, 23, 'mnLapDokterBaru', 'Laporan Dokter Baru', 'N', -1),
	(82, 32, 'mnHargaBaca', 'Admin Harga Pembacaan', 'N', -1),
	(83, 23, 'mnLapDokterBaca', 'Laporan Dokter Pembacaan', 'N', -1),
	(84, 23, 'mnCeklistKirim', 'Checklist Kirim Hasil', 'N', -1),
	(85, 23, 'mnTipePasienHasil', 'Hasil by Tipe Pasien', 'N', -1);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping data for table gsp.panel_detail: ~94 rows (approximately)
DELETE FROM `panel_detail`;
/*!40000 ALTER TABLE `panel_detail` DISABLE KEYS */;
INSERT INTO `panel_detail` (`id`, `test_id`, `panel_header_id`, `user_id`, `tanggal`, `flg_aktif`) VALUES
	(1, 89, 1, 0, '2019-07-01 12:27:27', 'Y'),
	(2, 229, 1, 0, '2019-07-01 12:28:09', 'Y'),
	(3, 141, 1, 0, '2019-07-01 12:28:37', 'Y'),
	(4, 20, 1, 0, '2019-07-01 12:29:07', 'Y'),
	(5, 21, 1, 0, '2019-07-01 12:29:23', 'Y'),
	(6, 22, 1, 0, '2019-07-01 12:29:47', 'Y'),
	(7, 27, 1, 0, '2019-07-01 12:30:38', 'Y'),
	(8, 28, 1, 0, '2019-07-01 12:30:54', 'Y'),
	(9, 37, 1, 0, '2019-07-01 12:31:17', 'Y'),
	(10, 67, 1, 0, '2019-07-01 12:31:50', 'Y'),
	(11, 68, 1, 0, '2019-07-01 12:32:15', 'Y'),
	(12, 70, 1, 0, '2019-07-01 12:32:47', 'Y'),
	(13, 83, 1, 0, '2019-07-01 12:33:07', 'Y'),
	(14, 40, 1, 0, '2019-07-01 12:33:43', 'Y'),
	(15, 49, 1, 0, '2019-07-01 12:34:08', 'Y'),
	(16, 917, 1, 0, '2019-07-01 15:15:08', 'Y'),
	(17, 218, 1, 0, '2019-07-01 12:35:21', 'Y'),
	(18, 219, 1, 0, '2019-07-01 12:35:42', 'Y'),
	(19, 408, 1, 0, '2019-07-01 12:36:12', 'Y'),
	(20, 393, 1, 0, '2019-07-01 12:37:20', 'Y'),
	(21, 394, 1, 0, '2019-07-01 12:37:51', 'Y'),
	(22, 67, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(23, 68, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(24, 69, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(25, 83, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(26, 20, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(27, 21, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(28, 22, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(29, 26, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(30, 40, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(31, 37, 2, 0, '2019-07-01 12:50:29', 'Y'),
	(33, 229, 3, 0, '2019-09-08 22:30:43', 'Y'),
	(34, 89, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(35, 229, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(36, 20, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(37, 21, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(38, 22, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(39, 27, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(40, 28, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(41, 37, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(42, 67, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(43, 68, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(44, 70, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(45, 83, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(46, 40, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(47, 49, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(48, 393, 3, 0, '2019-09-08 22:36:13', 'Y'),
	(49, 229, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(50, 20, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(51, 21, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(52, 22, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(53, 27, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(54, 28, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(55, 67, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(56, 68, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(57, 70, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(58, 83, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(59, 40, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(60, 49, 4, 0, '2019-09-08 22:39:53', 'Y'),
	(64, 38, 4, 0, '2019-09-08 22:41:10', 'Y'),
	(65, 89, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(66, 229, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(67, 141, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(68, 20, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(69, 21, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(70, 22, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(71, 27, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(72, 28, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(73, 37, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(74, 67, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(75, 68, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(76, 70, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(77, 83, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(78, 40, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(79, 49, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(80, 917, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(81, 408, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(82, 393, 5, 0, '2019-09-08 22:45:08', 'Y'),
	(96, 141, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(97, 20, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(98, 21, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(99, 22, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(100, 27, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(101, 28, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(102, 67, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(103, 68, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(104, 70, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(105, 83, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(106, 40, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(107, 49, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(108, 917, 6, 0, '2019-09-08 22:47:50', 'Y'),
	(111, 779, 7, 0, '2019-09-08 22:50:19', 'Y'),
	(112, 778, 7, 0, '2019-09-08 22:50:54', 'Y'),
	(113, 78, 7, 0, '2019-09-08 22:51:20', 'Y');
/*!40000 ALTER TABLE `panel_detail` ENABLE KEYS */;

-- Dumping data for table gsp.penomoran: 1 rows
DELETE FROM `penomoran`;
/*!40000 ALTER TABLE `penomoran` DISABLE KEYS */;
INSERT INTO `penomoran` (`last_nolab`, `pf1_nolab`, `pf2_nolab`, `nolab_length`, `nolab_max`, `reset_nolab`, `last_noreg`, `pf1_noreg`, `pf2_noreg`, `noreg_length`, `noreg_max`, `reset_noreg`, `last_nodokter`, `pf1_nodokter`, `pf2_nodokter`, `nodokter_length`, `nodokter_max`, `reset_nodokter`, `last_nonota`, `pf1_nonota`, `pf2_nonota`, `nonota_length`, `nonota_max`, `reset_nonota`, `pf1_kuitansi`, `pf2_kuitansi`, `kuitansi_length`, `kuitansi_max`, `reset_kuitansi`, `last_kuitansi`) VALUES
	('2020-01-27', '', 'date_format(now(),\'5%y%m%d\')', 3, 2, 22, '2020-01-18', '406', 'date_format(now(),\'5%y%m%d\')', 5, 3118, 3, '0000-00-00', '', '', 1, 1, 1, '2020-01-28', '', 'date_format(now(),\'5%y%m%d\')', 4, 7, 2, '', '', 5, 26, 4, '2019-10-10');
/*!40000 ALTER TABLE `penomoran` ENABLE KEYS */;

-- Dumping data for table gsp.penomoran_ino: 1 rows
DELETE FROM `penomoran_ino`;
/*!40000 ALTER TABLE `penomoran_ino` DISABLE KEYS */;
INSERT INTO `penomoran_ino` (`last_nolab`, `pf1_nolab`, `pf2_nolab`, `nolab_length`, `nolab_max`, `reset_nolab`, `last_noreg`, `pf1_noreg`, `pf2_noreg`, `noreg_length`, `noreg_max`, `reset_noreg`, `last_nodokter`, `pf1_nodokter`, `pf2_nodokter`, `nodokter_length`, `nodokter_max`, `reset_nodokter`, `last_nonota`, `pf1_nonota`, `pf2_nonota`, `nonota_length`, `nonota_max`, `reset_nonota`) VALUES
	('2004-09-03', '', 'date_format(now(),\'5%y%m\')', 3, 87, 3, '2004-09-02', 'P-', 'date_format(now(),\'5%y%m%d\')', 8, 83, 3, '0000-00-00', '', '', 1, 1, 1, '2004-09-02', 'I-', 'date_format(now(),\'5%y%m\')', 4, 85, 3);
/*!40000 ALTER TABLE `penomoran_ino` ENABLE KEYS */;

-- Dumping data for table gsp.reagen: 3 rows
DELETE FROM `reagen`;
/*!40000 ALTER TABLE `reagen` DISABLE KEYS */;
INSERT INTO `reagen` (`id`, `nama`, `satuan_in`, `satuan_out`, `conversi`, `flag_aktif`, `total`, `vendor_id`) VALUES
	(1, 'BILT-R1', 'botol', 'mL', 50.000, 'Y', 15.00, 5),
	(2, 'BILT-R2', 'botol', 'mL', 22.000, 'Y', 5.00, 5),
	(3, 'XXX', 'Gelas', 'tetes', 1000.000, 'Y', 0.00, 1);
/*!40000 ALTER TABLE `reagen` ENABLE KEYS */;

-- Dumping data for table gsp.ruangan_pasien: ~2 rows (approximately)
DELETE FROM `ruangan_pasien`;
/*!40000 ALTER TABLE `ruangan_pasien` DISABLE KEYS */;
INSERT INTO `ruangan_pasien` (`id`, `nama`) VALUES
	(1, '-'),
	(2, 'ADA');
/*!40000 ALTER TABLE `ruangan_pasien` ENABLE KEYS */;

-- Dumping data for table gsp.satuan_umur: 4 rows
DELETE FROM `satuan_umur`;
/*!40000 ALTER TABLE `satuan_umur` DISABLE KEYS */;
INSERT INTO `satuan_umur` (`id`, `nama`, `konversi`) VALUES
	(1, 'Tahun', 365),
	(2, 'Bulan', 30),
	(3, 'Minggu', 7),
	(4, 'Hari', 1);
/*!40000 ALTER TABLE `satuan_umur` ENABLE KEYS */;

-- Dumping data for table gsp.spesialis: 4 rows
DELETE FROM `spesialis`;
/*!40000 ALTER TABLE `spesialis` DISABLE KEYS */;
INSERT INTO `spesialis` (`nama`) VALUES
	('Internist'),
	('SpA'),
	('SpOG'),
	('Umum');
/*!40000 ALTER TABLE `spesialis` ENABLE KEYS */;

-- Dumping data for table gsp.tipe_hasil: 7 rows
DELETE FROM `tipe_hasil`;
/*!40000 ALTER TABLE `tipe_hasil` DISABLE KEYS */;
INSERT INTO `tipe_hasil` (`id`, `kode`, `nama`, `nama_eng`, `nama_prc`) VALUES
	(1, 'AS', 'AMBIL SENDIRI', '', ''),
	(2, 'KR', 'KIRIM KE RUMAH', '', ''),
	(3, 'KD', 'KIRIM KE DOKTER', '', ''),
	(4, 'KK', 'KIRIM KE KANTOR', NULL, NULL),
	(5, 'EM', 'e-mail', NULL, NULL),
	(6, 'FX', 'Fax', NULL, NULL),
	(7, 'AK', 'AMBIL & KIRIM', NULL, NULL);
/*!40000 ALTER TABLE `tipe_hasil` ENABLE KEYS */;

-- Dumping data for table gsp.tipe_pasien: 2 rows
DELETE FROM `tipe_pasien`;
/*!40000 ALTER TABLE `tipe_pasien` DISABLE KEYS */;
INSERT INTO `tipe_pasien` (`id`, `nama`, `alamat`, `telepon`, `up_penagihan`, `flg_tagihan`) VALUES
	(1, 'REGULER', '\r\n\r\n\r\n', '', '', 'N'),
	(37, 'Klinik Anugerah', '', '', '', 'N');
/*!40000 ALTER TABLE `tipe_pasien` ENABLE KEYS */;

-- Dumping data for table gsp.urgency: 2 rows
DELETE FROM `urgency`;
/*!40000 ALTER TABLE `urgency` DISABLE KEYS */;
INSERT INTO `urgency` (`id`, `nama`) VALUES
	(1, 'NORMAL'),
	(2, 'CITO');
/*!40000 ALTER TABLE `urgency` ENABLE KEYS */;

-- Dumping data for table gsp.vendor: 4 rows
DELETE FROM `vendor`;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` (`id`, `kode`, `nama`, `alamat`, `telepon`, `fax`, `email`, `contact_person`, `hp`, `keterangan`) VALUES
	(1, 'V001', 'APL,PT', 'Pulau Gadung', '021-4220133', '021-4220134', 'apl@apl.com', 'Yonky Hernadi', '0811486451', 'Kepala Sub DivisiLab\r\n'),
	(3, 'V002', 'SYSMEX INDONESIA,PT', 'Jl MT HARYONO 31 JAKARTA', '021-84588660', '021-84588661', 'sysmex@sysmex.co.id', 'Andry Gunawan', '0811888567', 'GM SYSMEX INDONESIA\r\n'),
	(4, 'V003', 'ABBOTT INDONESIA,PT', 'Jl KUNINGAN BARAT I NO 26 JAKARTA SELATAN', '021-61955619', '021-61955620', 'abbott@abbott.com', 'FELISIANA MAYA', '0816555876', 'GM RAPID TEST ABBOTT INDONESIA\r\n'),
	(5, 'V004', 'ROCHE INDONESIA,PT', 'ARTAGRAHA BUILDING 21 Fl', '021 - 51400081', '-', 'roche@roche.com', 'BUDI SETIAWAN', '0811213456', 'SPESIALIS KIMIA\r\n');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;

-- Dumping data for table gsp.wilayah: 7 rows
DELETE FROM `wilayah`;
/*!40000 ALTER TABLE `wilayah` DISABLE KEYS */;
INSERT INTO `wilayah` (`nama`) VALUES
	('CENGKARENG'),
	('GUNUNG SAHARI'),
	('KEMAYORAN'),
	('Lain-lain'),
	('PADEMANGAN'),
	('SUNTER'),
	('TANGGERANG');
/*!40000 ALTER TABLE `wilayah` ENABLE KEYS */;

-- Dumping data for table gsp.wilayah_marketing: 39 rows
DELETE FROM `wilayah_marketing`;
/*!40000 ALTER TABLE `wilayah_marketing` DISABLE KEYS */;
INSERT INTO `wilayah_marketing` (`id`, `kode`, `nama`, `nama_eng`, `nama_prc`) VALUES
	(1, '001', 'SUNTER', NULL, NULL),
	(2, '002', 'SUMUR BATU', NULL, NULL),
	(3, '003', 'KARANG ANYAR', NULL, NULL),
	(4, '004', 'KEMAYORAN', NULL, NULL),
	(5, '005', 'MANGGA BESAR', NULL, NULL),
	(6, '006', 'BEKASI', NULL, NULL),
	(7, '007', 'TANGERANG', NULL, NULL),
	(8, '008', 'BOGOR', NULL, NULL),
	(9, '009', 'KELAPA GADING', NULL, NULL),
	(10, '010', 'CIKINI', NULL, NULL),
	(11, '011', 'SENEN', NULL, NULL),
	(12, '012', 'TANAH ABANG', NULL, NULL),
	(13, '013', 'PULOMAS', NULL, NULL),
	(14, '014', 'KARTINI', NULL, NULL),
	(15, '015', 'PLUIT', NULL, NULL),
	(16, '016', 'TOMANG', NULL, NULL),
	(17, '017', 'TANJUNG PRIOK', NULL, NULL),
	(18, '018', 'JATINEGARA', NULL, NULL),
	(19, '019', 'PASAR BARU', NULL, NULL),
	(20, '020', 'BUNGUR BESAR', NULL, NULL),
	(21, '021', 'TAMAN SARI', NULL, NULL),
	(22, '022', 'GREEN GARDEN', NULL, NULL),
	(23, '023', 'KEBUN JERUK', NULL, NULL),
	(24, '024', 'KAYU PUTIH', NULL, NULL),
	(25, '025', 'KAYU MANIS', NULL, NULL),
	(26, '026', 'PADEMANGAN', NULL, NULL),
	(27, '027', 'KOTA', NULL, NULL),
	(28, '028', 'TANAH TINGGI', NULL, NULL),
	(29, '029', 'SENEN', NULL, NULL),
	(30, '030', 'HAYAM WURUK', NULL, NULL),
	(31, '031', 'KRAMAT', NULL, NULL),
	(32, '032', 'CEMPAKA PUTIH', NULL, NULL),
	(33, '033', 'ANCOL', NULL, NULL),
	(34, '034', 'P. JAYAKARTA', NULL, NULL),
	(35, '035', 'HUSADA', NULL, NULL),
	(36, '036', 'GROGOL', NULL, NULL),
	(37, '037', 'CIBUBUR', NULL, NULL),
	(38, '038', 'LAIN-LAIN', NULL, NULL),
	(39, '039', 'GUNUNG SAHARI', NULL, NULL);
/*!40000 ALTER TABLE `wilayah_marketing` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
