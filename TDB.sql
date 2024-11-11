-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 11, 2024 at 07:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `booked_by` int(11) NOT NULL,
  `depature_date` date DEFAULT NULL,
  `depature_time` time DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `station` int(11) DEFAULT NULL,
  `spervisor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nihil totam consectetur doloremque.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(2, 'Est minima quia et rerum.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(3, 'Quis rerum.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(4, 'Id et.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(5, 'Quis voluptatem corporis.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(6, 'Quo nam suscipit nesciunt.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(7, 'Deleniti explicabo aut.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(8, 'Ut dolores fugit.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(9, 'Maiores dolorum deserunt.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(10, 'Odit enim.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(11, 'Excepturi aut debitis eum.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(12, 'Aspernatur et voluptatem.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(13, 'Voluptas corporis ex.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(14, 'Soluta in iusto.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(15, 'Inventore et odit.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(16, 'Est suscipit quia.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(17, 'Quidem mollitia.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(18, 'Consequatur consequatur enim sequi.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(19, 'Ut est eum.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(20, 'Harum sequi consequatur occaecati.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(21, 'Corrupti voluptas sed corporis.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(22, 'Est eligendi.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(23, 'Non vero perferendis.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(24, 'Occaecati ipsa voluptatem.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(25, 'Est et.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(26, 'Veritatis consequatur nostrum dignissimos.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(27, 'Alias dolorem ab.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(28, 'Est vero autem dicta.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(29, 'Culpa voluptate qui molestiae.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(30, 'Quaerat veniam dolores.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(31, 'Placeat voluptate tempora ut.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(32, 'Aut ut est magni.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(33, 'Dignissimos id ipsum nemo quod.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(34, 'Aspernatur magni qui.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(35, 'Facere ut ipsa.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(36, 'Illo totam dolores qui.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(37, 'Fugiat nam hic debitis.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(38, 'Rerum qui provident et.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(39, 'Ut quis iure.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(40, 'Aut quia rerum vel.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(41, 'Ipsam ipsam omnis sed.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(42, 'Ex et fugiat aliquid.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(43, 'Illo nobis eum quaerat.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(44, 'Eius dignissimos repellendus dicta.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(45, 'Vitae occaecati dolores.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(46, 'Ut quae molestiae minima.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(47, 'Velit eaque rerum totam.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(48, 'Vel voluptatem animi sunt.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(49, 'Id quis quae.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(50, 'Architecto aut in.', '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_shop`
--

CREATE TABLE `category_shop` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'monday', '2024-10-15 13:43:42', '2024-10-15 13:43:42'),
(2, 'tuesday', '2024-10-15 13:43:42', '2024-10-15 13:43:42'),
(3, 'wednesday', '2024-10-15 13:43:42', '2024-10-15 13:43:42'),
(4, 'thursday', '2024-10-15 13:43:42', '2024-10-15 13:43:42'),
(5, 'friday', '2024-10-15 13:43:42', '2024-10-15 13:43:42'),
(6, 'saturday', '2024-10-15 13:43:42', '2024-10-15 13:43:42'),
(7, 'sunday', '2024-10-15 13:43:42', '2024-10-15 13:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `day_shop`
--

CREATE TABLE `day_shop` (
  `day_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `from_hours` varchar(255) NOT NULL,
  `from_minutes` varchar(255) NOT NULL,
  `to_hours` varchar(255) NOT NULL,
  `to_minutes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(25, 'App\\Shop', 13, 'e1a11700-e132-43fb-96d3-b12e3cc3592b', 'photos', 'images-3', 'images-3.jpeg', 'image/jpeg', 'public', 'public', 8753, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2024-11-04 07:02:19', '2024-11-04 07:02:19'),
(26, 'App\\Shop', 13, 'f14a163a-250a-46a9-925b-733a744662db', 'photos', 'images-2', 'images-2.jpeg', 'image/jpeg', 'public', 'public', 9780, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 2, '2024-11-04 07:02:19', '2024-11-04 07:02:19'),
(27, 'App\\Shop', 13, 'f39aab65-0a8b-4340-aa9f-b201a12e932c', 'photos', 'images', 'images.jpeg', 'image/jpeg', 'public', 'public', 11462, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 3, '2024-11-04 07:02:19', '2024-11-04 07:02:19'),
(28, 'App\\Shop', 13, 'ab4042ff-60e2-4949-bd3a-cefa0573ec53', 'photos', 'Mount-Kilimanjaro-Tanzania.jpg', 'Mount-Kilimanjaro-Tanzania.jpg.webp', 'image/webp', 'public', 'public', 311756, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 4, '2024-11-04 07:02:19', '2024-11-04 07:02:22');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_11_28_000001_create_media_table', 1),
(8, '2019_11_28_000002_create_permissions_table', 1),
(9, '2019_11_28_000003_create_roles_table', 1),
(10, '2019_11_28_000004_create_users_table', 1),
(11, '2019_11_28_000005_create_categories_table', 1),
(12, '2019_11_28_000006_create_shops_table', 1),
(13, '2019_11_28_000007_create_permission_role_pivot_table', 1),
(14, '2019_11_28_000008_create_role_user_pivot_table', 1),
(15, '2019_11_28_000009_create_category_shop_pivot_table', 1),
(16, '2019_11_28_000010_add_relationship_fields_to_shops_table', 1),
(17, '2019_11_29_111745_create_days_table', 1),
(18, '2019_11_29_115228_create_day_shop_pivot_table', 1),
(19, '2024_06_17_081618_create_bookings_table', 1),
(20, '2024_06_17_085306_create_supevisors_table', 1),
(21, '2024_06_17_085335_create_stations_table', 1),
(22, '2024_06_17_085410_create_statuses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'category_create', NULL, NULL, NULL),
(18, 'category_edit', NULL, NULL, NULL),
(19, 'category_show', NULL, NULL, NULL),
(20, 'category_delete', NULL, NULL, NULL),
(21, 'category_access', NULL, NULL, NULL),
(22, 'shop_create', NULL, NULL, NULL),
(23, 'shop_edit', NULL, NULL, NULL),
(24, 'shop_show', NULL, NULL, NULL),
(25, 'shop_delete', NULL, NULL, NULL),
(26, 'shop_access', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(1, 1),
(12, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `active`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`) VALUES
(13, 'kilimanjaro', 'Kilimanjaro', 'Kilimanjaro, Tanzania', '-3.067424699999999', '37.35562729999999', 0, '2024-11-04 07:02:19', '2024-11-04 07:02:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `professionality` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$vUIzDlvfpu2yOATsPYcPaOTY/zgbgwViLIWSfZxSlmRBFV.g/fmOW', 'ohDgxA9OF79jjoFhRZwEn0RKfQGCib1Z5JVsnrZtpM3aiM1GAmCFz1wWf8Na', NULL, NULL, NULL),
(2, 'Clyde Dooley', 'user1@user1.com', NULL, '$2y$10$vUIzDlvfpu2yOATsPYcPaOTY/zgbgwViLIWSfZxSlmRBFV.g/fmOW', NULL, '2024-10-15 13:43:40', '2024-10-15 13:43:40', NULL),
(3, 'Burnice Cremin DVM', 'user2@user2.com', NULL, '$2y$10$QCe.W5FE769JWJaUPIsHWOmuJ45g1CsGbtdDPa8LB99q0A8iOuPhq', NULL, '2024-10-15 13:43:40', '2024-10-15 13:43:40', NULL),
(4, 'Aditya McLaughlin Jr.', 'user3@user3.com', NULL, '$2y$10$KQlzGDjgxvx07C7hJLGXXOcDbQVq7e6GsW14dGXbtFfMlY2YI179C', NULL, '2024-10-15 13:43:41', '2024-10-15 13:43:41', NULL),
(5, 'Alanna Terry V', 'user4@user4.com', NULL, '$2y$10$RFOtQbJOEkgzo8fDjU4m2O6mfOXyBvmN0/fKTK5X9K48SAS.Jw44a', NULL, '2024-10-15 13:43:41', '2024-10-15 13:43:41', NULL),
(6, 'Katheryn Turcotte', 'user5@user5.com', NULL, '$2y$10$mCdYjDuhs7Spus6hiJA1Iezy6oAdmJSSwDj8za1y74qsIQGweGqFK', NULL, '2024-10-15 13:43:41', '2024-10-15 13:43:41', NULL),
(7, 'Felipa Heaney IV', 'user6@user6.com', NULL, '$2y$10$qYcpypa1hzMENNdGu.Rup.Dle8k8O7yqk.BtGDnXz0MJyrRTtSkS6', NULL, '2024-10-15 13:43:41', '2024-10-15 13:43:41', NULL),
(8, 'Prof. Jerrold Deckow', 'user7@user7.com', NULL, '$2y$10$xfTiReyS.D/F3ciD/hq9O.a367eIUyL.GJVhDDDg82rE/NRkGhYAW', NULL, '2024-10-15 13:43:41', '2024-10-15 13:43:41', NULL),
(9, 'Joannie Runolfsson', 'user8@user8.com', NULL, '$2y$10$wBX560VUB/by9godUiJwXeKP7fQe20bxZNQ70RgaKng36xmwW93YW', NULL, '2024-10-15 13:43:41', '2024-10-15 13:43:41', NULL),
(10, 'Jackeline Upton', 'user9@user9.com', NULL, '$2y$10$ySe2DtxtUTcm8g26a6YxCeW/JY9Y9778/m33F78UeRLwqcVHlGPPi', NULL, '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(11, 'Concepcion Bode', 'user10@user10.com', NULL, '$2y$10$wMoLZDJKaW645Jz5akan3.ssQcriFcldnXuoP3T/7EIKvCWTbqy5S', NULL, '2024-10-15 13:43:42', '2024-10-15 13:43:42', NULL),
(12, 'martin kaboja', 'fatmadior@gmail.com', NULL, '$2y$10$vUIzDlvfpu2yOATsPYcPaOTY/zgbgwViLIWSfZxSlmRBFV.g/fmOW', NULL, '2024-10-15 14:02:30', '2024-10-15 14:02:30', NULL),
(14, 'martin', 'martinkaboja@gmail.com', NULL, '$2y$10$vUIzDlvfpu2yOATsPYcPaOTY/zgbgwViLIWSfZxSlmRBFV.g/fmOW', 'XuGWSY9WzBcpvSTtnBeKb7RdM7t2XJTpQpoZS5ZieNDSmqnxQ6AP4AYiZafn', '2024-11-01 06:20:33', '2024-11-01 06:20:33', NULL),
(15, 'jdjds', 'dfdsfsf@dff.com', NULL, '$2y$10$zPKg3KKhx0eeHRlXq..9r.VyvtzHscyrK.8FXNxXYUcEihXZHYr4i', NULL, '2024-11-01 06:38:43', '2024-11-01 06:38:43', NULL),
(16, 'dsd', 'sdsds@dsds.co', NULL, '$2y$10$oMYdqmjbyj82xUflnXlwgOPo5LgU/flglPfb5QVhwpL5NyF9Mmn2i', NULL, '2024-11-01 06:43:48', '2024-11-01 06:43:48', NULL),
(17, 'Elisha Gaula', 'ecgaula@gmail.com', NULL, '$2y$10$j7tdwVohPqwjnBwfiL8PEOQ/DRFZvg3TX5TrkxiwurDuz4sOhpfh2', NULL, '2024-11-06 13:38:12', '2024-11-06 13:38:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_shop`
--
ALTER TABLE `category_shop`
  ADD KEY `shop_id_fk_667152` (`shop_id`),
  ADD KEY `category_id_fk_667152` (`category_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day_shop`
--
ALTER TABLE `day_shop`
  ADD KEY `day_shop_day_id_foreign` (`day_id`),
  ADD KEY `day_shop_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_666897` (`role_id`),
  ADD KEY `permission_id_fk_666897` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_666906` (`user_id`),
  ADD KEY `role_id_fk_666906` (`role_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_fk_667277` (`created_by_id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_shop`
--
ALTER TABLE `category_shop`
  ADD CONSTRAINT `category_id_fk_667152` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_id_fk_667152` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `day_shop`
--
ALTER TABLE `day_shop`
  ADD CONSTRAINT `day_shop_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `day_shop_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_666897` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_666897` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_666906` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_666906` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `created_by_fk_667277` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
