-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 01:30 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mhs`
--

CREATE TABLE `data_mhs` (
  `nim` int(9) NOT NULL,
  `nama_mhs` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_mhs`
--

INSERT INTO `data_mhs` (`nim`, `nama_mhs`, `alamat`, `jenis_kelamin`, `prodi`) VALUES
(161402002, 'Hana Rabitha Hasni', 'Jalan Melatih Jingga Kemarau', 'Perempuan', 'Ilmu Komputer'),
(161402005, 'Desi B. Tambunan', 'Jalan Mekar Sari Mewangi', 'Perempuan', 'Ilmu Komputer'),
(161402007, 'Ilham Kurnia Wahyudi Rusli', 'Jalan Berbatu Tajam Berdarah', 'Laki-laki', 'Teknologi Informasi'),
(161402008, 'Dewi Safrida Telaumbanua', 'Jalan Mengasihani Sesama', 'Perempuan', 'Ilmu Komputer'),
(161402011, 'Elwin Duha', 'Jalan Bahagia', 'Laki-laki', 'Teknologi Informasi'),
(161402014, 'Khairunnisa Sitanggang', 'Jalan Gunung Hijau', 'Perempuan', 'Ilmu Komputer'),
(161402017, 'Jhon Rendy Sortono', 'Jalan Setia Budi', 'Laki-laki', 'Teknologi Informasi'),
(161402059, 'Sahat Gebima Sihotang', 'Jalan Permata Mekar', 'Laki-laki', 'Teknologi Informasi'),
(161402065, 'Aldo Stepanus Simarmata', 'Jalan Berdikari', 'Laki-laki', 'Teknologi Informasi'),
(161402137, 'Ricardo Randal Pandia', 'Perumahan Ambasaddor', 'Laki-laki', 'Teknologi Informasi'),
(161402143, 'Gebriel Juliendi Sitorus', 'Amplas', 'Laki-laki', 'Teknologi Informasi'),
(161402146, 'Zico Enrique Bukit (Hills)', 'Jalan Dota perSteam', 'Laki-laki', 'Teknologi Informasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mhs`
--
ALTER TABLE `data_mhs`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
