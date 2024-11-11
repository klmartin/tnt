-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2024 at 06:25 PM
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
(1, 'Ipsam autem voluptatem nihil.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(2, 'Natus aut voluptate asperiores.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(3, 'Occaecati ut fugit ullam.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(4, 'Sit aut culpa et.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(5, 'Ut aut accusamus molestias.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(6, 'Quo rerum sit.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(7, 'Illo voluptatem quaerat.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(8, 'Odio sit animi.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(9, 'Nihil aut.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(10, 'Consequatur consequuntur aut.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(11, 'Dolores tempora debitis.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(12, 'Soluta distinctio libero voluptas.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(13, 'Explicabo perspiciatis vitae architecto.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(14, 'Illo officia libero qui sed.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(15, 'Mollitia dolor consectetur autem.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(16, 'Impedit eos aut voluptatibus.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(17, 'Non et sed.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(18, 'Commodi porro quod.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(19, 'Vero voluptates pariatur.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(20, 'Iure et fuga optio.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(21, 'Voluptas officiis deserunt.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(22, 'Occaecati beatae consequuntur repellendus.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(23, 'Suscipit accusamus odit.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(24, 'Qui sunt in.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(25, 'Et et autem.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(26, 'Officiis nulla eius quae.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(27, 'Velit non architecto consectetur.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(28, 'Neque veritatis quis non.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(29, 'Quia nam accusamus ipsum.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(30, 'Iure ex ipsum corrupti.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(31, 'Expedita et assumenda.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(32, 'Natus velit consequatur aut.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(33, 'Optio est atque.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(34, 'Voluptatem consequatur.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(35, 'Ratione corporis at accusamus.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(36, 'Omnis et possimus.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(37, 'Dolorem quis id.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(38, 'Quia laboriosam non.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(39, 'Autem commodi sed.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(40, 'Commodi sunt.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(41, 'Saepe earum doloremque hic cumque.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(42, 'Ab sed officiis.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(43, 'Praesentium ut et.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(44, 'Temporibus amet cumque.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(45, 'Sequi modi voluptas.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(46, 'Non alias dolores.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(47, 'Dolorem est.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(48, 'Voluptatem deleniti ad.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(49, 'Laborum dolor eum.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(50, 'Et necessitatibus aut reprehenderit.', '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_shop`
--

CREATE TABLE `category_shop` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_shop`
--

INSERT INTO `category_shop` (`shop_id`, `category_id`) VALUES
(1, 11),
(1, 15),
(1, 16),
(2, 15),
(2, 36),
(3, 6),
(3, 16),
(3, 49),
(5, 23),
(5, 42),
(6, 29),
(6, 38),
(6, 40),
(7, 30),
(8, 3),
(8, 27),
(8, 31),
(10, 12),
(10, 16);

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
(1, 'monday', '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(2, 'tuesday', '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(3, 'wednesday', '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(4, 'thursday', '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(5, 'friday', '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(6, 'saturday', '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(7, 'sunday', '2024-06-15 04:33:51', '2024-06-15 04:33:51');

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

--
-- Dumping data for table `day_shop`
--

INSERT INTO `day_shop` (`day_id`, `shop_id`, `from_hours`, `from_minutes`, `to_hours`, `to_minutes`) VALUES
(1, 1, '10', '00', '18', '00'),
(2, 1, '08', '00', '18', '00'),
(3, 1, '10', '00', '20', '00'),
(4, 1, '09', '00', '18', '00'),
(5, 1, '12', '00', '22', '00'),
(1, 2, '10', '00', '18', '00'),
(2, 2, '08', '00', '18', '00'),
(3, 2, '10', '00', '20', '00'),
(4, 2, '09', '00', '18', '00'),
(5, 2, '12', '00', '22', '00'),
(1, 3, '10', '00', '18', '00'),
(2, 3, '08', '00', '18', '00'),
(3, 3, '10', '00', '20', '00'),
(4, 3, '09', '00', '18', '00'),
(5, 3, '12', '00', '22', '00'),
(1, 5, '10', '00', '18', '00'),
(2, 5, '08', '00', '18', '00'),
(3, 5, '10', '00', '20', '00'),
(4, 5, '09', '00', '18', '00'),
(5, 5, '12', '00', '22', '00'),
(1, 6, '10', '00', '18', '00'),
(2, 6, '08', '00', '18', '00'),
(3, 6, '10', '00', '20', '00'),
(4, 6, '09', '00', '18', '00'),
(5, 6, '12', '00', '22', '00'),
(1, 7, '10', '00', '18', '00'),
(2, 7, '08', '00', '18', '00'),
(3, 7, '10', '00', '20', '00'),
(4, 7, '09', '00', '18', '00'),
(5, 7, '12', '00', '22', '00'),
(1, 8, '10', '00', '18', '00'),
(2, 8, '08', '00', '18', '00'),
(3, 8, '10', '00', '20', '00'),
(4, 8, '09', '00', '18', '00'),
(5, 8, '12', '00', '22', '00'),
(1, 9, '10', '00', '18', '00'),
(2, 9, '08', '00', '18', '00'),
(3, 9, '10', '00', '20', '00'),
(4, 9, '09', '00', '18', '00'),
(5, 9, '12', '00', '22', '00'),
(1, 10, '10', '00', '18', '00'),
(2, 10, '08', '00', '18', '00'),
(3, 10, '10', '00', '20', '00'),
(4, 10, '09', '00', '18', '00'),
(5, 10, '12', '00', '22', '00');

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
(1, 'App\\Shop', 1, 'a4312df2-dc77-4455-a63e-fa9d19f2fbaa', 'photos', 'a8', 'a8.jpg', 'image/jpeg', 'public', 'public', 55187, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(2, 'App\\Shop', 2, 'cf2ec1dd-a90d-4f77-9e05-d3db9cee6ced', 'photos', 'a1', 'a1.jpg', 'image/jpeg', 'public', 'public', 105016, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 2, '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(3, 'App\\Shop', 2, '464e696b-8e8f-4de2-bb23-5711a8877438', 'photos', 'a7', 'a7.jpg', 'image/jpeg', 'public', 'public', 85767, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 3, '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(4, 'App\\Shop', 3, 'fc86fe93-c9f9-4c2e-84d6-aeb7fbd64edf', 'photos', 'a7', 'a7.jpg', 'image/jpeg', 'public', 'public', 85767, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 4, '2024-06-15 04:33:51', '2024-06-15 04:33:51'),
(5, 'App\\Shop', 3, '28296bb8-59e4-40de-be01-d6bb48d637b1', 'photos', 'a10', 'a10.jpg', 'image/jpeg', 'public', 'public', 59578, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 5, '2024-06-15 04:33:51', '2024-06-15 04:33:52'),
(6, 'App\\Shop', 3, '491d03b3-8e02-4234-9eaf-a89a3c0d60e5', 'photos', 'a11', 'a11.jpg', 'image/jpeg', 'public', 'public', 76348, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 6, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(10, 'App\\Shop', 5, '7f480148-89a5-4a28-9582-b434f24d87f0', 'photos', 'a1', 'a1.jpg', 'image/jpeg', 'public', 'public', 105016, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 10, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(11, 'App\\Shop', 5, '8ffa36d4-cf0a-4eb8-bfff-0b38eec68d26', 'photos', 'a2', 'a2.jpg', 'image/jpeg', 'public', 'public', 73083, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 11, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(12, 'App\\Shop', 5, '1a32ce22-3f20-4ead-ac2f-9cb169d20c0b', 'photos', 'a5', 'a5.jpg', 'image/jpeg', 'public', 'public', 94002, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 12, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(13, 'App\\Shop', 6, '63dfb4ee-05f0-4532-abcc-0498f3d1b215', 'photos', 'a1', 'a1.jpg', 'image/jpeg', 'public', 'public', 105016, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 13, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(14, 'App\\Shop', 7, '93df05bf-efa6-45d8-8f0a-919dc222dbc3', 'photos', 'a2', 'a2.jpg', 'image/jpeg', 'public', 'public', 73083, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 14, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(15, 'App\\Shop', 8, 'fb76ddc7-e8ef-4ebe-8565-2414c7616531', 'photos', 'a5', 'a5.jpg', 'image/jpeg', 'public', 'public', 94002, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 15, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(16, 'App\\Shop', 8, '79e889ba-ce70-475b-8ba7-a53bb7d48851', 'photos', 'a9', 'a9.jpg', 'image/jpeg', 'public', 'public', 77479, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 16, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(17, 'App\\Shop', 9, '22c28003-8ed9-49a4-a7b6-8b9f8277de9f', 'photos', 'a9', 'a9.jpg', 'image/jpeg', 'public', 'public', 77479, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 17, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(18, 'App\\Shop', 10, 'bd30fd97-0ad6-48ce-840a-29937e97957e', 'photos', 'a3', 'a3.jpg', 'image/jpeg', 'public', 'public', 95833, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 18, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(19, 'App\\Shop', 10, 'f48ae986-b24a-478c-8b78-d0f482430ae1', 'photos', 'a4', 'a4.jpg', 'image/jpeg', 'public', 'public', 58053, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 19, '2024-06-15 04:33:52', '2024-06-15 04:33:52'),
(20, 'App\\Shop', 10, 'f45cd040-3593-4d82-ba76-a33c7bb0b7b2', 'photos', 'a10', 'a10.jpg', 'image/jpeg', 'public', 'public', 59578, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 20, '2024-06-15 04:33:52', '2024-06-15 04:33:52');

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
(19, '2024_06_17_081618_create_bookings_table', 2),
(20, '2024_06_17_085306_create_supevisors_table', 3),
(21, '2024_06_17_085335_create_stations_table', 3),
(22, '2024_06_17_085410_create_statuses_table', 3);

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
(13, 2);

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
(1, 'Crooks Group', 'Doloribus corrupti debitis id quis quae. Et tempora ea quasi sapiente nostrum. Et eligendi doloremque accusamus in error rem. Et sit debitis est mollitia quia magni.', 'Tesco Express, George Street, London', '51.5174361', '-0.1562695000000076', 1, '2024-06-15 04:33:51', '2024-06-16 06:23:37', '2024-06-16 06:23:37', 2),
(2, 'D\'Amore PLC', 'Molestiae voluptatem recusandae adipisci aliquam voluptas ipsum. Quia eaque minima corporis et quis eum officiis. Amet repudiandae eos omnis qui deleniti tempore. Sapiente repellat ut sequi sit non quae a quo.', 'Tesco Superstore, Tilling Road, London', '51.5741621', '-0.21467619999998533', 1, '2024-06-15 04:33:51', '2024-06-16 06:23:42', '2024-06-16 06:23:42', 3),
(3, 'Skiles-Hintz', 'Molestiae omnis veniam qui unde dolor ipsam nisi. Sit incidunt ea ducimus reprehenderit ea. Iste accusantium sequi necessitatibus. Sunt et eos ratione.', 'Sports Direct, Oxford Street, London', '51.5158907', '-0.13791100000003098', 1, '2024-06-15 04:33:51', '2024-06-16 06:23:47', '2024-06-16 06:23:47', 4),
(4, 'Kozey-Lemke...', 'Minima consequatur aut eum voluptates voluptas dolores distinctio. Dolor eligendi voluptatibus esse quia.', 'Outlet.store.uk, Finchley Road, London', '51.5391825', '-0.17634509999993497', 1, '2024-06-15 04:33:52', '2024-06-17 03:54:39', '2024-06-17 03:54:39', 5),
(5, 'Ryan-Bartell', 'Voluptatem quia unde molestias. Dolore commodi facilis alias minus.', 'Brick Lane Sunday Market, Brick Lane, London', '51.5212073', '-0.0718159000000469', 1, '2024-06-15 04:33:52', '2024-06-15 04:33:52', NULL, 6),
(6, 'Runte PLC', 'Et et qui voluptas magni accusamus. Et reiciendis sit nesciunt et. Nobis aliquid corporis officiis quidem modi fuga sequi. Tenetur optio maxime facere numquam ut.', 'The Harry Potter Shop at Platform 9 3/4, Pancras Road, London', '51.5321845', '-0.12392169999998259', 1, '2024-06-15 04:33:52', '2024-06-15 04:33:52', NULL, 7),
(7, 'Crist-Koepp', 'Consequatur sequi quibusdam quis consequuntur nesciunt ex tenetur. Ut sed dolores cupiditate maxime ex dolor unde quo. At ut recusandae dolores quam quasi. Delectus odit placeat eos quia tempore repellendus itaque.', 'The Beekeeper Honey - London Essex UK, Goodmayes Lane, London, Ilford', '51.5577173', '0.1089951999999812', 1, '2024-06-15 04:33:52', '2024-06-15 04:33:52', NULL, 8),
(8, 'Sanford-O\'Connell', 'Perferendis non quas impedit saepe. Fugit incidunt vel aut iste earum in. Dolores molestias impedit quo.', 'Sainsbury\'s, London Road, Forest Hill, London', '51.4397092', '-0.055361199999993005', 1, '2024-06-15 04:33:52', '2024-06-15 04:33:52', NULL, 9),
(9, 'Doyle LLC', 'Quia ea molestias omnis deleniti. Eum est libero natus laudantium iste et. Nemo provident ullam aperiam et pariatur et quia. Culpa ab sit debitis sed sunt.', 'Lidl, Sydenham Road, London', '51.4253218', '-0.04806940000003124', 1, '2024-06-15 04:33:52', '2024-06-16 06:26:22', '2024-06-16 06:26:22', 10),
(10, 'Blick-Prohaska', 'Suscipit qui at ut voluptatem ut minus minima perferendis. Laborum ducimus assumenda quia cum sed ullam qui. Praesentium pariatur ab incidunt animi voluptas.', 'CHANEL Old Spitalfields Market, Commercial Street, London', '51.51934869999999', '-0.07468889999995554', 1, '2024-06-15 04:33:52', '2024-06-16 06:26:16', '2024-06-16 06:26:16', 11),
(11, 'mwenge', 'sflkahfaksl ksdsikl sds,bksdlds', 'Mwenge, Dar es Salaam, Tanzania', '-6.7695352', '39.2297569', 0, '2024-06-16 04:52:54', '2024-06-16 06:25:05', '2024-06-16 06:25:05', NULL),
(12, 'butimba', 'jksadlabskjlm,sa', 'Butimba, Tanzania', '-2.5816861', '32.9190631', 0, '2024-06-16 04:53:25', '2024-06-18 14:37:54', '2024-06-18 14:37:54', NULL),
(13, 'but', 'slkf,nsaklf,sfs', 'Butimba, Tanzania', '-2.5816861', '32.9190631', 0, '2024-06-16 04:54:25', '2024-06-16 06:25:24', '2024-06-16 06:25:24', NULL),
(14, 'but', 'slkf,nsaklf,sfs', 'Nyegezi Bus Stand Mwanza, Mwanza, Tanzania', '-2.5942693', '32.924824', 0, '2024-06-16 04:55:44', '2024-06-16 06:25:15', '2024-06-16 06:25:15', NULL),
(15, 'but', 'slkf,nsaklf,sfs', 'Nyegezi Bus Stand Mwanza, Mwanza, Tanzania', '-2.5942693', '32.924824', 0, '2024-06-16 04:56:05', '2024-06-16 06:25:19', '2024-06-16 06:25:19', NULL),
(16, 'Ngorongoro', 'fl,.nsf; .df,d', 'Ngorongoro Crater, Tanzania', '-3.1617522', '35.5876697', 1, '2024-06-16 05:11:21', '2024-06-18 14:38:19', NULL, NULL),
(17, 'Basic', 'ms,fkdaf,m', 'Darmstadt, Germany', '49.8728253', '8.6511929', 0, '2024-06-16 06:07:32', '2024-06-16 06:26:28', '2024-06-16 06:26:28', NULL),
(18, 'Mikumi National Pack', 'This is a test', 'Mikumi National Park, Tanzania', '-7.189212400000001', '37.46814489999999', 1, '2024-06-16 11:05:04', '2024-06-18 14:38:01', '2024-06-18 14:38:01', NULL),
(19, 'Sanje Waterfalls: A Hidden Gem in Udzungwa Mountains National Park', NULL, 'Sanje Waterfalls, Sanje, Tanzania', '-7.760207500000001', '36.9162237', 1, '2024-06-16 11:26:49', '2024-06-16 11:28:28', NULL, NULL),
(20, 'Bismack Rocks', 'Bismarck Rock is the symbol of Mwanza. Located at the shores of Lake Victoria, visitors can have a rest in the park and enjoy the stunning view of the Rock formation and the Lake. The rock is named after the German chancellor (1871-1890) Otto von Bismarck, still referring to the history of Mwanza founded in the colonial period of \"German East Africa\".', 'Bismarck Rock, Mwanza, Tanzania', '-2.518754299999999', '32.8947176', 1, '2024-06-18 14:35:45', '2024-06-18 14:36:23', NULL, NULL);

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

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`, `region`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Station Alpha', 'Dar es Salaam', 'Tanzania', NULL, NULL),
(2, 'Station Beta', 'Dodoma', 'Tanzania', NULL, NULL),
(3, 'Station Gamma', 'Tanga', 'Tanzania', NULL, NULL),
(4, 'Station Delta', 'Mwanza', 'Tanzania', NULL, NULL),
(5, 'Station Epsilon', 'Arusha', 'Tanzania', NULL, NULL),
(6, 'Station Zeta', 'Manyara', 'Tanzania', NULL, NULL);

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

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '#FFA500', NULL, NULL),
(2, 'In Progress', '#0000FF', NULL, NULL),
(3, 'Completed', '#008000', NULL, NULL),
(4, 'Cancelled', '#FF0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `professionality` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`id`, `name`, `professionality`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(11, 'John Doe', 'Engineer', '0734567890', 'john@example.com', NULL, NULL),
(12, 'Jane Smith', 'Doctor', '072345678901', 'jane@example.com', NULL, NULL),
(13, 'Alice Johnson', 'Teacher', '073456789012', 'alice@example.com', NULL, NULL),
(14, 'Bob Brown', 'Lawyer', '0767890123', 'bob@example.com', NULL, NULL),
(15, 'Charlie Davis', 'Architect', '0778901234', 'charlie@example.com', NULL, NULL),
(16, 'David Evans', 'Accountant', '07789012345', 'david@example.com', NULL, NULL),
(17, 'Eva Green', 'Consultant', '07890123456', 'eva@example.com', NULL, NULL),
(18, 'Frank Harris', 'Manager', '07901234567', 'frank@example.com', NULL, NULL),
(19, 'Grace Lee', 'Designer', '0712345678', 'grace@example.com', NULL, NULL),
(20, 'Hank White', 'Analyst', '0723456789', 'hank@example.com', NULL, NULL);

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
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$vUIzDlvfpu2yOATsPYcPaOTY/zgbgwViLIWSfZxSlmRBFV.g/fmOW', NULL, NULL, NULL, NULL),
(2, 'Consuelo Kub II', 'user1@user1.com', NULL, '$2y$10$cyUht3eahe1qPhlhGcgucurKRIor/7wV9xubLsGo3w1aSRYznbgP2', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(3, 'Prof. Malika Smith', 'user2@user2.com', NULL, '$2y$10$r0tb1BrbqT5Zc5us7CeQbOPcsuDKe24z0sDA91L1BBvHHsDLw9vFq', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(4, 'Mr. Alek Kertzmann', 'user3@user3.com', NULL, '$2y$10$T3xsU1.H9IFuljlyUEbZju3x33B7yGoRIcJ/34auL6PA3bighAEEC', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(5, 'Buck Farrell II', 'user4@user4.com', NULL, '$2y$10$keTNz/HyAhvnyvNMJAxnXefCAEObbKgOEG5HD8MJ30ydS388rOgRe', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(6, 'Loy Tromp', 'user5@user5.com', NULL, '$2y$10$dSDIbNdhsCAcpOTrBtbYWO/V8VmrKaIKriWoz95oIajCNYhRn53Nu', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(7, 'Jimmie Witting', 'user6@user6.com', NULL, '$2y$10$6VwPWR73xoTGQvtVQrFf2uyzLd5vAg0Do0EwjhrcKjY5eLc/jh3WG', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(8, 'Miss Noemy Ryan', 'user7@user7.com', NULL, '$2y$10$sqfR7M1n5v2hjwsiTvBF0.yLq5jdZGQE/MP6Qzd4WTxkzpy5PzJey', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(9, 'Amina Larkin', 'user8@user8.com', NULL, '$2y$10$pBVphNEi2fQE4.ESg6vUPexNCuJbER1hPujOF0jE4c4VrbehLxwEO', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(10, 'Vivianne Cummerata', 'user9@user9.com', NULL, '$2y$10$tJqSuakGUDXFOwSZSGZdBuVQWyxZ9HRBi1T0oZBN8alUnPSsm/ebu', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(11, 'Elisabeth Farrell', 'user10@user10.com', NULL, '$2y$10$2fkjgE.jaN9za715Wdzctuw7lQoXMzAQxL5x/0ih17irxpA4ZBJuy', NULL, '2024-06-15 04:33:51', '2024-06-15 04:33:51', NULL),
(12, 'philbert malulu', 'philbertmaluu96@gmail.com', NULL, '$2y$10$XH/VniHjWL30Ozsk5YmJr.NLBruqpz/p1AVV01mf8FfCOYqVpa67y', NULL, '2024-06-15 12:12:12', '2024-06-15 12:12:12', NULL),
(13, 'Tinito Elisha', 'tinito@gmail.com', NULL, '$2y$10$umyR5h5SkYMTRUdRG1X7cOmrliH4XP4lSnpjOVDsZw9fw8hOw6IGW', NULL, '2024-06-18 14:17:03', '2024-06-18 14:17:03', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
