-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 04:01 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angvel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Fruits'),
(2, 'Dairy\r\n'),
(3, 'Vegetables'),
(4, 'Bread');

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
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('04475d35e5debe4bc5f98ad2a3c166d837d7a41ff8095441b270f2dffedf88b8f963bf9e01b1b466', 9, 1, 'api-application', '[]', 0, '2021-05-15 09:41:13', '2021-05-15 09:41:13', '2022-05-15 15:11:13'),
('04a2cf4e553b5820cc7e17d693a1fa3823854c7ff4caec8115b05d8c1ce10e44880a69eb6baffb47', 1, 1, 'api-application', '[]', 0, '2021-05-18 11:54:50', '2021-05-18 11:54:50', '2022-05-18 17:24:50'),
('13b9922556ef46f65cc754b15d979e3b4b3aa7f017e4534176f3216b192aa35bcdeb29d415f9136f', 1, 1, 'api-application', '[]', 0, '2021-05-18 00:02:46', '2021-05-18 00:02:46', '2022-05-18 05:32:46'),
('15cc6980e5ea14e9f67ed07769cf442d3a212f9afcbdc667a1b7a402e3ad22f03d4b7ce09840afc1', 4, 1, 'api-application', '[]', 0, '2021-05-15 08:41:36', '2021-05-15 08:41:36', '2022-05-15 14:11:36'),
('19eea65687cf685e2f9f2d0bb60533ef3a0642cd119a0322ae8a174e20411d4d1e14167927d3e4b7', 1, 1, 'api-application', '[]', 0, '2021-05-18 13:34:28', '2021-05-18 13:34:28', '2022-05-18 19:04:28'),
('2fb6a591ae35b2f79e789ce5aeec59323f957a947b716449b794eb69738f1cad99ea3dd2ab18b875', 1, 1, 'api-application', '[]', 0, '2021-05-18 00:44:04', '2021-05-18 00:44:04', '2022-05-18 06:14:04'),
('30899ec954447d0801395764940b1b327311e909ecdb77f7c1bb258996d7fefc8f07b3bd9a1a6689', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:09:34', '2021-05-18 12:09:34', '2022-05-18 17:39:34'),
('399265e7c5b525c425c13931472324d1d1e81188b4756557db91f666e063d6c930a2fa71465f1e38', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:56:55', '2021-05-18 12:56:55', '2022-05-18 18:26:55'),
('3dba5e837e1e4674241a390d2ce87596ac1a295eebf5f1c5d4c6a571e064112ea7fab6b544b298e0', 5, 1, 'api-application', '[]', 0, '2021-05-15 09:34:05', '2021-05-15 09:34:05', '2022-05-15 15:04:05'),
('3e83a69d0929c61af5de7063c38ea45ae40ebb3a37a679bbc123e9bbbd9b5b302c3f080f2ff2e180', 4, 1, 'api-application', '[]', 0, '2021-05-15 09:31:55', '2021-05-15 09:31:55', '2022-05-15 15:01:55'),
('43be2f1601352951e50d0ba613a7ade20a3ce3e38efd3c461c5e1dc574b4d79ddc95f6baf8399460', 6, 1, 'api-application', '[]', 0, '2021-05-15 09:34:44', '2021-05-15 09:34:44', '2022-05-15 15:04:44'),
('4583ab284594858b1fe9e31a55d234cfa2e7929272683cfe45cc799c1d2339f8980f6f9167829bee', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:45:33', '2021-05-14 11:45:33', '2022-05-14 17:15:33'),
('46ca3795a85700211517c9fc8168f897a8ebcc43ae80c454cccec482f2f0a2b4300713d56ba1cc31', 8, 1, 'api-application', '[]', 0, '2021-05-15 09:38:18', '2021-05-15 09:38:18', '2022-05-15 15:08:18'),
('4b9f228282529b9d3cac82787f72ab5393a17f4ab3350ee786c7ece3e1354b03beb35c6e940c6309', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:51:43', '2021-05-14 11:51:43', '2022-05-14 17:21:43'),
('52817af1ca368950ff22576a38b101675d261e575cf1dbe3cf3a2d952816b8639cdd1137f18c7e49', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:44:08', '2021-05-14 11:44:08', '2022-05-14 17:14:08'),
('576b8477609d55071e9b8538096b237fc9f1cbd1b44a05e828986c5f0caf888f5550aa6d91deb309', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:08:25', '2021-05-18 12:08:25', '2022-05-18 17:38:25'),
('58c898b07908aef7e6942b736318aab7e17206110541d771c64a828d8e77b47d2e47592a16cb6f6e', 1, 1, 'api-application', '[]', 0, '2021-05-18 00:02:56', '2021-05-18 00:02:56', '2022-05-18 05:32:56'),
('58db61a38e44b8f3f950bc325c1b49f36dc85fc19977bb1933d4184f21b173c752155f9c30d7a1bb', 19, 1, 'api-application', '[]', 0, '2021-05-18 00:44:39', '2021-05-18 00:44:39', '2022-05-18 06:14:39'),
('5bb73b51e8551a91f3af4fb632f7eb7a7e408c829ffe72f6ad36ad2bfa3ef70c9d1798e5c53463ab', 4, 1, 'api-application', '[]', 0, '2021-05-15 08:47:31', '2021-05-15 08:47:31', '2022-05-15 14:17:31'),
('5c10011c09637aa81c5169472b80021663cfd1d1f922ec71ae62604f6f1e947fd763eaecf9ac84ac', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:36:19', '2021-05-18 12:36:19', '2022-05-18 18:06:19'),
('5ee9ec5f0ee213df0add797203ee6be8b4f41b9fa3e5c9e2a8bb336d778b47f6a57478f0587e5da5', 4, 1, 'api-application', '[]', 0, '2021-05-14 12:11:54', '2021-05-14 12:11:54', '2022-05-14 17:41:54'),
('61ce6b4cdde29245d8ec0f482430c582650cab155b883f4c6608fbf35284519e87001b3d314d3603', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:43:20', '2021-05-14 11:43:20', '2022-05-14 17:13:20'),
('652330b3d4f8b9f7649bf54e92a22b1feda5ec831ab0d34447ea6d460f60df2fcf30a0f781796267', 4, 1, 'api-application', '[]', 0, '2021-05-15 08:37:27', '2021-05-15 08:37:27', '2022-05-15 14:07:27'),
('6bb504bb0427897e9116bc23857fbb8de00a6cd91d1662579864bd8a53552c3abe9e4fa1d501737f', 1, 1, 'api-application', '[]', 0, '2021-05-18 13:00:18', '2021-05-18 13:00:18', '2022-05-18 18:30:18'),
('6f23f3562d09d77903f8db528835f9dc4fe0b28c2517c057df68238723236b859d62de27666b9e21', 1, 1, 'api-application', '[]', 0, '2021-05-18 13:19:43', '2021-05-18 13:19:43', '2022-05-18 18:49:43'),
('6f81d291eae390968a028ac6185cdef2ac1634b5d567162c301a2c8d8d8e5362f9a4ef621bf7c21e', 1, 1, 'api-application', '[]', 0, '2021-05-17 23:59:16', '2021-05-17 23:59:16', '2022-05-18 05:29:16'),
('7303e41317e9f50b8f6d718a5ea6564fb556a10662f2d3cf2e5f4da5540db6a8240bfcc27e8e87f3', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:27:06', '2021-05-18 12:27:06', '2022-05-18 17:57:06'),
('75801a62cc19e5d38b485ba9e9169516892b99346580f97dc218a8b8578f6a3e60469666fa8d120e', 4, 1, 'api-application', '[]', 0, '2021-05-15 08:40:29', '2021-05-15 08:40:29', '2022-05-15 14:10:29'),
('7675f368e60412d29834820acb3871868973fb2ab3c0a1f0d203634ba6012441243b32d3d914d991', 1, 1, 'api-application', '[]', 0, '2021-05-18 11:54:13', '2021-05-18 11:54:13', '2022-05-18 17:24:13'),
('7cd1c68f9ab4aae65e194f82171f3b848e52c7d8ffa624eab423265d119d7da01990b147310bfd41', 1, 1, 'api-application', '[]', 0, '2021-05-18 00:26:15', '2021-05-18 00:26:15', '2022-05-18 05:56:15'),
('7d13623793f8eb6f9de6c0f3de6d77abc2b0e9ec47fb5b70a5d1224f562751d6eb3c60dde3deab2b', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:43:17', '2021-05-14 11:43:17', '2022-05-14 17:13:17'),
('824a81a19546b06e8e3459abdcb7ffcbb4f121d9995a8c5dcf454b589a7ca8f5df423c6fc5ba054d', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:54:22', '2021-05-18 12:54:22', '2022-05-18 18:24:22'),
('84e2ae3d83910c4052b416f0a94aeacafbd57ad54c127df4795e8d44a1a5bbcd7ad82ac05c1c8d1f', 10, 1, 'api-application', '[]', 0, '2021-05-15 09:54:03', '2021-05-15 09:54:03', '2022-05-15 15:24:03'),
('8bd9a38a254d7ac857a587022972ae7910e191db3b5647fa21dcd175cd343f0b07b1285682bc354e', 1, 1, 'api-application', '[]', 0, '2021-05-18 13:26:15', '2021-05-18 13:26:15', '2022-05-18 18:56:15'),
('8cf891b7b0a61d0662d78859dfd997064ba69871c523a22b8bf427b86cbb54105928d8d65f172215', 14, 1, 'api-application', '[]', 0, '2021-05-15 10:18:22', '2021-05-15 10:18:22', '2022-05-15 15:48:22'),
('92aa97dc0a1b8d3f8a67e5830ae8a3a8ffdf714395f97341900bf8607be2219b3db5203d4f3cb391', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:03:05', '2021-05-18 12:03:05', '2022-05-18 17:33:05'),
('9bc17f7d81959d8705dfdc7caca5e2e8af60f667bb8a08d38e4bf403f276887882276999f9c0489a', 1, 1, 'api-application', '[]', 0, '2021-05-18 11:55:29', '2021-05-18 11:55:29', '2022-05-18 17:25:29'),
('a39b640b948c06e2cc83924be8c7854a2a0c2755e379c00b771c8a8dd14b18754a0a042fe9c312c3', 1, 1, 'api-application', '[]', 0, '2021-05-14 11:31:57', '2021-05-14 11:31:57', '2022-05-14 17:01:57'),
('a4e4ff0fb4909294e0d3b1f4478d5282b96fc225dcffc0aec1522faeec9aef21dfdfac8802713065', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:36:17', '2021-05-18 12:36:17', '2022-05-18 18:06:17'),
('a6a6bc1cd3b1eb71fe4d33575eaf63f58b5a0428bb1c7ca7bc6becd6200ba22a6a6c9d68a1bb6af8', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:14:48', '2021-05-18 12:14:48', '2022-05-18 17:44:48'),
('a77fbf3be75b8fd8db685a4ce464a38061349a4437d5e92b5a52e4f600572f56b2729e482032c380', 1, 1, 'api-application', '[]', 0, '2021-05-15 10:19:23', '2021-05-15 10:19:23', '2022-05-15 15:49:23'),
('a9858db05c372a8308a24850621667080c186535083138419a217a43ca58d50fe5fe51ad15440a6b', 3, 1, 'api-application', '[]', 0, '2021-05-14 11:33:41', '2021-05-14 11:33:41', '2022-05-14 17:03:41'),
('b606c28b2044a05e261153f42858d520b80381a9021c74bd57fc38c0d98aa87e74bcb19a2e117491', 13, 1, 'api-application', '[]', 0, '2021-05-15 10:04:20', '2021-05-15 10:04:20', '2022-05-15 15:34:20'),
('b683427cbd8e68f5a43c6a3e58fb413c89fb9a38caa5a7f4484e698579893967130155a193df2bb9', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:42:57', '2021-05-14 11:42:57', '2022-05-14 17:12:57'),
('b9a66964d7e757da596561ff867efa7cbd347d4046e9678cf1e9d2a122a2f9cfd822baa3a562d202', 10, 1, 'api-application', '[]', 0, '2021-05-15 09:55:23', '2021-05-15 09:55:23', '2022-05-15 15:25:23'),
('c0a078ebb888af5ae5a205f93711ca4511fd3d0e7df7c28d94fbaa98b329506a56babd0b72aae3f0', 4, 1, 'api-application', '[]', 0, '2021-05-15 08:41:51', '2021-05-15 08:41:51', '2022-05-15 14:11:51'),
('c306cd934f01613a31640d6b32fc3c6d36a5851b5913ae67eda35604cc501a6e6d5051b8984de9c1', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:11:13', '2021-05-18 12:11:13', '2022-05-18 17:41:13'),
('c5abbb2c23e031787832e8fc4b5748a7de065ab0d343a8c537570fbd2665469b4fbcef05ec43701e', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:06:32', '2021-05-18 12:06:32', '2022-05-18 17:36:32'),
('cb07a9c110d0b633fe3dbafe4c6806ba8c1b04092d9c711f1b5d2fec00b7a8703a2c8a38a0cbf8d4', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:43:50', '2021-05-14 11:43:50', '2022-05-14 17:13:50'),
('d46b486127e277cbe4019ccc4605581ca1c8cd3534dc5535e4cc6a5122ce487bf4a58a56ca9314e8', 4, 1, 'api-application', '[]', 0, '2021-05-15 08:39:19', '2021-05-15 08:39:19', '2022-05-15 14:09:19'),
('d512ad9e642472ffb8c8629491eeea173152b73d04d34eaa84f2aae05b0cb0d776ba798986396046', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:46:50', '2021-05-14 11:46:50', '2022-05-14 17:16:50'),
('d6459b0bf765a73108cbb364043f941b7d4ae42108f8262e94ab95779336c5d1213409a1c5ba5931', 4, 1, 'api-application', '[]', 0, '2021-05-14 11:34:03', '2021-05-14 11:34:03', '2022-05-14 17:04:03'),
('dfe75f532ebf450704483509feddaf315168052fb9b2fae38b0e4a61be4c9d978e6b1bb4faf49473', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:52:41', '2021-05-18 12:52:41', '2022-05-18 18:22:41'),
('e688a2d8631ecaec4607c5d9b0e955c9416edeb88ad59ca81f1d2c64e2398e8134ab98c5ae8691a0', 1, 1, 'api-application', '[]', 0, '2021-05-18 00:35:57', '2021-05-18 00:35:57', '2022-05-18 06:05:57'),
('ea1c43636a9716d50285b9a77fc37935ee1f3ff1809d4f0e803f4e80d7a5ac74cf29b2599204085c', 1, 1, 'api-application', '[]', 0, '2021-05-18 12:27:14', '2021-05-18 12:27:14', '2022-05-18 17:57:14'),
('ee1f123d0f76ba0a1a8997fe80c9ecc8fcd69f3485ecde1d00515bc7dae092a6d7a4226ac33d211c', 5, 1, 'api-application', '[]', 0, '2021-05-15 09:37:46', '2021-05-15 09:37:46', '2022-05-15 15:07:46'),
('eef88c8d4185b2304fbd1324b76bd2528883470160474e7240eb9a80d2caa76dc57239066b3f3529', 12, 1, 'api-application', '[]', 0, '2021-05-15 10:02:48', '2021-05-15 10:02:48', '2022-05-15 15:32:48'),
('f02c3a35a7f8cd91028bef72779502c0ae350a0830662d795efc9d7dccb4338aef4686c0b5acdd31', 18, 1, 'api-application', '[]', 0, '2021-05-18 00:41:26', '2021-05-18 00:41:26', '2022-05-18 06:11:26'),
('fb13d24e35ec3ae471dd67d673e6d75b4d92f71360c28df392acc2898ee6b95912578a3338a6c136', 1, 1, 'api-application', '[]', 0, '2021-05-18 11:59:28', '2021-05-18 11:59:28', '2022-05-18 17:29:28'),
('fc371b9b2d5ef4bea4375cdc64d0d49efe902371e9c352e5df4495e6987cd01185d224b700c4a200', 11, 1, 'api-application', '[]', 0, '2021-05-15 10:01:17', '2021-05-15 10:01:17', '2022-05-15 15:31:17');

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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'cwhZn44ZUvvZIZnOWQiPZIhuIUWA89N25DaHEW3H', NULL, 'http://localhost', 1, 0, 0, '2021-05-14 00:21:52', '2021-05-14 00:21:52'),
(2, NULL, 'Laravel Password Grant Client', 'f2qXUjPyLv6TP57aS0wltGSfkYOYAh23F7N5v0AN', 'users', 'http://localhost', 0, 1, 0, '2021-05-14 00:21:53', '2021-05-14 00:21:53');

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
(1, 1, '2021-05-14 00:21:53', '2021-05-14 00:21:53');

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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'test', 'test@gmail.com', NULL, '$2y$10$k13S/1jScuNk9np4wA3hXeD0NlFncz0J1trnXkDANhCqJwXEQTMDm', NULL, '2021-05-14 11:31:56', '2021-05-14 11:31:56'),
(14, 'test1@gmail.com', 'test2@gmail.com', NULL, '$2y$10$4f/JzQoCg35V52ls7KSZjuHiYY6khNiw7I8x2rIwKWmb9C4iAYEMy', NULL, '2021-05-15 10:18:22', '2021-05-15 10:18:22'),
(18, 'test', 'testj@gmail.com', NULL, '$2y$10$nSQCMUZNE3aZrpT0WlRsi.nHrkQdebQmgX5fBbFhfYRwQ5Va9zw9.', NULL, '2021-05-18 00:41:25', '2021-05-18 00:41:25'),
(19, 'test', 'test4@g.om', NULL, '$2y$10$iPCraalHwt8OYMzKUNLqFOdXcixrLAcjjWr53xql7kQVt2/Y0Q7le', NULL, '2021-05-18 00:44:39', '2021-05-18 00:44:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
