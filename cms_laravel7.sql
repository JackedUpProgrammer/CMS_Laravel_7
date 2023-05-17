-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 04:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.30

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2023_05_16_075216_create_posts_table', 1);

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
(1, 1, 'Architecto quos et illo rerum.', 'https://via.placeholder.com/900x300.png/002244?text=alias', 'Maxime adipisci quam cupiditate eum debitis. Quas modi est assumenda voluptatem quibusdam. Eaque voluptates praesentium et dicta deleniti. Quam eos in a quasi.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(2, 2, 'Iste sint blanditiis officiis illum id.', 'https://via.placeholder.com/900x300.png/00dd88?text=vero', 'Facilis aut sapiente voluptate odio. Maiores in expedita aut accusamus voluptatibus eveniet tempora. Dignissimos quos expedita omnis fugiat. Et ipsa libero id consequatur enim inventore.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(3, 3, 'Ut porro ab assumenda dolor voluptas quo.', 'https://via.placeholder.com/900x300.png/0099aa?text=quo', 'Cum maxime ea doloribus repellendus hic. Eos iste amet delectus quia. Dolor officiis voluptatem nam suscipit sit quidem blanditiis. A dolorum optio velit aut. Vel consequatur totam ut in consequatur porro sunt saepe.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(4, 4, 'Neque rerum aut consequatur dolor pariatur.', 'https://via.placeholder.com/900x300.png/0044dd?text=ut', 'Nihil aut velit aperiam. Cum illo consequuntur reprehenderit illo repellendus. Nobis consequatur dolores et.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(5, 5, 'Delectus non quas architecto delectus labore consectetur non.', 'https://via.placeholder.com/900x300.png/000022?text=iusto', 'Officia voluptas totam consequatur harum. Qui est reiciendis voluptas quibusdam. In saepe saepe molestiae enim quia expedita. Iusto itaque corporis amet rerum eum et aliquam eligendi.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(6, 6, 'Dolorem iure tempora beatae quis adipisci molestias consequatur.', 'https://via.placeholder.com/900x300.png/005511?text=facere', 'Eaque iusto debitis quis et asperiores quisquam. Quidem tempore optio voluptatibus aperiam assumenda perspiciatis. Id recusandae aspernatur tempora cum quidem voluptates optio.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(7, 7, 'Qui iste earum tempore aliquid temporibus provident autem.', 'https://via.placeholder.com/900x300.png/002233?text=laudantium', 'Quos deleniti ut quidem et iure repellat. Est et sit dicta ipsam. Quae dolore aut dignissimos ipsum voluptates aliquid qui.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(8, 8, 'Vel tempore delectus nemo necessitatibus possimus iusto.', 'https://via.placeholder.com/900x300.png/0066aa?text=pariatur', 'Hic cum corrupti omnis est omnis ut. Vitae provident temporibus nam ut excepturi placeat. Ut mollitia tempora sit ab. Est sed nobis eius maiores labore qui sint.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(9, 9, 'Accusamus quaerat veniam distinctio iure fugiat et aliquid.', 'https://via.placeholder.com/900x300.png/007799?text=molestias', 'Sit quo culpa vero nisi quaerat. Debitis cupiditate ipsa iusto. Rem blanditiis aliquam ipsum quis. Iste quam optio ut quasi nostrum. Id sunt dicta ut et.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(10, 10, 'Assumenda et est tempore culpa voluptas.', 'https://via.placeholder.com/900x300.png/001188?text=non', 'Impedit possimus possimus architecto est. Et facilis voluptate excepturi laborum ducimus optio animi omnis. Voluptate deleniti repellat ipsa porro corporis. Laudantium nemo debitis aspernatur aliquam sapiente.', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(11, 21, 'ASSDFSDAFDSFSDF', 'images/Jet6Twgur04YPoFHNJ3aRG6phwBfRvOLXyFV9hNc.jpg', 'SAFDGSFOAJGHSDFOUJHGOUDJFHGUODFHGOUDFHGUOFDHGUODFHGUODFHGUODFHGUODHFGOUJHDFGGUDF', '2023-05-17 08:25:39', '2023-05-17 08:25:39'),
(12, 21, 'ASDFASDFAS', 'images/Rz4zdvfd8EaCGEncAFAggVm1CAo4rdRWx3JNf0aQ.jpg', 'ASDFASFDASFASFASF', '2023-05-17 08:26:11', '2023-05-17 08:26:11'),
(13, 21, 'qwe', 'NeO9DAW7H5OSzXOcozZKMogKZmuJJlmBN3TVdAbB.jpg', 'qweqweqw', '2023-05-17 09:55:53', '2023-05-17 09:55:53'),
(14, 21, 'zfsdfg', 'public/images/WgxTLQlTMYamCttv6t6oWBGAvKr5AQXCy8Ukqmtc.jpg', 'sadfgsadgfsd', '2023-05-17 10:36:01', '2023-05-17 10:36:01'),
(15, 21, 'asdfsadf', '5PMVpTT1Vjp1sGgIx0rOSw4b9vyz5BzczL1jRm5B.png', 'sdagsafgsfadgsfdag', '2023-05-17 12:31:18', '2023-05-17 12:31:18'),
(16, 21, 'kjhnnb', 'images/GRfxJRQ9niLqUfr2aiDw8RT0hhKesmCAu2a5Y16D.webp', 'ljhboljhbop', '2023-05-17 12:32:30', '2023-05-17 12:32:30');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Jaquelin Frami PhD', 'ihill@example.net', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G95bbPVH0Q', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(2, 'Prof. Giovani Skiles PhD', 'jermain51@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BQ1whdvGci', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(3, 'Rafaela Wintheiser', 'sage32@example.net', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hZbrwTXBsg', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(4, 'Mr. Malachi Smitham DDS', 'noemi03@example.org', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5Rdmrtuvhf', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(5, 'Abner Durgan', 'dmann@example.net', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q882DqHOvg', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(6, 'Art Willms', 'hirthe.erick@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iaQ0bGXhOR', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(7, 'Jalyn Wilkinson PhD', 'sheila.raynor@example.net', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kVwUim6OHH', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(8, 'Jennifer Grady V', 'madelynn.casper@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GflrUGQT7D', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(9, 'Dr. Kameron Lubowitz', 'stephanie81@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zv4jnIFZH4', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(10, 'Kaci Trantow', 'lucinda.stiedemann@example.net', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sSLJ48StoR', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(11, 'Einar Effertz', 'johnson.yvonne@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aasnNdltnZ', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(12, 'Madison Witting', 'willie18@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AaJ91mP03r', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(13, 'Mr. Ervin Morar', 'qbashirian@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sCAnlQImbm', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(14, 'Dr. Erin Hudson Sr.', 'lester15@example.org', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '55B6Ns7aLI', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(15, 'Mr. Okey Bins DDS', 'jerde.tiana@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IEIixxGERq', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(16, 'Prof. Yesenia Anderson I', 'bmills@example.net', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JI6WmRmJhX', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(17, 'Prof. Santos Hagenes I', 'florian47@example.org', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ujiz80vNg2', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(18, 'Cary Rice Jr.', 'aiyana.rutherford@example.net', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qB7Wbp1fur', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(19, 'Prof. Art Witting V', 'uhamill@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LThcimxFcD', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(20, 'Mariah Hirthe', 'ohuels@example.com', '2023-05-16 07:50:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sh5hdTU1Tm', '2023-05-16 07:50:26', '2023-05-16 07:50:26'),
(21, 'Johan Scheepers', '123@gmail.com', NULL, '$2y$10$SpTzgVV/UEDHFkIT5UOtnuPpVYtTwu/SBXwVOiBbIacwfChxvd4LO', NULL, '2023-05-17 04:33:53', '2023-05-17 04:33:53');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
