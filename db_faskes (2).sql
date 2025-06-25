-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 07:09 AM
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
-- Database: `db_faskes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faskes`
--

CREATE TABLE `faskes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nama_pengelola` varchar(45) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `kabkota_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `jenis_faskes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kategori_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faskes`
--

INSERT INTO `faskes` (`id`, `nama`, `foto`, `nama_pengelola`, `alamat`, `website`, `email`, `kabkota_id`, `rating`, `latitude`, `longitude`, `jenis_faskes_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 'RSUD Dr. Soetomo', '1750489944_Screenshot 2025-04-09 124251.png', 'Pemerintah Provinsi Jawa Timur', 'Jl. Mayjen Prof. Dr. Moestopo No.6-8, Airlangga, Gubeng, Surabaya', 'https://rsud.soetomo.go.id', 'info@rsud.soetomo.go.id', 1, 5, -7.269206, 112.760133, 1, 1, '2025-06-20 04:27:30', '2025-06-21 00:12:24'),
(2, 'RS Siloam Surabaya', NULL, 'PT Siloam International Hospitals', 'Jl. Raya Gubeng No.70, Gubeng, Surabaya', 'https://siloamhospitals.com', 'surabaya@siloamhospitals.com', 1, 4, -7.265757, 112.752193, 1, 2, '2025-06-20 04:27:30', '2025-06-20 04:27:30'),
(3, 'Puskesmas Gubeng', NULL, 'Dinas Kesehatan Kota Surabaya', 'Jl. Gubeng Pojok No.24, Gubeng, Surabaya', NULL, 'puskesmas.gubeng@surabaya.go.id', 1, 3, -7.265045, 112.751892, 2, 1, '2025-06-20 04:27:30', '2025-06-20 04:27:30'),
(4, 'RSU dr. Saiful Anwar Malang', NULL, 'Universitas Brawijaya', 'Jl. Jaksa Agung Suprapto No.2, Klojen, Malang', 'https://rssa.malang.ac.id', 'info@rssa.malang.ac.id', 2, 5, -7.96672, 112.633832, 1, 1, '2025-06-20 04:27:30', '2025-06-20 04:27:30'),
(5, 'RSUP Dr. Kariadi Semarang', NULL, 'Universitas Diponegoro', 'Jl. Dr. Sutomo No.16, Randusari, Semarang Selatan', 'https://rskariadi.co.id', 'info@rskariadi.co.id', 3, 4, -7.003245, 110.438225, 1, 1, '2025-06-20 04:27:31', '2025-06-20 04:27:31'),
(6, 'test', NULL, 'test', 'test alamat', 'https:youtube.com', 'raffayudapratama20@gmail.com', 2, 4, 123456, 234567, 2, 2, '2025-06-20 18:23:37', '2025-06-20 18:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `faskes_favorites`
--

CREATE TABLE `faskes_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `faskes_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faskes_favorites`
--

INSERT INTO `faskes_favorites` (`id`, `user_id`, `faskes_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, '2025-06-20 23:16:10', '2025-06-20 23:16:10'),
(7, 2, 2, '2025-06-21 21:08:01', '2025-06-21 21:08:01'),
(11, 1, 1, '2025-06-21 22:19:28', '2025-06-21 22:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `faskes_ratings`
--

CREATE TABLE `faskes_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `faskes_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL COMMENT 'Rating 1-5',
  `review` text DEFAULT NULL COMMENT 'Review/komentar user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faskes_ratings`
--

INSERT INTO `faskes_ratings` (`id`, `user_id`, `faskes_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 4, 'test', '2025-06-21 20:56:32', '2025-06-21 20:56:32'),
(4, 2, 2, 4, 'test', '2025-06-22 01:57:51', '2025-06-22 01:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `faskes_reviews`
--

CREATE TABLE `faskes_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `faskes_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_faskes`
--

CREATE TABLE `jenis_faskes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_faskes`
--

INSERT INTO `jenis_faskes` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Rumah Sakit', NULL, NULL),
(2, 'Puskesmas', NULL, NULL),
(3, 'Klinik', NULL, NULL),
(4, 'Apotek', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kabkota`
--

CREATE TABLE `kabkota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `provinsi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kabkota`
--

INSERT INTO `kabkota` (`id`, `nama`, `latitude`, `longitude`, `provinsi_id`, `created_at`, `updated_at`) VALUES
(1, 'Kota Surabaya', -7.257472, 112.752088, 1, NULL, NULL),
(2, 'Kota Malang', -7.96662, 112.632632, 1, NULL, NULL),
(3, 'Kota Semarang', -7.005145, 110.438125, 2, NULL, NULL),
(4, 'test', 23456789, 87654, 3, '2025-06-20 06:17:05', '2025-06-20 06:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Negeri', NULL, NULL),
(2, 'Swasta', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_20_111825_add_role_to_users_table', 1),
(5, '2025_06_20_111855_create_faskes_tables', 1),
(6, '2025_06_20_124606_add_timestamps_to_master_tables', 2),
(7, '2025_06_21_011109_create_faskes_favorites_table', 3),
(9, '2025_06_21_011118_create_faskes_reviews_table', 4),
(10, '2025_06_21_065250_add_foto_to_faskes_table', 4),
(11, '2025_06_21_091359_create_faskes_ratings_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(45) NOT NULL,
  `ibukota` varchar(45) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama`, `ibukota`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Jawa Timur', 'Surabaya', -7.250445, 112.768845, NULL, NULL),
(2, 'Jawa Tengah', 'Semarang', -6.993194, 110.420761, NULL, NULL),
(3, 'test', 'rtfyguh', 1234567, 234567, NULL, '2025-06-20 20:21:53'),
(4, 'test lagi', 'ioajeo', 3456789, 9876543, '2025-06-20 20:18:47', '2025-06-20 20:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EfEfgY8xRb53cdYGWhKw0JbI6DEt6VVHYBb5yCrs', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1V0UWpQaTJ6eHRzbGtHcGpRaU9ZU0l3RDhDNGxTWE9PcnZSeERLNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sYXlhbmFuIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1750583606);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Administrator', 'admin@test.com', NULL, '$2y$12$B/QKBiDxtvWCp2bytZPRtOBhph6K.MDWkmFUG63WJJVGSWppeWErC', NULL, '2025-06-20 04:27:30', '2025-06-20 04:27:30', 'admin'),
(2, 'User Biasa', 'user@test.com', NULL, '$2y$12$7Qf3eBXmgiUD5JGZe4wqc.XDcVX6pfAj/c8.phd/x.p4GIa.FblC6', NULL, '2025-06-20 04:27:30', '2025-06-20 18:58:50', 'user'),
(3, 'anjasmara', 'anjas@gmail.com', NULL, '$2y$12$9Dy3k0AhUYsaancGxraWpeLZ/Jjicm5AJLUKR1qhtqWfu0pyTZDYu', NULL, '2025-06-20 23:50:26', '2025-06-20 23:50:26', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faskes`
--
ALTER TABLE `faskes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faskes_kabkota_id_foreign` (`kabkota_id`),
  ADD KEY `faskes_jenis_faskes_id_foreign` (`jenis_faskes_id`),
  ADD KEY `faskes_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `faskes_favorites`
--
ALTER TABLE `faskes_favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faskes_favorites_user_id_faskes_id_unique` (`user_id`,`faskes_id`),
  ADD KEY `faskes_favorites_faskes_id_foreign` (`faskes_id`);

--
-- Indexes for table `faskes_ratings`
--
ALTER TABLE `faskes_ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faskes_ratings_user_id_faskes_id_unique` (`user_id`,`faskes_id`),
  ADD KEY `faskes_ratings_faskes_id_foreign` (`faskes_id`);

--
-- Indexes for table `faskes_reviews`
--
ALTER TABLE `faskes_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faskes_reviews_user_id_faskes_id_unique` (`user_id`,`faskes_id`),
  ADD KEY `faskes_reviews_faskes_id_foreign` (`faskes_id`);

--
-- Indexes for table `jenis_faskes`
--
ALTER TABLE `jenis_faskes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kabkota`
--
ALTER TABLE `kabkota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kabkota_provinsi_id_foreign` (`provinsi_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faskes`
--
ALTER TABLE `faskes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faskes_favorites`
--
ALTER TABLE `faskes_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faskes_ratings`
--
ALTER TABLE `faskes_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faskes_reviews`
--
ALTER TABLE `faskes_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_faskes`
--
ALTER TABLE `jenis_faskes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kabkota`
--
ALTER TABLE `kabkota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faskes`
--
ALTER TABLE `faskes`
  ADD CONSTRAINT `faskes_jenis_faskes_id_foreign` FOREIGN KEY (`jenis_faskes_id`) REFERENCES `jenis_faskes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `faskes_kabkota_id_foreign` FOREIGN KEY (`kabkota_id`) REFERENCES `kabkota` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `faskes_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `faskes_favorites`
--
ALTER TABLE `faskes_favorites`
  ADD CONSTRAINT `faskes_favorites_faskes_id_foreign` FOREIGN KEY (`faskes_id`) REFERENCES `faskes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faskes_favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faskes_ratings`
--
ALTER TABLE `faskes_ratings`
  ADD CONSTRAINT `faskes_ratings_faskes_id_foreign` FOREIGN KEY (`faskes_id`) REFERENCES `faskes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faskes_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faskes_reviews`
--
ALTER TABLE `faskes_reviews`
  ADD CONSTRAINT `faskes_reviews_faskes_id_foreign` FOREIGN KEY (`faskes_id`) REFERENCES `faskes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faskes_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kabkota`
--
ALTER TABLE `kabkota`
  ADD CONSTRAINT `kabkota_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
