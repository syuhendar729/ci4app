-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2021 at 02:37 PM
-- Server version: 10.5.8-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `judul` varchar(256) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `rating` float NOT NULL,
  `genre` varchar(256) NOT NULL,
  `sinopsis` varchar(10240) NOT NULL,
  `image` varchar(256) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anime`
--

INSERT INTO `anime` (`id`, `judul`, `slug`, `rating`, `genre`, `sinopsis`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Death Note', 'death-note', 8.68, ' Mystery, Police, Psychological, Supernatural, Thriller', 'Ceritanya mengisahkan tentang Light Yagami, seorang remaja jenius yang menemukan buku catatan asing misterius yang disebut \"Death Note\"—yang dimiliki oleh Shinigami bernama Ryuk, dan memberikan penggunanya kemampuan supernatural untuk membunuh siapa pun yang namanya tertulis pada buku tersebut.', 'deathnote.jpg', '2020-12-26 01:20:50', NULL),
(2, 'Shingeki no Kyojin\r\n', 'shingeki-no-kyojin', 8.51, 'Action, Drama, Fantasy, Military, Shounen, Super power', 'Bercerita tentang seorang anak bernama Eren Jaeger, ia merupakan seorang anak yang\r\nmenyaksikan kejadian kelam tersebut, ibunya sendiri telah tatkala Seekor titan yang\r\nmemakan ibunya tepat didepan matanya. Umat manusia saat itu hanya bisa pasrah dan\r\nmengungsi kebagian terdalam dari dinding.\r\n\r\nDirasuki amarah yang luar biasa, Eren berjanji membalaskan dendamnya dan akan\r\nmembunuh semua titan di dunia ini hingga tak tersisa satupun mereka.\r\n\r\nBersamaan dengan 2 sahabatnya Mikasa dan Armin. Kini mereka bertiga masuk kedalam\r\nPasukan Pengintai. Pasukan Pengintai adalah pasukan yang paling sering bertemu dan\r\nberperang langsung melawan para titan karena tugas mereka yakni melakukan observasi\r\ndiluar dinding.\r\n\r\nDisinilah cerita Eren dan teman-temannya dimulai menjadi Calon Pasukan Pengintai.\r\n', 'snk.jpg', '2020-12-26 02:40:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(11, '2020-12-29-035016', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1609227815, 1),
(12, '2020-12-29-072211', 'App\\Database\\Migrations\\Coba', 'default', 'App', 1609227815, 1),
(13, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1609566677, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Najib Halim', 'mustofa.ade@gmail.co.id', 'Dk. Nangka No. 292, Kendari 52342, SumSel', '2014-12-02 09:37:30', '2007-07-29 13:42:58'),
(2, 'Ellis Maria Puspita', 'mayasari.arsipatra@mansur.tv', 'Dk. Uluwatu No. 55, Pariaman 76192, SulSel', '2006-10-17 19:42:33', '1989-01-02 13:31:03'),
(3, 'Ani Nuraini', 'elvina.budiman@pertiwi.biz', 'Gg. Pasirkoja No. 356, Blitar 20287, SumUt', '1987-06-09 04:45:26', '1999-11-15 01:24:16'),
(4, 'Zizi Melani', 'laswi.andriani@hassanah.biz.id', 'Ki. PHH. Mustofa No. 812, Medan 91234, Riau', '2019-01-09 02:48:12', '1977-11-13 19:36:37'),
(5, 'Bahuwarna Daliono Rajata', 'cinta.hakim@zulaika.id', 'Ki. Otto No. 161, Sabang 75863, Jambi', '2008-11-02 07:19:40', '2018-06-30 00:18:22'),
(6, 'Saiful Simanjuntak', 'violet.nasyidah@saragih.or.id', 'Ds. Katamso No. 167, Gorontalo 30082, Aceh', '1992-08-20 20:21:02', '1988-01-27 12:00:39'),
(7, 'Padmi Andriani', 'martani58@gmail.co.id', 'Kpg. Ketandan No. 867, Semarang 92471, KalTim', '1975-08-08 18:49:36', '1995-06-06 08:23:28'),
(8, 'Widya Suartini', 'zulaikha73@firgantoro.co.id', 'Kpg. Suprapto No. 942, Pematangsiantar 18304, Jambi', '1989-04-30 02:13:58', '2000-08-29 09:59:33'),
(9, 'Intan Natalia Mandasari S.Sos', 'fathonah.puspita@yahoo.co.id', 'Ki. Bambon No. 297, Prabumulih 89046, Lampung', '1993-07-05 23:14:14', '1994-11-21 08:55:44'),
(10, 'Tirtayasa Daniswara Sihombing S.H.', 'nugroho.dipa@lestari.com', 'Psr. Sampangan No. 405, Kediri 88314, DKI', '1972-11-15 08:36:44', '2007-12-29 13:59:12'),
(11, 'Usman Mandala M.Pd', 'hutapea.michelle@gmail.co.id', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 864, Administrasi Jakarta Utara 73658, Riau', '2004-06-25 03:02:54', '2014-06-16 13:20:07'),
(12, 'Yuliana Wani Anggraini S.Sos', 'kawaya77@winarno.desa.id', 'Jln. Gatot Subroto No. 317, Tangerang 69325, KalSel', '1994-09-28 01:11:37', '2008-04-27 00:26:51'),
(13, 'Opung Situmorang S.Kom', 'wirda.budiyanto@yahoo.co.id', 'Jr. Abang No. 959, Pariaman 30443, KalTeng', '1984-11-08 03:25:10', '1971-01-21 01:35:52'),
(14, 'Yulia Namaga S.IP', 'tantri.fujiati@hutasoit.tv', 'Ds. Barasak No. 486, Palopo 80107, KalTeng', '2007-02-28 09:22:04', '1998-03-17 12:36:53'),
(15, 'Cindy Widiastuti', 'syuliarti@suryatmi.biz.id', 'Jr. Muwardi No. 358, Banda Aceh 42281, KalTim', '2006-04-06 08:33:30', '2006-08-30 17:54:59'),
(16, 'Lili Salimah Susanti S.Pd', 'lala01@gmail.com', 'Jln. Baja Raya No. 505, Tidore Kepulauan 26158, KalBar', '2011-09-26 11:40:19', '1978-11-21 12:39:09'),
(17, 'Bagas Prayoga Gunawan S.Kom', 'kwulandari@gmail.co.id', 'Ki. Sugiyopranoto No. 116, Padangpanjang 75492, SulBar', '1991-07-24 08:57:16', '1970-05-27 17:30:57'),
(18, 'Jarwi Viman Wacana', 'tantri.irawan@hariyah.web.id', 'Kpg. Sukajadi No. 181, Solok 76133, Lampung', '1992-10-31 20:32:33', '2006-02-12 23:04:19'),
(19, 'Radit Halim Wacana', 'karsana84@yahoo.com', 'Jr. Sutami No. 824, Tanjung Pinang 92585, SumSel', '2013-11-19 17:06:35', '2002-08-25 06:27:50'),
(20, 'Titi Fujiati', 'wardaya.agustina@pudjiastuti.in', 'Kpg. Antapani Lama No. 81, Singkawang 31378, KalTeng', '1994-09-27 00:59:09', '1978-07-07 19:18:21'),
(21, 'Siska Wijayanti', 'tmayasari@yahoo.com', 'Jr. Agus Salim No. 375, Kendari 16216, NTT', '1979-05-17 05:17:31', '1976-03-10 15:16:12'),
(22, 'Damu Anggriawan', 'oni.nainggolan@simanjuntak.my.id', 'Ds. Pacuan Kuda No. 762, Administrasi Jakarta Barat 50468, Bali', '1995-09-27 14:12:33', '2012-09-06 18:36:22'),
(23, 'Melinda Pudjiastuti', 'emanullang@gmail.com', 'Dk. Sukabumi No. 473, Tangerang Selatan 91865, Gorontalo', '1974-03-17 16:21:49', '2003-12-16 18:21:53'),
(24, 'Cakrabuana Saadat Tampubolon', 'cfarida@gmail.com', 'Jln. Untung Suropati No. 633, Kupang 36492, Gorontalo', '1987-09-17 21:42:07', '2004-05-12 19:01:50'),
(25, 'Wani Wahyuni', 'olivia.dabukke@farida.biz', 'Psr. Fajar No. 793, Mataram 27307, Bengkulu', '1996-12-09 11:16:07', '1978-04-13 10:05:09'),
(26, 'Garan Mandala', 'palastri.wani@yahoo.com', 'Kpg. Abdullah No. 729, Binjai 87805, Bali', '1996-10-01 03:21:20', '2000-04-19 23:21:01'),
(27, 'Alambana Thamrin', 'zkuswoyo@yahoo.co.id', 'Dk. Ujung No. 532, Tanjungbalai 81208, NTB', '1983-05-12 04:02:45', '2001-07-14 15:38:46'),
(28, 'Gasti Puspita', 'hmangunsong@nainggolan.web.id', 'Gg. Industri No. 871, Tangerang 28342, KalSel', '2013-08-17 11:08:48', '2013-09-21 06:48:33'),
(29, 'Lidya Yuliarti S.H.', 'daryani@gmail.co.id', 'Jr. Industri No. 780, Bogor 16135, SumBar', '1998-11-23 00:27:26', '2018-08-16 11:01:41'),
(30, 'Umay Marbun', 'hendri.sitorus@hidayat.name', 'Gg. Basuki Rahmat  No. 164, Palembang 56654, NTB', '1992-04-08 12:13:27', '1972-01-16 09:18:02'),
(31, 'Dewi Cornelia Mardhiyah S.E.', 'paris.sitorus@yahoo.com', 'Dk. Lumban Tobing No. 339, Pagar Alam 43294, Aceh', '2009-08-21 20:40:19', '2016-12-29 16:54:28'),
(32, 'Maria Usada', 'dariati37@yahoo.com', 'Kpg. Bazuka Raya No. 16, Payakumbuh 97461, DIY', '2001-12-09 02:42:52', '2009-10-05 21:21:04'),
(33, 'Galih Prasetya S.Psi', 'qprabowo@pangestu.id', 'Jln. Jakarta No. 351, Bekasi 76145, SulUt', '2007-10-29 01:43:51', '1991-08-16 13:47:51'),
(34, 'Daryani Saptono S.E.', 'febi51@gmail.com', 'Gg. B.Agam 1 No. 353, Surabaya 26483, NTT', '2014-01-07 18:00:47', '1995-09-03 07:03:47'),
(35, 'Lidya Bella Lestari', 'nardi.lazuardi@gmail.com', 'Ds. Ikan No. 565, Banjarmasin 38500, KalTeng', '1993-11-22 10:35:21', '1992-02-28 16:16:54'),
(36, 'Karya Budiman', 'pudjiastuti.dalima@yahoo.co.id', 'Psr. Baranang No. 721, Administrasi Jakarta Utara 22955, BaBel', '1984-08-09 06:28:46', '2011-11-11 23:15:04'),
(37, 'Luluh Radit Nashiruddin S.T.', 'yuliarti.azalea@saputra.ac.id', 'Jln. Hang No. 311, Subulussalam 93377, MalUt', '1987-09-16 19:04:58', '1979-11-09 07:56:17'),
(38, 'Yani Laksita M.M.', 'ngunawan@rahimah.net', 'Ds. Babah No. 752, Surakarta 50042, SulBar', '2016-07-23 22:31:14', '2003-10-07 08:52:47'),
(39, 'Belinda Pratiwi S.H.', 'vpermadi@utama.co.id', 'Jln. Banceng Pondok No. 648, Tanjung Pinang 58196, JaTim', '1977-04-01 07:13:08', '2002-05-06 05:25:24'),
(40, 'Zaenab Rahayu', 'nugroho.yuliana@rahayu.name', 'Jln. Barat No. 107, Bandung 76602, NTT', '1991-08-13 16:42:20', '2016-12-16 16:31:36'),
(41, 'Pia Suartini', 'betania13@pangestu.org', 'Kpg. B.Agam Dlm No. 283, Pekalongan 50313, KalBar', '1984-09-15 19:36:39', '1997-08-12 22:42:21'),
(42, 'Estiawan Caket Saputra', 'tamba.asmianto@gmail.com', 'Jln. Casablanca No. 102, Magelang 64708, JaBar', '1979-12-11 07:36:46', '2015-05-12 01:34:16'),
(43, 'Raisa Kasiyah Nasyidah', 'bella.uyainah@gmail.com', 'Jr. Jakarta No. 261, Salatiga 24332, SulTeng', '2019-11-07 14:13:47', '1998-04-23 00:42:21'),
(44, 'Naradi Firmansyah', 'wulandari.gilda@zulaika.biz.id', 'Ki. Kali No. 109, Palu 80215, KalSel', '2014-06-04 23:20:16', '2016-08-10 01:03:08'),
(45, 'Hana Irma Suryatmi S.Ked', 'xnatsir@yahoo.co.id', 'Jln. Gremet No. 497, Medan 68032, JaTeng', '1985-02-06 00:59:07', '1976-04-16 09:33:49'),
(46, 'Salwa Qori Mandasari S.T.', 'salman23@utami.my.id', 'Psr. Gading No. 401, Sibolga 73303, Gorontalo', '2002-11-14 12:46:46', '1981-04-02 12:34:52'),
(47, 'Aurora Handayani', 'prakasa.paramita@gmail.com', 'Dk. Honggowongso No. 161, Surabaya 49882, SulTra', '1983-12-23 10:58:41', '1977-10-09 15:30:02'),
(48, 'Cakrawala Mustofa', 'cprabowo@hardiansyah.asia', 'Jr. Cikapayang No. 550, Depok 97752, PapBar', '1990-08-27 08:34:10', '1994-12-28 23:54:00'),
(49, 'Harto Prasetya Hutapea S.T.', 'eharyanti@rahayu.or.id', 'Gg. Padang No. 359, Solok 99308, JaTeng', '1976-09-28 09:14:26', '2010-08-06 16:58:26'),
(50, 'Laras Palastri', 'kania51@gunawan.go.id', 'Jr. Reksoninten No. 59, Bogor 21394, JaTeng', '1981-10-11 17:24:03', '2018-09-15 06:04:32'),
(51, 'Winda Agustina', 'usada.ami@yahoo.com', 'Kpg. Baabur Royan No. 48, Administrasi Jakarta Selatan 19063, KalBar', '1990-03-31 21:52:28', '1997-02-10 02:51:35'),
(52, 'Silvia Laksmiwati', 'victoria78@yuliarti.id', 'Kpg. Bayam No. 308, Binjai 79743, BaBel', '1992-08-14 06:26:02', '2001-02-14 12:35:26'),
(53, 'Garang Dongoran', 'mala42@tarihoran.asia', 'Ki. Bakaru No. 965, Kediri 88982, NTB', '2017-02-26 19:22:52', '1986-04-17 00:43:10'),
(54, 'Ana Usada S.Pt', 'wakiman22@hutasoit.desa.id', 'Jr. Supomo No. 192, Pekanbaru 89533, DKI', '2000-11-01 02:54:34', '1998-12-14 19:23:41'),
(55, 'Himawan Kurniawan', 'ksitorus@tampubolon.id', 'Jr. Ciwastra No. 916, Jayapura 90524, JaTim', '2003-01-16 01:46:19', '1981-10-27 18:55:18'),
(56, 'Safina Namaga', 'urajata@purnawati.go.id', 'Gg. Babadan No. 647, Padang 60450, Jambi', '1982-12-24 22:04:27', '2013-12-04 00:49:11'),
(57, 'Zelda Maryati', 'safitri.wakiman@maulana.asia', 'Ki. Cihampelas No. 157, Tegal 88573, JaTim', '1982-04-24 22:39:51', '2019-03-02 15:43:33'),
(58, 'Eka Catur Natsir S.E.I', 'raina.salahudin@gmail.co.id', 'Kpg. Salak No. 831, Bandung 68631, SumUt', '2013-01-15 20:03:43', '1972-06-19 16:03:14'),
(59, 'Azalea Suryatmi', 'lala72@gmail.co.id', 'Ki. Monginsidi No. 767, Tual 94968, MalUt', '1972-06-28 02:53:10', '1979-11-07 08:10:00'),
(60, 'Martaka Karsana Budiman S.E.', 'eka69@gmail.co.id', 'Jln. Banceng Pondok No. 633, Bandung 67508, SumSel', '2015-05-04 17:07:42', '1984-05-06 13:51:31'),
(61, 'Zizi Nurul Laksita', 'widiastuti.kenzie@nasyiah.or.id', 'Jln. Sutarto No. 894, Metro 54397, SulBar', '1999-06-13 08:54:19', '1979-08-31 08:18:19'),
(62, 'Radika Saptono', 'widodo.elisa@winarno.id', 'Ki. Cikapayang No. 177, Tarakan 65814, KalSel', '1979-04-02 03:21:11', '2000-02-27 04:07:06'),
(63, 'Cahya Dongoran', 'handayani.farah@sihotang.biz', 'Kpg. Laswi No. 569, Pekalongan 32817, KalUt', '2009-02-14 03:08:50', '1983-06-24 14:01:30'),
(64, 'Wasis Tamba', 'olivia38@gmail.com', 'Ds. Perintis Kemerdekaan No. 924, Tanjung Pinang 81931, SulTra', '2013-07-06 11:59:37', '1993-12-08 14:38:35'),
(65, 'Karimah Agustina', 'vera31@gmail.co.id', 'Dk. Sam Ratulangi No. 161, Padang 67336, Lampung', '1984-09-02 01:11:15', '2006-06-14 03:54:13'),
(66, 'Ibun Rajata', 'psitumorang@yahoo.co.id', 'Gg. Sutami No. 30, Depok 25570, Bali', '2020-07-21 13:54:34', '1971-11-16 19:51:15'),
(67, 'Maras Kamidin Kusumo S.E.I', 'kprasetya@gmail.co.id', 'Kpg. Elang No. 792, Tanjungbalai 85304, SulTra', '1992-07-28 21:28:03', '1982-04-16 05:31:17'),
(68, 'Kawaca Jayeng Natsir', 'ismail.wijaya@gmail.co.id', 'Dk. Ters. Buah Batu No. 409, Tarakan 31258, Bengkulu', '1988-10-27 01:16:28', '1994-03-11 13:36:38'),
(69, 'Lutfan Jamil Nainggolan', 'nwidiastuti@yahoo.co.id', 'Gg. Eka No. 190, Palu 41467, KalTim', '1998-03-04 20:52:33', '1975-08-19 05:12:32'),
(70, 'Rahayu Usamah', 'siregar.umi@yahoo.com', 'Dk. Bakin No. 614, Banjar 24837, KepR', '1976-06-02 00:08:17', '1998-11-11 04:02:04'),
(71, 'Siti Riyanti', 'ellis.lailasari@kuswandari.org', 'Dk. Jayawijaya No. 245, Makassar 42614, Gorontalo', '1985-07-20 08:45:58', '1979-05-08 22:34:41'),
(72, 'Kania Yolanda', 'juli73@wijayanti.asia', 'Dk. Pasirkoja No. 173, Pekanbaru 87877, SumUt', '2010-11-18 12:57:56', '2010-07-19 05:11:07'),
(73, 'Padmi Lestari S.Ked', 'tasnim.damanik@suartini.info', 'Psr. Baranang Siang No. 524, Tual 78801, SulTeng', '2007-08-03 08:48:07', '1993-02-09 22:50:44'),
(74, 'Jaya Hutasoit', 'nugraha.padmasari@gunarto.org', 'Ki. B.Agam Dlm No. 891, Mojokerto 61843, KalBar', '2003-12-22 18:57:38', '1982-11-15 14:56:08'),
(75, 'Darijan Rizki Putra', 'putri.najmudin@yahoo.com', 'Jln. Jaksa No. 765, Malang 42108, KalTeng', '2000-04-15 18:31:54', '1990-09-09 23:29:35'),
(76, 'Hani Kartika Zulaika', 'ghaliyati.yulianti@farida.id', 'Jln. Wahidin Sudirohusodo No. 996, Metro 96402, DKI', '2005-05-13 16:55:17', '2004-08-31 08:39:48'),
(77, 'Kartika Uchita Pertiwi', 'jamalia81@laksita.in', 'Jr. Ters. Jakarta No. 3, Tanjung Pinang 98343, SulUt', '2001-05-15 22:12:06', '1976-05-26 21:47:44'),
(78, 'Gilang Wahyudin S.Pd', 'nova20@pudjiastuti.asia', 'Psr. Sukajadi No. 58, Padangpanjang 90005, SulBar', '2018-10-04 11:09:35', '1996-07-04 06:51:41'),
(79, 'Malika Wulandari', 'padmi.winarno@yahoo.co.id', 'Ds. Dewi Sartika No. 778, Cirebon 54518, JaBar', '2000-08-29 09:49:07', '1999-07-27 16:14:22'),
(80, 'Yoga Ramadan', 'qjanuar@damanik.co', 'Jr. Dahlia No. 973, Bogor 98446, Banten', '1985-07-08 15:44:47', '2019-10-03 04:52:25'),
(81, 'Tantri Wastuti S.Gz', 'mahendra.siti@yahoo.com', 'Jln. Baik No. 21, Pekalongan 43764, KepR', '1977-08-21 00:57:04', '1992-06-03 03:13:42'),
(82, 'Nilam Hariyah', 'vivi83@anggraini.info', 'Psr. Rajawali No. 37, Banjarmasin 29755, Papua', '1980-03-02 19:37:27', '2016-06-04 10:03:57'),
(83, 'Sabar Gunarto', 'puspita.paris@mandasari.com', 'Gg. Adisucipto No. 376, Tidore Kepulauan 63708, JaBar', '2001-06-07 03:03:43', '2016-10-13 10:14:37'),
(84, 'Raihan Mangunsong', 'cprakasa@yahoo.co.id', 'Psr. Baha No. 247, Batu 95498, KalBar', '2012-06-24 07:57:02', '2010-05-13 20:46:08'),
(85, 'Cemani Napitupulu', 'melani.marwata@gmail.co.id', 'Jr. Tambak No. 848, Subulussalam 44445, DIY', '1977-09-30 13:07:52', '1982-01-07 08:31:18'),
(86, 'Padmi Susanti', 'suryatmi.mala@gmail.com', 'Psr. Agus Salim No. 645, Administrasi Jakarta Timur 61682, KalBar', '1970-04-26 12:38:22', '1988-03-11 07:22:00'),
(87, 'Zizi Gina Hariyah S.Pt', 'wasis07@rajata.tv', 'Ds. Gardujati No. 238, Administrasi Jakarta Utara 76149, Lampung', '1992-03-22 13:43:00', '1985-07-24 21:42:45'),
(88, 'Prabowo Nyana Budiman', 'siregar.raina@yahoo.co.id', 'Jr. Babadan No. 782, Cirebon 57229, Bengkulu', '1979-12-06 16:39:52', '2015-12-22 20:47:54'),
(89, 'Asmadi Utama', 'aurora22@gmail.co.id', 'Ki. K.H. Maskur No. 707, Ternate 24699, SumSel', '1988-03-31 12:37:26', '2012-11-19 19:29:12'),
(90, 'Sabrina Yuliarti', 'caraka.mardhiyah@gmail.co.id', 'Ki. BKR No. 829, Administrasi Jakarta Selatan 25372, NTT', '2012-08-12 23:46:05', '1988-01-08 20:14:35'),
(91, 'Bahuwirya Kurniawan', 'maida.utami@laksita.sch.id', 'Jln. Rajawali No. 991, Padangpanjang 10609, KalTeng', '1983-05-31 10:32:04', '1974-09-15 11:00:05'),
(92, 'Leo Embuh Sirait S.H.', 'uwahyuni@yahoo.com', 'Kpg. Wahid No. 132, Cirebon 40274, SulSel', '1991-05-31 03:08:12', '2009-04-18 08:28:54'),
(93, 'Shania Karimah Haryanti', 'zanggraini@gmail.com', 'Jln. Sudirman No. 358, Pariaman 12811, SulBar', '2012-07-30 17:18:22', '1986-01-21 08:57:38'),
(94, 'Kajen Nashiruddin', 'kasim07@ramadan.info', 'Jln. Batako No. 939, Administrasi Jakarta Timur 52540, Banten', '1988-02-10 03:45:14', '1981-08-02 23:32:21'),
(95, 'Panca Martaka Sihombing', 'marsito.iswahyudi@yahoo.co.id', 'Ds. Barasak No. 705, Kotamobagu 15065, SulSel', '2020-08-20 16:59:51', '2014-02-19 19:24:02'),
(96, 'Mumpuni Waluyo', 'syolanda@mandasari.in', 'Dk. Honggowongso No. 336, Tanjungbalai 98770, Aceh', '2003-12-21 06:05:20', '1994-01-04 18:00:22'),
(97, 'Hartaka Napitupulu M.M.', 'ghani74@nababan.co.id', 'Ds. Moch. Ramdan No. 432, Tangerang Selatan 69984, NTB', '2003-05-28 15:51:57', '2013-03-10 16:22:17'),
(98, 'Luis Santoso', 'kamaria12@yahoo.co.id', 'Ds. Basoka No. 932, Surakarta 82659, DKI', '1992-09-02 11:15:19', '1976-07-26 23:14:50'),
(99, 'Eka Anggraini', 'ilsa.hidayanto@yahoo.com', 'Psr. Adisumarmo No. 587, Samarinda 29819, KalSel', '2001-01-11 20:15:01', '1979-01-27 18:21:37'),
(100, 'Ida Nurdiyanti S.Psi', 'vmahendra@aryani.co', 'Kpg. Qrisdoren No. 774, Parepare 96519, SumBar', '2017-09-03 00:01:54', '2000-05-13 18:36:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
