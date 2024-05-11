-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 06:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3doffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `dlist_customer_name`
--

CREATE TABLE `dlist_customer_name` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dlist_customer_name`
--

INSERT INTO `dlist_customer_name` (`id`, `nama`, `alamat`, `contact`) VALUES
(1, 'Goldwell', 'Jl Engku Putri', ''),
(2, 'Rapala', 'Batam Indo', ''),
(3, 'Sumitomo', 'Batam Indo', '');

-- --------------------------------------------------------

--
-- Table structure for table `jcr_pdf`
--

CREATE TABLE `jcr_pdf` (
  `id` int(5) NOT NULL,
  `refrence` varchar(20) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_add` varchar(200) DEFAULT NULL,
  `location` varchar(400) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jcr_pdf`
--

INSERT INTO `jcr_pdf` (`id`, `refrence`, `customer_name`, `customer_add`, `location`, `cdate`) VALUES
(1, 'asdasdadad', 'Poltek', 'Poltek', 'asdadsadasdada			', '2024-03-25 10:48:00'),
(2, 'asdasdadad', 'Poltek', 'Poltek', 'asdadsadasdada			', '2024-03-25 10:48:00'),
(3, 'asdasdadad', 'Poltek', 'Poltek', '	asdadasdasd		', '2024-03-25 10:54:00'),
(4, 'asdasdadad', 'Poltek', 'Poltek', '	asdadasdasd		', '2024-03-25 10:54:00'),
(5, '', '', '', '', '0000-00-00 00:00:00'),
(6, '', '', '', '', '0000-00-00 00:00:00'),
(7, '', '', '', '', '0000-00-00 00:00:00'),
(8, '10101', 'Raja', 'Jl. Ksatria', 'Choose			', '2024-03-27 09:08:00'),
(9, '', '', '', '', '0000-00-00 00:00:00'),
(12, '', '', '', '			', '0000-00-00 00:00:00'),
(13, 'TEst', 'TEst', 'tTERE', 'aewaeae			', '2024-03-30 10:13:00'),
(14, 'c kekekc', 'edakdoskoad', 'dkoekdoekd', 'deodkoedoada			', '2024-03-30 10:25:00'),
(15, 'c kekekc', 'edakdoskoad', 'dkoekdoekd', 'deodkoedoada			', '2024-03-30 10:25:00'),
(16, '101999099', 'Uniba', 'Jl. Ksatria', 'Bla bla bla bla bla', '2024-03-30 10:25:00'),
(17, 'cek', 'cek nama', 'cek alamat', 'cek deskripsi			', '2024-04-01 10:32:00'),
(18, 'cek', 'cek nama', 'cek alamat', 'cek deskripsi			', '2024-04-01 10:32:00'),
(19, 'cek', 'cek nama', 'cek alamat', 'cek deskripsi			', '2024-04-01 10:32:00'),
(20, '', '', '', '', '0000-00-00 00:00:00'),
(21, '', '', '', '', '0000-00-00 00:00:00'),
(22, '1234567780', 'Obaja', 'Villa Pesona Asri', 'Pemasangan Kabel			', '2024-04-01 10:58:00'),
(23, '1234567780', 'Obaja', 'Villa Pesona Asri', 'Pemasangan Kabel			', '2024-04-01 10:58:00'),
(24, '1234567780', 'Obaja', 'Villa Pesona Asri', 'Pemasangan Kabel			', '2024-04-01 10:58:00'),
(25, '1234567780', 'Obaja', 'Villa Pesona Asri', 'Pemasangan Kabel			', '2024-04-01 10:58:00'),
(26, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(27, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(28, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(29, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(30, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(31, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(32, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(33, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(34, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(35, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(36, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(37, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(38, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(39, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(40, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(41, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(42, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(43, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(44, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(45, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(46, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(47, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(48, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(49, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(50, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(51, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(52, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(53, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(54, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(55, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(56, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(57, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(58, 'asdasdadad', 'wedasdas', 'Poltek', 'ghgadasdadsad		', '2024-04-01 12:04:00'),
(59, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(60, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(61, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(62, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(63, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(64, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(65, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(66, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(67, 'qeqwe32323', 'qwdqewe', 'asdasdsda', 'adasd	sadsd	asdadaaasdsdaddsada	', '2024-04-01 13:42:00'),
(68, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(69, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(70, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(71, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(72, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(73, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(74, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(75, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(76, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(77, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(78, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(79, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(80, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(81, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(82, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(83, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(84, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(85, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(86, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(87, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(88, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(89, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(90, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(91, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(92, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(93, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(94, '', '', '', '', '0000-00-00 00:00:00'),
(95, '10023', 'Obaja', 'Jl Engku Putri', 'asdadasd		', '2024-04-03 08:42:00'),
(96, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(97, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(98, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(99, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(100, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(101, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(102, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(103, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(104, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(105, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(106, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(107, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(108, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(109, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(110, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(111, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(112, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(113, '10101', 'Goldwell', 'Jl Engku Putri', 'Pengerjaan Kabel		', '2024-04-04 10:45:00'),
(114, 'TEST', 'Testing 1', 'Testing alamat', 'Testing Des', '2024-04-22 08:46:00'),
(115, 'Testing Obaja', 'Chris ', 'Jalan Besar', 'Perbaikan ODP			', '2024-04-22 11:00:00'),
(116, '3DT-JCR-24-001', 'Obaja', 'Pesona Asri', 'Bermain main dengan kode, Hello World!			', '2024-04-24 09:18:00'),
(117, 'TEst', 'Rapala', 'Jl Engku Putri', 'CEk	', '2024-05-10 22:44:00'),
(118, '10101', 'Goldwell', 'Jl Engku Putri', '		adsadasda	', '2024-05-10 23:33:00'),
(119, '', '', '', '			', '0000-00-00 00:00:00'),
(120, 'asdasdadad', 'Goldwell', 'asdsada', '	asdasdsa', '2024-05-11 00:29:00'),
(121, 'asdasdadad', 'Goldwell', 'asdsada', '	asdasdsa', '2024-05-11 00:29:00'),
(122, 'adsada', 'asdadasd', 'asdasdas', 'asdasdadada', '2024-05-17 00:36:00'),
(123, 'asdas', 'asdadasd', 'dasdad', '		adsadadas	', '2024-05-11 00:37:00'),
(124, 'sdasdas', 'adasdasd', 'asdad', '			asdasdada', '2024-05-11 00:52:00'),
(125, '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pic`
--

CREATE TABLE `pic` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pic`
--

INSERT INTO `pic` (`id`, `nama`, `title`) VALUES
(1, 'Obaja Christison Siadari', 'Web Developmenet'),
(2, 'Luthfi', 'IT Head'),
(3, 'Andi', 'IT Support'),
(4, 'Andi', 'IT Support'),
(5, 'Cinta', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `works` varchar(100) NOT NULL,
  `id_jcr` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `works`, `id_jcr`) VALUES
(1, 'Array', 'asdasd'),
(2, '', ''),
(3, '', ''),
(4, '', ''),
(5, 'Array', '10101'),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, 'Array', ''),
(10, 'dokeoke', 'c keke'),
(11, 'dmkdmkdm', 'c keke'),
(12, 'Survey', '101999'),
(13, 'Kabel', '101999'),
(14, 'cek works 1', 'cek'),
(15, 'cek works 2', 'cek'),
(16, 'cek works 1', 'cek'),
(17, 'cek works 2', 'cek'),
(18, 'cek works 1', 'cek'),
(19, 'cek works 2', 'cek'),
(20, 'Pemasangan Tiang 1-6', '123456'),
(21, 'Pemasangan ODP', '123456'),
(22, 'Pemasangan Tiang 1-6', '123456'),
(23, 'Pemasangan ODP', '123456'),
(24, 'Pemasangan Tiang 1-6', '123456'),
(25, 'Pemasangan ODP', '123456'),
(26, 'Pemasangan Tiang 1-6', '123456'),
(27, 'Pemasangan ODP', '123456'),
(28, 'adasdda', 'asdasd'),
(29, 'asdasdada', 'asdasd'),
(30, 'dasdadasdadsada', 'asdasd'),
(31, 'adasdda', 'asdasd'),
(32, 'asdasdada', 'asdasd'),
(33, 'dasdadasdadsada', 'asdasd'),
(34, 'adasdda', 'asdasd'),
(35, 'asdasdada', 'asdasd'),
(36, 'dasdadasdadsada', 'asdasd'),
(37, 'adasdda', 'asdasd'),
(38, 'asdasdada', 'asdasd'),
(39, 'dasdadasdadsada', 'asdasd'),
(40, 'adasdda', 'asdasd'),
(41, 'asdasdada', 'asdasd'),
(42, 'dasdadasdadsada', 'asdasd'),
(43, 'adasdda', 'asdasd'),
(44, 'asdasdada', 'asdasd'),
(45, 'dasdadasdadsada', 'asdasd'),
(46, 'adasdda', 'asdasd'),
(47, 'asdasdada', 'asdasd'),
(48, 'dasdadasdadsada', 'asdasd'),
(49, 'adasdda', 'asdasd'),
(50, 'asdasdada', 'asdasd'),
(51, 'dasdadasdadsada', 'asdasd'),
(52, 'adasdda', 'asdasd'),
(53, 'asdasdada', 'asdasd'),
(54, 'dasdadasdadsada', 'asdasd'),
(55, 'adasdda', 'asdasd'),
(56, 'asdasdada', 'asdasd'),
(57, 'dasdadasdadsada', 'asdasd'),
(58, 'adasdda', 'asdasd'),
(59, 'asdasdada', 'asdasd'),
(60, 'dasdadasdadsada', 'asdasd'),
(61, 'adasdda', 'asdasd'),
(62, 'asdasdada', 'asdasd'),
(63, 'dasdadasdadsada', 'asdasd'),
(64, 'adasdda', 'asdasd'),
(65, 'asdasdada', 'asdasd'),
(66, 'dasdadasdadsada', 'asdasd'),
(67, 'adasdda', 'asdasd'),
(68, 'asdasdada', 'asdasd'),
(69, 'dasdadasdadsada', 'asdasd'),
(70, 'adasdda', 'asdasd'),
(71, 'asdasdada', 'asdasd'),
(72, 'dasdadasdadsada', 'asdasd'),
(73, 'adasdda', 'asdasd'),
(74, 'asdasdada', 'asdasd'),
(75, 'dasdadasdadsada', 'asdasd'),
(76, 'adasdda', 'asdasd'),
(77, 'asdasdada', 'asdasd'),
(78, 'dasdadasdadsada', 'asdasd'),
(79, 'adasdda', 'asdasd'),
(80, 'asdasdada', 'asdasd'),
(81, 'dasdadasdadsada', 'asdasd'),
(82, 'adasdda', 'asdasd'),
(83, 'asdasdada', 'asdasd'),
(84, 'dasdadasdadsada', 'asdasd'),
(85, 'adasdda', 'asdasd'),
(86, 'asdasdada', 'asdasd'),
(87, 'dasdadasdadsada', 'asdasd'),
(88, 'adasdda', 'asdasd'),
(89, 'asdasdada', 'asdasd'),
(90, 'dasdadasdadsada', 'asdasd'),
(91, 'adasdda', 'asdasd'),
(92, 'asdasdada', 'asdasd'),
(93, 'dasdadasdadsada', 'asdasd'),
(94, 'adasdda', 'asdasd'),
(95, 'asdasdada', 'asdasd'),
(96, 'dasdadasdadsada', 'asdasd'),
(97, 'adasdda', 'asdasd'),
(98, 'asdasdada', 'asdasd'),
(99, 'dasdadasdadsada', 'asdasd'),
(100, 'adasdda', 'asdasd'),
(101, 'asdasdada', 'asdasd'),
(102, 'dasdadasdadsada', 'asdasd'),
(103, 'adasdda', 'asdasd'),
(104, 'asdasdada', 'asdasd'),
(105, 'dasdadasdadsada', 'asdasd'),
(106, 'adasdda', 'asdasd'),
(107, 'asdasdada', 'asdasd'),
(108, 'dasdadasdadsada', 'asdasd'),
(109, 'adasdda', 'asdasd'),
(110, 'asdasdada', 'asdasd'),
(111, 'dasdadasdadsada', 'asdasd'),
(112, 'adasdda', 'asdasd'),
(113, 'asdasdada', 'asdasd'),
(114, 'dasdadasdadsada', 'asdasd'),
(115, 'adasdda', 'asdasd'),
(116, 'asdasdada', 'asdasd'),
(117, 'dasdadasdadsada', 'asdasd'),
(118, 'adasdda', 'asdasd'),
(119, 'asdasdada', 'asdasd'),
(120, 'dasdadasdadsada', 'asdasd'),
(121, 'adasdda', 'asdasd'),
(122, 'asdasdada', 'asdasd'),
(123, 'dasdadasdadsada', 'asdasd'),
(124, 'adasdda', 'asdasd'),
(125, 'asdasdada', 'asdasd'),
(126, 'dasdadasdadsada', 'asdasd'),
(127, 'Lower', 'qeqwe3'),
(128, 'Medium', 'qeqwe3'),
(129, 'Higher', 'qeqwe3'),
(130, 'Lower', 'qeqwe3'),
(131, 'Medium', 'qeqwe3'),
(132, 'Higher', 'qeqwe3'),
(133, 'Lower', 'qeqwe3'),
(134, 'Medium', 'qeqwe3'),
(135, 'Higher', 'qeqwe3'),
(136, 'Lower', 'qeqwe3'),
(137, 'Medium', 'qeqwe3'),
(138, 'Higher', 'qeqwe3'),
(139, 'Lower', 'qeqwe3'),
(140, 'Medium', 'qeqwe3'),
(141, 'Higher', 'qeqwe3'),
(142, 'Lower', 'qeqwe3'),
(143, 'Medium', 'qeqwe3'),
(144, 'Higher', 'qeqwe3'),
(145, 'Lower', 'qeqwe3'),
(146, 'Medium', 'qeqwe3'),
(147, 'Higher', 'qeqwe3'),
(148, 'Lower', 'qeqwe3'),
(149, 'Medium', 'qeqwe3'),
(150, 'Higher', 'qeqwe3'),
(151, 'Lower', 'qeqwe3'),
(152, 'Medium', 'qeqwe3'),
(153, 'Higher', 'qeqwe3'),
(154, 'Tes 1', '10023'),
(155, 'Tes 1', '10023'),
(156, 'Tes 2', '10023'),
(157, 'Tes 3', '10023'),
(158, 'Tes 4', '10023'),
(159, 'Tes 1', '10023'),
(160, 'Tes 2', '10023'),
(161, 'Tes 3', '10023'),
(162, 'Tes 4', '10023'),
(163, 'Tes 1', '10023'),
(164, 'Tes 2', '10023'),
(165, 'Tes 3', '10023'),
(166, 'Tes 4', '10023'),
(167, 'Tes 1', '10023'),
(168, 'Tes 2', '10023'),
(169, 'Tes 3', '10023'),
(170, 'Tes 4', '10023'),
(171, 'Tes 1', '10023'),
(172, 'Tes 2', '10023'),
(173, 'Tes 3', '10023'),
(174, 'Tes 4', '10023'),
(175, 'Tes 1', '10023'),
(176, 'Tes 2', '10023'),
(177, 'Tes 3', '10023'),
(178, 'Tes 4', '10023'),
(179, 'Tes 1', '10023'),
(180, 'Tes 2', '10023'),
(181, 'Tes 3', '10023'),
(182, 'Tes 4', '10023'),
(183, 'Tes 1', '10023'),
(184, 'Tes 1', '10023'),
(185, 'Tes 2', '10023'),
(186, 'Tes 3', '10023'),
(187, 'Tes 4', '10023'),
(188, 'Tes 1', '10023'),
(189, 'Tes 2', '10023'),
(190, 'Tes 3', '10023'),
(191, 'Tes 4', '10023'),
(192, 'Tes 1', '10023'),
(193, 'Tes 2', '10023'),
(194, 'Tes 3', '10023'),
(195, 'Tes 4', '10023'),
(196, 'Tes 1', '10023'),
(197, 'Tes 2', '10023'),
(198, 'Tes 3', '10023'),
(199, 'Tes 4', '10023'),
(200, 'Tes 1', '10023'),
(201, 'Tes 2', '10023'),
(202, 'Tes 3', '10023'),
(203, 'Tes 4', '10023'),
(204, 'Tes 1', '10023'),
(205, 'Tes 2', '10023'),
(206, 'Tes 3', '10023'),
(207, 'Tes 4', '10023'),
(208, 'Tes 1', '10023'),
(209, 'Tes 2', '10023'),
(210, 'Tes 3', '10023'),
(211, 'Tes 4', '10023'),
(212, 'Tes 1', '10023'),
(213, 'Tes 2', '10023'),
(214, 'Tes 3', '10023'),
(215, 'Tes 4', '10023'),
(216, 'Tes 1', '10023'),
(217, 'Tes 2', '10023'),
(218, 'Tes 3', '10023'),
(219, 'Tes 4', '10023'),
(220, 'Tes 1', '10023'),
(221, 'Tes 2', '10023'),
(222, 'Tes 3', '10023'),
(223, 'Tes 4', '10023'),
(224, 'Tes 1', '10023'),
(225, 'Tes 2', '10023'),
(226, 'Tes 3', '10023'),
(227, 'Tes 4', '10023'),
(228, 'Tes 1', '10023'),
(229, 'Tes 2', '10023'),
(230, 'Tes 3', '10023'),
(231, 'Tes 4', '10023'),
(232, 'Tes 1', '10023'),
(233, 'Tes 2', '10023'),
(234, 'Tes 3', '10023'),
(235, 'Tes 4', '10023'),
(236, 'Tes 1', '10023'),
(237, 'Tes 2', '10023'),
(238, 'Tes 3', '10023'),
(239, 'Tes 4', '10023'),
(240, 'Tes 1', '10023'),
(241, 'Tes 2', '10023'),
(242, 'Tes 3', '10023'),
(243, 'Tes 4', '10023'),
(244, 'Tes 1', '10023'),
(245, 'Tes 2', '10023'),
(246, 'Tes 3', '10023'),
(247, 'Tes 4', '10023'),
(248, 'Tes 1', '10023'),
(249, 'Tes 2', '10023'),
(250, 'Tes 3', '10023'),
(251, 'Tes 4', '10023'),
(252, 'Tes 1', '10023'),
(253, 'Tes 2', '10023'),
(254, 'Tes 3', '10023'),
(255, 'Tes 4', '10023'),
(256, 'Tes 1', '10101'),
(257, 'tes 2', '10101'),
(258, 'tes 3', '10101'),
(259, 'Tes 1', '10101'),
(260, 'tes 2', '10101'),
(261, 'tes 3', '10101'),
(262, 'Tes 1', '10101'),
(263, 'tes 2', '10101'),
(264, 'tes 3', '10101'),
(265, 'Tes 1', '10101'),
(266, 'tes 2', '10101'),
(267, 'tes 3', '10101'),
(268, 'Tes 1', '10101'),
(269, 'tes 2', '10101'),
(270, 'tes 3', '10101'),
(271, 'Tes 1', '10101'),
(272, 'tes 2', '10101'),
(273, 'tes 3', '10101'),
(274, 'Tes 1', '10101'),
(275, 'tes 2', '10101'),
(276, 'tes 3', '10101'),
(277, 'Tes 1', '10101'),
(278, 'tes 2', '10101'),
(279, 'tes 3', '10101'),
(280, 'Tes 1', '10101'),
(281, 'tes 2', '10101'),
(282, 'tes 3', '10101'),
(283, 'Tes 1', '10101'),
(284, 'tes 2', '10101'),
(285, 'tes 3', '10101'),
(286, 'Tes 1', '10101'),
(287, 'tes 2', '10101'),
(288, 'tes 3', '10101'),
(289, 'Tes 1', '10101'),
(290, 'tes 2', '10101'),
(291, 'tes 3', '10101'),
(292, 'Tes 1', '10101'),
(293, 'tes 2', '10101'),
(294, 'tes 3', '10101'),
(295, 'Tes 1', '10101'),
(296, 'tes 2', '10101'),
(297, 'tes 3', '10101'),
(298, 'Tes 1', '10101'),
(299, 'tes 2', '10101'),
(300, 'tes 3', '10101'),
(301, 'Tes 1', '10101'),
(302, 'tes 2', '10101'),
(303, 'tes 3', '10101'),
(304, 'Tes 1', '10101'),
(305, 'tes 2', '10101'),
(306, 'tes 3', '10101'),
(307, 'Tes 1', '10101'),
(308, 'tes 2', '10101'),
(309, 'tes 3', '10101'),
(310, 'Pekerjaan 1', 'TEST'),
(311, 'Pekerjaan 2', 'TEST'),
(312, 'Pekerjaan 3', 'TEST'),
(313, 'Perkerjaan 1', 'Testin'),
(314, 'Pekerjaan 2', 'Testin'),
(315, 'Tugas 1', '3DT-JC'),
(316, 'Tugas 2', '3DT-JC'),
(317, 'Tugas 3', '3DT-JC'),
(318, 'Tugas 4', '3DT-JC'),
(319, 'Tugas 5', '3DT-JC'),
(320, 'Test', 'TEst'),
(321, 'test', 'TEst'),
(322, 'dadsada', '10101'),
(323, 'ssfsdf', '10101'),
(324, 'xsdasdada', ''),
(325, 'asdsadas', 'asdasd'),
(326, 'asdsadas', 'asdasd'),
(327, 'adasdad', 'adsada'),
(328, 'dadasda', 'asdas'),
(329, 'adadsad', 'sdasda'),
(330, 'dasdadad', 'sdasda'),
(331, 'gadgagdag', 'sdasda'),
(332, 'ghfhfgh', 'sdasda'),
(333, 'jgkkuk', 'sdasda');

-- --------------------------------------------------------

--
-- Table structure for table `wo_detailsofworks`
--

CREATE TABLE `wo_detailsofworks` (
  `id` int(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wo_detailsofworks`
--

INSERT INTO `wo_detailsofworks` (`id`, `description`, `remarks`, `reference`) VALUES
(1, 'sadasdas', 'asdasd', 'asdasdas'),
(2, 'sadasdas', 'asdasd', 'asdasdas'),
(3, 'sadasdas', 'asdasd', 'asdasdas'),
(4, 'asdadadad', 'dasdadad', 'asdasdsa'),
(5, 'asdadadad', 'dasdadad', 'asdasdsa'),
(6, 'asdadadad', 'dasdadad', 'asdasdsa'),
(7, 'asdadadad', 'dasdadad', 'asdasdsa'),
(8, 'asdadadad', 'dasdadad', 'asdasdsa'),
(9, 'asdadadad', 'dasdadad', 'asdasdsa'),
(10, 'asdadadad', 'dasdadad', 'asdasdsa'),
(11, 'asdadadad', 'dasdadad', 'asdasdsa'),
(12, 'asdadadad', 'dasdadad', 'asdasdsa'),
(13, 'asdadadad', 'dasdadad', 'asdasdsa'),
(14, 'asdadadad', 'dasdadad', 'asdasdsa'),
(15, 'asdadadad', 'dasdadad', 'asdasdsa'),
(16, 'asdadadad', 'dasdadad', 'asdasdsa'),
(17, 'asdadadad', 'dasdadad', 'asdasdsa'),
(18, 'asdadadad', 'dasdadad', 'asdasdsa'),
(19, 'sadasdas', 'asdasd', 'asdasdas'),
(20, 'sadasdas', 'asdasd', 'asdasdas'),
(21, 'adadsasd', 'asdasda', 'asdasdas'),
(22, 'adadsasd', 'asdasda', 'asdasdas'),
(23, 'adadsasd', 'asdasda', 'asdasdas'),
(24, 'adadsasd', 'asdasda', 'asdasdas'),
(25, 'adadsasd', 'asdasda', 'asdasdas'),
(26, 'sadasdas', 'asdasd', 'asdasdas'),
(27, 'adadsasd', 'asdasda', 'asdasdas'),
(28, 'sadasdas', 'asdasd', 'asdasdas'),
(29, 'sadasdas', 'asdasd', 'asdasdas'),
(30, 'sadasdas', 'asdasd', 'asdasdas'),
(31, 'sadasdas', 'asdasd', 'asdasdas'),
(32, 'sadasdas', 'asdasd', 'asdasdas'),
(33, 'sadasdas', 'asdasd', 'asdasdas'),
(34, 'sadasdas', 'asdasd', 'asdasdas'),
(35, 'sadasdas', 'asdasd', 'asdasdas'),
(36, 'sadasdas', 'asdasd', 'asdasdas'),
(37, 'sadasdas', 'asdasd', 'asdasdas'),
(38, 'ghghg', 'hghghgh', 'dadsada'),
(39, 'ghghg', 'hghghgh', 'dadsada'),
(40, 'ghghg', 'hghghgh', 'dadsada'),
(41, 'ghghg', 'hghghgh', 'dadsada'),
(42, 'ghghg', 'hghghgh', 'dadsada'),
(43, 'ghghg', 'hghghgh', 'dadsada'),
(44, 'sadasdas', 'asdasd', 'asdasdas'),
(45, 'sadasdas', 'asdasd', 'asdasdas'),
(46, 'sadasdas', 'asdasd', 'asdasdas'),
(47, 'sadasdas', 'asdasd', 'asdasdas'),
(48, 'sadasdas', 'asdasd', 'asdasdas'),
(49, 'sadasdas', 'asdasd', 'asdasdas'),
(50, 'sadasdas', 'asdasd', 'asdasdas'),
(51, 'zxczxc', 'zxczxcz', 'xZXzXX'),
(52, 'zxczxc', 'czczczc', 'xZXzXX'),
(53, 'zxczxc', 'zxczc', 'xZXzXX'),
(54, 'czczxczxcz', 'zxczxcz', 'xZXzXX'),
(55, 'czczxczxcz', 'czczczc', 'xZXzXX'),
(56, 'czczxczxcz', 'zxczc', 'xZXzXX'),
(57, 'zczcz', 'zxczxcz', 'xZXzXX'),
(58, 'zczcz', 'czczczc', 'xZXzXX'),
(59, 'zczcz', 'zxczc', 'xZXzXX'),
(60, 'zxczxc', 'zxczxcz', 'xZXzXX'),
(61, 'zxczxc', 'czczczc', 'xZXzXX'),
(62, 'zxczxc', 'zxczc', 'xZXzXX'),
(63, 'czczxczxcz', 'zxczxcz', 'xZXzXX'),
(64, 'czczxczxcz', 'czczczc', 'xZXzXX'),
(65, 'czczxczxcz', 'zxczc', 'xZXzXX'),
(66, 'zczcz', 'zxczxcz', 'xZXzXX'),
(67, 'zczcz', 'czczczc', 'xZXzXX'),
(68, 'zczcz', 'zxczc', 'xZXzXX'),
(69, 'zxczxc', 'zxczxcz', 'xZXzXX'),
(70, 'zxczxc', 'czczczc', 'xZXzXX'),
(71, 'zxczxc', 'zxczc', 'xZXzXX'),
(72, 'czczxczxcz', 'zxczxcz', 'xZXzXX'),
(73, 'czczxczxcz', 'czczczc', 'xZXzXX'),
(74, 'czczxczxcz', 'zxczc', 'xZXzXX'),
(75, 'zczcz', 'zxczxcz', 'xZXzXX'),
(76, 'zczcz', 'czczczc', 'xZXzXX'),
(77, 'zczcz', 'zxczc', 'xZXzXX'),
(78, 'ghghg', 'hghghgh', 'dadsada'),
(79, 'ghghg', 'hghghgh', 'dadsada'),
(80, 'ghghg', 'hghghgh', 'dadsada'),
(81, 'ghghg', 'hghghgh', 'dadsada'),
(82, 'ghghg', 'hghghgh', 'dadsada'),
(83, 'ghghg', 'hghghgh', 'dadsada'),
(84, 'ghghg', 'hghghgh', 'dadsada'),
(85, 'ghghg', 'hghghgh', 'dadsada');

-- --------------------------------------------------------

--
-- Table structure for table `wo_deviceused`
--

CREATE TABLE `wo_deviceused` (
  `id` int(10) NOT NULL,
  `item_description` varchar(100) NOT NULL,
  `qty` int(5) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wo_pdf`
--

CREATE TABLE `wo_pdf` (
  `id` int(11) NOT NULL,
  `refrence` varchar(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_add` varchar(200) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `cdate` datetime DEFAULT NULL,
  `technician` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wo_pdf`
--

INSERT INTO `wo_pdf` (`id`, `refrence`, `customer_name`, `customer_add`, `contact`, `cdate`, `technician`) VALUES
(1, '3DT-WO-0001', 'Hello World', '', '', NULL, ''),
(2, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(3, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(4, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(5, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(6, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(7, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(8, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(9, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(10, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(11, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(12, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(13, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(14, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(15, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(16, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(17, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(18, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(19, 'asdasdsa', 'asdadasd', 'asdadas', 'dasdadasdasd', '2024-05-11 07:33:00', 'Obaja Christison Siadari'),
(20, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(21, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(22, 'asdasdas', 'sadasda', 'Jl Engku Putri', '12313', '2024-05-11 08:39:00', 'asdasdasd'),
(23, 'asdasdas', 'sadasda', 'Jl Engku Putri', '12313', '2024-05-11 08:39:00', 'asdasdasd'),
(24, 'asdasdas', 'sadasda', 'Jl Engku Putri', '12313', '2024-05-11 08:39:00', 'asdasdasd'),
(25, 'asdasdas', 'sadasda', 'Jl Engku Putri', '12313', '2024-05-11 08:39:00', 'asdasdasd'),
(26, 'asdasdas', 'sadasda', 'Jl Engku Putri', '12313', '2024-05-11 08:39:00', 'asdasdasd'),
(27, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(28, 'asdasdas', 'sadasda', 'Jl Engku Putri', '12313', '2024-05-11 08:39:00', 'asdasdasd'),
(29, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(30, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(31, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(32, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(33, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(34, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(35, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(36, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(37, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(38, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(39, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(40, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(41, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(42, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(43, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(44, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(45, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(46, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(47, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(48, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(49, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(50, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(51, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(52, 'xZXzXX', 'XZXXZ', 'Jl Engku Putri', 'czxczxc', '2024-05-11 09:34:00', 'zczxcz'),
(53, 'xZXzXX', 'XZXXZ', 'Jl Engku Putri', 'czxczxc', '2024-05-11 09:34:00', 'zczxcz'),
(54, 'xZXzXX', 'XZXXZ', 'Jl Engku Putri', 'czxczxc', '2024-05-11 09:34:00', 'zczxcz'),
(55, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(56, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(57, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(58, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(59, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(60, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(61, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(62, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(63, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(64, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(65, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(66, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(67, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(68, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(69, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(70, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(71, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(72, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(73, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(74, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(75, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(76, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(77, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(78, 'asdasdas', 'dasdasd', 'asdasd', 'asdasdasd', '2024-05-11 07:39:00', 'Obaja Christison Siadari'),
(79, 'dadsada', 'dasdasd', 'asdasdad', 'afasfasf', '2024-05-11 09:13:00', 'fgfdgdfg'),
(80, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(81, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(82, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(83, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(84, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(85, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(86, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(87, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(88, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(89, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(90, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(91, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(92, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(93, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(94, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(95, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(96, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(97, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(98, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(99, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(100, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(101, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(102, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(103, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(104, 'adasdasd', 'adada', 'sdadad', 'adasdada', '2024-05-11 10:25:00', 'asdasda'),
(105, 'asdasdasd', 'asdasd', 'asdasd', 'asdad', '2024-05-11 11:30:00', 'Andi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dlist_customer_name`
--
ALTER TABLE `dlist_customer_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jcr_pdf`
--
ALTER TABLE `jcr_pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wo_detailsofworks`
--
ALTER TABLE `wo_detailsofworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wo_deviceused`
--
ALTER TABLE `wo_deviceused`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wo_pdf`
--
ALTER TABLE `wo_pdf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dlist_customer_name`
--
ALTER TABLE `dlist_customer_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jcr_pdf`
--
ALTER TABLE `jcr_pdf`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `pic`
--
ALTER TABLE `pic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `wo_detailsofworks`
--
ALTER TABLE `wo_detailsofworks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `wo_deviceused`
--
ALTER TABLE `wo_deviceused`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wo_pdf`
--
ALTER TABLE `wo_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
