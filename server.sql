-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2023 at 03:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_orders`
--

CREATE TABLE `cart_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_orders`
--

INSERT INTO `cart_orders` (`id`, `invoice_no`, `product_name`, `product_code`, `datum`, `unit_price`, `email`, `name`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `created_at`, `updated_at`) VALUES
(3, 'ITEH-PROJEKAT-1692471663411', 'Veliki Servis Fiat automobila', '49498', '30. Septembar 2023.', '800', 'milica@gmail.com', 'Milica', 'Gotovina', 'Miličina Adresa', 'Beograd', '00', '19-08-2023', '09:01:03pm', 'Na čekanju! Uskoro će zahtev biti procesiran unutar Auto Servisa!', NULL, NULL),
(4, 'ITEH-PROJEKAT-1692529883865', 'Veliki Servis Renault automobila', '49689469', '29. Avgust 2023.', '14000', 'aleksandar@gmail.com', 'Aleksandar', 'Gotovina', 'Adresa', 'Beograd', '00', '20-08-2023', '01:11:24pm', 'Na čekanju! Uskoro će zahtev biti procesiran unutar Auto Servisa!', NULL, NULL),
(5, 'ITEH-PROJEKAT-1692531307735', 'Veliki Servis Fiat automobila', '49498', '21. Avgust 2023.', '8000', 'aleksandar2@gmail.com', 'Aleksandar', 'Gotovina', 'Adresa', 'Beograd', '00', '20-08-2023', '01:35:08pm', 'Na čekanju! Uskoro će zahtev biti procesiran unutar Auto Servisa!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Servis', 'https://i.imgur.com/vgCq3LU.jpg', NULL, NULL),
(2, 'Dijagnostika', 'https://i.imgur.com/y8dTtTN.jpg', NULL, NULL),
(3, 'Delovi menjača', 'https://i.imgur.com/GVwrw02.jpg', NULL, NULL),
(4, 'Trap', 'https://i.imgur.com/IUB3w5k.jpg', NULL, NULL),
(5, 'Motor', 'https://i.imgur.com/ZrT6Gxh.jpg', NULL, NULL),
(6, 'Akumulator', 'https://i.imgur.com/VqgDwjL.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'Aleksandar', 'aleksandar@gmail.com', 'Imam nešto da Vam kažem...', '20-08-2023', '11:00:39am', NULL, NULL),
(2, 'Milica', 'milica@gmail.com', 'Poruka za prosledjivanje', '20-08-2023', '12:53:08pm', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `product_name`, `image`, `product_code`, `email`, `created_at`, `updated_at`) VALUES
(2, 'Veliki Servis Fiat automobila', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', '49498', 'aleksandar@gmail.com', NULL, NULL),
(5, 'Veliki Servis Renault automobila', 'https://www.autoservis-line.com/images/pages/autoline-servis-renault.jpg', '49689469', 'aleksandar@gmail.com', NULL, NULL),
(6, 'Auto dijagnostika', 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-auto-dijagnostika.jpg', '49164946', 'aleksandar2@gmail.com', NULL, NULL),
(7, 'Veliki Servis Renault automobila', 'https://www.autoservis-line.com/images/pages/autoline-servis-renault.jpg', '49689469', 'aleksandar2@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'https://www.akkompresor.rs/files/images/2023/8/1/790x430px.png', NULL, NULL),
(2, 'https://www.akkompresor.rs/files/images/2023/7/25/790x430.png', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_11_040505_create_sessions_table', 2),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(7, '2023_08_11_054013_create_visitors_table', 3),
(8, '2023_08_11_055458_create_contacts_table', 3),
(9, '2023_08_11_083845_create_site_infos_table', 4),
(10, '2023_08_11_093937_create_categories_table', 5),
(11, '2023_08_11_094039_create_subcategories_table', 5),
(12, '2023_08_15_030844_create_product_list_table', 6),
(13, '2023_08_15_033115_create_home_sliders_table', 6),
(14, '2023_08_15_040038_create_product_details_table', 6),
(15, '2023_08_16_123154_create_notifications_table', 7),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
(19, '2016_06_01_000004_create_oauth_clients_table', 8),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8),
(21, '2023_08_18_203837_create_product_reviews_table', 8),
(22, '2023_08_18_210421_create_product_carts_table', 8),
(23, '2023_08_18_225703_create_cart_orders_table', 9),
(24, '2023_08_18_225730_create_favourites_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Novo u ponudi!', 'Zakazivanje više termina odjednom donosi i do 50% popusta na naredne termine ili kupovinu iz naše prodavnice!', '19.8.2023.', NULL, NULL),
(2, 'Novi VARTA Akumulatori od sada u našoj ponudi!', 'Kupovinom akumulatora, ugradnja i servisiranje gratis!', '11.8.2023.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('174cbe201c6dd652a267165b8b385a2fcd99c6c215fb4dd81de1aad9d053c6b29b1f171d4cbda8d1', 13, 1, 'app', '[]', 0, '2023-08-20 09:33:08', '2023-08-20 09:33:08', '2024-08-20 11:33:08'),
('1b7df68e5c4b758de00012c3aed71cebe20c4647a1ce8397594c4c0eb74e3f48b435abf7fc26941e', 13, 1, 'app', '[]', 0, '2023-08-20 09:45:55', '2023-08-20 09:45:55', '2024-08-20 11:45:55'),
('2baef7b2518221471d8602f6a389496101d1b4e488b51a15c60385cc3137e6d75b3951f824a01880', 13, 1, 'app', '[]', 0, '2023-08-20 09:25:37', '2023-08-20 09:25:37', '2024-08-20 11:25:37'),
('3628076031d2bbc6168fb992d3d091969a2411212c4bac24d9d76928c2c37ab4bdf76ae7fbefb730', 13, 1, 'app', '[]', 0, '2023-08-20 09:24:38', '2023-08-20 09:24:38', '2024-08-20 11:24:38'),
('3afe6af8569d5fa51ced16c00d1d7e78af9f2da8ac458bed589640c521802236cba95a087864f505', 12, 1, 'app', '[]', 0, '2023-08-20 06:55:21', '2023-08-20 06:55:21', '2024-08-20 08:55:21'),
('54a190403fcca394d9d3b2c8c143f8919dc773659b3c9f8c0c9013dcc99a826c13dcfdd67e50ef1b', 11, 1, 'app', '[]', 0, '2023-08-19 16:33:43', '2023-08-19 16:33:43', '2024-08-19 18:33:43'),
('5fe778f6ccb0a6308f046433e0ef35883b8a56e27742f9756ebb3edd051dd4e45f53bd201b51232b', 12, 1, 'app', '[]', 0, '2023-08-20 08:02:28', '2023-08-20 08:02:28', '2024-08-20 10:02:28'),
('776fc15026a2bc4f25f567756bf44e55c079ff8d383c2a5f9b37ce077a043defbb3842a224be0c74', 13, 1, 'app', '[]', 0, '2023-08-20 09:41:30', '2023-08-20 09:41:30', '2024-08-20 11:41:30'),
('7cb68e05d7870410b078617cdbc6f35ca5a403ccbde58b7e2c35c5e52535a379db275ad9ff3555b4', 13, 1, 'app', '[]', 0, '2023-08-20 09:41:24', '2023-08-20 09:41:24', '2024-08-20 11:41:24'),
('8b2e60415a02c6abf21ec1bceabd0ebe6d34a037bdc4111a3e3ca5b9cfd83ed4803052f54aac593b', 11, 1, 'app', '[]', 0, '2023-08-19 16:03:41', '2023-08-19 16:03:41', '2024-08-19 18:03:41'),
('968c320a8840f160ddbe6e895efe6d23f97d3531c522440a7f18b0ee52179f0d71bb3b481385e873', 13, 1, 'app', '[]', 0, '2023-08-20 09:20:13', '2023-08-20 09:20:13', '2024-08-20 11:20:13'),
('972d587ad6f4ba196b24a31ec348a0f53b8610a07d864ef7110397a99bcfa9d0d317f60cf8edfe03', 13, 1, 'app', '[]', 0, '2023-08-20 09:14:21', '2023-08-20 09:14:21', '2024-08-20 11:14:21'),
('9d4a9b66fa10c73c54d7008637dd00817a1c399477bd4cc821b720249a7d12681f089fdd131ce837', 12, 1, 'app', '[]', 0, '2023-08-19 18:19:21', '2023-08-19 18:19:21', '2024-08-19 20:19:21'),
('bd38e39683892160b4b4d75e359bf3d533a78d230e0fdc73d627a4497f0506049d202548a019814e', 13, 1, 'app', '[]', 0, '2023-08-20 09:41:22', '2023-08-20 09:41:22', '2024-08-20 11:41:22'),
('eb6394fda9f388cb82dd2c46ec170916ed3586b4f1cc6559dc3ec98a4bb009766212ff82075e78cc', 12, 1, 'app', '[]', 0, '2023-08-20 09:13:13', '2023-08-20 09:13:13', '2024-08-20 11:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'R8nsVxZd3TH0jmXQRl0jdE8IgUPyeUyDMxd4CTaM', NULL, 'http://localhost', 1, 0, 0, '2023-08-19 16:03:21', '2023-08-19 16:03:21'),
(2, NULL, 'Laravel Password Grant Client', 'F83GCwcwULdBQnoYLYWbpfED44T2KYfUvANuFdxH', 'users', 'http://localhost', 0, 1, 0, '2023-08-19 16:03:21', '2023-08-19 16:03:21');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-08-19 16:03:21', '2023-08-19 16:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `image_one`, `image_two`, `image_three`, `image_four`, `short_description`, `datum`, `long_description`, `created_at`, `updated_at`) VALUES
(2, 1, 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'Veliki servis Fiat automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(3, 2, 'https://www.autoservis-line.com/images/pages/autoline-servis-bmw.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-bmw.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-bmw.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-bmw.jpg', 'Veliki servis BMW automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(4, 3, 'https://www.autoservis-line.com/images/pages/autoline-servis-citroen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-citroen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-citroen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-citroen.jpg', 'Veliki servis Citroen automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(5, 4, 'https://www.autoservis-line.com/images/pages/autoline-servis-mercedes.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-mercedes.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-mercedes.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-mercedes.jpg', 'Veliki servis Mercedes automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(6, 5, 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'Veliki servis Opel automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(7, 6, 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'Veliki servis Peugeot automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(8, 7, 'https://www.autoservis-line.com/images/pages/autoline-servis-renault.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-renault.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-renault.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-renault.jpg', 'Veliki servis Renault automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(9, 8, 'https://www.autoservis-line.com/images/pages/autoline-servis-skoda.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-skoda.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-skoda.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-skoda.jpg', 'Veliki servis Škoda automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(10, 9, 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'Veliki servis Volkswagen automobila', '', 'Proces velikog servisa automobila je sveobuhvatan postupak održavanja vozila koji obuhvata detaljnu proveru, zamenu ili popravku različitih komponenti automobila kako bi se osiguralo da vozilo ostane u optimalnom stanju i funkcionalnosti. Ovaj servis se obično obavlja na osnovu preporuka proizvođača ili na određenim intervalima (npr. svakih 15.000 km ili godinu dana), kako bi se produžio životni vek automobila, obezbedila sigurnost vozača i putnika te sprečili veći problemi u budućnosti. ', NULL, NULL),
(11, 10, 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-auto-mehanika.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-skoda.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'Auto mehanika', '', 'Auto mehanika dijagnostika je proces identifikacije problema, kvarova ili potrebnih održavanja na vozilu koristeći različite tehnike, alate i tehnologije. Cilj dijagnostike u auto mehanici je utvrditi tačan uzrok problema i predložiti odgovarajuće popravke ili održavanje kako bi se vozilo vratilo u ispravno stanje.', NULL, NULL),
(12, 11, 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-auto-dijagnostika.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-skoda.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'Auto dijagnostika', '', 'Auto dijagnostika je proces identifikacije problema, kvarova ili potrebnih održavanja na vozilu putem upotrebe dijagnostičkih alata i tehnika. Ova praksa je ključna za održavanje i popravke modernih vozila, koja su često opremljena složenim elektronskim sistemima i senzorima.', NULL, NULL),
(13, 12, 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-servisiranje-klima-uredjaja.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'Servis auto klime', '', 'Servis auto klime je važan deo redovnog održavanja vozila, posebno tokom toplih meseci kada je funkcionalna klima uređaja ključna za udobnost tokom vožnje. ', NULL, NULL),
(14, 14, 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-vulkanizerske-usluge.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'Vulkanizerske usluge', '', 'Vulkanizerske usluge obuhvataju različite poslove vezane za pneumatike (gume) i točkove vozila. Vulkanizeri su stručnjaci koji se bave montažom, demontažom, balansiranjem, popravkom i održavanjem pneumatika, kao i drugim poslovima povezanim sa točkovima i gumama.', NULL, NULL),
(16, 15, 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/astra-g-1-6-set-kvacila-325x325.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/astra-g-1-6-set-kvacila-325x325.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'Set kvačila Opel Astra G 1.6 benzin', '', 'Set kvačila za Opel Astra G 1.6 benzin je skup komponenti koji se koriste za zamenu kvačila u vozilu. Kvačilo je deo sistema prenosa snage između motora i menjača, omogućavajući vozaču da prenese ili prekine snagu motora kako bi menjao brzine.', NULL, NULL),
(17, 16, 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/opel-astra-g-set-kvacila-325x325.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/opel-astra-g-set-kvacila-325x325.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'Set kvačila Opel Astra G 1.7 DTI', '', 'Set kvačila za Opel Astra G 1.7 DTI (Direct Turbo Injection) je skup komponenata koji se koristi za zamenu kvačila u vozilu sa ovim specifičnim motorom. Opel Astra G 1.7 DTI je dizel motor, a set kvačila za ovakvo vozilo biće prilagođen specifičnostima dizajna i snage motora. ', NULL, NULL),
(18, 17, 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/set-kvacila-astra-g-2-0-dti-325x325.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/set-kvacila-astra-g-2-0-dti-325x325.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'Set kvačila Opel Astra G 2.0 DTI', '', 'Set kvačila za Opel Astra G 2.0 DTI (Direct Turbo Injection) je skup komponenata koji se koristi za zamenu kvačila u vozilu sa ovim specifičnim motorom. Opel Astra G 2.0 DTI je dizel motor, a set kvačila za ovakvo vozilo će biti prilagođen karakteristikama motora i potrebama prenosa snage.', NULL, NULL),
(19, 18, 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/Corsa-c-set-kvacila-325x325.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/Corsa-c-set-kvacila-325x325.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'Set kvačila Opel Corsa C 1.3 CDTI', '', 'Set kvačila za Opel Corsu C 1.3 CDTI (Common Rail Diesel Turbo Injection) je skup komponenata koji se koristi za zamenu kvačila u vozilu sa ovim specifičnim motorom. Opel Corsa C 1.3 CDTI je dizel motor, a set kvačila za ovakvo vozilo će biti prilagođen karakteristikama motora i potrebama prenosa snage. ', NULL, NULL),
(20, 19, 'https://prosportauto.rs/shop/images/thumbnails/230/230/detailed/5/05-1307-2645438.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://prosportauto.rs/shop/images/thumbnails/230/230/detailed/5/05-1307-2645438.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'Ležaj točka prednji FAG 713644070 Opel', '', 'Ležaj točka prednjeg točka sa brojem 713644070 je deo FAG seta ležaja točka. Ovaj set ležaja se često koristi za prednje točkove na različitim modelima vozila, uključujući Opel vozila. Ležaj točka je bitan deo sistema vešanja i omogućava točkovima da se okreću glatko i bez trzaja.\r\n\r\nFAG je poznati proizvođač ležajeva sa dugogodišnjim iskustvom i visokim standardima kvaliteta. Broj 713644070 je deo kataloga brojeva koje koristi FAG za identifikaciju određenih setova ležaja točka.', NULL, NULL),
(21, 20, 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/7/513500h1.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/7/513500h1.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'Ležaj točka prednjeg 513500H1 Moog', '', 'Ležaj točka prednjeg točka sa brojem 513500H1 je deo Moog seta ležaja točka. Moog je priznati proizvođač auto delova sa reputacijom visokog kvaliteta i pouzdanosti. Broj 513500H1 se koristi za identifikaciju određenog seta ležaja točka koji se često koristi za prednje točkove na različitim vozilima.', NULL, NULL),
(22, 21, 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/4/04-489-2747479.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/4/04-489-2747479.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'Nosač amortizera BIRTH 50115 _ Punto II', '', 'Nosač amortizera sa brojem 50115 od proizvođača BIRTH je komponenta koja se koristi u vešanju vozila. Nosač amortizera je dizajniran da drži amortizer i omogući mu da pravilno funkcioniše, apsorbujući udarce i vibracije tokom vožnje. Broj 50115 je deo identifikacionog sistema BIRTH-a i koristi se za prepoznavanje određenih modela nosača amortizera.', NULL, NULL),
(23, 22, 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/13/51739097.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/13/51739097.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'Nosač amortizera Doblo FIAT 51739097', '', 'Nosač amortizera sa brojem 51739097 je deo koji se koristi za održavanje amortizera na vozilu Fiat Doblo. Nosač amortizera ima ključnu ulogu u vešanju vozila, pružajući podršku i stabilnost amortizeru, što omogućava bolju kontrolu nad vožnjom i udobnost putnika', NULL, NULL),
(24, 23, 'https://gcdn.polovniautomobili.com/user-images/thumbs/1863/18635408/941eea255618-1920x1080.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-citroen.jpg', 'https://gcdn.polovniautomobili.com/user-images/thumbs/1863/18635408/941eea255618-1920x1080.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-citroen.jpg', 'Motor za Citroen Berlingo', '', '\r\nCitroen Berlingo je model komercijalnog vozila koji se proizvodi u različitim generacijama i sa različitim motorima. Kada tražite informacije o motorima za Citroen Berlingo, važno je da specificirate generaciju vozila i tip motora (benzin, dizel, električni itd.). Takođe, motori se često razlikuju po snazi, zapremini i drugim karakteristikama.', NULL, NULL),
(25, 24, 'https://gcdn.polovniautomobili.com/user-images/thumbs/2186/21862381/4fe8e6c65dfe-800x600.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'https://gcdn.polovniautomobili.com/user-images/thumbs/2186/21862381/4fe8e6c65dfe-800x600.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'Motor za Peugeot 206', '', 'Peugeot 206 je popularan kompaktni automobil koji je proizveden u različitim varijantama motora tokom svojih generacija.', NULL, NULL),
(26, 25, 'https://gcdn.polovniautomobili.com/user-images/thumbs/1599/15992053/de6841caf292-800x600.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'https://gcdn.polovniautomobili.com/user-images/thumbs/1599/15992053/de6841caf292-800x600.jpg', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'Motor za GOLF 5', '', 'Volkswagen Golf 5 (ili Golf V) je popularan model automobila koji je bio u proizvodnji od 2003. do 2008. godine. ', NULL, NULL),
(27, 26, 'https://lavauto.rs/login/images/small/va225pms-1.jpg', 'https://lavauto.rs/login/images/small/va225pms-1.jpg', 'https://lavauto.rs/login/images/small/va225pms-1.jpg', 'https://lavauto.rs/login/images/small/va225pms-1.jpg', 'Akumulator VARTA Promotive Silver 12 V 225 Ah', '', 'Akumulator VARTA Promotive Silver 12 V 225 Ah', NULL, NULL),
(28, 27, 'https://lavauto.rs/login/images/small/en105agm-1.jpg', 'https://lavauto.rs/login/images/small/en105agm-1.jpg', 'https://lavauto.rs/login/images/small/en105agm-1.jpg', 'https://lavauto.rs/login/images/small/en105agm-1.jpg', 'Akumulator ENERGIZER Premium AGM 12 V 105Ah +D', '', 'Akumulator ENERGIZER Premium AGM 12 V 105Ah +D', NULL, NULL),
(29, 28, 'https://lavauto.rs/login/images/small/eagm1050-1.jpg', 'https://lavauto.rs/login/images/small/eagm1050-1.jpg', 'https://lavauto.rs/login/images/small/eagm1050-1.jpg', 'https://lavauto.rs/login/images/small/eagm1050-1.jpg', 'Akumulator EXIDE AGM 12 V 105 Ah +Da', '', 'Akumulator EXIDE AGM 12 V 105 Ah +Da', NULL, NULL),
(30, 29, 'https://lavauto.rs/login/images/small/e140sp-1.jpg', 'https://lavauto.rs/login/images/small/e140sp-1.jpg', 'https://lavauto.rs/login/images/small/e140sp-1.jpg', 'https://lavauto.rs/login/images/small/e140sp-1.jpg', 'Akumulator EXIDE StartPRO EG1402 140Ah', '', 'Akumulator EXIDE StartPRO EG1402 140Ah', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `price`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(1, 'Veliki Servis Fiat automobila', '10000', '8000', 'https://www.autoservis-line.com/images/pages/autoline-servis-fiat.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'Fiat', '5', '49498', NULL, NULL),
(2, 'Veliki Servis BMW automobila', '15000', '12000', 'https://www.autoservis-line.com/images/pages/autoline-servis-bmw.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'BMW', '5', '4986269', NULL, NULL),
(3, 'Veliki Servis Citroen automobila', '12000', '10000', 'https://www.autoservis-line.com/images/pages/autoline-servis-citroen.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'Citroen', '4', '195456', NULL, NULL),
(4, 'Veliki Servis Mercedes automobila', '10000', '8000', 'https://www.autoservis-line.com/images/pages/autoline-servis-mercedes.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'Mercedes ', '5', '789562', NULL, NULL),
(5, 'Veliki Servis Opel automobila', '8000', '6000', 'https://www.autoservis-line.com/images/pages/autoline-servis-opel.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'Opel', '5', '979626', NULL, NULL),
(6, 'Veliki Servis Peugeot automobila', '15000', '14500', 'https://www.autoservis-line.com/images/pages/autoline-servis-peugeot.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'Peugeot', '5', '916899', NULL, NULL),
(7, 'Veliki Servis Renault automobila', '15000', '14000', 'https://www.autoservis-line.com/images/pages/autoline-servis-renault.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'Renault ', '5', '49689469', NULL, NULL),
(8, 'Veliki Servis Škoda automobila', '16000', '15000', 'https://www.autoservis-line.com/images/pages/autoline-servis-skoda.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'Škoda ', '4', '9496169', NULL, NULL),
(9, 'Veliki Servis Volkswagen automobila', '12000', '10000', 'https://www.autoservis-line.com/images/pages/autoline-servis-volkswagen.jpg', 'Servis', 'Veliki Servis', 'FEATURED', 'Volkswagen ', '5', '49698416', NULL, NULL),
(10, 'Auto mehanika', '10000', '9000', 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-auto-mehanika.jpg', 'Dijagnostika', 'Auto Mehanika', 'COLLECTION', 'Auto Servis', '5', '496619', NULL, NULL),
(11, 'Auto dijagnostika', '9000', '7000', 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-auto-dijagnostika.jpg', 'Dijagnostika', 'Auto dijagnostika', 'COLLECTION', 'Auto Servis', '3', '49164946', NULL, NULL),
(12, 'Servis auto klime', '9000', '8500', 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-servisiranje-klima-uredjaja.jpg', 'Dijagnostika', 'Servis auto klime', 'COLLECTION', 'Auto Servis', '4', '949269', NULL, NULL),
(14, 'Vulkanizerske usluge', '11000', '9000', 'https://www.autoservis-line.com/images/services/autoline-servis-beograd-vulkanizerske-usluge.jpg', 'Dijagnostika', 'Vulkanizerske usluge', 'COLLECTION', 'Auto Servis', '5', '499184', NULL, NULL),
(15, 'Set kvačila Opel Astra G 1.6 benzin', '6000', '5500', 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/astra-g-1-6-set-kvacila-325x325.jpg', 'Delovi menjača', 'Set kvačila', '', 'Auto Servis', '5', '489816', NULL, NULL),
(16, 'Set kvačila Opel Astra G 1.7 DTI', '4000', '3500', 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/opel-astra-g-set-kvacila-325x325.jpg', 'Delovi menjača', 'Set kvačila', '', 'Auto Servis', '4', '9619896', NULL, NULL),
(17, 'Set kvačila Opel Astra G 2.0 DTI', '9000', '8000', 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/set-kvacila-astra-g-2-0-dti-325x325.jpg', 'Delovi menjača', 'Set kvačila', '', 'Auto Servis', '4', '49499', NULL, NULL),
(18, 'Set kvačila Opel Corsa C 1.3 CDTI', '9000', '6000', 'https://www.mdautodelovi.rs/wp-content/uploads/2023/03/Corsa-c-set-kvacila-325x325.jpg', 'Delovi menjača', 'Set kvačila', '', 'Auto Servis', '5', '4984169', NULL, NULL),
(19, 'Ležaj točka prednji FAG 713644070 Opel', '1000', '7500', 'https://prosportauto.rs/shop/images/thumbnails/230/230/detailed/5/05-1307-2645438.jpg', 'Trap', 'Ležaj točka', '', 'Auto Servis', '', '867878', NULL, NULL),
(20, 'Ležaj točka prednjeg 513500H1 Moog', '2000', '1250', 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/7/513500h1.jpg', 'Trap', 'Ležaj točka', '', 'Auto Servis', '', '45645', NULL, NULL),
(21, 'Nosač amortizera BIRTH 50115 _ Punto II', '2000', '1750', 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/4/04-489-2747479.jpg', 'Trap', 'Nosač amortizera', '', 'Auto Servis', '', '123456', NULL, NULL),
(22, 'Nosač amortizera Doblo FIAT 51739097', '2000', '1500', 'https://prosportauto.rs/shop/images/thumbnails/550/385/detailed/13/51739097.jpg', 'Trap', 'Nosač amortizera', '', 'Auto Servis', '', '954323456', NULL, NULL),
(23, 'Motor za Citroen Berlingo', '2000', '1600', 'https://gcdn.polovniautomobili.com/user-images/thumbs/1863/18635408/941eea255618-1920x1080.jpg', 'Motor', 'Citroen', '', 'Auto Servis', '', '452345666', NULL, NULL),
(24, 'Motor za Peugeot 206', '3000', '1750', 'https://gcdn.polovniautomobili.com/user-images/thumbs/2186/21862381/4fe8e6c65dfe-800x600.jpg', 'Motor', 'Peugeot', '', 'Auto Servis', '', '45456896312', NULL, NULL),
(25, 'Motor za GOLF 5', '4000', '3750', 'https://gcdn.polovniautomobili.com/user-images/thumbs/1599/15992053/de6841caf292-800x600.jpg', 'Motor', 'Golf', '', 'Auto Servis', '', '568664595', NULL, NULL),
(26, 'Akumulator VARTA Promotive Silver 12 V 225 Ah', '1500', '1000', 'https://lavauto.rs/login/images/small/va225pms-1.jpg', 'Akumulator', 'VARTA', 'NEW', 'VARTA ', '', '6645438423', NULL, NULL),
(27, 'Akumulator ENERGIZER Premium AGM 12 V 105Ah +D', '150', '100', 'https://lavauto.rs/login/images/small/en105agm-1.jpg', 'Akumulator', 'ENERGIZER', 'NEW', 'ENERGIZER', '', '1145678533', NULL, NULL),
(28, 'Akumulator EXIDE AGM 12 V 105 Ah +Da', '150', '100', 'https://lavauto.rs/login/images/small/eagm1050-1.jpg', 'Akumulator', 'EXIDE', 'NEW', 'EXIDE', '', '88881545645', NULL, NULL),
(29, 'Akumulator EXIDE StartPRO EG1402 140Ah', '150', '100', 'https://lavauto.rs/login/images/small/e140sp-1.jpg', 'Akumulator', 'EXIDE', 'NEW', 'EXIDE', '', '87863312313456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `product_name`, `reviewer_name`, `reviewer_photo`, `reviewer_rating`, `reviewer_comments`, `created_at`, `updated_at`) VALUES
(1, 1, 'Veliki Servis Fiat automobila', 'Milica', 'https://st2.depositphotos.com/1144472/9644/i/950/depositphotos_96441386-stock-photo-portrait-of-smiling-cheerful-brunette.jpg', '5', 'Sjajna usluga, sve preporuke!', NULL, NULL),
(2, 3, 'Veliki Servis Citroen automobila', 'Aleksandar', '', '5', 'Sjajna usluga, sve preporuke!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0e5Pj3MZX0JolwnEZg6a8weL6FoxxH4sbBUAMe3a', NULL, '127.0.0.1', 'PostmanRuntime/7.32.3', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZjBiYmRIR3pZZ1Zva0FzVGdnbHBzWEZ1bFMzYTF6RWFOOUUyalQ1MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1692457357),
('C5J0esdnsVNImehZuXlzs4p26h1dN6OL4RXtXazQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzJWMXdpNXBlNXYwYXM5MTA0aW0zN1llTU5nY0FMV0lLMndRWlNGYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1691727905),
('DBWrxDjwxSFWo6fwwJgFxvEhfj4gWPGXa76MgMg5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWJQaElSOERsS2YwMkFnbW8wOTdqWk5zQktMTVJhelJxeU9pUWZTayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692457949),
('KWmBO0cKT8tVGxHTLCTOZk031yJQhyFiABz8bPhR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTVReVdnS09pVTFES1I1SHpVTmNaRE9DMjlkcllwdjYxUHBuRjB4WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692459503),
('MS6JaWhxFxvuDuBvPsMQqjBj5y9xxdRFp1ds8Old', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDdmOFpWZzRtSDhpaUsxbU00RG9aU29VZUhCMzBWU1NtdmVZR21CeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692457089),
('NiLnFegbIdky3OPWbpuAAtxJTe5qdoxm5calOlRh', NULL, '127.0.0.1', 'PostmanRuntime/7.32.3', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMUJrRGVrOWNzZ21qem53R0N2UlRZeXNaTFdGdDBLOUt0OGtIU1BMYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1692457744),
('ScCjWAREZaNrUfkKbtladx1fHxjgPgXwJZx9WKmh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHM2ZUJlY0w1MkZ2OHhsMjVmaGdDWnR1a0JZeE5abWZXR1AzQkhoaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692528361),
('uzjDdKTPug2DjZV6KFp9ryzifzexdKsNdgpB61Cn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.203', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3pvWFFFeURQSUx4YmRsT0dUa3BEaExzNFBPWDgxdEY1dnZ3bjNVSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692457074),
('v6E3iflfgNeoW7JpLWCcNp85c451Y0hVNW1rP5G3', NULL, '127.0.0.1', 'PostmanRuntime/7.32.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0k4cExUNm5tZUdSM2pVcktVVTd3VkhPYjUyRFV3aTUxeDg3NzBPOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692530754),
('wbGeOT0JYVmoSV0lZlmQwr1pQaf5lWkXW708kXJE', NULL, '127.0.0.1', 'PostmanRuntime/7.32.3', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ1NWQThZSHZPdHpUcUJldHZ4N3RWVGFlRnhrR3ZuQXNTaVhBOERMVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1692458605),
('yMXs12badCHHA3jai4AKxJ78wMTzTciC06Dyf5Wh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ05jdWVCSHA5ZGF5anFETVBFbDZjZ3Q1aGlNNTJ3T0dTVXVtT3dQYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692457752);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_guide` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `about`, `refund`, `purchase_guide`, `privacy`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `instagram_link`, `twitter_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, '<h6>Projekat iz ITEH-a - Auto Servis</h6>\r\n<br>\r\n<br>\r\n', '<h4>Naša politika povraćaja sredstava</h4>\r\n<p>Usklađivanje sa efikasnom politikom povraćaja sredstava ili zamene igra ključnu ulogu u zaštiti integriteta naše kompanije i sticanju poverenja naših cenjenih kupaca. Uveravamo vas da koristimo kristalno jasan i koncizan jezik kako bismo vam olakšali razumevanje.</p>\r\n<p>Pomoću našeg unapred pripremljenog obrasca za politiku povraćaja sredstava, omogućavamo vam da jednostavno generišete profesionalno izgledajuću politiku koju možete odmah primeniti za povraćaj sredstava ili zamenu proizvoda.</p>\r\n<p>Ispunite relevantne informacije u donjem obrascu za generisanje politike povraćaja sredstava i dostavićemo vam prilagođeni primerak politike besplatno putem e-pošte. Vaša zadovoljstva nam je od suštinskog značaja.</p>', '<h2>Korak 1: Pregled Ponude</h2>\r\n<p>Kada posetilac dođe na našu web prodavnicu auto servisa, prvo će imati mogućnost da pregleda sve usluge koje nudimo. To uključuje i opciju za veliki servis. Na početnoj stranici će moći da vide kratki opis usluga, cene i dostupne termine.</p>\r\n\r\n<h2>Korak 2: Izbor Usluge</h2>\r\n<p>Kada posetilac izabere opciju za veliki servis, biće preusmeren na stranicu sa detaljima o toj usluzi. Na toj stranici će moći da sazna više informacija o tome šta sve obuhvata veliki servis, zašto je važan i slično.</p>\r\n\r\n<h2>Korak 3: Odabir Termina</h2>\r\n<p>Na stranici sa detaljima usluge, posetilac će imati opciju da odabere slobodan termin za veliki servis. Tu će biti prikazani dostupni datumi i vremena, iz kojih će moći da izabere ono koje mu odgovara.</p>\r\n\r\n<h2>Korak 4: Prijava / Registracija</h2>\r\n<p>Ukoliko posetilac već ima nalog kod nas, može se prijaviti. U suprotnom, biće mu potrebno da se registruje, unoseći osnovne informacije kao što su ime, prezime, kontakt podaci, i po mogućstvu, informacije o svom vozilu.</p>\r\n\r\n<h2>Korak 5: Potvrda Termina</h2>\r\n<p>Nakon izbora termina i prijave/registracije, posetilac će pregledati rezervaciju i potvrditi je. Na ovoj stranici će imati priliku da provere izabrani termin, informacije o usluzi i svoje kontakt podatke.</p>\r\n\r\n<h2>Korak 6: Plaćanje (opciono)</h2>\r\n<p>Ako je potrebno platiti unapred, posetilac će biti preusmeren na stranicu za plaćanje. Tu će moći da unese informacije o kartici ili koristi neki drugi način plaćanja.</p>\r\n\r\n<h2>Korak 7: Potvrda i Obaveštenje</h2>\r\n<p>Nakon uspešne rezervacije i/ili plaćanja, posetilac će dobiti potvrdu putem e-pošte ili na stranici sa zahvalnošću. Ova poruka će sadržati sve relevantne informacije o rezervaciji i kontakt informacije auto servisa za svaki slučaj.</p>\r\n\r\n<h2>Korak 8: Podsetnik (opciono)</h2>\r\n<p>Pre nego što dođe zakazani termin, posetilac može dobiti podsetnik putem e-pošte ili SMS poruke. Ovo je korisno kako bi bio siguran da neće zaboraviti svoj termin.</p>', '<h3>Naša Zaštita Privatnosti</h3>\r\n<p>U Webshopu, dostupnom na adresi www.webshop.com, jedan od ključnih aspekata naše brige jeste sačuvati privatnost naših posetilaca. Ovaj dokument, Politika Privatnosti, pruža detaljan uvid u vrste podataka koje prikupljamo i beležimo putem Webshopa, kao i način na koji se ti podaci koriste.</p>\r\n<p>U slučaju da imate dodatna pitanja ili želite saznati više o našim postupcima vezanim za Privatnost, slobodno nas kontaktirajte. Mi smo tu da vam pružimo sve potrebne informacije.</p>\r\n<p>Napomena: Ova Politika Privatnosti se odnosi isključivo na naše online aktivnosti i važi za sve posetioce naše veb stranice u vezi sa informacijama koje su podelili i/ili prikupili na Webshopu. Molimo vas da imate na umu da ova politika ne obuhvata informacije prikupljene van online okruženja ili putem drugih kanala osim veb stranice. Ova Politika Privatnosti je kreirana uz pomoć <a href=\"https://www.privacypolicygenerator.info/\">Besplatnog generatora Politika Privatnosti</a>.</p>\r\n<h2>Pristanak</h2>\r\n<p>Korišćenjem naše veb stranice, automatski dajete svoj pristanak na uslove koje propisuje naša Politika Privatnosti.</p>\r\n<h2>Prikupljeni Podaci</h2>\r\n<p>Informacije koje tražimo od vas, kao i razlozi zahteva za tim informacijama, biće vam jasno navedeni u trenutku kada budemo tražili te informacije. Takođe, ukoliko nas kontaktirate direktno, možemo prikupiti dodatne podatke kao što su ime, e-mail adresa, broj telefona, sadržaj poruke i/ili prilozi koje nam šaljete, kao i bilo koje druge informacije koje odlučite podeliti.</p>\r\n<p>Pri registraciji naloga, možemo vas zamoliti da pružite kontakt informacije, uključujući ime, naziv kompanije, adresu, e-mail adresu i broj telefona.</p>\r\n<h2>Korišćenje Prikupljenih Informacija</h2>\r\n<p>Prikupljene informacije koristimo na različite načine, uključujući:</p>\r\n<ul>\r\n	<li>Osiguravanje, održavanje i upravljanje naše veb stranice</li>\r\n	<li>Unapređenje, personalizacija i proširenje funkcionalnosti naše veb stranice</li>\r\n	<li>Analiziranje i razumevanje načina na koji koristite našu veb stranicu</li>\r\n	<li>Razvoj novih proizvoda, usluga, funkcija i mogućnosti</li>\r\n	<li>Komuniciranje s vama, direktno ili preko partnera, uključujući korisničku podršku, slanje ažuriranja i drugih informacija vezanih za veb stranicu, kao i u svrhu marketinga i promocije</li>\r\n	<li>Slanje e-mailova</li>\r\n	<li>Detektovanje i sprečavanje prevara</li>\r\n</ul>\r\n<h2>Zapisnici (Log fajlovi)</h2>\r\n<p>Webshop koristi standardne metode kao što su zapisnici (log fajlovi). Ovi fajlovi beleže posetioce tokom njihove interakcije sa veb stranicom. Ova praksa je uobičajena među pružaocima hosting usluga i koristi se za analizu i praćenje posetilaca, bez direktnog povezivanja sa lično identifikovanim informacijama. Informacije uključuju internet protokolne (IP) adrese, tip pregledača, provajdera internet usluga (ISP), datum i vreme posete, referentne/izlazne stranice i broj klikova. Ova analitika pomaže u razumevanju trendova, upravljanju veb stranicom i skupljanju demografskih podataka.</p>\r\n<h2>Kolačići i Web Beaconi</h2>\r\n<p>Kao i većina veb stranica, Webshop koristi \'kolačiće\' (cookies) i web becone za čuvanje informacija kao što su vaše preferencije i istorija poseta. Ove informacije omogućavaju optimizaciju korisničkog iskustva prilagođavanjem sadržaja naše veb stranice na osnovu pretraživača i drugih informacija posetilaca.</p>\r\n<p>Da biste saznali više o kolačićima, molimo vas da pročitate <a href=\"https://www.generateprivacypolicy.com/#cookies\">članak o kolačićima na stranici Generate Privacy Policy</a>.</p>\r\n<h2>Google DoubleClick DART Kolačić</h2>\r\n<p>Google, kao treća strana na našoj veb stranici, koristi tzv. DART kolačiće za prikazivanje oglasa na osnovu vaših pretraga na www.website.com i drugim sajtovima na internetu. Posetioci mogu onemogućiti ovu praksu posetom <a href=\"https://policies.google.com/technologies/ads\">Googleovoj Politici Privatnosti za oglase</a>.</p>\r\n<h2>Oglašivački Partneri</h2>\r\n<p>Neke oglašivačke kompanije na našoj veb stranici koriste kolačiće i web becone. Partneri za oglašavanje navedeni su ispod, a svaki od njih ima svoju Politiku Privatnosti:</p>\r\n<ul>\r\n	<li>\r\n			<p>Google</p>\r\n			<p><a href=\"https://policies.google.com/technologies/ads\">Google Politika Privatnosti</a></p>\r\n	</li>\r\n</ul>\r\n<h2>Politike Privatnosti Trećih Strana</h2>\r\n<p>Imajte na umu da naša Politika Privatnosti ne pokriva druge oglašivače ili veb stranice. Preporučujemo da konsultujete odgovarajuće Politike Privatnosti tih trećih strana za detaljnije informacije o njihovim postupcima i opcijama za odustajanje od praćenja.</p>\r\n<p>Ukoliko želite, možete onemogućiti kolačiće putem postavki vašeg pretraživača. Za više informacija o upravljanju kolačićima putem određenih pretraživača, molimo vas da posetite relevantne veb stranice.</p>\r\n<h2>Prava Korisnika prema Zakonu CCPA (Ne Prodajte Moje Lične Podatke)</h2>\r\n<p>Prema zakonu CCPA, korisnici iz Kalifornije imaju pravo da:</p>\r\n<p>Zatraže da saznaju koje lične podatke posedujemo o njima i/ili njihovoj domaćinstvu, kao i razloge za prikupljanje tih podataka. Takođe, mogu zatražiti da se ti podaci ne prodaju trećim licima. Trenutno, Webshop ne deli lične podatke s trećim licima u komercijalne svrhe.</p>\r\n<p>Ako želite saznati više o ovim pravima i kako ih ostvariti, ili želite izbrisati vaše lične podatke iz našeg sistema, slobodno nas kontaktirajte.</p>\r\n<h2>Prava Korisnika prema GDPR</h2>\r\n<p>Pridržavamo se svih prava korisnika u vezi sa ličnim podacima u skladu sa važećim zakonima o zaštiti podataka, uključujući pravo na pristup, ispravku, brisanje i prenos podataka. Ako imate bilo kakve nedoumice ili zahteve u vezi sa svojim ličnim podacima, slobodno nas kontaktirajte.</p>\r\n<h2>Dodatne Informacije o Obradi</h2>\r\n<p>Način donošenja odluka</p>\r\n<p>U Webshopu primenjujemo zakonite metode obrade podataka i čuvamo ih samo onoliko dugo koliko je neophodno za svrhu za koju su prikupljeni.</p>\r\n<p>Pravni Osnovi za Obradu Ličnih Podataka</p>\r\n<p>Podaci se obrađuju na osnovu sledećih pravnih osnova:</p>\r\n<ul>\r\n	<li>Izvršenje Ugovora</li>\r\n	<li>Obrada ličnih podataka neophodna je za izvršenje ugovora s korisnikom.</li>\r\n	<li>Pravna Obaveza</li>\r\n	<li>Obrada ličnih podataka neophodna je za ispunjenje pravne obaveze koja se odnosi na Webshop.</li>\r\n	<li>Pravi Interes</li>\r\n	<li>Obrada ličnih podataka neophodna je za ostvarivanje legitmnog interesa Webshopa ili treće strane.</li>\r\n</ul>\r\n<p>Pravi interes Webshopa uključuje pružanje, održavanje i unapređenje usluga naših posetilaca.</p>\r\n<p>Čuvanje Podataka</p>\r\n<p>Podaci se čuvaju u sigurnom okruženju i zadržavaju se samo onoliko dugo koliko je to potrebno za svrhu koja opravdava njihovo prikupljanje.</p>\r\n<p>Prenos Podataka</p>\r\n<p>Informacije koje prikupljamo mogu biti prenete izvan vaše zemlje ili regiona i čuvane na serverima koje koriste treće strane. U slučaju da se nalazite izvan Sjedinjenih Američkih Država i odlučite da podelite informacije s nama, znajte da će te informacije biti prenete i obrađene u Sjedinjenim Američkim Državama u skladu s našom Politikom Privatnosti.</p>\r\n<p>Vaša saglasnost s ovom Politikom Privatnosti, praćenje saglasnosti i povlačenje iste</p>\r\n<p>Korišćenjem naše veb stranice, automatski pristajete na sve uslove koje nameće naša Politika Privatnosti. Imajte na umu da prikupljanje i korišćenje ličnih podataka može biti promenjeno ili nadograđeno u skladu s ovom Politikom Privatnosti.</p>\r\n<p>Ako u bilo kom trenutku odlučite da povučete svoju saglasnost, slobodno nas kontaktirajte putem e-mail adrese koja se nalazi u donjem delu ove Politike Privatnosti.</p>\r\n<p>Zadržavamo pravo da se pridržavamo svih prava korisnika u vezi s ličnim podacima u skladu sa važećim zakonima o zaštiti podataka.</p>\r\n<p>Molimo vas da imate na umu da ova Politika Privatnosti važi samo za našu veb stranicu i primenjuje se samo na informacije prikupljene putem iste. Ova Politika Privatnosti ne obuhvata informacije prikupljene van online okruženja ili putem drugih kanala osim veb stranice.</p>\r\n<h2>Kontakt Informacije</h2>\r\n<p>Ako imate bilo kakva pitanja ili nedoumice u vezi s našom Politikom Privatnosti, slobodno nas kontaktirajte putem e-mail adrese koja se nalazi u donjem delu ove Politike Privatnosti.</p>', '<h6> Beograd, 2023 <br />\r\nProjekat ITEH / Auto servis</h6>', 'http://localhost:3000/android', 'http://localhost:3000/ios', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', '© Copyright 2023. All Rights Reserved.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_name`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 'Servis', 'Veliki Servis', NULL, NULL),
(2, 'Servis', 'Mali Servis', NULL, NULL),
(3, 'Dijagnostika', 'Auto Mehanika', NULL, NULL),
(4, 'Dijagnostika', 'Auto dijagnostika', NULL, NULL),
(5, 'Dijagnostika', 'Servis auto klime', NULL, NULL),
(6, 'Dijagnostika', 'Vulkanizerske usluge', NULL, NULL),
(7, 'Delovi menjača', 'Set kvačila', NULL, NULL),
(8, 'Trap', 'Ležaj točka', NULL, NULL),
(9, 'Trap', 'Nosač amortizera', NULL, NULL),
(10, 'Motor', 'Citroen', NULL, NULL),
(11, 'Motor', 'Peugeot', NULL, NULL),
(12, 'Motor', 'Golf', NULL, NULL),
(13, 'Akumulator', 'VARTA', NULL, NULL),
(14, 'Akumulator', 'ENERGIZER', NULL, NULL),
(15, 'Akumulator', 'EXIDE', NULL, NULL);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Milica', 'milica@gmail.com', NULL, '$2y$10$InvjCOYqJfRWFLnC35ftnuFkh7pONsMd5Twkthp7ykV549vwPKUsa', NULL, NULL, NULL, NULL, '2023-08-19 13:23:59', '2023-08-19 13:23:59'),
(12, 'Aleksandar', 'aleksandar@gmail.com', NULL, '$2y$10$hhu/8xJFh3dsJ8KDi5/zzOqtXxd6CJC69FNkOWiB71H6z7sNBj.1i', NULL, NULL, NULL, NULL, '2023-08-19 18:19:21', '2023-08-19 18:19:21'),
(13, 'Aleksandar2', 'aleksandar2@gmail.com', NULL, '$2y$10$3KaTfMtWnU2WbXLxTgdInOR7GUKuHaBTH50J5d7eLLKCUDUajdRFu', NULL, NULL, NULL, NULL, '2023-08-20 09:14:21', '2023-08-20 09:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_adress`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '10:37:39am', '11-08-2023', NULL, NULL),
(2, '127.0.0.1', '10:37:45am', '11-08-2023', NULL, NULL),
(3, '127.0.0.1', '10:42:02am', '11-08-2023', NULL, NULL),
(4, '127.0.0.1', '10:42:07am', '11-08-2023', NULL, NULL),
(5, '127.0.0.1', '11:12:08am', '11-08-2023', NULL, NULL),
(6, '127.0.0.1', '11:42:52am', '11-08-2023', NULL, NULL),
(7, '127.0.0.1', '11:42:56am', '11-08-2023', NULL, NULL),
(8, '127.0.0.1', '11:43:09am', '11-08-2023', NULL, NULL),
(9, '127.0.0.1', '11:52:17am', '11-08-2023', NULL, NULL),
(10, '127.0.0.1', '11:55:53am', '11-08-2023', NULL, NULL),
(11, '127.0.0.1', '11:56:36am', '11-08-2023', NULL, NULL),
(12, '127.0.0.1', '11:59:20am', '11-08-2023', NULL, NULL),
(13, '127.0.0.1', '12:01:49pm', '11-08-2023', NULL, NULL),
(14, '127.0.0.1', '12:02:58pm', '11-08-2023', NULL, NULL),
(15, '127.0.0.1', '12:03:51pm', '11-08-2023', NULL, NULL),
(16, '127.0.0.1', '12:14:57pm', '11-08-2023', NULL, NULL),
(17, '127.0.0.1', '12:16:44pm', '11-08-2023', NULL, NULL),
(18, '127.0.0.1', '12:17:50pm', '11-08-2023', NULL, NULL),
(19, '127.0.0.1', '12:17:56pm', '11-08-2023', NULL, NULL),
(20, '127.0.0.1', '05:07:48am', '15-08-2023', NULL, NULL),
(21, '127.0.0.1', '05:57:46am', '15-08-2023', NULL, NULL),
(22, '127.0.0.1', '05:57:59am', '15-08-2023', NULL, NULL),
(23, '127.0.0.1', '06:07:28am', '15-08-2023', NULL, NULL),
(24, '127.0.0.1', '06:07:44am', '15-08-2023', NULL, NULL),
(25, '127.0.0.1', '06:20:53am', '15-08-2023', NULL, NULL),
(26, '127.0.0.1', '06:21:55am', '15-08-2023', NULL, NULL),
(27, '127.0.0.1', '06:22:28am', '15-08-2023', NULL, NULL),
(28, '127.0.0.1', '06:24:25am', '15-08-2023', NULL, NULL),
(29, '127.0.0.1', '06:33:10am', '15-08-2023', NULL, NULL),
(30, '127.0.0.1', '06:33:27am', '15-08-2023', NULL, NULL),
(31, '127.0.0.1', '06:45:08am', '15-08-2023', NULL, NULL),
(32, '127.0.0.1', '06:46:21am', '15-08-2023', NULL, NULL),
(33, '127.0.0.1', '06:46:27am', '15-08-2023', NULL, NULL),
(34, '127.0.0.1', '06:49:26am', '15-08-2023', NULL, NULL),
(35, '127.0.0.1', '06:49:46am', '15-08-2023', NULL, NULL),
(36, '127.0.0.1', '06:49:56am', '15-08-2023', NULL, NULL),
(37, '127.0.0.1', '06:56:55am', '15-08-2023', NULL, NULL),
(38, '127.0.0.1', '06:58:59am', '15-08-2023', NULL, NULL),
(39, '127.0.0.1', '07:00:18am', '15-08-2023', NULL, NULL),
(40, '127.0.0.1', '07:17:19am', '15-08-2023', NULL, NULL),
(41, '127.0.0.1', '07:17:26am', '15-08-2023', NULL, NULL),
(42, '127.0.0.1', '07:18:29am', '15-08-2023', NULL, NULL),
(43, '127.0.0.1', '07:28:19am', '15-08-2023', NULL, NULL),
(44, '127.0.0.1', '07:28:46am', '15-08-2023', NULL, NULL),
(45, '127.0.0.1', '07:33:39am', '15-08-2023', NULL, NULL),
(46, '127.0.0.1', '07:33:58am', '15-08-2023', NULL, NULL),
(47, '127.0.0.1', '07:34:15am', '15-08-2023', NULL, NULL),
(48, '127.0.0.1', '07:36:39am', '15-08-2023', NULL, NULL),
(49, '127.0.0.1', '07:36:46am', '15-08-2023', NULL, NULL),
(50, '127.0.0.1', '07:42:36am', '15-08-2023', NULL, NULL),
(51, '127.0.0.1', '07:42:38am', '15-08-2023', NULL, NULL),
(52, '127.0.0.1', '07:42:44am', '15-08-2023', NULL, NULL),
(53, '127.0.0.1', '07:42:59am', '15-08-2023', NULL, NULL),
(54, '127.0.0.1', '07:43:04am', '15-08-2023', NULL, NULL),
(55, '127.0.0.1', '01:47:42pm', '16-08-2023', NULL, NULL),
(56, '127.0.0.1', '01:49:11pm', '16-08-2023', NULL, NULL),
(57, '127.0.0.1', '02:00:09pm', '16-08-2023', NULL, NULL),
(58, '127.0.0.1', '02:10:38pm', '16-08-2023', NULL, NULL),
(59, '127.0.0.1', '02:11:11pm', '16-08-2023', NULL, NULL),
(60, '127.0.0.1', '02:15:48pm', '16-08-2023', NULL, NULL),
(61, '127.0.0.1', '02:30:13pm', '16-08-2023', NULL, NULL),
(62, '127.0.0.1', '02:30:30pm', '16-08-2023', NULL, NULL),
(63, '127.0.0.1', '02:35:17pm', '16-08-2023', NULL, NULL),
(64, '127.0.0.1', '02:38:41pm', '16-08-2023', NULL, NULL),
(65, '127.0.0.1', '02:45:43pm', '16-08-2023', NULL, NULL),
(66, '127.0.0.1', '02:47:12pm', '16-08-2023', NULL, NULL),
(67, '127.0.0.1', '02:57:12pm', '16-08-2023', NULL, NULL),
(68, '127.0.0.1', '02:57:36pm', '16-08-2023', NULL, NULL),
(69, '127.0.0.1', '03:00:06pm', '16-08-2023', NULL, NULL),
(70, '127.0.0.1', '04:28:24pm', '16-08-2023', NULL, NULL),
(71, '127.0.0.1', '01:28:24am', '17-08-2023', NULL, NULL),
(72, '127.0.0.1', '02:58:48am', '17-08-2023', NULL, NULL),
(73, '127.0.0.1', '03:16:53am', '17-08-2023', NULL, NULL),
(74, '127.0.0.1', '08:43:51am', '17-08-2023', NULL, NULL),
(75, '127.0.0.1', '08:44:17am', '17-08-2023', NULL, NULL),
(76, '127.0.0.1', '08:45:02am', '17-08-2023', NULL, NULL),
(77, '127.0.0.1', '08:45:52am', '17-08-2023', NULL, NULL),
(78, '127.0.0.1', '10:24:29pm', '18-08-2023', NULL, NULL),
(79, '127.0.0.1', '10:30:23pm', '18-08-2023', NULL, NULL),
(80, '127.0.0.1', '10:35:23pm', '18-08-2023', NULL, NULL),
(81, '127.0.0.1', '11:31:54pm', '18-08-2023', NULL, NULL),
(82, '127.0.0.1', '11:32:49pm', '18-08-2023', NULL, NULL),
(83, '127.0.0.1', '11:33:53pm', '18-08-2023', NULL, NULL),
(84, '127.0.0.1', '11:40:06pm', '18-08-2023', NULL, NULL),
(85, '127.0.0.1', '01:20:54am', '19-08-2023', NULL, NULL),
(86, '127.0.0.1', '01:22:59am', '19-08-2023', NULL, NULL),
(87, '127.0.0.1', '01:23:05am', '19-08-2023', NULL, NULL),
(88, '127.0.0.1', '01:24:16am', '19-08-2023', NULL, NULL),
(89, '127.0.0.1', '01:24:25am', '19-08-2023', NULL, NULL),
(90, '127.0.0.1', '11:49:10am', '19-08-2023', NULL, NULL),
(91, '127.0.0.1', '12:34:54pm', '19-08-2023', NULL, NULL),
(92, '127.0.0.1', '12:35:12pm', '19-08-2023', NULL, NULL),
(93, '127.0.0.1', '12:35:43pm', '19-08-2023', NULL, NULL),
(94, '127.0.0.1', '12:37:01pm', '19-08-2023', NULL, NULL),
(95, '127.0.0.1', '12:43:22pm', '19-08-2023', NULL, NULL),
(96, '127.0.0.1', '12:43:33pm', '19-08-2023', NULL, NULL),
(97, '127.0.0.1', '02:01:01pm', '19-08-2023', NULL, NULL),
(98, '127.0.0.1', '02:02:19pm', '19-08-2023', NULL, NULL),
(99, '127.0.0.1', '02:12:32pm', '19-08-2023', NULL, NULL),
(100, '127.0.0.1', '02:12:59pm', '19-08-2023', NULL, NULL),
(101, '127.0.0.1', '02:14:02pm', '19-08-2023', NULL, NULL),
(102, '127.0.0.1', '02:15:12pm', '19-08-2023', NULL, NULL),
(103, '127.0.0.1', '02:19:22pm', '19-08-2023', NULL, NULL),
(104, '127.0.0.1', '02:24:19pm', '19-08-2023', NULL, NULL),
(105, '127.0.0.1', '02:26:15pm', '19-08-2023', NULL, NULL),
(106, '127.0.0.1', '02:29:30pm', '19-08-2023', NULL, NULL),
(107, '127.0.0.1', '02:30:09pm', '19-08-2023', NULL, NULL),
(108, '127.0.0.1', '02:30:39pm', '19-08-2023', NULL, NULL),
(109, '127.0.0.1', '02:31:23pm', '19-08-2023', NULL, NULL),
(110, '127.0.0.1', '02:34:23pm', '19-08-2023', NULL, NULL),
(111, '127.0.0.1', '02:34:35pm', '19-08-2023', NULL, NULL),
(112, '127.0.0.1', '02:39:13pm', '19-08-2023', NULL, NULL),
(113, '127.0.0.1', '02:43:24pm', '19-08-2023', NULL, NULL),
(114, '127.0.0.1', '02:43:42pm', '19-08-2023', NULL, NULL),
(115, '127.0.0.1', '02:48:00pm', '19-08-2023', NULL, NULL),
(116, '127.0.0.1', '02:49:01pm', '19-08-2023', NULL, NULL),
(117, '127.0.0.1', '02:54:11pm', '19-08-2023', NULL, NULL),
(118, '127.0.0.1', '02:54:55pm', '19-08-2023', NULL, NULL),
(119, '127.0.0.1', '02:56:26pm', '19-08-2023', NULL, NULL),
(120, '127.0.0.1', '02:58:10pm', '19-08-2023', NULL, NULL),
(121, '127.0.0.1', '02:59:56pm', '19-08-2023', NULL, NULL),
(122, '127.0.0.1', '03:00:54pm', '19-08-2023', NULL, NULL),
(123, '127.0.0.1', '03:03:34pm', '19-08-2023', NULL, NULL),
(124, '127.0.0.1', '03:06:04pm', '19-08-2023', NULL, NULL),
(125, '127.0.0.1', '03:06:19pm', '19-08-2023', NULL, NULL),
(126, '127.0.0.1', '03:06:39pm', '19-08-2023', NULL, NULL),
(127, '127.0.0.1', '04:39:04pm', '19-08-2023', NULL, NULL),
(128, '127.0.0.1', '04:41:35pm', '19-08-2023', NULL, NULL),
(129, '127.0.0.1', '04:45:14pm', '19-08-2023', NULL, NULL),
(130, '127.0.0.1', '04:51:20pm', '19-08-2023', NULL, NULL),
(131, '127.0.0.1', '05:21:51pm', '19-08-2023', NULL, NULL),
(132, '127.0.0.1', '05:25:01pm', '19-08-2023', NULL, NULL),
(133, '127.0.0.1', '05:25:46pm', '19-08-2023', NULL, NULL),
(134, '127.0.0.1', '05:27:37pm', '19-08-2023', NULL, NULL),
(135, '127.0.0.1', '05:28:59pm', '19-08-2023', NULL, NULL),
(136, '127.0.0.1', '05:30:47pm', '19-08-2023', NULL, NULL),
(137, '127.0.0.1', '05:32:14pm', '19-08-2023', NULL, NULL),
(138, '127.0.0.1', '05:36:45pm', '19-08-2023', NULL, NULL),
(139, '127.0.0.1', '05:37:17pm', '19-08-2023', NULL, NULL),
(140, '127.0.0.1', '05:51:21pm', '19-08-2023', NULL, NULL),
(141, '127.0.0.1', '05:52:21pm', '19-08-2023', NULL, NULL),
(142, '127.0.0.1', '06:21:32pm', '19-08-2023', NULL, NULL),
(143, '127.0.0.1', '06:22:10pm', '19-08-2023', NULL, NULL),
(144, '127.0.0.1', '06:25:42pm', '19-08-2023', NULL, NULL),
(145, '127.0.0.1', '06:26:00pm', '19-08-2023', NULL, NULL),
(146, '127.0.0.1', '06:26:20pm', '19-08-2023', NULL, NULL),
(147, '127.0.0.1', '06:35:41pm', '19-08-2023', NULL, NULL),
(148, '127.0.0.1', '06:38:05pm', '19-08-2023', NULL, NULL),
(149, '127.0.0.1', '07:29:23pm', '19-08-2023', NULL, NULL),
(150, '127.0.0.1', '08:09:01pm', '19-08-2023', NULL, NULL),
(151, '127.0.0.1', '08:12:03pm', '19-08-2023', NULL, NULL),
(152, '127.0.0.1', '08:12:42pm', '19-08-2023', NULL, NULL),
(153, '127.0.0.1', '08:33:52pm', '19-08-2023', NULL, NULL),
(154, '127.0.0.1', '08:34:50pm', '19-08-2023', NULL, NULL),
(155, '127.0.0.1', '08:34:52pm', '19-08-2023', NULL, NULL),
(156, '127.0.0.1', '08:39:06pm', '19-08-2023', NULL, NULL),
(157, '127.0.0.1', '08:40:28pm', '19-08-2023', NULL, NULL),
(158, '127.0.0.1', '08:48:55pm', '19-08-2023', NULL, NULL),
(159, '127.0.0.1', '08:48:58pm', '19-08-2023', NULL, NULL),
(160, '127.0.0.1', '08:50:11pm', '19-08-2023', NULL, NULL),
(161, '127.0.0.1', '08:56:31pm', '19-08-2023', NULL, NULL),
(162, '127.0.0.1', '08:58:33pm', '19-08-2023', NULL, NULL),
(163, '127.0.0.1', '08:58:46pm', '19-08-2023', NULL, NULL),
(164, '127.0.0.1', '08:59:00pm', '19-08-2023', NULL, NULL),
(165, '127.0.0.1', '08:59:32pm', '19-08-2023', NULL, NULL),
(166, '127.0.0.1', '08:59:39pm', '19-08-2023', NULL, NULL),
(167, '127.0.0.1', '09:00:17pm', '19-08-2023', NULL, NULL),
(168, '127.0.0.1', '09:00:23pm', '19-08-2023', NULL, NULL),
(169, '127.0.0.1', '09:02:32pm', '19-08-2023', NULL, NULL),
(170, '127.0.0.1', '09:21:36pm', '19-08-2023', NULL, NULL),
(171, '127.0.0.1', '09:22:59pm', '19-08-2023', NULL, NULL),
(172, '127.0.0.1', '09:40:14pm', '19-08-2023', NULL, NULL),
(173, '127.0.0.1', '09:57:51pm', '19-08-2023', NULL, NULL),
(174, '127.0.0.1', '09:58:20pm', '19-08-2023', NULL, NULL),
(175, '127.0.0.1', '10:14:43pm', '19-08-2023', NULL, NULL),
(176, '127.0.0.1', '10:14:59pm', '19-08-2023', NULL, NULL),
(177, '127.0.0.1', '10:15:05pm', '19-08-2023', NULL, NULL),
(178, '127.0.0.1', '10:17:23pm', '19-08-2023', NULL, NULL),
(179, '127.0.0.1', '10:18:20pm', '19-08-2023', NULL, NULL),
(180, '127.0.0.1', '10:18:34pm', '19-08-2023', NULL, NULL),
(181, '127.0.0.1', '10:19:34pm', '19-08-2023', NULL, NULL),
(182, '127.0.0.1', '10:37:51pm', '19-08-2023', NULL, NULL),
(183, '127.0.0.1', '10:40:00pm', '19-08-2023', NULL, NULL),
(184, '127.0.0.1', '10:53:36am', '20-08-2023', NULL, NULL),
(185, '127.0.0.1', '10:54:13am', '20-08-2023', NULL, NULL),
(186, '127.0.0.1', '10:55:30am', '20-08-2023', NULL, NULL),
(187, '127.0.0.1', '10:55:47am', '20-08-2023', NULL, NULL),
(188, '127.0.0.1', '10:59:45am', '20-08-2023', NULL, NULL),
(189, '127.0.0.1', '11:10:33am', '20-08-2023', NULL, NULL),
(190, '127.0.0.1', '11:12:31am', '20-08-2023', NULL, NULL),
(191, '127.0.0.1', '11:12:38am', '20-08-2023', NULL, NULL),
(192, '127.0.0.1', '11:15:22am', '20-08-2023', NULL, NULL),
(193, '127.0.0.1', '11:15:36am', '20-08-2023', NULL, NULL),
(194, '127.0.0.1', '11:16:30am', '20-08-2023', NULL, NULL),
(195, '127.0.0.1', '11:17:27am', '20-08-2023', NULL, NULL),
(196, '127.0.0.1', '11:48:37am', '20-08-2023', NULL, NULL),
(197, '127.0.0.1', '11:51:08am', '20-08-2023', NULL, NULL),
(198, '127.0.0.1', '11:51:20am', '20-08-2023', NULL, NULL),
(199, '127.0.0.1', '12:00:36pm', '20-08-2023', NULL, NULL),
(200, '127.0.0.1', '12:14:22pm', '20-08-2023', NULL, NULL),
(201, '127.0.0.1', '12:28:13pm', '20-08-2023', NULL, NULL),
(202, '127.0.0.1', '12:46:02pm', '20-08-2023', NULL, NULL),
(203, '127.0.0.1', '12:52:03pm', '20-08-2023', NULL, NULL),
(204, '127.0.0.1', '12:56:44pm', '20-08-2023', NULL, NULL),
(205, '127.0.0.1', '01:19:51pm', '20-08-2023', NULL, NULL),
(206, '127.0.0.1', '01:20:29pm', '20-08-2023', NULL, NULL),
(207, '127.0.0.1', '01:20:31pm', '20-08-2023', NULL, NULL),
(208, '127.0.0.1', '01:21:23pm', '20-08-2023', NULL, NULL),
(209, '127.0.0.1', '01:33:17pm', '20-08-2023', NULL, NULL),
(210, '127.0.0.1', '01:37:29pm', '20-08-2023', NULL, NULL),
(211, '127.0.0.1', '01:37:43pm', '20-08-2023', NULL, NULL),
(212, '127.0.0.1', '01:41:19pm', '20-08-2023', NULL, NULL),
(213, '127.0.0.1', '01:42:08pm', '20-08-2023', NULL, NULL),
(214, '127.0.0.1', '01:48:27pm', '20-08-2023', NULL, NULL),
(215, '127.0.0.1', '01:58:56pm', '20-08-2023', NULL, NULL),
(216, '127.0.0.1', '02:02:52pm', '20-08-2023', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_orders`
--
ALTER TABLE `cart_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_orders`
--
ALTER TABLE `cart_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
