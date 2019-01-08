-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2019 at 02:46 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mom`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_peserta`
--

CREATE TABLE `daftar_peserta` (
  `id_daftar_peserta` int(10) UNSIGNED NOT NULL,
  `nama` varchar(64) NOT NULL,
  `instansi` varchar(32) NOT NULL,
  `absen` enum('1','0') NOT NULL,
  `id_mom` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_peserta`
--

INSERT INTO `daftar_peserta` (`id_daftar_peserta`, `nama`, `instansi`, `absen`, `id_mom`, `created_at`, `updated_at`) VALUES
(4, 'Otongs', 'Finger', '1', 1, '2018-12-20 11:17:10', '2018-12-21 19:36:06'),
(5, 'Ganjar', 'Kebon Begonia', '1', 1, '2018-12-20 11:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pokok_bahasan`
--

CREATE TABLE `detail_pokok_bahasan` (
  `id_detail_pokok_bahasan` int(10) UNSIGNED NOT NULL,
  `no` int(10) UNSIGNED NOT NULL,
  `detail_pokok_bahasan` text NOT NULL,
  `id_pokok_bahasan` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(10) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_mom` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mom`
--

CREATE TABLE `mom` (
  `id_mom` int(10) UNSIGNED NOT NULL,
  `agenda` varchar(64) NOT NULL,
  `tanggal_waktu` date NOT NULL,
  `lokasi` varchar(32) NOT NULL,
  `kesimpulan` text,
  `id_project` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mom`
--

INSERT INTO `mom` (`id_mom`, `agenda`, `tanggal_waktu`, `lokasi`, `kesimpulan`, `id_project`, `id`, `created_at`, `updated_at`) VALUES
(1, 'asd', '2018-12-20', 'Bandung', NULL, 1, 1, '2018-12-20 07:47:32', NULL),
(2, 'asd', '2018-12-20', 'Bandung', NULL, 1, 1, '2018-12-20 07:47:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pokok_bahasan`
--

CREATE TABLE `pokok_bahasan` (
  `id_pokok_bahasan` int(10) UNSIGNED NOT NULL,
  `no` int(10) UNSIGNED NOT NULL,
  `pokok_bahasan` text NOT NULL,
  `id_mom` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokok_bahasan`
--

INSERT INTO `pokok_bahasan` (`id_pokok_bahasan`, `no`, `pokok_bahasan`, `id_mom`, `created_at`, `updated_at`) VALUES
(1, 1, 'Membahas tentang dokumen teknis mengenai kebutuhan fungsionala xxxxxxxx', 1, '2018-12-21 22:32:44', '2018-12-21 19:34:06'),
(2, 2, 'Membahas non fungsional', 1, '2018-12-21 22:33:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id_project` int(10) UNSIGNED NOT NULL,
  `nama_project` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id_project`, `nama_project`, `created_at`, `updated_at`) VALUES
(1, 'IDIS', '2018-12-20 07:34:30', '2018-12-21 09:29:57'),
(2, 'OJK', '2018-12-21 11:33:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `jabatan`, `no_hp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fahmi Hidayatullah', 'fahmi.kudo12@gmail.com', NULL, '$2y$10$MjHu7FRbwbnDEvPpQwL1quZuRZjRRInauK9wAa098aFYW/X3eQ1e2', NULL, NULL, NULL, '2018-12-20 00:03:15', '2018-12-20 00:03:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_peserta`
--
ALTER TABLE `daftar_peserta`
  ADD PRIMARY KEY (`id_daftar_peserta`),
  ADD KEY `fk_id_mom_daftar_peserta` (`id_mom`);

--
-- Indexes for table `detail_pokok_bahasan`
--
ALTER TABLE `detail_pokok_bahasan`
  ADD PRIMARY KEY (`id_detail_pokok_bahasan`),
  ADD KEY `fk_id_pokok_bahasan` (`id_pokok_bahasan`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`),
  ADD KEY `fk_id_mom_gallery` (`id_mom`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mom`
--
ALTER TABLE `mom`
  ADD PRIMARY KEY (`id_mom`) USING BTREE,
  ADD KEY `fk_id_project_mom` (`id_project`),
  ADD KEY `fk_id_mom` (`id`);

--
-- Indexes for table `pokok_bahasan`
--
ALTER TABLE `pokok_bahasan`
  ADD PRIMARY KEY (`id_pokok_bahasan`),
  ADD KEY `fk_id_mom_pokok_bahasan` (`id_mom`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_peserta`
--
ALTER TABLE `daftar_peserta`
  MODIFY `id_daftar_peserta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_pokok_bahasan`
--
ALTER TABLE `detail_pokok_bahasan`
  MODIFY `id_detail_pokok_bahasan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mom`
--
ALTER TABLE `mom`
  MODIFY `id_mom` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pokok_bahasan`
--
ALTER TABLE `pokok_bahasan`
  MODIFY `id_pokok_bahasan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_peserta`
--
ALTER TABLE `daftar_peserta`
  ADD CONSTRAINT `fk_id_mom_daftar_peserta` FOREIGN KEY (`id_mom`) REFERENCES `mom` (`id_mom`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `detail_pokok_bahasan`
--
ALTER TABLE `detail_pokok_bahasan`
  ADD CONSTRAINT `fk_id_pokok_bahasan` FOREIGN KEY (`id_pokok_bahasan`) REFERENCES `pokok_bahasan` (`id_pokok_bahasan`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `fk_id_mom_gallery` FOREIGN KEY (`id_mom`) REFERENCES `mom` (`id_mom`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `mom`
--
ALTER TABLE `mom`
  ADD CONSTRAINT `fk_id_mom` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_project_mom` FOREIGN KEY (`id_project`) REFERENCES `project` (`id_project`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `pokok_bahasan`
--
ALTER TABLE `pokok_bahasan`
  ADD CONSTRAINT `fk_id_mom_pokok_bahasan` FOREIGN KEY (`id_mom`) REFERENCES `mom` (`id_mom`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
