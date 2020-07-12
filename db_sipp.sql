-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 04:51 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipp`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `id` int(11) NOT NULL,
  `id_m_nota` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `kode_barang` varchar(99) NOT NULL,
  `nama_barang` varchar(99) DEFAULT NULL,
  `merek` varchar(99) DEFAULT NULL,
  `spesifikasi` varchar(99) DEFAULT NULL,
  `qty` int(99) DEFAULT NULL,
  `qty_ket` varchar(99) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(99) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`id`, `id_m_nota`, `tgl`, `kode_barang`, `nama_barang`, `merek`, `spesifikasi`, `qty`, `qty_ket`, `harga`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(29, 21, '2020-07-11', '00001/MSMBARANG', 'MSMBARANGNM', 'MSMBARANGMR', 'MSMBARANGSS', 100, 'PCS', 1000000, '2020-07-11 03:58:00', 'developer', '0000-00-00 00:00:00', NULL),
(30, 21, '2020-07-11', '00002/MSMBARANG2', 'MSMBARANGNM2', 'MSMBARANGMR2', 'MSMBARANGSS2', 200, 'PCS', 2000000, '2020-07-11 04:00:31', 'developer', '2020-07-11 04:20:50', 'developer'),
(31, 21, '2020-07-11', '00003/MSMBARANG3', 'MSMBARANGNM3', 'MSMBARANGMR3', 'MSMBARANGSS3', 300, 'PCS', 3000000, '2020-07-11 04:03:15', 'developer', '2020-07-11 04:20:57', 'developer'),
(32, 22, '2020-07-12', '00001/MSMBARANGNT21', 'MSMBARANGNT2NM1', 'MSMBARANGNT2MR1', 'MSMBARANGNT2SS1', 110, 'Batang', 1100000, '2020-07-11 04:05:47', 'developer', '0000-00-00 00:00:00', NULL),
(33, 22, '2020-07-12', '00002/MSMBARANGNT22', 'MSMBARANGNT2NM2', 'MSMBARANGNT2MR2', 'MSMBARANGNT2SS2', 120, 'Batang', 1200000, '2020-07-11 04:09:14', 'developer', '2020-07-11 04:21:06', 'developer'),
(34, 23, '2020-07-13', '00001/MSMBARANGNT3', 'MSMBARANGNT3NM3', 'MSMBARANGNT3MR3', 'MSMBARANGNT3SS3', 230, 'Batang', 2300000, '2020-07-11 04:18:24', 'developer', '0000-00-00 00:00:00', NULL),
(35, 24, '2020-07-01', '00001/PPIBARANG1', 'PPIBARANG1NM', 'PPIBARANG1MR', 'PPIBARANG1SS', 100, 'Kaleng', 1000000, '2020-07-11 04:19:46', 'developer', '0000-00-00 00:00:00', NULL),
(36, 21, '2020-07-11', '00004/MSMBARANG', 'MSMBARANGNM4', 'MSMBARANGMR4', 'MSMBARANGSS4', 300, 'PCS', 3000000, '2020-07-11 12:45:17', 'developer', '2020-07-11 00:46:08', 'developer'),
(37, 21, '2020-07-11', '00004/MSMBARANG4', 'MSMBARANGNM4', 'MSMBARANGMR4', 'MSMBARANGSS4', 400, 'PCS', 3000000, '2020-07-11 04:03:15', 'developer', '2020-07-11 04:20:57', 'developer'),
(38, 21, '2020-07-11', '00005/MSMBARANG5', 'MSMBARANGNM5', 'MSMBARANGMR5', 'MSMBARANGSS5', 500, 'PCS', 3000000, '2020-07-11 04:03:15', 'developer', '2020-07-11 04:20:57', 'developer');

-- --------------------------------------------------------

--
-- Table structure for table `m_nota`
--

CREATE TABLE `m_nota` (
  `id` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `no_nota` varchar(99) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(99) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_nota`
--

INSERT INTO `m_nota` (`id`, `id_supplier`, `no_nota`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(21, 15, 'NOTA/001/MSM', '2020-07-11 03:54:33', 'developer', '0000-00-00 00:00:00', NULL),
(22, 15, 'NOTA/002/MSM', '2020-07-11 03:54:41', 'developer', '0000-00-00 00:00:00', NULL),
(23, 15, 'NOTA/003/MSM', '2020-07-11 03:54:49', 'developer', '0000-00-00 00:00:00', NULL),
(24, 14, 'NOTA/001/PPI', '2020-07-11 03:55:14', 'developer', '0000-00-00 00:00:00', NULL),
(25, 14, 'NOTA/002/PPI', '2020-07-11 03:55:22', 'developer', '0000-00-00 00:00:00', NULL),
(26, 14, 'NOTA/003/PPI', '2020-07-11 03:55:32', 'developer', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_perusahaan`
--

CREATE TABLE `m_perusahaan` (
  `id` int(11) NOT NULL,
  `pimpinan` varchar(90) DEFAULT NULL,
  `nm_perusahaan` varchar(90) DEFAULT NULL,
  `alamat` text,
  `npwp` varchar(99) DEFAULT NULL,
  `no_telp` varchar(99) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_perusahaan`
--

INSERT INTO `m_perusahaan` (`id`, `pimpinan`, `nm_perusahaan`, `alamat`, `npwp`, `no_telp`, `created_at`, `created_by`) VALUES
(20, 'SATU', 'PT. TEST PERUSAHAAN', 'JL. TEST ALAMAT PERUSAHAAN', '001', '001', '2020-06-11 08:14:49', 'developer'),
(21, 'DUA', 'PT. TEST PERUSAHAAN DUA', 'JL. TEST ALAMAT PERUSAHAAN DUA', '002', '002', '2020-06-11 08:15:22', 'developer'),
(22, 'TEST PIMPINAN', 'PT. MAJU MUNDUR', 'ALAMAT PT KE TIGA', '001/001-001_001.001', '087123456789', '2020-06-16 08:23:38', 'developer'),
(23, '-', 'PT. ATMI SOLO', 'JL. MOJO NO. 1 KARANGASEM LAWEAN SURAKARTA', '03.196.032.1-526.000', '-', '2020-06-23 02:22:56', 'developer');

-- --------------------------------------------------------

--
-- Table structure for table `m_pl_list_barang`
--

CREATE TABLE `m_pl_list_barang` (
  `id` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `kode_barang` varchar(99) NOT NULL,
  `harga_price_list` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `id_pl_price_list` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(99) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_pl_price_list`
--

CREATE TABLE `m_pl_price_list` (
  `id` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `no_surat` varchar(99) NOT NULL,
  `no_so` varchar(99) NOT NULL,
  `kepada` int(11) DEFAULT NULL,
  `no_po` varchar(99) NOT NULL,
  `no_nota` varchar(99) DEFAULT NULL,
  `cek_po` int(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(99) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_price_list`
--

CREATE TABLE `m_price_list` (
  `id` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `id_m_barang` int(11) NOT NULL,
  `id_m_supplier` int(11) NOT NULL,
  `harga_price_list` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(99) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(99) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(99) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`id`, `nama_supplier`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(14, 'PT. PRIMA PAPER INDOSESIA', '2020-07-11 03:52:08', 'developer', '0000-00-00 00:00:00', NULL),
(15, 'PT. MURFA SURYA MAHARDIKA', '2020-07-11 03:52:21', 'developer', '0000-00-00 00:00:00', NULL),
(16, 'PT. POLITAMA', '2020-07-12 14:47:02', 'developer', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `nama` varchar(99) DEFAULT NULL,
  `daerah` varchar(99) DEFAULT NULL,
  `email` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`nama`, `daerah`, `email`) VALUES
('PT. Prima Paper Indonesia', 'Dsn. Timang Kulon, Wonokerto , Wonogiri', 'salesprimapaper@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `po_master`
--

CREATE TABLE `po_master` (
  `id` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `kode_barang` varchar(99) NOT NULL,
  `qty` int(11) NOT NULL,
  `no_po` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_master`
--

INSERT INTO `po_master` (`id`, `id_perusahaan`, `tgl`, `kode_barang`, `qty`, `no_po`) VALUES
(4, 23, '2020-06-01', 'KD/BARANG/001', 1000, 'NO/PO/001'),
(5, 21, '2020-06-25', 'KD/BARANG/002', 1000, 'NO/PO/001'),
(6, 21, '2020-06-25', 'KD/BARANG/003', 1000, 'NO/PO/001'),
(7, 21, '2020-06-25', 'KD/BARANG/004', 1000, 'NO/PO/001'),
(8, 21, '2020-06-25', 'KD/BARANG/005', 1000, 'NO/PO/001'),
(9, 21, '2020-06-25', 'KD/BARANG/006', 1000, 'NO/PO/001'),
(10, 21, '2020-06-25', 'KD/BARANG/001', 1000, 'NO/PO/001'),
(11, 21, '2020-06-25', 'KD/BARANG/001', 1000, 'NO/PO/002'),
(12, 21, '2020-06-25', 'KD/BARANG/006', 1000, 'NO/PO/002'),
(13, 21, '2020-06-25', 'KD/BARANG/001', 1000, 'NO/PO/003'),
(14, 21, '2020-06-24', 'KD/BARANG/004', 1000, 'NO/PO/003');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nm_user` varchar(99) DEFAULT NULL,
  `level` enum('Developer','SuperAdmin','Admin','User') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(99) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nm_user`, `level`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin Biasa', 'Admin', '2020-07-10 13:51:57', NULL, '0000-00-00 00:00:00', NULL),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User Biasa', 'User', '2020-07-10 13:51:57', NULL, '2020-07-10 03:05:21', 'developer'),
(3, 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', 'Admin Super', 'SuperAdmin', '2020-07-10 13:51:57', NULL, '0000-00-00 00:00:00', NULL),
(4, 'developer', '5e8edd851d2fdfbd7415232c67367cc3', 'Dev Ganteng', 'Developer', '2020-07-10 13:51:57', NULL, '2020-07-11 04:22:51', 'developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`id`,`kode_barang`);

--
-- Indexes for table `m_nota`
--
ALTER TABLE `m_nota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_perusahaan`
--
ALTER TABLE `m_perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_pl_list_barang`
--
ALTER TABLE `m_pl_list_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_pl_price_list`
--
ALTER TABLE `m_pl_price_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_price_list`
--
ALTER TABLE `m_price_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_master`
--
ALTER TABLE `po_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `m_nota`
--
ALTER TABLE `m_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `m_perusahaan`
--
ALTER TABLE `m_perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `m_pl_list_barang`
--
ALTER TABLE `m_pl_list_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_pl_price_list`
--
ALTER TABLE `m_pl_price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_price_list`
--
ALTER TABLE `m_price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `po_master`
--
ALTER TABLE `po_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;