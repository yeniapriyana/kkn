-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2017 at 01:44 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gin`
--
CREATE DATABASE IF NOT EXISTS `gin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gin`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `member` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`member`, `username`, `password`) VALUES
(2, 'ginanjar', 'ginanjar'),
(3, 'yeni', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`member`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `member` int(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`member`, `nama`, `username`, `email`, `password`) VALUES
(4, 'Yeni Apriyana', 'minion', 'ay@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'Yeni Apriyana', 'admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `member` int(20) NOT NULL,
  `npm` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `total_sks` int(3) NOT NULL,
  `ipk` double NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  `ukuran_pakaian` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`member`, `npm`, `nama`, `jenis_kelamin`, `fakultas`, `jurusan`, `total_sks`, `ipk`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `nomor_telepon`, `ukuran_pakaian`, `username`, `password`) VALUES
(6, 1415061041, 'Yeni Apriyana', 'wanita', 'Teknik', 'Teknik Informatika', 110, 3.5, 'Gisting', '1996-04-09', 'podorejo', '08989934196', 'M', 'yeni', '58ca33f22c319557b472a17d0768c3f3'),
(7, 14150627, 'Meri Fitriani', 'wanita', 'Teknik', 'Teknik Informatika', 110, 3.75, 'Pelembang', '1997-07-27', 'Palembang', '08542223457', 'S', 'meri', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 1415061039, 'Wahyu Aji P', 'pria', 'Teknik', 'Teknik Informatika', 110, 3.8, 'tumijajar', '1997-01-05', 'tumijajajr', '085279643829', 'L', 'aji', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`member`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`member`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `member` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;--
-- Database: `perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `perpustakaan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `perpustakaan`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `kode_anggota` int(11) NOT NULL,
  `kode_prodi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `npm` int(11) DEFAULT NULL,
  `nip` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`kode_anggota`, `kode_prodi`, `nama`, `username`, `email`, `tempat_lahir`, `tanggal_lahir`, `npm`, `nip`, `status`) VALUES
(5, 15, 'Sharon Harrison', 'sharrisone', 'sharrisone@washington.edu', 'Sharon', '0000-00-00', 3, 6898, 0),
(19, 13, 'Douglas Murphy', 'dmurphyc', 'dmurphyc@wp.com', 'Douglas', '0000-00-00', 75, 891, 0),
(30, 18, 'Johnny Richardson', 'jrichardsonh', 'jrichardsonh@telegraph.co.uk', 'Johnny', '0000-00-00', 62, 35616, 0),
(40, 19, 'Sharon Morrison', 'smorrisoni', 'smorrisoni@amazonaws.com', 'Sharon', '0000-00-00', 10012, 643, 0),
(44, 10, 'Douglas Garcia', 'dgarcia9', 'dgarcia9@goodreads.com', 'Douglas', '0000-00-00', 4, 328, 0),
(48, 9, 'Sandra Carroll', 'scarroll8', 'scarroll8@mapy.cz', 'Sandra', '0000-00-00', 0, 40922, 0),
(54, 7, 'Robin Montgomery', 'rmontgomery6', 'rmontgomery6@nymag.com', 'Robin', '0000-00-00', 55537, 835, 0),
(68, 6, 'Sarah Gibson', 'sgibson5', 'sgibson5@berkeley.edu', 'Sarah', '0000-00-00', 28875, 91, 0),
(70, 1, 'Debra Gomez', 'dgomez0', 'dgomez0@google.co.uk', 'Debra', '0000-00-00', 23846, 5486, 0),
(72, 4, 'Carolyn Walker', 'cwalker3', 'cwalker3@youtube.com', 'Carolyn', '0000-00-00', 395, 3, 0),
(74, 17, 'Charles Stone', 'cstoneg', 'cstoneg@earthlink.net', 'Charles', '0000-00-00', 2, 84793, 0),
(81, 2, 'Joyce Burton', 'jburton1', 'jburton1@ustream.tv', 'Joyce', '0000-00-00', 10, 6823, 0),
(85, 8, 'Billy Hernandez', 'bhernandez7', 'bhernandez7@thetimes.co.uk', 'Billy', '0000-00-00', 5803, 68090, 0),
(90, 3, 'William Price', 'wprice2', 'wprice2@parallels.com', 'William', '0000-00-00', 21, 76262, 0),
(92, 20, 'Brandon Lawrence', 'blawrencej', 'blawrencej@fastcompany.com', 'Brandon', '0000-00-00', 91136, 27, 0),
(94, 5, 'Louise Murphy', 'lmurphy4', 'lmurphy4@zdnet.com', 'Louise', '0000-00-00', 65251, 88602, 0),
(98, 11, 'Paula Watson', 'pwatsona', 'pwatsona@businessweek.com', 'Paula', '0000-00-00', 4, 94, 0);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` int(11) NOT NULL,
  `kode_jenis_buku` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun_terbit` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_buku`
--

CREATE TABLE `jenis_buku` (
  `kode_jenis_buku` int(11) NOT NULL,
  `nama_jenis_buku` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_buku`
--

INSERT INTO `jenis_buku` (`kode_jenis_buku`, `nama_jenis_buku`) VALUES
(4, 'Joan Thompson'),
(11, 'Raymond Gibson'),
(12, 'Margaret Woods'),
(14, 'Kimberly Harper'),
(22, 'Jacqueline Chapman'),
(27, 'Annie Mendoza'),
(28, 'Benjamin Griffin'),
(37, 'Cheryl Henderson'),
(40, 'Janice Fields'),
(44, 'Pamela Ortiz'),
(53, 'Judy Mcdonald'),
(56, 'Emily Perez'),
(57, 'Michelle Wood'),
(67, 'Karen Dunn'),
(71, 'Juan Rogers'),
(81, 'Nicole Cox'),
(82, 'Fred Mills'),
(93, 'Lawrence Vasquez'),
(94, 'Jerry Wood');

-- --------------------------------------------------------

--
-- Table structure for table `meminjam`
--

CREATE TABLE `meminjam` (
  `kode_pinjam` int(11) NOT NULL,
  `kode_buku` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `kode_anggota` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nik` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nik`, `nama`, `username`, `email`, `tempat_lahir`, `tanggal_lahir`) VALUES
(11, 'Arthur Cox', 'jturnerf', 'jturnerf@amazon.co.uk', 'Jonathan Turner', '0000-00-00'),
(12, 'Sandra Wells', 'mschmidt6', 'mschmidt6@ftc.gov', 'Mary Schmidt', '0000-00-00'),
(13, 'Helen Bowman', 'ecruz2', 'ecruz2@va.gov', 'Evelyn Cruz', '0000-00-00'),
(26, 'Bonnie Jenkins', 'selliotth', 'selliotth@dedecms.com', 'Susan Elliott', '0000-00-00'),
(28, 'Judy Washington', 'wlawrenceg', 'wlawrenceg@woothemes.com', 'Wanda Lawrence', '0000-00-00'),
(31, 'Amy Ortiz', 'tevans7', 'tevans7@google.com.au', 'Thomas Evans', '0000-00-00'),
(37, 'Rachel White', 'amillsj', 'amillsj@yandex.ru', 'Antonio Mills', '0000-00-00'),
(40, 'Michelle Carpenter', 'amartinc', 'amartinc@wikia.com', 'Anne Martin', '0000-00-00'),
(41, 'Russell Fowler', 'wyoung8', 'wyoung8@e-recht24.de', 'Willie Young', '0000-00-00'),
(43, 'Margaret Myers', 'hfoxd', 'hfoxd@printfriendly.com', 'Harold Fox', '0000-00-00'),
(45, 'Jean Cole', 'khawkins1', 'khawkins1@usatoday.com', 'Katherine Hawkins', '0000-00-00'),
(58, 'Ronald Ramos', 'astevens9', 'astevens9@ning.com', 'Aaron Stevens', '0000-00-00'),
(62, 'Bonnie Hawkins', 'kmorenob', 'kmorenob@blogtalkradio.com', 'Kenneth Moreno', '0000-00-00'),
(64, 'Sandra Burns', 'eortize', 'eortize@webnode.com', 'Eric Ortiz', '0000-00-00'),
(70, 'James Phillips', 'rsimpson3', 'rsimpson3@theglobeandmail.com', 'Randy Simpson', '0000-00-00'),
(72, 'Sandra Fields', 'pdiazi', 'pdiazi@wordpress.com', 'Patrick Diaz', '0000-00-00'),
(81, 'Lori Parker', 'jmorgan0', 'jmorgan0@army.mil', 'Jason Morgan', '0000-00-00'),
(85, 'Louis Davis', 'chill5', 'chill5@adobe.com', 'Charles Hill', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `kode_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`kode_prodi`, `nama_prodi`) VALUES
(1, 'Kevin Kelly'),
(2, 'Diane Jenkins'),
(3, 'Mildred Dean'),
(4, 'Christopher Willis'),
(5, 'Teresa Torres'),
(6, 'Anna Ortiz'),
(7, 'Ralph Meyer'),
(8, 'Karen Alexander'),
(9, 'Stephen Hall'),
(10, 'Carol Wells'),
(11, 'Christina Russell'),
(12, 'Joe Baker'),
(13, 'Juan Romero'),
(14, 'Howard Morales'),
(15, 'Denise Willis'),
(16, 'Robert Webb'),
(17, 'Maria Ramos'),
(18, 'George Palmer'),
(19, 'Todd Wright'),
(20, 'Louis Phillips');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`kode_anggota`),
  ADD KEY `FK_memiliki` (`kode_prodi`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `FK_buku_dan_jenis_buku` (`kode_jenis_buku`);

--
-- Indexes for table `jenis_buku`
--
ALTER TABLE `jenis_buku`
  ADD PRIMARY KEY (`kode_jenis_buku`);

--
-- Indexes for table `meminjam`
--
ALTER TABLE `meminjam`
  ADD PRIMARY KEY (`kode_pinjam`),
  ADD KEY `FK_anggota_dengan_transaksi` (`kode_anggota`),
  ADD KEY `FK_buku_dengan_transaksi` (`kode_buku`),
  ADD KEY `FK_pegawai_dengan_transaksi` (`nik`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`kode_prodi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `FK_memiliki` FOREIGN KEY (`kode_prodi`) REFERENCES `program_studi` (`kode_prodi`);

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_buku_dan_jenis_buku` FOREIGN KEY (`kode_jenis_buku`) REFERENCES `jenis_buku` (`kode_jenis_buku`);

--
-- Constraints for table `meminjam`
--
ALTER TABLE `meminjam`
  ADD CONSTRAINT `FK_anggota_dengan_transaksi` FOREIGN KEY (`kode_anggota`) REFERENCES `anggota` (`kode_anggota`),
  ADD CONSTRAINT `FK_buku_dengan_transaksi` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`),
  ADD CONSTRAINT `FK_pegawai_dengan_transaksi` FOREIGN KEY (`nik`) REFERENCES `pegawai` (`nik`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"login","table":"user"},{"db":"login","table":"users"},{"db":"login","table":"admin"},{"db":"gin","table":"admin"},{"db":"tipuan","table":"admin"},{"db":"tipuan","table":"users"},{"db":"data","table":"users"},{"db":"data","table":"member"},{"db":"perpustakaan","table":"anggota"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-01-12 00:44:06', '{"collation_connection":"utf8mb4_unicode_ci","Export\\/file_template_database":"gin","Export\\/file_template_server":"login"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
