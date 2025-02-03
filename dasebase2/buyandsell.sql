-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2025 at 11:07 AM
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
-- Database: `buyandsell`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('lee123@gmail.com|127.0.0.1', 'i:1;', 1733738115),
('lee123@gmail.com|127.0.0.1:timer', 'i:1733738115;', 1733738115),
('lee987@gmail.com|127.0.0.1', 'i:1;', 1733738129),
('lee987@gmail.com|127.0.0.1:timer', 'i:1733738129;', 1733738129),
('priyamishra123@gmail.com|127.0.0.1', 'i:1;', 1738576190),
('priyamishra123@gmail.com|127.0.0.1:timer', 'i:1738576190;', 1738576190),
('priyumishr123@gmail.com|127.0.0.1', 'i:2;', 1738576259),
('priyumishr123@gmail.com|127.0.0.1:timer', 'i:1738576259;', 1738576259);

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
(4, '2024_06_13_101906_create_products_table', 1),
(5, '2024_06_13_102630_add_column_image_url_to_products_table', 1),
(6, '2024_07_02_110105_add_phone_number_to_users_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `long_desc` longtext NOT NULL,
  `price` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_desc`, `long_desc`, `price`, `user_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Earphone', 'Listening for all type voice', '<p>&nbsp;</p>\r\n\r\n<p><em>Combining long-lasting performance with personalised sound quality, the Sony WH-CH520 Wireless Headphones are an excellent addition to your day-to-day life. They boast a playback time of up to 50 hours, making them ideal for long listening sessions. Also, they feature USB Type-C quick charging, providing up to 90 minutes of playback with just 3 minutes of charging time. Moreover, these headphones come with the EQ Custom feature on the Sony Headphones Connect App, allowing you to personalise the sound to suit your preferences.</em></p>', '5000', 1, 'product_images/bCFUbU09eB7fXtTKLZ5p7whU6hKSK6QDQ8ql276M.jpg', '2024-12-09 03:04:30', '2024-12-09 03:04:30'),
(2, 'HeadPhone', 'Listening for all type voice', '<p><em><strong>Combining long-lasting performance with personalised sound quality, the Sony WH-CH520 Wireless Headphones are an excellent addition to your day-to-day life. They boast a playback time of up to 50 hours, making them ideal for long listening sessions. Also, they feature USB Type-C quick charging, providing up to 90 minutes of playback with just 3 minutes of charging time. Moreover, these headphones come with the EQ Custom feature on the Sony Headphones Connect App, allowing you to personalise the sound to suit your preferences.</strong></em></p>\r\n\r\n<p>&nbsp;</p>', '5000', 1, 'product_images/GQx6ffT8aAwds42L0TVUaBg2jiv6tELQm9qTj83w.jpg', '2024-12-09 04:26:28', '2024-12-09 04:26:28'),
(3, 'Bag', 'asdfghjk', '<p>Product Details</p>\r\n\r\n<p><img src=\"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNCIgaGVpZ2h0PSIyIj48cGF0aCBmaWxsPSIjODc4Nzg3IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0wIDJWMGgxNHYyeiIvPjwvc3ZnPg==\" /></p>\r\n\r\n<p>Model Name</p>\r\n\r\n<p>HGGE674033N3</p>\r\n\r\n<p>Number of Compartments</p>\r\n\r\n<p>2</p>\r\n\r\n<p>Sales Package</p>\r\n\r\n<p>1</p>\r\n\r\n<p>Water Resistant</p>\r\n\r\n<p>No</p>\r\n\r\n<p>Bag Design</p>\r\n\r\n<p>solid</p>\r\n\r\n<p>Bag Size</p>\r\n\r\n<p>Mini</p>\r\n\r\n<p>Material</p>\r\n\r\n<p>Synthetic Leather</p>\r\n\r\n<p>Number of Pockets</p>\r\n\r\n<p>5</p>', '700', 2, 'product_images/VMYQOOaNHImymb2Ic1gSbfHOMK0ccIUwVxlLNgTU.jpg', '2025-02-03 04:24:24', '2025-02-03 04:24:24'),
(4, 'Bag', 'asdfghjk', '<p>Product Details</p>\r\n\r\n<p><img src=\"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNCIgaGVpZ2h0PSIyIj48cGF0aCBmaWxsPSIjODc4Nzg3IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0wIDJWMGgxNHYyeiIvPjwvc3ZnPg==\" /></p>\r\n\r\n<p>Model Name</p>\r\n\r\n<p>HGGE674033N3</p>\r\n\r\n<p>Number of Compartments</p>\r\n\r\n<p>2</p>\r\n\r\n<p>Sales Package</p>\r\n\r\n<p>1</p>\r\n\r\n<p>Water Resistant</p>\r\n\r\n<p>No</p>\r\n\r\n<p>Bag Design</p>\r\n\r\n<p>solid</p>\r\n\r\n<p>Bag Size</p>\r\n\r\n<p>Mini</p>\r\n\r\n<p>Material</p>\r\n\r\n<p>Synthetic Leather</p>\r\n\r\n<p>Number of Pockets</p>\r\n\r\n<p>5</p>', '700', 2, 'product_images/sIKhpOFvLjtaGsMEW1RyqjZPQVsS0nBM1R5x5e3I.jpg', '2025-02-03 04:24:25', '2025-02-03 04:24:25');

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
('1H8QnVpBLqylIkdGTPJqDRNiHjpsdKWQthp1YkZx', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVTR5VVRXSFI0blVVV0oxMkZYVDdxQVdMenNsZnB3WGtqU1k3Y2VObSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1738576504);

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
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'Priya', 'priyumishr123@gmail.com', NULL, '$2y$12$7XCSwRDpI3SpueeOXoXg3eenN2jC2TZQtdm7DeQHdYhv2CPHPfsLC', NULL, '2024-12-09 02:56:51', '2024-12-09 02:56:51', '9621103899'),
(2, 'buyandsell', 'buy121@gmail.com', NULL, '$2y$12$.dEs6rRnK724aeCbuc69mund3qHaU3OOHu4m7a0JbRTeNY8xPLu7q', NULL, '2025-02-03 04:21:39', '2025-02-03 04:21:39', '9621103899');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
