-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 31, 2019 at 09:49 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phonebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$bcfXbtjZSFyEue4.OjMgZOZIboB6YN61HohRHf0UH1fCPU0Txs1BK', NULL, '2019-07-25 15:13:10', '2019-07-25 15:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
CREATE TABLE IF NOT EXISTS `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`),
  KEY `admin_password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`),
  KEY `carts_product_id_foreign` (`product_id`),
  KEY `carts_order_id_foreign` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 2, NULL, 3, '2019-07-29 08:01:33', '2019-07-29 08:22:55'),
(2, 11, 1, 2, NULL, 3, '2019-07-29 08:02:39', '2019-07-29 08:22:55'),
(3, 1, 1, 2, NULL, 1, '2019-07-29 08:06:02', '2019-07-29 08:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_galaries`
--

DROP TABLE IF EXISTS `image_galaries`;
CREATE TABLE IF NOT EXISTS `image_galaries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 4),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_25_211036_create_admins_table', 1),
(4, '2019_07_25_211037_create_admin_password_resets_table', 1),
(9, '2019_07_20_194307_create_reviews_table', 2),
(10, '2019_07_21_165556_create_orders_table', 2),
(23, '2019_07_20_193712_create_products_table', 5),
(11, '2019_07_21_165643_create_carts_table', 2),
(12, '2019_07_24_091900_create_image_galaries_table', 2),
(13, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(14, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(15, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(16, '2016_06_01_000004_create_oauth_clients_table', 3),
(17, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(24, '2019_07_30_124412_create_categories_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('62d1eacb7301fe59bf962f8f4a836578b16948fd8508806d4d581861e15a639ad77d5a265bce25d4', 1, 2, NULL, '[]', 0, '2019-07-27 10:45:24', '2019-07-27 10:45:24', '2020-07-27 16:45:24'),
('27bbde97ac2fae422e8ba36c9959088d5a64360083b7f1d5446264efaf223cf7bd245bc2ae84400f', 1, 2, NULL, '[]', 0, '2019-07-28 06:53:14', '2019-07-28 06:53:14', '2020-07-28 12:53:14'),
('0953e8678d78af735355cd93a68311055fd43078c46d21f34ad6bb674ff526a58ad144fafdcffdce', 1, 2, NULL, '[]', 0, '2019-07-30 05:57:36', '2019-07-30 05:57:36', '2020-07-30 11:57:36'),
('be128dbfb169adedf0cefdc545a4b2a3d4befdafbc39e9994b48a31b2ad57bfab2bf4bac581bcb07', 1, 2, NULL, '[]', 0, '2019-07-30 06:06:16', '2019-07-30 06:06:16', '2020-07-30 12:06:16'),
('d8e29bc6da338962ccf6ffacb1933761e6aec8339f02c0adffcbe97da94b63d8feaf8e25089ace24', 1, 2, NULL, '[]', 0, '2019-07-30 06:13:23', '2019-07-30 06:13:23', '2020-07-30 12:13:23'),
('dc1ed466c33d0d593bf1639124e16726d14f32ab28b88f446590205aecf918707084b0db9471f0ad', 1, 2, NULL, '[]', 0, '2019-07-30 07:02:38', '2019-07-30 07:02:38', '2020-07-30 13:02:38'),
('1dff9898d44cf041aedc7877987b21f64648d3dd4881acbd7620494b82128d315e1fdfff3cf33386', 1, 2, NULL, '[]', 0, '2019-07-30 07:55:25', '2019-07-30 07:55:25', '2020-07-30 13:55:25'),
('8442228b6cb6d576b96682c3a64e1b3e09962069ef8ed07fbfe4e5ce3a958f7cc300a81b67e8d9a4', 1, 2, NULL, '[]', 0, '2019-07-30 08:02:38', '2019-07-30 08:02:38', '2020-07-30 14:02:38'),
('cf772ff848ab4591563507f9f6ff8004316bd60dfe6a3543892979b7d2d5ec97737c2e9281bd5e3a', 1, 2, NULL, '[]', 0, '2019-07-30 08:04:02', '2019-07-30 08:04:02', '2020-07-30 14:04:02'),
('5c02d0dc0f490b01ec63695a898e3c3e572720fce8f2f6b4c687acd0e32112c03d301ea1bb0547bf', 1, 2, NULL, '[]', 0, '2019-07-30 08:06:18', '2019-07-30 08:06:18', '2020-07-30 14:06:18'),
('af058271b9184069020439767e6e89a0529a2a05bee7bdbd1ac704e9df96190cdfbed5466b8331ab', 1, 2, NULL, '[]', 0, '2019-07-30 08:07:50', '2019-07-30 08:07:50', '2020-07-30 14:07:50'),
('a96fa5692484bfd30d811390087db82d0bb11eaafb5cc9a5f589ce7a3fa48920494f463c2e8cab3a', 1, 2, NULL, '[]', 0, '2019-07-30 08:20:49', '2019-07-30 08:20:49', '2020-07-30 14:20:49'),
('191e6595651a94cae7bde6c5efd4f7d43695427652e7ba273d01eab6d896ec8f8e7969f6f4ff8dcf', 1, 2, NULL, '[]', 0, '2019-07-30 08:25:42', '2019-07-30 08:25:42', '2020-07-30 14:25:42'),
('8dfd414af5a9195d03974403a9c2dd1a367c59bf41998912c53770aaa1692f2d38c3aeb01ca1c01b', 1, 2, NULL, '[]', 0, '2019-07-30 09:19:01', '2019-07-30 09:19:01', '2020-07-30 15:19:01'),
('cacb7f3b7d23c01a46ceff602c7314e7f2e55ee43b766127041642c9fc5b78ef8fe903f0168943b6', 1, 2, NULL, '[]', 0, '2019-07-30 10:20:58', '2019-07-30 10:20:58', '2020-07-30 16:20:58'),
('98f8c78ab3fd5dce87c0abd6f1c3e93b3dbddf57c37441b625d2f9027a5f0a6be6959c84286a3641', 1, 2, NULL, '[]', 0, '2019-07-30 10:21:00', '2019-07-30 10:21:00', '2020-07-30 16:21:00'),
('da42ae648c1b758f20991ffda54980c995696cdeec82dfe6a98571441b5e56e8b1ce039e175546d3', 1, 2, NULL, '[]', 0, '2019-07-30 10:21:05', '2019-07-30 10:21:05', '2020-07-30 16:21:05'),
('e369a735a69a771e71464ef075cde9aaf3d892221baed83758a99454b52c82f3b2d9f2f6b1c38ab5', 1, 2, NULL, '[]', 0, '2019-07-30 10:21:06', '2019-07-30 10:21:06', '2020-07-30 16:21:06'),
('eeb74d90b62677dc9621b0d2c24fa6f497361ffb45fc055aef94e918cdcf77fdf79f8a5945dc26c8', 1, 2, NULL, '[]', 0, '2019-07-30 10:21:06', '2019-07-30 10:21:06', '2020-07-30 16:21:06'),
('fbbcbc16a64f0e992200e482b8084bdebc1c8142b78b524a62439c5c46eef4197fc2e857f8174694', 1, 2, NULL, '[]', 0, '2019-07-30 10:21:06', '2019-07-30 10:21:06', '2020-07-30 16:21:06'),
('0ffa03d4e980794fab8a5e77b6458ca1b6f1f5f11aa7b58414767bb7e23132c66540e0f71d425b05', 1, 2, NULL, '[]', 0, '2019-07-30 10:21:07', '2019-07-30 10:21:07', '2020-07-30 16:21:07'),
('c3800779e53a14558df8cf3d62bf85fb71596f524ba8f5380c47e925a4447e2109aa3b237bde32e1', 1, 2, NULL, '[]', 0, '2019-07-30 10:21:07', '2019-07-30 10:21:07', '2020-07-30 16:21:07'),
('257cb5b841b405f3050d1787592db34420a5228a9bc4304d412e9b43629cb04cb3bdedaa1c8b040d', 1, 2, NULL, '[]', 0, '2019-07-30 10:21:39', '2019-07-30 10:21:39', '2020-07-30 16:21:39'),
('f56d7c53d02e6a7fd2866fdc54f49cf579abc7e89e3abd5ba93f6d3d9bdb541a36f490f9996d65ad', 1, 2, NULL, '[]', 0, '2019-07-30 10:22:14', '2019-07-30 10:22:14', '2020-07-30 16:22:14'),
('59b9cecc01c4b2545eedb6b0d64f361cb22fe8d3858a2583fa8b173add7c848a6601b611a839bba9', 1, 2, NULL, '[]', 0, '2019-07-30 10:23:32', '2019-07-30 10:23:32', '2020-07-30 16:23:32'),
('1244bba0fee418cc555d61bb371e5875b90185e4ac15864ed15de53b712e8bde4ff1e2054855f68e', 1, 2, NULL, '[]', 0, '2019-07-30 10:23:34', '2019-07-30 10:23:34', '2020-07-30 16:23:34'),
('7a6b06e6435abb8ab8e74689bf93b2ac4cbbbb1cb0c2b0fda3bf0a8f7d440fa1ed5ff57ed26aa35f', 1, 2, NULL, '[]', 0, '2019-07-30 10:23:35', '2019-07-30 10:23:35', '2020-07-30 16:23:35'),
('f7373b07a4f0abb3f056b90c1da9a4a3a39437d4a64070cd75453e9f4150af6b17260a2aa5ba004f', 1, 2, NULL, '[]', 0, '2019-07-30 10:23:40', '2019-07-30 10:23:40', '2020-07-30 16:23:40'),
('59c13665d11e5a87da9687745f4ce07f5fa26af51aa90beae981f87f627cd857d27c7c063eb5265e', 1, 2, NULL, '[]', 0, '2019-07-30 10:24:14', '2019-07-30 10:24:14', '2020-07-30 16:24:14'),
('55bb388864dfec6d38f7e4996eb7ac446f2856dee3a4a749f39f8488b1b5676f7ac53fbbacac31df', 1, 2, NULL, '[]', 0, '2019-07-30 10:24:23', '2019-07-30 10:24:23', '2020-07-30 16:24:23'),
('cbbce8d94c3462a116b825c44849c45604c44a1e0aade91aeea7825141888b73f57fa83551809392', 1, 2, NULL, '[]', 0, '2019-07-30 10:25:29', '2019-07-30 10:25:29', '2020-07-30 16:25:29'),
('02f1b4084063427f16433af29586025efaad096dabfb57f22904b38468bb250349fd52685e7ddd2b', 1, 2, NULL, '[]', 0, '2019-07-30 10:26:16', '2019-07-30 10:26:16', '2020-07-30 16:26:16'),
('44611436f770e2c3e3632b9f68e498762d628369848c3009a7f13257c13412372f6991a571f36c2b', 1, 2, NULL, '[]', 0, '2019-07-30 10:26:47', '2019-07-30 10:26:47', '2020-07-30 16:26:47'),
('afed7b4a2f072f7292de7fa68c6fa3cde004ae7e125bbe04841785aba2e997da02ce7e5c772d9eca', 1, 2, NULL, '[]', 0, '2019-07-30 10:27:09', '2019-07-30 10:27:09', '2020-07-30 16:27:09'),
('1d1c9d7e406298db936d8325f224fcce7ed8f4d15579d514043194731a64b479d99e661b5330a13f', 1, 2, NULL, '[]', 0, '2019-07-30 10:27:45', '2019-07-30 10:27:45', '2020-07-30 16:27:45'),
('4d328538623a2485eafaf1357939374d1d23267b535d69fa9ed62a8d7180add17bdb0ad5f538638e', 1, 2, NULL, '[]', 0, '2019-07-30 10:39:46', '2019-07-30 10:39:46', '2020-07-30 16:39:46'),
('62580f275a1b13503bf82b869b0b0f10df593eac4592179a1ecd4996e894cbb36157ec7682c7f540', 1, 2, NULL, '[]', 0, '2019-07-30 10:42:14', '2019-07-30 10:42:14', '2020-07-30 16:42:14'),
('db311dd79c9bcf7256e6623a064744fc6a74032698c32c9fb3857b81623a2de66c08541f3163ea86', 1, 2, NULL, '[]', 0, '2019-07-30 11:34:41', '2019-07-30 11:34:41', '2020-07-30 17:34:41'),
('495e8fb5744851190b305f31332c3568570c6e6184dca40d257543e1568d37d8f511e5f69744bcea', 1, 2, NULL, '[]', 0, '2019-07-30 12:19:37', '2019-07-30 12:19:37', '2020-07-30 18:19:37'),
('279f4f2a2075f8d6b4ce2cf49d00ba828ff5f8b9bec2f05d387a97ef50fcd196d44b49d5aa39382f', 1, 2, NULL, '[]', 0, '2019-07-30 12:28:26', '2019-07-30 12:28:26', '2020-07-30 18:28:26'),
('b1c6c0704c1a86a7a68e461d1fe009865ce09a1e6ccf5c5e52ee5da65a6fc8af9e9b3b2f6363c4c9', 1, 2, NULL, '[]', 0, '2019-07-30 12:31:23', '2019-07-30 12:31:23', '2020-07-30 18:31:23'),
('a96ff1c1740ef070ba321230c54e83be4365f93ca9af243cc35568e06b269a6f83bdea531e4f93e4', 1, 2, NULL, '[]', 0, '2019-07-30 12:37:16', '2019-07-30 12:37:16', '2020-07-30 18:37:16'),
('3d1f6f5219347b5fc1a49408742dc1a787e90663a889cf5ff5ea73e94a85b2f709678e60454ab817', 1, 2, NULL, '[]', 0, '2019-07-30 12:41:24', '2019-07-30 12:41:24', '2020-07-30 18:41:24'),
('3450f87e923758b117a323e113e33072cf1fa7a2c22691f5bc899c7f1329f20d62d333c5dcf8de51', 1, 2, NULL, '[]', 0, '2019-07-30 12:42:22', '2019-07-30 12:42:22', '2020-07-30 18:42:22'),
('1a6f20f0505299ccf5f70a340f85df096cac338f49c2eb6bad1efbda7077662ec4ff9b3feca040e8', 1, 2, NULL, '[]', 0, '2019-07-30 12:43:20', '2019-07-30 12:43:20', '2020-07-30 18:43:20'),
('8035078ac3c0c729bad96628e3e30240c2bcef03f4023c3c9d4590ace5c9e50b103d946d9a4010b1', 1, 2, NULL, '[]', 0, '2019-07-30 14:54:22', '2019-07-30 14:54:22', '2020-07-30 20:54:22'),
('b14c3f6d5c1114c65bdcbd4a1c8cd19d90c6f0485656ce14c76ceb6002818aab2408effee2d1f708', 1, 2, NULL, '[]', 0, '2019-07-30 17:20:00', '2019-07-30 17:20:00', '2020-07-30 23:20:00'),
('233511e569670b96eab7fb5bf16ab8db1b820df511127bccde15c4d465faf93bb098422e21075644', 1, 2, NULL, '[]', 0, '2019-07-30 17:58:27', '2019-07-30 17:58:27', '2020-07-30 23:58:27'),
('fa927356e345c85c3e5a99e37f926e8a5cdd66edee12e085ec6ab4c241a34ff3b5221a0ff8bb3c73', 1, 2, NULL, '[]', 0, '2019-07-31 02:36:43', '2019-07-31 02:36:43', '2020-07-31 08:36:43'),
('bcfd1f39f244d2fd1f87e6a6128adc84da87d4f989ed103dd1f4b9b370309385ebf26af07272b206', 1, 2, NULL, '[]', 0, '2019-07-31 02:36:46', '2019-07-31 02:36:46', '2020-07-31 08:36:46'),
('e3e0cd570014397bd80c47393025bdab7ff1ca326dd65a2d4e29743d5e4d897d2654533226f1842a', 1, 2, NULL, '[]', 0, '2019-07-31 03:26:19', '2019-07-31 03:26:19', '2020-07-31 09:26:19'),
('53da08d8ef51397c55b726df2384ab470faf9a862683bf951b6cb1bcdf484a3f8ca2235e1ba3f904', 1, 2, NULL, '[]', 0, '2019-07-31 03:48:32', '2019-07-31 03:48:32', '2020-07-31 09:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'gQBBr57xiTnSt6xXXwim92uGzVemihJF6KFaEm41', 'http://localhost', 1, 0, 0, '2019-07-27 10:06:12', '2019-07-27 10:06:12'),
(2, NULL, 'Laravel Password Grant Client', 'szNVQI5S5XOqsqZANwE2K9Wn0qn4FZUrvJjzb3Tg', 'http://localhost', 0, 1, 0, '2019-07-27 10:06:13', '2019-07-27 10:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-27 10:06:13', '2019-07-27 10:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('a3321de18f13b2e3b472be0f988feff2f2998ed5e7635324e2a4d902f0b1abef8fd4e9d55c322d50', '62d1eacb7301fe59bf962f8f4a836578b16948fd8508806d4d581861e15a639ad77d5a265bce25d4', 0, '2020-07-27 16:45:24'),
('50cbb7f0738218160e13bbe842a6097cd6e465be147c246a2aa7e4569d833eb66bcfea67dde999df', '27bbde97ac2fae422e8ba36c9959088d5a64360083b7f1d5446264efaf223cf7bd245bc2ae84400f', 0, '2020-07-28 12:53:14'),
('48fca5cc7909eecaf7ada6f80b421805adddb07bf8275d5de39481294230682d33db31a96d9aa18a', '0953e8678d78af735355cd93a68311055fd43078c46d21f34ad6bb674ff526a58ad144fafdcffdce', 0, '2020-07-30 11:57:36'),
('638aa01055e42f7f38f3bd25a516bda6cc08a9725b8d7cbd275a82cf65d2c7fd2f752072e7051c1e', 'be128dbfb169adedf0cefdc545a4b2a3d4befdafbc39e9994b48a31b2ad57bfab2bf4bac581bcb07', 0, '2020-07-30 12:06:16'),
('36925659545da3de326db8d35ac881da3d25c84b5597e91af0cdec3b0d11a444855d481d80599e60', 'd8e29bc6da338962ccf6ffacb1933761e6aec8339f02c0adffcbe97da94b63d8feaf8e25089ace24', 0, '2020-07-30 12:13:23'),
('4a0af9091de09742e3c9a770b07b227bc6a4c55d525f41fe194767d4335bd51e7a38355117fe3f82', 'dc1ed466c33d0d593bf1639124e16726d14f32ab28b88f446590205aecf918707084b0db9471f0ad', 0, '2020-07-30 13:02:38'),
('1981a32ad52ba62b3805d14a44c264fc3ed06c466e39cc5368fe01183fbcab274325be19a1b5c583', '1dff9898d44cf041aedc7877987b21f64648d3dd4881acbd7620494b82128d315e1fdfff3cf33386', 0, '2020-07-30 13:55:25'),
('2fe193d9fa207112f1d234865daad2028d13f2e0b84b8b8275415051efb09b33837a59573afee4ab', '8442228b6cb6d576b96682c3a64e1b3e09962069ef8ed07fbfe4e5ce3a958f7cc300a81b67e8d9a4', 0, '2020-07-30 14:02:38'),
('d2519ecabe92b4eb91d7bcb7b45de10064559398b494edd1d6ea437d95316aa7a2fe8660024de3ab', 'cf772ff848ab4591563507f9f6ff8004316bd60dfe6a3543892979b7d2d5ec97737c2e9281bd5e3a', 0, '2020-07-30 14:04:02'),
('ae6e97d2c99051c500b84fd342fc3a9240fa0d30e02c78670ff727a1c43b8e8a6a7d88e22f24685d', '5c02d0dc0f490b01ec63695a898e3c3e572720fce8f2f6b4c687acd0e32112c03d301ea1bb0547bf', 0, '2020-07-30 14:06:18'),
('2a7a5fce524a3ce91f9cfb4c5baa558b5f8b15a6222be7f665b0a8bca8e83e752a2ea94f82ab2239', 'af058271b9184069020439767e6e89a0529a2a05bee7bdbd1ac704e9df96190cdfbed5466b8331ab', 0, '2020-07-30 14:07:50'),
('09d6b6b32338dd717d7f0eb741bff1ef1b6b13a1f693a4e0b3ac2fbd954149ec4a4d1fb703b8d823', 'a96fa5692484bfd30d811390087db82d0bb11eaafb5cc9a5f589ce7a3fa48920494f463c2e8cab3a', 0, '2020-07-30 14:20:49'),
('63ed52f82f3c4b3b4d85c0281cb9fd600bf0234c2ca46ea5bc6174f55341e4b122c85523512d8686', '191e6595651a94cae7bde6c5efd4f7d43695427652e7ba273d01eab6d896ec8f8e7969f6f4ff8dcf', 0, '2020-07-30 14:25:42'),
('babcf756586f572ab2c739713db8dca2e74daee5d0e691ab19dc17e86466b55103dd17fcd79acc39', '8dfd414af5a9195d03974403a9c2dd1a367c59bf41998912c53770aaa1692f2d38c3aeb01ca1c01b', 0, '2020-07-30 15:19:01'),
('d03d481f13becf2b58d3fbd364cfb30b20053987668302e2ed4ba1ede79db8e9db987eafa56e4c62', 'cacb7f3b7d23c01a46ceff602c7314e7f2e55ee43b766127041642c9fc5b78ef8fe903f0168943b6', 0, '2020-07-30 16:20:58'),
('73d71cdb14c11e451404636d2564704617e641ee37d3aa8af95a348fb2e9b256d3f57fa1718ae66c', '98f8c78ab3fd5dce87c0abd6f1c3e93b3dbddf57c37441b625d2f9027a5f0a6be6959c84286a3641', 0, '2020-07-30 16:21:00'),
('f8c76c9f93f3d06bdfd9abbbf3ef6b6193bf0c93eef739724ecd18bd0e13de75416361c876055e7e', 'da42ae648c1b758f20991ffda54980c995696cdeec82dfe6a98571441b5e56e8b1ce039e175546d3', 0, '2020-07-30 16:21:05'),
('fb286cf41aa69d399c91d5d38c0fbfb440d70fa1e2cbde3762374e625135b145ed4a4d86d2f049ed', 'e369a735a69a771e71464ef075cde9aaf3d892221baed83758a99454b52c82f3b2d9f2f6b1c38ab5', 0, '2020-07-30 16:21:06'),
('5a3c97029b41390580108211983a9c26c2cb3d7aa883932f0685538b49db09abc289270d4b7d0e21', 'eeb74d90b62677dc9621b0d2c24fa6f497361ffb45fc055aef94e918cdcf77fdf79f8a5945dc26c8', 0, '2020-07-30 16:21:06'),
('915179be201e75a87d8212cd4aa4eaa06320ecfd11fd155b351b7b60e8d87fcab1032a881f9794f0', 'fbbcbc16a64f0e992200e482b8084bdebc1c8142b78b524a62439c5c46eef4197fc2e857f8174694', 0, '2020-07-30 16:21:06'),
('3a6f142fc73e2203a70f0496815e1eda8501a31d767b59eec39c028f6d4d8a40aa56e39299156a7d', '0ffa03d4e980794fab8a5e77b6458ca1b6f1f5f11aa7b58414767bb7e23132c66540e0f71d425b05', 0, '2020-07-30 16:21:07'),
('74412c709e7c5711c4c50b870d959f2e87c596cf7a5e5ede44f69bab3c9c65854328a99b09cc9ded', 'c3800779e53a14558df8cf3d62bf85fb71596f524ba8f5380c47e925a4447e2109aa3b237bde32e1', 0, '2020-07-30 16:21:07'),
('c8f1265f5e0439723d5c79037020def236626e4b71066899a48f635d5253dcb4d17e95fc2c2f11d0', '257cb5b841b405f3050d1787592db34420a5228a9bc4304d412e9b43629cb04cb3bdedaa1c8b040d', 0, '2020-07-30 16:21:39'),
('8c08fc298a16720c93f46f6b66363a07434e974cc54b0b84e730bae71913a344f8ae3cae3747da91', 'f56d7c53d02e6a7fd2866fdc54f49cf579abc7e89e3abd5ba93f6d3d9bdb541a36f490f9996d65ad', 0, '2020-07-30 16:22:14'),
('3aed13ec73a2e24d237cec289843b1f5ef031efa6cf5763ef7a8a8734ae8ce13dc4bcc594b33089e', '59b9cecc01c4b2545eedb6b0d64f361cb22fe8d3858a2583fa8b173add7c848a6601b611a839bba9', 0, '2020-07-30 16:23:32'),
('3651c16c2117a6b6c862334be137c3e1f54f8d9afb7683f4dcc8b8ceb5c99621573a3c3dad8e262f', '1244bba0fee418cc555d61bb371e5875b90185e4ac15864ed15de53b712e8bde4ff1e2054855f68e', 0, '2020-07-30 16:23:34'),
('356ebaf6de88adcc49af401a4171c1b66f94593d53cf91fd0b2be270f1df4a2bd2a4a9a44fcdc122', '7a6b06e6435abb8ab8e74689bf93b2ac4cbbbb1cb0c2b0fda3bf0a8f7d440fa1ed5ff57ed26aa35f', 0, '2020-07-30 16:23:35'),
('82a18ac4ab05a17a9359eef2ae44a1651a0e8f93a178983b6420cf6b6af8a4d509e160df3e8b2b8f', 'f7373b07a4f0abb3f056b90c1da9a4a3a39437d4a64070cd75453e9f4150af6b17260a2aa5ba004f', 0, '2020-07-30 16:23:40'),
('6f4e5b1ad2b79a7bbf324c93daaa23ce063c4669d0f8c45926d67f17403629f80be7934bb3e47ac0', '59c13665d11e5a87da9687745f4ce07f5fa26af51aa90beae981f87f627cd857d27c7c063eb5265e', 0, '2020-07-30 16:24:14'),
('750e5f052ded44e9a71eb252ca1a43165f7ff8bb06046fd9f774f8f05853fd3bd78e8d48e638762c', '55bb388864dfec6d38f7e4996eb7ac446f2856dee3a4a749f39f8488b1b5676f7ac53fbbacac31df', 0, '2020-07-30 16:24:23'),
('6f5cb6933f956f09d8a5840352d228b0ac962a214bf18b33760437fa8c146f8adf5a774b51429385', 'cbbce8d94c3462a116b825c44849c45604c44a1e0aade91aeea7825141888b73f57fa83551809392', 0, '2020-07-30 16:25:29'),
('01ded169a1a49e5072ba0ef24408c35c00b17be6d5ef85fed8cb742f3dd2ec9380e65763aa190019', '02f1b4084063427f16433af29586025efaad096dabfb57f22904b38468bb250349fd52685e7ddd2b', 0, '2020-07-30 16:26:16'),
('c505248cbb79e3ddb6c69373cc4d32ab49e31d336b48e65189dcef7da77845fe62f770c3e2f2d63b', '44611436f770e2c3e3632b9f68e498762d628369848c3009a7f13257c13412372f6991a571f36c2b', 0, '2020-07-30 16:26:47'),
('bf11275f503346e9adaf5735452c26924c3b6d2b55df3e7386f5a904bf9230f5aaa6aaf30c962a55', 'afed7b4a2f072f7292de7fa68c6fa3cde004ae7e125bbe04841785aba2e997da02ce7e5c772d9eca', 0, '2020-07-30 16:27:09'),
('933605d2d5fedf568e6350b982e2bcc0740a9adecc831166e82769d487d237938ec4c632952040a5', '1d1c9d7e406298db936d8325f224fcce7ed8f4d15579d514043194731a64b479d99e661b5330a13f', 0, '2020-07-30 16:27:45'),
('20f97d762ceb164dee9b7ea1c0f90518731a6dac226041c6395e79cc15fef01dd7552d93470a6f4e', '4d328538623a2485eafaf1357939374d1d23267b535d69fa9ed62a8d7180add17bdb0ad5f538638e', 0, '2020-07-30 16:39:46'),
('960df66a3d331b8333935c6d96ec1cf0d45115478373a77d33dd37febc0815ce2f441b588ccdfab8', '62580f275a1b13503bf82b869b0b0f10df593eac4592179a1ecd4996e894cbb36157ec7682c7f540', 0, '2020-07-30 16:42:14'),
('195a16992e3af55d245ab52642f7ef91ddbdbf3dca59fe0bfe69e555963194c5f0459f7d9e92c516', 'db311dd79c9bcf7256e6623a064744fc6a74032698c32c9fb3857b81623a2de66c08541f3163ea86', 0, '2020-07-30 17:34:41'),
('9469dd7a97a03d0a06ea659412f66834de7adcf232973f50f07c1a4949c0e09b8367d097316f1c61', '495e8fb5744851190b305f31332c3568570c6e6184dca40d257543e1568d37d8f511e5f69744bcea', 0, '2020-07-30 18:19:37'),
('7c24167619a132d2649e25b6198ccfb8b4c594d00721394d2eaa333ca6aca7a81ac0076e4f97ad06', '279f4f2a2075f8d6b4ce2cf49d00ba828ff5f8b9bec2f05d387a97ef50fcd196d44b49d5aa39382f', 0, '2020-07-30 18:28:26'),
('68bc568f1898b385797146c26de6cddb06015e80fac8ad1a44327f3c170e5f095dfbcdba646cbf6a', 'b1c6c0704c1a86a7a68e461d1fe009865ce09a1e6ccf5c5e52ee5da65a6fc8af9e9b3b2f6363c4c9', 0, '2020-07-30 18:31:23'),
('36fdf04d3dfcbc4eacd9121dfd0299be9090fa42a9402c6446ee01cee4ed20fd6a501b14c53311f6', 'a96ff1c1740ef070ba321230c54e83be4365f93ca9af243cc35568e06b269a6f83bdea531e4f93e4', 0, '2020-07-30 18:37:16'),
('64fda6b1f580f7e7d721084d889d728ece8d036e77e6fe9bae08ddcbe9986461ae68d853574ff267', '3d1f6f5219347b5fc1a49408742dc1a787e90663a889cf5ff5ea73e94a85b2f709678e60454ab817', 0, '2020-07-30 18:41:24'),
('8d553ea86bd26e2b61b8157e200634590cab4f03c41334c147d010c04161dd8758e72b064b9bfb66', '3450f87e923758b117a323e113e33072cf1fa7a2c22691f5bc899c7f1329f20d62d333c5dcf8de51', 0, '2020-07-30 18:42:22'),
('7a09be2fd80e4ae1881b6ea8c245bc4216fc7e5f8204f09f15248eb9e3fcb71db46551242d30bade', '1a6f20f0505299ccf5f70a340f85df096cac338f49c2eb6bad1efbda7077662ec4ff9b3feca040e8', 0, '2020-07-30 18:43:20'),
('3259effdf0cc0a1b88ee6347c887b71a91d54f595088eb04eb4bea6176ae688ab10550232813c421', '8035078ac3c0c729bad96628e3e30240c2bcef03f4023c3c9d4590ace5c9e50b103d946d9a4010b1', 0, '2020-07-30 20:54:22'),
('1a23e2bcd7cc160fcd5b38822186c985345d0114fb970c67175077dee9dca0a04906a6d5d373d9d6', 'b14c3f6d5c1114c65bdcbd4a1c8cd19d90c6f0485656ce14c76ceb6002818aab2408effee2d1f708', 0, '2020-07-30 23:20:00'),
('e06148e8dc0b2e29297ba874110e9e5a3f5d53d67623ad535613cbc2ff775ba53f6664daae9df7d5', '233511e569670b96eab7fb5bf16ab8db1b820df511127bccde15c4d465faf93bb098422e21075644', 0, '2020-07-30 23:58:27'),
('d09d8a14b4e8f8356faa1cc2648270d53efe6e4ecbfa87001704f49d178d95037fd4d87963aeea66', 'fa927356e345c85c3e5a99e37f926e8a5cdd66edee12e085ec6ab4c241a34ff3b5221a0ff8bb3c73', 0, '2020-07-31 08:36:43'),
('9b63a9eca9ac44b765f2e1cc96c112a030d5a72d23ea638dee91c71849ea1a2768d4ab63041c78d4', 'bcfd1f39f244d2fd1f87e6a6128adc84da87d4f989ed103dd1f4b9b370309385ebf26af07272b206', 0, '2020-07-31 08:36:46'),
('fc8ddc7b6f7227cfa8d15ce53366ee3b4bb2b97e7a69ca5d3bd38319367f2d8584ca3de29c289646', 'e3e0cd570014397bd80c47393025bdab7ff1ca326dd65a2d4e29743d5e4d897d2654533226f1842a', 0, '2020-07-31 09:26:19'),
('add345216c8501522557ecd48160508904eea05b8a6f0bb023642cb1ad865f3124e7dbe9b7b988f9', '53da08d8ef51397c55b726df2384ab470faf9a862683bf951b6cb1bcdf484a3f8ca2235e1ba3f904', 0, '2020-07-31 09:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `user_id`, `name`, `phone_no`, `shipping_address`, `payment`, `total_price`, `email`, `is_paid`, `is_completed`, `is_seen_by_admin`, `created_at`, `updated_at`) VALUES
(2, 'PS1564410175', 1, 'Hafijur Rahman', '4567879465', 'Savar, Dhaka', 'cashOnDelivery', 600, 'hafijur2584@gmail.com', 0, 0, 0, '2019-07-29 08:22:55', '2019-07-29 08:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `images`, `model`, `color`, `brand`, `price`, `stock`, `description`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'product-1', '1564491312.jpeg', 'product 1 model', 'product 1 color', 'product 1 brand', 500, 21, 'test', 'test', '2019-07-30 06:55:12', '2019-07-30 06:55:12'),
(2, 'Product 2', 'product-2-slug', '1564491386.jpeg', 'Product 2 model', 'Product 2 color', 'Product 2 brand', 400, 10, 'test', 'test', '2019-07-30 06:56:26', '2019-07-30 06:56:26'),
(3, 'Product 3', 'product-3-slug', '1564491458.jpeg', 'Product 3 model', 'Product 3 color', 'Product 3 brand', 200, 40, 'test', 'test', '2019-07-30 06:57:38', '2019-07-30 06:57:38'),
(4, 'Product Name 4', 'product-slug-4', '1564491520.jpeg', 'product 4 model', 'product 4 color', 'product 4 brand', 100, 20, 'test', 'test', '2019-07-30 06:58:41', '2019-07-30 06:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_index` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_phone_no_unique` (`phone_no`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `phone_no`, `email`, `address`, `photo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hafijur Rahman', 'user', '6364554354', 'user@gmail.com', 'Savar, Dhaka', '1564405566.jpeg', NULL, '$2y$10$bcfXbtjZSFyEue4.OjMgZOZIboB6YN61HohRHf0UH1fCPU0Txs1BK', NULL, '2019-07-28 13:45:39', '2019-07-29 07:13:26'),
(2, 'test', 'test', '456676875', 'home@gmail.com', 'test', NULL, NULL, '$2y$10$Z3dKzZJsTJA3uaeJalanQ.eD81PEgSNun3DNke9ae0jWZzcSEMmja', NULL, '2019-07-29 03:00:32', '2019-07-29 03:00:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
