-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 11:49 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softwareproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'fdllksfpi', 'fslsjfgd@gmail.com', NULL, '2022-12-10 20:32:25', '2022-12-10 20:32:25'),
(2, 'sflkfjddoi', 'dslsli@gmail.com', NULL, '2022-12-10 20:34:27', '2022-12-10 20:34:27'),
(3, 'dfp;d;f', 'fdpikfd@gmail.com', NULL, '2022-12-10 20:35:12', '2022-12-10 20:35:12'),
(4, 'ffdpokdfo', 'lfdkdsflk@gmail.com', NULL, '2022-12-10 20:36:10', '2022-12-10 20:36:10'),
(5, 'cvo;fd', 'KGMFLKQ', NULL, '2022-12-10 20:37:08', '2022-12-10 20:37:08'),
(6, 'fdlirjros', 'rlkrl', NULL, '2022-12-10 20:55:53', '2022-12-10 20:55:53'),
(7, 'vdpfdk', 'gflk', NULL, '2022-12-10 20:55:58', '2022-12-10 20:55:58'),
(8, 'sfpokdf', 'gfkfmlkm', NULL, '2022-12-10 20:57:39', '2022-12-10 20:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2022_11_14_210952_create_files_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(30) NOT NULL,
  `skill` varchar(30) NOT NULL,
  `difficulty` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `category`, `skill`, `difficulty`) VALUES
(1, ' Java Stdin and Stdout I', 'java', 'basic', 'easy'),
(2, ' Java If-Else', 'java', 'intermediate', 'hard'),
(3, 'Java Output Formatting', 'java', 'advanced', 'easy'),
(4, 'Java Loops', 'java', 'intermediate', 'medium'),
(5, 'Python If-Else', 'python', 'basic', 'easy'),
(6, 'Python: Division', 'python', 'basic', 'easy'),
(7, 'Triangle Quest', 'python', 'basic', 'medium'),
(8, 'Arithmetic Operators', 'python', 'basic', 'easy'),
(9, 'Functions', 'javascript', 'basic', 'easy'),
(10, 'Day 4: Count Objects', 'javascript', 'intermediate', 'easy'),
(11, 'Loops', 'php', 'basic', 'easy'),
(12, 'Arrays', 'php', 'basic', 'easy'),
(13, ' Conditional Statements: Switch', 'php', 'basic', 'medium'),
(14, 'Binary Calculator', 'vue', 'intermediate', 'medium'),
(15, 'Arrow Functions', 'vue', 'basic', 'hard');

-- --------------------------------------------------------

--
-- Table structure for table `topic_user`
--

CREATE TABLE `topic_user` (
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic_user`
--

INSERT INTO `topic_user` (`topic_id`, `user_id`) VALUES
(5, 17),
(5, 26),
(5, 27),
(8, 27),
(9, 27),
(11, 17),
(14, 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `phone` bigint(60) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `phone`, `password`, `status`, `degree`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'fsdfssf', 'ssfsffsfs@gmail.com', '', 0, 'gdgddgdgdf', '', '', NULL, '2022-11-20 09:16:12', '2022-11-20 09:16:12'),
(8, 'lfdslk', 'gdlkfd@gmail.com', '', 0, 'fljkfddl', '', '', NULL, '2022-11-20 11:12:15', '2022-11-20 11:12:15'),
(9, 'lfdkfdlfdkdfl', 'soheilsffsffizadi007@gmail.com', '', 0, 'vflkgdmdlk', '', '', NULL, '2022-11-20 11:34:46', '2022-11-20 11:34:46'),
(10, 'lkdflfd', 'vdlfdlkf@gmail.com', '', 0, 'lgfjkmgflf', '', '', NULL, '2022-11-22 12:31:05', '2022-11-22 12:31:05'),
(11, 'lkdflfd', 'vdlffssdfdlkf@gmail.com', '', 0, '1111', '', '', NULL, '2022-11-22 12:31:56', '2022-11-22 12:31:56'),
(12, 'ssss', 'ss@gmail.com', '', 0, '1111', '', '', NULL, '2022-11-22 13:05:19', '2022-11-22 13:05:19'),
(14, 'cxlk', 'soheil.izadi.azarm@gmail1.com', '', 0, '$2y$10$grlW0ofoJwGCrsKmUpzdPu1ElAdQ9e72lEwofJD6DAGbBpGygA7Mi', '', '', NULL, '2022-11-22 16:11:50', '2022-11-22 16:11:50'),
(15, 'fdlfkdfok', 'fldkmfdlfk@gmail.com', 'D', 0, '$2y$10$ihnLLGfEup9vjTewGmBaee7SQbn2.3cA4xcJqtcuO3xiifY/hFEGG', '', '', NULL, '2022-11-23 11:08:04', '2022-11-23 11:08:04'),
(16, 'ggg', 'fjgkj@gmail.com', 'D', 0, '$2y$10$HI1aKrjaf1Ao7EemV./8l.ih/ES6c0zkICUdfZIqAF8.YGwrmMesm', '', '', NULL, '2022-11-23 11:08:27', '2022-11-23 11:08:27'),
(17, 'Soheil Izadiazarmlkml', 'soheil.izadi.azarm@gmail.com', 'D', 3885555, '$2y$10$EHLwj53498GbGFmKr8q5JuXjdx/RozDYGlhmE0Tbl9eEl3Du8vnKq', 'unemployed', 'doctor', 'jo4dtqFRnk5j1aYmB35N9WXfTXXmiasITEyaomgDg79kv6WiW0dQS3aoB4la', '2022-11-23 11:27:25', '2022-12-03 12:43:04'),
(19, 'fxdfdkjs', 'fdldkgl', 'C', 0, '$2y$10$R7H.bCfZSml37G5Uw6xXlujLXZRsWkAxG.1dMj5Aj8AoQDKG9fLbO', NULL, NULL, NULL, '2022-12-11 10:31:19', '2022-12-11 10:31:19'),
(20, 'Soheil izadiazarm', 'soheil.izadi.azarm1@gmail.com', 'C', 123456789000, '$2y$10$Qr3b.E9ngJQpmlHlQIBMfeJQbPxl7I46vhH.1Fg0K8QlMe0LDhhMG', NULL, NULL, 'M9O6eXcR51LeOp12ElXyePNEzhQbUCSvKdBc2dj8ZbrduIe4xdXKPpblbdnm', '2022-12-11 10:33:21', '2022-12-12 12:17:43'),
(21, 'gflkdld', 'fdlkglk@gmail.com', 'C', 0, '$2y$10$kly1dT45us6.tb0CSBdy9OFU3cf2MJVBdmTh3elQuedS6TQ2.ir92', NULL, NULL, NULL, '2022-12-11 10:37:52', '2022-12-11 10:37:52'),
(22, 'dffdkpkd', 'fldkfd@gmail.com', 'C', 0, '$2y$10$o58cV4o.7ZxZlvuK5YUCNuoK6sa5YsebyQ/BVdns5/TkLq5eWzaRW', NULL, NULL, NULL, '2022-12-11 10:55:18', '2022-12-11 10:55:18'),
(23, 'dflkfdl', 'LFDKMRSLK@gmail.com', 'C', 0, '$2y$10$p/UNaB2bY9b7vt92Mi5LKukkKCoWQ604rC7Sttu5rw8QfwrLULoy2', NULL, NULL, NULL, '2022-12-11 10:56:41', '2022-12-11 10:56:41'),
(24, 'dfgdgd', 'GFGDG@gmail.com', 'C', 0, '$2y$10$ge0aHZdlNCxoIC5d8d/mqeLdW2x56jYTZrlfxpYypIb.xuJ/goVPu', NULL, NULL, NULL, '2022-12-11 15:17:33', '2022-12-11 15:17:33'),
(25, 'mortezacompany123', 'seyedM@gmail.com', 'C', 45666886, '$2y$10$5.l35/Sqxt9wc6lPAYENJOlhKfMDmzmH.HXq6wg06zdabW8aw0WW6', NULL, NULL, 'q0QjBOesEYEyvQJ1nvPnVfZJA0eXkFJMhREQAeYKONcxreUgDZfDa7p3qMO5', '2022-12-11 15:18:32', '2022-12-11 15:20:58'),
(26, 'hamed456', 'hamed@gmail.com', 'D', 4554566, '$2y$10$uDpd7ZWyL6PhuBVa1rYzDe2dHQ/oFMTKMVXkXPCt2314.JMas/b6a', '', 'Nothing', 'e33UygfEuvQWP8xFoQQ0sPQHQtGxsDxFZ9ZTED9uhTmRliIwykyn4pQzsrvr', '2022-12-11 15:21:34', '2022-12-11 15:23:36'),
(27, 'Maryam656', 'maryam.javid@gmail.com', 'D', 65652, '$2y$10$SKmO2xZirqbhO68YJhMMRusGM5wzUKlArCEDL5DNqTa1g2mCCFhBi', '', '', 'MV0N9INYVU6YqMg0YfVi5SzQLyYt8803xP7hSnuNmY62wcvCvk3S2bgMWfwf', '2022-12-12 12:18:44', '2022-12-12 12:32:45'),
(29, 'ddd', 'maryam.jddavid@gmail.com', 'C', 0, '$2y$10$SBPGy7..eZSfl1MxrJAOPuUD0EGBwl17BE0DS8foiBQQZS8Foug2G', NULL, NULL, NULL, '2023-01-08 20:39:44', '2023-01-08 20:39:44'),
(30, 'fgklfmdlk', 'fglkmgflk@gmail.com', 'C', 0, '$2y$10$iUH/BjTi6TVQym6kNhYuDOW1bokon5/euiXMFo54.ATw9fCWqk5dW', NULL, NULL, NULL, '2023-01-20 12:58:48', '2023-01-20 12:58:48'),
(32, 'bflkdfmldfk', 'maryam.javidfdfdfdfd@gmail.com', 'C', 0, '$2y$10$G1pQA4z50U6h.A6Dhpf3meuCQw037QdCkq7M8hBHsKF1GnHYgJ.5q', NULL, NULL, NULL, '2023-01-20 13:02:34', '2023-01-20 13:02:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic_user`
--
ALTER TABLE `topic_user`
  ADD PRIMARY KEY (`topic_id`,`user_id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
