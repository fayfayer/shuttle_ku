-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2017 at 02:39 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `no_polisi` varchar(10) DEFAULT NULL,
  `nama_supir` varchar(100) DEFAULT NULL,
  `nama_kenek` varchar(100) DEFAULT NULL,
  `jumlah_kursi` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `no_polisi`, `nama_supir`, `nama_kenek`, `jumlah_kursi`) VALUES
(4, 'BK3434GB', 'Gordon', 'Gordin', 12),
(7, 'BK8894LO', 'Sarmin', 'Saru', 12),
(8, 'BK7890KL', 'Dorman', 'darmin', 12),
(9, 'BK1212BM', 'Nando', 'nande', 12),
(10, 'BK0440PO', 'Gandi', 'Gondo', 12),
(11, 'BK5667ZS', 'Jamin Ginting', 'Andi ginting', 12),
(12, 'BK4687DH', 'Herman', 'karman', 12),
(13, 'BK5449KX', 'Dion simanjuntak', 'doni marpaung', 12),
(14, 'BK6565GB', 'Parno', 'legiok', 12),
(15, 'BK2287HJ', 'Panji gutama', 'ahmad catur', 12),
(16, 'BK5992MK', 'Mamat', 'Memet', 12);

-- --------------------------------------------------------

--
-- Table structure for table `bus_route`
--

CREATE TABLE `bus_route` (
  `id` int(11) NOT NULL,
  `jam_id` int(11) DEFAULT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `asal_shuttle` varchar(225) NOT NULL,
  `kota_asal` varchar(225) NOT NULL,
  `tujuan_shuttle` varchar(225) NOT NULL,
  `kota_tujuan` varchar(225) NOT NULL,
  `harga_tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_route`
--

INSERT INTO `bus_route` (`id`, `jam_id`, `bus_id`, `asal_shuttle`, `kota_asal`, `tujuan_shuttle`, `kota_tujuan`, `harga_tiket`) VALUES
(8, 1, 8, 'Pekan Baru', 'Riau', 'Ring Route', 'Medan', 120000),
(10, 5, 9, 'Pekan Baru', 'Riau', 'Ring Route', 'Medan', 200000),
(11, 15, 8, 'Amplas', 'Medan', 'Dumai', 'Riau', 200000),
(12, 15, 13, 'Amplas', 'Medan', 'Dumai', 'Riau', 250000),
(13, 2, 16, 'Amplas', 'Medan', 'Pekan Baru', 'Riau', 270000),
(14, 3, 15, 'Amplas', 'Medan', 'Pekan Baru', 'Riau', 250000),
(15, 7, 15, 'Ring Route', 'Medan', 'Dumai', 'Riau', 250000),
(17, 9, 11, 'Ring Route', 'Medan', 'Pekan Baru', 'Riau', 230000),
(19, 3, 10, 'Dumai', 'Riau', 'Amplas', 'Medan', 270000),
(20, 5, 11, 'Dumai', 'Riau', 'Ring Route', 'Medan', 275000),
(21, 6, 16, 'Pekan Baru', 'Riau', 'Amplas', 'Medan', 250000),
(23, 3, 13, 'Dumai', 'Riau', 'Ring Route', 'Medan', 300000),
(24, 3, 16, 'Amplas', 'Medan', 'Dumai', 'Riau', 260000),
(25, 2, 10, 'Amplas', 'Medan', 'Bagan Batu', 'Riau', 300000),
(26, 9, 15, 'Ring Route', 'Medan', 'Pangkalan Kerinci', 'Riau', 260000),
(27, 7, 12, 'Amplas', 'Medan', 'Pangkalan Kerinci', 'Riau', 275000),
(28, 2, 10, 'Ring Route', 'Medan', 'Pekan Baru', 'Riau', 250000),
(29, 5, 4, 'Ring Route', 'Medan', 'Dumai', 'Riau', 260000),
(30, 2, 11, 'Pangkalan Kerinci', 'Riau', 'Amplas', 'Medan', 235000),
(31, 1, 14, 'Siak', 'Riau', 'Letda Sujono', 'Medan', 245000),
(32, 6, 16, 'Letda Sujono', 'Medan', 'Pekan Baru', 'Riau', 225000);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `perjalanan_id` int(11) DEFAULT NULL,
  `transaksi_tiket_id` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `tanggal_input`, `user_id`, `perjalanan_id`, `transaksi_tiket_id`) VALUES
(1, '2017-08-22 11:17:52', 1, 2, '2 3'),
(3, '2017-08-23 23:45:18', 1, 4, '5'),
(4, '2017-08-24 02:24:47', 33, 5, '6 7'),
(5, '2017-08-24 02:27:01', 33, 6, '8'),
(6, '2017-08-24 04:21:41', 1, 7, '9'),
(7, '2017-09-08 08:41:24', 34, 8, '10 11 12'),
(8, '2017-09-08 08:48:55', 33, 9, '13 14 15 16'),
(9, '2017-09-10 14:30:47', 33, 10, '17 18 19 20'),
(10, '2017-09-13 00:46:19', 35, 11, '21 22 23'),
(11, '2017-09-13 10:33:23', 32, 12, '24 25 26'),
(12, '2017-09-13 10:47:08', 32, 13, '27 28 29'),
(13, '2017-09-13 10:56:34', 32, 14, '30 31 32 33 34'),
(14, '2017-09-13 12:28:55', 32, 15, '35 36 37 38 39 40'),
(15, '2017-09-13 12:33:10', 32, 16, '41'),
(16, '2017-09-13 12:34:14', 32, 17, '42'),
(17, '2017-09-13 12:35:47', 32, 18, '43'),
(18, '2017-09-13 12:37:49', 32, 19, '44 45 46'),
(19, '2017-09-13 12:39:44', 32, 20, '47'),
(20, '2017-09-13 12:46:56', 1, 21, '48 49 50'),
(21, '2017-09-13 12:48:14', 1, 22, '51'),
(22, '2017-09-13 12:49:53', 1, 23, '52'),
(23, '2017-09-13 12:52:24', 1, 24, '53'),
(24, '2017-09-13 12:54:22', 32, 25, '54'),
(25, '2017-09-13 12:55:40', 1, 26, '55'),
(26, '2017-09-13 13:00:38', 34, 27, '56 57'),
(27, '2017-09-13 13:01:55', 34, 28, '58'),
(28, '2017-09-13 13:03:58', 34, 29, '59'),
(29, '2017-09-13 13:10:11', 35, 30, '60'),
(30, '2017-09-13 13:12:38', 35, 31, '61'),
(31, '2017-09-13 13:14:59', 35, 32, '62 63'),
(32, '2017-09-13 13:16:03', 35, 33, '64'),
(33, '2017-09-14 08:15:33', 33, 34, '65'),
(34, '2017-09-16 03:33:31', 33, 35, '66 67'),
(35, '2017-09-16 03:36:36', 34, 36, '68 69 70'),
(36, '2017-09-16 03:42:07', 35, 37, '71 72'),
(37, '2017-09-16 04:12:23', 33, 38, '73'),
(38, '2017-09-16 04:16:00', 35, 39, '74 75 76'),
(39, '2017-09-16 04:20:44', 33, 40, '77'),
(40, '2017-09-16 04:22:12', 35, 41, '78');

-- --------------------------------------------------------

--
-- Table structure for table `jamkeberangkatan`
--

CREATE TABLE `jamkeberangkatan` (
  `id` int(11) NOT NULL,
  `jam` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jamkeberangkatan`
--

INSERT INTO `jamkeberangkatan` (`id`, `jam`) VALUES
(1, '08:00'),
(2, '09:00'),
(3, '11:00'),
(4, '12:00'),
(5, '14:00'),
(6, '15:00'),
(7, '17:00'),
(8, '19:30'),
(9, '20:30'),
(10, '21:00'),
(11, '22:00'),
(12, '23:30'),
(14, '07:00'),
(15, '06:00');

-- --------------------------------------------------------

--
-- Table structure for table `perjalanan`
--

CREATE TABLE `perjalanan` (
  `id` int(11) NOT NULL,
  `asal_shuttle` varchar(225) NOT NULL,
  `kota_asal` varchar(100) NOT NULL,
  `tujuan_shuttle` varchar(225) NOT NULL,
  `kota_tujuan` varchar(100) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `jam_keberangkatan` varchar(8) NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `bus_no_polisi` varchar(12) NOT NULL,
  `bus_nama_supir` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perjalanan`
--

INSERT INTO `perjalanan` (`id`, `asal_shuttle`, `kota_asal`, `tujuan_shuttle`, `kota_tujuan`, `tanggal_pemesanan`, `jam_keberangkatan`, `harga_tiket`, `bus_no_polisi`, `bus_nama_supir`) VALUES
(2, 'Amplas', 'Medan', 'Dumai', 'Riau', '2017-08-23', '06:00', 200000, 'BK7890KL', 'Dorman'),
(4, 'Ring Route', 'Medan', 'Pekan Baru', 'Riau', '2017-08-24', '09:00', 250000, 'BK0440PO', 'Gandi'),
(5, 'Amplas', 'Medan', 'Pangkalan Kerinci', 'Riau', '2017-08-24', '17:00', 275000, 'BK4687DH', 'Herman'),
(6, 'Amplas', 'Medan', 'Pangkalan Kerinci', 'Riau', '2017-08-24', '17:00', 275000, 'BK4687DH', 'Herman'),
(7, 'Ring Route', 'Medan', 'Pekan Baru', 'Riau', '2017-08-24', '20:30', 230000, 'BK5667ZS', 'Jamin Ginting'),
(8, 'Pekan Baru', 'Riau', 'Ring Route', 'Medan', '2017-09-09', '08:00', 120000, 'BK7890KL', 'Dorman'),
(9, 'Amplas', 'Medan', 'Pangkalan Kerinci', 'Riau', '2017-09-08', '17:00', 275000, 'BK4687DH', 'Herman'),
(10, 'Amplas', 'Medan', 'Dumai', 'Riau', '2017-09-11', '06:00', 200000, 'BK7890KL', 'Dorman'),
(11, 'Dumai', 'Riau', 'Amplas', 'Medan', '2017-09-14', '11:00', 270000, 'BK0440PO', 'Gandi'),
(12, 'Ring Route', 'Medan', 'Dumai', 'Riau', '2017-09-14', '14:00', 260000, 'BK3434GB', 'Gordon'),
(13, 'Ring Route', 'Medan', 'Pangkalan Kerinci', 'Riau', '2017-09-13', '20:30', 260000, 'BK2287HJ', 'Panji gutama'),
(14, 'Ring Route', 'Medan', 'Pekan Baru', 'Riau', '2017-09-13', '20:30', 230000, 'BK5667ZS', 'Jamin Ginting'),
(15, 'Ring Route', 'Medan', 'Pangkalan Kerinci', 'Riau', '2017-09-13', '20:30', 260000, 'BK2287HJ', 'Panji gutama'),
(16, 'Ring Route', 'Medan', 'Pekan Baru', 'Riau', '2017-09-13', '20:30', 230000, 'BK5667ZS', 'Jamin Ginting'),
(17, 'Ring Route', 'Medan', 'Pangkalan Kerinci', 'Riau', '2017-09-13', '20:30', 260000, 'BK2287HJ', 'Panji gutama'),
(18, 'Ring Route', 'Medan', 'Dumai', 'Riau', '2017-09-14', '14:00', 260000, 'BK3434GB', 'Gordon'),
(19, 'Ring Route', 'Medan', 'Dumai', 'Riau', '2017-09-14', '14:00', 260000, 'BK3434GB', 'Gordon'),
(20, 'Ring Route', 'Medan', 'Dumai', 'Riau', '2017-09-14', '17:00', 250000, 'BK2287HJ', 'Panji gutama'),
(21, 'Siak', 'Riau', 'Letda Sujono', 'Medan', '2017-09-14', '08:00', 245000, 'BK6565GB', 'Parno'),
(22, 'Pangkalan Kerinci', 'Riau', 'Amplas', 'Medan', '2017-09-14', '09:00', 235000, 'BK5667ZS', 'Jamin Ginting'),
(23, 'Siak', 'Riau', 'Letda Sujono', 'Medan', '2017-09-14', '08:00', 245000, 'BK6565GB', 'Parno'),
(24, 'Letda Sujono', 'Medan', 'Pekan Baru', 'Riau', '2017-09-14', '15:00', 225000, 'BK5992MK', 'Mamat'),
(25, 'Ring Route', 'Medan', 'Dumai', 'Riau', '2017-09-14', '17:00', 250000, 'BK2287HJ', 'Panji gutama'),
(26, 'Amplas', 'Medan', 'Bagan Batu', 'Riau', '2017-09-14', '09:00', 300000, 'BK0440PO', 'Gandi'),
(27, 'Pekan Baru', 'Riau', 'Ring Route', 'Medan', '2017-09-14', '08:00', 120000, 'BK7890KL', 'Dorman'),
(28, 'Pekan Baru', 'Riau', 'Ring Route', 'Medan', '2017-09-14', '08:00', 120000, 'BK7890KL', 'Dorman'),
(29, 'Pekan Baru', 'Riau', 'Amplas', 'Medan', '2017-09-14', '15:00', 250000, 'BK5992MK', 'Mamat'),
(30, 'Dumai', 'Riau', 'Amplas', 'Medan', '2017-09-14', '11:00', 270000, 'BK0440PO', 'Gandi'),
(31, 'Dumai', 'Riau', 'Amplas', 'Medan', '2017-09-14', '11:00', 270000, 'BK0440PO', 'Gandi'),
(32, 'Dumai', 'Riau', 'Ring Route', 'Medan', '2017-09-14', '11:00', 300000, 'BK5449KX', 'Dion simanjuntak'),
(33, 'Dumai', 'Riau', 'Ring Route', 'Medan', '2017-09-14', '11:00', 300000, 'BK5449KX', 'Dion simanjuntak'),
(34, 'Amplas', 'Medan', 'Pekan Baru', 'Riau', '2017-09-15', '11:00', 250000, 'BK2287HJ', 'Panji gutama'),
(35, 'Amplas', 'Medan', 'Bagan Batu', 'Riau', '2017-09-17', '09:00', 300000, 'BK0440PO', 'Gandi'),
(36, 'Pekan Baru', 'Riau', 'Amplas', 'Medan', '2017-09-17', '15:00', 250000, 'BK5992MK', 'Mamat'),
(37, 'Dumai', 'Riau', 'Ring Route', 'Medan', '2017-09-16', '14:00', 275000, 'BK5667ZS', 'Jamin Ginting'),
(38, 'Amplas', 'Medan', 'Bagan Batu', 'Riau', '2017-09-17', '09:00', 300000, 'BK0440PO', 'Gandi'),
(39, 'Dumai', 'Riau', 'Ring Route', 'Medan', '2017-09-17', '14:00', 275000, 'BK5667ZS', 'Jamin Ginting'),
(40, 'Amplas', 'Medan', 'Bagan Batu', 'Riau', '2017-09-17', '09:00', 300000, 'BK0440PO', 'Gandi'),
(41, 'Dumai', 'Riau', 'Ring Route', 'Medan', '2017-09-17', '14:00', 275000, 'BK5667ZS', 'Jamin Ginting');

-- --------------------------------------------------------

--
-- Table structure for table `shuttle`
--

CREATE TABLE `shuttle` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `kota` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shuttle`
--

INSERT INTO `shuttle` (`id`, `nama`, `kota`) VALUES
(1, 'Ring Route', 'Medan'),
(2, 'Amplas', 'Medan'),
(5, 'Pekan Baru', 'Riau'),
(6, 'Dumai', 'Riau'),
(7, 'Bagan Batu', 'Riau'),
(8, 'Pangkalan Kerinci', 'Riau'),
(9, 'Duri', 'Riau'),
(10, 'Siak', 'Riau'),
(11, 'Belawan', 'Medan'),
(12, 'Letda Sujono', 'Medan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_tiket`
--

CREATE TABLE `transaksi_tiket` (
  `id` int(11) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `nokursi` int(4) NOT NULL,
  `traveller_id` int(11) DEFAULT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_tiket`
--

INSERT INTO `transaksi_tiket` (`id`, `tanggal_input`, `user_id`, `tanggal_pemesanan`, `route_id`, `nokursi`, `traveller_id`, `harga`) VALUES
(2, '2017-08-22 11:17:51', 1, '2017-08-23', 11, 2, 2, 200000),
(3, '2017-08-22 11:17:51', 1, '2017-08-23', 11, 3, 3, 200000),
(5, '2017-08-23 23:45:17', 1, '2017-08-24', 28, 1, 5, 250000),
(6, '2017-08-24 02:24:46', 33, '2017-08-24', 27, 7, 6, 275000),
(8, '2017-08-24 02:27:01', 33, '2017-08-24', 27, 12, 8, 275000),
(9, '2017-08-24 04:21:41', 1, '2017-08-24', 17, 7, 9, 230000),
(11, '2017-09-08 08:41:24', 34, '2017-09-09', 8, 8, 11, 120000),
(12, '2017-09-08 08:41:24', 34, '2017-09-09', 8, 9, 12, 120000),
(14, '2017-09-08 08:48:54', 33, '2017-09-08', 27, 6, 14, 275000),
(16, '2017-09-08 08:48:55', 33, '2017-09-08', 27, 12, 16, 275000),
(18, '2017-09-10 14:30:47', 33, '2017-09-11', 11, 2, 18, 200000),
(19, '2017-09-10 14:30:47', 33, '2017-09-11', 11, 3, 19, 200000),
(21, '2017-09-13 00:46:19', 35, '2017-09-14', 19, 3, 21, 270000),
(22, '2017-09-13 00:46:19', 35, '2017-09-14', 19, 6, 22, 270000),
(23, '2017-09-13 00:46:19', 35, '2017-09-14', 19, 9, 23, 270000),
(24, '2017-09-13 10:33:23', 32, '2017-09-14', 29, 1, 24, 260000),
(26, '2017-09-13 10:33:23', 32, '2017-09-14', 29, 3, 26, 260000),
(27, '2017-09-13 10:47:08', 32, '2017-09-13', 26, 1, 27, 260000),
(28, '2017-09-13 10:47:08', 32, '2017-09-13', 26, 4, 28, 260000),
(29, '2017-09-13 10:47:08', 32, '2017-09-13', 26, 7, 29, 260000),
(30, '2017-09-13 10:56:34', 32, '2017-09-13', 17, 1, 30, 230000),
(31, '2017-09-13 10:56:34', 32, '2017-09-13', 17, 2, 31, 230000),
(32, '2017-09-13 10:56:34', 32, '2017-09-13', 17, 3, 32, 230000),
(33, '2017-09-13 10:56:34', 32, '2017-09-13', 17, 4, 33, 230000),
(34, '2017-09-13 10:56:34', 32, '2017-09-13', 17, 5, 34, 230000),
(35, '2017-09-13 12:28:55', 32, '2017-09-13', 26, 2, 35, 260000),
(36, '2017-09-13 12:28:55', 32, '2017-09-13', 26, 3, 36, 260000),
(37, '2017-09-13 12:28:55', 32, '2017-09-13', 26, 5, 37, 260000),
(38, '2017-09-13 12:28:55', 32, '2017-09-13', 26, 6, 38, 260000),
(39, '2017-09-13 12:28:55', 32, '2017-09-13', 26, 8, 39, 260000),
(40, '2017-09-13 12:28:55', 32, '2017-09-13', 26, 9, 40, 260000),
(41, '2017-09-13 12:33:10', 32, '2017-09-13', 17, 6, 41, 230000),
(42, '2017-09-13 12:34:14', 32, '2017-09-13', 26, 10, 42, 260000),
(43, '2017-09-13 12:35:47', 32, '2017-09-14', 29, 2, 43, 260000),
(44, '2017-09-13 12:37:48', 32, '2017-09-14', 29, 4, 44, 260000),
(45, '2017-09-13 12:37:49', 32, '2017-09-14', 29, 5, 45, 260000),
(46, '2017-09-13 12:37:49', 32, '2017-09-14', 29, 6, 46, 260000),
(47, '2017-09-13 12:39:44', 32, '2017-09-14', 15, 12, 47, 250000),
(48, '2017-09-13 12:46:56', 1, '2017-09-14', 31, 10, 48, 245000),
(49, '2017-09-13 12:46:56', 1, '2017-09-14', 31, 11, 49, 245000),
(50, '2017-09-13 12:46:56', 1, '2017-09-14', 31, 12, 50, 245000),
(51, '2017-09-13 12:48:14', 1, '2017-09-14', 30, 1, 51, 235000),
(52, '2017-09-13 12:49:53', 1, '2017-09-14', 31, 9, 52, 245000),
(53, '2017-09-13 12:52:24', 1, '2017-09-14', 32, 3, 53, 225000),
(54, '2017-09-13 12:54:22', 32, '2017-09-14', 15, 11, 54, 250000),
(55, '2017-09-13 12:55:40', 1, '2017-09-14', 25, 10, 55, 300000),
(56, '2017-09-13 13:00:38', 34, '2017-09-14', 8, 1, 56, 120000),
(57, '2017-09-13 13:00:38', 34, '2017-09-14', 8, 2, 57, 120000),
(58, '2017-09-13 13:01:54', 34, '2017-09-14', 8, 4, 58, 120000),
(59, '2017-09-13 13:03:58', 34, '2017-09-14', 21, 3, 59, 250000),
(60, '2017-09-13 13:10:11', 35, '2017-09-14', 19, 1, 60, 270000),
(61, '2017-09-13 13:12:38', 35, '2017-09-14', 19, 2, 61, 270000),
(62, '2017-09-13 13:14:59', 35, '2017-09-14', 23, 11, 62, 300000),
(63, '2017-09-13 13:14:59', 35, '2017-09-14', 23, 12, 63, 300000),
(64, '2017-09-13 13:16:03', 35, '2017-09-14', 23, 7, 64, 300000),
(65, '2017-09-14 08:15:33', 33, '2017-09-15', 14, 1, 65, 250000),
(66, '2017-09-16 03:33:31', 33, '2017-09-17', 25, 2, 66, 300000),
(67, '2017-09-16 03:33:31', 33, '2017-09-17', 25, 3, 67, 300000),
(68, '2017-09-16 03:36:36', 34, '2017-09-17', 21, 4, 68, 250000),
(69, '2017-09-16 03:36:36', 34, '2017-09-17', 21, 5, 69, 250000),
(70, '2017-09-16 03:36:36', 34, '2017-09-17', 21, 6, 70, 250000),
(71, '2017-09-16 03:42:07', 35, '2017-09-16', 20, 3, 71, 275000),
(72, '2017-09-16 03:42:07', 35, '2017-09-16', 20, 6, 72, 275000),
(73, '2017-09-16 04:12:23', 33, '2017-09-17', 25, 6, 73, 300000),
(74, '2017-09-16 04:16:00', 35, '2017-09-17', 20, 1, 74, 275000),
(75, '2017-09-16 04:16:00', 35, '2017-09-17', 20, 2, 75, 275000),
(76, '2017-09-16 04:16:00', 35, '2017-09-17', 20, 3, 76, 275000),
(77, '2017-09-16 04:20:44', 33, '2017-09-17', 25, 9, 77, 300000),
(78, '2017-09-16 04:22:12', 35, '2017-09-17', 20, 4, 78, 275000);

-- --------------------------------------------------------

--
-- Table structure for table `traveller`
--

CREATE TABLE `traveller` (
  `id` int(11) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nama` varchar(100) DEFAULT NULL,
  `umur` tinyint(4) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `perjalanan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traveller`
--

INSERT INTO `traveller` (`id`, `tanggal_input`, `nama`, `umur`, `jenis_kelamin`, `no_hp`, `perjalanan_id`) VALUES
(2, '2017-08-22 11:17:51', 'Norman', 35, 'laki-laki', '081278998923', 2),
(3, '2017-08-22 11:17:51', 'Yanti', 31, 'perempuan', '081278998923', 2),
(5, '2017-08-23 23:45:17', 'Riky', 29, 'laki-laki', '082378798990', 4),
(6, '2017-08-24 02:24:46', 'Nanang', 32, 'laki-laki', '082367782323', 5),
(8, '2017-08-24 02:27:01', 'Danu', 23, 'laki-laki', '082345458888', 6),
(9, '2017-08-24 04:21:41', 'Gogon', 54, 'laki-laki', '081239393494', 7),
(11, '2017-09-08 08:41:24', 'Digo chandra', 28, 'laki-laki', '087789893434', 8),
(12, '2017-09-08 08:41:24', 'Rina Wati', 24, 'perempuan', '087789893434', 8),
(14, '2017-09-08 08:48:54', 'Sumiati', 50, 'perempuan', '081227878021', 9),
(16, '2017-09-08 08:48:55', 'yunita', 21, 'perempuan', '081227878021', 9),
(18, '2017-09-10 14:30:47', 'Rahmat', 34, 'laki-laki', '081266343475', 10),
(19, '2017-09-10 14:30:47', 'Nia nazwa', 24, 'perempuan', '081266343475', 10),
(21, '2017-09-13 00:46:19', 'Mhd. somad sidamanik', 45, 'laki-laki', '087798982323', 11),
(22, '2017-09-13 00:46:19', 'Zaidar hanum hutabarat', 40, 'perempuan', '087798982323', 11),
(23, '2017-09-13 00:46:19', 'Mhd. rizky azhari sidamanik', 18, 'laki-laki', '087798982323', 11),
(24, '2017-09-13 10:33:23', 'Hadi Syaputra', 34, 'laki-laki', '087812128990', 12),
(26, '2017-09-13 10:33:23', 'Siti zulaika', 17, 'perempuan', '087812128990', 12),
(27, '2017-09-13 10:47:08', 'Prabowo waluyo', 60, 'laki-laki', '081265658778', 13),
(28, '2017-09-13 10:47:08', 'Bambang waluyo', 57, 'laki-laki', '081265658778', 13),
(29, '2017-09-13 10:47:08', 'Warsono waluyo', 55, 'laki-laki', '081265658778', 13),
(30, '2017-09-13 10:56:34', 'Danang', 45, 'laki-laki', '082345457670', 14),
(31, '2017-09-13 10:56:34', 'Doni', 41, 'laki-laki', '082345457670', 14),
(32, '2017-09-13 10:56:34', 'Dona', 38, 'perempuan', '082345457670', 14),
(33, '2017-09-13 10:56:34', 'Dion', 35, 'laki-laki', '082345457670', 14),
(34, '2017-09-13 10:56:34', 'Dina', 30, 'perempuan', '082345457670', 14),
(35, '2017-09-13 12:28:55', 'Jefry Tambunan', 27, 'laki-laki', '082389897990', 15),
(36, '2017-09-13 12:28:55', 'Rohis ahmad Siregar', 31, 'laki-laki', '082389897990', 15),
(37, '2017-09-13 12:28:55', 'Dinni ariani', 24, 'perempuan', '082389897990', 15),
(38, '2017-09-13 12:28:55', 'Nardianto', 28, 'laki-laki', '082389897990', 15),
(39, '2017-09-13 12:28:55', 'Kindo hutabarat', 34, 'laki-laki', '082389897990', 15),
(40, '2017-09-13 12:28:55', 'Dian nasila', 26, 'perempuan', '082389897990', 15),
(41, '2017-09-13 12:33:10', 'Difa nando', 34, 'laki-laki', '087745458980', 16),
(42, '2017-09-13 12:34:14', 'Tio narto', 37, 'laki-laki', '082349949977', 17),
(43, '2017-09-13 12:35:47', 'Jeny', 35, 'perempuan', '081244849980', 18),
(44, '2017-09-13 12:37:48', 'Mhd. mahdi adi', 45, 'laki-laki', '081267673434', 19),
(45, '2017-09-13 12:37:49', 'Mhd. Safry adi', 17, 'laki-laki', '081267673434', 19),
(46, '2017-09-13 12:37:49', 'Sumiatini', 40, 'perempuan', '081267673434', 19),
(47, '2017-09-13 12:39:43', 'Jeka wirlanda', 28, 'laki-laki', '081256563232', 20),
(48, '2017-09-13 12:46:56', 'Wagiman', 48, 'laki-laki', '081277892323', 21),
(49, '2017-09-13 12:46:56', 'Wagiyem', 42, 'perempuan', '081277892323', 21),
(50, '2017-09-13 12:46:56', 'Wasiman', 29, 'laki-laki', '081277892323', 21),
(51, '2017-09-13 12:48:14', 'Gino', 32, 'laki-laki', '081244884488', 22),
(52, '2017-09-13 12:49:52', 'Wak No', 56, 'laki-laki', '081278782323', 23),
(53, '2017-09-13 12:52:24', 'Kendro', 35, 'laki-laki', '085812238834', 24),
(54, '2017-09-13 12:54:22', 'Wani', 30, 'perempuan', '085688234545', 25),
(55, '2017-09-13 12:55:40', 'Obito', 35, 'laki-laki', '082378783434', 26),
(56, '2017-09-13 13:00:38', 'Harianto', 30, 'laki-laki', '081254547878', 27),
(57, '2017-09-13 13:00:38', 'Herawati', 24, 'perempuan', '081254547878', 27),
(58, '2017-09-13 13:01:54', 'Harismanto', 18, 'laki-laki', '081245457676', 28),
(59, '2017-09-13 13:03:58', 'Zainal', 27, 'laki-laki', '082365772312', 29),
(60, '2017-09-13 13:10:11', 'Wardono', 52, 'laki-laki', '081244774884', 30),
(61, '2017-09-13 13:12:38', 'Gita gina', 31, 'perempuan', '085867723423', 31),
(62, '2017-09-13 13:14:59', 'Rio gino', 34, 'laki-laki', '081278782323', 32),
(63, '2017-09-13 13:14:59', 'Yenny', 28, 'perempuan', '081278782323', 32),
(64, '2017-09-13 13:16:03', 'Azis', 30, 'laki-laki', '081234557655', 33),
(65, '2017-09-14 08:15:33', 'Tomy ', 31, 'laki-laki', '087723555723', 34),
(66, '2017-09-16 03:33:31', 'Nurdi', 25, 'laki-laki', '081267681212', 35),
(67, '2017-09-16 03:33:31', 'Jono', 45, 'laki-laki', '081267681212', 35),
(68, '2017-09-16 03:36:36', 'Hotman Saragi', 45, 'laki-laki', '081234346565', 36),
(69, '2017-09-16 03:36:36', 'Nando Gulo', 34, 'laki-laki', '081234346565', 36),
(70, '2017-09-16 03:36:36', 'Maria Butet Hutagaol', 39, 'perempuan', '081234346565', 36),
(71, '2017-09-16 03:42:07', 'Nur Cahaya', 45, 'perempuan', '087734993487', 37),
(72, '2017-09-16 03:42:07', 'Sri Lestari', 40, 'perempuan', '087734993487', 37),
(73, '2017-09-16 04:12:23', 'Sudarto', 35, 'laki-laki', '081245662312', 38),
(74, '2017-09-16 04:16:00', 'Etang pardede', 28, 'laki-laki', '081277593385', 39),
(75, '2017-09-16 04:16:00', 'Togar hutapea', 34, 'laki-laki', '081277593385', 39),
(76, '2017-09-16 04:16:00', 'Gito prabowo', 32, 'laki-laki', '081277593385', 39),
(77, '2017-09-16 04:20:44', 'Tono', 34, 'laki-laki', '081278474744', 40),
(78, '2017-09-16 04:22:12', 'Toni', 35, 'laki-laki', '081237575853', 41);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `shuttleid` int(11) DEFAULT NULL,
  `users_roleid` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `locked` tinyint(4) NOT NULL DEFAULT '1',
  `photo` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `shuttleid`, `users_roleid`, `status`, `locked`, `photo`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Faijo', 1, 1, 1, 1, '5e4af08a664ce2d327ad0e6171188a41.jpg'),
(23, 'daud', 'e5d31ab7180cd8d9e0376a9f2d67c64d', 'daud panjaitan', 2, 2, 0, 1, '634640a72fa52797388c676f9c8c8205.jpg'),
(32, 'nande', 'e287b4bdaa4072263b902e5574f49ebf', 'nande nanda', 1, 2, 1, 1, '3d5b27ac7db1ebdfe84ed5a0e501d37d.jpg'),
(33, 'daud', 'de6838252f95d3b9e803b28df33b4baa', 'Daud Samsul', 2, 2, 1, 1, '221bd2dceca7aa8c8bbc4edf2fd5226f.png'),
(34, 'bambang', 'a9711cbb2e3c2d5fc97a63e45bbe5076', 'Bambang', 5, 2, 1, 1, '48f2f62242dece07c2081479c538fb8a.jpg'),
(35, 'joni', '1281d0ac7a74eb91550ff52a02862cda', 'Joni Hasan', 6, 2, 1, 1, 'bbde612744ae5d7d38084ca4c3862c64.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id` tinyint(4) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_route`
--
ALTER TABLE `bus_route`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jam_id` (`jam_id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jamkeberangkatan`
--
ALTER TABLE `jamkeberangkatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perjalanan`
--
ALTER TABLE `perjalanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shuttle`
--
ALTER TABLE `shuttle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_tiket`
--
ALTER TABLE `transaksi_tiket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `transaksi_tiket_ibfk_3` (`traveller_id`);

--
-- Indexes for table `traveller`
--
ALTER TABLE `traveller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perjalanan_id` (`perjalanan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_roleid` (`users_roleid`),
  ADD KEY `shuttleid` (`shuttleid`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `bus_route`
--
ALTER TABLE `bus_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `jamkeberangkatan`
--
ALTER TABLE `jamkeberangkatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `perjalanan`
--
ALTER TABLE `perjalanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `shuttle`
--
ALTER TABLE `shuttle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `transaksi_tiket`
--
ALTER TABLE `transaksi_tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `traveller`
--
ALTER TABLE `traveller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus_route`
--
ALTER TABLE `bus_route`
  ADD CONSTRAINT `bus_route_ibfk_1` FOREIGN KEY (`jam_id`) REFERENCES `jamkeberangkatan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bus_route_ibfk_2` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_tiket`
--
ALTER TABLE `transaksi_tiket`
  ADD CONSTRAINT `transaksi_tiket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_tiket_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `bus_route` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_tiket_ibfk_3` FOREIGN KEY (`traveller_id`) REFERENCES `traveller` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`shuttleid`) REFERENCES `shuttle` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`users_roleid`) REFERENCES `users_role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
