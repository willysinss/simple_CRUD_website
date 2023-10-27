-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Okt 2023 pada 08.13
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan_kel7`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `performance`
--

CREATE TABLE `performance` (
  `nik` int(8) NOT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `status_kerja` enum('Tetap','Tidak Tetap') DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `tgl_penilaian` date DEFAULT NULL,
  `responsibility` decimal(10,2) DEFAULT NULL,
  `teamwork` decimal(10,2) DEFAULT NULL,
  `management_time` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `grade` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `performance`
--

INSERT INTO `performance` (`nik`, `foto`, `nama`, `status_kerja`, `position`, `tgl_penilaian`, `responsibility`, `teamwork`, `management_time`, `total`, `grade`) VALUES
(32210018, 'burung.jpg', 'Albert Hansel', 'Tetap', 'Data Analy', '2023-10-08', '85.00', '89.00', '80.00', '84.20', 'A'),
(32210088, 'yovan.jpg', 'Yovan Adiputri', 'Tetap', 'Model', '2023-06-06', '60.00', '90.00', '100.00', '85.00', 'A'),
(32210112, 'william.jpg', 'William Ivan Saputra', 'Tetap', 'Backend De', '2023-07-28', '95.00', '75.00', '100.00', '91.00', 'A'),
(32266602, 'senapan2.jpg', 'Albert Baek', 'Tidak Tetap', 'Assassin', '2023-10-14', '45.00', '66.00', '45.00', '51.30', 'C'),
(36664335, 'basket.jpg', 'Albert Jordan', 'Tetap', 'Ball Boy', '2023-06-04', '45.00', '55.00', '64.00', '55.60', 'C'),
(39904113, 'senapan1.jpg', 'Albert Aman', 'Tetap', 'Security', '2023-10-01', '34.00', '22.00', '19.00', '24.40', 'D'),
(234645667, 'burung.jpg', 'Albert Marah', 'Tetap', 'Kang marah', '2023-08-13', '54.00', '67.00', '100.00', '76.30', 'B'),
(322210666, 'albert-pistol.png', 'Albert Kuat', 'Tidak Tetap', 'Tentara', '2023-10-15', '20.00', '10.00', '50.00', '29.00', 'D');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
