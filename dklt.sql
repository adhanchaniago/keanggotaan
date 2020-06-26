-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2020 pada 08.23
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dklt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `divisi_id` int(10) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `agama`, `pekerjaan`, `divisi_id`, `jabatan`, `foto`) VALUES
(1, 'Iwan Setiawan', 'Subang', '2001-01-27', '1', 'Kp. Rawageni RT04/08 Kota Depok', '1', 'Admin', 1, 'Programmer', 'iwan.jpg'),
(3, 'Evan Dimas', 'Bogor', '2000-01-02', '1', 'Kota Bogor', '1', 'Programmer', 2, 'CEO', '1580478612617.jpg'),
(4, 'Dimas Bayu', 'Depok', '2020-01-08', '1', 'Rawageni Depok', '1', 'Programmer', 1, 'Ketua', '1580625488392.png'),
(5, 'Aditya Permana', 'Bogor', '2000-02-25', '1', 'Kota Bogor', '1', 'Programmer', 1, 'Programmer', '1580625609931.jpg'),
(6, 'Putri Puji', 'Depok', '2001-02-14', '2', 'Rawageni', '1', 'Mahasiswa', 2, 'Sekretaris', '1580625871130.jpg'),
(7, 'Zilah', 'Bogor', '2003-06-10', '2', 'Citayam', '1', 'Siswa', 2, 'Bendahara', '1580626056090.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(10) NOT NULL,
  `nama_divisi` varchar(50) DEFAULT NULL,
  `tgl_buat` date DEFAULT NULL,
  `penanggung_jawab` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`, `tgl_buat`, `penanggung_jawab`) VALUES
(1, 'Teknologi', '2020-02-01', 'Evan Dimas Darmono'),
(2, 'Humas', '2020-02-02', 'Nurlailasari'),
(3, 'Keamananan', '2020-02-02', 'Murzal Hazard');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(14) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `email`, `no_hp`, `alamat`, `foto`) VALUES
(1, 'Iwan Setiawan', 'admin', '01ccce480c60fcdb67b54f4509ffdb56', 'siwan2701@gmail.com', '089509400841', 'Jl. Cagar Alam Selatan Kp. Rawageni ', '1582153250713.jpg'),
(3, 'dafa vian', 'dafa', 'a3e22496b84d33b6644874d4afc64d25', 'van@gmail.com', '089624944750', 'bogor', '1582156326941.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
