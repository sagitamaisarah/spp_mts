-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 08:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp_mts`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Mampu'),
(3, 'Tidak Mampu'),
(4, 'Yatim');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(12) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`) VALUES
(1, 1, '54321', '2023-04-11', '', '2023', 5, 50000),
(3, 1, '54321', '2023-04-08', '', '2023', 5, 50000),
(4, 1, '9080', '2023-04-17', '', '2022', 6, 100000),
(5, 1, '9080', '2023-04-17', '', '2023', 6, 50000),
(6, 1, '3096121657', '2023-04-19', '', '2023', 5, 1000000),
(7, 1, '3096121657', '2023-05-07', '', '2023', 5, 55000),
(8, 1, '3108369182', '2023-06-08', '', '2023', 5, 1000000),
(9, 1, '3108369182', '2023-06-01', '', '2023', 5, 55000),
(10, 1, '3100937061', '2023-09-28', 'Septembe', '2023', 5, 949450),
(11, 1, '3100937061', '2023-09-28', 'September', '2023', 5, 105550);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_petugas` varchar(25) NOT NULL,
  `level` enum('admin','bendahara') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'admin', 'admin', 'Administrator', 'admin'),
(2, 'bendahara', 'bendahara', 'Ahmad Arifin, S.Pd', 'bendahara'),
(6, 'kepsek', 'kepsek', 'Ahmad Jumaili, S.Ag.', 'bendahara');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama`, `jk`, `alamat`, `id_kategori`, `id_spp`) VALUES
('0093618942', 'RIZKY KURNIAWAN', 'laki-laki', ' , , , , , ', 2, 5),
('0095517140', 'FRIZA APRILIA EKA MAHARANI', 'perempuan', ' , , , , , ', 2, 6),
('0099807363', 'AHMAD FAREL IRWANSYAH', 'laki-laki', ' , , , , , \r\n', 2, 5),
('0102211360', 'AHMAD RENDY NASROIN', 'laki-laki', ' , , , , , \r\n', 2, 5),
('0109344491', 'Fitri Umiyatus Sholeha', 'perempuan', ' , , , , , ', 2, 6),
('109560851', 'MUHAMMAD SOFIYAN KHOLID', 'laki-laki', 'PAOK DANDAK, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 5),
('3080614518', 'ZAENOL WARDI', 'laki-laki', 'PAOK DANDAK, JANAPRIA, LOMBOK TENGAH, JAWA TIMUR, 68455, 68455', 2, 5),
('3083597924', 'ARIFANDI DWI KURNIAWAN', 'BERAHALE', 'DURIAN, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 5),
('3084433109', 'ROHMATULLAH', 'laki-laki', 'MONTONG LEKONG, PENDEM, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 5),
('3088125586', 'RISKIYANTO', 'laki-laki', 'MONTONG LEKONG, DURIAN, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 4, 5),
('3090704745', 'LUNA ANISATUN NUFUS', 'perempuan', 'KRESIK, PRINGGABAYA, MASBAGEK, LOMBOK TIMUR, 68455, 68455', 2, 6),
('3090997420', 'HUSNUL KHOTIMAH', 'perempuan', 'PAOK DANDAK, DURIAN, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 6),
('3091575424', 'M. LUTFI ADI MAULANA', 'laki-laki', 'BEROMBOK, DURIAN, JANAPRIA, LOMBOK TENAGH, 68455, 68455', 2, 5),
('3091637953', 'MARIYATI', 'perempuan', 'PAOK DANDAK, DURIAN , JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 6),
('3091677983', 'BUNDARI', 'perempuan', 'MONTONG BILE, PENDEM, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 6),
('3091936970', 'M. KHUSMAN HIDAYAT', 'laki-laki', 'PETOAK, DURIAN, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 5),
('3092289160', 'ULFATURROHMA', 'perempuan', 'PETOAK, DURIAN, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 6),
('3092412766', 'SITI HOTIJA', 'perempuan', 'BESON, PENDEM, JANAPRIA, LOMBOK TENGAH, 68455, 68455', 2, 6),
('84459003', 'SILASATUL ULFA TAUFIK', 'perempuan', 'ANYAR, KALIPUROPRINGGABAYA, MASBAGIK, LOMBOK TIMUR, 0, 0', 2, 6),
('87668', 'cvjnll', 'laki-laki', 'vvjl', 2, 7),
('96909087', 'Putri Rahayu', 'perempuan', ' , , , , , ', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `kelas`, `nominal`) VALUES
(5, '7 A', 1055000),
(6, '7 B', 1055000),
(7, '8 A', 960000),
(8, '8 B', 960000),
(9, '8 C', 960000),
(10, '9 A', 1695000),
(11, '9 B', 1695000),
(12, '9 C', 1695000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
