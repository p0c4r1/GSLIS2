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

-- Dumping structure for table gsp.parameters
CREATE TABLE IF NOT EXISTS `parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value_text` text,
  `value_char` varchar(50) DEFAULT NULL,
  `value_num` decimal(10,0) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table gsp.parameters: ~1 rows (approximately)
/*!40000 ALTER TABLE `parameters` DISABLE KEYS */;
INSERT INTO `parameters` (`id`, `name`, `value_text`, `value_char`, `value_num`, `description`) VALUES
	(5, 'ZPL_LABEL_ORDER', '"^XA~TA000~JSN^LT0^MNW^MTT^PON^PMN^LH0,0^JMA^PR5,5~SD15^JUS^LRN^CI0^XZ\\n",\r\n"^XA\\n",\r\n"^MMT\\n",\r\n"^PW400\\n",\r\n"^LL0240\\n",\r\n"^LS0\\n",\r\n"^FT5,28^A0N,23,24^FH\\^FDLAB NO. <no_lab>^FS\\n",\r\n"^FT246,202^A0N,23,24^FH\\^FD<hp>^FS\\n",\r\n"^FT2,231^A0N,23,24^FH\\^FD<dokter>^FS\\n",\r\n"^FT3,201^A0N,23,24^FH\\^FD<tgl>^FS\\n",\r\n"^FT4,112^A0N,23,24^FH\\^FD<alamat>^FS\\n",\r\n"^FT5,85^A0N,23,24^FH\\^FD<tgl_lahir>^FS\\n",\r\n"^FT316,57^A0N,23,24^FH\\^FD<usia>^FS\\n",\r\n"^BY3,3,58^FT4,176^BCN,,N,N\\n",\r\n"^FD>;5123456789>60^FS\\n",\r\n"^FT4,57^A0N,23,24^FH\\^FD<nama>^FS\\n",\r\n"^LRY^FO1,1^GB397,0,33^FS^LRN\\n",\r\n"^PQ1,0,1,Y^XZ\\n",', NULL, 1, 'Isi dengan ZPL kode\r\nditambahkan dengan \\n dan "\r\n\r\ncontoh:\r\n"^XA~TA000~JSN^LT0^MNW^MTT^PON^PMN^LH0,0^JMA^PR5,5~SD15^JUS^LRN^CI0^XZ\\n",\r\n"^XA\\n",\r\n"^MMT\\n",\r\n"^PW400\\n",\r\n"^LL0240\\n",\r\n"^LS0\\n",\r\n"^FT5,28^A0N,23,24^FH\\^FDLAB NO. <no_lab>^FS\\n",\r\n"^FT331,231^A0N,23,24^FH\\^FD<hp>^FS\\n",\r\n"^FT2,231^A0N,23,24^FH\\^FD<dokter>^FS\\n",\r\n"^FT3,201^A0N,23,24^FH\\^FD<tgl>^FS\\n",\r\n"^FT4,112^A0N,23,24^FH\\^FD<alamat>^FS\\n",\r\n"^FT5,85^A0N,23,24^FH\\^FD<tgl_lahir>^FS\\n",\r\n"^FT316,57^A0N,23,24^FH\\^FD<usia>^FS\\n",\r\n"^BY3,3,58^FT4,176^BCN,,N,N\\n",\r\n"^FD>;5123456789>60^FS\\n",\r\n"^FT4,57^A0N,23,24^FH\\^FD<nama>^FS\\n",\r\n"^LRY^FO1,1^GB397,0,33^FS^LRN\\n",\r\n"^PQ1,0,1,Y^XZ\\n",');
/*!40000 ALTER TABLE `parameters` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
