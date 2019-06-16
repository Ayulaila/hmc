-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Jun 2019 pada 10.12
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmc_rs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `kode_dokter` varchar(100) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `harga_dokter` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`kode_dokter`, `nama_dokter`, `harga_dokter`) VALUES
('DR001', 'dr. Eka', 48000),
('DR002', 'dr. Eni', 60000),
('DR003', 'dr. Dila', 48000),
('DR004', 'dr. Nila', 48000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_pendapatan`
--

CREATE TABLE `jenis_pendapatan` (
  `kode_pendapatan` varchar(100) NOT NULL,
  `nama_pendapatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_pengeluaran`
--

CREATE TABLE `jenis_pengeluaran` (
  `kode_pengeluaran` varchar(100) NOT NULL,
  `nama_pengeluaran` varchar(100) NOT NULL,
  `harga_pengeluaran` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `kode_obat` varchar(100) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `harga_obat` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat_pasien`
--

CREATE TABLE `obat_pasien` (
  `no_op` int(100) NOT NULL,
  `kode_pasien` varchar(100) NOT NULL,
  `kode_obat` varchar(100) NOT NULL,
  `banyak_obat` int(100) NOT NULL,
  `total_obat` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `kode_pasien` varchar(100) NOT NULL,
  `no_identitas` int(10) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `umur_pasien` int(10) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_keluar` date NOT NULL,
  `penyakit` varchar(100) NOT NULL,
  `kode_dokter` varchar(100) NOT NULL,
  `biaya_obat` int(100) NOT NULL,
  `biaya_tindakan` int(100) NOT NULL,
  `adm` int(100) NOT NULL,
  `total_biaya` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan`
--

CREATE TABLE `pendapatan` (
  `no_pendapatan` int(10) NOT NULL,
  `tgl_pendapatan` date NOT NULL,
  `kode_pendapatan` varchar(100) NOT NULL,
  `banyak_pendapatan` int(100) NOT NULL,
  `total_pendapatan` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `no_pengeluaran` int(10) NOT NULL,
  `tgl_pengeluaran` date NOT NULL,
  `kode_pengeluaran` varchar(100) NOT NULL,
  `banyak_pengeluaran` int(100) NOT NULL,
  `total_pengeluaran` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindakan`
--

CREATE TABLE `tindakan` (
  `kode_tindakan` varchar(100) NOT NULL,
  `nama_tindakan` varchar(100) NOT NULL,
  `harga_tindakan` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindakan_pasien`
--

CREATE TABLE `tindakan_pasien` (
  `no_tp` int(100) NOT NULL,
  `kode_pasien` varchar(100) NOT NULL,
  `kode_tindakan` varchar(100) NOT NULL,
  `banyak_tp` int(100) NOT NULL,
  `harga_tp` int(100) NOT NULL,
  `total_tp` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_grup` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan','','') DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `id_grup`, `full_name`, `jenis_kelamin`, `tanggal_lahir`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_grup`
--

CREATE TABLE `user_grup` (
  `id_grup` int(11) NOT NULL,
  `grup_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_grup`
--

INSERT INTO `user_grup` (`id_grup`, `grup_name`) VALUES
(1, 'admin'),
(2, 'pemilik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`kode_dokter`);

--
-- Indexes for table `jenis_pendapatan`
--
ALTER TABLE `jenis_pendapatan`
  ADD PRIMARY KEY (`kode_pendapatan`);

--
-- Indexes for table `jenis_pengeluaran`
--
ALTER TABLE `jenis_pengeluaran`
  ADD PRIMARY KEY (`kode_pengeluaran`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indexes for table `obat_pasien`
--
ALTER TABLE `obat_pasien`
  ADD PRIMARY KEY (`no_op`),
  ADD UNIQUE KEY `kode_pasien` (`kode_pasien`),
  ADD UNIQUE KEY `kode_obat` (`kode_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`kode_pasien`),
  ADD UNIQUE KEY `kode_dokter` (`kode_dokter`);

--
-- Indexes for table `pendapatan`
--
ALTER TABLE `pendapatan`
  ADD PRIMARY KEY (`no_pendapatan`),
  ADD UNIQUE KEY `kode_pendapatn` (`kode_pendapatan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`no_pengeluaran`),
  ADD UNIQUE KEY `kode_pengeluaran` (`kode_pengeluaran`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`kode_tindakan`);

--
-- Indexes for table `tindakan_pasien`
--
ALTER TABLE `tindakan_pasien`
  ADD PRIMARY KEY (`no_tp`),
  ADD UNIQUE KEY `kode_pasien` (`kode_pasien`),
  ADD UNIQUE KEY `kode_tindakan` (`kode_tindakan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_grup`
--
ALTER TABLE `user_grup`
  ADD PRIMARY KEY (`id_grup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat_pasien`
--
ALTER TABLE `obat_pasien`
  MODIFY `no_op` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pendapatan`
--
ALTER TABLE `pendapatan`
  MODIFY `no_pendapatan` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `no_pengeluaran` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tindakan_pasien`
--
ALTER TABLE `tindakan_pasien`
  MODIFY `no_tp` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_grup`
--
ALTER TABLE `user_grup`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `obat_pasien`
--
ALTER TABLE `obat_pasien`
  ADD CONSTRAINT `obat_pasien_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`);

--
-- Ketidakleluasaan untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`kode_dokter`) REFERENCES `dokter` (`kode_dokter`);

--
-- Ketidakleluasaan untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  ADD CONSTRAINT `pendapatan_ibfk_1` FOREIGN KEY (`kode_pendapatan`) REFERENCES `jenis_pendapatan` (`kode_pendapatan`);

--
-- Ketidakleluasaan untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `pengeluaran_ibfk_1` FOREIGN KEY (`kode_pengeluaran`) REFERENCES `jenis_pengeluaran` (`kode_pengeluaran`);

--
-- Ketidakleluasaan untuk tabel `tindakan_pasien`
--
ALTER TABLE `tindakan_pasien`
  ADD CONSTRAINT `tindakan_pasien_ibfk_1` FOREIGN KEY (`kode_tindakan`) REFERENCES `tindakan` (`kode_tindakan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
