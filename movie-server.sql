-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 11:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie-server`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `movie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'flfBu4jOUX', 'Lnc1I8b02p', 1, 4, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(2, 'bIV5joKyDE', 'lfqhNY65Ik', 1, 5, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(3, 'BKB6P9HeRo', 'FUwJ6Frsar', 1, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(4, 'xC16wmPRJd', 'PvcxEd1Y6m', 1, 7, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(5, 'UYgCNPjVTT', 'VZnPkDKD2M', 1, 3, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(6, 'BKB6P9HeRo', 'Da3jE1ohKj', 1, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(7, 'flfBu4jOUX', 'LqTCfhl6Ts', 2, 4, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(8, 'ovG9UrTEED', 'QqyfBRhjlw', 2, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(9, 'GZ9Sy6iobr', 't9fIspAT0T', 2, 9, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(10, 'UYgCNPjVTT', 'La3quFtxYa', 2, 3, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(11, 'bIV5joKyDE', 'UiHaCmnpIZ', 2, 5, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(12, 'BKB6P9HeRo', 'FjIQeHfqzt', 2, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(13, 'ovG9UrTEED', 'DVzzwPySKv', 3, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(14, 'xC16wmPRJd', 'qtiAazEWR6', 3, 7, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(15, 'ovG9UrTEED', 'tN9JdiqWo0', 3, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(16, 'flfBu4jOUX', 'uvvMlfDqsL', 3, 4, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(17, 'ovG9UrTEED', 'oyG2gvW0mu', 3, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(18, 'RQeLueNfje', 'ibcZmBKCY4', 3, 2, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(19, 'ovG9UrTEED', 'VqzrhjfUAq', 4, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(20, 'GZ9Sy6iobr', 'acyjfoSXRV', 4, 9, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(21, 'flfBu4jOUX', 'KcmoT0Txd9', 4, 4, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(22, '5HGxvxPFk0', '5rPIjZ4iSh', 4, 1, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(23, 'UYgCNPjVTT', 'Uh02yI5sOr', 4, 3, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(24, 'ovG9UrTEED', 'xn0Iw1hJDg', 4, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(25, 'RQeLueNfje', 'wS1FfwkYnk', 5, 2, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(26, 'BKB6P9HeRo', '90IUbBugZ3', 5, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(27, 'BKB6P9HeRo', 'mrXiot8jgm', 5, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(28, 'GZ9Sy6iobr', '05uzcmUZjo', 5, 9, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(29, 'xC16wmPRJd', 'Pz8rktO7wH', 5, 7, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(30, 'UYgCNPjVTT', 'peHE9AKnU8', 5, 3, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(31, '5HGxvxPFk0', 'xfROQcnF1H', 6, 1, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(32, 'bIV5joKyDE', 'mI8WZXPoL8', 6, 5, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(33, 'flfBu4jOUX', 'TvxB2zerHv', 6, 4, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(34, 'ovG9UrTEED', 'R4C2jKFGs3', 6, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(35, 'ovG9UrTEED', 'BvqrG2Zj8Q', 6, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(36, 'flfBu4jOUX', 'Iug8LO3hYZ', 6, 4, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(37, 'RQeLueNfje', '6lOVOtfLBu', 7, 2, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(38, 'xC16wmPRJd', 'RinVXVxIbp', 7, 7, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(39, 'BKB6P9HeRo', 'tRYXIGzy8L', 7, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(40, 'BKB6P9HeRo', 'Pl32HIiEnL', 7, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(41, 'ovG9UrTEED', 'LTBBlI0GUy', 7, 8, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(42, 'xC16wmPRJd', 'XmWJkvIjgf', 7, 7, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(43, 'BKB6P9HeRo', 'XXjKzd53R6', 8, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(44, 'RQeLueNfje', 'wGcw7SbcHF', 8, 2, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(45, 'RQeLueNfje', '9h49xOrZFo', 8, 2, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(46, 'BKB6P9HeRo', 'eVtyDiM5jB', 8, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(47, 'flfBu4jOUX', 'PDrqP5nLfr', 8, 4, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(48, 'bIV5joKyDE', '1xvYYPhkAG', 8, 5, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(49, 'UYgCNPjVTT', 'KOq8VbfE66', 9, 3, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(50, 'BKB6P9HeRo', 'NDK4zoOpYL', 9, 10, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(51, '5HGxvxPFk0', 'p1ucrZdhZQ', 9, 1, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(52, 'flfBu4jOUX', 'eLvMwdJKTC', 9, 4, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(53, '5HGxvxPFk0', 'dFImbduU2d', 9, 1, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(54, 'UYgCNPjVTT', 'iCWkXnJaux', 9, 3, '2020-06-10 14:43:36', '2020-06-10 14:43:36'),
(55, 'Mushfiqur Rahman', 'nice !', 2, 1, '2020-06-10 14:46:18', '2020-06-10 14:46:18'),
(56, 'Mushfiqur Rahman', 'Wonderful movie !', 2, 1, '2020-06-10 14:59:46', '2020-06-10 14:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_08_085717_create_movies_table', 1),
(4, '2020_06_08_085718_create_movies_table', 2),
(5, '2020_06_08_085719_create_movies_table', 3),
(6, '2020_06_08_085720_create_movies_table', 4),
(7, '2020_06_08_092907_create_comments_table', 5),
(8, '2014_10_12_000001_create_users_table', 6),
(9, '2020_06_08_092908_create_comments_table', 7),
(10, '2020_06_08_092909_create_comments_table', 8),
(11, '2014_10_12_000002_create_users_table', 9),
(12, '2020_06_08_085721_create_movies_table', 9),
(13, '2020_06_08_092910_create_comments_table', 9),
(14, '2014_10_12_000003_create_users_table', 10),
(15, '2020_06_08_085722_create_movies_table', 10),
(16, '2020_06_08_092911_create_comments_table', 10),
(17, '2014_10_12_000004_create_users_table', 11),
(18, '2020_06_08_085723_create_movies_table', 11),
(19, '2020_06_08_092912_create_comments_table', 11),
(20, '2020_06_08_085724_create_movies_table', 12),
(21, '2020_06_08_092913_create_comments_table', 12),
(22, '2020_06_09_140252_genres', 13),
(23, '2020_06_08_085725_create_movies_table', 14),
(24, '2020_06_08_092914_create_comments_table', 14),
(25, '2020_06_08_085727_create_movies_table', 15),
(26, '2020_06_08_092915_create_comments_table', 15),
(27, '2020_06_10_162843_create_movie_genres_table', 16),
(28, '2020_06_10_162844_create_movie_genres_table', 17),
(29, '2014_10_12_000005_create_users_table', 18),
(30, '2020_06_08_085728_create_movies_table', 18),
(31, '2020_06_08_092916_create_comments_table', 18),
(32, '2020_06_10_162845_create_movie_genres_table', 18),
(33, '2020_06_08_092917_create_comments_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `release` date NOT NULL,
  `date` date NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ticket` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `country` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://localhost:8000/default_poster.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `slug_name`, `description`, `release`, `date`, `rating`, `ticket`, `price`, `country`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'YnKNp4H1eh', 'XMHcUEUUZX', '7jWqDxuVFu', '2020-06-10', '2020-06-10', 1, 0, 0, 'LJy0bMC98J', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:32:22', '2020-06-10 14:32:22'),
(2, 'gIYWpWn0AS', 'gtd2gJkGKn', 'kctz9HZWlV', '2020-06-10', '2020-06-10', 1, 0, 0, 'kLuEMTxkCA', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:32:22', '2020-06-10 14:32:22'),
(3, 'M0BAvvUPyF', 'fgly6jdm1f', 'o3QXQyWYD4', '2020-06-10', '2020-06-10', 1, 0, 0, 'HBipvyG3Pb', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:32:22', '2020-06-10 14:32:22'),
(4, 'eq5PBjSZuM', 'aRaXGTaKXD', '9stGdFdRHQ', '2020-06-10', '2020-06-10', 1, 0, 0, '0V1wETRRKi', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:33:43', '2020-06-10 14:33:43'),
(5, '3W36u5Q2Wg', 'OUv21JKAc0', '79A10gsFLA', '2020-06-10', '2020-06-10', 1, 0, 0, 'fIkatrwhrJ', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:33:43', '2020-06-10 14:33:43'),
(6, 'wbJ7pt7s0m', '3so32zjJu9', 'ido9opBwxy', '2020-06-10', '2020-06-10', 1, 0, 0, 'czb1tatjOZ', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:33:43', '2020-06-10 14:33:43'),
(7, 'OFOHlMHKzd', 'MDogUqBXkR', 'ITEhhmpZgN', '2020-06-10', '2020-06-10', 1, 0, 0, '2fdT8al6FN', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:33:45', '2020-06-10 14:33:45'),
(8, 'anOXozC1EZ', 'lASGx3lqJF', 'EtDrz0hOiM', '2020-06-10', '2020-06-10', 1, 0, 0, 'Kqv5n484H0', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:33:45', '2020-06-10 14:33:45'),
(9, 'LnJeKm5Bju', 'jBKUNpoksI', 'aEMtpZBsfX', '2020-06-10', '2020-06-10', 1, 0, 0, 'zKkVYEVCGJ', 'http://localhost:8000/default_poster.jpg', '2020-06-10 14:33:45', '2020-06-10 14:33:45'),
(10, 'Titanic', 'Titanic', 'A movie about a ship and two lovers', '2020-06-10', '2020-06-10', 5, 1000, 12, 'USA', 'http://127.0.0.1:8000/uploads/1591823568.jpg', '2020-06-10 15:12:48', '2020-06-10 15:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `name`, `movie_id`) VALUES
(1, 'Horror', 1),
(2, 'Horror', 2),
(3, 'Animation', 3),
(4, 'Animation', 4),
(5, 'Horror', 5),
(6, 'Animation', 6),
(7, 'Animation', 7),
(8, 'Action', 8),
(9, 'Animation', 9),
(10, 'Action', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mushfiqur Rahman', 'abir@gmail.com', NULL, '$2y$10$b/jWll2.4DlYdJPwgWTwoeNeWStVwZZrd2UVAgYuP4Yun09RqPcRm', NULL, NULL, NULL),
(2, 'RQeLueNfje', 'yqNILx0sbv@gmail.com', NULL, '$2y$10$C5M6xpvnjbNjohc2qtjNZOVeF5ocu/5FRrKisYNuXDLJTA9us6xn6', NULL, NULL, NULL),
(3, 'UYgCNPjVTT', 'Csf08y5XVF@gmail.com', NULL, '$2y$10$38OPE3DY9lr.e442JwFr..6uoHJROtNmGXU69tCSsmnRCvV5SeNQi', NULL, NULL, NULL),
(4, 'flfBu4jOUX', 'YJ4gVr14r9@gmail.com', NULL, '$2y$10$L0aQh1EnE7z/YN0bVFuMU.Ym8V3CoWvQFVVxItHcoJF32kMTpJkGO', NULL, NULL, NULL),
(5, 'bIV5joKyDE', '0METAaI95u@gmail.com', NULL, '$2y$10$KbABuDNBLsXpfU07bE.z/uL5F7k2SnD0u0/6FHvIJ.2PY64YfmxhW', NULL, NULL, NULL),
(6, '0feYkzsJpG', '2ycGNROUQ7@gmail.com', NULL, '$2y$10$igdeQ.qiSxVQ6Jhs6PiZiuDYhKzAX9jRZTzOXdleB7gfdAPaCGshe', NULL, NULL, NULL),
(7, 'xC16wmPRJd', 'F3TvBtSwum@gmail.com', NULL, '$2y$10$NtCxRGleEk1anx.cAMZbCO/TrfzE0Qropg2jsQgsOYVqFRukYIdhC', NULL, NULL, NULL),
(8, 'ovG9UrTEED', 'yHkEs4tcSq@gmail.com', NULL, '$2y$10$bfo3qSBsX9bIKfQWU/eHQO3vUiqBD71iSHisaNG5wqojafwMsT1tS', NULL, NULL, NULL),
(9, 'GZ9Sy6iobr', 'eETYKrT9Ut@gmail.com', NULL, '$2y$10$WS2R5GIjGvxutbzLUBZ48OvkalToJYUfb0NunLsdt8V2UfYNN/5ja', NULL, NULL, NULL),
(10, 'BKB6P9HeRo', 'hwMh4KAK3d@gmail.com', NULL, '$2y$10$NM1cBnTpKMvYFXasuXXZSOj3J/3uxbJbBTzYRV0Xic8OoxfwReQTa', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_movie_id_foreign` (`movie_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movies_slug_name_unique` (`slug_name`) USING HASH;

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_genres_movie_id_foreign` (`movie_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
