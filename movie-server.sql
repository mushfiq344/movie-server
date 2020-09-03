-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2020 at 01:04 AM
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
(125, 'Mushfiqur Rahman', 'nice', 47, 1, '2020-09-01 07:48:16', '2020-09-01 07:48:16'),
(126, 'omDrT9jSdj', 'LHbjZKkSrd', 45, 23, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(127, 'mimo', 'qhpm6kEMFE', 45, 17, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(128, 'xWhIERnkf4', 'SWgLoxWLpQ', 45, 28, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(129, 'bIV5joKyDE', 'zMZrNoq5L1', 45, 5, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(130, 'GZ9Sy6iobr', 'rBkvkTI5CR', 45, 9, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(131, 'flfBu4jOUX', 'YxumDjeV29', 45, 4, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(132, 'omDrT9jSdj', 'f1nqxmDqOG', 46, 23, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(133, 'mimo', 'AabfG2IpC3', 46, 17, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(134, 'RQeLueNfje', '4p3kda4dOm', 46, 2, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(135, 'BKB6P9HeRo', 'HMX7eiSmrj', 46, 10, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(136, 'omDrT9jSdj', 'AMzGdwozgj', 46, 23, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(137, 'omDrT9jSdj', 'yfmAfbaREQ', 46, 23, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(138, 'RQeLueNfje', 'gSwUge1X6s', 47, 2, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(139, 'xC16wmPRJd', 'BTIrrZ3e0d', 47, 7, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(140, 'RQeLueNfje', 'BloY2z2EcZ', 47, 2, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(141, 'bIV5joKyDE', 'dHACPZNtwO', 47, 5, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(142, 'omDrT9jSdj', 'Wu7PxqIT6b', 47, 23, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(143, 'd7JMijWvnZ', 'De3ExzGZfF', 47, 19, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(144, 'yFwLDPgH5p', 'lIq5qT5m2H', 48, 25, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(145, 'd7JMijWvnZ', 'TvWKq6Zh6w', 48, 19, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(146, 'omDrT9jSdj', '1exwRJK8TB', 48, 23, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(147, 'RUtPn0i8YB', '2sCNQl3yzW', 48, 22, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(148, 'd7JMijWvnZ', 'zmjcGYzcUC', 48, 19, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(149, 'RQeLueNfje', '0JUJJfhSam', 48, 2, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(150, 'cEyozDLQG7', 'tiGncDtE8r', 49, 21, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(151, 'McQZ6eUxdy', 'B2ISYv2xt1', 49, 20, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(152, 'mimo', 'ne8Awqi5fJ', 49, 17, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(153, 'hSuJB6XkZr', 'dZayeRoqar', 49, 24, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(154, 'hSuJB6XkZr', 'nQblbtGulU', 49, 24, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(155, 'xWhIERnkf4', 'M8lAQaNA1O', 49, 28, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(156, 'Mushfiqur Rahman', 'V2onOmCuGa', 50, 1, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(157, 'sakib', 'fPecRRgddt', 50, 18, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(158, 'xWhIERnkf4', 'xThdQghdoI', 50, 28, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(159, 'sakib', 'Zs8BMygBBu', 50, 18, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(160, 'd7JMijWvnZ', 'wcUru9mCvz', 50, 19, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(161, '0feYkzsJpG', 'veT67uCnKg', 50, 6, '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(162, 'Mushfiqur Rahman', 'nice', 50, 1, '2020-09-03 17:03:22', '2020-09-03 17:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Animation', '2020-09-01 10:30:06', '2020-09-01 10:30:06'),
(2, 'Action', '2020-09-01 10:30:06', '2020-09-01 10:30:06'),
(3, 'Horror', '2020-09-01 10:30:06', '2020-09-01 10:30:06'),
(4, 'Comedy', '2020-09-01 11:17:48', '2020-09-01 11:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `genre_movie`
--

CREATE TABLE `genre_movie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre_movie`
--

INSERT INTO `genre_movie` (`id`, `genre_id`, `movie_id`, `created_at`, `updated_at`) VALUES
(1, 1, 45, NULL, NULL),
(2, 3, 45, NULL, NULL),
(3, 4, 45, NULL, NULL),
(4, 1, 46, NULL, NULL),
(5, 3, 46, NULL, NULL),
(6, 2, 46, NULL, NULL),
(8, 2, 47, NULL, NULL),
(9, 3, 48, NULL, NULL),
(10, 2, 49, NULL, NULL),
(11, 3, 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imageable_type`, `imageable_id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'user_image', NULL, NULL);

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
(33, '2020_06_08_092917_create_comments_table', 19),
(34, '2020_06_10_215029_create_shipments_table', 20),
(35, '2020_06_19_012212_create_images_table', 21),
(36, '2020_06_19_012213_create_images_table', 22),
(37, '2020_06_19_012214_create_images_table', 23),
(38, '2020_09_01_132746_create_genre_movie_table', 24);

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
(45, 'asdasd', 'test1', 'asdasd', '2020-09-01', '2020-09-01', 1, 1, 1, 'asdasd', 'http://localhost:8000/default_poster.jpg', '2020-09-01 07:32:31', '2020-09-01 07:32:31'),
(46, 'asdasd', 'test2', 'asdasd', '2020-09-01', '2020-09-01', 1, 1, 1, 'asdasd', 'http://localhost:8000/default_poster.jpg', '2020-09-01 07:47:41', '2020-09-01 07:47:41'),
(47, 'asdasd', 'test3', 'asdasd', '2020-09-01', '2020-09-01', 1, 1, 1, 'asdasd', 'http://127.0.0.1:8000/uploads/1598968087.jpg', '2020-09-01 07:48:08', '2020-09-01 07:48:08'),
(48, 'KKESHj8Sxq', 'vY2CNtPmUi', 'YyK6Ej6lwK', '2020-09-03', '2020-09-03', 1, 0, 0, 'PgOpncNyCa', 'http://localhost:8000/default_poster.jpg', '2020-09-03 16:59:40', '2020-09-03 16:59:40'),
(49, 'Xgzqu4RZD9', 'qvi70NwuiY', 'CuGkujHr6f', '2020-09-03', '2020-09-03', 1, 0, 0, 'D901TENbQf', 'http://localhost:8000/default_poster.jpg', '2020-09-03 16:59:41', '2020-09-03 16:59:41'),
(50, 'rhNG0DzlSd', 'P2uuCOvi8F', '3cX0dKzf0k', '2020-09-03', '2020-09-03', 1, 0, 0, 'Erv5PfEgBM', 'http://localhost:8000/default_poster.jpg', '2020-09-03 16:59:41', '2020-09-03 16:59:41');

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
(10, 'BKB6P9HeRo', 'hwMh4KAK3d@gmail.com', NULL, '$2y$10$NM1cBnTpKMvYFXasuXXZSOj3J/3uxbJbBTzYRV0Xic8OoxfwReQTa', NULL, NULL, NULL),
(17, 'mimo', 'mimo@gmail.com', NULL, '$2y$10$WuaiK3oo2kSeGP8bfG4VmOD06A4xC1oVXB1/BWePcOw5ue1P3SvJa', NULL, '2020-08-30 06:47:55', '2020-08-30 06:47:55'),
(18, 'sakib', 'sakib@gmail.com', NULL, '$2y$10$9wEYE4mvUq1ptcgyWIH4n.BdbnavGMATJ93iiiy8sr0N4CTWcERy.', NULL, '2020-08-30 06:52:24', '2020-08-30 06:52:24'),
(19, 'd7JMijWvnZ', 'QfDkVaT9ad@gmail.com', NULL, '$2y$10$E2L9NqCO4xE6SgJ174CSo.GGruk4RfFyYg/83tGnvUl0IyYCzvHCK', NULL, NULL, NULL),
(20, 'McQZ6eUxdy', 'K9oc09UaoY@gmail.com', NULL, '$2y$10$bPkwHUwJmIWr5U9ChiOMauMwhxVjryuDLjnA/hdnsH7uF/7FLowJe', NULL, NULL, NULL),
(21, 'cEyozDLQG7', 'JbWBJs5UAz@gmail.com', NULL, '$2y$10$gvY3GpOnjYR26njzFMtFw.xuW4N3uZE4AnVfooPDCVUWBDT1d41NK', NULL, NULL, NULL),
(22, 'RUtPn0i8YB', '2A2uokZYOQ@gmail.com', NULL, '$2y$10$AGtwkJx0I75BOR.SmINtXOto.OdareWrK5ygPkrbF35aiWOo9g6Wm', NULL, NULL, NULL),
(23, 'omDrT9jSdj', 'vVPcK3T05o@gmail.com', NULL, '$2y$10$UllCbJFecSn3FOa1mQS/cOmnqwJEf3E1Hr.FPw7zEB4Iy2gdxqD3a', NULL, NULL, NULL),
(24, 'hSuJB6XkZr', 'fL7AAMwPUk@gmail.com', NULL, '$2y$10$/CAB.ay3cJz.yhTAv8Fd0eCT2VbAmRzkWNuh.fR.QeEvGadpKibj2', NULL, NULL, NULL),
(25, 'yFwLDPgH5p', 'ERTqYOIP8M@gmail.com', NULL, '$2y$10$InZK8fKDWLQchNJdk5rar.DqLKGpMkScM2d6YP002dnimNCMOPpQO', NULL, NULL, NULL),
(26, 's6A62dA4zs', 'MeM5WSDn6k@gmail.com', NULL, '$2y$10$.Pkzf6x5tL/CwCBMAbl55ulG8wYVxVa9w4trxjM7gyHLGId0hl46O', NULL, NULL, NULL),
(27, 'h7vk6jfH7q', '0qEtGD6WnM@gmail.com', NULL, '$2y$10$nWTGzIkU8yrUrtcTx0LpjumiYai5PlEHbr7CPlVYZ59Kcm5ID.8hq', NULL, NULL, NULL),
(28, 'xWhIERnkf4', 'u8CBukJebQ@gmail.com', NULL, '$2y$10$8//YPN7IXHWlpgW.ZNiXoeSFnJhJFoySLAUy673hVmOmgDyWmeqD6', NULL, NULL, NULL);

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
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_image_type_image_id_index` (`imageable_type`,`imageable_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genre_movie`
--
ALTER TABLE `genre_movie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
