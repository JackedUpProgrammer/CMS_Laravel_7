-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 08:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_laravel7`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2023_05_16_075216_create_posts_table', 1),
(23, '2023_05_18_132237_create_permissions_table', 1),
(24, '2023_05_18_132302_create_roles_table', 1),
(25, '2023_05_18_132721_create_users_permissions_table', 1),
(26, '2023_05_18_132857_create_users_roles_table', 1),
(27, '2023_05_18_133026_create_roles_permission_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'View Dashboard', 'View Dashboard', NULL, '2023-05-24 07:21:56'),
(2, 'View Something', 'view-something', NULL, NULL),
(3, 'Edit Post', 'edit-post', NULL, NULL),
(4, 'Update Users', 'update users', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(21, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `post_image` text DEFAULT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `post_image`, `body`, `created_at`, `updated_at`) VALUES
(3, 3, 'Occaecati quo eos repudiandae maxime tempore aperiam cumque nisi.tyrone updated', 'https://via.placeholder.com/900x300.png/004444?text=nihil', 'Dolorum vitae quaerat adipisci et reprehenderit sed ea. Voluptas nemo eum dicta quibusdam repudiandae. Nostrum quod rem qui totam molestiae nobis aut.', '2023-05-23 08:30:59', '2023-05-23 12:19:47'),
(4, 4, 'Repudiandae at rerum quasi illum magnam libero alias.', 'https://via.placeholder.com/900x300.png/002288?text=alias', 'Quisquam corporis sed in aut soluta. Magni et aperiam quia voluptate quia est. Reiciendis velit ab qui dolorem impedit velit ut. Incidunt ea molestias necessitatibus qui et est.', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(5, 5, 'Aliquid tenetur hic vel aliquam.', 'https://via.placeholder.com/900x300.png/00eeff?text=quidem', 'Vel vel ipsum qui. Ut laudantium sed ut error dolorum dignissimos. Voluptatem recusandae enim nostrum est. Dolor est sapiente eum voluptas provident.', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(6, 6, 'Veniam qui et quia perspiciatis.', 'https://via.placeholder.com/900x300.png/0077bb?text=commodi', 'Totam a sit et. Dolores nulla cupiditate dolores dolorem sed eos modi ut. Nisi non nam sed dolore. Voluptatem tenetur consequatur vel ut facilis error.', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(7, 7, 'Ut nobis harum quia fuga quos commodi eaque.', 'https://via.placeholder.com/900x300.png/00ccff?text=quidem', 'Incidunt molestiae excepturi quidem veniam. In cumque omnis totam non fugiat corporis dolor. Quod animi eum et.', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(8, 8, 'Nulla exercitationem sit sequi architecto id.asdsa', 'https://via.placeholder.com/900x300.png/0099cc?text=aspernatur', 'Veritatis porro in nostrum sit ipsam temporibus voluptatem. Quia qui doloremque odio modi aut consequatur. Quaerat tempora rem ipsam velit.', '2023-05-23 08:30:59', '2023-05-24 08:00:39'),
(12, 21, 'asdfasasdas', NULL, 'dasdasddsadsadas', '2023-05-23 10:46:58', '2023-05-24 08:00:46'),
(14, 21, 'aasdasd', NULL, 'asdasd', '2023-05-24 08:00:30', '2023-05-24 08:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(3, 'Subscriber', 'subscriber', '2023-05-23 12:26:39', '2023-05-23 12:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(21, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatar` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Robbie Lebsack', 'rqcbk4i5Ce', 'https://via.placeholder.com/900x300.png/0022dd?text=debitis', 'amelia93@example.net', '2023-05-23 08:30:58', '$2y$10$ePJ90ztxH7pFeoU7KMz1Zuh/bjvNWdR.Vs6iq/lsu/.hi2LzVzWT6', 'SKPDQofQZvp2CipCrvIKjKu6w4UHkpXSalAKGJs1f296sgi1Wfco0WGqrfYs', '2023-05-23 08:30:59', '2023-05-23 10:18:10'),
(2, 'Miss Jewel2 Spencer Sr.', 'blablabla', 'https://via.placeholder.com/900x300.png/004499?text=corrupti', 'alfonzo76@example.org', '2023-05-23 08:30:58', '$2y$10$FE8isy1dqeQ.YAuSdY7JmuqtWzqhrvbDy766rFv7XjRFVxxyYNfL2', 'yeHDrmfgn0', '2023-05-23 08:30:59', '2023-05-23 10:29:15'),
(3, 'Pro2f. Kale Hills MD', 'esURVukR5m', 'https://via.placeholder.com/900x300.png/00dd44?text=molestiae', 'marcel.rosenbaum@example.org', '2023-05-23 08:30:58', '$2y$10$8nMjjVN0iOMgQoSAa9xjduUVtA.M9tsIeWDBFTjn6Rk4mmfj0YFBO', 'BWHOqMdAHZ', '2023-05-23 08:30:59', '2023-05-23 10:07:14'),
(4, 'Rosina2 Collier', '6LkhhNNiTu', 'https://via.placeholder.com/900x300.png/001144?text=voluptas', 'alphonso.langosh@example.net', '2023-05-23 08:30:58', '$2y$10$o1jwuBV4Kp7kwX2PtthhXeOuR3g4lNjz3CrBZwwDEf4T6rLK2Rzma', '9QD4znvAGx', '2023-05-23 08:30:59', '2023-05-23 10:40:52'),
(5, 'Jakob Bergnaum', 'JCN6rALdXn', 'https://via.placeholder.com/900x300.png/003355?text=vero', 'eldridge.heaney@example.org', '2023-05-23 08:30:59', '$2y$10$k7Mhx/vjlSVGNajVx.QbHeNkmJbCPVK75fC7Ws2QJ0QejztF1.6Oe', 'ULv4DOvkP1', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(6, 'Ruby Denesik', 'kFJxBLctTv', 'https://via.placeholder.com/900x300.png/00aa00?text=eum', 'ghessel@example.com', '2023-05-23 08:30:59', '$2y$10$flOCz0ttpvliHeqJcKjXiuUO5kIx2Ep0cwZWeIrwdvGg65PDENAv6', '1MZqzixAQN', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(7, 'Adolph Douglas', '1dGzAjdDQq', 'https://via.placeholder.com/900x300.png/000066?text=sint', 'ishanahan@example.org', '2023-05-23 08:30:59', '$2y$10$vQZvsOFjuiaTUQ.Ye5kJRerXleYQW3bWfDyRvYUnXCMNNN4cf6s1y', 'ChJgCC6Zgw', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(8, 'Marcellus Gulgowski', 'XIwFpLvrpk', 'https://via.placeholder.com/900x300.png/0022cc?text=laboriosam', 'wbergnaum@example.com', '2023-05-23 08:30:59', '$2y$10$/wAayzDeLmUguzWuUeAHfe3lIbWQeF1jCF5CjSgoPYwmX416g/abG', 'ZPYiqbKL5G', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(9, 'Dr. Kellie McGlynn III', 'RbhpgjCAw4', 'https://via.placeholder.com/900x300.png/0066aa?text=sunt', 'pcummings@example.net', '2023-05-23 08:30:59', '$2y$10$FH.CqE91KN4i9dpVRojqz.eoWO5BgsbaPJAis3FrYmDPLR9BnMQJi', 'WQ98KP4UBI', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(10, 'Alexane Renner', 'x9or75KSz9', 'https://via.placeholder.com/900x300.png/003355?text=ducimus', 'brando.hermiston@example.net', '2023-05-23 08:30:59', '$2y$10$D4rKPXtUXgxudtlp7q1Xhuq6cN0M3g.DqCGrIJANdR4AWYkhJPigK', 'NwotXcMFve', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(11, 'Deven Wolff', 'ScCBxIkTd2', 'https://via.placeholder.com/900x300.png/00dd33?text=quidem', 'cleo11@example.net', '2023-05-23 08:30:59', '$2y$10$wT75Mk7NdG2XMniPqam31OSNmXcXHPynRxuNVj1KKuMDUXdQosFq2', 'BFR6EF3g3q', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(12, 'Dr. Issac Hauck', '3uJoq4lEfF', 'https://via.placeholder.com/900x300.png/0044aa?text=dolor', 'onie.altenwerth@example.org', '2023-05-23 08:30:59', '$2y$10$AwqHu7q3bqYEA4D3sKBZqerVfCWP1gIQClW8vUpW/IypdVE9LHM9C', 'goUetL40sQ', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(13, 'Clara Feeney', 'KfpKuJ1kBR', 'https://via.placeholder.com/900x300.png/000099?text=corporis', 'andy.wisozk@example.net', '2023-05-23 08:30:59', '$2y$10$WtITQjn/MzMKRxaiwYw1vu73XjSH8hGtp1Hj7RE1ZKuN8kc/MX5cC', 'Wt7e8zHdiF', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(14, 'Antwan Corkery', 'E4YQpH1LfW', 'https://via.placeholder.com/900x300.png/0099bb?text=molestias', 'kmraz@example.org', '2023-05-23 08:30:59', '$2y$10$VGVs8k9SXw4L1L1EUvrv1.7cFXhq801jdOgeMYdps9.SAQLTQWrvi', 'BvEyTw05uJ', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(15, 'Nikki Padberg', 'DistreaXed', 'https://via.placeholder.com/900x300.png/0077ee?text=exercitationem', 'otho13@example.net', '2023-05-23 08:30:59', '$2y$10$XSCHKK3Px8bYNXw.seP4xOjOstGyBKrowCJm3pCyz2YiPbafd/5m.', 'NXTbaZtsOK', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(16, 'Rosalinda Anderson', 'rsIHb0MZIY', 'https://via.placeholder.com/900x300.png/00aa99?text=praesentium', 'damore.okey@example.org', '2023-05-23 08:30:59', '$2y$10$Z/WX6Yxr6NJ5pXOhwqMzRu01/JRVF7nL0CahwA4qIxDZGFDcpfHOa', 'mtzqkNxbs7', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(17, 'Jed Miller', '1ErzmPGMUu', 'https://via.placeholder.com/900x300.png/00dd33?text=iusto', 'parisian.vance@example.net', '2023-05-23 08:30:59', '$2y$10$ZW5MEJqsjpBwr4i/QoAcxOwzcQIw7l92tgsbszlF9qXlG/w9SggP.', 'RwwvuLXoAa', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(18, 'Josefina Ruecker PhD', 'mt96sOptLy', 'https://via.placeholder.com/900x300.png/0099cc?text=eligendi', 'agulgowski@example.org', '2023-05-23 08:30:59', '$2y$10$NBeOc8opvHEsTp2umWLUfuT9snLzU7dRb.CJi4kursPgJpuDNBFJq', 'BsL76DR1k7', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(19, 'Lorena Pagac II', 'g12ykAQ59r', 'https://via.placeholder.com/900x300.png/0099bb?text=assumenda', 'keeling.emelia@example.org', '2023-05-23 08:30:59', '$2y$10$1S0Tu9aS9fz.ZI14UiEGG.J32PmYkGQh6dwl/ExrVe9HnRy.e4ivm', 'u6HUX9vfHC', '2023-05-23 08:30:59', '2023-05-23 08:30:59'),
(20, 'Marianna Quigley', 'DpPGH4aSmT', 'https://via.placeholder.com/900x300.png/00ff99?text=numquam', 'ubaldo.becker@example.com', '2023-05-23 08:30:59', '$2y$10$yb25maAIsCflNwk48k3BHePlq0z5WTqB5nQxKumqcAwb24WbHSYJ2', 'lKHUEViKgd', '2023-05-23 08:31:00', '2023-05-23 08:31:00'),
(21, 'johan', 'johan', 'images/xecchdmWrKT7wnLHmHESAzuPLyiOszjNm7S7hhAU.jpg', '123@gmail.com', NULL, '$2y$10$4RN3rnT.UQba/RE/2dfdr.OTib7KdqryipFg8eUv0esFS4t29iWYq', NULL, '2023-05-23 08:34:11', '2023-05-23 10:41:17'),
(22, 'xzcgbbxcz', 'sdg', NULL, 'xzcbzxvcb@gmail.com', NULL, '$2y$10$kMGYjnzHkv/FCkhlknrIA.72PiK6gD1Z0IYmDiRStzWDg3l30X3US', NULL, '2023-05-24 07:55:04', '2023-05-24 07:55:04'),
(23, 'ghgdf', 'dfghd', NULL, 'dgfhfdgh@gmail.com', NULL, '$2y$10$u6sHxAZJF7LpOwPexg.HruN6anfGMadiEt5cW76g4.zp7t5iIHR0e', NULL, '2023-05-24 10:34:17', '2023-05-24 10:34:17');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
