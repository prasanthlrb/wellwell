-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2021 at 11:46 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `mecourier`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Spotlayer', 'Team', 'spotlayer', 'support@spotlayer.com', '$2y$10$NNuJRvqFga7oSURZHcRC4e.ZiEoWpp62DeQMGcneEW4aiMU8FJwYK', NULL, '$2y$10$le4amZ9CGODdXuLrXZAgKe/WqtRGO5G4U/uZNxCTzNTIWoN93gV9C', NULL, '', 1, 2, NULL, '2020-01-13 00:40:03', '2019-11-24 19:18:28', '2020-01-13 00:40:03', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-11-24 19:18:27', '2019-11-24 19:18:27', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-11-24 19:18:27', '2019-11-24 19:18:27'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-11-24 19:18:27', '2019-11-24 19:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '41.34.48.131', 0, NULL, 0, NULL, 0, NULL),
(3, 1, '197.62.115.70', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jacob_logbook_logs`
--

CREATE TABLE `jacob_logbook_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `backend_user_id` int(10) UNSIGNED DEFAULT NULL,
  `changes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jacob_logbook_logs`
--

INSERT INTO `jacob_logbook_logs` (`id`, `model`, `model_key`, `backend_user_id`, `changes`, `created_at`, `updated_at`) VALUES
(1, 'Spot\\Shipment\\Models\\Address', '1', NULL, '{\"type\":\"created\",\"changedAttributes\":null}', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 'Spot\\Shipment\\Models\\Address', '2', NULL, '{\"type\":\"created\",\"changedAttributes\":null}', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 'Spot\\Shipment\\Models\\Address', '3', NULL, '{\"type\":\"created\",\"changedAttributes\":null}', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 'Spot\\Shipment\\Models\\Address', '4', NULL, '{\"type\":\"created\",\"changedAttributes\":null}', '2021-01-06 19:36:10', '2021-01-06 19:36:10'),
(5, 'Spot\\Shipment\\Models\\Order', '1', NULL, '{\"type\":\"created\",\"changedAttributes\":null}', '2021-01-06 19:36:22', '2021-01-06 19:36:22'),
(6, 'Spot\\Shipment\\Models\\Order', '1', NULL, '{\"type\":\"updated\",\"changedAttributes\":[{\"column\":\"delivery_date\",\"old\":null,\"new\":{\"date\":\"2021-01-08 23:36:22.000000\",\"timezone_type\":3,\"timezone\":\"UTC\"}}]}', '2021-01-06 19:36:22', '2021-01-06 19:36:22'),
(7, 'Spot\\Shipment\\Models\\Order', '1', NULL, '{\"type\":\"updated\",\"changedAttributes\":[{\"column\":\"status_id\",\"old\":1,\"new\":\"3\"},{\"column\":\"requested\",\"old\":0,\"new\":\"1\"}]}', '2021-01-06 19:39:37', '2021-01-06 19:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_location_countries`
--

CREATE TABLE `rainlab_location_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_pinned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_location_countries`
--

INSERT INTO `rainlab_location_countries` (`id`, `is_enabled`, `name`, `code`, `is_pinned`) VALUES
(68, 1, 'Egypt', 'EG', 1),
(249, 1, 'United States', 'united-states', 0),
(250, 1, 'Kenya', 'kenya', 0),
(251, 1, 'Uganda', 'uganda', 0),
(252, 1, 'Tanzania', 'tanzania', 0),
(253, 1, 'UAE', 'uae', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_location_states`
--

CREATE TABLE `rainlab_location_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_location_states`
--

INSERT INTO `rainlab_location_states` (`id`, `country_id`, `name`, `code`) VALUES
(1, 4, 'Alabama', 'AL'),
(2, 4, 'Alaska', 'AK'),
(3, 4, 'American Samoa', 'AS'),
(4, 4, 'Arizona', 'AZ'),
(5, 4, 'Arkansas', 'AR'),
(6, 4, 'California', 'CA'),
(7, 4, 'Colorado', 'CO'),
(8, 4, 'Connecticut', 'CT'),
(9, 4, 'Delaware', 'DE'),
(10, 4, 'Dist. of Columbia', 'DC'),
(11, 4, 'Florida', 'FL'),
(12, 4, 'Georgia', 'GA'),
(13, 4, 'Guam', 'GU'),
(14, 4, 'Hawaii', 'HI'),
(15, 4, 'Idaho', 'ID'),
(16, 4, 'Illinois', 'IL'),
(17, 4, 'Indiana', 'IN'),
(18, 4, 'Iowa', 'IA'),
(19, 4, 'Kansas', 'KS'),
(20, 4, 'Kentucky', 'KY'),
(21, 4, 'Louisiana', 'LA'),
(22, 4, 'Maine', 'ME'),
(23, 4, 'Maryland', 'MD'),
(24, 4, 'Marshall Islands', 'MH'),
(25, 4, 'Massachusetts', 'MA'),
(26, 4, 'Michigan', 'MI'),
(27, 4, 'Micronesia', 'FM'),
(28, 4, 'Minnesota', 'MN'),
(29, 4, 'Mississippi', 'MS'),
(30, 4, 'Missouri', 'MO'),
(31, 4, 'Montana', 'MT'),
(32, 4, 'Nebraska', 'NE'),
(33, 4, 'Nevada', 'NV'),
(34, 4, 'New Hampshire', 'NH'),
(35, 4, 'New Jersey', 'NJ'),
(36, 4, 'New Mexico', 'NM'),
(37, 4, 'New York', 'NY'),
(38, 4, 'North Carolina', 'NC'),
(39, 4, 'North Dakota', 'ND'),
(40, 4, 'Northern Marianas', 'MP'),
(41, 4, 'Ohio', 'OH'),
(42, 4, 'Oklahoma', 'OK'),
(43, 4, 'Oregon', 'OR'),
(44, 4, 'Palau', 'PW'),
(45, 4, 'Pennsylvania', 'PA'),
(46, 4, 'Puerto Rico', 'PR'),
(47, 4, 'Rhode Island', 'RI'),
(48, 4, 'South Carolina', 'SC'),
(49, 4, 'South Dakota', 'SD'),
(50, 4, 'Tennessee', 'TN'),
(51, 4, 'Texas', 'TX'),
(52, 4, 'Utah', 'UT'),
(53, 4, 'Vermont', 'VT'),
(54, 4, 'Virginia', 'VA'),
(55, 4, 'Virgin Islands', 'VI'),
(56, 4, 'Washington', 'WA'),
(57, 4, 'West Virginia', 'WV'),
(58, 4, 'Wisconsin', 'WI'),
(59, 4, 'Wyoming', 'WY'),
(60, 35, 'Acre', 'AC'),
(61, 35, 'Alagoas', 'AL'),
(62, 35, 'Amapá', 'AP'),
(63, 35, 'Amazonas', 'AM'),
(64, 35, 'Bahia', 'BA'),
(65, 35, 'Ceará', 'CE'),
(66, 35, 'Distrito Federal', 'DF'),
(67, 35, 'Espírito Santo', 'ES'),
(68, 35, 'Goiás', 'GO'),
(69, 35, 'Maranhão', 'MA'),
(70, 35, 'Mato Grosso', 'MT'),
(71, 35, 'Mato Grosso do Sul', 'MS'),
(72, 35, 'Minas Gerais', 'MG'),
(73, 35, 'Pará', 'PA'),
(74, 35, 'Paraíba', 'PB'),
(75, 35, 'Paraná', 'PR'),
(76, 35, 'Pernambuco', 'PE'),
(77, 35, 'Piauí', 'PI'),
(78, 35, 'Rio de Janeiro', 'RJ'),
(79, 35, 'Rio Grande do Norte', 'RN'),
(80, 35, 'Rio Grande do Sul', 'RS'),
(81, 35, 'Rondônia', 'RO'),
(82, 35, 'Roraima', 'RR'),
(83, 35, 'Santa Catarina', 'SC'),
(84, 35, 'São Paulo', 'SP'),
(85, 35, 'Sergipe', 'SE'),
(86, 35, 'Tocantins', 'TO'),
(87, 2, 'Alberta', 'AB'),
(88, 2, 'British Columbia', 'BC'),
(89, 2, 'Manitoba', 'MB'),
(90, 2, 'New Brunswick', 'NB'),
(91, 2, 'Newfoundland and Labrador', 'NL'),
(92, 2, 'Northwest Territories', 'NT'),
(93, 2, 'Nova Scotia', 'NS'),
(94, 2, 'Nunavut', 'NU'),
(95, 2, 'Ontario', 'ON'),
(96, 2, 'Prince Edward Island', 'PE'),
(97, 2, 'Quebec', 'QC'),
(98, 2, 'Saskatchewan', 'SK'),
(99, 2, 'Yukon', 'YT'),
(100, 217, 'Aargau', 'AG'),
(101, 217, 'Appenzell Innerrhoden', 'AI'),
(102, 217, 'Appenzell Ausserrhoden', 'AR'),
(103, 217, 'Bern', 'BE'),
(104, 217, 'Basel-Landschaft', 'BL'),
(105, 217, 'Basel-Stadt', 'BS'),
(106, 217, 'Fribourg', 'FR'),
(107, 217, 'Genève', 'GE'),
(108, 217, 'Glarus', 'GL'),
(109, 217, 'Graubünden', 'GR'),
(110, 217, 'Jura', 'JU'),
(111, 217, 'Luzern', 'LU'),
(112, 217, 'Neuchâtel', 'NE'),
(113, 217, 'Nidwalden', 'NW'),
(114, 217, 'Obwalden', 'OW'),
(115, 217, 'St. Gallen', 'SG'),
(116, 217, 'Solothurn', 'SO'),
(117, 217, 'Schwyz', 'SZ'),
(118, 217, 'Thurgau', 'TG'),
(119, 217, 'Ticino', 'TI'),
(120, 217, 'Uri', 'UR'),
(121, 217, 'Vaud', 'VD'),
(122, 217, 'Valais', 'VS'),
(123, 217, 'Zug', 'ZG'),
(124, 217, 'Zürich', 'ZH'),
(125, 1, 'New South Wales', 'NSW'),
(126, 1, 'Queensland', 'QLD'),
(127, 1, 'South Australia', 'SA'),
(128, 1, 'Tasmania', 'TAS'),
(129, 1, 'Victoria', 'VIC'),
(130, 1, 'Western Australia', 'WA'),
(131, 1, 'Northern Territory', 'NT'),
(132, 1, 'Australian Capital Territory', 'ACT'),
(133, 85, 'Baden-Württemberg', 'BW'),
(134, 85, 'Bayern', 'BY'),
(135, 85, 'Berlin', 'BE'),
(136, 85, 'Brandenburg', 'BB'),
(137, 85, 'Bremen', 'HB'),
(138, 85, 'Hamburg', 'HH'),
(139, 85, 'Hessen', 'HE'),
(140, 85, 'Mecklenburg-Vorpommern', 'MV'),
(141, 85, 'Niedersachsen', 'NI'),
(142, 85, 'Nordrhein-Westfalen', 'NW'),
(143, 85, 'Rheinland-Pfalz', 'RP'),
(144, 85, 'Saarland', 'SL'),
(145, 85, 'Sachsen', 'SN'),
(146, 85, 'Sachsen-Anhalt', 'ST'),
(147, 85, 'Schleswig-Holstein', 'SH'),
(148, 85, 'Thüringen', 'TH'),
(149, 72, 'Harju', 'HA'),
(150, 72, 'Hiiu', 'HI'),
(151, 72, 'Ida-Viru', 'IV'),
(152, 72, 'Jõgeva', 'JR'),
(153, 72, 'Järva', 'JN'),
(154, 72, 'Lääne', 'LN'),
(155, 72, 'Lääne-Viru', 'LV'),
(156, 72, 'Põlva', 'PL'),
(157, 72, 'Pärnu', 'PR'),
(158, 72, 'Rapla', 'RA'),
(159, 72, 'Saare', 'SA'),
(160, 72, 'Tartu', 'TA'),
(161, 72, 'Valga', 'VG'),
(162, 72, 'Viljandi', 'VD'),
(163, 72, 'Võru', 'VR'),
(164, 109, 'Dublin', 'D'),
(165, 109, 'Wicklow', 'WW'),
(166, 109, 'Wexford', 'WX'),
(167, 109, 'Carlow', 'CW'),
(168, 109, 'Kildare', 'KE'),
(169, 109, 'Meath', 'MH'),
(170, 109, 'Louth', 'LH'),
(171, 109, 'Monaghan', 'MN'),
(172, 109, 'Cavan', 'CN'),
(173, 109, 'Longford', 'LD'),
(174, 109, 'Westmeath', 'WH'),
(175, 109, 'Offaly', 'OY'),
(176, 109, 'Laois', 'LS'),
(177, 109, 'Kilkenny', 'KK'),
(178, 109, 'Waterford', 'WD'),
(179, 109, 'Cork', 'C'),
(180, 109, 'Kerry', 'KY'),
(181, 109, 'Limerick', 'LK'),
(182, 109, 'North Tipperary', 'TN'),
(183, 109, 'South Tipperary', 'TS'),
(184, 109, 'Clare', 'CE'),
(185, 109, 'Galway', 'G'),
(186, 109, 'Mayo', 'MO'),
(187, 109, 'Roscommon', 'RN'),
(188, 109, 'Sligo', 'SO'),
(189, 109, 'Leitrim', 'LM'),
(190, 109, 'Donegal', 'DL'),
(191, 159, 'Drenthe', 'DR'),
(192, 159, 'Flevoland', 'FL'),
(193, 159, 'Friesland', 'FR'),
(194, 159, 'Gelderland', 'GE'),
(195, 159, 'Groningen', 'GR'),
(196, 159, 'Limburg', 'LI'),
(197, 159, 'Noord-Brabant', 'NB'),
(198, 159, 'Noord-Holland', 'NH'),
(199, 159, 'Overijssel', 'OV'),
(200, 159, 'Utrecht', 'UT'),
(201, 159, 'Zeeland', 'ZE'),
(202, 159, 'Zuid-Holland', 'ZH'),
(203, 3, 'Aberdeenshire', 'ABE'),
(204, 3, 'Anglesey', 'ALY'),
(205, 3, 'Angus', 'ANG'),
(206, 3, 'Argyll', 'ARG'),
(207, 3, 'Ayrshire', 'AYR'),
(208, 3, 'Banffshire', 'BAN'),
(209, 3, 'Bedfordshire', 'BED'),
(210, 3, 'Berkshire', 'BER'),
(211, 3, 'Berwickshire', 'BWS'),
(212, 3, 'Brecknockshire', 'BRE'),
(213, 3, 'Buckinghamshire', 'BUC'),
(214, 3, 'Bute', 'BUT'),
(215, 3, 'Caernarfonshire', 'CAE'),
(216, 3, 'Caithness', 'CAI'),
(217, 3, 'Cambridgeshire', 'CAM'),
(218, 3, 'Cardiganshire', 'CAR'),
(219, 3, 'Carmarthenshire', 'CMS'),
(220, 3, 'Cheshire', 'CHE'),
(221, 3, 'Clackmannanshire', 'CLA'),
(222, 3, 'Cleveland', 'CLE'),
(223, 3, 'Cornwall', 'COR'),
(224, 3, 'Cromartyshire', 'CRO'),
(225, 3, 'Cumberland', 'CBR'),
(226, 3, 'Cumbria', 'CUM'),
(227, 3, 'Denbighshire', 'DEN'),
(228, 3, 'Derbyshire', 'DER'),
(229, 3, 'Devon', 'DEV'),
(230, 3, 'Dorset', 'DOR'),
(231, 3, 'Dumbartonshire', 'DBS'),
(232, 3, 'Dumfriesshire', 'DUM'),
(233, 3, 'Durham', 'DUR'),
(234, 3, 'East Lothian', 'ELO'),
(235, 3, 'Essex', 'ESS'),
(236, 3, 'Flintshire', 'FLI'),
(237, 3, 'Fife', 'FIF'),
(238, 3, 'Glamorgan', 'GLA'),
(239, 3, 'Gloucestershire', 'GLO'),
(240, 3, 'Hampshire', 'HAM'),
(241, 3, 'Herefordshire', 'HER'),
(242, 3, 'Hertfordshire', 'HTF'),
(243, 3, 'Huntingdonshire', 'HUN'),
(244, 3, 'Inverness', 'INV'),
(245, 3, 'Kent', 'KEN'),
(246, 3, 'Kincardineshire', 'KCD'),
(247, 3, 'Kinross-shire', 'KIN'),
(248, 3, 'Kirkcudbrightshire', 'KIR'),
(249, 3, 'Lanarkshire', 'LKS'),
(250, 3, 'Lancashire', 'LAN'),
(251, 3, 'Leicestershire', 'LEI'),
(252, 3, 'Lincolnshire', 'LIN'),
(253, 3, 'London', 'LON'),
(254, 3, 'Manchester', 'MAN'),
(255, 3, 'Merionethshire', 'MER'),
(256, 3, 'Merseyside', 'MSY'),
(257, 3, 'Middlesex', 'MDX'),
(258, 3, 'Midlands', 'MID'),
(259, 3, 'Midlothian', 'MLT'),
(260, 3, 'Monmouthshire', 'MON'),
(261, 3, 'Montgomeryshire', 'MGY'),
(262, 3, 'Moray', 'MOR'),
(263, 3, 'Nairnshire', 'NAI'),
(264, 3, 'Norfolk', 'NOR'),
(265, 3, 'Northamptonshire', 'NMP'),
(266, 3, 'Northumberland', 'NUM'),
(267, 3, 'Nottinghamshire', 'NOT'),
(268, 3, 'Orkney', 'ORK'),
(269, 3, 'Oxfordshire', 'OXF'),
(270, 3, 'Peebleshire', 'PEE'),
(271, 3, 'Pembrokeshire', 'PEM'),
(272, 3, 'Perthshire', 'PER'),
(273, 3, 'Radnorshire', 'RAD'),
(274, 3, 'Renfrewshire', 'REN'),
(275, 3, 'Ross & Cromarty', 'ROS'),
(276, 3, 'Roxburghshire', 'ROX'),
(277, 3, 'Rutland', 'RUT'),
(278, 3, 'Selkirkshire', 'SEL'),
(279, 3, 'Shetland', 'SHE'),
(280, 3, 'Shropshire', 'SHR'),
(281, 3, 'Somerset', 'SOM'),
(282, 3, 'Staffordshire', 'STA'),
(283, 3, 'Stirlingshire', 'STI'),
(284, 3, 'Suffolk', 'SUF'),
(285, 3, 'Surrey', 'SUR'),
(286, 3, 'Sussex', 'SUS'),
(287, 3, 'Sutherland', 'SUT'),
(288, 3, 'Tyne & Wear', 'TYN'),
(289, 3, 'Warwickshire', 'WAR'),
(290, 3, 'West Lothian', 'WLO'),
(291, 3, 'Westmorland', 'WES'),
(292, 3, 'Wigtownshire', 'WIG'),
(293, 3, 'Wiltshire', 'WIL'),
(294, 3, 'Worcestershire', 'WOR'),
(295, 3, 'Yorkshire', 'YOR'),
(296, 184, 'Alba', 'AB'),
(297, 184, 'Arad', 'AR'),
(298, 184, 'Arges', 'AG'),
(299, 184, 'Bacău', 'BC'),
(300, 184, 'Bihor', 'BH'),
(301, 184, 'Bistrita - Nasaud Bistrita', 'BN'),
(302, 184, 'Botosani', 'BT'),
(303, 184, 'Brasov', 'BV'),
(304, 184, 'Braila', 'BR'),
(305, 184, 'Bucuresti', 'B'),
(306, 184, 'Buzau', 'BZ'),
(307, 184, 'Caras - Severin', 'CS'),
(308, 184, 'Calarasi', 'CL'),
(309, 184, 'Cluj', 'CJ'),
(310, 184, 'Constanta', 'CT'),
(311, 184, 'Covasna Sfantu Gheorghe', 'CV'),
(312, 184, 'Dambovita', 'DB'),
(313, 184, 'Dolj', 'DJ'),
(314, 184, 'Galati', 'GL'),
(315, 184, 'Giurgiu', 'GR'),
(316, 184, 'Gorj', 'GJ'),
(317, 184, 'Harghita', 'HR'),
(318, 184, 'Hunedoara', 'HD'),
(319, 184, 'Ialomita', 'IL'),
(320, 184, 'Iasi', 'IS'),
(321, 184, 'Ilfov', 'IF'),
(322, 184, 'Maramures', 'MM'),
(323, 184, 'Mehedinti', 'MH'),
(324, 184, 'Mures', 'MS'),
(325, 184, 'Neamt', 'NT'),
(326, 184, 'Olt', 'OT'),
(327, 184, 'Prahova Ploiesti', 'PH'),
(328, 184, 'Satu Mare', 'SM'),
(329, 184, 'Salaj', 'SJ'),
(330, 184, 'Sibiu', 'SB'),
(331, 184, 'Suceava', 'SV'),
(332, 184, 'Teleorman', 'TR'),
(333, 184, 'Timis', 'TM'),
(334, 184, 'Tulcea', 'TL'),
(335, 184, 'Vaslui', 'VS'),
(336, 184, 'Valcea', 'VL'),
(337, 184, 'Vrancea', 'VN'),
(338, 103, 'Budapest', 'BUD'),
(339, 103, 'Baranya', 'BAR'),
(340, 103, 'Bács-Kiskun', 'BKM'),
(341, 103, 'Békés', 'BEK'),
(342, 103, 'Borsod-Abaúj-Zemplén', 'BAZ'),
(343, 103, 'Csongrád', 'CSO'),
(344, 103, 'Fejér', 'FEJ'),
(345, 103, 'Győr-Moson-Sopron', 'GMS'),
(346, 103, 'Hajdú-Bihar', 'HBM'),
(347, 103, 'Heves', 'HEV'),
(348, 103, 'Jász-Nagykun-Szolnok', 'JNS'),
(349, 103, 'Komárom-Esztergom', 'KEM'),
(350, 103, 'Nógrád', 'NOG'),
(351, 103, 'Pest', 'PES'),
(352, 103, 'Somogy', 'SOM'),
(353, 103, 'Szabolcs-Szatmár-Bereg', 'SSB'),
(354, 103, 'Tolna', 'TOL'),
(355, 103, 'Vas', 'VAS'),
(356, 103, 'Veszprém', 'VES'),
(357, 103, 'Zala', 'ZAL'),
(358, 105, 'Andhra Pradesh', 'AP'),
(359, 105, 'Arunachal Pradesh', 'AR'),
(360, 105, 'Assam', 'AS'),
(361, 105, 'Bihar', 'BR'),
(362, 105, 'Chhattisgarh', 'CT'),
(363, 105, 'Goa', 'GA'),
(364, 105, 'Gujarat', 'GJ'),
(365, 105, 'Haryana', 'HR'),
(366, 105, 'Himachal Pradesh', 'HP'),
(367, 105, 'Jammu and Kashmir', 'JK'),
(368, 105, 'Jharkhand', 'JH'),
(369, 105, 'Karnataka', 'KA'),
(370, 105, 'Kerala', 'KL'),
(371, 105, 'Madhya Pradesh', 'MP'),
(372, 105, 'Maharashtra', 'MH'),
(373, 105, 'Manipur', 'MN'),
(374, 105, 'Meghalaya', 'ML'),
(375, 105, 'Mizoram', 'MZ'),
(376, 105, 'Nagaland', 'NL'),
(377, 105, 'Odisha', 'OR'),
(378, 105, 'Punjab', 'PB'),
(379, 105, 'Rajasthan', 'RJ'),
(380, 105, 'Sikkim', 'SK'),
(381, 105, 'Tamil Nadu', 'TN'),
(382, 105, 'Telangana', 'TG'),
(383, 105, 'Tripura', 'TR'),
(384, 105, 'Uttarakhand', 'UT'),
(385, 105, 'Uttar Pradesh', 'UP'),
(386, 105, 'West Bengal', 'WB'),
(387, 105, 'Andaman and Nicobar Islands', 'AN'),
(388, 105, 'Chandigarh', 'CH'),
(389, 105, 'Dadra and Nagar Haveli', 'DN'),
(390, 105, 'Daman and Diu', 'DD'),
(391, 105, 'Delhi', 'DL'),
(392, 105, 'Lakshadweep', 'LD'),
(393, 105, 'Puducherry', 'PY'),
(394, 78, 'Auvergne-Rhône-Alpes', 'ARA'),
(395, 78, 'Bourgogne-Franche-Comté', 'BFC'),
(396, 78, 'Bretagne', 'BZH'),
(397, 78, 'Centre–Val-de-Loire', 'CVL'),
(398, 78, 'Corse', 'COR'),
(399, 78, 'Guadeloupe', 'GP'),
(400, 78, 'Guyane', 'GF'),
(401, 78, 'Grand-Est', 'GE'),
(402, 78, 'Hauts-de-France', 'HF'),
(403, 78, 'Île-de-France', 'IDF'),
(404, 78, 'Martinique', 'MQ'),
(405, 78, 'Mayotte', 'YT'),
(406, 78, 'Normandie', 'NOR'),
(407, 78, 'Pays-de-la-Loire', 'PL'),
(408, 78, 'Nouvelle-Aquitaine', 'NA'),
(409, 78, 'Occitanie', 'OCC'),
(410, 78, 'Provence-Alpes-Côte-d\'Azur', 'PACA'),
(411, 78, 'Réunion', 'RE'),
(412, 161, 'Northland', 'NTL'),
(413, 161, 'Auckland', 'AUK'),
(414, 161, 'Waikato', 'WKO'),
(415, 161, 'Bay of Plenty', 'BOP'),
(416, 161, 'Gisborne', 'GIS'),
(417, 161, 'Hawke\'s Bay', 'HKB'),
(418, 161, 'Taranaki', 'TKI'),
(419, 161, 'Manawatu-Wanganui', 'MWT'),
(420, 161, 'Wellington', 'WGN'),
(421, 161, 'Tasman', 'TAS'),
(422, 161, 'Nelson', 'NSN'),
(423, 161, 'Marlborough', 'MBH'),
(424, 161, 'West Coast', 'WTC'),
(425, 161, 'Canterbury', 'CAN'),
(426, 161, 'Otago Otago', 'OTA'),
(427, 161, 'Southland', 'STL'),
(428, 210, 'A Coruña (gl) [La Coruña]', 'ES-C'),
(429, 210, 'Araba (eu)', 'ES-VI'),
(430, 210, 'Albacete', 'ES-AB'),
(431, 210, 'Alacant (ca)', 'ES-A'),
(432, 210, 'Almería', 'ES-AL'),
(433, 210, 'Asturias', 'ES-O'),
(434, 210, 'Ávila', 'ES-AV'),
(435, 210, 'Badajoz', 'ES-BA'),
(436, 210, 'Balears (ca) [Baleares]', 'ES-PM'),
(437, 210, 'Barcelona [Barcelona]', 'ES-B'),
(438, 210, 'Burgos', 'ES-BU'),
(439, 210, 'Cáceres', 'ES-CC'),
(440, 210, 'Cádiz', 'ES-CA'),
(441, 210, 'Cantabria', 'ES-S'),
(442, 210, 'Castelló (ca)', 'ES-CS'),
(443, 210, 'Ciudad Real', 'ES-CR'),
(444, 210, 'Córdoba', 'ES-CO'),
(445, 210, 'Cuenca', 'ES-CU'),
(446, 210, 'Girona (ca) [Gerona]', 'ES-GI'),
(447, 210, 'Granada', 'ES-GR'),
(448, 210, 'Guadalajara', 'ES-GU'),
(449, 210, 'Gipuzkoa (eu)', 'ES-SS'),
(450, 210, 'Huelva', 'ES-H'),
(451, 210, 'Huesca', 'ES-HU'),
(452, 210, 'Jaén', 'ES-J'),
(453, 210, 'La Rioja', 'ES-LO'),
(454, 210, 'Las Palmas', 'ES-GC'),
(455, 210, 'León', 'ES-LE'),
(456, 210, 'Lleida (ca) [Lérida]', 'ES-L'),
(457, 210, 'Lugo (gl) [Lugo]', 'ES-LU'),
(458, 210, 'Madrid', 'ES-M'),
(459, 210, 'Málaga', 'ES-MA'),
(460, 210, 'Murcia', 'ES-MU'),
(461, 210, 'Nafarroa (eu)', 'ES-NA'),
(462, 210, 'Ourense (gl) [Orense]', 'ES-OR'),
(463, 210, 'Palencia', 'ES-P'),
(464, 210, 'Pontevedra (gl) [Pontevedra]', 'ES-PO'),
(465, 210, 'Salamanca', 'ES-SA'),
(466, 210, 'Santa Cruz de Tenerife', 'ES-TF'),
(467, 210, 'Segovia', 'ES-SG'),
(468, 210, 'Sevilla', 'ES-SE'),
(469, 210, 'Soria', 'ES-SO'),
(470, 210, 'Tarragona (ca) [Tarragona]', 'ES-T'),
(471, 210, 'Teruel', 'ES-TE'),
(472, 210, 'Toledo', 'ES-TO'),
(473, 210, 'València (ca)', 'ES-V'),
(474, 210, 'Valladolid', 'ES-VA'),
(475, 210, 'Bizkaia (eu)', 'ES-BI'),
(476, 210, 'Zamora', 'ES-ZA'),
(477, 210, 'Zaragoza', 'ES-Z'),
(478, 146, 'Aguascalientes', 'MX-AGU'),
(479, 146, 'Baja California', 'MX-BCN'),
(480, 146, 'Baja California Sur', 'MX-BCS'),
(481, 146, 'Campeche', 'MX-CAM'),
(482, 146, 'Chiapas', 'MX-CHP'),
(483, 146, 'Chihuahua', 'MX-CHH'),
(484, 146, 'Coahuila', 'MX-COA'),
(485, 146, 'Colima', 'MX-COL'),
(486, 146, 'Ciudad de México', 'MX-CMX​'),
(487, 146, 'Durango', 'MX-DUR'),
(488, 146, 'Guanajuato', 'MX-GUA'),
(489, 146, 'Guerrero', 'MX-GRO'),
(490, 146, 'Hidalgo', 'MX-HID'),
(491, 146, 'Jalisco', 'MX-JAL'),
(492, 146, 'Estado de México', 'MX-MEX'),
(493, 146, 'Michoacán', 'MX-MIC'),
(494, 146, 'Morelos', 'MX-MOR'),
(495, 146, 'Nayarit', 'MX-NAY'),
(496, 146, 'Nuevo León', 'MX-NLE'),
(497, 146, 'Oaxaca', 'MX-OAX'),
(498, 146, 'Puebla', 'MX-PUE'),
(499, 146, 'Querétaro', 'MX-QUE'),
(500, 146, 'Quintana Roo', 'MX-ROO'),
(501, 146, 'San Luis Potosí', 'MX-SLP'),
(502, 146, 'Sinaloa', 'MX-SIN'),
(503, 146, 'Sonora', 'MX-SON'),
(504, 146, 'Tabasco', 'MX-TAB'),
(505, 146, 'Tamaulipas', 'MX-TAM'),
(506, 146, 'Tlaxcala', 'MX-TLA'),
(507, 146, 'Veracruz', 'MX-VER'),
(508, 146, 'Yucatán', 'MX-YUC'),
(509, 146, 'Zacatecas', 'MX-ZAC'),
(510, 15, 'Buenos Aires', 'BA'),
(511, 15, 'Catamarca', 'CA'),
(512, 15, 'Chaco', 'CH'),
(513, 15, 'Chubut', 'CT'),
(514, 15, 'Córdoba', 'CB'),
(515, 15, 'Corrientes', 'CR'),
(516, 15, 'Entre Ríos', 'ER'),
(517, 15, 'Formosa', 'FO'),
(518, 15, 'Jujuy', 'JY'),
(519, 15, 'La Pampa', 'LP'),
(520, 15, 'La Rioja', 'LR'),
(521, 15, 'Mendoza', 'MZ'),
(522, 15, 'Misiones', 'MI'),
(523, 15, 'Neuquén', 'NQ'),
(524, 15, 'Río Negro', 'RN'),
(525, 15, 'Salta', 'SA'),
(526, 15, 'San Juan', 'SJ'),
(527, 15, 'San Luis', 'SL'),
(528, 15, 'Santa Cruz', 'SC'),
(529, 15, 'Santa Fe', 'SF'),
(530, 15, 'Santiago del Estero', 'SE'),
(531, 15, 'Tierra del Fuego', 'TF'),
(532, 15, 'Tucumán', 'TU'),
(533, 112, 'Agrigento', 'AG'),
(534, 112, 'Alessandria', 'AL'),
(535, 112, 'Ancona', 'AN'),
(536, 112, 'Aosta', 'AO'),
(537, 112, 'Arezzo', 'AR'),
(538, 112, 'Ascoli Piceno', 'AP'),
(539, 112, 'Asti', 'AT'),
(540, 112, 'Avellino', 'AV'),
(541, 112, 'Bari', 'BA'),
(542, 112, 'Belluno', 'BL'),
(543, 112, 'Benevento', 'BN'),
(544, 112, 'Bergamo', 'BG'),
(545, 112, 'Biella', 'BI'),
(546, 112, 'Bologna', 'BO'),
(547, 112, 'Bolzano', 'BZ'),
(548, 112, 'Brescia', 'BS'),
(549, 112, 'Brindisi', 'BR'),
(550, 112, 'Cagliari', 'CA'),
(551, 112, 'Caltanissetta', 'CL'),
(552, 112, 'Campobasso', 'CB'),
(553, 112, 'Caserta', 'CE'),
(554, 112, 'Catania', 'CT'),
(555, 112, 'Catanzaro', 'CZ'),
(556, 112, 'Chieti', 'CH'),
(557, 112, 'Como', 'CO'),
(558, 112, 'Cosenza', 'CS'),
(559, 112, 'Cremona', 'CR'),
(560, 112, 'Crotone', 'KR'),
(561, 112, 'Cuneo', 'CN'),
(562, 112, 'Enna', 'EN'),
(563, 112, 'Ferrara', 'FE'),
(564, 112, 'Firenze', 'FI'),
(565, 112, 'Foggia', 'FG'),
(566, 112, 'Forli\'-Cesena', 'FO'),
(567, 112, 'Frosinone', 'FR'),
(568, 112, 'Genova', 'GE'),
(569, 112, 'Gorizia', 'GO'),
(570, 112, 'Grosseto', 'GR'),
(571, 112, 'Imperia', 'IM'),
(572, 112, 'Isernia', 'IS'),
(573, 112, 'La Spezia', 'SP'),
(574, 112, 'L\'Aquila', 'AQ'),
(575, 112, 'Latina', 'LT'),
(576, 112, 'Lecce', 'LE'),
(577, 112, 'Lecco', 'LC'),
(578, 112, 'Livorno', 'LI'),
(579, 112, 'Lodi', 'LO'),
(580, 112, 'Lucca', 'LU'),
(581, 112, 'Macerata', 'MC'),
(582, 112, 'Mantova', 'MN'),
(583, 112, 'Massa-Carrara', 'MS'),
(584, 112, 'Matera', 'MT'),
(585, 112, 'Messina', 'ME'),
(586, 112, 'Milano', 'MI'),
(587, 112, 'Modena', 'MO'),
(588, 112, 'Napoli', 'NA'),
(589, 112, 'Novara', 'NO'),
(590, 112, 'Nuoro', 'NU'),
(591, 112, 'Oristano', 'OR'),
(592, 112, 'Padova', 'PD'),
(593, 112, 'Palermo', 'PA'),
(594, 112, 'Parma', 'PR'),
(595, 112, 'Pavia', 'PV'),
(596, 112, 'Perugia', 'PG'),
(597, 112, 'Pesaro e Urbino', 'PS'),
(598, 112, 'Pescara', 'PE'),
(599, 112, 'Piacenza', 'PC'),
(600, 112, 'Pisa', 'PI'),
(601, 112, 'Pistoia', 'PT'),
(602, 112, 'Pordenone', 'PN'),
(603, 112, 'Potenza', 'PZ'),
(604, 112, 'Prato', 'PO'),
(605, 112, 'Ragusa', 'RG'),
(606, 112, 'Ravenna', 'RA'),
(607, 112, 'Reggio di Calabria', 'RC'),
(608, 112, 'Reggio nell\'Emilia', 'RE'),
(609, 112, 'Rieti', 'RI'),
(610, 112, 'Rimini', 'RN'),
(611, 112, 'Roma', 'RM'),
(612, 112, 'Rovigo', 'RO'),
(613, 112, 'Salerno', 'SA'),
(614, 112, 'Sassari', 'SS'),
(615, 112, 'Savona', 'SV'),
(616, 112, 'Siena', 'SI'),
(617, 112, 'Siracusa', 'SR'),
(618, 112, 'Sondrio', 'SO'),
(619, 112, 'Taranto', 'TA'),
(620, 112, 'Teramo', 'TE'),
(621, 112, 'Terni', 'TR'),
(622, 112, 'Torino', 'TO'),
(623, 112, 'Trapani', 'TP'),
(624, 112, 'Trento', 'TN'),
(625, 112, 'Treviso', 'TV'),
(626, 112, 'Trieste', 'TS'),
(627, 112, 'Udine', 'UD'),
(628, 112, 'Varese', 'VA'),
(629, 112, 'Venezia', 'VE'),
(630, 112, 'Verbano-Cusio-Ossola', 'VB'),
(631, 112, 'Vercelli', 'VC'),
(632, 112, 'Verona', 'VR'),
(633, 112, 'Vibo Valentia', 'VV'),
(634, 112, 'Vicenza', 'VI'),
(635, 112, 'Viterbo', 'VT'),
(636, 68, 'Cairo', 'alkahr'),
(637, 68, 'Giza', 'aljyz'),
(638, 68, 'Alexandria', 'alaskndry'),
(639, 68, 'Al-Gharbia', 'alghrby'),
(640, 68, 'Al-Menofia', 'almnofy'),
(641, 68, 'Aswan', 'asoan'),
(642, 249, 'California', 'california'),
(643, 249, 'Florida', 'florida'),
(644, 249, 'Texas', 'texas'),
(645, 250, 'Coast', 'coast'),
(646, 250, 'North Eastern', 'north-eastern'),
(647, 250, 'Eastern', 'eastern'),
(648, 250, 'Central', 'central'),
(649, 250, 'Rift Valley', 'rift-valley'),
(650, 250, 'Western', 'western'),
(651, 250, 'Nyanza', 'nyanza'),
(652, 250, 'Nairobi', 'nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_notify_notifications`
--

CREATE TABLE `rainlab_notify_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_notify_notification_rules`
--

CREATE TABLE `rainlab_notify_notification_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `config_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `condition_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_custom` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_notify_notification_rules`
--

INSERT INTO `rainlab_notify_notification_rules` (`id`, `name`, `code`, `class_name`, `description`, `config_data`, `condition_data`, `is_enabled`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'Send welcome email to user', 'welcome_email', 'RainLab\\User\\NotifyRules\\UserRegisteredEvent', '', NULL, NULL, 0, 0, '2019-11-25 22:11:44', '2020-01-14 12:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_notify_rule_actions`
--

CREATE TABLE `rainlab_notify_rule_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `rule_host_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_notify_rule_actions`
--

INSERT INTO `rainlab_notify_rule_actions` (`id`, `class_name`, `config_data`, `rule_host_id`, `created_at`, `updated_at`) VALUES
(1, 'RainLab\\Notify\\NotifyRules\\SendMailTemplateAction', '{\"mail_template\":\"rainlab.user::welcome\",\"send_to_mode\":\"user\"}', 1, '2019-11-25 22:11:44', '2019-11-25 22:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_notify_rule_conditions`
--

CREATE TABLE `rainlab_notify_rule_conditions` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `condition_control_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rule_host_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rule_host_id` int(10) UNSIGNED DEFAULT NULL,
  `rule_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_notify_rule_conditions`
--

INSERT INTO `rainlab_notify_rule_conditions` (`id`, `class_name`, `config_data`, `condition_control_type`, `rule_host_type`, `rule_host_id`, `rule_parent_id`, `created_at`, `updated_at`) VALUES
(1, 'RainLab\\Notify\\Classes\\CompoundCondition', '{\"condition_type\":\"0\",\"condition\":\"true\"}', NULL, 'any', 1, NULL, '2020-01-14 12:20:58', '2020-01-14 12:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_attributes`
--

CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_translate_attributes`
--

INSERT INTO `rainlab_translate_attributes` (`id`, `locale`, `model_id`, `model_type`, `attribute_data`) VALUES
(1, 'en', '5', 'Responsiv\\Currency\\Models\\Currency', '{\"name\":\"Egyptian Pound\",\"currency_symbol\":\"EGP\"}'),
(2, 'en', '1', 'Spot\\Shipment\\Models\\Office', '{\"name\":\"6 October Branch\"}'),
(3, 'en', '68', 'RainLab\\Location\\Models\\Country', '{\"name\":\"Egypt\"}'),
(4, 'en', '2', 'Spot\\Shipment\\Models\\Office', '{\"name\":\"Masr Elgdida Branch\"}'),
(5, 'en', '3', 'Spot\\Shipment\\Models\\Office', '{\"name\":\"Alexandria Branch\"}'),
(6, 'en', '4', 'Spot\\Shipment\\Models\\Office', '{\"name\":\"Tanta Branch\"}'),
(7, 'en', '1', 'Spot\\Shipment\\Models\\Packaging', '{\"name\":\"Roll\"}'),
(8, 'en', '2', 'Spot\\Shipment\\Models\\Packaging', '{\"name\":\"Documents\"}'),
(9, 'en', '3', 'Spot\\Shipment\\Models\\Packaging', '{\"name\":\"Package\"}'),
(10, 'en', '2', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"Received\"}'),
(11, 'en', '1', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"Pending\"}'),
(12, 'en', '3', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"Approved\"}'),
(13, 'en', '4', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"Refused\"}'),
(14, 'en', '1', 'Spot\\Shipment\\Models\\DeliveryTime', '{\"name\":\"1-2 Days\"}'),
(15, 'en', '636', 'RainLab\\Location\\Models\\State', '{\"name\":\"Cairo\"}'),
(16, 'en', '2', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"Supervisor\"}'),
(17, 'en', '4', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"Employee\"}'),
(18, 'en', '3', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"Department Manager\"}'),
(19, 'en', '5', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"Client\"}'),
(20, 'en', '6', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"Branch Manager\"}'),
(21, 'en', '1', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"Administration\"}'),
(22, 'en', '2', 'Spot\\Shipment\\Models\\DeliveryTime', '{\"name\":\"2-3 Days\"}'),
(23, 'en', '7', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"تم التسليم للمستلم\"}'),
(24, 'ar', '4', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"موظف\"}'),
(25, 'tr', '4', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"\"}'),
(26, 'ar', '2', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"مشرف عام\"}'),
(27, 'tr', '2', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"\"}'),
(28, 'ar', '5', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"عميل\"}'),
(29, 'tr', '5', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"\"}'),
(30, 'ar', '1', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"مدير عام\"}'),
(31, 'tr', '1', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"\"}'),
(32, 'ar', '6', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"مدير فرع\"}'),
(33, 'tr', '6', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"\"}'),
(34, 'ar', '3', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"مدير قسم\"}'),
(35, 'tr', '3', 'Vdomah\\Roles\\Models\\Role', '{\"name\":\"\"}'),
(36, 'ar', '249', 'RainLab\\Location\\Models\\Country', '{\"name\":\"الولايات المتحدة الأمريكية\"}'),
(37, 'ar', '68', 'RainLab\\Location\\Models\\Country', '{\"name\":\"مصر\"}'),
(38, 'tr', '68', 'RainLab\\Location\\Models\\Country', '{\"name\":\"مصر\"}'),
(39, 'ar', '641', 'RainLab\\Location\\Models\\State', '{\"name\":\"أسوان\"}'),
(40, 'ar', '640', 'RainLab\\Location\\Models\\State', '{\"name\":\"المنوفية\"}'),
(41, 'ar', '639', 'RainLab\\Location\\Models\\State', '{\"name\":\"الغربية\"}'),
(42, 'ar', '638', 'RainLab\\Location\\Models\\State', '{\"name\":\"الأسكندرية\"}'),
(43, 'ar', '637', 'RainLab\\Location\\Models\\State', '{\"name\":\"الجيزة\"}'),
(44, 'ar', '636', 'RainLab\\Location\\Models\\State', '{\"name\":\"القاهرة\"}'),
(45, 'ar', '4', 'Spot\\Shipment\\Models\\City', '{\"name\":\"طنطا\"}'),
(46, 'ar', '3', 'Spot\\Shipment\\Models\\City', '{\"name\":\"كرموس\"}'),
(47, 'ar', '2', 'Spot\\Shipment\\Models\\City', '{\"name\":\"مصر الجديدة\"}'),
(48, 'ar', '1', 'Spot\\Shipment\\Models\\City', '{\"name\":\"٦ أكتوبر\"}'),
(49, 'ar', '642', 'RainLab\\Location\\Models\\State', '{\"name\":\"كاليفورنيا\"}'),
(50, 'ar', '643', 'RainLab\\Location\\Models\\State', '{\"name\":\"فلوريدا\"}'),
(51, 'ar', '644', 'RainLab\\Location\\Models\\State', '{\"name\":\"تكساس\"}'),
(52, 'ar', '5', 'Spot\\Shipment\\Models\\City', '{\"name\":\"أديلانتو\"}'),
(53, 'ar', '6', 'Spot\\Shipment\\Models\\City', '{\"name\":\"اجورا هيلز\"}'),
(54, 'ar', '7', 'Spot\\Shipment\\Models\\City', '{\"name\":\"ألاميدا\"}'),
(55, 'ar', '8', 'Spot\\Shipment\\Models\\City', '{\"name\":\"ميامي\"}'),
(56, 'ar', '9', 'Spot\\Shipment\\Models\\City', '{\"name\":\"هوستن\"}'),
(57, 'ar', '1', 'Spot\\Shipment\\Models\\Area', '{\"name\":\"وسط ميامي\"}'),
(58, 'ar', '2', 'Spot\\Shipment\\Models\\Area', '{\"name\":\"مفتاح بيسكاين\"}'),
(59, 'ar', '1', 'Spot\\Shipment\\Models\\DeliveryTime', '{\"name\":\"١-٢ يوم\"}'),
(60, 'ar', '2', 'Spot\\Shipment\\Models\\DeliveryTime', '{\"name\":\"٢-٣ يوم\"}'),
(61, 'ar', '1', 'Spot\\Shipment\\Models\\Courier', '{\"name\":\"أرامكس\"}'),
(62, 'ar', '2', 'Spot\\Shipment\\Models\\Courier', '{\"name\":\"البريد المصري\"}'),
(63, 'ar', '1', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"نظام فوري\"}'),
(64, 'ar', '2', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"نظام شركات\"}'),
(65, 'ar', '2', 'Spot\\Shipment\\Models\\Office', '{\"name\":\"فرع مصر\"}'),
(66, 'ar', '1', 'Spot\\Shipment\\Models\\Packaging', '{\"name\":\"كرتونة صغيرة\"}'),
(67, 'ar', '3', 'Spot\\Shipment\\Models\\Packaging', '{\"name\":\"كرتونة كبيرة\"}'),
(68, 'ar', '2', 'Spot\\Shipment\\Models\\Packaging', '{\"name\":\"مستندات\"}'),
(69, 'ar', '1', 'Spot\\Shipment\\Models\\Category', '{\"name\":\"أجهزة كهربائية\"}'),
(70, 'ar', '2', 'Spot\\Shipment\\Models\\Category', '{\"name\":\"أثاث\"}'),
(71, 'ar', '3', 'Spot\\Shipment\\Models\\Category', '{\"name\":\"ألكترونيات\"}'),
(72, 'ar', '4', 'Spot\\Shipment\\Models\\Category', '{\"name\":\"ملابس\"}'),
(73, 'ar', '1', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"مُعلقة\"}'),
(74, 'ar', '10', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"وُردتّ للعميل\"}'),
(75, 'ar', '9', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"تم التوريد للشركة\"}'),
(76, 'ar', '8', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"تم تسليم التوريد للسائق\"}'),
(77, 'ar', '7', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"أُستلمت\"}'),
(78, 'ar', '6', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"خزنت بالمخزن\"}'),
(79, 'ar', '5', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"تم التسليم للسائق\"}'),
(80, 'ar', '4', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"مرفوضة\"}'),
(81, 'ar', '3', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"مقبولة\"}'),
(82, 'ar', '2', 'Spot\\Shipment\\Models\\Status', '{\"name\":\"تم الاستلام\"}'),
(83, 'ar', '3', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"Ecommerce\"}'),
(84, 'es', '3', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"Ecommerce\"}'),
(85, 'ar', '6', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"eCommerce drop at Hub\"}'),
(86, 'es', '6', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"eCommerce drop at Hub\"}'),
(87, 'ar', '5', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"Customer Pickup at Hub\"}'),
(88, 'es', '5', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"Customer Pickup at Hub\"}'),
(89, 'ar', '4', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"Customer Drop at Hub\"}'),
(90, 'es', '4', 'Spot\\Shipment\\Models\\Mode', '{\"name\":\"Customer Drop at Hub\"}'),
(91, 'ar', '1', 'Spot\\Shipment\\Models\\Office', '{\"name\":\"well well\"}'),
(92, 'ar', '6', 'Responsiv\\Currency\\Models\\Currency', '{\"name\":\"AED\",\"currency_symbol\":\"د.إ\"}'),
(93, 'es', '6', 'Responsiv\\Currency\\Models\\Currency', '{\"name\":\"AED\",\"currency_symbol\":\"د.إ\"}');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_indexes`
--

CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_locales`
--

CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_translate_locales`
--

INSERT INTO `rainlab_translate_locales` (`id`, `code`, `name`, `is_default`, `is_enabled`, `sort_order`) VALUES
(1, 'en', 'English', 1, 1, 2),
(2, 'ar', 'Arabic', 0, 1, 1),
(4, 'es', 'Spanish', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_messages`
--

CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rainlab_translate_messages`
--

INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(1, 'fast', '{\"x\":\"FAST\",\"ar\":\"\\u0633\\u0631\\u0639\\u0629\"}'),
(2, 'safe.accurate', '{\"x\":\"SAFE & ACCURATE\",\"ar\":\"\\u0623\\u0645\\u0627\\u0646 \\u0648 \\u062f\\u0642\\u0629\"}'),
(3, 'anywhere', '{\"x\":\"ANYWHERE\",\"ar\":\"\\u0628\\u0623\\u064a \\u0645\\u0643\\u0627\\u0646\"}'),
(4, 'in.this.world', '{\"x\":\"IN THIS WORLD\",\"ar\":\"\\u0641\\u064a \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\"}'),
(5, 'see.more', '{\"x\":\"SEE MORE\",\"ar\":\"\\u0623\\u0642\\u0631\\u0623 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\"}'),
(6, 'prev', '{\"x\":\"PREV\",\"ar\":\"\\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\"}'),
(7, 'next', '{\"x\":\"NEXT\",\"ar\":\"\\u0627\\u0644\\u062a\\u0627\\u0644\\u064a\"}'),
(8, 'equipments', '{\"x\":\"EQUIPMENTS\",\"ar\":\"\\u062a\\u062c\\u0647\\u064a\\u0632\\u0627\\u062a\"}'),
(9, 'welcome.to', '{\"x\":\"WELCOME TO\",\"ar\":\"\\u0645\\u0631\\u062d\\u0628\\u0627\\u064b \\u0628\\u0643 \\u0641\\u064a\"}'),
(10, 'cargo.pro', '{\"x\":\"Cargo Pro\"}'),
(11, 'local.shipping', '{\"x\":\"LOCAL SHIPPING\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\"}'),
(12, 'limited.your.shipping.area.and.your.shipping.options.to.destinations.within.your.country', '{\"x\":\"Limited your shipping area \\u2013 and your shipping options \\u2013 to destinations within your country\",\"ar\":\"\\u062d\\u0635\\u0631 \\u0645\\u0646\\u0627\\u0637\\u0642 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 - \\u0648\\u062e\\u064a\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 - \\u0641\\u064a \\u0648\\u062c\\u0647\\u0627\\u062a \\u062f\\u0627\\u062e\\u0644 \\u062f\\u0648\\u0644\\u062a\\u0643 \\u0641\\u0642\\u0637.\"}'),
(13, 'sea.delivery', '{\"x\":\"SEA DELIVERY\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0628\\u062d\\u0631\\u064a\"}'),
(14, 'transporting.large.quantities.of.product.via.cargo.ships', '{\"x\":\"Transporting large quantities of product via cargo ships\",\"ar\":\"\\u0646\\u0642\\u0644 \\u0643\\u0645\\u064a\\u0627\\u062a \\u0643\\u0628\\u064a\\u0631\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0639\\u0628\\u0631 \\u0633\\u0641\\u0646 \\u0627\\u0644\\u0634\\u062d\\u0646.\"}'),
(15, 'air.delivery', '{\"x\":\"AIR DELIVERY\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u062c\\u0648\\u064a\"}'),
(16, 'a.service.providing.for.the.international.air.transport.of.goods', '{\"x\":\"A service providing for the international air transport of goods\",\"ar\":\"\\u062e\\u062f\\u0645\\u0629 \\u062a\\u0648\\u0641\\u064a\\u0631 \\u0627\\u0644\\u0646\\u0642\\u0644 \\u0627\\u0644\\u062c\\u0648\\u064a \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a \\u0644\\u0644\\u0628\\u0636\\u0627\\u0626\\u0639\"}'),
(17, 'express.delivery', '{\"x\":\"Express Delivery\",\"ar\":\"\\u0634\\u062d\\u0646 \\u0633\\u0631\\u064a\\u0639\"}'),
(18, 'pickup.and.deliver.the.package.with.the.priority.deliver.service.is.one.of.our.services.which.we.offer', '{\"x\":\"Pickup and deliver the package with the priority deliver service is one of our services which we offer\",\"ar\":\"\\u0625\\u062d\\u062f\\u064a \\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627 \\u0647\\u064a \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 (\\u0627\\u0644\\u0628\\u064a\\u0643 \\u0627\\u0628) \\u0648\\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0623\\u0648\\u0644\\u0648\\u064a\\u0629\\u060c \\u0648\\u0647\\u064a \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0643\\u0636\\u0645\\u0627\\u0646 \\u0644\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u062e\\u0644\\u0627\\u0644 \\u064a\\u0648\\u0645 \\u0648\\u0627\\u062d\\u062f \\u0623\\u0648 \\u064a\\u0648\\u0645\\u064a\\u0646, \\u064a\\u0648\\u0641\\u0631 \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0645\\u0636\\u0645\\u0648\\u0646\\u0629 \\u0644\\u064a\\u0648\\u0645 \\u0648\\u0627\\u062d\\u062f \\u0623\\u0648 \\u064a\\u0648\\u0645\\u064a\\u0646\"}'),
(19, 'it.provides.guaranteed.1.day.or.2.day.deliver', '{\"x\":\"It provides guaranteed 1-Day or 2-Day deliver\",\"ar\":\"\\u064a\\u0648\\u0641\\u0631 \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0645\\u0636\\u0645\\u0648\\u0646\\u0629 \\u0644\\u064a\\u0648\\u0645 \\u0648\\u0627\\u062d\\u062f \\u0623\\u0648 \\u064a\\u0648\\u0645\\u064a\\u0646\"}'),
(20, 'collect.money', '{\"x\":\"Collect Money\",\"ar\":\"\\u062a\\u062d\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\"}'),
(21, 'the.ability.to.collect.money.from.the.consignee.and.ship.it.to.the.correspondent.again.in.complete.security.and.privacy', '{\"x\":\"The ability to collect money from the consignee and ship it to the correspondent again in complete security and privacy\",\"ar\":\"\\u0625\\u0645\\u0643\\u0627\\u0646\\u064a\\u0629 \\u062a\\u062d\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u064f\\u0631\\u0633\\u0644 \\u0625\\u0644\\u064a\\u0647 \\u0648\\u0634\\u062d\\u0646\\u0647\\u0627 \\u0644\\u0644\\u0631\\u0627\\u0633\\u0644 \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0628\\u0623\\u0645\\u0627\\u0646 \\u0648\\u062e\\u0635\\u0648\\u0635\\u064a\\u0629 \\u0643\\u0627\\u0645\\u0644\\u0629\"}'),
(22, 'shipping.to.and.from.all.provinces.and.cities.enjoy.now.shipping.your.goods.door.to.door.and.special.prices.for.heavy.weights', '{\"x\":\"Shipping to and from all provinces and cities Enjoy now shipping your goods door to door and special prices for heavy weights\",\"ar\":\"\\u0634\\u062d\\u0646 \\u0645\\u0646 \\u0648 \\u0627\\u0644\\u0649 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u062f\\u0646 \\u0627\\u0633\\u062a\\u0645\\u062a\\u0639 \\u0627\\u0644\\u0627\\u0646 \\u0628\\u0634\\u062d\\u0646 \\u0628\\u0636\\u0627\\u0639\\u062a\\u0643 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u0627\\u0628 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0628\\u0627\\u0628 \\u0648\\u0627\\u0633\\u0639\\u0627\\u0631 \\u062e\\u0627\\u0635\\u0629 \\u0644\\u0644\\u0627\\u0648\\u0632\\u0627\\u0646 \\u0627\\u0644\\u062b\\u0642\\u064a\\u0644\\u0629.\"}'),
(23, 'international.shipping', '{\"x\":\"International Shipping\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a\"}'),
(24, 'shipping.from.and.to.all.countries.of.the.world.enjoy.shipping.your.goods.door.to.door.and.special.prices.for.heavy.weights.after.50.kg', '{\"x\":\"Shipping from and to all countries of the world Enjoy shipping your goods door to door and special prices for heavy weights after 50 kg.\",\"ar\":\"\\u0634\\u062d\\u0646 \\u0645\\u0646 \\u0648 \\u0627\\u0644\\u0649 \\u062c\\u0645\\u064a\\u0639 \\u062f\\u0648\\u0644 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645 \\u0627\\u0633\\u062a\\u0645\\u062a\\u0639 \\u0627\\u0644\\u0627\\u0646 \\u0628\\u0634\\u062d\\u0646 \\u0628\\u0636\\u0627\\u0639\\u062a\\u0643 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u0627\\u0628 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0628\\u0627\\u0628 \\u0648\\u0627\\u0633\\u0639\\u0627\\u0631 \\u062e\\u0627\\u0635\\u0629 \\u0644\\u0644\\u0627\\u0648\\u0632\\u0627\\u0646 \\u0627\\u0644\\u062b\\u0642\\u064a\\u0644\\u0629 \\u0645\\u0646 \\u0628\\u0639\\u062f 50 \\u0643\\u064a\\u0644\\u0648 \\u062c\\u0631\\u0627\\u0645.\"}'),
(25, 'our.working.process', '{\"x\":\"our working process\",\"ar\":\"\\u0643\\u064a\\u0641 \\u0646\\u0639\\u0645\\u0644\"}'),
(26, 'pickup.receive', '{\"x\":\"Pickup & Receive\",\"ar\":\"\\u0625\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0648\\u062a\\u0633\\u0644\\u064a\\u0645\"}'),
(27, 'we.offer.package.pickup.services.and.office.package.receive.services.too', '{\"x\":\"We offer package pickup services and office package receive services too\",\"ar\":\"\\u0646\\u0642\\u062f\\u0645 \\u062e\\u062f\\u0645\\u0629 \\u0625\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u0627\\u0628 \\u0623\\u0648 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0625\\u062d\\u062f\\u0649 \\u0645\\u0643\\u0627\\u062a\\u0628\\u0646\\u0627 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0634\\u0631\\u0629\"}'),
(28, 'deliver.package', '{\"x\":\"Deliver Package\",\"ar\":\"\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(29, 'delivery.and.cash.delivery.after.delivery.of.the.order.directly.to.more.than.one.means', '{\"x\":\"Delivery and cash delivery after delivery of the order directly to more than one means\",\"ar\":\"\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0643\\u0627\\u0634 \\u0628\\u0639\\u062f \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u0648\\u0631\\u062f\\u0631\\u0627\\u062a \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0628\\u0623\\u0643\\u062a\\u0631 \\u0645\\u0646 \\u0648\\u0633\\u064a\\u0644\\u0629\"}'),
(30, 'track.follow.up', '{\"x\":\"Track & Follow-up\",\"ar\":\"\\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0648\\u0627\\u0644\\u0645\\u062a\\u0627\\u0628\\u0639\\u0629\"}'),
(31, 'periodic.follow.up.system.for.all.orders.until.the.order.is.delivered', '{\"x\":\"Periodic follow-up system for all orders until the order is delivered\",\"ar\":\"\\u0646\\u0638\\u0627\\u0645 \\u0645\\u062a\\u0627\\u0628\\u0639\\u0629 \\u062f\\u0648\\u0631\\u064a \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0637\\u0644\\u0628\\u0627\\u062a \\u062d\\u062a\\u0649 \\u064a\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628\"}'),
(32, 'work.with.us', '{\"x\":\"WORK WITH US\",\"ar\":\"\\u0647\\u0644 \\u062a\\u0631\\u064a\\u062f \\u0627\\u0644\\u0639\\u0645\\u0644 \\u0645\\u0639\\u0646\\u0627\"}'),
(33, 'well.do.everything.we.can.to.make.you.a.satisfied.customer', '{\"x\":\"We\'ll do everything we can to make you a satisfied customer!\",\"ar\":\"\\u0633\\u0648\\u0641 \\u0646\\u0642\\u0648\\u0645 \\u0628\\u0641\\u0639\\u0644 \\u0643\\u0644 \\u0634\\u064a\\u0621 \\u0645\\u0645\\u0643\\u0646 \\u0644\\u0625\\u0631\\u0636\\u0627\\u0626\\u0643 \\u0643\\u0639\\u0645\\u064a\\u0644 \\u0644\\u0646\\u0627!\"}'),
(34, 'contact.us', '{\"x\":\"Contact us\",\"ar\":\"\\u0623\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627\"}'),
(35, 'home', '{\"x\":\"Home\",\"ar\":\"\\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"}'),
(36, 'courier.systemshipping.managementcargo.shipping.management', '{\"x\":\"courier system,shipping management,cargo, shipping management\",\"ar\":\"\\u0628\\u0627\\u0646\\u062f\\u0627 \\u0644\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0633\\u0631\\u064a\\u0639\\u060c \\u0634\\u062d\\u0646 \\u0633\\u0631\\u064a\\u0639\\u060c \\u0634\\u062d\\u0646 \\u062f\\u0627\\u062e\\u0644\\u064a\\u060c \\u0645\\u0624\\u0633\\u0633\\u0629 \\u0633\\u0628\\u0648\\u062a \\u0644\\u0627\\u064a\\u0631\\u060c \\u0633\\u0628\\u0648\\u062a \\u0634\\u064a\\u064a\\u0628\\u0646\\u062c\\u060c \\u0645\\u0634\\u0631\\u0648\\u0639 \\u0633\\u0628\\u0648\\u062a \\u0644\\u0627\\u064a\\u0631\"}'),
(37, 'we.ship.anything', '{\"x\":\"We ship anything\",\"ar\":\"\\u0646\\u0634\\u062d\\u0646 \\u0623\\u064a \\u0634\\u064a\\u0621\"}'),
(38, 'how.to.order', '{\"x\":\"HOW TO ORDER\",\"ar\":\"\\u0643\\u064a\\u0641 \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u0637\\u0644\\u0628\"}'),
(39, 'login.or.create.new.account', '{\"x\":\"Login or create new account\",\"ar\":\"\\u0633\\u062c\\u0644 \\u062f\\u062e\\u0648\\u0644 \\u0623\\u0648 \\u0625\\u0646\\u0634\\u0621 \\u062d\\u0633\\u0627\\u0628 \\u062c\\u062f\\u064a\\u062f\"}'),
(40, 'place.your.shipment.request', '{\"x\":\"Place your shipment request\",\"ar\":\"\\u0623\\u0636\\u0641 \\u0637\\u0644\\u0628 \\u0634\\u062d\\u0646\"}'),
(41, 'other.steps.on.us', '{\"x\":\"Other steps on us\",\"ar\":\"\\u0623\\u062a\\u0631\\u0643 \\u0628\\u0627\\u0642\\u064a \\u0627\\u0644\\u062e\\u0637\\u0648\\u0627\\u062a \\u0639\\u0644\\u064a\\u0646\\u0627\"}'),
(42, 'if.you.still.have.problems.please.let.us.know.by.sending.an.email.to', '{\"x\":\"If you still have problems, please let us know, by sending an email to\",\"ar\":\"\\u0641\\u0649 \\u062d\\u0627\\u0644\\u0629 \\u0648\\u062c\\u0648\\u062f \\u0623\\u064a \\u0645\\u0634\\u0643\\u0644\\u0629\\u060c \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0625\\u062e\\u0628\\u0631\\u0646\\u0627 \\u0639\\u0646 \\u0637\\u0631\\u064a\\u0642 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"}'),
(43, 'thank.you', '{\"x\":\"Thank you!\",\"ar\":\"\\u0634\\u0643\\u0631\\u0627\\u064b \\u0644\\u0643!\"}'),
(44, 'facebook', '{\"x\":\"Facebook\"}'),
(45, 'twitter', '{\"x\":\"Twitter\"}'),
(46, 'instagram', '{\"x\":\"Instagram\"}'),
(47, 'questions.call', '{\"x\":\"QUESTIONS? CALL\",\"ar\":\"\\u0644\\u062f\\u064a\\u0643 \\u0633\\u0624\\u0627\\u0644\\u061f \\u0623\\u062a\\u0635\\u0644 \\u0628\\u0640\"}'),
(48, 'languages', '{\"x\":\"LANGUAGES\",\"ar\":\"\\u0627\\u0644\\u0644\\u063a\\u0627\\u062a\"}'),
(49, 'support', '{\"x\":\"SUPPORT\",\"ar\":\"\\u0627\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u0629\"}'),
(50, 'login', '{\"x\":\"LOGIN\",\"ar\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u062f\\u062e\\u0648\\u0644\"}'),
(51, 'about', '{\"x\":\"About\",\"ar\":\"\\u0645\\u0646 \\u0646\\u062d\\u0646\"}'),
(52, 'applications', '{\"x\":\"Applications\",\"ar\":\"\\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a\"}'),
(53, 'f.a.q', '{\"x\":\"F.A.Q.\",\"ar\":\"\\u0627\\u0644\\u0623\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0634\\u0627\\u0626\\u0639\\u0629\"}'),
(54, 'track', '{\"x\":\"TRACK\",\"ar\":\"\\u062a\\u062a\\u0628\\u0639\"}'),
(55, 'package', '{\"x\":\"package\",\"ar\":\"\\u0634\\u062d\\u0646\\u0629\"}'),
(56, 'all.rights.reserved', '{\"x\":\"All rights reserved\",\"ar\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u062d\\u0642\\u0648\\u0642 \\u0645\\u062d\\u0641\\u0648\\u0638\\u0629\"}'),
(57, 'sign.in.your.account.to.have.access.to.different.features', '{\"x\":\"SIGN IN YOUR ACCOUNT TO HAVE ACCESS TO DIFFERENT FEATURES\",\"ar\":\"\\u0633\\u062c\\u0644 \\u062f\\u062e\\u0648\\u0644 \\u0644\\u062d\\u0633\\u0627\\u0628\\u0643 \\u0644\\u062a\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062e\\u062a\\u0644\\u0641\\u0629\"}'),
(58, 'eg', '{\"x\":\"eg\",\"ar\":\"\\u0645\\u062b\\u0627\\u0644\"}'),
(59, 'username', '{\"x\":\"Username\",\"ar\":\"\\u0623\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\"}'),
(60, 'type.password', '{\"x\":\"type password\",\"ar\":\"\\u0623\\u0643\\u062a\\u0628 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\"}'),
(61, 'password', '{\"x\":\"Password\",\"ar\":\"\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\"}'),
(62, 'remember.me', '{\"x\":\"Remember me\",\"ar\":\"\\u062a\\u0630\\u0643\\u0631\\u0646\\u064a\"}'),
(63, 'sign.in', '{\"x\":\"Sign In\",\"ar\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u062f\\u062e\\u0648\\u0644\"}'),
(64, 'create.an.account', '{\"x\":\"CREATE AN ACCOUNT\",\"ar\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u062d\\u0633\\u0627\\u0628\"}'),
(65, 'forgot.your.password', '{\"x\":\"FORGOT YOUR PASSWORD?\",\"ar\":\"\\u0646\\u0633\\u064a\\u062a \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\\u061f\"}'),
(66, 'create.account', '{\"x\":\"CREATE ACCOUNT\",\"ar\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u062d\\u0633\\u0627\\u0628\"}'),
(67, 'type.your.name', '{\"x\":\"type your name\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0627\\u0633\\u0645\\u0643\"}'),
(68, 'full.name', '{\"x\":\"FULL NAME\",\"ar\":\"\\u0627\\u0644\\u0623\\u0633\\u0645 \\u0643\\u0627\\u0645\\u0644\\u0627\\u064b\"}'),
(69, 'type.desired.username', '{\"x\":\"type desired username\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\"}'),
(70, 'email', '{\"x\":\"EMAIL\",\"ar\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"}'),
(71, 'confirm.password', '{\"x\":\"CONFIRM PASSWORD\",\"ar\":\"\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\"}'),
(72, 'i.agree.the', '{\"x\":\"I Agree the\",\"ar\":\"\\u0623\\u0646\\u0627 \\u0645\\u0648\\u0627\\u0641\\u0642 \\u0639\\u0644\\u0649\"}'),
(73, 'terms.and.conditions', '{\"x\":\"terms and conditions\",\"ar\":\"\\u0627\\u0644\\u0623\\u062d\\u0643\\u0627\\u0645 \\u0648\\u0627\\u0644\\u0634\\u0631\\u0648\\u0637\"}'),
(74, 'create.my.account', '{\"x\":\"CREATE MY ACCOUNT\",\"ar\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u062d\\u0633\\u0627\\u0628\"}'),
(75, 'already.have.an.account', '{\"x\":\"ALREADY HAVE AN ACCOUNT?\",\"ar\":\"\\u0647\\u0644 \\u0644\\u062f\\u064a\\u0643 \\u062d\\u0633\\u0627\\u0628 \\u0628\\u0627\\u0644\\u0641\\u0639\\u0644\\u061f\"}'),
(76, 'send.my.details', '{\"x\":\"SEND MY DETAILS!\",\"ar\":\"\\u0623\\u0631\\u0633\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\\u064a!\"}'),
(77, 'aah.wait.i.remember.now', '{\"x\":\"AAH, WAIT, I REMEMBER NOW!\",\"ar\":\"\\u0623\\u0646\\u062a\\u0638\\u0631\\u060c \\u0644\\u0642\\u062f \\u062a\\u0630\\u0643\\u0631\\u062a \\u0627\\u0644\\u0622\\u0646!\"}'),
(78, 'track.a.package', '{\"x\":\"TRACK A PACKAGE\",\"ar\":\"\\u062a\\u062a\\u0628\\u0639 \\u0634\\u062d\\u0646\\u0629\"}'),
(79, 'just.type.the.tracking.code.and.well.do.everything', '{\"x\":\"Just type the tracking code and we\'ll do everything\",\"ar\":\"\\u0623\\u0643\\u062a\\u0628 \\u0641\\u0642\\u0637 \\u0631\\u0642\\u0645 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0648\\u0623\\u062a\\u0631\\u0643 \\u0627\\u0644\\u0628\\u0627\\u0642\\u064a \\u0644\\u0646\\u0627\"}'),
(80, 'please.enter.a.valid.tracking.number', '{\"x\":\"Please enter a valid tracking number\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0623\\u0643\\u062a\\u0628 \\u0631\\u0642\\u0645 \\u062a\\u062a\\u0628\\u0639 \\u0635\\u062d\\u064a\\u062d\"}'),
(81, 'tracking.numbers', '{\"x\":\"Tracking numbers\",\"ar\":\"\\u0623\\u0631\\u0642\\u0627\\u0645 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639\"}'),
(82, 'close.esc', '{\"x\":\"Close (Esc)\",\"ar\":\"\\u0625\\u063a\\u0644\\u0627\\u0642 (\\u0625\\u0644\\u063a\\u0627\\u0621)\"}'),
(83, 'top', '{\"x\":\"TOP\",\"ar\":\"\\u0625\\u0644\\u0649 \\u0623\\u0639\\u0644\\u0649\"}'),
(84, 'loading', '{\"x\":\"Loading ...\",\"ar\":\"\\u062c\\u0627\\u0631\\u064a \\u0627\\u0644\\u062a\\u062d\\u0645\\u064a\\u0644 ...\"}'),
(85, 'successfully.logged.in.you.are.being.redirect', '{\"x\":\"Successfully logged in, you are being redirect\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d\\u060c \\u062c\\u0627\\u0631\\u064a \\u062a\\u062d\\u0648\\u064a\\u0644\\u0643 \\u0627\\u0644\\u0622\\u0646\"}'),
(86, 'cool.password.recovery.instruction.has.been.sent.to.your.email', '{\"x\":\"Cool! Password recovery instruction has been sent to your email\",\"ar\":\"\\u0645\\u0645\\u062a\\u0627\\u0632! \\u0627\\u0644\\u0622\\u0646 \\u0633\\u0648\\u0641 \\u064a\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0623\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0644\\u0644\\u0628\\u0627\\u0633\\u0648\\u0631\\u062f \\u0639\\u0644\\u0649 \\u0628\\u0631\\u064a\\u062f\\u0643 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"}'),
(87, 'successfully.registered.you.are.being.redirect', '{\"x\":\"Successfully registered, you are being redirect\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d\\u060c \\u062c\\u0627\\u0631\\u064a \\u062a\\u062d\\u0648\\u064a\\u0644\\u0643 \\u0627\\u0644\\u0622\\u0646\"}'),
(88, 'shipment', '{\"x\":\"shipment\",\"ar\":\"\\u0634\\u062d\\u0646\\u0647\"}'),
(89, 'approved.list', '{\"x\":\"Approved List\",\"ar\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0642\\u0628\\u0648\\u0644\\u064a\\u0646\"}'),
(90, 'in.stock.list', '{\"x\":\"In Stock List\",\"ar\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0628\\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\"}'),
(91, 'delivered.list', '{\"x\":\"Delivered List\",\"ar\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u064f\\u0633\\u062a\\u0644\\u0645\"}'),
(92, 'new.shipment.request', '{\"x\":\"New Shipment Request\",\"ar\":\"\\u0637\\u0644\\u0628 \\u0634\\u062d\\u0646 \\u062c\\u062f\\u064a\\u062f\"}'),
(93, 'view', '{\"x\":\"View\",\"ar\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629\"}'),
(94, 'summary', '{\"x\":\"Summary\",\"ar\":\"\\u0645\\u0644\\u062e\\u0635\"}'),
(95, 'statistical.summary', '{\"x\":\"Statistical summary\",\"ar\":\"\\u0645\\u0644\\u062e\\u0635 \\u0623\\u062d\\u0635\\u0627\\u0626\\u064a\"}'),
(96, 'last.month.summary', '{\"x\":\"Last Month Summary\",\"ar\":\"\\u0645\\u0644\\u062e\\u0635 \\u0627\\u062e\\u0631 \\u0634\\u0647\\u0631\"}'),
(97, 'consolidated.list', '{\"x\":\"Consolidated List\",\"ar\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f\\u064a\\u0646\"}'),
(98, 'all.shipments', '{\"x\":\"All Shipments\",\"ar\":\"\\u0643\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(99, 'delayed.shipments', '{\"x\":\"Delayed Shipments\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0623\\u062e\\u0631\\u0629\"}'),
(100, 'pre.alert.to.approve', '{\"x\":\"Pre Alert to Approve\",\"ar\":\"\\u0641\\u064a \\u0625\\u0646\\u062a\\u0638\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629\"}'),
(101, 'pickup.list', '{\"x\":\"Pickup List\",\"ar\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0625\\u0633\\u062a\\u0644\\u0627\\u0645 (\\u0627\\u0644\\u0628\\u064a\\u0643 \\u0623\\u0628)\"}'),
(102, 'delivered', '{\"x\":\"Delivered\",\"ar\":\"\\u0645\\u064f\\u0633\\u062a\\u0644\\u0645\"}'),
(103, 'new.customers', '{\"x\":\"New Customers\",\"ar\":\"\\u0639\\u0645\\u0644\\u0627\\u0621 \\u062c\\u062f\\u062f\"}'),
(104, 'pending.payments', '{\"x\":\"Pending Payments\",\"ar\":\"\\u062f\\u064f\\u0641\\u0639\\u0627\\u062a \\u0645\\u064f\\u0639\\u0644\\u0642\\u0629\"}'),
(105, 'current.month.sales', '{\"x\":\"Current Month Sales\",\"ar\":\"\\u0645\\u0628\\u064a\\u0639\\u0627\\u062a \\u0627\\u0644\\u0634\\u0647\\u0631 \\u0627\\u0644\\u062d\\u0627\\u0644\\u064a\"}'),
(106, 'delayed.shipping.percentage', '{\"x\":\"Delayed Shipping Percentage\",\"ar\":\"\\u0646\\u0633\\u0628\\u0629 \\u062a\\u0623\\u062e\\u064a\\u0631 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(107, 'latest.shipments', '{\"x\":\"Latest shipments\",\"ar\":\"\\u0622\\u062e\\u0631 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(108, 'please.wait', '{\"x\":\"Please wait\",\"ar\":\"\\u0627\\u0646\\u062a\\u0638\\u0631 \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643\"}'),
(109, 'no.records.found', '{\"x\":\"No records found\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0625\\u064a\\u062c\\u0627\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\"}'),
(110, 'first', '{\"x\":\"First\",\"ar\":\"\\u0627\\u0644\\u0623\\u0648\\u0644\"}'),
(111, 'previous', '{\"x\":\"Previous\",\"ar\":\"\\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\"}'),
(112, 'last', '{\"x\":\"Last\",\"ar\":\"\\u0622\\u062e\\u0631\"}'),
(113, 'more.pages', '{\"x\":\"More pages\",\"ar\":\"\\u0627\\u0644\\u0645\\u0632\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0627\\u062a\"}'),
(114, 'page.number', '{\"x\":\"Page number\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629\"}'),
(115, 'select.page.size', '{\"x\":\"Select page size\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631 \\u062d\\u062c\\u0645 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629\"}'),
(116, 'displaying', '{\"x\":\"Displaying\",\"ar\":\"\\u0639\\u0631\\u0636\"}'),
(117, 'of', '{\"x\":\"of\",\"ar\":\"\\u0645\\u0646\"}'),
(118, 'records', '{\"x\":\"records\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\"}'),
(119, 'tracking', '{\"x\":\"Tracking\",\"ar\":\"\\u0627\\u0644\\u062a\\u062a\\u0628\\u0639\"}'),
(120, 'shipment.details', '{\"x\":\"Shipment Details\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(121, 'sender', '{\"x\":\"Sender\",\"ar\":\"\\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(122, 'from', '{\"x\":\"From\",\"ar\":\"\\u0645\\u0646\"}'),
(123, 'receiver', '{\"x\":\"Receiver\",\"ar\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(124, 'to', '{\"x\":\"To\",\"ar\":\"\\u0625\\u0644\\u0649\"}'),
(125, 'branch', '{\"x\":\"Branch\",\"ar\":\"\\u0641\\u0631\\u0639\"}'),
(126, 'status', '{\"x\":\"Status\",\"ar\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629\"}'),
(127, 'saved', '{\"x\":\"Saved\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0641\\u0638\"}'),
(128, 'delayed', '{\"x\":\"Delayed\",\"ar\":\"\\u062a\\u0623\\u062e\\u0631\\u062a\"}'),
(129, 'returning.discards', '{\"x\":\"Returning Discards\",\"ar\":\"\\u0631\\u062f \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\"}'),
(130, 'supplied', '{\"x\":\"Supplied\",\"ar\":\"\\u0645\\u0648\\u0631\\u062f\\u0629\"}'),
(131, 'date', '{\"x\":\"Date\",\"ar\":\"\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e\"}'),
(132, 'actions', '{\"x\":\"Actions\",\"ar\":\"\\u0627\\u0644\\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a\"}'),
(133, 'view.shipment', '{\"x\":\"View Shipment\",\"ar\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(134, 'edit.shipment', '{\"x\":\"Edit Shipment\",\"ar\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(135, 'print.shipment', '{\"x\":\"Print Shipment\",\"ar\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(136, 'print.label', '{\"x\":\"Print Label\",\"ar\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0643\\u0631\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(137, 'update.status', '{\"x\":\"Update Status\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u062d\\u0627\\u0644\\u0629\"}'),
(138, 'mark.as.delivered', '{\"x\":\"Mark as delivered\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062f \\u0643\\u0640\\u062a\\u0645 \\u0623\\u0633\\u062a\\u0644\\u0627\\u0645\\u0647\"}'),
(139, 'delete.shipment', '{\"x\":\"Delete Shipment\",\"ar\":\"\\u062d\\u0630\\u0641 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(140, 'are.you.sure.to.delete.this.item', '{\"x\":\"Are you sure to delete this item ?\",\"ar\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0630\\u0641\\u061f\"}'),
(141, 'yes.delete', '{\"x\":\"Yes, delete!\",\"ar\":\"\\u0646\\u0639\\u0645\\u060c \\u0625\\u062d\\u0630\\u0641!\"}'),
(142, 'no.cancel', '{\"x\":\"No, cancel\",\"ar\":\"\\u0644\\u0627\\u060c \\u0625\\u0644\\u063a\\u0627\\u0621\"}'),
(143, 'deleted', '{\"x\":\"Deleted!\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062d\\u0630\\u0641!\"}'),
(144, 'your.selected.record.has.been.deleted', '{\"x\":\"Your selected record has been deleted! :(\",\"ar\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0645\\u0627 \\u062a\\u0645 \\u0623\\u062e\\u062a\\u064a\\u0627\\u0631\\u0647!\"}'),
(145, 'ok', '{\"x\":\"OK\",\"ar\":\"\\u062d\\u0633\\u0646\\u0627\\u064b\"}'),
(146, 'cancelled', '{\"x\":\"Cancelled\",\"ar\":\"\\u0623\\u064f\\u0644\\u063a\\u064a\\u062a\"}'),
(147, 'you.selected.record.has.not.been.deleted', '{\"x\":\"You selected record has not been deleted! :)\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0627\\u0631!\"}'),
(148, 'view.all.shipments', '{\"x\":\"View All Shipments\",\"ar\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0643\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(149, 'january', '{\"x\":\"January\",\"ar\":\"\\u064a\\u0646\\u0627\\u064a\\u0631\"}'),
(150, 'february', '{\"x\":\"February\",\"ar\":\"\\u0641\\u0628\\u0631\\u0627\\u064a\\u0631\"}'),
(151, 'march', '{\"x\":\"March\",\"ar\":\"\\u0645\\u0627\\u0631\\u0633\"}'),
(152, 'april', '{\"x\":\"April\",\"ar\":\"\\u0623\\u0628\\u0631\\u064a\\u0644\"}'),
(153, 'may', '{\"x\":\"May\",\"ar\":\"\\u0645\\u0627\\u064a\\u0648\"}'),
(154, 'june', '{\"x\":\"June\",\"ar\":\"\\u064a\\u0648\\u0646\\u064a\\u0648\"}'),
(155, 'july', '{\"x\":\"July\",\"ar\":\"\\u064a\\u0648\\u0644\\u064a\\u0648\"}'),
(156, 'august', '{\"x\":\"August\",\"ar\":\"\\u0623\\u063a\\u0633\\u0637\\u0633\"}'),
(157, 'september', '{\"x\":\"September\",\"ar\":\"\\u0633\\u0628\\u062a\\u0645\\u0628\\u0631\"}'),
(158, 'october', '{\"x\":\"October\",\"ar\":\"\\u0623\\u0643\\u062a\\u0648\\u0628\\u0631\"}'),
(159, 'november', '{\"x\":\"November\",\"ar\":\"\\u0646\\u0648\\u0641\\u0645\\u0628\\u0631\"}'),
(160, 'december', '{\"x\":\"December\",\"ar\":\"\\u062f\\u064a\\u0633\\u0645\\u0628\\u0631\"}'),
(161, 'today', '{\"x\":\"Today\",\"ar\":\"\\u0627\\u0644\\u064a\\u0648\\u0645\"}'),
(162, 'yesterday', '{\"x\":\"Yesterday\",\"ar\":\"\\u0623\\u0645\\u0633\"}'),
(163, 'apply', '{\"x\":\"Apply\",\"ar\":\"\\u062a\\u0637\\u0628\\u064a\\u0642\"}'),
(164, 'cancel', '{\"x\":\"Cancel\",\"ar\":\"\\u0625\\u0644\\u063a\\u0627\\u0621\"}'),
(165, 'custom', '{\"x\":\"Custom\",\"ar\":\"\\u063a\\u064a\\u0631 \\u0630\\u0644\\u0643\"}'),
(166, 'su', '{\"x\":\"Su\",\"ar\":\"\\u0623\\u062d\\u062f\"}'),
(167, 'mo', '{\"x\":\"Mo\",\"ar\":\"\\u0623\\u062b\\u0646\\u064a\\u0646\"}'),
(168, 'tu', '{\"x\":\"Tu\",\"ar\":\"\\u062b\\u0644\\u0627\\u062b\"}'),
(169, 'we', '{\"x\":\"We\",\"ar\":\"\\u0623\\u0631\\u0628\\u0639\"}'),
(170, 'th', '{\"x\":\"Th\",\"ar\":\"\\u062e\\u0645\\u064a\\u0633\"}'),
(171, 'fr', '{\"x\":\"Fr\",\"ar\":\"\\u062c\\u0645\\u0639\\u0629\"}'),
(172, 'sa', '{\"x\":\"Sa\",\"ar\":\"\\u0633\\u0628\\u062a\"}'),
(173, 'last.7.days', '{\"x\":\"Last 7 Days\",\"ar\":\"\\u0622\\u062e\\u0631 \\u0667 \\u0623\\u064a\\u0627\\u0645\"}'),
(174, 'last.30.days', '{\"x\":\"Last 30 Days\",\"ar\":\"\\u0622\\u062e\\u0631 \\u0663\\u0660 \\u064a\\u0648\\u0645\"}'),
(175, 'this.month', '{\"x\":\"This Month\",\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0634\\u0647\\u0631\"}'),
(176, 'last.month', '{\"x\":\"Last Month\",\"ar\":\"\\u0627\\u0644\\u0634\\u0647\\u0631 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a\"}'),
(177, 'month', '{\"x\":\"Month\",\"ar\":\"\\u0634\\u0647\\u0631\"}'),
(178, 'value', '{\"x\":\"Value\",\"ar\":\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629\"}'),
(179, 'dashboard', '{\"x\":\"Dashboard\",\"ar\":\"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645\"}'),
(180, 'welcome.back', '{\"x\":\"Welcome back\",\"ar\":\"\\u0645\\u0631\\u062d\\u0628\\u0627\\u064b \\u0628\\u0643 \\u0645\\u0631\\u0647 \\u0623\\u062e\\u0631\\u0649\"}'),
(181, 'new.shipment', '{\"x\":\"New Shipment\",\"ar\":\"\\u0634\\u062d\\u0646\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(182, 'shipments.list', '{\"x\":\"Shipments List\",\"ar\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(183, 'new.requests', '{\"x\":\"New Requests\",\"ar\":\"\\u0637\\u0644\\u0628\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(184, 'approved', '{\"x\":\"Approved\",\"ar\":\"\\u0637\\u0644\\u0628\\u0627\\u062a \\u0645\\u0642\\u0628\\u0648\\u0644\\u0629\"}'),
(185, 'assigned', '{\"x\":\"Assigned\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0639\\u064a\\u064a\\u0646\\u0647\\u0627\"}'),
(186, 'delivered.to.driver', '{\"x\":\"Delivered To Driver\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0644\\u0644\\u0633\\u0627\\u0626\\u0642\"}'),
(187, 'in.stock', '{\"x\":\"In Stock\",\"ar\":\"\\u0628\\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\"}'),
(188, 'postponed', '{\"x\":\"Postponed\",\"ar\":\"\\u0645\\u0624\\u062c\\u0644\\u0629\"}'),
(189, 'customers.list', '{\"x\":\"Customers List\",\"ar\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621\"}'),
(190, 'employees.list', '{\"x\":\"Employees List\",\"ar\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\\u064a\\u0646\"}'),
(191, 'transactions', '{\"x\":\"Transactions\",\"ar\":\"\\u0627\\u0644\\u0645\\u0639\\u0627\\u0645\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629\"}'),
(192, 'reports', '{\"x\":\"Reports\",\"ar\":\"\\u0627\\u0644\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631\"}'),
(193, 'delivered.shipments', '{\"x\":\"Delivered Shipments\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u064f\\u0633\\u0644\\u0645\\u0629\"}'),
(194, 'deposited.transactions', '{\"x\":\"Deposited Transactions\",\"ar\":\"\\u0645\\u0639\\u0627\\u0645\\u0644\\u0627\\u062a \\u0627\\u0644\\u0627\\u064a\\u062f\\u0627\\u0639\"}'),
(195, 'withdrawn.transactions', '{\"x\":\"Withdrawn Transactions\",\"ar\":\"\\u0645\\u0639\\u0627\\u0645\\u0644\\u0627\\u062a \\u0627\\u0644\\u0633\\u062d\\u0628\"}'),
(196, 'settings', '{\"x\":\"Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a\"}'),
(197, 'quick.search', '{\"x\":\"quick search\",\"ar\":\"\\u0628\\u062d\\u062b \\u0633\\u0631\\u064a\\u0639\"}'),
(198, 'notifications', '{\"x\":\"Notifications\",\"ar\":\"\\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\"}'),
(199, 'new', '{\"x\":\"new\",\"ar\":\"\\u062c\\u062f\\u064a\\u062f\"}'),
(200, 'all.caught.up', '{\"x\":\"All caught up!\",\"ar\":\"\\u062a\\u0645 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0643\\u0644!\"}'),
(201, 'no.new.notifications', '{\"x\":\"No new notifications.\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(202, 'hi', '{\"x\":\"Hi\",\"ar\":\"\\u0645\\u0631\\u062d\\u0628\\u0627\\u064b\"}'),
(203, 'messages', '{\"x\":\"messages\",\"ar\":\"\\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644\",\"en\":\"Messages\"}'),
(204, 'my.profile', '{\"x\":\"My Profile\",\"ar\":\"\\u0645\\u0644\\u0641\\u064a \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\"}'),
(205, 'account.settings.and.more', '{\"x\":\"Account settings and more\",\"ar\":\"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628\"}'),
(206, 'customers.messages.from.website', '{\"x\":\"Customers messages from website\",\"ar\":\"\\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0628\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\"}'),
(207, 'my.notifications', '{\"x\":\"My Notifications\",\"ar\":\"\\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\\u064a\"}'),
(208, 'all.pervious.notifications', '{\"x\":\"all pervious notifications\",\"ar\":\"\\u0643\\u0644 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0633\\u0627\\u0628\\u0642\\u0629\"}'),
(209, 'my.tasks', '{\"x\":\"My Tasks\"}'),
(210, 'latest.tasks.and.requests', '{\"x\":\"latest tasks and requests\",\"ar\":\"\\u0622\\u062e\\u0631 \\u0627\\u0644\\u0645\\u0647\\u0645\\u0627\\u062a \\u0648\\u0627\\u0644\\u0637\\u0644\\u0628\\u0627\\u062a\"}'),
(211, 'billing', '{\"x\":\"Billing\"}'),
(212, 'billing.statements', '{\"x\":\"billing & statements\"}'),
(213, 'pending', '{\"x\":\"pending\",\"ar\":\"\\u0645\\u064f\\u0639\\u0644\\u0642\\u0629\"}'),
(214, 'sign.out', '{\"x\":\"Sign Out\",\"ar\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u062e\\u0631\\u0648\\u062c\"}'),
(215, 'upgrade.plan', '{\"x\":\"Upgrade Plan\"}'),
(216, 'overview.on.your.system', '{\"x\":\"Overview on your system\",\"ar\":\"\\u0646\\u0638\\u0631\\u0629 \\u0639\\u0627\\u0645\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\"}'),
(217, 'select.dashboard.daterange', '{\"x\":\"Select dashboard daterange\",\"ar\":\"\\u0627\\u062e\\u062a\\u0627\\u0631 \\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062d\\u0635\\u0627\\u0626\\u064a\\u0627\\u062a \\u0644\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645\"}'),
(218, 'powered.by.spotlayer', '{\"x\":\"Powered By Spotlayer\",\"ar\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u062d\\u0642\\u0648\\u0642 \\u0645\\u062d\\u0641\\u0648\\u0638\\u0629 \\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0633\\u0628\\u0648\\u062a \\u0644\\u0627\\u064a\\u0631\"}'),
(219, 'please.enter.a.valid.date', '{\"x\":\"Please enter a valid date\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0623\\u062f\\u062e\\u0644 \\u062a\\u0627\\u0631\\u064a\\u062e \\u0635\\u062d\\u064a\\u062d\"}'),
(220, 'nothing.selected', '{\"x\":\"Nothing selected\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0625\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0634\\u064a\\u0621\"}'),
(221, 'sunday', '{\"x\":\"Sunday\",\"ar\":\"\\u0627\\u0644\\u0623\\u062d\\u062f\"}'),
(222, 'monday', '{\"x\":\"Monday\",\"ar\":\"\\u0627\\u0644\\u0623\\u062b\\u0646\\u064a\\u0646\"}'),
(223, 'tuesday', '{\"x\":\"Tuesday\",\"ar\":\"\\u0627\\u0644\\u062b\\u0644\\u0627\\u062b\\u0627\\u0621\"}'),
(224, 'wednesday', '{\"x\":\"Wednesday\",\"ar\":\"\\u0627\\u0644\\u0623\\u0631\\u0628\\u0639\\u0627\\u0621\"}'),
(225, 'thursday', '{\"x\":\"Thursday\",\"ar\":\"\\u0627\\u0644\\u062e\\u0645\\u064a\\u0633\"}'),
(226, 'friday', '{\"x\":\"Friday\",\"ar\":\"\\u0627\\u0644\\u062c\\u0645\\u0639\\u0629\"}'),
(227, 'saturday', '{\"x\":\"Saturday\",\"ar\":\"\\u0627\\u0644\\u0633\\u0628\\u062a\"}'),
(228, 'sun', '{\"x\":\"Sun\",\"ar\":\"\\u062d\\u062f\"}'),
(229, 'mon', '{\"x\":\"Mon\",\"ar\":\"\\u0623\\u062b\\u0646\\u064a\\u0646\"}'),
(230, 'tue', '{\"x\":\"Tue\",\"ar\":\"\\u062b\\u0644\\u0627\\u062b\"}'),
(231, 'wed', '{\"x\":\"Wed\",\"ar\":\"\\u0623\\u0631\\u0628\\u0639\"}'),
(232, 'thu', '{\"x\":\"Thu\",\"ar\":\"\\u062e\\u0645\\u064a\\u0633\"}'),
(233, 'fri', '{\"x\":\"Fri\",\"ar\":\"\\u062c\\u0645\\u0639\\u0629\"}'),
(234, 'sat', '{\"x\":\"Sat\",\"ar\":\"\\u0633\\u0628\\u062a\"}'),
(235, 'jan', '{\"x\":\"Jan\",\"ar\":\"\\u064a\\u0646\\u0627\"}'),
(236, 'feb', '{\"x\":\"Feb\",\"ar\":\"\\u0641\\u0628\\u0631\"}'),
(237, 'mar', '{\"x\":\"Mar\",\"ar\":\"\\u0645\\u0627\\u0631\"}'),
(238, 'apr', '{\"x\":\"Apr\",\"ar\":\"\\u0623\\u0628\\u0631\"}'),
(239, 'jun', '{\"x\":\"Jun\",\"ar\":\"\\u064a\\u0648\\u0646\"}'),
(240, 'jul', '{\"x\":\"Jul\",\"ar\":\"\\u064a\\u0648\\u0644\"}'),
(241, 'aug', '{\"x\":\"Aug\",\"ar\":\"\\u0623\\u063a\\u0633\"}'),
(242, 'sep', '{\"x\":\"Sep\",\"ar\":\"\\u0633\\u0628\\u062a\"}'),
(243, 'oct', '{\"x\":\"Oct\",\"ar\":\"\\u0623\\u0643\\u062a\"}'),
(244, 'nov', '{\"x\":\"Nov\",\"ar\":\"\\u0646\\u0648\\u0641\"}'),
(245, 'dec', '{\"x\":\"Dec\",\"ar\":\"\\u062f\\u064a\\u0633\"}'),
(246, 'clear', '{\"x\":\"Clear\",\"ar\":\"\\u0645\\u0633\\u062d\"}'),
(247, 'connection.error.pleae.try.again.later', '{\"x\":\"Connection error. Pleae try again later\",\"ar\":\"\\u062e\\u0637\\u0623 \\u0641\\u064a \\u0627\\u0644\\u0625\\u062a\\u0635\\u0627\\u0644. \\u0627\\u0644\\u0631\\u062c\\u0627\\u0621 \\u0645\\u0639\\u0627\\u0648\\u062f\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0644\\u0629 \\u0641\\u064a \\u0648\\u0642\\u062a \\u0644\\u0627\\u062d\\u0642\"}'),
(248, 'system.configuration', '{\"x\":\"System Configuration\",\"ar\":\"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\"}'),
(249, 'setup.company', '{\"x\":\"Setup Company\",\"ar\":\"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(250, 'taxes.and.fees', '{\"x\":\"Taxes and fees\",\"ar\":\"\\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628 \\u0648\\u0627\\u0644\\u0631\\u0633\\u0648\\u0645\"}'),
(251, 'tracking.and.invoice', '{\"x\":\"Tracking and Invoice\",\"ar\":\"\\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0648\\u0627\\u0644\\u062a\\u062a\\u0628\\u0639\"}'),
(252, 'definitions', '{\"x\":\"Definitions\",\"ar\":\"\\u0627\\u0644\\u062a\\u0639\\u0631\\u064a\\u0641\\u0627\\u062a\"}'),
(253, 'branches', '{\"x\":\"Branches\",\"ar\":\"\\u0641\\u0631\\u0648\\u0639\"}'),
(254, 'treasury', '{\"x\":\"Treasury\",\"ar\":\"\\u0627\\u0644\\u062e\\u0632\\u064a\\u0646\\u0629\"}'),
(255, 'delivery.times', '{\"x\":\"Delivery Times\",\"ar\":\"\\u0623\\u0648\\u0642\\u0627\\u062a \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(256, 'courier.company', '{\"x\":\"Courier Company\",\"ar\":\"\\u0634\\u0631\\u0643\\u0629 \\u0634\\u062d\\u0646\"}'),
(257, 'shipping.mode', '{\"x\":\"Shipping Mode\",\"ar\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(258, 'payment.methods', '{\"x\":\"Payment Methods\",\"ar\":\"\\u0637\\u0631\\u0642 \\u0627\\u0644\\u062f\\u0641\\u0639\"}'),
(259, 'packaging.type', '{\"x\":\"Packaging Type\",\"ar\":\"\\u0623\\u0646\\u0648\\u0627\\u0639 \\u0627\\u0644\\u062a\\u063a\\u0644\\u064a\\u0641\"}'),
(260, 'statuses', '{\"x\":\"Statuses\",\"ar\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0627\\u062a\"}'),
(261, 'item.categories', '{\"x\":\"Item Categories\",\"ar\":\"\\u0623\\u0642\\u0633\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631\"}'),
(262, 'cars', '{\"x\":\"Cars\",\"ar\":\"\\u0627\\u0644\\u0633\\u064a\\u0627\\u0631\\u0627\\u062a\"}'),
(263, 'container', '{\"x\":\"Container\",\"ar\":\"\\u062d\\u0627\\u0648\\u064a\\u0629\"}'),
(264, 'lines', '{\"x\":\"Lines\"}'),
(265, 'incoterms', '{\"x\":\"Incoterms\"}'),
(266, 'places', '{\"x\":\"Places\",\"ar\":\"\\u0627\\u0644\\u0623\\u0645\\u0627\\u0643\\u0646\"}'),
(267, 'countries', '{\"x\":\"Countries\",\"ar\":\"\\u0627\\u0644\\u062f\\u0648\\u0644\"}'),
(268, 'states', '{\"x\":\"States\",\"ar\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0627\\u062a\"}'),
(269, 'cities', '{\"x\":\"Cities\",\"ar\":\"\\u0627\\u0644\\u0645\\u062f\\u0646\"}'),
(270, 'areas', '{\"x\":\"Areas\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0627\\u0637\\u0642\"}'),
(271, 'components', '{\"x\":\"Components\",\"ar\":\"\\u0625\\u0636\\u0627\\u0641\\u0627\\u062a\"}'),
(272, 'sms.setup', '{\"x\":\"SMS Setup\",\"ar\":\"\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(273, 'call.verify', '{\"x\":\"Call Verify\",\"ar\":\"\\u0627\\u0644\\u062a\\u0623\\u0643\\u064a\\u062f \\u0628\\u0627\\u0644\\u0623\\u062a\\u0635\\u0627\\u0644\"}'),
(274, 'live.chat', '{\"x\":\"Live Chat\"}'),
(275, 'google.apis', '{\"x\":\"Google APIs\"}'),
(276, 'templates', '{\"x\":\"Templates\",\"ar\":\"\\u0627\\u0644\\u0642\\u0648\\u0627\\u0644\\u0628\"}'),
(277, 'email.templates', '{\"x\":\"Email Templates\",\"ar\":\"\\u0642\\u0648\\u0627\\u0644\\u0628 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"}'),
(278, 'sms.templates', '{\"x\":\"SMS Templates\",\"ar\":\"\\u0642\\u0648\\u0627\\u0644\\u0628 \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u062c\\u0648\\u0627\\u0644\"}'),
(279, 'website.management', '{\"x\":\"Website Management\"}'),
(280, 'website.plugins', '{\"x\":\"Website Plugins\"}'),
(281, 'website.builder', '{\"x\":\"Website Builder\"}'),
(282, 'employees', '{\"x\":\"Employees\",\"ar\":\"\\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\\u064a\\u0646\"}'),
(283, 'departments', '{\"x\":\"Departments\",\"ar\":\"\\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\"}'),
(284, 'localizations', '{\"x\":\"Localizations\",\"ar\":\"\\u0627\\u0644\\u062a\\u0639\\u0631\\u064a\\u0628\"}'),
(285, 'translate', '{\"x\":\"Translate\",\"ar\":\"\\u062a\\u0631\\u062c\\u0645\\u0629\"}'),
(286, 'currencies', '{\"x\":\"Currencies\",\"ar\":\"\\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u062a\"}'),
(287, 'data.backup', '{\"x\":\"Data Backup\",\"ar\":\"\\u0627\\u0644\\u0646\\u0633\\u062e \\u0627\\u0644\\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\"}'),
(288, 'oh.snap.change.a.few.things.up.and.try.submitting.again', '{\"x\":\"Oh snap! Change a few things up and try submitting again.\",\"ar\":\"\\u064a\\u0627 \\u0627\\u0644\\u0645\\u0641\\u0627\\u062c\\u0626\\u0629! \\u062c\\u0631\\u0628 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u0634\\u064a\\u0627\\u0621 \\u0648\\u062d\\u0627\\u0648\\u0644 \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649.\"}'),
(289, 'general', '{\"x\":\"General\",\"ar\":\"\\u0639\\u0627\\u0645\"}'),
(290, 'default.language', '{\"x\":\"Default Language\",\"ar\":\"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629\"}'),
(291, 'timezone', '{\"x\":\"TimeZone\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u0632\\u0645\\u0646\\u064a\\u0629\"}'),
(292, 'eniwetok.kwajalein', '{\"x\":\"Eniwetok, Kwajalein\"}'),
(293, 'midway.island.samoa', '{\"x\":\"Midway Island, Samoa\"}'),
(294, 'hawaii', '{\"x\":\"Hawaii\"}'),
(295, 'taiohae', '{\"x\":\"Taiohae\"}'),
(296, 'alaska', '{\"x\":\"Alaska\"}'),
(297, 'pacific.time.us.amp.canada', '{\"x\":\"Pacific Time (US &amp; Canada)\"}'),
(298, 'mountain.time.us.amp.canada', '{\"x\":\"Mountain Time (US &amp; Canada)\"}'),
(299, 'central.time.us.amp.canada.mexico.city', '{\"x\":\"Central Time (US &amp; Canada), Mexico City\"}'),
(300, 'eastern.time.us.amp.canada.bogota.lima', '{\"x\":\"Eastern Time (US &amp; Canada), Bogota, Lima\"}'),
(301, 'caracas', '{\"x\":\"Caracas\"}'),
(302, 'atlantic.time.canada.caracas.la.paz', '{\"x\":\"Atlantic Time (Canada), Caracas, La Paz\"}'),
(303, 'newfoundland', '{\"x\":\"Newfoundland\"}'),
(304, 'brazil.buenos.aires.georgetown', '{\"x\":\"Brazil, Buenos Aires, Georgetown\"}'),
(305, 'mid.atlantic', '{\"x\":\"Mid-Atlantic\"}'),
(306, 'azores.cape.verde.islands', '{\"x\":\"Azores, Cape Verde Islands\"}'),
(307, 'brussels.copenhagen.madrid.paris', '{\"x\":\"Brussels, Copenhagen, Madrid, Paris\"}'),
(308, 'cairo.kaliningrad.south.africa', '{\"x\":\"Cairo, Kaliningrad, South Africa\"}'),
(309, 'baghdad.riyadh.moscow.st.petersburg', '{\"x\":\"Baghdad, Riyadh, Moscow, St. Petersburg\"}'),
(310, 'tehran', '{\"x\":\"Tehran\"}'),
(311, 'abu.dhabi.muscat.baku.tbilisi', '{\"x\":\"Abu Dhabi, Muscat, Baku, Tbilisi\"}'),
(312, 'kabul', '{\"x\":\"Kabul\"}'),
(313, 'ekaterinburg.islamabad.karachi.tashkent', '{\"x\":\"Ekaterinburg, Islamabad, Karachi, Tashkent\"}'),
(314, 'bombay.calcutta.madras.new.delhi', '{\"x\":\"Bombay, Calcutta, Madras, New Delhi\"}'),
(315, 'kathmandu.pokhara', '{\"x\":\"Kathmandu, Pokhara\"}'),
(316, 'almaty.dhaka.colombo', '{\"x\":\"Almaty, Dhaka, Colombo\"}'),
(317, 'yangon.mandalay', '{\"x\":\"Yangon, Mandalay\"}'),
(318, 'bangkok.hanoi.jakarta', '{\"x\":\"Bangkok, Hanoi, Jakarta\"}'),
(319, 'beijing.perth.singapore.hong.kong', '{\"x\":\"Beijing, Perth, Singapore, Hong Kong\"}'),
(320, 'eucla', '{\"x\":\"Eucla\"}'),
(321, 'tokyo.seoul.osaka.sapporo.yakutsk', '{\"x\":\"Tokyo, Seoul, Osaka, Sapporo, Yakutsk\"}'),
(322, 'adelaide.darwin', '{\"x\":\"Adelaide, Darwin\"}'),
(323, 'eastern.australia.guam.vladivostok', '{\"x\":\"Eastern Australia, Guam, Vladivostok\"}'),
(324, 'lord.howe.island', '{\"x\":\"Lord Howe Island\"}'),
(325, 'magadan.solomon.islands.new.caledonia', '{\"x\":\"Magadan, Solomon Islands, New Caledonia\"}'),
(326, 'norfolk.island', '{\"x\":\"Norfolk Island\"}'),
(327, 'auckland.wellington.fiji.kamchatka', '{\"x\":\"Auckland, Wellington, Fiji, Kamchatka\"}'),
(328, 'chatham.islands', '{\"x\":\"Chatham Islands\"}'),
(329, 'apia.nukualofa', '{\"x\":\"Apia, Nukualofa\"}'),
(330, 'line.islands.tokelau', '{\"x\":\"Line Islands, Tokelau\"}'),
(331, 'date.format', '{\"x\":\"Date Format\",\"ar\":\"\\u0634\\u0643\\u0644 \\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e\"}'),
(332, 'currency', '{\"x\":\"Currency\",\"ar\":\"\\u0627\\u0644\\u0639\\u0645\\u0644\\u0629\"}'),
(333, 'place.symbol.before.number', '{\"x\":\"Place symbol before number\",\"ar\":\"\\u0636\\u0639 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0631\\u0642\\u0645\"}'),
(334, 'place.symbol.with.space', '{\"x\":\"Place symbol with space\",\"ar\":\"\\u0636\\u0639 \\u0645\\u0633\\u0627\\u0641\\u0629 \\u0645\\u0639 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629\"}'),
(335, 'decimal.point', '{\"x\":\"Decimal Point\",\"ar\":\"\\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0634\\u0631\\u064a\\u0629\"}'),
(336, 'character.to.use.as.decimal.point', '{\"x\":\"Character to use as decimal point\",\"ar\":\"\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u0623\\u0631\\u0642\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0634\\u0631\\u064a\\u0629.\"}'),
(337, 'thousand.separator', '{\"x\":\"Thousand Separator\",\"ar\":\"\\u0641\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0641\"}'),
(338, 'character.to.separate.thousands', '{\"x\":\"Character to separate thousands\",\"ar\":\"\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0644\\u0641\\u0635\\u0644 \\u0627\\u0644\\u0623\\u0631\\u0642\\u0627\\u0645 \\u0628\\u0639\\u062f \\u0641\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0627\\u0644\\u0641.\"}'),
(339, 'number.of.fraction.digits', '{\"x\":\"Number of fraction digits\",\"ar\":\"\\u0645\\u0646\\u0632\\u0644\\u0629 \\u0639\\u0634\\u0631\\u064a\\u0629\"}'),
(340, 'save', '{\"x\":\"Save\",\"ar\":\"\\u062d\\u0641\\u0638\"}'),
(341, 'are.you.sure.to.update', '{\"x\":\"Are you sure to update\",\"ar\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644\"}'),
(342, 'selected.records.status.to', '{\"x\":\"selected records status to\"}'),
(343, 'yes.update', '{\"x\":\"Yes, update\",\"ar\":\"\\u0646\\u0639\\u0645\\u060c \\u062a\\u062d\\u062f\\u064a\\u062b\"}'),
(344, 'your.selected.records.statuses.have.been.updated', '{\"x\":\"Your selected records statuses have been updated\",\"ar\":\"\\u062d\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0627\\u0631\\u0629 \\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627\"}'),
(345, 'you.selected.records.statuses.have.not.been.updated', '{\"x\":\"You selected records statuses have not been updated\",\"ar\":\"\\u062d\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0627\\u0631\\u0629 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0647\\u0627\"}'),
(346, 'are.you.sure.to.delete', '{\"x\":\"Are you sure to delete\",\"ar\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u062d\\u0630\\u0641\"}');
INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(347, 'selected.records', '{\"x\":\"selected records ?\",\"ar\":\"\\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u062e\\u062a\\u0627\\u0631\\u0629\\u061f\"}'),
(348, 'your.selected.records.have.been.deleted', '{\"x\":\"Your selected records have been deleted! :(\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u064f\\u062e\\u062a\\u0627\\u0631\\u0629\"}'),
(349, 'you.selected.records.have.not.been.deleted', '{\"x\":\"You selected records have not been deleted! :)\",\"ar\":\"\\u062a\\u0645 \\u062d\\u0630\\u0641 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u064f\\u062e\\u062a\\u0627\\u0631\\u0629! :)\"}'),
(350, 'total', '{\"x\":\"Total\",\"ar\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a\"}'),
(351, 'company.settings', '{\"x\":\"Company - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(352, 'website.name', '{\"x\":\"Website Name\",\"ar\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\"}'),
(353, 'website.charset', '{\"x\":\"Website charset\",\"ar\":\"Charset\"}'),
(354, 'website.description', '{\"x\":\"Website Description\",\"ar\":\"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\"}'),
(355, 'website.keywords', '{\"x\":\"Website Keywords\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0627\\u0644\\u062f\\u0644\\u0627\\u0644\\u064a\\u0629\"}'),
(356, 'type', '{\"x\":\"type\",\"ar\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\"}'),
(357, 'seprate.with.comma', '{\"x\":\"Seprate with comma\",\"ar\":\"\\u0627\\u0641\\u0635\\u0644 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0643\\u0644\\u0645\\u0627\\u062a \\u0628\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0631\\u0642\\u0645\\u064a\\u0647\"}'),
(358, 'primary.email', '{\"x\":\"Primary Email\",\"ar\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0627\\u0644\\u0631\\u0633\\u0645\\u064a\"}'),
(359, 'this.is.the.main.email.notices.will.be.sent.to.it.is.also.used.as.the.from.email.when.emailing.other.automatic.emails', '{\"x\":\"This is the main email notices will be sent to. It is also used as the from email when emailing other automatic emails\",\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0630\\u064a \\u0633\\u064a\\u062a\\u0633\\u0644\\u0645 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\\u060c \\u0648\\u0623\\u064a\\u0636\\u0627\\u064b \\u0633\\u064a\\u062a\\u0645 \\u0623\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0647 \\u0641\\u0649 \\u0643\\u0644 \\u0627\\u0644\\u0645\\u0631\\u0627\\u0633\\u0644\\u0627\\u062a \\u0648\\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u064a\\u062a\\u0645 \\u0623\\u0631\\u0633\\u0627\\u0644\\u0647\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a\\u0627\\u064b\"}'),
(360, 'tax.identification.number', '{\"x\":\"Tax Identification Number\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628 \\u0627\\u0644\\u062a\\u0639\\u0631\\u064a\\u0641\\u064a\"}'),
(361, 'company.phone', '{\"x\":\"Company Phone\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(362, 'phone', '{\"x\":\"Phone\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0647\\u0627\\u062a\\u0641\"}'),
(363, 'company.phone.2', '{\"x\":\"Company Phone 2\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0662\"}'),
(364, 'company.phone.3', '{\"x\":\"Company Phone 3\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0663\"}'),
(365, 'company.official.address', '{\"x\":\"Company Official Address\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0631\\u0633\\u0645\\u064a \\u0644\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(366, '21.ahmed.el.zomor', '{\"x\":\"21 Ahmed El-Zomor\"}'),
(367, 'google.map', '{\"x\":\"Google Map\",\"ar\":\"\\u062e\\u0631\\u064a\\u0637\\u0629 \\u062c\\u0648\\u062c\\u0644\"}'),
(368, 'change.the.pin.to.select.the.right.location', '{\"x\":\"Change the pin to select the right location\",\"ar\":\"\\u064a\\u0645\\u0643\\u0646\\u0643 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0644\\u062a\\u062d\\u062f\\u064a\\u062f \\u0635\\u062d\\u064a\\u062d \\u0644\\u0644\\u0645\\u0643\\u0627\\u0646\"}'),
(369, 'county', '{\"x\":\"County\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629\"}'),
(370, 'al.hay.al.asher', '{\"x\":\"Al Hay Al Asher\"}'),
(371, 'city', '{\"x\":\"City\",\"ar\":\"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629\"}'),
(372, 'nasr.city', '{\"x\":\"Nasr City\"}'),
(373, 'state.region', '{\"x\":\"State \\/ Region\",\"ar\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629\"}'),
(374, 'cairo.governorate', '{\"x\":\"Cairo Governorate\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\"}'),
(375, 'postal.code', '{\"x\":\"Postal Code\",\"ar\":\"\\u0643\\u0648\\u062f \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f\"}'),
(376, '11787', '{\"x\":\"11787\"}'),
(377, 'country', '{\"x\":\"Country\",\"ar\":\"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629\"}'),
(378, 'egypt', '{\"x\":\"Egypt\",\"ar\":\"\\u0645\\u0635\\u0631\"}'),
(379, 'company.logo', '{\"x\":\"Company Logo\",\"ar\":\"\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(380, 'perfered.size', '{\"x\":\"Perfered Size\",\"ar\":\"\\u0627\\u0644\\u062d\\u062c\\u0645 \\u0627\\u0644\\u0645\\u064f\\u0641\\u0636\\u0644\"}'),
(381, 'mobile.logo', '{\"x\":\"Mobile Logo\",\"ar\":\"\\u0627\\u0644\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(382, 'max.height', '{\"x\":\"Max Height\",\"ar\":\"\\u0623\\u0642\\u0635\\u0649 \\u0623\\u0631\\u062a\\u0641\\u0627\\u0639\"}'),
(383, 'company.favicon', '{\"x\":\"Company Favicon\",\"ar\":\"\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0640Favicon\"}'),
(384, 'size', '{\"x\":\"Size\",\"ar\":\"\\u0627\\u0644\\u062d\\u062c\\u0645\"}'),
(385, 'languages.settings', '{\"x\":\"Languages - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0644\\u063a\\u0627\\u062a\"}'),
(386, 'name', '{\"x\":\"Name\",\"ar\":\"\\u0627\\u0644\\u0623\\u0633\\u0645\"}'),
(387, 'code', '{\"x\":\"Code\",\"ar\":\"\\u0627\\u0644\\u0643\\u0648\\u062f\"}'),
(388, 'enabled', '{\"x\":\"Enabled\",\"ar\":\"\\u0645\\u064f\\u0641\\u0639\\u0644\\u0629\"}'),
(389, 'yes', '{\"x\":\"Yes\",\"ar\":\"\\u0646\\u0639\\u0645\"}'),
(390, 'no', '{\"x\":\"No\",\"ar\":\"\\u0644\\u0627\"}'),
(391, 'default', '{\"x\":\"Default\",\"ar\":\"\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\"}'),
(392, 'edit', '{\"x\":\"Edit\",\"ar\":\"\\u062a\\u0639\\u062f\\u064a\\u0644\"}'),
(393, 'delete', '{\"x\":\"Delete\",\"ar\":\"\\u062d\\u0630\\u0641\"}'),
(394, 'selected', '{\"x\":\"Selected\",\"ar\":\"\\u062a\\u0645 \\u0623\\u062e\\u062a\\u064a\\u0627\\u0631\\u0647\\u0627\"}'),
(395, 'delete.all', '{\"x\":\"Delete All\",\"ar\":\"\\u062d\\u0630\\u0641 \\u0627\\u0644\\u0643\\u0644\"}'),
(396, 'add.new', '{\"x\":\"Add new\",\"ar\":\"\\u0623\\u0636\\u0641 \\u062c\\u062f\\u064a\\u062f\"}'),
(397, 'account', '{\"x\":\"ACCOUNT\",\"ar\":\"\\u0627\\u0644\\u062d\\u0633\\u0627\\u0628\"}'),
(398, 'profile', '{\"x\":\"Profile\",\"ar\":\"\\u0645\\u0644\\u0641 \\u0634\\u062e\\u0635\\u064a\"}'),
(399, 'logout', '{\"x\":\"Logout\",\"ar\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u062e\\u0631\\u0648\\u062d\"}'),
(400, 'create.new.language', '{\"x\":\"Create New Language\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0644\\u063a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(401, 'disabled.languages.will.not.be.available.in.the.front.end', '{\"x\":\"Disabled languages will not be available in the front-end\",\"ar\":\"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u063a\\u064a\\u0631 \\u0645\\u064f\\u0641\\u0639\\u0644\\u0629 \\u0644\\u0646 \\u062a\\u0638\\u0647\\u0631 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\"}'),
(402, 'the.default.language.represents.the.content.before.translation', '{\"x\":\"The default language represents the content before translation\",\"ar\":\"\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629 \\u062a\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062a\\u0631\\u062c\\u0645\\u0629\"}'),
(403, 'or', '{\"x\":\"or\",\"ar\":\"\\u0623\\u0648\"}'),
(404, 'update.language', '{\"x\":\"Update Language\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0644\\u063a\\u0629\"}'),
(405, 'shipment.information', '{\"x\":\"Shipment information\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(406, 'shipment.type', '{\"x\":\"Shipment Type\",\"ar\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(407, 'pickup', '{\"x\":\"Pickup\",\"ar\":\"\\u0625\\u0633\\u062a\\u0644\\u0627\\u0645 (\\u0628\\u064a\\u0643 \\u0623\\u0628)\"}'),
(408, 'for.door.to.door.delivery', '{\"x\":\"For door to door delivery\",\"ar\":\"\\u0644\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u0627\\u0628 \\u0644\\u0644\\u0628\\u0627\\u0628\"}'),
(409, 'drop.off', '{\"x\":\"Drop off\",\"ar\":\"\\u062a\\u0633\\u0644\\u064a\\u0645\"}'),
(410, 'for.delivery.package.from.office.directly', '{\"x\":\"For delivery package from office directly\",\"ar\":\"\\u0644\\u0644\\u0634\\u062d\\u0646 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629\\u064b\"}'),
(411, 'package.type', '{\"x\":\"Package Type\",\"ar\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062a\\u063a\\u0644\\u064a\\u0641\"}'),
(412, 'office', '{\"x\":\"Office\",\"ar\":\"\\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\"}'),
(413, 'shipping.date', '{\"x\":\"Shipping Date\",\"ar\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(414, 'sender.information', '{\"x\":\"Sender information\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(415, 'client', '{\"x\":\"Client\",\"ar\":\"\\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\"}'),
(416, 'choose.or.add.a.new.client.that.will.send.the.package', '{\"x\":\"Choose or add a new client that will send the package\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631 \\u0623\\u0648 \\u0623\\u0636\\u0641 \\u0639\\u0645\\u064a\\u0644 \\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u0630\\u064a \\u0633\\u064a\\u064f\\u0631\\u0633\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(417, 'sender.address', '{\"x\":\"Sender Address\",\"ar\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(418, 'client.address', '{\"x\":\"Client Address\",\"ar\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\"}'),
(419, 'please.select.sender.first', '{\"x\":\"Please select sender first\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0623\\u062e\\u062a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644 \\u0623\\u0648\\u0644\\u0627\\u064b\"}'),
(420, 'add.a.new.client', '{\"x\":\"Add a new client\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0645\\u064a\\u0644 \\u062c\\u062f\\u064a\\u062f\"}'),
(421, 'client.name', '{\"x\":\"Client Name\",\"ar\":\"\\u0623\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\"}'),
(422, 'mobile', '{\"x\":\"Mobile\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(423, 'gender', '{\"x\":\"Gender\",\"ar\":\"\\u0627\\u0644\\u0646\\u0648\\u0639\"}'),
(424, 'male', '{\"x\":\"Male\",\"ar\":\"\\u0630\\u0643\\u0631\"}'),
(425, 'female', '{\"x\":\"Female\",\"ar\":\"\\u0623\\u0646\\u062b\\u0649\"}'),
(426, 'address', '{\"x\":\"Address\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\"}'),
(427, 'please.select.country.first', '{\"x\":\"Please select country first\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0623\\u062e\\u062a\\u0627\\u0631 \\u0627\\u0644\\u062f\\u0648\\u0644\\u0629 \\u0623\\u0648\\u0644\\u0627\\u064b\"}'),
(428, 'please.select.state.first', '{\"x\":\"Please select state first\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0623\\u062e\\u062a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0623\\u0648\\u0644\\u0627\\u064b\"}'),
(429, 'please.select.city.first', '{\"x\":\"Please select city first\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0623\\u062e\\u062a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0623\\u0648\\u0644\\u0627\\u064b\"}'),
(430, 'connect.client', '{\"x\":\"Connect client\",\"ar\":\"\\u0631\\u0628\\u0637 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0628\\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(431, 'create.an.account.for.the.client', '{\"x\":\"create an account for the client\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u062d\\u0633\\u0627\\u0628 \\u0644\\u0644\\u0639\\u0645\\u064a\\u0644\"}'),
(432, 'add.a.new.client.address', '{\"x\":\"Add a new client address\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u062c\\u062f\\u064a\\u062f \\u0644\\u0644\\u0639\\u0645\\u064a\\u0644\"}'),
(433, 'payment.type', '{\"x\":\"Payment Type\",\"ar\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062f\\u0641\\u0639\"}'),
(434, 'postpaid', '{\"x\":\"Postpaid\",\"ar\":\"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0622\\u062c\\u0644\"}'),
(435, 'prepaid', '{\"x\":\"Prepaid\",\"ar\":\"\\u0645\\u0633\\u0628\\u0642\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639\"}'),
(436, 'record.receiver.information', '{\"x\":\"Record receiver information ?\",\"ar\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\\u061f\"}'),
(437, 'receiver.information', '{\"x\":\"Receiver information\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(438, 'choose.or.add.a.new.client.that.will.receive.the.package', '{\"x\":\"Choose or add a new client that will receive the package\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631 \\u0623\\u0648 \\u0623\\u0636\\u0641 \\u0639\\u0645\\u064a\\u0644 \\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u0630\\u064a \\u0633\\u064a\\u0633\\u062a\\u0644\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(439, 'receiver.address', '{\"x\":\"Receiver Address\",\"ar\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(440, 'please.select.receiver.first', '{\"x\":\"Please select receiver first\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0623\\u062e\\u062a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645 \\u0623\\u0648\\u0644\\u0627\\u064b\"}'),
(441, 'return.package.cost', '{\"x\":\"Return package cost\",\"ar\":\"\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0634\\u062d\\u0646 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\"}'),
(442, 'package.cost', '{\"x\":\"Package Cost\",\"ar\":\"\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(443, 'return.shipment.cost', '{\"x\":\"Return Shipment Cost\",\"ar\":\"\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0634\\u062d\\u0646 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\"}'),
(444, 'return.package.fees.responsiable', '{\"x\":\"Return package fees responsiable\",\"ar\":\"\\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0629 \\u0631\\u0633\\u0648\\u0645 \\u0634\\u062d\\u0646 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\",\"en\":\"Return package fees responsible\"}'),
(445, 'package.content', '{\"x\":\"Package Content\",\"ar\":\"\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(446, 'category', '{\"x\":\"Category\",\"ar\":\"\\u0627\\u0644\\u062a\\u0635\\u0646\\u064a\\u0641\"}'),
(447, 'description', '{\"x\":\"Description\",\"ar\":\"\\u0627\\u0644\\u0648\\u0635\\u0641\"}'),
(448, 'quantity', '{\"x\":\"Quantity\",\"ar\":\"\\u0627\\u0644\\u0639\\u062f\\u062f\"}'),
(449, 'weight', '{\"x\":\"Weight\",\"ar\":\"\\u0627\\u0644\\u0648\\u0632\\u0646\"}'),
(450, 'kg', '{\"x\":\"Kg\",\"ar\":\"\\u0643\\u062c\\u0645\"}'),
(451, 'dimensions', '{\"x\":\"Dimensions\",\"ar\":\"\\u0627\\u0644\\u0623\\u0628\\u0639\\u0627\\u062f\"}'),
(452, 'length', '{\"x\":\"Length\",\"ar\":\"\\u0627\\u0644\\u0639\\u0645\\u0642\"}'),
(453, 'width', '{\"x\":\"Width\",\"ar\":\"\\u0627\\u0644\\u0639\\u0631\\u0636\"}'),
(454, 'height', '{\"x\":\"Height\",\"ar\":\"\\u0627\\u0644\\u0637\\u0648\\u0644\"}'),
(455, 'cm', '{\"x\":\"cm\",\"ar\":\"\\u0633\\u0645\"}'),
(456, 'add.item', '{\"x\":\"Add Item\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0646\\u0635\\u0631\"}'),
(457, 'order.number', '{\"x\":\"Order Number\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628\"}'),
(458, 'tax', '{\"x\":\"Tax\",\"ar\":\"\\u0636\\u0631\\u0627\\u0626\\u0628\"}'),
(459, 'duty', '{\"x\":\"Duty\",\"ar\":\"\\u0625\\u0644\\u062a\\u0632\\u0627\\u0645\"}'),
(460, 'insurance', '{\"x\":\"Insurance\",\"ar\":\"\\u0627\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\"}'),
(461, 'customs.value', '{\"x\":\"Customs Value\",\"ar\":\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u062c\\u0645\\u0631\\u0643\\u064a\\u0629\"}'),
(462, 'shipping.fee', '{\"x\":\"Shipping Fee\",\"ar\":\"\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(463, 'delivery.time', '{\"x\":\"Delivery Time\",\"ar\":\"\\u0648\\u0642\\u062a \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(464, 'delivery.status', '{\"x\":\"Delivery Status\",\"ar\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(465, 'assign.employee', '{\"x\":\"Assign Employee\",\"ar\":\"\\u062a\\u0639\\u064a\\u064a\\u0646 \\u0645\\u0648\\u0638\\u0641\"}'),
(466, 'send', '{\"x\":\"Send\",\"ar\":\"\\u0625\\u0631\\u0633\\u0627\\u0644\"}'),
(467, 'this.mean.that.your.shipment.request.will.not.be.sent.to.the.company.it.will.be.just.saved.in.your.account.as.a.draft.so.you.can.edit.it.or.give.you.the.ability.to.add.all.your.shipments.and.then.send.them.all.to.the.company.at.once', '{\"x\":\"This mean that your shipment request will not be sent to the company, it will be just saved in your account as a draft so you can edit it or give you the ability to add all your shipments and then send them all to the company at once\",\"ar\":\"\\u0647\\u0630\\u0627 \\u064a\\u0639\\u0646\\u064a \\u0623\\u0646\\u0647 \\u0644\\u0646 \\u064a\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0643 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u060c \\u0641\\u0633\\u064a\\u062a\\u0645 \\u062d\\u0641\\u0638\\u0647 \\u0641\\u064a \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0643\\u0645\\u0633\\u0648\\u062f\\u0629 \\u062d\\u062a\\u0649 \\u064a\\u0645\\u0643\\u0646\\u0643 \\u062a\\u062d\\u0631\\u064a\\u0631\\u0647 \\u0623\\u0648 \\u0625\\u0639\\u0637\\u0627\\u0626\\u0643 \\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u062c\\u0645\\u064a\\u0639 \\u0634\\u062d\\u0646\\u0627\\u062a\\u0643 \\u062b\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644\\u0647\\u0627 \\u062c\\u0645\\u064a\\u0639\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0645\\u0631\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629\"}'),
(468, 'yes.just.save.it.as.a.draft', '{\"x\":\"Yes, Just save it as a draft\",\"ar\":\"\\u0646\\u0639\\u0645\\u060c \\u0623\\u062d\\u0641\\u0637\\u0647\\u0627 \\u0641\\u0642\\u0637 \\u0643\\u0645\\u0633\\u0648\\u062f\\u0629\"}'),
(469, 'processing.please.wait', '{\"x\":\"Processing, please wait\",\"ar\":\"\\u062c\\u0627\\u0631\\u064a \\u0627\\u0644\\u0645\\u0639\\u0627\\u0644\\u062c\\u0629\\u060c \\u0628\\u0631\\u062c\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0646\\u062a\\u0638\\u0627\\u0631\"}'),
(470, 'error', '{\"x\":\"Error!\",\"ar\":\"\\u0647\\u0646\\u0627\\u0643 \\u062e\\u0637\\u0623!\"}'),
(471, 'select', '{\"x\":\"Select\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631\"}'),
(472, 'there.is.an.error.while.searching', '{\"x\":\"There is an error while searching\",\"ar\":\"\\u0647\\u0646\\u0627\\u0643 \\u0645\\u0634\\u0643\\u0644\\u0629 \\u0639\\u0646\\u062f \\u0627\\u0644\\u0628\\u062d\\u062b\"}'),
(473, 'you.must.enter.less.characters', '{\"x\":\"You must enter less characters\",\"ar\":\"\\u064a\\u062c\\u0628 \\u0625\\u062f\\u062e\\u0627\\u0644 \\u062d\\u0631\\u0648\\u0641 \\u0623\\u0642\\u0644\"}'),
(474, 'you.must.enter.more.characters', '{\"x\":\"You must enter more characters\",\"ar\":\"\\u064a\\u062c\\u0628 \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641\"}'),
(475, 'loading.more', '{\"x\":\"Loading More\",\"ar\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\"}'),
(476, 'maximum.element.has.been.selected', '{\"x\":\"Maximum element has been selected\",\"ar\":\"\\u0627\\u0644\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u062a\\u0645 \\u0623\\u062e\\u062a\\u064a\\u0627\\u0631\\u0647\"}'),
(477, 'no.result.found', '{\"x\":\"No result found\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0646\\u062a\\u0627\\u0626\\u062c\"}'),
(478, 'searching', '{\"x\":\"Searching\",\"ar\":\"\\u062c\\u0627\\u0631\\u064a \\u0627\\u0644\\u0628\\u062d\\u062b\"}'),
(479, 'search.for.client', '{\"x\":\"Search for client\",\"ar\":\"\\u0627\\u0644\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0639\\u0645\\u064a\\u0644\"}'),
(480, 'create.new.shipment', '{\"x\":\"Create New Shipment\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0634\\u062d\\u0646\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(481, 'shipments', '{\"x\":\"Shipments\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(482, 'profile.overview', '{\"x\":\"Profile Overview\",\"ar\":\"\\u0646\\u0638\\u0631\\u0629 \\u0639\\u0627\\u0645\\u0629\"}'),
(483, 'personal.information', '{\"x\":\"Personal Information\",\"ar\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0634\\u062e\\u0635\\u064a\\u0629\"}'),
(484, 'change.password', '{\"x\":\"Change Password\",\"ar\":\"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\"}'),
(485, 'latest.updates', '{\"x\":\"Latest Updates\",\"ar\":\"\\u0622\\u062e\\u0631 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b\\u0627\\u062a\"}'),
(486, 'no.activities.found', '{\"x\":\"No activities found\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0623\\u064a \\u0646\\u0634\\u0627\\u0637\\u0627\\u062a\"}'),
(487, 'no.new.notifications.found', '{\"x\":\"No new notifications found\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\"}'),
(488, 'update.your.personal.informaiton', '{\"x\":\"update your personal informaiton\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\\u0643 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\\u0629\"}'),
(489, 'avatar', '{\"x\":\"Avatar\",\"ar\":\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"}'),
(490, 'only.fill.it.if.you.need.to.change.your.password', '{\"x\":\"Only fill it if you need to change your password\",\"ar\":\"\\u0641\\u0642\\u0637 \\u0641\\u0649 \\u062d\\u0627\\u0644\\u0629 \\u0625\\u0631\\u0627\\u062f\\u062a\\u0643 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\"}'),
(491, 'password.confirmation', '{\"x\":\"Password Confirmation\",\"ar\":\"\\u062a\\u0623\\u0643\\u064a\\u062f \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\"}'),
(492, 'mobile.number', '{\"x\":\"Mobile Number\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(493, 'phone.number', '{\"x\":\"Phone Number\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0647\\u0627\\u062a\\u0641\"}'),
(494, 'street.address', '{\"x\":\"Street Address\",\"ar\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0634\\u0627\\u0631\\u0639\"}'),
(495, 'currencies.settings', '{\"x\":\"Currencies - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u062a\"}'),
(496, 'create.currency', '{\"x\":\"Create Currency\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0645\\u0644\\u0629\"}'),
(497, 'currency.symbol', '{\"x\":\"Currency Symbol\",\"ar\":\"\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0629\"}'),
(498, 'update.currency', '{\"x\":\"Update Currency\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0639\\u0645\\u0644\\u0629\"}'),
(499, 'general.settings', '{\"x\":\"General - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629\"}'),
(500, 'الحي.الثالث.ميدان.النجدة.مول.الأسراء.بلازا.الدور.الإرضي', '{\"x\":\"\\u0627\\u0644\\u062d\\u064a \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b - \\u0645\\u064a\\u062f\\u0627\\u0646 \\u0627\\u0644\\u0646\\u062c\\u062f\\u0629 - \\u0645\\u0648\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0631\\u0627\\u0621 \\u0628\\u0644\\u0627\\u0632\\u0627 - \\u0627\\u0644\\u062f\\u0648\\u0631 \\u0627\\u0644\\u0625\\u0631\\u0636\\u064a\"}'),
(501, 'ميدان.النجدة', '{\"x\":\"\\u0645\\u064a\\u062f\\u0627\\u0646 \\u0627\\u0644\\u0646\\u062c\\u062f\\u0629\"}'),
(502, '٦.أكتوبر', '{\"x\":\"\\u0666 \\u0623\\u0643\\u062a\\u0648\\u0628\\u0631\"}'),
(503, 'الجيزة', '{\"x\":\"\\u0627\\u0644\\u062c\\u064a\\u0632\\u0629\"}'),
(504, 'مصر', '{\"x\":\"\\u0645\\u0635\\u0631\"}'),
(505, 'panda.express.shipping', '{\"x\":\"Panda Express Shipping\",\"ar\":\"\\u0628\\u0627\\u0646\\u062f\\u0627 \\u0644\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0633\\u0631\\u064a\\u0639\"}'),
(506, 'courier.systemshipping.managementcargospotlayer.projectspot.shippingpanda.express.shippingباندا.للشحن.السريع', '{\"x\":\"courier system,shipping management,cargo,spotlayer project,spot shipping,panda express shipping,\\u0628\\u0627\\u0646\\u062f\\u0627 \\u0644\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0633\\u0631\\u064a\\u0639\",\"ar\":\"\\u0628\\u0627\\u0646\\u062f\\u0627 \\u0644\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0633\\u0631\\u064a\\u0639\\u060c \\u0634\\u062d\\u0646 \\u0633\\u0631\\u064a\\u0639\\u060c \\u0634\\u062d\\u0646 \\u062f\\u0627\\u062e\\u0644\\u064a\\u060c \\u0645\\u0624\\u0633\\u0633\\u0629 \\u0633\\u0628\\u0648\\u062a \\u0644\\u0627\\u064a\\u0631\\u060c \\u0633\\u0628\\u0648\\u062a \\u0634\\u064a\\u064a\\u0628\\u0646\\u062c\\u060c \\u0645\\u0634\\u0631\\u0648\\u0639 \\u0633\\u0628\\u0648\\u062a \\u0644\\u0627\\u064a\\u0631\"}'),
(507, 'we.ship.anything.even.a.panda', '{\"x\":\"We ship anything even a panda\",\"ar\":\"\\u062d\\u062a\\u0649 \\u0627\\u0644\\u0628\\u0627\\u0646\\u062f\\u0627 \\u064a\\u0645\\u0643\\u0646\\u0646\\u0627 \\u0634\\u062d\\u0646\\u0647\\u0627\"}'),
(508, 'please.enter.your.name', '{\"x\":\"Please enter your name\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0627\\u0643\\u062a\\u0628 \\u0627\\u0633\\u0645\\u0643\"}'),
(509, 'please.enter.your.email.address', '{\"x\":\"Please enter your email address\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0631\\u0642\\u0645 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u0643\"}'),
(510, 'please.enter.your.phone.number', '{\"x\":\"Please enter your phone number\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641\\u0643\"}'),
(511, 'enter.the.subject.message', '{\"x\":\"Enter the subject message\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u0631\\u0633\\u0627\\u0644\\u062a\\u0643\"}'),
(512, 'subject', '{\"x\":\"SUBJECT\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\"}'),
(513, 'your.message', '{\"x\":\"Your message\",\"ar\":\"\\u0631\\u0633\\u0627\\u0644\\u062a\\u0643\"}'),
(514, 'message', '{\"x\":\"MESSAGE\",\"ar\":\"\\u0627\\u0644\\u0631\\u0633\\u0627\\u0644\\u0629\"}'),
(515, 'contact.info', '{\"x\":\"CONTACT INFO\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0625\\u062a\\u0635\\u0627\\u0644\"}'),
(516, 'translate.settings', '{\"x\":\"Translate - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u062a\\u0631\\u062c\\u0645\\u0629 \\u0627\\u0644\\u0641\\u0648\\u0631\\u064a\\u0629\",\"tr\":\"AAAAA\"}'),
(517, 'display', '{\"x\":\"Display\",\"ar\":\"\\u0639\\u0631\\u0636\"}'),
(518, 'no.data.available.in.table', '{\"x\":\"No data available in table\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0641\\u0649 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062c\\u062f\\u0648\\u0644\"}'),
(519, 'showing', '{\"x\":\"Showing\",\"ar\":\"\\u0645\\u0639\\u0631\\u0648\\u0636\"}'),
(520, 'entries', '{\"x\":\"entries\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\"}'),
(521, 'processing', '{\"x\":\"Processing\",\"ar\":\"\\u062c\\u0627\\u0631\\u064a \\u0627\\u0644\\u0645\\u0639\\u0627\\u0644\\u062c\\u0629\"}'),
(522, 'search', '{\"x\":\"Search\",\"ar\":\"\\u0628\\u062d\\u062b\"}'),
(523, 'filtered.from', '{\"x\":\"filtered from\",\"ar\":\"\\u0645\\u0641\\u0644\\u062a\\u0631\\u0629 \\u0645\\u0646\"}'),
(524, 'total.entries', '{\"x\":\"total entries\",\"ar\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\"}'),
(525, 'fees.settings', '{\"x\":\"Fees - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0631\\u0633\\u0648\\u0645\"}'),
(526, 'taxes', '{\"x\":\"Taxes\",\"ar\":\"\\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u064a\"}'),
(527, 'tax.percentage', '{\"x\":\"Tax Percentage\",\"ar\":\"\\u0646\\u0633\\u0628\\u0629 \\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628\"}'),
(528, 'shipping.insurance.percentage', '{\"x\":\"Shipping Insurance Percentage\",\"ar\":\"\\u0646\\u0633\\u0628\\u0629 \\u062a\\u0623\\u0645\\u064a\\u0646 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(529, 'default.fees', '{\"x\":\"Default Fees\",\"ar\":\"\\u0627\\u0644\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629\"}'),
(530, 'shipping.cost', '{\"x\":\"Shipping cost\",\"ar\":\"\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(531, 'the.default.cost.to.deliver.the.package', '{\"x\":\"The default cost to deliver the package\",\"ar\":\"\\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629 \\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(532, 'pickup.cost', '{\"x\":\"Pickup cost\",\"ar\":\"\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0633\\u062a\\u0644\\u0627\\u0645 (\\u0627\\u0644\\u0628\\u064a\\u0643 \\u0623\\u0628)\"}'),
(533, 'the.default.cost.to.receive.the.package.from.the.sender', '{\"x\":\"The default cost to receive the package from the sender\",\"ar\":\"\\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629 \\u0644\\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(534, 'delivery.back.cost.by.sender', '{\"x\":\"Delivery back cost by sender\",\"ar\":\"\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644 \\u0639\\u0646 \\u0637\\u0631\\u064a\\u0642 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(535, 'the.default.cost.to.return.the.package.fees.to.the.sender', '{\"x\":\"The default cost to return the package fees to the sender\",\"ar\":\"\\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629 \\u0644\\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f \\u0645\\u0642\\u0627\\u0628\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0644\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(536, 'delivery.back.cost.by.receiver', '{\"x\":\"Delivery back cost by receiver\",\"ar\":\"\\u062a\\u0643\\u0644\\u0641\\u0629 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(537, 'fees.by.places', '{\"x\":\"Fees by places\",\"ar\":\"\\u0627\\u0644\\u062a\\u0633\\u0639\\u064a\\u0631 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0643\\u0627\\u0646\"}'),
(538, 'add.new.fees', '{\"x\":\"Add New Fees\",\"ar\":\"\\u062a\\u0639\\u0631\\u064a\\u0641 \\u0631\\u0633\\u0648\\u0645 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(539, 'assigned.shipments', '{\"x\":\"Assigned Shipments\",\"ar\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u0645\\u064f\\u0639\\u064a\\u0646\\u0629\"}'),
(540, 'manifest', '{\"x\":\"Manifest\",\"ar\":\"\\u062e\\u0637 \\u0627\\u0644\\u0633\\u064a\\u0631\"}'),
(541, 'manifest.information', '{\"x\":\"Manifest information\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062e\\u0637 \\u0627\\u0644\\u0633\\u064a\\u0631\"}'),
(542, 'assign.to.specifc.car', '{\"x\":\"Assign to specifc car?\",\"ar\":\"\\u062a\\u0639\\u064a\\u064a\\u0646 \\u0644\\u0633\\u064a\\u0627\\u0631\\u0629 \\u0645\\u062d\\u062f\\u062f\\u0629\\u061f\"}'),
(543, 'employee', '{\"x\":\"Employee\",\"ar\":\"\\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\"}'),
(544, 'car', '{\"x\":\"Car\",\"ar\":\"\\u0627\\u0644\\u0633\\u064a\\u0627\\u0631\\u0629\"}'),
(545, 'close', '{\"x\":\"Close\",\"ar\":\"\\u0625\\u063a\\u0644\\u0627\\u0642\"}'),
(546, 'assign', '{\"x\":\"Assign\",\"ar\":\"\\u062a\\u0639\\u064a\\u064a\\u0646\"}'),
(547, 'print.employee.orders', '{\"x\":\"Print Employee Orders\",\"ar\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\",\"en\":\"Print Employee Shipments\"}'),
(548, 'print', '{\"x\":\"Print\",\"ar\":\"\\u0637\\u0628\\u0627\\u0639\\u0629\"}'),
(549, 'created.on', '{\"x\":\"Created On\",\"ar\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0623\\u0636\\u0627\\u0641\\u0629\"}'),
(550, 'responsiable', '{\"x\":\"Responsiable\",\"ar\":\"\\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644\"}'),
(551, 'by', '{\"x\":\"By\",\"ar\":\"\\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\"}'),
(552, 'no.of.orders', '{\"x\":\"No. Of Orders\",\"ar\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\",\"en\":\"No. Of Shipments\"}'),
(553, 'are.you.sure.you.want.to.send.all', '{\"x\":\"Are you sure you want to send all\",\"ar\":\"\\u0647\\u0644 \\u062a\\u0631\\u064a\\u062f \\u0623\\u0631\\u0633\\u0627\\u0644\\u0647\\u0645 \\u062c\\u0645\\u064a\\u0639\\u0627\\u064b\"}'),
(554, 'selected.records.to.the.company', '{\"x\":\"selected records to the company?\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u062e\\u062a\\u0627\\u0631\\u0629 \\u0644\\u0644\\u0634\\u0631\\u0643\\u0629\\u061f\"}'),
(555, 'sent.successfully', '{\"x\":\"Sent Successfully!\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u0623\\u0631\\u0633\\u0627\\u0644 \\u0628\\u0646\\u062c\\u0627\\u062d!\"}'),
(556, 'your.selected.records.have.been.sent.to.the.company', '{\"x\":\"Your selected records have been sent to the company!\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u0623\\u062e\\u062a\\u0631\\u062a\\u0647\\u0627 \\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644\\u0647\\u0627 \\u0644\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(557, 'your.shipments.not.sent.and.they.still.just.on.your.account', '{\"x\":\"Your shipments not sent, and they still just on your account! :)\",\"ar\":\"\\u0634\\u062d\\u0646\\u062a\\u0643 \\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644\\u0647\\u0627\\u060c \\u0648\\u0645\\u062d\\u0641\\u0648\\u0638\\u0629 \\u0641\\u0642\\u0637 \\u0641\\u0649 \\u062d\\u0633\\u0627\\u0628\\u0643!\"}'),
(558, 'are.you.sure.you.want.to.create.new.manifest.with', '{\"x\":\"Are you sure you want to create new manifest with\",\"ar\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u062a\\u0627\\u0643\\u062f \\u0645\\u0646 \\u0623\\u0636\\u0627\\u0641\\u062a\\u0643 \\u0644\\u062e\\u0637 \\u0633\\u064a\\u0631 \\u0628\\u0640\"}'),
(559, 'your.manifest.not.created', '{\"x\":\"Your manifest not created! :)\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0623\\u0636\\u0627\\u0641\\u0629 \\u062e\\u0637 \\u0627\\u0644\\u0633\\u064a\\u0631!\"}'),
(560, 'saved.shipments', '{\"x\":\"Saved Shipments\",\"ar\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u0645\\u062d\\u0641\\u0648\\u0638\\u0629\"}'),
(561, 'shipments.requests', '{\"x\":\"Shipments Requests\",\"ar\":\"\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(562, 'approved.shipments', '{\"x\":\"Approved Shipments\",\"ar\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u0645\\u0642\\u0628\\u0648\\u0644\\u0629\"}'),
(563, 'shipments.delivered.to.driver', '{\"x\":\"Shipments Delivered To Driver\",\"ar\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645\\u0647\\u0627 \\u0644\\u0644\\u0633\\u0627\\u0626\\u0642\"}'),
(564, 'postponed.shipments', '{\"x\":\"Postponed Shipments\",\"ar\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u0645\\u0624\\u062c\\u0644\\u0629\"}'),
(565, 'جميع.الشحنات', '{\"x\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(566, 'filter.by', '{\"x\":\"Filter By\",\"ar\":\"\\u0641\\u0644\\u062a\\u0631 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\"}'),
(567, 'only.show', '{\"x\":\"Only show\",\"ar\":\"\\u0623\\u0639\\u0631\\u0636 \\u0641\\u0642\\u0637\"}'),
(568, 'اضف.خط.سير', '{\"x\":\"\\u0627\\u0636\\u0641 \\u062e\\u0637 \\u0633\\u064a\\u0631\"}'),
(569, 'أضف.جديد', '{\"x\":\"\\u0623\\u0636\\u0641 \\u062c\\u062f\\u064a\\u062f\"}'),
(570, 'طباعة.أوامر.موظف', '{\"x\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0623\\u0648\\u0627\\u0645\\u0631 \\u0645\\u0648\\u0638\\u0641\"}'),
(571, 'الشحنات.المسلمة.للكابتن', '{\"x\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u064f\\u0633\\u0644\\u0645\\u0629 \\u0644\\u0644\\u0643\\u0627\\u0628\\u062a\\u0646\"}'),
(572, 'wallet', '{\"x\":\"Wallet\",\"ar\":\"\\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\"}'),
(573, 'clients', '{\"x\":\"Clients\",\"ar\":\"\\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621\"}'),
(574, 'role', '{\"x\":\"Role\",\"ar\":\"\\u0627\\u0644\\u062f\\u0648\\u0631\"}'),
(575, 'إدارة.الأقسام', '{\"x\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\"}'),
(576, 'id', '{\"x\":\"ID\",\"ar\":\"\\u0627\\u0644\\u0631\\u0642\\u0645\"}'),
(577, 'movement.type', '{\"x\":\"Movement Type\",\"ar\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u062d\\u0631\\u0643\\u0629\"}'),
(578, 'withdrawl', '{\"x\":\"Withdrawl\",\"ar\":\"\\u0633\\u062d\\u0628\"}'),
(579, 'deposit', '{\"x\":\"Deposit\",\"ar\":\"\\u0625\\u064a\\u062f\\u0627\\u0639\"}'),
(580, 'deduction.from.the.wallet', '{\"x\":\"Deduction from the wallet\",\"ar\":\"\\u062e\\u0635\\u0645 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\"}'),
(581, 'add.to.wallet', '{\"x\":\"Add to wallet\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u062d\\u0641\\u0638\\u0629\"}'),
(582, 'deduction.of.commission.balance', '{\"x\":\"Deduction of commission balance\",\"ar\":\"\\u062e\\u0635\\u0645 \\u0645\\u0646 \\u0631\\u0635\\u064a\\u062f \\u0627\\u0644\\u0639\\u0645\\u0648\\u0644\\u0627\\u062a\"}'),
(583, 'add.to.the.commission.balance', '{\"x\":\"Add to the commission balance\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0631\\u0635\\u064a\\u062f \\u0627\\u0644\\u0639\\u0645\\u0648\\u0644\\u0627\\u062a\"}'),
(584, 'deduction.from.the.balance.of.packages', '{\"x\":\"Deduction from the balance of packages\",\"ar\":\"\\u062e\\u0635\\u0645 \\u0645\\u0646 \\u0631\\u0635\\u064a\\u062f \\u0627\\u0644\\u0637\\u0631\\u0648\\u062f\"}'),
(585, 'add.to.the.balance.of.packages', '{\"x\":\"Add  to the balance of packages\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0631\\u0635\\u064a\\u062f \\u0627\\u0644\\u0637\\u0631\\u0648\\u062f\"}'),
(586, 'for', '{\"x\":\"For\",\"ar\":\"\\u0644\\u0640\"}'),
(587, 'amount', '{\"x\":\"Amount\",\"ar\":\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629\"}'),
(588, 'received.by', '{\"x\":\"Received by\",\"ar\":\"\\u0623\\u0633\\u062a\\u0644\\u0645\\u062a \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\"}'),
(589, 'date.range', '{\"x\":\"Date range\",\"ar\":\"\\u0627\\u0644\\u0641\\u062a\\u0631\\u0629\"}'),
(590, 'select.date.range', '{\"x\":\"Select date range\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631 \\u0645\\u062f\\u0649 \\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e\"}'),
(591, 'reset', '{\"x\":\"Reset\",\"ar\":\"\\u0625\\u0639\\u0627\\u062f\\u0629\"}'),
(592, 'تقارير.الشحنات.المتأخرة', '{\"x\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0623\\u062e\\u0631\\u0629\"}'),
(593, 'طباعة', '{\"x\":\"\\u0637\\u0628\\u0627\\u0639\\u0629\"}'),
(594, 'تحميل.excel', '{\"x\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 Excel\"}'),
(595, 'تقارير.الإيداعات.المالية', '{\"x\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0625\\u064a\\u062f\\u0627\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629\"}'),
(596, 'تقارير.المسحوبات.المالية', '{\"x\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062d\\u0648\\u0628\\u0627\\u062a \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629\"}'),
(597, 'company.updates', '{\"x\":\"company updates\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(598, 'our.mobile.applications', '{\"x\":\"Our mobile Applications\",\"ar\":\"\\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0646\\u0627\"}'),
(599, 'those.app.includes.requesting.a.pickup.sending.the.shipment.and.follow.ups.your.shipments.all.over.its.way', '{\"x\":\"Those app includes requesting a pickup, sending the shipment and follow-ups your shipments all over its way\",\"ar\":\"\\u064a\\u062a\\u0636\\u0645\\u0646 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0644\\u062a\\u0642\\u0627\\u0637 \\u0648\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0648\\u0645\\u062a\\u0627\\u0628\\u0639\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 \\u0639\\u0644\\u0649 \\u0637\\u0648\\u0644 \\u0627\\u0644\\u0637\\u0631\\u064a\\u0642\"}'),
(600, 'weve.been.striving.for.better.performance.and.were.constantly.adding.more.features.on.top.of.checking.their.followed.communities.users.can.now.receive.notifications.create.new.orders.and.better.manage.their.shipments.tracking.features', '{\"x\":\"we\\u2019ve been striving for better performance and we\\u2019re constantly adding more features. On top of checking their followed communities, users can now receive notifications, create new orders and better manage their shipments tracking features.\",\"ar\":\"\\u0646\\u0633\\u0639\\u0649 \\u062c\\u0627\\u0647\\u062f\\u064a\\u0646 \\u0644\\u062a\\u062d\\u064a\\u0642 \\u0623\\u062f\\u0627\\u0621 \\u0623\\u0641\\u0636\\u0644 \\u0645\\u0639 \\u0623\\u0633\\u062a\\u0645\\u0631\\u0627\\u0631\\u0646\\u0627 \\u0628\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u062e\\u0628\\u0631\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0632\\u0627\\u064a\\u0627. \\u0639\\u0644\\u0627\\u0648\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u062c\\u0648\\u062f\\u0629 \\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627 \\u0627\\u0644\\u0645\\u0642\\u062f\\u0645\\u0629 \\u0648\\u062a\\u0623\\u0643\\u064a\\u062f \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u064a\\u0647\\u0627\\u060c \\u0641\\u0627\\u0644\\u0622\\u0646 \\u064a\\u0645\\u0643\\u0646 \\u0644\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0625\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0623\\u0648 \\u0623\\u0636\\u0627\\u0641\\u0629 \\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0648\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0634\\u062d\\u0646\\u0627\\u062a\\u0647\\u0645 \\u0639\\u0628\\u0631 \\u062a\\u062a\\u0628\\u0639\\u0647\\u0627 \\u062e\\u0637\\u0648\\u0629 \\u0628\\u062e\\u0637\\u0648\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0641\\u0636\\u0644.\"}'),
(601, 'download.the.mobile.applications', '{\"x\":\"DOWNLOAD THE MOBILE APPLICATIONS\",\"ar\":\"\\u062a\\u062d\\u0645\\u064a\\u0644 \\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(602, 'discover.the.mobile.applications.from.our.brands.available.on.appstore.ios.and.google.play.android', '{\"x\":\"Discover the Mobile Applications from our brands available on AppStore (IOS) and Google Play (Android).\",\"ar\":\"\\u0627\\u0643\\u062a\\u0634\\u0641 \\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a \\u0627\\u0644\\u0623\\u062c\\u0647\\u0632\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0645\\u0648\\u0644\\u0629 \\u0645\\u0646 \\u0639\\u0644\\u0627\\u0645\\u0627\\u062a\\u0646\\u0627 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0639\\u0644\\u0649 AppStore (IOS) \\u0648 Google Play (Android)\"}'),
(603, 'ios', '{\"x\":\"IOS\"}'),
(604, 'android', '{\"x\":\"ANDROID\"}'),
(605, 'progress', '{\"x\":\"Progress\",\"ar\":\"\\u0645\\u062f\\u0649 \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645\"}'),
(606, 'save.as.draft', '{\"x\":\"Save as draft\",\"ar\":\"\\u062d\\u0641\\u0638 \\u0643\\u0645\\u0633\\u0648\\u062f\\u0629\"}'),
(607, 'why.us', '{\"x\":\"Why us?\",\"ar\":\"\\u0644\\u0645\\u0627\\u0630\\u0627 \\u0646\\u062d\\u0646 \\u061f\"}'),
(608, 'we.are.proud.to.provide.the.best.service.and.the.lowest.prices.of.the.market.the.fastest.service.the.best.price.a.great.experience.in.the.field.of.domestic.or.international.shipping.of.all.kinds', '{\"x\":\"We are proud to provide the best service and the lowest prices of the market, the fastest service the best price A great experience in the field of domestic or international shipping of all kinds.\",\"ar\":\"\\u0646\\u062d\\u0646 \\u0641\\u062e\\u0648\\u0631\\u0648\\u0646 \\u0628\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0648\\u0623\\u0642\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0639\\u0627\\u0631 \\u0641\\u064a \\u0627\\u0644\\u0633\\u0648\\u0642 \\u060c \\u0623\\u0633\\u0631\\u0639 \\u062e\\u062f\\u0645\\u0629 \\u0628\\u0623\\u0641\\u0636\\u0644 \\u0633\\u0639\\u0631 \\u062a\\u062c\\u0631\\u0628\\u0629 \\u0631\\u0627\\u0626\\u0639\\u0629 \\u0641\\u064a \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a \\u0628\\u062c\\u0645\\u064a\\u0639 \\u0623\\u0646\\u0648\\u0627\\u0639\\u0647.\"}'),
(609, 'and.we.offer.our.services.to.companies.and.individuals.below.the.market.price.we.provide.door.to.door.service.punctuality.and.lack.of.time.are.essential', '{\"x\":\"And we offer our services to companies and individuals below the market price, we provide door to door service\\n\\t\\t\\t\\t\\t\\t\\tPunctuality and lack of time are essential.\",\"ar\":\"\\u0648\\u0646\\u062d\\u0646 \\u0646\\u0642\\u062f\\u0645 \\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627 \\u0644\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0648\\u0627\\u0644\\u0623\\u0641\\u0631\\u0627\\u062f \\u062f\\u0648\\u0646 \\u0633\\u0639\\u0631 \\u0627\\u0644\\u0633\\u0648\\u0642 \\u060c \\u0648\\u0646\\u062d\\u0646 \\u0646\\u0642\\u062f\\u0645 \\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u0627\\u0628 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0628\\u0627\\u0628 \\u0627\\u0644\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645 \\u0628\\u0627\\u0644\\u0645\\u0648\\u0627\\u0639\\u064a\\u062f \\u0648\\u0646\\u0642\\u0635 \\u0627\\u0644\\u0648\\u0642\\u062a \\u0636\\u0631\\u0648\\u0631\\u064a\\u0627\\u0646.\"}'),
(610, 'optimized.shortening.of.time.during.all.phases.of.charging', '{\"x\":\"Optimized shortening of time during all phases of charging.\",\"ar\":\"\\u0646\\u0637\\u0628\\u0642 \\u0627\\u0644\\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u0623\\u0641\\u0636\\u0644 \\u062f\\u0627\\u0626\\u0645\\u0627\\u064b \\u0644\\u062a\\u0642\\u0644\\u064a\\u0644 \\u0648\\u0642\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0628\\u0643\\u0644 \\u0645\\u0631\\u062d\\u0644\\u0629.\"}');
INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(611, 'we.are.always.ready.to.guarantee.and.confirm.a.standard.shipping.time.within.our.offers', '{\"x\":\"We are always ready to guarantee and confirm a standard shipping time within our offers.\",\"ar\":\"\\u0646\\u062d\\u0646 \\u062f\\u0627\\u0626\\u0645\\u0627 \\u0639\\u0644\\u0649 \\u0627\\u0633\\u062a\\u0639\\u062f\\u0627\\u062f \\u0644\\u0636\\u0645\\u0627\\u0646 \\u0648\\u062a\\u0623\\u0643\\u064a\\u062f \\u0648\\u0642\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a\\u0629 \\u0636\\u0645\\u0646 \\u0639\\u0631\\u0648\\u0636\\u0646\\u0627.\"}'),
(612, 'our.specialty.is.to.provide.shipping.options.to.the.customer.according.to.the.speed.required.for.shipment.or.according.to.the.price.range.proposed', '{\"x\":\"Our specialty is to provide shipping options to the customer according to the speed required for shipment or according to the price range proposed.\",\"ar\":\"\\u062a\\u062e\\u0635\\u0635\\u0646\\u0627 \\u0647\\u0648 \\u062a\\u0648\\u0641\\u064a\\u0631 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0644\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0648\\u0641\\u0642\\u0627 \\u0644\\u0644\\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629 \\u0644\\u0644\\u0634\\u062d\\u0646 \\u0623\\u0648 \\u0648\\u0641\\u0642\\u0627 \\u0644\\u0644\\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0633\\u0639\\u0631\\u064a \\u0627\\u0644\\u0645\\u0642\\u062a\\u0631\\u062d.\"}'),
(613, 'we.are.committed.to.carrying.out.our.business.properly.and.safely.our.decisions.and.actions.are.within.the.framework.of.ethical.values.and.requirements.with.honesty.and.transparency.in.everything.we.do', '{\"x\":\"We are committed to carrying out our business properly and safely. Our decisions and actions are within the framework of ethical values \\u200b\\u200band requirements with honesty and transparency in everything we do.\",\"ar\":\"\\u0646\\u062d\\u0646 \\u0645\\u0644\\u062a\\u0632\\u0645\\u0648\\u0646 \\u0628\\u062a\\u0646\\u0641\\u064a\\u0630 \\u0623\\u0639\\u0645\\u0627\\u0644\\u0646\\u0627 \\u0628\\u0634\\u0643\\u0644 \\u0635\\u062d\\u064a\\u062d \\u0648\\u0622\\u0645\\u0646. \\u0642\\u0631\\u0627\\u0631\\u0627\\u062a\\u0646\\u0627 \\u0648\\u0623\\u0639\\u0645\\u0627\\u0644\\u0646\\u0627 \\u0647\\u064a \\u0641\\u064a \\u0625\\u0637\\u0627\\u0631 \\u0627\\u0644\\u0642\\u064a\\u0645 \\u0648\\u0627\\u0644\\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u0623\\u062e\\u0644\\u0627\\u0642\\u064a\\u0629 \\u0628\\u0623\\u0645\\u0627\\u0646\\u0629 \\u0648\\u0634\\u0641\\u0627\\u0641\\u064a\\u0629 \\u0641\\u064a \\u0643\\u0644 \\u0645\\u0627 \\u0646\\u0642\\u0648\\u0645 \\u0628\\u0647.\"}'),
(614, 'shipment.in.progress', '{\"x\":\"SHIPMENT IN PROGRESS\",\"ar\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u062c\\u0627\\u0631\\u064a \\u062a\\u0648\\u0635\\u064a\\u0644\\u0647\\u0627\"}'),
(615, 'shipment.deliveried', '{\"x\":\"SHIPMENT DELIVERIED\",\"ar\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u062a\\u0645 \\u062a\\u0648\\u0635\\u064a\\u0644\\u0647\\u0627\"}'),
(616, 'happy.customers', '{\"x\":\"HAPPY CUSTOMERS\",\"ar\":\"\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0633\\u0639\\u064a\\u062f\\u0648\\u0646\"}'),
(617, 'a.shipping.company.always.striving.to.provide.its.services.within.the.fastest.time.available', '{\"x\":\"A shipping company, always striving to provide its services within the fastest time available\",\"ar\":\"\\u0634\\u0631\\u0643\\u0629 \\u0634\\u062d\\u0646 \\u062a\\u0633\\u0639\\u0649 \\u062c\\u0627\\u0647\\u062f\\u0629 \\u0644\\u062a\\u0648\\u0641\\u064a\\u0631 \\u062e\\u062f\\u0645\\u0627\\u062a\\u0647\\u0627 \\u0641\\u064a \\u0623\\u0633\\u0631\\u0639 \\u0648\\u0642\\u062a \\u0645\\u062a\\u0627\\u062d\"}'),
(618, 'we.continuously.strive.to.achieve.the.highest.possible.standards.in.our.day.to.day.business.in.the.quality.of.our.services.we.aim.to.exceed.quality.standards.and.strongly.believe.that.excellence.is.enhanced.through.the.dedication.and.commitment.of.ou...', '{\"x\":\"We continuously strive to achieve the highest possible standards in our day-to-day business in the quality of our services. We aim to exceed quality standards and strongly believe that excellence is enhanced through the dedication and commitment of our technical staff\",\"ar\":\"\\u0646\\u062d\\u0646 \\u0646\\u0633\\u0639\\u0649 \\u0628\\u0627\\u0633\\u062a\\u0645\\u0631\\u0627\\u0631 \\u0644\\u062a\\u062d\\u0642\\u064a\\u0642 \\u0623\\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0639\\u0627\\u064a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0645\\u0643\\u0646\\u0629 \\u0641\\u064a \\u0623\\u0639\\u0645\\u0627\\u0644\\u0646\\u0627 \\u0627\\u0644\\u064a\\u0648\\u0645\\u064a\\u0629 \\u0641\\u064a \\u062c\\u0648\\u062f\\u0629 \\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627. \\u0646\\u0647\\u062f\\u0641 \\u0625\\u0644\\u0649 \\u062a\\u062c\\u0627\\u0648\\u0632 \\u0645\\u0639\\u0627\\u064a\\u064a\\u0631 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0648\\u0646\\u0639\\u062a\\u0642\\u062f \\u0627\\u0639\\u062a\\u0642\\u0627\\u062f\\u0627 \\u0631\\u0627\\u0633\\u062e\\u0627 \\u0623\\u0646 \\u0627\\u0644\\u062a\\u0645\\u064a\\u0632 \\u064a\\u062a\\u0645 \\u062a\\u0639\\u0632\\u064a\\u0632\\u0647 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u062a\\u0641\\u0627\\u0646\\u064a \\u0648\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645 \\u0645\\u0648\\u0638\\u0641\\u064a\\u0646\\u0627 \\u0628\\u0643\\u0644 \\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\"}'),
(619, 'find.out', '{\"x\":\"FIND OUT\",\"ar\":\"\\u0623\\u0643\\u062a\\u0634\\u0641\"}'),
(620, 'more', '{\"x\":\"MORE\",\"ar\":\"\\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\"}'),
(621, 'notification', '{\"x\":\"Notification\",\"ar\":\"\\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\"}'),
(622, 'readed', '{\"x\":\"Readed\",\"ar\":\"\\u062a\\u0645\\u062a \\u0627\\u0644\\u0642\\u0631\\u0627\\u0621\\u0647\"}'),
(623, 'are.you.sure.to.mark.all.notifications.as.readed', '{\"x\":\"Are you sure to mark all notifications as readed?\",\"ar\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u062a\\u062d\\u062f\\u064a\\u062f \\u0643\\u0644 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0643\\u0645\\u0642\\u0631\\u0648\\u0621\\u0647\\u061f\"}'),
(624, 'all.notifications.has.been.marked.as.read', '{\"x\":\"All notifications has been marked as read!\",\"ar\":\"\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062f \\u0643\\u0644 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0643\\u0645\\u0642\\u0631\\u0648\\u0621\\u0647\"}'),
(625, 'all.notifications', '{\"x\":\"All Notifications\",\"ar\":\"\\u0643\\u0644 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\"}'),
(626, 'review.all.your.notifications', '{\"x\":\"Review all your notifications\",\"ar\":\"\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0643\\u0644 \\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\\u0643\"}'),
(627, 'تحديد.الكل.كمقروء', '{\"x\":\"\\u062a\\u062d\\u062f\\u064a\\u062f \\u0627\\u0644\\u0643\\u0644 \\u0643\\u0645\\u0642\\u0631\\u0648\\u0621\"}'),
(628, 'inbox', '{\"x\":\"Inbox\",\"ar\":\"\\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0648\\u0627\\u0631\\u062f\\u0629\"}'),
(629, 'nothing.here.rightnow', '{\"x\":\"Nothing here rightnow\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0634\\u0626 \\u0647\\u0646\\u0627 \\u062d\\u062a\\u0649 \\u0627\\u0644\\u0622\\u0646\"}'),
(630, 'type.message', '{\"x\":\"Type message\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0631\\u0633\\u0627\\u0644\\u0629\"}'),
(631, 'street', '{\"x\":\"Street\",\"ar\":\"\\u0627\\u0644\\u0634\\u0627\\u0631\\u0639\"}'),
(632, 'payment', '{\"x\":\"Payment\",\"ar\":\"\\u0627\\u0644\\u062f\\u0641\\u0639\"}'),
(633, 'sender.details', '{\"x\":\"Sender Details\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(634, 'area', '{\"x\":\"Area\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629\"}'),
(635, 'no.orders.for.this.employee.on.that.date', '{\"x\":\"No orders for this employee on that date\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0634\\u062d\\u0646\\u0627\\u062a \\u0644\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641 \\u0641\\u064a \\u0630\\u0644\\u0643 \\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e\",\"en\":\"No shipments for this employee on that date\"}'),
(636, 'printed.by', '{\"x\":\"Printed By\",\"ar\":\"\\u0637\\u064f\\u0628\\u0639\\u062a \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\"}'),
(637, 'shipments.print', '{\"x\":\"Shipments Print\",\"ar\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(638, 'edit.client', '{\"x\":\"Edit Client\",\"ar\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\"}'),
(639, 'orders', '{\"x\":\"Orders\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\",\"en\":\"Shipments\"}'),
(640, 'client.view', '{\"x\":\"Client View\",\"ar\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\"}'),
(641, 'update.client', '{\"x\":\"Update Client\",\"ar\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0645\\u064a\\u0644\"}'),
(642, 'addresses', '{\"x\":\"Addresses\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u0648\\u064a\\u0646\"}'),
(643, 'default.address', '{\"x\":\"Default Address\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\"}'),
(644, 'add.another.address', '{\"x\":\"Add Another Address\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0646\\u0648\\u0627\\u0646 \\u062c\\u062f\\u064a\\u062f\"}'),
(645, 'create.new.client', '{\"x\":\"Create New Client\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0639\\u0645\\u064a\\u0644 \\u062c\\u062f\\u064a\\u062f\"}'),
(646, 'update.employee', '{\"x\":\"Update Employee\",\"ar\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\"}'),
(647, 'state', '{\"x\":\"State\",\"ar\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629\"}'),
(648, 'is.supervisor', '{\"x\":\"Is Supervisor?\",\"ar\":\"\\u0645\\u0634\\u0631\\u0641 \\u0639\\u0627\\u0645\\u061f\"}'),
(649, 'check.if.you.need.this.user.see.every.data.in.the.modules.that.he.has.permission.on', '{\"x\":\"Check if you need this user see every data in the modules that he has permission on\",\"ar\":\"\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0645\\u0627 \\u0625\\u0630\\u0627 \\u0643\\u0646\\u062a \\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0644\\u0644\\u0627\\u0637\\u0644\\u0627\\u0639 \\u0639\\u0644\\u0649 \\u0643\\u0644 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u062c\\u0648\\u062f\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0648\\u062f\\u064a\\u0648\\u0644\\u0632 \\u0627\\u0644\\u062a\\u064a \\u064a\\u0645\\u0644\\u0643 \\u0627\\u0644\\u0625\\u0630\\u0646 \\u0628\\u0647\\u0627\"}'),
(650, 'is.a.driver', '{\"x\":\"Is a Driver?\",\"ar\":\"\\u0633\\u0627\\u0626\\u0642\\u061f\"}'),
(651, 'check.if.you.need.this.user.to.be.assigned.to.a.car.you.can.assign.it.later.from.cars.definition.page', '{\"x\":\"Check if you need this user to be assigned to a car, you can assign it later from cars definition page\",\"ar\":\"\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0645\\u0627 \\u0625\\u0630\\u0627 \\u0643\\u0646\\u062a \\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0633\\u064a\\u0627\\u0631\\u0629 \\u060c \\u064a\\u0645\\u0643\\u0646\\u0643 \\u062a\\u0639\\u064a\\u064a\\u0646\\u0647\\u0627 \\u0644\\u0627\\u062d\\u0642\\u064b\\u0627 \\u0645\\u0646 \\u0635\\u0641\\u062d\\u0629 \\u062a\\u0639\\u0631\\u064a\\u0641 \\u0627\\u0644\\u0633\\u064a\\u0627\\u0631\\u0627\\u062a\"}'),
(652, 'permissions', '{\"x\":\"Permissions\",\"ar\":\"\\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0627\\u062a\"}'),
(653, 'create', '{\"x\":\"Create\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629\"}'),
(654, 'select.all', '{\"x\":\"Select All\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062f \\u0627\\u0644\\u0643\\u0644\"}'),
(655, 'read', '{\"x\":\"Read\",\"ar\":\"\\u0642\\u0631\\u0627\\u0621\\u0647\"}'),
(656, 'workorder', '{\"x\":\"Workorder\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\",\"en\":\"Shipment\"}'),
(657, 'ability.to.manage.the.work.orders', '{\"x\":\"Ability to manage the work orders\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\",\"en\":\"Ability to manage the shipments\"}'),
(658, 'update', '{\"x\":\"Update\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b\"}'),
(659, 'all', '{\"x\":\"All\",\"ar\":\"\\u0627\\u0644\\u0643\\u0644\"}'),
(660, 'setting', '{\"x\":\"Setting\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a\"}'),
(661, 'ability.to.manage.system.configuration', '{\"x\":\"Ability to manage system configuration\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\"}'),
(662, 'ability.to.manage.lanaguages', '{\"x\":\"Ability to manage lanaguages\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0644\\u063a\\u0627\\u062a\"}'),
(663, 'ability.to.manage.departmentsgroups', '{\"x\":\"Ability to manage departments\\/groups\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\\/\\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a\"}'),
(664, 'ability.to.manage.employees', '{\"x\":\"Ability to manage employees\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\\u064a\\u0646\"}'),
(665, 'backups', '{\"x\":\"Backups\",\"ar\":\"\\u0627\\u0644\\u0646\\u0633\\u062e \\u0627\\u0644\\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\"}'),
(666, 'ability.to.manage.backups', '{\"x\":\"Ability to manage backups\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0646\\u0633\\u062e \\u0627\\u0644\\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\"}'),
(667, 'ability.to.manage.manifest', '{\"x\":\"Ability to manage manifest\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u062e\\u0637\\u0648\\u0637 \\u0627\\u0644\\u0633\\u064a\\u0631\"}'),
(668, 'ability.to.assign.employees.and.drivers.to.orders', '{\"x\":\"Ability to assign employees and drivers to orders\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\\u064a\\u0646 \\u0648\\u0627\\u0644\\u0633\\u0627\\u0626\\u0642\\u064a\\u0646 \\u0644\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\",\"en\":\"Ability to assign employees and drivers to shipments\"}'),
(669, 'ability.to.manage.clients', '{\"x\":\"Ability to manage clients\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621\"}'),
(670, 'ability.to.manage.statuses', '{\"x\":\"Ability to manage statuses\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0644\\u0627\\u062a\"}'),
(671, 'ability.to.manage.areas', '{\"x\":\"Ability to manage areas\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0627\\u0637\\u0642\"}'),
(672, 'fees', '{\"x\":\"Fees\",\"ar\":\"\\u0627\\u0644\\u0631\\u0633\\u0648\\u0645\"}'),
(673, 'ability.to.manage.fees', '{\"x\":\"Ability to manage fees\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0631\\u0633\\u0648\\u0645\"}'),
(674, 'ability.to.manage.currencies', '{\"x\":\"Ability to manage currencies\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u062a\"}'),
(675, 'packaging', '{\"x\":\"Packaging\",\"ar\":\"\\u0627\\u0644\\u062a\\u063a\\u0644\\u064a\\u0641\"}'),
(676, 'ability.to.manage.packaging', '{\"x\":\"Ability to manage packaging\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u063a\\u0644\\u064a\\u0641\"}'),
(677, 'ability.to.manage.countries', '{\"x\":\"Ability to manage countries\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062f\\u0648\\u0644\"}'),
(678, 'ability.to.manage.states', '{\"x\":\"Ability to manage states\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0627\\u062a\"}'),
(679, 'ability.to.manage.cities', '{\"x\":\"Ability to manage cities\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0646\"}'),
(680, 'ability.to.manage.branches', '{\"x\":\"Ability to manage branches\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0631\\u0648\\u0639\"}'),
(681, 'ability.to.manage.cars', '{\"x\":\"Ability to manage cars\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0633\\u064a\\u0627\\u0631\\u0627\\u062a\"}'),
(682, 'ability.to.manage.transactions', '{\"x\":\"Ability to manage transactions\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0627\\u0645\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629\"}'),
(683, 'ability.to.manage.reports', '{\"x\":\"Ability to manage reports\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631\"}'),
(684, 'ability.to.manage.client.messages', '{\"x\":\"Ability to manage client messages\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621\"}'),
(685, 'ability.to.manage.products.categories', '{\"x\":\"Ability to manage products categories\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u062a\\u0635\\u0646\\u064a\\u0641 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a\"}'),
(686, 'couriers', '{\"x\":\"Couriers\",\"ar\":\"\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(687, 'ability.to.manage.couriers', '{\"x\":\"Ability to manage couriers\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(688, 'shipping', '{\"x\":\"Shipping\",\"ar\":\"\\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(689, 'ability.to.manage.shipping.modes', '{\"x\":\"Ability to manage shipping modes\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(690, 'ability.to.manage.treasury', '{\"x\":\"Ability to manage treasury\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0632\\u064a\\u0646\\u0629\"}'),
(691, 'ability.to.manage.delivery.times', '{\"x\":\"Ability to manage delivery times\",\"ar\":\"\\u0627\\u0644\\u0642\\u062f\\u0631\\u0629 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0648\\u0642\\u0627\\u062a \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(692, 'edit.employee', '{\"x\":\"Edit Employee\",\"ar\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\"}'),
(693, 'packages.balance', '{\"x\":\"Packages Balance\",\"ar\":\"\\u0631\\u0635\\u064a\\u062f \\u0627\\u0644\\u0637\\u0631\\u0648\\u062f\"}'),
(694, 'employee.view', '{\"x\":\"Employee View\",\"ar\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\"}'),
(695, 'create.new.employee', '{\"x\":\"Create New Employee\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0648\\u0638\\u0641 \\u062c\\u062f\\u064a\\u062f\"}'),
(696, 'check.if.you.need.this.user.see.every.data.in.the.modules.that.he.has.permission.on.inside.his.branch', '{\"x\":\"Check if you need this user see every data in the modules that he has permission on inside his branch\",\"ar\":\"\\u062d\\u062f\\u062f \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0639\\u0644\\u0627\\u0645\\u0629 \\u0644\\u062a\\u064f\\u0645\\u0643\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u0646 \\u0631\\u0624\\u064a\\u0649 \\u0643\\u0644 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0648\\u062c\\u0648\\u062f\\u0629 \\u062f\\u0627\\u062e\\u0644 \\u0641\\u0631\\u0639\\u0647\"}'),
(697, 'departments.settings', '{\"x\":\"Departments - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\"}'),
(698, 'backup.settings', '{\"x\":\"Backup - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0646\\u0633\\u062e \\u0627\\u0644\\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\"}'),
(699, 'kb', '{\"x\":\"KB\",\"ar\":\"KB\"}'),
(700, 'created.date', '{\"x\":\"Created Date\",\"ar\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0625\\u0646\\u0634\\u0627\\u0621\"}'),
(701, 'this.feature.is.not.allowed.in.demo', '{\"x\":\"This feature is not allowed in demo\",\"ar\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0641\\u0649 \\u0627\\u0644\\u0646\\u0633\\u062e\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629\"}'),
(702, 'إنشاء.نسخة.أحتياطية.لقاعدة.البيانات', '{\"x\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0646\\u0633\\u062e\\u0629 \\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\\u0629 \\u0644\\u0642\\u0627\\u0639\\u062f\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\",\"ar\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0646\\u0633\\u062e\\u0629 \\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\\u0629 \\u0644\\u0642\\u0627\\u0639\\u062f\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\",\"en\":\"Create Backup For Database\"}'),
(703, 'إنشاء.نسخة.أحتياطية.للملفات', '{\"x\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0646\\u0633\\u062e\\u0629 \\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\\u0629 \\u0644\\u0644\\u0645\\u0644\\u0641\\u0627\\u062a\",\"ar\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0646\\u0633\\u062e\\u0629 \\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\\u0629 \\u0644\\u0644\\u0645\\u0644\\u0641\\u0627\\u062a\",\"en\":\"Create Backup For Files\"}'),
(704, 'إنشاء.نسخة.أحتياطية.لكامل.النظام', '{\"x\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0646\\u0633\\u062e\\u0629 \\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\\u0629 \\u0644\\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\",\"ar\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0646\\u0633\\u062e\\u0629 \\u0623\\u062d\\u062a\\u064a\\u0627\\u0637\\u064a\\u0629 \\u0644\\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\",\"en\":\"Create Backup For Whole System\"}'),
(705, 'employees.settings', '{\"x\":\"Employees - Settings\",\"ar\":\"\\u0627\\u0644\\u0623\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\\u064a\\u0646\"}'),
(706, 'create.new.department', '{\"x\":\"Create New Department\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0642\\u0633\\u0645 \\u062c\\u062f\\u064a\\u062f\"}'),
(707, 'google.settings', '{\"x\":\"Google - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u062c\\u0648\\u062c\\u0644\"}'),
(708, 'google.maps', '{\"x\":\"Google Maps\",\"ar\":\"\\u062e\\u0631\\u0627\\u0626\\u0637 \\u062c\\u0648\\u062c\\u0644\"}'),
(709, 'key', '{\"x\":\"Key\"}'),
(710, 'recaptcha', '{\"x\":\"Recaptcha\"}'),
(711, 'notifications.settings', '{\"x\":\"Notifications - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\"}'),
(712, 'enable.live.notification', '{\"x\":\"Enable Live Notification\",\"ar\":\"\\u062a\\u0641\\u0639\\u064a\\u0644 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062d\\u064a\\u0629\"}'),
(713, 'live.notification.provider', '{\"x\":\"Live Notification Provider\",\"ar\":\"\\u0645\\u0632\\u0648\\u062f \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062d\\u064a\\u0629\"}'),
(714, 'app.id', '{\"x\":\"App ID\"}'),
(715, 'secret', '{\"x\":\"Secret\"}'),
(716, 'cluster', '{\"x\":\"Cluster\"}'),
(717, 'notifications.responsibility', '{\"x\":\"Notifications Responsibility\",\"ar\":\"\\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644 \\u0639\\u0646 \\u0627\\u0644\\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\"}'),
(718, 'new.shipments.notifications', '{\"x\":\"New Shipments Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(719, 'system.administrators', '{\"x\":\"System Administrators\",\"ar\":\"\\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0629\"}'),
(720, 'supervisors', '{\"x\":\"Supervisors\",\"ar\":\"\\u0627\\u0644\\u0645\\u0634\\u0631\\u0641\\u064a\\u0646\"}'),
(721, 'departments.moderators', '{\"x\":\"Departments Moderators\",\"ar\":\"\\u0645\\u0634\\u0631\\u0641\\u064a\\u0646 \\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\"}'),
(722, 'departments.employees', '{\"x\":\"Departments Employees\",\"ar\":\"\\u0645\\u0648\\u0638\\u0641\\u064a\\u0646 \\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\"}'),
(723, 'choose.the.departments', '{\"x\":\"Choose the departments\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631\\u064a \\u0627\\u0644\\u0623\\u0642\\u0633\\u0627\\u0645\"}'),
(724, 'choose.the.employees', '{\"x\":\"Choose the employees\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631\\u064a \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641\\u064a\\u0646\"}'),
(725, 'new.shipments.note.notifications', '{\"x\":\"New Shipments Note Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(726, 'responsible', '{\"x\":\"Responsible\",\"ar\":\"\\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644\"}'),
(727, 'update.shipments.notifications', '{\"x\":\"Update Shipments Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(728, 'approved.shipments.notifications', '{\"x\":\"Approved Shipments Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(729, 'refused.shipments.notifications', '{\"x\":\"Refused Shipments Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(730, 'postponed.shipments.notifications', '{\"x\":\"Postponed Shipments Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u062a\\u0623\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(731, 'transfered.shipments.notifications', '{\"x\":\"Transfered Shipments Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0646\\u0642\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(732, 'assigned.shipments.notifications', '{\"x\":\"Assigned Shipments Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a\"}'),
(733, 'driver.received.notifications', '{\"x\":\"Driver Received Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u062a \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0633\\u0627\\u0626\\u0642\"}'),
(734, 'discards.request.notifications', '{\"x\":\"Discards Request Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0645\\u0631\\u062a\\u062c\\u0639\\u0627\\u062a\"}'),
(735, 'received.notifications', '{\"x\":\"Received Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0627\\u0633\\u062a\\u0644\\u0627\\u0645\"}'),
(736, 'manifest.notifications', '{\"x\":\"Manifest Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u062a \\u062e\\u0637 \\u0627\\u0644\\u0633\\u064a\\u0631\"}'),
(737, 'saved.in.stock.notifications', '{\"x\":\"Saved in stock Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u062a \\u0627\\u0644\\u062d\\u0641\\u0638 \\u0628\\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\"}'),
(738, 'returned.notifications', '{\"x\":\"Returned Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u0648\\u0631\\u064a\\u062f\"}'),
(739, 'delivered.notifications', '{\"x\":\"Delivered Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645\"}'),
(740, 'return.discards.notifications', '{\"x\":\"Return Discards Notifications\",\"ar\":\"\\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u062a\\u0648\\u0631\\u064a\\u062f \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(741, 'sms.settings', '{\"x\":\"Sms - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(742, 'sms', '{\"x\":\"SMS\",\"ar\":\"\\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(743, 'enable.sms', '{\"x\":\"Enable SMS\",\"ar\":\"\\u062a\\u0641\\u0639\\u064a\\u0644 \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(744, 'sms.provider', '{\"x\":\"SMS Provider\",\"ar\":\"\\u0645\\u0632\\u0648\\u062f \\u062e\\u062f\\u0645\\u0629 \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644\"}'),
(745, 'countries.settings', '{\"x\":\"Countries - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0627\\u062a\"}'),
(746, 'update.country', '{\"x\":\"Update Country\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u062f\\u0648\\u0644\\u0629\"}'),
(747, 'create.new.country', '{\"x\":\"Create New Country\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u062f\\u0648\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(748, 'states.settings', '{\"x\":\"States - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0627\\u062a\"}'),
(749, 'place', '{\"x\":\"Place\",\"ar\":\"\\u0627\\u0644\\u0645\\u0643\\u0627\\u0646\"}'),
(750, 'update.state', '{\"x\":\"Update State\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629\"}'),
(751, 'create.new.state', '{\"x\":\"Create New State\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u062f\\u0648\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(752, 'cities.settings', '{\"x\":\"Cities - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0645\\u062f\\u0646\"}'),
(753, 'create.new.city', '{\"x\":\"Create New City\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0645\\u062f\\u064a\\u0646\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(754, 'areas.settings', '{\"x\":\"Areas - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0645\\u0646\\u0627\\u0637\\u0642\"}'),
(755, 'create.new.area', '{\"x\":\"Create New Area\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0646\\u0637\\u0642\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(756, 'select.it.first', '{\"x\":\"Select it first\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631\\u0647\\u0627 \\u0627\\u0644\\u0623\\u0648\\u0644\"}'),
(757, 'cars.settings', '{\"x\":\"Cars - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0633\\u064a\\u0627\\u0631\\u0627\\u062a\"}'),
(758, 'create.car', '{\"x\":\"Create Car\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0633\\u064a\\u0627\\u0631\\u0629\"}'),
(759, 'enable', '{\"x\":\"Enable\",\"ar\":\"\\u062a\\u0641\\u0639\\u064a\\u0644\"}'),
(760, 'driver', '{\"x\":\"Driver\",\"ar\":\"\\u0627\\u0644\\u0633\\u0627\\u0626\\u0642\"}'),
(761, 'invoice.settings', '{\"x\":\"Invoice - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\"}'),
(762, 'shipment.prefix', '{\"x\":\"Shipment Prefix\",\"ar\":\"\\u0628\\u0627\\u062f\\u0626\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(763, 'shipment.number.of.digits.in.the.tracking', '{\"x\":\"Shipment Number of digits in the tracking\",\"ar\":\"\\u0639\\u062f\\u062f \\u0623\\u0631\\u0642\\u0627\\u0645 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0628\\u0631\\u0642\\u0645 \\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(764, 'example', '{\"x\":\"EXAMPLE\",\"ar\":\"\\u0645\\u062b\\u0627\\u0644\"}'),
(765, 'container.prefix', '{\"x\":\"Container Prefix\",\"ar\":\"\\u0628\\u0627\\u062f\\u0626\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0648\\u064a\\u0629\"}'),
(766, 'container.number.of.digits.in.the.tracking', '{\"x\":\"Container Number of digits in the tracking\",\"ar\":\"\\u0639\\u062f\\u062f \\u0623\\u0631\\u0642\\u0627\\u0645 \\u0627\\u0644\\u062a\\u062a\\u0628\\u064a\\u0639 \\u0628\\u0631\\u0642\\u0645 \\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u062d\\u0627\\u0648\\u064a\\u0629\"}'),
(767, 'default.delivery.time', '{\"x\":\"Default Delivery Time\",\"ar\":\"\\u0648\\u0642\\u062a \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\"}'),
(768, 'default.status.time', '{\"x\":\"Default Status Time\",\"ar\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629\"}'),
(769, 'default.tracking.id', '{\"x\":\"Default Tracking ID\",\"ar\":\"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a \\u0644\\u0644\\u062a\\u062a\\u0628\\u0639\"}'),
(770, 'the.id.that.will.be.shown.on.your.print.label.so.you.can.detect.by.the.id.from.and.where.this.shipment.will.go.through', '{\"x\":\"The id that will be shown on your print label so you can detect by the id from and where this shipment will go through\",\"ar\":\"\\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0630\\u064a \\u0633\\u064a\\u0638\\u0647\\u0631 \\u0639\\u0644\\u0649 \\u0643\\u0627\\u0631\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0644\\u062a\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u0645\\u0639\\u0631\\u0641\\u0629 \\u0645\\u0646 \\u0648\\u0625\\u0644\\u0649 \\u0633\\u062a\\u062a\\u062d\\u0631\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(771, 'invoice', '{\"x\":\"Invoice\",\"ar\":\"\\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\"}'),
(772, 'default.invoice.terms', '{\"x\":\"Default Invoice Terms\",\"ar\":\"\\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0627\\u0644\\u0623\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629 \\u0628\\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\"}'),
(773, 'invoice.company.signing', '{\"x\":\"Invoice Company Signing\",\"ar\":\"\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0628\\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\"}'),
(774, 'invoice.customer.signing', '{\"x\":\"Invoice Customer Signing\",\"ar\":\"\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0628\\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\"}'),
(775, 'create.new.fees', '{\"x\":\"Create New Fees\",\"ar\":\"\\u062a\\u0639\\u0631\\u064a\\u0641 \\u0631\\u0633\\u0648\\u0645 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(776, 'fees.type', '{\"x\":\"Fees Type\",\"ar\":\"\\u0623\\u0646\\u0648\\u0627\\u0639 \\u0627\\u0644\\u0631\\u0633\\u0648\\u0645\"}'),
(777, 'from.country', '{\"x\":\"From Country\",\"ar\":\"\\u0645\\u0646 \\u062f\\u0648\\u0644\\u0629\"}'),
(778, 'to.country', '{\"x\":\"To Country\",\"ar\":\"\\u0625\\u0644\\u0649 \\u062f\\u0648\\u0644\\u0629\"}'),
(779, 'from.state', '{\"x\":\"From State\",\"ar\":\"\\u0645\\u0646 \\u0645\\u062d\\u0627\\u0641\\u0638\\u0629\"}'),
(780, 'to.state', '{\"x\":\"To State\",\"ar\":\"\\u0625\\u0644\\u0649 \\u0645\\u062d\\u0627\\u0641\\u0638\\u0629\"}'),
(781, 'from.city', '{\"x\":\"From City\",\"ar\":\"\\u0645\\u0646 \\u0645\\u062f\\u064a\\u0646\\u0629\"}'),
(782, 'to.city', '{\"x\":\"To City\",\"ar\":\"\\u0625\\u0644\\u0649 \\u0645\\u062f\\u064a\\u0646\\u0629\"}'),
(783, 'from.area', '{\"x\":\"From Area\",\"ar\":\"\\u0645\\u0646 \\u0645\\u0646\\u0637\\u0642\\u0629\"}'),
(784, 'to.area', '{\"x\":\"To Area\",\"ar\":\"\\u0625\\u0644\\u0649 \\u0645\\u0646\\u0637\\u0642\\u0629\"}'),
(785, 'delivery.cost', '{\"x\":\"Delivery cost\",\"ar\":\"\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(786, 'transactions.deposited.reports', '{\"x\":\"Transactions Deposited Reports\",\"ar\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0645\\u0639\\u0627\\u0645\\u0644\\u0627\\u062a \\u0627\\u0644\\u0627\\u064a\\u062f\\u0627\\u0639\"}'),
(787, 'movement', '{\"x\":\"Movement\",\"ar\":\"\\u0627\\u0644\\u062d\\u0631\\u0643\\u0629\"}'),
(788, 'no.transactions.found', '{\"x\":\"No transactions found\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0625\\u064a\\u062c\\u0627\\u062f \\u0623\\u064a \\u0645\\u0639\\u0627\\u0645\\u0644\\u0627\\u062a \\u0645\\u0627\\u0644\\u064a\\u0629\"}'),
(789, 'report.print', '{\"x\":\"Report Print\",\"ar\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u062a\\u0642\\u0631\\u064a\\u0631\"}'),
(790, 'transactions.withdrawl.reports', '{\"x\":\"Transactions Withdrawl Reports\",\"ar\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \"}'),
(791, 'تقارير.الشحنات.المسلمة', '{\"x\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u064f\\u0633\\u0644\\u0645\\u0629\",\"ar\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u064f\\u0633\\u0644\\u0645\\u0629\",\"en\":\"Shipments Delivered Reports\"}'),
(792, 'shipments.delivered.reports', '{\"x\":\"Shipments Delivered Reports\",\"ar\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u064f\\u0633\\u0644\\u0645\\u0629\"}'),
(793, 'no.orders.found', '{\"x\":\"No orders found\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u0625\\u064a\\u062c\\u0627\\u062f \\u0634\\u062d\\u0646\\u0627\\u062a\",\"en\":\"No shipments found\"}'),
(794, 'shipments.delayed.reports', '{\"x\":\"Shipments Delayed Reports\",\"ar\":\"\\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0623\\u062e\\u0631\\u0629\"}'),
(795, 'frequently.asked.questions', '{\"x\":\"Frequently asked questions\",\"ar\":\"\\u0627\\u0644\\u0623\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0634\\u0627\\u0626\\u0639\\u0629\"}'),
(796, 'what.is.cash.on.delivery', '{\"x\":\"What is Cash on Delivery?\",\"ar\":\"\\u0645\\u0627 \\u0647\\u0648 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0639\\u0646\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0644\\u0627\\u0645\\u061f\"}'),
(797, 'cash.on.delivery.in.short.the.amount.due.for.the.service.or.product.shipped.to.the.customers.home.is.not.collected.until.the.customer.receives.the.product.or.service.from.the.shipping.company.representative.whatever.that.company.is', '{\"x\":\"Cash On Delivery In short, the amount due for the service or product shipped to the customer\'s home is not collected until the customer receives the product or service from the shipping company representative, whatever that company is.\",\"ar\":\"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0639\\u0646\\u062f \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0628\\u0627\\u062e\\u062a\\u0635\\u0627\\u0631 \\u060c \\u0644\\u0627 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062d\\u0642 \\u0644\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0627\\u0644\\u0630\\u064a \\u064a\\u062a\\u0645 \\u0634\\u062d\\u0646\\u0647 \\u0625\\u0644\\u0649 \\u0645\\u0646\\u0632\\u0644 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u062d\\u062a\\u0649 \\u064a\\u062a\\u0644\\u0642\\u0649 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0623\\u0648 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0645\\u0645\\u062b\\u0644 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u060c \\u0623\\u064a\\u0627 \\u0643\\u0627\\u0646\\u062a \\u062a\\u0644\\u0643 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629.\"}'),
(798, 'is.cash.on.delivery.safe.for.me', '{\"x\":\"Is Cash on Delivery safe for me?\",\"ar\":\"\\u0647\\u0644 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0639\\u0646\\u062f \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0622\\u0645\\u0646 \\u0628\\u0627\\u0644\\u0646\\u0633\\u0628\\u0629 \\u0644\\u064a\\u061f\"}'),
(799, 'the.cash.on.delivery.system.is.one.of.the.payment.methods.available.in.various.electronic.stores.and.online.selling.sites.all.over.the.world.especially.arabic.ones.as.many.arab.world.online.shoppers.prefer.the.method.of.cash.on.delivery.it.means.that...', '{\"x\":\"The Cash on Delivery system is one of the payment methods available in various electronic stores and online selling sites all over the world, especially Arabic ones, as many Arab world online shoppers prefer the method of cash on delivery. It means that the shopper can shop through any online store, choose the product he wants and then make the order and choose the method of payment upon receipt, which means that the payment process is postponed until the customer receives the product he ordered online.\",\"ar\":\"\\u064a\\u0639\\u062f \\u0646\\u0638\\u0627\\u0645 Cash on Delivery \\u0623\\u062d\\u062f \\u0637\\u0631\\u0642 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0645\\u062a\\u0627\\u062c\\u0631 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0648\\u0645\\u0648\\u0627\\u0642\\u0639 \\u0627\\u0644\\u0628\\u064a\\u0639 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u0641\\u064a \\u062c\\u0645\\u064a\\u0639 \\u0623\\u0646\\u062d\\u0627\\u0621 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645 \\u060c \\u0648\\u062e\\u0627\\u0635\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0645\\u0646\\u0647\\u0627 \\u060c \\u062d\\u064a\\u062b \\u064a\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0645\\u062a\\u0633\\u0648\\u0642\\u064a\\u0646 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u0641\\u064a \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a \\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0639\\u0646\\u062f \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645. \\u0648\\u0647\\u0630\\u0627 \\u064a\\u0639\\u0646\\u064a \\u0623\\u0646 \\u0627\\u0644\\u0645\\u062a\\u0633\\u0648\\u0642 \\u064a\\u0645\\u0643\\u0646\\u0647 \\u0627\\u0644\\u062a\\u0633\\u0648\\u0642 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0623\\u064a \\u0645\\u062a\\u062c\\u0631 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u060c \\u0648\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0627\\u0644\\u0630\\u064a \\u064a\\u0631\\u064a\\u062f\\u0647 \\u060c \\u062b\\u0645 \\u0625\\u062c\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0648\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0639\\u0646\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u060c \\u0645\\u0645\\u0627 \\u064a\\u0639\\u0646\\u064a \\u0623\\u0646 \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0645\\u0624\\u062c\\u0644\\u0629 \\u0625\\u0644\\u0649 \\u0623\\u0646 \\u064a\\u062a\\u0644\\u0642\\u0649 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0627\\u0644\\u0630\\u064a \\u0637\\u0644\\u0628\\u0647 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a.\"}'),
(800, 'what.is.the.cost.charged.by.shipping.companies.to.pay.on.delivery', '{\"x\":\"What is the cost charged by shipping companies to pay on delivery?\",\"ar\":\"\\u0645\\u0627 \\u0647\\u064a \\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0641\\u0631\\u0636\\u0647\\u0627 \\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0639\\u0646\\u062f \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645\\u061f\"}'),
(801, 'there.is.no.specific.percentage.of.fees.charged.by.shipping.companies.on.the.cash.on.delivery.service.but.it.is.an.agreement.with.the.shipping.company.that.already.charges.extra.charges.other.than.shipping.charges', '{\"x\":\"There is no specific percentage of fees charged by shipping companies on the Cash on Delivery service, but it is an agreement with the shipping company that already charges extra charges other than shipping charges.\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0648\\u062c\\u062f \\u0646\\u0633\\u0628\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0645\\u062d\\u062f\\u062f\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0641\\u0631\\u0636\\u0647\\u0627 \\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0639\\u0644\\u0649 \\u062e\\u062f\\u0645\\u0629 Cash on Delivery \\u060c \\u0648\\u0644\\u0643\\u0646\\u0647\\u0627 \\u0627\\u062a\\u0641\\u0627\\u0642\\u064a\\u0629 \\u0645\\u0639 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u062a\\u0641\\u0631\\u0636 \\u0631\\u0633\\u0648\\u0645\\u064b\\u0627 \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629 \\u063a\\u064a\\u0631 \\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646.\"}'),
(802, 'what.if.the.customer.refuses.to.receive.the.product.from.the.shipping.company.representative', '{\"x\":\"What if the customer refuses to receive the product from the shipping company representative?\",\"ar\":\"\\u0645\\u0627\\u0630\\u0627 \\u0644\\u0648 \\u0631\\u0641\\u0636 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0645\\u0646 \\u0645\\u0645\\u062b\\u0644 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u061f\"}');
INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(803, 'in.case.the.shipping.company.representative.arrives.at.the.customers.home.and.the.customer.refuses.to.receive.the.product.and.pay.for.it.the.online.store.or.online.sales.site.will.be.responsible.for.the.costs.incurred.by.the.shipping.company.in.order...', '{\"x\":\"In case the shipping company representative arrives at the customer\'s home, and the customer refuses to receive the product and pay for it, the online store or online sales site will be responsible for the costs incurred by the shipping company in order to deliver the product and collect the amounts due from the customer, but there are procedures for the store to do Out to avoid such occurrence again.\",\"ar\":\"\\u0641\\u064a \\u062d\\u0627\\u0644\\u0629 \\u0648\\u0635\\u0648\\u0644 \\u0645\\u0645\\u062b\\u0644 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0625\\u0644\\u0649 \\u0645\\u0646\\u0632\\u0644 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u060c \\u0648\\u0631\\u0641\\u0636 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0648\\u062f\\u0641\\u0639\\u0647 \\u060c \\u0633\\u064a\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0645\\u062a\\u062c\\u0631 \\u0623\\u0648 \\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0645\\u0628\\u064a\\u0639\\u0627\\u062a \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u0645\\u0633\\u0624\\u0648\\u0644\\u0627\\u064b \\u0639\\u0646 \\u0627\\u0644\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u062a\\u064a \\u062a\\u062a\\u0643\\u0628\\u062f\\u0647\\u0627 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0645\\u0646 \\u0623\\u062c\\u0644 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0648 \\u0642\\u0645 \\u0628\\u062c\\u0645\\u0639 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0644\\u063a \\u0627\\u0644\\u0645\\u0633\\u062a\\u062d\\u0642\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0647\\u0646\\u0627\\u0643 \\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u064a\\u0642\\u0648\\u0645 \\u0628\\u0647\\u0627 \\u0627\\u0644\\u0645\\u062a\\u062c\\u0631 \\u0644\\u0644\\u0642\\u064a\\u0627\\u0645 \\u0628\\u0647\\u0627 \\u0644\\u062a\\u062c\\u0646\\u0628 \\u062d\\u062f\\u0648\\u062b \\u0647\\u0630\\u0627 \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649.\"}'),
(804, 'can.i.make.an.appointment.with.my.shipping.service.provider.to.deliver.the.item', '{\"x\":\"Can I make an appointment with my shipping service provider to deliver the item?\",\"ar\":\"\\u0647\\u0644 \\u064a\\u0645\\u0643\\u0646\\u0646\\u064a \\u062a\\u062d\\u062f\\u064a\\u062f \\u0645\\u0648\\u0639\\u062f \\u0645\\u0639 \\u0645\\u0632\\u0648\\u062f \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u064a \\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631\\u061f\"}'),
(805, 'you.can.not.directly.contact.the.shipping.service.provider.to.make.an.appointment.to.deliver.the.item.to.the.representative.but.you.can.specify.the.time.that.suits.you.with.the.representative.when.he.calls.you', '{\"x\":\"You can not directly contact the shipping service provider to make an appointment to deliver the item to the representative, but you can specify the time that suits you with the representative when he calls you.\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0628\\u0645\\u0632\\u0648\\u062f \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0644\\u062a\\u062d\\u062f\\u064a\\u062f \\u0645\\u0648\\u0639\\u062f \\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0639\\u0646\\u0635\\u0631 \\u0644\\u0644\\u0645\\u0645\\u062b\\u0644 \\u060c \\u0644\\u0643\\u0646 \\u064a\\u0645\\u0643\\u0646\\u0643 \\u062a\\u062d\\u062f\\u064a\\u062f \\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0630\\u064a \\u064a\\u0646\\u0627\\u0633\\u0628\\u0643 \\u0645\\u0639 \\u0627\\u0644\\u0645\\u0645\\u062b\\u0644 \\u0639\\u0646\\u062f\\u0645\\u0627 \\u064a\\u062a\\u0635\\u0644 \\u0628\\u0643.\"}'),
(806, 'other', '{\"x\":\"Other\",\"ar\":\"\\u0622\\u062e\\u0631\\u0649\"}'),
(807, 'create.new.transaction', '{\"x\":\"Create New Transaction\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0639\\u0627\\u0645\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(808, 'شحنات.مسلمة', '{\"x\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u0645\\u0633\\u0644\\u0645\\u0629\"}'),
(809, 'branches.settings', '{\"x\":\"Branches - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u0641\\u0631\\u0648\\u0639\"}'),
(810, 'update.branch', '{\"x\":\"Update Branch\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0641\\u0631\\u0639\"}'),
(811, 'mobile.2', '{\"x\":\"Mobile 2\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0662\"}'),
(812, 'mobile.3', '{\"x\":\"Mobile 3\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0663\"}'),
(813, 'manager', '{\"x\":\"Manager\",\"ar\":\"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0631\"}'),
(814, 'is.the.responsilble.for.receiving.transfers.orders.not.the.manager', '{\"x\":\"Is the responsilble for receiving transfers orders not the manager?\",\"ar\":\"\\u0647\\u0644 \\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644 \\u0639\\u0646 \\u0623\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062d\\u0648\\u064a\\u0644 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0641\\u0631\\u0648\\u0639 \\u0644\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0634\\u062e\\u0635 \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0631\\u061f\",\"en\":\"Is the responsilble for receiving transfers shipments not the manager?\"}'),
(815, 'create.branch', '{\"x\":\"Create Branch\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0631\\u0639\"}'),
(816, 'join.our.great.community.get.your.account', '{\"x\":\"JOIN OUR GREAT COMMUNITY GET YOUR ACCOUNT\"}'),
(817, 'amazing.stuff.is.here', '{\"x\":\"Amazing Stuff is Here\"}'),
(818, 'get.an.account', '{\"x\":\"Get An Account\",\"ar\":\"\\u0623\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u062d\\u0633\\u0627\\u0628\"}'),
(819, 'login.to.your.account', '{\"x\":\"Login To Your Account\",\"ar\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u062f\\u062e\\u0648\\u0644 \\u0644\\u062d\\u0633\\u0627\\u0628\\u0643\"}'),
(820, 'forget.password', '{\"x\":\"Forget Password ?\",\"ar\":\"\\u0646\\u0633\\u064a\\u062a \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\\u061f\"}'),
(821, 'sign.up', '{\"x\":\"Sign Up\",\"ar\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0639\\u0636\\u0648\\u064a\\u0629\"}'),
(822, 'enter.your.details.to.create.your.account', '{\"x\":\"Enter your details to create your account\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0644\\u064a\\u062a\\u0645 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628\"}'),
(823, 'enter.your.username', '{\"x\":\"Enter your username\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\"}'),
(824, 'choose.a.password', '{\"x\":\"Choose a Password\",\"ar\":\"\\u0623\\u062e\\u062a\\u0627\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0633\\u0631\"}'),
(825, 'forgotten.password', '{\"x\":\"Forgotten Password ?\",\"ar\":\"\\u0646\\u0633\\u064a\\u062a \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\\u061f\"}'),
(826, 'enter.your.email.to.reset.your.password', '{\"x\":\"Enter your email to reset your password\",\"ar\":\"\\u0623\\u0643\\u062a\\u0628 \\u0628\\u0631\\u064a\\u062f\\u0643 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0633\\u0631\"}'),
(827, 'request', '{\"x\":\"Request\",\"ar\":\"\\u0637\\u0644\\u0628\"}'),
(828, 'dont.agree', '{\"x\":\"Don\'t Agree\",\"ar\":\"\\u0644\\u0627 \\u0623\\u0648\\u0627\\u0641\\u0642\"}'),
(829, 'agree', '{\"x\":\"Agree\",\"ar\":\"\\u0645\\u0648\\u0627\\u0641\\u0642\"}'),
(830, 'this.field.is.required', '{\"x\":\"This field is required!\",\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u062d\\u0642\\u0644 \\u0645\\u0637\\u0644\\u0648\\u0628!\"}'),
(831, 'correct.you.are.being.redirect', '{\"x\":\"Correct, you are being redirect\",\"ar\":\"\\u0635\\u062d\\u064a\\u062d\\u060c \\u062c\\u0627\\u0631\\u064a \\u062a\\u062d\\u0648\\u064a\\u0644\\u0643 \\u0627\\u0644\\u0622\\u0646\"}'),
(832, 'packaging.settings', '{\"x\":\"Packaging - Settings\",\"ar\":\"\\u0627\\u0644\\u0623\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u062a\\u063a\\u0644\\u064a\\u0641\"}'),
(833, 'update.package', '{\"x\":\"Update Package\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u062a\\u063a\\u0644\\u064a\\u0641\"}'),
(834, 'create.package', '{\"x\":\"Create Package\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u062a\\u063a\\u0644\\u064a\\u0641\"}'),
(835, 'statuses.settings', '{\"x\":\"Statuses - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u062d\\u0627\\u0644\\u0627\\u062a\"}'),
(836, 'covered.areas', '{\"x\":\"Covered Areas\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0627\\u0637\\u0642 \\u0627\\u0644\\u0645\\u063a\\u0637\\u0627\\u0629\"}'),
(837, 'your.covered.areas.that.you.can.deliver.from.or.to', '{\"x\":\"Your covered areas that you can deliver from or to\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0627\\u0637\\u0642 \\u0627\\u0644\\u062a\\u064a \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0644\\u0647\\u0627 \\u0623\\u0648 \\u0623\\u0644\\u064a\\u0647\\u0627\"}'),
(838, 'please.be.aware.that.you.will.be.assigned.to.those.places.orders', '{\"x\":\"Please be aware that you will be assigned to those places orders\",\"ar\":\"\\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0625\\u0639\\u0644\\u0645 \\u0623\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0645\\u0627\\u0643\\u0646 \\u0647\\u064a \\u0627\\u0644\\u062a\\u064a \\u0633\\u064a\\u062a\\u0645 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0627\\u062a \\u0644\\u0643 \\u0628\\u0647\\u0627\",\"en\":\"Please be aware that you will be assigned to those places shipments\"}'),
(839, 'place.type', '{\"x\":\"Place Type\",\"ar\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0643\\u0627\\u0646\"}'),
(840, 'add.another.place', '{\"x\":\"Add Another Place\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0643\\u0627\\u0646 \\u062c\\u062f\\u064a\\u062f\"}'),
(841, 'color', '{\"x\":\"Color\",\"ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\"}'),
(842, 'dark.color', '{\"x\":\"Dark Color\",\"ar\":\"\\u0644\\u0648\\u0646 \\u0623\\u0633\\u0648\\u062f\"}'),
(843, 'brand.color', '{\"x\":\"Brand Color\",\"ar\":\"\\u0644\\u0648\\u0646 \\u0623\\u0632\\u0631\\u0642 \\u0639\\u0627\\u062f\\u064a\"}'),
(844, 'primary.color', '{\"x\":\"Primary Color\",\"ar\":\"\\u0644\\u0648\\u0646 \\u0628\\u0646\\u0641\\u0633\\u062c\\u064a\"}'),
(845, 'info.color', '{\"x\":\"Info Color\",\"ar\":\"\\u0644\\u0648\\u0646 \\u0623\\u0632\\u0631\\u0642 \\u0641\\u0627\\u062a\\u062d\"}'),
(846, 'danger.color', '{\"x\":\"Danger Color\",\"ar\":\"\\u0644\\u0648\\u0646 \\u0623\\u062d\\u0645\\u0631\"}'),
(847, 'warning.color', '{\"x\":\"Warning Color\",\"ar\":\"\\u0644\\u0648\\u0646 \\u0628\\u0631\\u062a\\u0642\\u0627\\u0644\\u064a\"}'),
(848, 'success.color', '{\"x\":\"Success Color\",\"ar\":\"\\u0644\\u0648\\u0646 \\u0623\\u062e\\u0636\\u0631\"}'),
(849, 'status.equals', '{\"x\":\"Status Equals\",\"ar\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u062a\\u0639\\u0646\\u064a\"}'),
(850, 'null', '{\"x\":\"Null\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0639\\u0646\\u0649 \\u0634\\u064a\\u0621\"}'),
(851, 'refused', '{\"x\":\"Refused\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u0631\\u0641\\u0636\"}'),
(852, 'received', '{\"x\":\"Received\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u0623\\u0633\\u062a\\u0644\\u0627\\u0645\"}'),
(853, 'courier.company.received', '{\"x\":\"Courier company received\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u0623\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0645\\u0646 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(854, 'delivered.to.receiver', '{\"x\":\"Delivered to receiver\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0644\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(855, 'return.request', '{\"x\":\"Return request\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0648\\u0631\\u064a\\u062f \\u0644\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(856, 'delivery.of.discards.to.the.driver', '{\"x\":\"Delivery of discards to the driver\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u062a\\u0648\\u0631\\u064a\\u062f \\u0644\\u0644\\u0633\\u0627\\u0626\\u0642\"}'),
(857, 'supply.in.stock', '{\"x\":\"Supply in stock\",\"ar\":\"\\u062e\\u0632\\u0646\\u062a \\u0628\\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\"}'),
(858, 'returned.successfully', '{\"x\":\"Returned successfully\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0648\\u0631\\u064a\\u062f \\u0628\\u0646\\u062c\\u0627\\u062d\"}'),
(859, 'the.status.means.what', '{\"x\":\"The status means what\",\"ar\":\"\\u0645\\u0627\\u0630\\u0627 \\u062a\\u0639\\u0646\\u064a \\u0627\\u0644\\u062d\\u0627\\u0644\\u0629\"}'),
(860, 'create.new.status', '{\"x\":\"Create New Status\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u062d\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(861, 'deliverytimes.settings', '{\"x\":\"Deliverytimes - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0623\\u0648\\u0642\\u0627\\u062a \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(862, 'update.delivery.time', '{\"x\":\"Update Delivery Time\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0648\\u0642\\u062a \\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(863, 'shipping.settings', '{\"x\":\"Shipping - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(864, 'create.shipping', '{\"x\":\"Create Shipping\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0646\\u0638\\u0627\\u0645 \\u0634\\u062d\\u0646\"}'),
(865, 'couriers.settings', '{\"x\":\"Couriers - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(866, 'create.courier', '{\"x\":\"Create Courier\",\"ar\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0634\\u0631\\u0643\\u0629 \\u0634\\u062d\\u0646\"}'),
(867, 'categories.settings', '{\"x\":\"Categories - Settings\",\"ar\":\"\\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f\\u0627\\u062a - \\u0627\\u0644\\u062a\\u0635\\u0646\\u064a\\u0641\\u0627\\u062a\"}'),
(868, 'create.category', '{\"x\":\"Create Category\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u062a\\u0635\\u0646\\u064a\\u0641\"}'),
(869, 'view.all.notifications', '{\"x\":\"View all notifications\",\"ar\":\"\\u0634\\u0627\\u0647\\u062f \\u0643\\u0644 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\"}'),
(870, 'شحنات.جديدة', '{\"x\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629\",\"ar\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(871, 'order.actions', '{\"x\":\"Order Actions\",\"ar\":\"\\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\",\"en\":\"Shipment Actions\"}'),
(872, 'accept', '{\"x\":\"Accept\",\"ar\":\"\\u0642\\u0628\\u0648\\u0644\"}'),
(873, 'refuse', '{\"x\":\"Refuse\",\"ar\":\"\\u0631\\u0641\\u0636\"}'),
(874, 'notes', '{\"x\":\"Notes\",\"ar\":\"\\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a\"}'),
(875, 'package.receive.date', '{\"x\":\"Package Receive Date\",\"ar\":\"\\u0648\\u0642\\u062a \\u0623\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(876, 'package.expected.delievery.date', '{\"x\":\"Package Expected Delievery Date\",\"ar\":\"\\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u062a\\u0648\\u0642\\u0639 \\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(877, 'order.details', '{\"x\":\"Order Details\",\"ar\":\"\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\",\"en\":\"Shipment Details\"}'),
(878, 'receive', '{\"x\":\"Receive\",\"ar\":\"\\u0623\\u0633\\u062a\\u0644\\u0627\\u0645\"}'),
(879, 'channel', '{\"x\":\"Channel\",\"ar\":\"\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644\"}'),
(880, 'backend', '{\"x\":\"backend\",\"ar\":\"\\u0644\\u0648\\u062d\\u0629 \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645\"}'),
(881, 'the.actual.cost.will.be.calculated.when.we.receive.the.package', '{\"x\":\"The actual cost will be calculated when we receive the package\",\"ar\":\"\\u0627\\u0644\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\\u0629 \\u0633\\u064a\\u062a\\u0645 \\u062a\\u0648\\u0636\\u064a\\u062d\\u0647\\u0627 \\u0648\\u0642\\u062a \\u0625\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(882, 'not.confirmed.yet', '{\"x\":\"Not confirmed yet\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u0623\\u0643\\u064a\\u062f\\u0647 \\u0628\\u0639\\u062f\"}'),
(883, 'return.courier.cost', '{\"x\":\"Return Courier Cost\",\"ar\":\"\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0634\\u062d\\u0646 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\"}'),
(884, 'total.requested.from.the.receiver', '{\"x\":\"Total Requested From The Receiver\",\"ar\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(885, 'total.requested.from.the.sender', '{\"x\":\"Total Requested From The Sender\",\"ar\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(886, 'total.received', '{\"x\":\"Total received\",\"ar\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(887, 'total.remaining', '{\"x\":\"Total remaining\",\"ar\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a \\u0627\\u0644\\u0645\\u062a\\u0628\\u0642\\u064a\"}'),
(888, 'receiver.details', '{\"x\":\"Receiver Details\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(889, 'write.your.notes', '{\"x\":\"Write your notes\",\"ar\":\"\\u0627\\u0643\\u062a\\u0628 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a\\u0643\"}'),
(890, 'add.note', '{\"x\":\"Add note\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0629\"}'),
(891, 'theres.no.notes.yet', '{\"x\":\"There\'s no notes yet\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0623\\u064a \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a \\u062d\\u062a\\u0649 \\u0627\\u0644\\u0622\\u0646\"}'),
(892, 'order.tasks', '{\"x\":\"Order Tasks\",\"ar\":\"\\u0645\\u0647\\u0645\\u0627\\u062a \\u0644\\u0644\\u0634\\u062d\\u0646\\u0629\",\"en\":\"Shipment Tasks\"}'),
(893, 'new.task', '{\"x\":\"New Task\",\"ar\":\"\\u0645\\u0647\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629\"}'),
(894, 'no.tasks.found', '{\"x\":\"No tasks found\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0647\\u0645\\u0627\\u062a\"}'),
(895, 'to.who', '{\"x\":\"To who?\",\"ar\":\"\\u0644\\u0645\\u0646\\u061f\"}'),
(896, 'assign.manifest', '{\"x\":\"Assign Manifest\",\"ar\":\"\\u062a\\u0639\\u064a\\u064a\\u0646 \\u0644\\u062e\\u0637 \\u0633\\u064a\\u0631\"}'),
(897, 'to.which.manifest', '{\"x\":\"To which manifest?\",\"ar\":\"\\u0644\\u0623\\u064a \\u062e\\u0637 \\u0633\\u064a\\u0631\\u061f\"}'),
(898, 'transfer.to.office', '{\"x\":\"Transfer to office\",\"ar\":\"\\u0646\\u0642\\u0644 \\u0644\\u0641\\u0631\\u0639\"}'),
(899, 'to.which.office', '{\"x\":\"To which office?\",\"ar\":\"\\u0644\\u0623\\u064a \\u0641\\u0631\\u0639\\u061f\"}'),
(900, 'transfer', '{\"x\":\"Transfer\",\"ar\":\"\\u0646\\u0642\\u0644\"}'),
(901, 'postpone', '{\"x\":\"Postpone\",\"ar\":\"\\u062a\\u0623\\u062c\\u064a\\u0644\"}'),
(902, 'to.date', '{\"x\":\"To Date\",\"ar\":\"\\u0625\\u0644\\u0649 \\u062a\\u0627\\u0631\\u064a\\u062e\"}'),
(903, 'reason', '{\"x\":\"Reason\",\"ar\":\"\\u0627\\u0644\\u0633\\u0628\\u0628\"}'),
(904, 'transfer.as.discards', '{\"x\":\"Transfer as discards\",\"ar\":\"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0643\\u0645\\u0631\\u062a\\u062c\\u0639\"}'),
(905, 'receiver.request', '{\"x\":\"Receiver request\",\"ar\":\"\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(906, 'receiver.evade', '{\"x\":\"Receiver evade\",\"ar\":\"\\u062a\\u0647\\u0631\\u064f\\u0628 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(907, 'sender.request', '{\"x\":\"Sender request\",\"ar\":\"\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(908, 'discard', '{\"x\":\"Discard\",\"ar\":\"\\u0625\\u0631\\u062c\\u0627\\u0639\"}'),
(909, 'courier.cost', '{\"x\":\"Courier Cost\",\"ar\":\"\\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(910, 'confirm', '{\"x\":\"Confirm\",\"ar\":\"\\u062a\\u0623\\u0643\\u064a\\u062f\"}'),
(911, 'deliver', '{\"x\":\"Deliver\",\"ar\":\"\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(912, 'go.to', '{\"x\":\"Go to\",\"ar\":\"\\u0625\\u0630\\u0647\\u0628 \\u0625\\u0644\\u0649\"}'),
(913, 'the.total.cost.of.courier.fees.is', '{\"x\":\"The total cost of courier fees is\",\"ar\":\"\\u0625\\u062c\\u0645\\u0627\\u0644\\u064a \\u062a\\u0643\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\"}'),
(914, 'the.total.requested.from.sender.is', '{\"x\":\"The total requested from sender is\",\"ar\":\"\\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(915, 'the.total.requested.from.receiver.is', '{\"x\":\"The total requested from receiver is\",\"ar\":\"\\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(916, 'yes.confirm', '{\"x\":\"Yes, confirm!\",\"ar\":\"\\u0646\\u0639\\u0645\\u060c \\u062a\\u0623\\u0643\\u064a\\u062f \\u0630\\u0644\\u0643!\"}'),
(917, 'no.change.something', '{\"x\":\"No, change something\",\"ar\":\"\\u0644\\u0627\\u060c \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0634\\u064a\\u0621 \\u0645\\u0627\"}'),
(918, 'مشاهدة.شحنة.2', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #2\"}'),
(919, 'shipment.view', '{\"x\":\"Shipment View\",\"ar\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(920, 'transfer.to.branch', '{\"x\":\"Transfer To Branch\",\"ar\":\"\\u0627\\u0644\\u0646\\u0642\\u0644 \\u0644\\u0641\\u0631\\u0639 \\u0623\\u062e\\u0631\"}'),
(921, 'save.in.stock', '{\"x\":\"Save in stock\",\"ar\":\"\\u062d\\u0641\\u0638 \\u0628\\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\"}'),
(922, 'activity.accepted', '{\"x\":\"activity_accepted\",\"ar\":\"\\u062a\\u0645 \\u0642\\u0628\\u0648\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\",\"en\":\"The shipment has been accepted\"}'),
(923, 'pm', '{\"x\":\"pm\",\"ar\":\"\\u0645\\u0633\\u0627\\u0621\\u0627\\u064b\"}'),
(924, 'يوجد.شحنة.تم.الموافقة.عليه.من.فضلك.قم.بمراجعته', '{\"x\":\"\\u064a\\u0648\\u062c\\u062f \\u0634\\u062d\\u0646\\u0629 \\u062a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629 \\u0639\\u0644\\u064a\\u0647\\u060c \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\",\"ar\":\"\\u064a\\u0648\\u062c\\u062f \\u0634\\u062d\\u0646\\u0629 \\u062a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629 \\u0639\\u0644\\u064a\\u0647\\u060c \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\"}'),
(925, 'change.assigned.employee', '{\"x\":\"Change Assigned Employee\",\"ar\":\"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0638\\u0641 \\u0627\\u0644\\u0645\\u064f\\u0639\\u064a\\u0646\"}'),
(926, 'assigned.to', '{\"x\":\"Assigned To\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u064a\\u064a\\u0646 \\u0644\\u0640\"}'),
(927, 'activity.assigned', '{\"x\":\"activity_assigned\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0645\\u0646\\u062f\\u0648\\u0628 \\u0644\\u0644\\u0634\\u062d\\u0646\\u0647\",\"en\":\"The shipment has been assigned to an employee\"}'),
(928, 'تم.تعيين.موظف.للشحنة.يرجى.مراجعته', '{\"x\":\"\\u062a\\u0645 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0645\\u0648\\u0638\\u0641 \\u0644\\u0644\\u0634\\u062d\\u0646\\u0629\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0645\\u0648\\u0638\\u0641 \\u0644\\u0644\\u0634\\u062d\\u0646\\u0629\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\"}'),
(929, 'delieveried', '{\"x\":\"Delieveried\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645\"}'),
(930, 'activity.received', '{\"x\":\"activity_received\",\"ar\":\"\\u062a\\u0645 \\u0623\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\",\"en\":\"The shipment has been received\"}'),
(931, 'تم.استلام.الشحنة.يرجى.مراجعته', '{\"x\":\"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\"}'),
(932, 'تم.حفظ.الشحنة.بالمخزن.يرجى.المراجعة', '{\"x\":\"\\u062a\\u0645 \\u062d\\u0641\\u0638 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0628\\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\",\"ar\":\"\\u062a\\u0645 \\u062d\\u0641\\u0638 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0628\\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\"}'),
(933, 'activity.stock.saved', '{\"x\":\"activity_stock_saved\",\"ar\":\"\\u062a\\u0645 \\u062d\\u0641\\u0638 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0628\\u0627\\u0644\\u0645\\u062e\\u0632\\u0646\",\"en\":\"The shipment has arrived the stock\"}'),
(934, 'activity.driver.received', '{\"x\":\"activity_driver_received\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"en\":\"The driver has received the shipment\"}'),
(935, 'تم.تسليم.الشحنة.للسائق.يرجى.مراجعته', '{\"x\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0644\\u0644\\u0633\\u0627\\u0626\\u0642\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629 \\u0644\\u0644\\u0633\\u0627\\u0626\\u0642\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\"}'),
(936, 'deliver.shipment', '{\"x\":\"Deliver Shipment\",\"ar\":\"\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(937, 'complete.the.form.to.confirm.the.delivery.of.this.shipment', '{\"x\":\"Complete the form to confirm the delivery of this shipment!\",\"ar\":\"\\u0623\\u0643\\u0645\\u0644 \\u0627\\u0644\\u062d\\u0642\\u0648\\u0644 \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a\\u0629 \\u0644\\u062a\\u0623\\u0643\\u064a\\u062f \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(938, 'person.who.receives', '{\"x\":\"Person who receives\",\"ar\":\"\\u0627\\u0644\\u0634\\u062e\\u0635 \\u0627\\u0644\\u0630\\u064a \\u064a\\u0633\\u062a\\u0644\\u0645\"}'),
(939, 'receiver.id.copy', '{\"x\":\"Receiver ID Copy\",\"ar\":\"\\u0646\\u0633\\u062e\\u0629 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(940, 'upload.or.capture.the.front.of.the.receiver.id.copy.for.confirmation', '{\"x\":\"Upload or capture the front of the Receiver ID copy for confirmation\",\"ar\":\"\\u0623\\u0631\\u0641\\u0639 \\u0623\\u0648 \\u0635\\u0648\\u0631 \\u0645\\u0642\\u062f\\u0645\\u0629 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645 \\u0644\\u0644\\u062a\\u0623\\u0643\\u064a\\u062f\"}'),
(941, 'draw.receiver.signature', '{\"x\":\"Draw receiver signature\",\"ar\":\"\\u0625\\u0631\\u0633\\u0645 \\u062a\\u0648\\u0642\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(942, 'undo', '{\"x\":\"Undo\",\"ar\":\"\\u0625\\u0639\\u0627\\u062f\\u0629\"}'),
(943, 'you.can.use.your.mouse.to.draw.it.or.if.you.using.your.mobile.then.you.can.use.the.touch.screen.to.write.it.by.your.finger', '{\"x\":\"You can use your mouse to draw it, or if you using your mobile then you can use the touch screen to write it by your finger\",\"ar\":\"\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0627\\u0648\\u0633 \\u0644\\u0631\\u0633\\u0645 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u0639\\u060c \\u0623\\u0648 \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0647\\u0646\\u0627 \\u0628\\u0623\\u0635\\u0627\\u0628\\u0639\\u0643\"}'),
(944, 'confirm.deliver', '{\"x\":\"Confirm Deliver\",\"ar\":\"\\u062a\\u0623\\u0643\\u064a\\u062f \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(945, 'reach.the.sender.by.mobile', '{\"x\":\"Reach The Sender By Mobile\",\"ar\":\"\\u0623\\u0648\\u0635\\u0644 \\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644\"}'),
(946, 'for.more.quick.decisions.you.can.call.the.sender.mobile.number.from.here', '{\"x\":\"For more quick decisions you can call the sender mobile number from here\",\"ar\":\"\\u0644\\u0642\\u0631\\u0627\\u0631\\u0627\\u062a \\u0623\\u0633\\u0631\\u0639 \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u0623\\u062a\\u0635\\u0627\\u0644 \\u0639\\u0644\\u0649 \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0631\\u0627\\u0633\\u0644 \\u0645\\u0646 \\u0647\\u0646\\u0627\"}'),
(947, 'make.call', '{\"x\":\"Make Call\",\"ar\":\"\\u0623\\u062a\\u0635\\u0644 \\u0627\\u0644\\u0622\\u0646\"}'),
(948, 'reach.the.receiver.by.mobile', '{\"x\":\"Reach The Receiver By Mobile\",\"ar\":\"\\u0623\\u0648\\u0635\\u0644 \\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(949, 'for.more.quick.decisions.you.can.call.the.receiver.mobile.number.from.here', '{\"x\":\"For more quick decisions you can call the receiver mobile number from here\",\"ar\":\"\\u0644\\u0642\\u0631\\u0627\\u0631\\u0627\\u062a \\u0623\\u0633\\u0631\\u0639 \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u0623\\u062a\\u0635\\u0627\\u0644 \\u0639\\u0644\\u0649 \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645 \\u0645\\u0646 \\u0647\\u0646\\u0627\"}'),
(950, 'press.upload.after.selecting.or.capture.the.copy', '{\"x\":\"Press Upload after selecting or capture the copy\",\"ar\":\"\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u0636\\u063a\\u0637 \\u0639\\u0644\\u0649 \\u0631\\u0641\\u0639 \\u0628\\u0639\\u062f \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0643 \\u0644\\u0646\\u0633\\u062e\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"}'),
(951, 'file.name', '{\"x\":\"file name\",\"ar\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0644\\u0641\"}'),
(952, 'caption', '{\"x\":\"Caption\",\"ar\":\"\\u062a\\u0639\\u0631\\u064a\\u0641\"}'),
(953, 'describe.what.the.image.is.about', '{\"x\":\"describe what the image is about\",\"ar\":\"\\u0623\\u0634\\u0631\\u062d \\u0639\\u0646 \\u0645\\u0627\\u0630\\u0627 \\u062a\\u0639\\u0646\\u064a \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"}'),
(954, 'are.you.sure', '{\"x\":\"Are you sure?\",\"ar\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u062a\\u0623\\u0643\\u062f\\u061f\"}'),
(955, 'this.action.will.make.the.responsible.for.the.delivery.is.you.for.administration.review', '{\"x\":\"This action will make the responsible for the delivery is you for administration review\",\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0625\\u062c\\u0631\\u0627\\u0621 \\u0633\\u064a\\u062c\\u0639\\u0644\\u0643 \\u0645\\u0633\\u0624\\u0648\\u0644 \\u0639\\u0646 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0623\\u0645\\u0627\\u0645 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0623\\u062f\\u0627\\u0631\\u0629\"}'),
(956, 'nothing.updated', '{\"x\":\"Nothing updated! :)\",\"ar\":\"\\u0644\\u0645 \\u064a\\u062a\\u0645 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0634\\u064a\\u0621!\"}'),
(957, 'shipment.print', '{\"x\":\"Shipment Print\",\"ar\":\"\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(958, 'bill.to', '{\"x\":\"Bill to\",\"ar\":\"\\u0627\\u0644\\u062f\\u0641\\u0639 \\u0625\\u0644\\u0649\"}'),
(959, 'zip', '{\"x\":\"ZIP\",\"ar\":\"\\u0627\\u0644\\u0643\\u0648\\u062f \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f\\u064a\"}'),
(960, 'invoice.no', '{\"x\":\"Invoice No\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0641\\u0627\\u062a\\u0648\\u0631\\u0629\"}'),
(961, 'sub.total', '{\"x\":\"Sub Total\",\"ar\":\"\\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639 \\u0627\\u0644\\u0641\\u0631\\u0639\\u064a\"}'),
(962, 'grand.total', '{\"x\":\"Grand total\",\"ar\":\"\\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639 \\u0627\\u0644\\u0643\\u0644\\u064a\"}'),
(963, 'terms', '{\"x\":\"TERMS\",\"ar\":\"\\u0627\\u0644\\u0634\\u0631\\u0648\\u0637\"}'),
(964, 'update.shipment', '{\"x\":\"Update Shipment\",\"ar\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(965, 'complete.the.form.to.update.this.shipment', '{\"x\":\"Complete the form to update this shipment!\",\"ar\":\"\\u0623\\u0633\\u062a\\u0643\\u0645\\u0644 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a\\u0629 \\u0644\\u062a\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(966, 'receiver.location', '{\"x\":\"Receiver Location\",\"ar\":\"\\u0645\\u0643\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(967, 'correct.receiver.location.in.google.map.for.easy.access.next.time', '{\"x\":\"Correct receiver location in google map for easy access next time\",\"ar\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u0643\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0641\\u0636\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629 \\u0644\\u0648\\u0635\\u0648\\u0644 \\u0623\\u0633\\u0647\\u0644 \\u0641\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0629 \\u0627\\u0644\\u0642\\u0627\\u062f\\u0645\\u0629\"}'),
(968, 'this.action.cannot.be.undo.and.will.be.recorded.by.your.username.and.time.for.administration.review', '{\"x\":\"This action cannot be undo, and will be recorded by your username and time for administration review\",\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0625\\u062c\\u0631\\u0627\\u0621 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644\\u0647\\u060c \\u0648\\u0633\\u064a\\u062a\\u0645 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0648\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u062a\\u0648\\u0642\\u064a\\u062a \\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0645\\u0646 \\u0637\\u0631\\u0641 \\u0627\\u0644\\u0623\\u062f\\u0627\\u0631\\u0629\"}'),
(969, 'تعديل.شحنة', '{\"x\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0634\\u062d\\u0646\\u0629\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\",\"en\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(970, 'you', '{\"x\":\"You\",\"ar\":\"\\u0623\\u0646\\u062a\"}'),
(971, 'تم.تسليم.الشحنة', '{\"x\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\",\"ar\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(972, 'return.discards', '{\"x\":\"Return discards\",\"ar\":\"\\u0625\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\"}'),
(973, 'delivered.by', '{\"x\":\"Delivered By\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629\"}'),
(974, 'receiver.signature', '{\"x\":\"Receiver Signature\",\"ar\":\"\\u062a\\u0648\\u0642\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"}'),
(975, 'activity.delivered', '{\"x\":\"activity_delivered\",\"ar\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645\",\"en\":\"The shipment has been delivered\"}'),
(976, 'am', '{\"x\":\"am\",\"ar\":\"\\u0635\\u0628\\u0627\\u062d\\u0627\\u064b\"}'),
(977, 'deliver.returned.discards', '{\"x\":\"Deliver returned discards\",\"ar\":\"\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0645\\u064f\\u0642\\u0627\\u0628\\u0644\"}'),
(978, 'activity.return.discards', '{\"x\":\"activity_return_discards\",\"ar\":\"\\u0637\\u0644\\u0628 \\u0625\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\"}'),
(979, 'إرجاع.المقابل', '{\"x\":\"\\u0625\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\",\"ar\":\"\\u0625\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\"}'),
(980, 'map', '{\"x\":\"Map\",\"ar\":\"\\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629\"}'),
(981, 'cargo.pro.system', '{\"x\":\"Cargo Pro System\",\"ar\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0631\\u0641\"}'),
(982, 'the.ultimate.shipping.management.system.that.handle.all.of.your.shipping.workflow', '{\"x\":\"The ultimate shipping management system that handle all of your shipping workflow\",\"ar\":\"\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0634\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0630\\u064a \\u064a\\u062c\\u0639\\u0644 \\u0625\\u062f\\u0627\\u0631\\u062a\\u0643 \\u0644\\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0633\\u0647\\u0644 \\u0648\\u0641\\u0639\\u0627\\u0644\"}'),
(983, 'spotlayer.corporation', '{\"x\":\"Spotlayer Corporation\",\"ar\":\"\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0633\\u0628\\u0648\\u062a \\u0644\\u0627\\u064a\\u0631\"}'),
(984, 'company', '{\"x\":\"Company\",\"ar\":\"\\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\"}'),
(985, 'customer', '{\"x\":\"Customer\",\"ar\":\"\\u0627\\u0644\\u0639\\u0645\\u064a\\u0644\"}'),
(986, 'the.tracking.number.you.entered.is.wrong.please.check.it.again.and.type.the.full.number.with.its.prefix', '{\"x\":\"The tracking number you entered is wrong, please check it again and type the full number with its prefix\",\"ar\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0630\\u064a \\u0642\\u0645\\u062a \\u0628\\u0643\\u062a\\u0627\\u0628\\u062a\\u0647 \\u0628\\u0647 \\u062e\\u0637\\u0623\\u060c \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u0635\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0642\\u0645 \\u0648\\u0642\\u0645 \\u0628\\u0643\\u062a\\u0627\\u0628\\u062a\\u0647 \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649\"}'),
(987, 'tracking.history', '{\"x\":\"Tracking History\",\"ar\":\"\\u0645\\u0633\\u0627\\u0631 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639\"}'),
(988, 'order.created', '{\"x\":\"Order Created\",\"ar\":\"\\u062a\\u0645 \\u0623\\u0636\\u0627\\u0641\\u0629 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0634\\u062d\\u0646\",\"en\":\"Shipment Request Created\"}'),
(989, 'مشاهدة.شحنة.1', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #1\"}'),
(990, 'info', '{\"x\":\"Info\",\"ar\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\"}'),
(991, 'activity.postponed', '{\"x\":\"activity_postponed\",\"ar\":\"\\u062a\\u0623\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\",\"en\":\"The shipment postponed\"}'),
(992, 'تم.تأجيل.الشحنة.يرجى.مراجعته', '{\"x\":\"\\u062a\\u0645 \\u062a\\u0623\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\"}'),
(993, 'delivered.responsiabality', '{\"x\":\"Delivered Responsiabality\",\"ar\":\"\\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644 \\u0639\\u0646 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644\"}'),
(994, 'يوجد.شحنة.جديد.من.فضلك.قم.بمراجعته', '{\"x\":\"\\u064a\\u0648\\u062c\\u062f \\u0634\\u062d\\u0646\\u0629 \\u062c\\u062f\\u064a\\u062f\\u060c \\u0645\\u0646 \\u0641\\u0636\\u0644\\u0643 \\u0642\\u0645 \\u0628\\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647\"}'),
(995, 'activity.created', '{\"x\":\"activity_created\",\"en\":\"The shipment is created\"}'),
(996, 'مشاهدة.شحنة.3', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #3\"}'),
(997, 'لقد.تم.أضافة.ملاحظات.جديدة.على.الشحنة', '{\"x\":\"\\u0644\\u0642\\u062f \\u062a\\u0645 \\u0623\\u0636\\u0627\\u0641\\u0629 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u062d\\u0646\\u0629\"}'),
(998, 'activity.new.note', '{\"x\":\"activity_new_note\",\"en\":\"A new shipment has been added to the shipment\"}'),
(999, 'sender.location', '{\"x\":\"Sender Location\"}'),
(1000, 'correct.sender.location.in.google.map.for.easy.access.next.time', '{\"x\":\"Correct sender location in google map for easy access next time\"}'),
(1001, 'treasury.settings', '{\"x\":\"Treasury - Settings\"}'),
(1002, 'balance', '{\"x\":\"Balance\"}'),
(1003, 'update.treasury', '{\"x\":\"Update treasury\"}'),
(1004, 'create.treasury', '{\"x\":\"Create treasury\",\"ar\":\"\\u0623\\u0636\\u0627\\u0641\\u0629 \\u062e\\u0632\\u064a\\u0646\\u0629\"}'),
(1005, 'create.delivery.time', '{\"x\":\"Create Delivery Time\"}'),
(1006, 'paid', '{\"x\":\"Paid\"}'),
(1007, 'the.correct.fees.will.be.applied.after.selecting.the.receiver.address', '{\"x\":\"The correct fees will be applied after selecting the receiver address\"}'),
(1008, 'مشاهدة.شحنة.4', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #4\"}'),
(1009, 'transaction.details', '{\"x\":\"Transaction Details\"}'),
(1010, 'canceled', '{\"x\":\"Canceled\"}'),
(1011, 'courier.fee', '{\"x\":\"Courier fee\"}'),
(1012, 'transaction.view', '{\"x\":\"Transaction View\"}'),
(1013, 'üye.adı', '{\"x\":\"\\u00dcye Ad\\u0131\"}'),
(1014, 'cargo.courier.system', '{\"x\":\"Cargo Courier System\"}'),
(1015, 'add.new.manifest', '{\"x\":\"Add New Manifest\"}'),
(1016, 'i.avenue.hesperia.california.usa', '{\"x\":\"I Avenue, Hesperia, California, USA\"}'),
(1017, 'hesperia', '{\"x\":\"Hesperia\"}'),
(1018, 'california', '{\"x\":\"California\"}'),
(1019, '92345', '{\"x\":\"92345\"}'),
(1020, 'united.states', '{\"x\":\"United States\"}'),
(1021, 'courier.systemshipping.managementcargospotlayer.projectspot.shippinglaravel.shipping.system', '{\"x\":\"courier system,shipping management,cargo,spotlayer project,spot shipping,laravel shipping system\"}'),
(1022, 'update.city', '{\"x\":\"Update City\"}'),
(1023, 'update.courier', '{\"x\":\"Update Courier\"}'),
(1024, 'update.shipping', '{\"x\":\"Update Shipping\"}'),
(1025, 'update.category', '{\"x\":\"Update Category\"}'),
(1026, 'export.excel', '{\"x\":\"Export Excel\"}'),
(1027, 'admin', '{\"x\":\"Admin\"}'),
(1028, 'login.as', '{\"x\":\"Login as\"}'),
(1029, 'send.all', '{\"x\":\"Send All\"}'),
(1030, 'view.shipment.5', '{\"x\":\"View Shipment #5\"}'),
(1031, 'there.is.an.approved.shipment.please.check.it', '{\"x\":\"There is an Approved shipment, please check it\"}'),
(1032, 'the.shipment.has.been.assigned.please.check.it', '{\"x\":\"The shipment has been assigned, please check it\"}'),
(1033, 'تسجيل.الدخول', '{\"x\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\"}'),
(1034, 'new.notes.has.been.added.on.shipment', '{\"x\":\"New notes has been added on shipment\"}'),
(1035, 'create.database.backup', '{\"x\":\"Create Database Backup\"}'),
(1036, 'create.files.backup', '{\"x\":\"Create Files Backup\"}'),
(1037, 'create.whole.system.backup', '{\"x\":\"Create Whole System Backup\"}'),
(1038, 'manage.departmeents', '{\"x\":\"Manage Departmeents\"}'),
(1039, 'total.requested.from.you', '{\"x\":\"Total Requested From You\"}'),
(1040, 'view.shipment.6', '{\"x\":\"View Shipment #6\"}'),
(1041, 'your.addresses.that.you.will.ship.from.or.to', '{\"x\":\"Your addresses that you will ship from or to\"}'),
(1042, 'please.be.aware.that.your.addresses.pin.on.google.maps.is.always.very.urgent.for.fast.and.accurate.deliver.for.your.shipments', '{\"x\":\"Please be aware that your addresses pin on google maps is always very urgent for fast and accurate deliver for your shipments\"}'),
(1043, 'supplied.shipments', '{\"x\":\"Supplied Shipments\"}'),
(1044, 'the.shipment.has.been.received.please.check.it', '{\"x\":\"The shipment has been received, please check it\"}'),
(1045, 'view.shipment.7', '{\"x\":\"View Shipment #7\"}'),
(1046, 'update.fees', '{\"x\":\"Update Fees\"}'),
(1047, 'mark.all.as.read', '{\"x\":\"Mark all as read\"}'),
(1048, 'view.shipment.8', '{\"x\":\"View Shipment #8\"}'),
(1049, 'the.shipment.has.been.saved.on.stock.please.check.it', '{\"x\":\"The shipment has been saved on stock, please check it\"}'),
(1050, 'the.shipment.has.been.delivered.please.check.it', '{\"x\":\"The shipment has been delivered, please check it\"}'),
(1051, 'مشاهدة.شحنة.5', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #5\"}'),
(1052, 'إدارة.الطلبات', '{\"x\":\"\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0628\\u0627\\u062a\"}'),
(1053, 'view.shipment.4', '{\"x\":\"View Shipment #4\"}'),
(1054, 'view.shipment.1', '{\"x\":\"View Shipment #1\"}'),
(1055, 'package.fee', '{\"x\":\"Package fee\"}'),
(1056, 'transactions.withdrwal.reports', '{\"x\":\"Transactions _withdrwal Reports\"}'),
(1057, 'view.shipment.3', '{\"x\":\"View Shipment #3\"}'),
(1058, 'view.shipment.9', '{\"x\":\"View Shipment #9\"}'),
(1059, 'there.is.a.new.shipment.please.check.it', '{\"x\":\"There is a new shipment, please check it\"}'),
(1060, 'view.shipment.2', '{\"x\":\"View Shipment #2\"}'),
(1061, 'كل.الإشعارات', '{\"x\":\"\\u0643\\u0644 \\u0627\\u0644\\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\"}'),
(1062, 'مراجعة.جميع.إشعاراتك', '{\"x\":\"\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u062c\\u0645\\u064a\\u0639 \\u0625\\u0634\\u0639\\u0627\\u0631\\u0627\\u062a\\u0643\"}'),
(1063, 'view.shipment.11', '{\"x\":\"View Shipment #11\"}'),
(1064, 'return.package.fee', '{\"x\":\"Return package fee\"}'),
(1065, 'مشاهدة.شحنة.11', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #11\"}'),
(1066, 'مشاهدة.شحنة.10', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #10\"}'),
(1067, 'payment.with', '{\"x\":\"Payment With\"}'),
(1068, 'مشاهدة.شحنة.9', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #9\"}'),
(1069, 'view.shipment.12', '{\"x\":\"View Shipment #12\"}'),
(1070, 'view.shipment.13', '{\"x\":\"View Shipment #13\"}'),
(1071, 'view.shipment.14', '{\"x\":\"View Shipment #14\"}'),
(1072, 'activity.saved', '{\"x\":\"activity_saved\",\"en\":\"Shipment has been saved in customer account\"}'),
(1073, 'view.shipment.15', '{\"x\":\"View Shipment #15\"}'),
(1074, 'view.shipment.16', '{\"x\":\"View Shipment #16\"}'),
(1075, 'view.shipment.17', '{\"x\":\"View Shipment #17\"}'),
(1076, 'view.shipment.19', '{\"x\":\"View Shipment #19\"}'),
(1077, 'view.shipment.18', '{\"x\":\"View Shipment #18\"}'),
(1078, 'view.shipment.20', '{\"x\":\"View Shipment #20\"}'),
(1079, 'delyed', '{\"x\":\"Delyed\"}'),
(1080, 'view.shipment.21', '{\"x\":\"View Shipment #21\"}'),
(1081, 'view.shipment.22', '{\"x\":\"View Shipment #22\"}'),
(1082, 'the.shipment.has.been.received.by.the.driver.please.check.it', '{\"x\":\"The shipment has been received by the driver, please check it\"}'),
(1083, 'view.shipment.23', '{\"x\":\"View Shipment #23\"}'),
(1084, 'nombre.de.usuario', '{\"x\":\"Nombre de usuario\"}'),
(1085, 'مشاهدة.شحنة.23', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #23\"}'),
(1086, 'view.shipment.24', '{\"x\":\"View Shipment #24\"}'),
(1087, 'شحنات.موردة', '{\"x\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u0645\\u0648\\u0631\\u062f\\u0629\"}'),
(1088, 'the.shipment.has.been.added.to.manifest.please.check.it', '{\"x\":\"The shipment has been added to manifest, please check it\"}'),
(1089, 'last.updated.date', '{\"x\":\"Last Updated Date\"}'),
(1090, 'shipping.details', '{\"x\":\"Shipping Details\"}'),
(1091, 'manifest.view.1', '{\"x\":\"Manifest View #1\"}'),
(1092, 'manifest.view', '{\"x\":\"Manifest View\"}'),
(1093, 'manifest.print', '{\"x\":\"Manifest Print\"}'),
(1094, 'view.shipment.25', '{\"x\":\"View Shipment #25\"}'),
(1095, 'مشاهدة.شحنة.8', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #8\"}'),
(1096, 'مشاهدة.شحنة.25', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #25\"}'),
(1097, 'view.shipment.26', '{\"x\":\"View Shipment #26\"}'),
(1098, 'is.it.paid', '{\"x\":\"Is it paid ?\"}');
INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(1099, 'manifest.view.2', '{\"x\":\"Manifest View #2\"}'),
(1100, 'update.area', '{\"x\":\"Update Area\"}'),
(1101, 'activity.manifest.assigned', '{\"x\":\"activity_manifest_assigned\"}'),
(1102, 'مشاهدة.شحنة.27', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #27\"}'),
(1103, 'view.shipment.27', '{\"x\":\"View Shipment #27\"}'),
(1104, 'شحنات.مقبولة', '{\"x\":\"\\u0634\\u062d\\u0646\\u0627\\u062a \\u0645\\u0642\\u0628\\u0648\\u0644\\u0629\"}'),
(1105, 'transaction.print', '{\"x\":\"Transaction Print\"}'),
(1106, 'transaction.id', '{\"x\":\"Transaction ID\"}'),
(1107, 'transaction.date', '{\"x\":\"Transaction date\"}'),
(1108, '', '{\"x\":\"\"}'),
(1109, 'view.shipment.28', '{\"x\":\"View Shipment #28\"}'),
(1110, 'view.shipment.29', '{\"x\":\"View Shipment #29\"}'),
(1111, 'view.shipment.30', '{\"x\":\"View Shipment #30\"}'),
(1112, 'view.shipment.31', '{\"x\":\"View Shipment #31\"}'),
(1113, 'مشاهدة.شحنة.31', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #31\"}'),
(1114, 'view.shipment.32', '{\"x\":\"View Shipment #32\"}'),
(1115, 'view.shipment.33', '{\"x\":\"View Shipment #33\"}'),
(1116, 'مشاهدة.شحنة.33', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #33\"}'),
(1117, 'dont.have.an.account.yet', '{\"x\":\"Don\'t have an account yet ?\"}'),
(1118, 'activity.refused', '{\"x\":\"activity_refused\",\"en\":\"Shipment has been refused\"}'),
(1119, 'the.shipment.has.been.refused.please.check.it', '{\"x\":\"The shipment has been refused, please check it\"}'),
(1120, 'view.shipment.34', '{\"x\":\"View Shipment #34\"}'),
(1121, 'مشاهدة.شحنة.34', '{\"x\":\"\\u0645\\u0634\\u0627\\u0647\\u062f\\u0629 \\u0634\\u062d\\u0646\\u0629 #34\"}'),
(1122, 'demo.accounts', '{\"x\":\"Demo Accounts\"}'),
(1123, 'shipment.tracking', '{\"x\":\"Shipment Tracking\"}'),
(1124, 'track.your.shipment', '{\"x\":\"Track your shipment\"}'),
(1125, 'type.your.full.tracking.number.here', '{\"x\":\"Type your full tracking number here\"}'),
(1126, 'please.check.the.tracking.number.again.and.type.the.full.number.with.its.prefix.correctly.and.try.again', '{\"x\":\"Please check the tracking number again and type the full number with its prefix correctly and try again\"}'),
(1127, 'type.your.full.tracking.number.to.get.the.tracking.data', '{\"x\":\"Type your full tracking number to get the tracking data\"}'),
(1128, 'user', '{\"x\":\"User\"}'),
(1129, 'you.have.shipment.tracking.number', '{\"x\":\"You have shipment tracking number\"}'),
(1130, 'track.you.shipment', '{\"x\":\"Track you shipment\"}'),
(1131, 'you.have.tracking.number', '{\"x\":\"You have tracking number ?\"}'),
(1132, 'track.shipment', '{\"x\":\"Track shipment\"}'),
(1133, 'office.no.873.floor.no.8.al.ghaith.toweropposite.to.adcb.bank.hamdan.street.abu.dhabi.abu.dhabi', '{\"x\":\"Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Abu Dhabi\"}'),
(1134, 'united.arab.emirates', '{\"x\":\"United Arab Emirates\"}'),
(1135, 'abu.dhabi', '{\"x\":\"Abu Dhabi\"}'),
(1136, '29245', '{\"x\":\"29245\"}'),
(1137, 'uae', '{\"x\":\"UAE\"}'),
(1138, 'wellwell', '{\"x\":\"WellWell\"}'),
(1139, 'hamdan.bin.mohammed.street.abu.dhabi.united.arab.emirates', '{\"x\":\"Hamdan Bin Mohammed Street - Abu Dhabi - United Arab Emirates\"}'),
(1140, '105400', '{\"x\":\"105400\"}'),
(1141, 'well.well', '{\"x\":\"Well Well\"}'),
(1142, 'courier.systemshipping.managementcargo', '{\"x\":\"courier system,shipping management,cargo\"}'),
(1143, 'no.employees.cover.that.shipment.area.so.here.are.all.the.employees.to.choose.from', '{\"x\":\"No employees cover that shipment area, so here are all the employees to choose from\"}');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_currency_currencies`
--

CREATE TABLE `responsiv_currency_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_point` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousand_separator` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_symbol_before` tinyint(1) NOT NULL DEFAULT '1',
  `with_space` tinyint(4) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `initbiz_money_fraction_digits` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responsiv_currency_currencies`
--

INSERT INTO `responsiv_currency_currencies` (`id`, `name`, `currency_code`, `currency_symbol`, `decimal_point`, `thousand_separator`, `place_symbol_before`, `with_space`, `is_enabled`, `is_primary`, `created_at`, `updated_at`, `initbiz_money_fraction_digits`) VALUES
(1, 'U.S. Dollar', 'USD', '$', '.', ',', 1, 0, 1, 0, NULL, NULL, 2),
(2, 'Euro', 'EUR', '€', '.', ',', 1, 0, 1, 0, NULL, NULL, 1),
(3, 'Pound Sterling', 'GBP', '£', '.', ',', 1, 0, 1, 0, NULL, NULL, 2),
(4, 'Australian Dollar', 'AUD', '$', '.', ',', 1, 0, 1, 0, NULL, NULL, NULL),
(5, 'جنيه مصري', 'EGP', 'ج.م.', '.', ',', 0, 1, 1, 0, NULL, '2019-11-25 17:40:06', 2),
(6, 'AED', 'AED', 'د.إ', '1', '1', 0, 0, 1, 1, '2021-01-06 18:17:59', '2021-01-06 18:18:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_currency_exchange_converters`
--

CREATE TABLE `responsiv_currency_exchange_converters` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_interval` int(11) NOT NULL DEFAULT '24',
  `config_data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_currency_exchange_rates`
--

CREATE TABLE `responsiv_currency_exchange_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(15,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_invoices`
--

CREATE TABLE `responsiv_pay_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_addr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `subtotal` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tax_discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `is_tax_exempt` tinyint(1) NOT NULL DEFAULT '0',
  `tax_data` text COLLATE utf8mb4_unicode_ci,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `status_updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `due_at` timestamp NULL DEFAULT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_throwaway` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_invoice_items`
--

CREATE TABLE `responsiv_pay_invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(15,2) DEFAULT '0.00',
  `subtotal` decimal(15,2) NOT NULL DEFAULT '0.00',
  `is_tax_exempt` tinyint(1) NOT NULL DEFAULT '0',
  `tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tax_discount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `related_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_invoice_logs`
--

CREATE TABLE `responsiv_pay_invoice_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_success` tinyint(1) NOT NULL DEFAULT '0',
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_response` text COLLATE utf8mb4_unicode_ci,
  `request_data` text COLLATE utf8mb4_unicode_ci,
  `response_data` text COLLATE utf8mb4_unicode_ci,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_invoice_statuses`
--

CREATE TABLE `responsiv_pay_invoice_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `notify_user` tinyint(1) NOT NULL DEFAULT '0',
  `notify_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responsiv_pay_invoice_statuses`
--

INSERT INTO `responsiv_pay_invoice_statuses` (`id`, `name`, `code`, `is_enabled`, `notify_user`, `notify_template`) VALUES
(1, 'Draft', 'draft', 1, 0, NULL),
(2, 'Approved', 'approved', 1, 0, NULL),
(3, 'Paid', 'paid', 1, 0, NULL),
(4, 'Void', 'void', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_invoice_status_logs`
--

CREATE TABLE `responsiv_pay_invoice_status_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_invoice_templates`
--

CREATE TABLE `responsiv_pay_invoice_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `syntax_data` text COLLATE utf8mb4_unicode_ci,
  `syntax_fields` text COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responsiv_pay_invoice_templates`
--

INSERT INTO `responsiv_pay_invoice_templates` (`id`, `name`, `code`, `content_html`, `content_css`, `syntax_data`, `syntax_fields`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Default template', 'default', NULL, NULL, '{\"company_logo\":\"http:\\/\\/octobercms.com\\/themes\\/website\\/assets\\/images\\/logo.png\",\"company_name\":\"Acme Incorporated\",\"company_address\":\"695 Shoehorn Ave\\nSweet Darling Station\\nPitt Bottom, NSW 2022\\nAustralia\",\"company_registration\":\"ABN: 45 123 456 789\",\"payment_advice\":\"Please send full amount to via any of our accepted Payment methods\"}', '{\"company_logo\":{\"label\":\"Company Logo\",\"span\":\"right\",\"default\":\"http:\\/\\/octobercms.com\\/themes\\/website\\/assets\\/images\\/logo.png\",\"type\":\"fileupload\"},\"company_name\":{\"label\":\"Company Name\",\"span\":\"left\",\"default\":\"Acme Incorporated\",\"type\":\"text\"},\"company_address\":{\"label\":\"Address details\",\"size\":\"small\",\"comment\":\"Enter the complete contact details as it should appear on the invoice\",\"default\":\"695 Shoehorn Ave\\nSweet Darling Station\\nPitt Bottom, NSW 2022\\nAustralia\",\"type\":\"textarea\"},\"company_registration\":{\"label\":\"Company Registration Number\",\"span\":\"left\",\"default\":\"ABN: 45 123 456 789\",\"type\":\"text\"},\"payment_advice\":{\"label\":\"Payment advice\",\"size\":\"small\",\"default\":\"Please send full amount to via any of our accepted Payment methods\",\"type\":\"textarea\"}}', 1, '2019-11-24 19:41:11', '2019-11-24 19:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_methods`
--

CREATE TABLE `responsiv_pay_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `config_data` text COLLATE utf8mb4_unicode_ci,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_methods_countries`
--

CREATE TABLE `responsiv_pay_methods_countries` (
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_taxes`
--

CREATE TABLE `responsiv_pay_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rates` mediumtext COLLATE utf8mb4_unicode_ci,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_pay_user_profiles`
--

CREATE TABLE `responsiv_pay_user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `vendor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_data` text COLLATE utf8mb4_unicode_ci,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_activity`
--

CREATE TABLE `spot_shipment_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_address`
--

CREATE TABLE `spot_shipment_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `county` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_address`
--

INSERT INTO `spot_shipment_address` (`id`, `user_id`, `name`, `street`, `county`, `city`, `state`, `zipcode`, `country`, `lat`, `lng`, `url`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Madurai', 'Madurai', '', '2', '636', '625003', '68', '', '', '', 1, '2021-01-06 18:03:31', '2021-01-06 18:03:31', NULL),
(2, 3, 'Madurai', 'Madurai', '', '2', '636', '625003', '68', '', '', '', 1, '2021-01-06 18:05:00', '2021-01-06 18:05:00', NULL),
(3, 4, 'Hamdan Street', 'Hamdan Street', '', '2', '636', '29245', '68', '', '', '', 1, '2021-01-06 18:05:59', '2021-01-06 18:05:59', NULL),
(4, 5, 'Collins Street', 'Collins Street', '', '4', '639', '', '249', '42.2710786', '-71.1182512', 'https://maps.google.com/?q=Collins+St,+Boston,+MA,+USA&amp;ftid=0x89e37ebf19cfb77b:0x6872afe4f422edff', 1, '2021-01-06 19:36:10', '2021-01-06 19:36:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_area`
--

CREATE TABLE `spot_shipment_area` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_area`
--

INSERT INTO `spot_shipment_area` (`id`, `city_id`, `name`) VALUES
(1, 8, 'Downtown Miami'),
(2, 8, 'Key Biscayne');

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_car`
--

CREATE TABLE `spot_shipment_car` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` smallint(6) NOT NULL DEFAULT '1',
  `driver_id` int(11) DEFAULT NULL,
  `responsible_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_car`
--

INSERT INTO `spot_shipment_car` (`id`, `name`, `enable`, `driver_id`, `responsible_id`, `description`) VALUES
(1, 'Zydan', 1, NULL, NULL, 'Short');

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_category`
--

CREATE TABLE `spot_shipment_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_category`
--

INSERT INTO `spot_shipment_category` (`id`, `name`, `description`) VALUES
(1, 'New', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_city`
--

CREATE TABLE `spot_shipment_city` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_city`
--

INSERT INTO `spot_shipment_city` (`id`, `state_id`, `name`) VALUES
(1, 637, '6 October'),
(2, 636, 'Masr Al Jadidah'),
(3, 638, 'Carmus'),
(4, 639, 'Tanta'),
(5, 642, 'Adelanto'),
(6, 642, 'Agoura Hills'),
(7, 642, 'Alameda'),
(8, 643, 'Miami'),
(9, 644, 'Houston'),
(10, 645, 'Mombasa'),
(11, 652, 'Nairobi'),
(12, 651, 'Kisumu'),
(13, 645, 'Kwale'),
(14, 645, 'Kilifi'),
(15, 645, 'Tana River'),
(16, 645, 'Lamu'),
(17, 645, 'Taita-Taveta'),
(18, 646, 'Garissa'),
(19, 646, 'Wajir'),
(20, 646, 'Mandera');

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_courier`
--

CREATE TABLE `spot_shipment_courier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_courier`
--

INSERT INTO `spot_shipment_courier` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Al Faud', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_delivery_time`
--

CREATE TABLE `spot_shipment_delivery_time` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_delivery_time`
--

INSERT INTO `spot_shipment_delivery_time` (`id`, `name`, `count`) VALUES
(1, '1-2 Days', 48),
(2, '2-3 Days', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_employee_order`
--

CREATE TABLE `spot_shipment_employee_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_fees`
--

CREATE TABLE `spot_shipment_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `pickup_cost` decimal(10,0) DEFAULT NULL,
  `delivery_cost` decimal(10,0) DEFAULT NULL,
  `delivery_cost_back_sender` decimal(10,0) DEFAULT NULL,
  `delivery_cost_back_receiver` decimal(10,0) DEFAULT NULL,
  `back_cost_without_delivery_cost` decimal(10,0) DEFAULT NULL,
  `back_cost_sender` decimal(10,0) DEFAULT NULL,
  `back_cost_receiver` decimal(10,0) DEFAULT NULL,
  `partial_back_cost` decimal(10,0) DEFAULT NULL,
  `packaging` smallint(6) DEFAULT NULL,
  `packaging_fees` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_fees`
--

INSERT INTO `spot_shipment_fees` (`id`, `type`, `from`, `to`, `pickup_cost`, `delivery_cost`, `delivery_cost_back_sender`, `delivery_cost_back_receiver`, `back_cost_without_delivery_cost`, `back_cost_sender`, `back_cost_receiver`, `partial_back_cost`, `packaging`, `packaging_fees`) VALUES
(1, 3, 2, 2, '10', '30', '10', '10', '0', '0', '0', '0', 1, '{\"1\":\"5.00\",\"2\":\"0.00\",\"3\":\"10.00\"}'),
(2, 2, 642, 643, '10', '30', '10', '10', NULL, NULL, NULL, NULL, 1, '{\"1\":\"0.00\",\"2\":\"5.00\",\"3\":\"10.00\"}'),
(3, 1, 252, 68, '10', '30', '10', '10', NULL, NULL, NULL, NULL, 1, '{\"1\":\"10.00\",\"2\":\"20.00\",\"3\":\"70.00\"}');

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_item`
--

CREATE TABLE `spot_shipment_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_manifest`
--

CREATE TABLE `spot_shipment_manifest` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `areas` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_mode`
--

CREATE TABLE `spot_shipment_mode` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_mode`
--

INSERT INTO `spot_shipment_mode` (`id`, `name`, `description`) VALUES
(1, 'Cash', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_notes`
--

CREATE TABLE `spot_shipment_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` smallint(6) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_office`
--

CREATE TABLE `spot_shipment_office` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci,
  `county` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manger_id` int(11) DEFAULT NULL,
  `responsible_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_office`
--

INSERT INTO `spot_shipment_office` (`id`, `name`, `code`, `street`, `county`, `city`, `state`, `zipcode`, `country`, `lat`, `lng`, `url`, `phone`, `mobile`, `mobile_2`, `mobile_3`, `manger_id`, `responsible_id`) VALUES
(1, 'Well Well', '480071', 'Madurai', NULL, NULL, NULL, '625003', NULL, '', '', '', '07010384622', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_order`
--

CREATE TABLE `spot_shipment_order` (
  `id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_address_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `receiver_address_id` int(11) DEFAULT NULL,
  `packaging_id` int(11) NOT NULL,
  `ship_date` date DEFAULT NULL,
  `receive_date` date DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `delivery_time_id` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `mode_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `insurance` int(11) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `payment_type` smallint(6) DEFAULT NULL,
  `customs_value` decimal(10,2) DEFAULT NULL,
  `courier_fee` decimal(10,2) DEFAULT NULL,
  `package_fee` decimal(10,2) DEFAULT NULL,
  `return_package_fee` smallint(6) DEFAULT NULL,
  `return_courier_fee` decimal(10,2) DEFAULT NULL,
  `return_defray` smallint(6) DEFAULT NULL,
  `manifest_id` int(11) DEFAULT NULL,
  `channel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend',
  `assigned_id` int(11) DEFAULT NULL,
  `requested` int(11) DEFAULT '0',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esign` text COLLATE utf8mb4_unicode_ci,
  `postponed` tinyint(1) DEFAULT NULL,
  `delivered_by` int(11) DEFAULT NULL,
  `delivered_responsiable` int(11) DEFAULT NULL,
  `received_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_order`
--

INSERT INTO `spot_shipment_order` (`id`, `office_id`, `number`, `type`, `sender_id`, `sender_address_id`, `receiver_id`, `receiver_address_id`, `packaging_id`, `ship_date`, `receive_date`, `courier_id`, `delivery_time_id`, `delivery_date`, `mode_id`, `status_id`, `tax`, `insurance`, `currency_id`, `payment_type`, `customs_value`, `courier_fee`, `package_fee`, `return_package_fee`, `return_courier_fee`, `return_defray`, `manifest_id`, `channel`, `assigned_id`, `requested`, `barcode`, `esign`, `postponed`, `delivered_by`, `delivered_responsiable`, `received_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '00001', 1, 5, 4, NULL, NULL, 1, '2021-01-06', NULL, NULL, 1, '2021-01-08', NULL, 3, 5, 1, 6, 1, '0.00', '10.00', NULL, NULL, NULL, NULL, NULL, 'backend', NULL, 1, '00001', NULL, NULL, NULL, NULL, NULL, '2021-01-06 19:36:22', '2021-01-06 19:39:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_packaging`
--

CREATE TABLE `spot_shipment_packaging` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_packaging`
--

INSERT INTO `spot_shipment_packaging` (`id`, `name`, `description`) VALUES
(1, 'Small Package', NULL),
(2, 'Documents', NULL),
(3, 'Big Package', NULL),
(4, 'Palette', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_payment`
--

CREATE TABLE `spot_shipment_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `for_id` int(11) NOT NULL,
  `movement` int(11) NOT NULL,
  `other` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `payment_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_with` int(11) DEFAULT NULL,
  `treasury_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_status`
--

CREATE TABLE `spot_shipment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_status`
--

INSERT INTO `spot_shipment_status` (`id`, `name`, `description`, `color`, `equal`) VALUES
(1, 'Pending', '', 'warning', 0),
(2, 'Received', '', 'success', 9),
(3, 'Approved', '', 'success', 1),
(4, 'Refused', '', 'danger', 2),
(5, 'Delivered to driver', '', 'info', 3),
(6, 'Supplied in stock', '', 'dark', 7),
(7, 'Delivered to receiver', '', 'success', 4),
(8, 'Delivery of discards to the driver', '', 'primary', 6),
(9, 'Return request', '', 'dark', 5),
(10, 'Supplied', '', 'success', 8);

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_task`
--

CREATE TABLE `spot_shipment_task` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_tracking`
--

CREATE TABLE `spot_shipment_tracking` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `lat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_shipment_treasury`
--

CREATE TABLE `spot_shipment_treasury` (
  `id` int(10) UNSIGNED NOT NULL,
  `default` smallint(6) NOT NULL DEFAULT '0',
  `office_id` int(11) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(11,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_shipment_treasury`
--

INSERT INTO `spot_shipment_treasury` (`id`, `default`, `office_id`, `name`, `balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'Main', '240.00', '2019-11-24 20:07:20', '2019-11-27 17:03:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spot_userpermissions_group_permission`
--

CREATE TABLE `spot_userpermissions_group_permission` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `permission_state` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot_userpermissions_permissions`
--

CREATE TABLE `spot_userpermissions_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'crud'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_userpermissions_permissions`
--

INSERT INTO `spot_userpermissions_permissions` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`, `type`) VALUES
(1, 'order', 'Workorder', 'Ability to manage the work orders', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(2, 'setting', 'Setting', 'Ability to manage system configuration', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(3, 'languages', 'Languages', 'Ability to manage lanaguages', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(4, 'departments', 'Departments', 'Ability to manage departments/groups', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(5, 'employees', 'Employees', 'Ability to manage employees', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(6, 'backups', 'Backups', 'Ability to manage backups', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(7, 'manifest', 'Manifest', 'Ability to manage manifest', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(8, 'assign', 'Assign', 'Ability to assign employees and drivers to orders', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(9, 'client', 'Client', 'Ability to manage clients', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(10, 'statuses', 'Statuses', 'Ability to manage statuses', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(11, 'areas', 'Areas', 'Ability to manage areas', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(12, 'fees', 'Fees', 'Ability to manage fees', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(13, 'currencies', 'Currencies', 'Ability to manage currencies', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(14, 'packaging', 'Packaging', 'Ability to manage packaging', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(15, 'countries', 'Countries', 'Ability to manage countries', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(16, 'states', 'States', 'Ability to manage states', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(17, 'cities', 'Cities', 'Ability to manage cities', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(18, 'branches', 'Branches', 'Ability to manage branches', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(19, 'cars', 'Cars', 'Ability to manage cars', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(20, 'transaction', 'Transactions', 'Ability to manage transactions', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(21, 'report', 'Reports', 'Ability to manage reports', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(22, 'message', 'Messages', 'Ability to manage client messages', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(23, 'category', 'Category', 'Ability to manage products categories', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(24, 'couriers', 'Couriers', 'Ability to manage couriers', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(25, 'shipping', 'Shipping', 'Ability to manage shipping modes', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(26, 'treasury', 'Treasury', 'Ability to manage treasury', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud'),
(27, 'deliverytimes', 'Delivery Times', 'Ability to manage delivery times', '2019-11-24 07:42:01', '2019-11-24 07:42:01', 'crud');

-- --------------------------------------------------------

--
-- Table structure for table `spot_userpermissions_user_permission`
--

CREATE TABLE `spot_userpermissions_user_permission` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `permission_state` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_userpermissions_user_permission`
--

INSERT INTO `spot_userpermissions_user_permission` (`user_id`, `permission_id`, `permission_state`, `created_at`, `updated_at`) VALUES
(1, 1, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 2, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 3, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 4, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 5, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 6, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 7, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 8, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 9, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 10, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 11, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 12, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 13, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 14, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 15, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 16, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 17, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 18, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 19, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 20, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 21, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 22, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 23, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 24, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 25, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 26, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(1, 27, 'crud', '2019-11-24 19:42:01', '2019-11-24 19:42:01'),
(2, 1, 'crud', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 2, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 3, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 4, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 5, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 6, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 7, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 8, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 9, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 10, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 11, 'c', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 12, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 13, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 14, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 15, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 16, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 17, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 18, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 19, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 20, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 21, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 22, 'r', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 23, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 24, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 25, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 26, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(2, 27, 'NULL', '2021-01-06 18:03:31', '2021-01-06 18:03:31'),
(3, 1, 'crud', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 2, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 3, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 4, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 5, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 6, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 7, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 8, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 9, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 10, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 11, 'c', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 12, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 13, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 14, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 15, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 16, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 17, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 18, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 19, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 20, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 21, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 22, 'r', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 23, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 24, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 25, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 26, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(3, 27, 'NULL', '2021-01-06 18:05:00', '2021-01-06 18:05:00'),
(4, 1, 'crud', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 2, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 3, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 4, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 5, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 6, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 7, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 8, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 9, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 10, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 11, 'c', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 12, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 13, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 14, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 15, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 16, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 17, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 18, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 19, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 20, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 21, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 22, 'r', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 23, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 24, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 25, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 26, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(4, 27, 'NULL', '2021-01-06 18:05:59', '2021-01-06 18:05:59'),
(5, 1, 'crud', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 2, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 3, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 4, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 5, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 6, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 7, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 8, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 9, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 10, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 11, 'c', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 12, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 13, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 14, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 15, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 16, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 17, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 18, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 19, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 20, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 21, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 22, 'r', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 23, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 24, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 25, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 26, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(5, 27, 'NULL', '2021-01-06 19:27:03', '2021-01-06 19:27:03'),
(6, 1, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 2, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 3, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 4, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 5, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 6, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 7, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 8, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 9, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 10, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 11, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 12, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 13, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 14, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 15, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 16, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 17, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 18, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 19, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 20, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 21, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 22, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 23, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 24, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 25, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 26, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(6, 27, 'crud', '2021-01-06 19:30:14', '2021-01-06 19:30:15'),
(7, 1, 'crud', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 2, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 3, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 4, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 5, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 6, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 7, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 8, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 9, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 10, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 11, 'c', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 12, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 13, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 14, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 15, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 16, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 17, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 18, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 19, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 20, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 21, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 22, 'r', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 23, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 24, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 25, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 26, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05'),
(7, 27, 'NULL', '2021-01-06 19:41:05', '2021-01-06 19:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Swift_TransportException: Expected response code 250 but got code \"550\", with message \"550 5.7.1 Relaying denied\r\n\" in /Applications/MAMP/htdocs/mecourier/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php:457\nStack trace:\n#0 /Applications/MAMP/htdocs/mecourier/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(341): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'550 5.7.1 Relay...\', Array)\n#1 /Applications/MAMP/htdocs/mecourier/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'MAIL FROM:<supp...\', Array, Array, false, NULL)\n#2 /Applications/MAMP/htdocs/mecourier/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(390): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 /Applications/MAMP/htdocs/mecourier/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(497): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 /Applications/MAMP/htdocs/mecourier/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(516): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'support@spotlay...\', Array, Array)\n#5 /Applications/MAMP/htdocs/mecourier/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'support@spotlay...\', Array, Array)\n#6 /Applications/MAMP/htdocs/mecourier/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(451): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 /Applications/MAMP/htdocs/mecourier/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Mail\\Mailer->send(\'notification\', Array, Object(Closure))\n#10 /Applications/MAMP/htdocs/mecourier/plugins/spot/shipment/init.php(112): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 [internal function]: System\\Classes\\PluginManager->{closure}(Object(Pusher\\Pusher), Object(Spot\\Shipment\\Models\\Settings), Array)\n#12 /Applications/MAMP/htdocs/mecourier/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/mecourier/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'spot.event\', Array, false)\n#14 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Events\\Dispatcher->fire(\'spot.event\', Array)\n#15 /Applications/MAMP/htdocs/mecourier/storage/cms/cache/09/7f/order-create.htm.php(669): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#16 /Applications/MAMP/htdocs/mecourier/modules/cms/Classes/Controller.php(858): Cms5ff6330e9ba8f030463515_995becd2e390703474300bd713a27d9cClass->onNewclient()\n#17 /Applications/MAMP/htdocs/mecourier/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onNewclient\')\n#18 /Applications/MAMP/htdocs/mecourier/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#19 /Applications/MAMP/htdocs/mecourier/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 /Applications/MAMP/htdocs/mecourier/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/shipm...\')\n#21 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/shipm...\')\n#22 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#23 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#24 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#25 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#26 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#27 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/mecourier/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#50 /Applications/MAMP/htdocs/mecourier/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#51 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/mecourier/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 /Applications/MAMP/htdocs/mecourier/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#57 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#60 /Applications/MAMP/htdocs/mecourier/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#62 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#63 /Applications/MAMP/htdocs/mecourier/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#64 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#67 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 /Applications/MAMP/htdocs/mecourier/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 /Applications/MAMP/htdocs/mecourier/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 {main}', NULL, '2021-01-06 18:03:35', '2021-01-06 18:03:35'),
(2, 'error', 'ErrorException: htmlspecialchars() expects parameter 1 to be string, array given in /Applications/MAMP/htdocs/wellwell/storage/cms/cache/2a/a4/settings.htm.php:481\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'htmlspecialchar...\', \'/Applications/M...\', 481, Array)\n#1 /Applications/MAMP/htdocs/wellwell/storage/cms/cache/2a/a4/settings.htm.php(481): htmlspecialchars(Array)\n#2 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(858): Cms5ff63ab361001931812451_7ad1fefd58068133056b43937a144c70Class->onSave()\n#3 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#5 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/setti...\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/setti...\')\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}', NULL, '2021-01-06 18:34:15', '2021-01-06 18:34:15'),
(3, 'error', 'ErrorException: htmlspecialchars() expects parameter 1 to be string, array given in /Applications/MAMP/htdocs/wellwell/storage/cms/cache/2a/a4/settings.htm.php:481\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'htmlspecialchar...\', \'/Applications/M...\', 481, Array)\n#1 /Applications/MAMP/htdocs/wellwell/storage/cms/cache/2a/a4/settings.htm.php(481): htmlspecialchars(Array)\n#2 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(858): Cms5ff63ab361001931812451_7ad1fefd58068133056b43937a144c70Class->onSave()\n#3 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#5 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/setti...\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/setti...\')\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}', NULL, '2021-01-06 18:34:28', '2021-01-06 18:34:28'),
(4, 'error', 'ErrorException: htmlspecialchars() expects parameter 1 to be string, array given in /Applications/MAMP/htdocs/wellwell/storage/cms/cache/2a/a4/settings.htm.php:481\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'htmlspecialchar...\', \'/Applications/M...\', 481, Array)\n#1 /Applications/MAMP/htdocs/wellwell/storage/cms/cache/2a/a4/settings.htm.php(481): htmlspecialchars(Array)\n#2 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(858): Cms5ff63ab361001931812451_7ad1fefd58068133056b43937a144c70Class->onSave()\n#3 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#5 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/setti...\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/setti...\')\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}', NULL, '2021-01-06 18:34:44', '2021-01-06 18:34:44');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(5, 'error', 'ErrorException: htmlspecialchars() expects parameter 1 to be string, array given in /Applications/MAMP/htdocs/wellwell/storage/cms/cache/2a/a4/settings.htm.php:481\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'htmlspecialchar...\', \'/Applications/M...\', 481, Array)\n#1 /Applications/MAMP/htdocs/wellwell/storage/cms/cache/2a/a4/settings.htm.php(481): htmlspecialchars(Array)\n#2 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(858): Cms5ff63ab361001931812451_7ad1fefd58068133056b43937a144c70Class->onSave()\n#3 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#5 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/setti...\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/setti...\')\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}', NULL, '2021-01-06 18:37:34', '2021-01-06 18:37:34'),
(6, 'error', 'ErrorException: array_merge(): Expected parameter 1 to be an array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:175\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_merge(): ...\', \'/Applications/M...\', 175, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(175): array_merge(\'{\"language\":\"en...\', Array)\n#2 [internal function]: System\\Behaviors\\SettingsModel->afterModelFetch()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Support/Traits/Emitter.php(133): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(165): October\\Rain\\Database\\Model->fireEvent(\'model.afterFetc...\')\n#5 [internal function]: October\\Rain\\Database\\Model->October\\Rain\\Database\\{closure}(Object(Spot\\Shipment\\Models\\Settings))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'eloquent.fetche...\', Array, false)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasEvents.php(148): October\\Rain\\Events\\Dispatcher->fire(\'eloquent.fetche...\', Object(Spot\\Shipment\\Models\\Settings))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(433): Illuminate\\Database\\Eloquent\\Model->fireModelEvent(\'fetched\', false)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(260): October\\Rain\\Database\\Model->newFromBuilder(Object(stdClass))\n#11 [internal function]: Illuminate\\Database\\Eloquent\\Builder->Illuminate\\Database\\Eloquent\\{closure}(Object(stdClass))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(259): array_map(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1477): Illuminate\\Database\\Eloquent\\Builder->hydrate(Array)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(423): Illuminate\\Database\\Eloquent\\Model->__call(\'hydrate\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'hydrate\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(481): October\\Rain\\Database\\Model->__call(\'hydrate\', Array)\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(465): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Concerns/BuildsQueries.php(77): Illuminate\\Database\\Eloquent\\Builder->get(Array)\n#19 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(114): Illuminate\\Database\\Eloquent\\Builder->first()\n#20 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(76): System\\Behaviors\\SettingsModel->getSettingsRecord()\n#21 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): System\\Behaviors\\SettingsModel->instance()\n#22 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#23 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#26 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#28 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#29 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#30 [internal function]: System\\ServiceProvider->boot()\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#37 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2021-01-06 19:08:42', '2021-01-06 19:08:42'),
(7, 'error', 'ErrorException: array_merge(): Expected parameter 1 to be an array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:175\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_merge(): ...\', \'/Applications/M...\', 175, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(175): array_merge(\'{\"language\":\"en...\', Array)\n#2 [internal function]: System\\Behaviors\\SettingsModel->afterModelFetch()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Support/Traits/Emitter.php(133): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(165): October\\Rain\\Database\\Model->fireEvent(\'model.afterFetc...\')\n#5 [internal function]: October\\Rain\\Database\\Model->October\\Rain\\Database\\{closure}(Object(Spot\\Shipment\\Models\\Settings))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'eloquent.fetche...\', Array, false)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasEvents.php(148): October\\Rain\\Events\\Dispatcher->fire(\'eloquent.fetche...\', Object(Spot\\Shipment\\Models\\Settings))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(433): Illuminate\\Database\\Eloquent\\Model->fireModelEvent(\'fetched\', false)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(260): October\\Rain\\Database\\Model->newFromBuilder(Object(stdClass))\n#11 [internal function]: Illuminate\\Database\\Eloquent\\Builder->Illuminate\\Database\\Eloquent\\{closure}(Object(stdClass))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(259): array_map(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1477): Illuminate\\Database\\Eloquent\\Builder->hydrate(Array)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(423): Illuminate\\Database\\Eloquent\\Model->__call(\'hydrate\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'hydrate\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(481): October\\Rain\\Database\\Model->__call(\'hydrate\', Array)\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(465): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Concerns/BuildsQueries.php(77): Illuminate\\Database\\Eloquent\\Builder->get(Array)\n#19 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(114): Illuminate\\Database\\Eloquent\\Builder->first()\n#20 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(76): System\\Behaviors\\SettingsModel->getSettingsRecord()\n#21 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): System\\Behaviors\\SettingsModel->instance()\n#22 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#23 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#26 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#28 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#29 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#30 [internal function]: System\\ServiceProvider->boot()\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#37 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2021-01-06 19:08:44', '2021-01-06 19:08:44'),
(8, 'error', 'ErrorException: array_merge(): Expected parameter 1 to be an array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:175\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_merge(): ...\', \'/Applications/M...\', 175, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(175): array_merge(\'{\"language\":\"en...\', Array)\n#2 [internal function]: System\\Behaviors\\SettingsModel->afterModelFetch()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Support/Traits/Emitter.php(133): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(165): October\\Rain\\Database\\Model->fireEvent(\'model.afterFetc...\')\n#5 [internal function]: October\\Rain\\Database\\Model->October\\Rain\\Database\\{closure}(Object(Spot\\Shipment\\Models\\Settings))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'eloquent.fetche...\', Array, false)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasEvents.php(148): October\\Rain\\Events\\Dispatcher->fire(\'eloquent.fetche...\', Object(Spot\\Shipment\\Models\\Settings))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(433): Illuminate\\Database\\Eloquent\\Model->fireModelEvent(\'fetched\', false)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(260): October\\Rain\\Database\\Model->newFromBuilder(Object(stdClass))\n#11 [internal function]: Illuminate\\Database\\Eloquent\\Builder->Illuminate\\Database\\Eloquent\\{closure}(Object(stdClass))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(259): array_map(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1477): Illuminate\\Database\\Eloquent\\Builder->hydrate(Array)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(423): Illuminate\\Database\\Eloquent\\Model->__call(\'hydrate\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'hydrate\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(481): October\\Rain\\Database\\Model->__call(\'hydrate\', Array)\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(465): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Concerns/BuildsQueries.php(77): Illuminate\\Database\\Eloquent\\Builder->get(Array)\n#19 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(114): Illuminate\\Database\\Eloquent\\Builder->first()\n#20 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(76): System\\Behaviors\\SettingsModel->getSettingsRecord()\n#21 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): System\\Behaviors\\SettingsModel->instance()\n#22 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#23 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#26 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#28 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#29 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#30 [internal function]: System\\ServiceProvider->boot()\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#37 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2021-01-06 19:08:46', '2021-01-06 19:08:46'),
(9, 'error', 'ErrorException: array_merge(): Expected parameter 1 to be an array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:175\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_merge(): ...\', \'/Applications/M...\', 175, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(175): array_merge(\'{\"language\":\"en...\', Array)\n#2 [internal function]: System\\Behaviors\\SettingsModel->afterModelFetch()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Support/Traits/Emitter.php(133): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(165): October\\Rain\\Database\\Model->fireEvent(\'model.afterFetc...\')\n#5 [internal function]: October\\Rain\\Database\\Model->October\\Rain\\Database\\{closure}(Object(Spot\\Shipment\\Models\\Settings))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'eloquent.fetche...\', Array, false)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasEvents.php(148): October\\Rain\\Events\\Dispatcher->fire(\'eloquent.fetche...\', Object(Spot\\Shipment\\Models\\Settings))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(433): Illuminate\\Database\\Eloquent\\Model->fireModelEvent(\'fetched\', false)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(260): October\\Rain\\Database\\Model->newFromBuilder(Object(stdClass))\n#11 [internal function]: Illuminate\\Database\\Eloquent\\Builder->Illuminate\\Database\\Eloquent\\{closure}(Object(stdClass))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(259): array_map(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1477): Illuminate\\Database\\Eloquent\\Builder->hydrate(Array)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(423): Illuminate\\Database\\Eloquent\\Model->__call(\'hydrate\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'hydrate\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(481): October\\Rain\\Database\\Model->__call(\'hydrate\', Array)\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(465): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Concerns/BuildsQueries.php(77): Illuminate\\Database\\Eloquent\\Builder->get(Array)\n#19 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(114): Illuminate\\Database\\Eloquent\\Builder->first()\n#20 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(76): System\\Behaviors\\SettingsModel->getSettingsRecord()\n#21 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): System\\Behaviors\\SettingsModel->instance()\n#22 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#23 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#26 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#28 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#29 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#30 [internal function]: System\\ServiceProvider->boot()\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#37 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2021-01-06 19:08:46', '2021-01-06 19:08:46'),
(10, 'error', 'ErrorException: array_merge(): Expected parameter 1 to be an array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:175\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_merge(): ...\', \'/Applications/M...\', 175, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(175): array_merge(\'{\"language\":\"en...\', Array)\n#2 [internal function]: System\\Behaviors\\SettingsModel->afterModelFetch()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Support/Traits/Emitter.php(133): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(165): October\\Rain\\Database\\Model->fireEvent(\'model.afterFetc...\')\n#5 [internal function]: October\\Rain\\Database\\Model->October\\Rain\\Database\\{closure}(Object(Spot\\Shipment\\Models\\Settings))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'eloquent.fetche...\', Array, false)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasEvents.php(148): October\\Rain\\Events\\Dispatcher->fire(\'eloquent.fetche...\', Object(Spot\\Shipment\\Models\\Settings))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(433): Illuminate\\Database\\Eloquent\\Model->fireModelEvent(\'fetched\', false)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(260): October\\Rain\\Database\\Model->newFromBuilder(Object(stdClass))\n#11 [internal function]: Illuminate\\Database\\Eloquent\\Builder->Illuminate\\Database\\Eloquent\\{closure}(Object(stdClass))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(259): array_map(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1477): Illuminate\\Database\\Eloquent\\Builder->hydrate(Array)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(423): Illuminate\\Database\\Eloquent\\Model->__call(\'hydrate\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'hydrate\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(481): October\\Rain\\Database\\Model->__call(\'hydrate\', Array)\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(465): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Concerns/BuildsQueries.php(77): Illuminate\\Database\\Eloquent\\Builder->get(Array)\n#19 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(114): Illuminate\\Database\\Eloquent\\Builder->first()\n#20 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(76): System\\Behaviors\\SettingsModel->getSettingsRecord()\n#21 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): System\\Behaviors\\SettingsModel->instance()\n#22 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#23 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#26 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#28 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#29 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#30 [internal function]: System\\ServiceProvider->boot()\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#37 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2021-01-06 19:08:47', '2021-01-06 19:08:47');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(11, 'error', 'ErrorException: array_merge(): Expected parameter 1 to be an array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:175\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_merge(): ...\', \'/Applications/M...\', 175, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(175): array_merge(\'{\"language\":\"en...\', Array)\n#2 [internal function]: System\\Behaviors\\SettingsModel->afterModelFetch()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Support/Traits/Emitter.php(133): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(165): October\\Rain\\Database\\Model->fireEvent(\'model.afterFetc...\')\n#5 [internal function]: October\\Rain\\Database\\Model->October\\Rain\\Database\\{closure}(Object(Spot\\Shipment\\Models\\Settings))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'eloquent.fetche...\', Array, false)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasEvents.php(148): October\\Rain\\Events\\Dispatcher->fire(\'eloquent.fetche...\', Object(Spot\\Shipment\\Models\\Settings))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(433): Illuminate\\Database\\Eloquent\\Model->fireModelEvent(\'fetched\', false)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(260): October\\Rain\\Database\\Model->newFromBuilder(Object(stdClass))\n#11 [internal function]: Illuminate\\Database\\Eloquent\\Builder->Illuminate\\Database\\Eloquent\\{closure}(Object(stdClass))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(259): array_map(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1477): Illuminate\\Database\\Eloquent\\Builder->hydrate(Array)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(423): Illuminate\\Database\\Eloquent\\Model->__call(\'hydrate\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'hydrate\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(481): October\\Rain\\Database\\Model->__call(\'hydrate\', Array)\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(465): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Concerns/BuildsQueries.php(77): Illuminate\\Database\\Eloquent\\Builder->get(Array)\n#19 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(114): Illuminate\\Database\\Eloquent\\Builder->first()\n#20 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(76): System\\Behaviors\\SettingsModel->getSettingsRecord()\n#21 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): System\\Behaviors\\SettingsModel->instance()\n#22 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#23 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#26 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#28 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#29 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#30 [internal function]: System\\ServiceProvider->boot()\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#37 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2021-01-06 19:08:50', '2021-01-06 19:08:50'),
(12, 'error', 'ErrorException: array_merge(): Expected parameter 1 to be an array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:175\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_merge(): ...\', \'/Applications/M...\', 175, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(175): array_merge(\'{\"language\":\"en...\', Array)\n#2 [internal function]: System\\Behaviors\\SettingsModel->afterModelFetch()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Support/Traits/Emitter.php(133): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(165): October\\Rain\\Database\\Model->fireEvent(\'model.afterFetc...\')\n#5 [internal function]: October\\Rain\\Database\\Model->October\\Rain\\Database\\{closure}(Object(Spot\\Shipment\\Models\\Settings))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'eloquent.fetche...\', Array, false)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasEvents.php(148): October\\Rain\\Events\\Dispatcher->fire(\'eloquent.fetche...\', Object(Spot\\Shipment\\Models\\Settings))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(433): Illuminate\\Database\\Eloquent\\Model->fireModelEvent(\'fetched\', false)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(260): October\\Rain\\Database\\Model->newFromBuilder(Object(stdClass))\n#11 [internal function]: Illuminate\\Database\\Eloquent\\Builder->Illuminate\\Database\\Eloquent\\{closure}(Object(stdClass))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(259): array_map(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1477): Illuminate\\Database\\Eloquent\\Builder->hydrate(Array)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(423): Illuminate\\Database\\Eloquent\\Model->__call(\'hydrate\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'hydrate\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(481): October\\Rain\\Database\\Model->__call(\'hydrate\', Array)\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(465): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Concerns/BuildsQueries.php(77): Illuminate\\Database\\Eloquent\\Builder->get(Array)\n#19 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(114): Illuminate\\Database\\Eloquent\\Builder->first()\n#20 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(76): System\\Behaviors\\SettingsModel->getSettingsRecord()\n#21 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): System\\Behaviors\\SettingsModel->instance()\n#22 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#23 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#26 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#28 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#29 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#30 [internal function]: System\\ServiceProvider->boot()\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#37 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2021-01-06 19:08:53', '2021-01-06 19:08:53'),
(13, 'error', 'ErrorException: array_merge(): Expected parameter 1 to be an array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:175\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_merge(): ...\', \'/Applications/M...\', 175, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(175): array_merge(\'{\"language\":\"en...\', Array)\n#2 [internal function]: System\\Behaviors\\SettingsModel->afterModelFetch()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Support/Traits/Emitter.php(133): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(165): October\\Rain\\Database\\Model->fireEvent(\'model.afterFetc...\')\n#5 [internal function]: October\\Rain\\Database\\Model->October\\Rain\\Database\\{closure}(Object(Spot\\Shipment\\Models\\Settings))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'eloquent.fetche...\', Array, false)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Concerns/HasEvents.php(148): October\\Rain\\Events\\Dispatcher->fire(\'eloquent.fetche...\', Object(Spot\\Shipment\\Models\\Settings))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(433): Illuminate\\Database\\Eloquent\\Model->fireModelEvent(\'fetched\', false)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(260): October\\Rain\\Database\\Model->newFromBuilder(Object(stdClass))\n#11 [internal function]: Illuminate\\Database\\Eloquent\\Builder->Illuminate\\Database\\Eloquent\\{closure}(Object(stdClass))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(259): array_map(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1477): Illuminate\\Database\\Eloquent\\Builder->hydrate(Array)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(423): Illuminate\\Database\\Eloquent\\Model->__call(\'hydrate\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'hydrate\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(481): October\\Rain\\Database\\Model->__call(\'hydrate\', Array)\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(465): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Concerns/BuildsQueries.php(77): Illuminate\\Database\\Eloquent\\Builder->get(Array)\n#19 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(114): Illuminate\\Database\\Eloquent\\Builder->first()\n#20 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(76): System\\Behaviors\\SettingsModel->getSettingsRecord()\n#21 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): System\\Behaviors\\SettingsModel->instance()\n#22 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#23 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#26 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#28 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#29 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#30 [internal function]: System\\ServiceProvider->boot()\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#37 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}', NULL, '2021-01-06 19:09:52', '2021-01-06 19:09:52'),
(14, 'error', 'ErrorException: array_key_exists() expects parameter 2 to be array, string given in /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php:143\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'array_key_exist...\', \'/Applications/M...\', 143, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(143): array_key_exists(\'company\', \'{\"language\":\"en...\')\n#2 [internal function]: System\\Behaviors\\SettingsModel->getSettingsValue(\'company\', NULL)\n#3 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'getSettingsValu...\', Array)\n#5 /Applications/MAMP/htdocs/wellwell/modules/system/Behaviors/SettingsModel.php(135): October\\Rain\\Database\\Model->__call(\'getSettingsValu...\', Array)\n#6 [internal function]: System\\Behaviors\\SettingsModel->get(\'company\')\n#7 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Extension/ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Model.php(635): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1489): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#10 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/Plugin.php(19): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#11 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(293): Spot\\Shipment\\Plugin->boot()\n#12 /Applications/MAMP/htdocs/wellwell/modules/system/Classes/PluginManager.php(275): System\\Classes\\PluginManager->bootPlugin(Object(Spot\\Shipment\\Plugin))\n#13 /Applications/MAMP/htdocs/wellwell/modules/system/ServiceProvider.php(103): System\\Classes\\PluginManager->bootAll()\n#14 [internal function]: System\\ServiceProvider->boot()\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(792): Illuminate\\Container\\Container->call(Array)\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(775): Illuminate\\Foundation\\Application->bootProvider(Object(System\\ServiceProvider))\n#21 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}(Object(System\\ServiceProvider), 24)\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(776): array_walk(Array, Object(Closure))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(213): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap(Object(October\\Rain\\Foundation\\Application))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(162): Illuminate\\Foundation\\Application->bootstrapWith(Array)\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(146): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#29 {main}', NULL, '2021-01-06 19:10:44', '2021-01-06 19:10:44'),
(15, 'error', 'ErrorException: A non-numeric value encountered in /Applications/MAMP/htdocs/wellwell/storage/cms/twig/d8/d81c9988880a5c7a28810f58b6548359eca49b2b09d54d673de08da2435391fc.php:1372\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/storage/cms/twig/d8/d81c9988880a5c7a28810f58b6548359eca49b2b09d54d673de08da2435391fc.php(1372): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'A non-numeric v...\', \'/Applications/M...\', 1372, Array)\n#1 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(407): __TwigTemplate_6de3cf1558e893017f9beab00fe64f9947cb50de751828ff7ad7b5e7b58d3269->doDisplay(Array, Array)\n#2 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#3 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(434): Twig\\Template->render(Array)\n#5 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/setti...\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/setti...\')\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"A non-numeric value encountered\") in \"/Applications/MAMP/htdocs/wellwell/themes/spotlayer/layouts/admin.htm\" at line 658. in /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php:421\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#2 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(434): Twig\\Template->render(Array)\n#3 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/setti...\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/setti...\')\n#6 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2021-01-06 19:14:26', '2021-01-06 19:14:26');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(16, 'error', 'ErrorException: A non-numeric value encountered in /Applications/MAMP/htdocs/wellwell/storage/cms/twig/d8/d81c9988880a5c7a28810f58b6548359eca49b2b09d54d673de08da2435391fc.php:1372\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/storage/cms/twig/d8/d81c9988880a5c7a28810f58b6548359eca49b2b09d54d673de08da2435391fc.php(1372): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'A non-numeric v...\', \'/Applications/M...\', 1372, Array)\n#1 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(407): __TwigTemplate_6de3cf1558e893017f9beab00fe64f9947cb50de751828ff7ad7b5e7b58d3269->doDisplay(Array, Array)\n#2 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#3 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(434): Twig\\Template->render(Array)\n#5 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard\')\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#55 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#56 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"A non-numeric value encountered\") in \"/Applications/MAMP/htdocs/wellwell/themes/spotlayer/layouts/admin.htm\" at line 658. in /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php:421\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /Applications/MAMP/htdocs/wellwell/vendor/twig/twig/src/Template.php(392): Twig\\Template->display(Array)\n#2 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(434): Twig\\Template->render(Array)\n#3 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard\')\n#6 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2021-01-06 19:16:04', '2021-01-06 19:16:04'),
(17, 'error', 'ErrorException: Trying to get property \'role_id\' of non-object in /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/routes.php:2654\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/routes.php(2654): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Trying to get p...\', \'/Applications/M...\', 2654, Array)\n#1 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(198): System\\Classes\\PluginManager->{closure}(Object(Illuminate\\Support\\Facades\\Request), \'requests\')\n#2 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(172): Illuminate\\Routing\\Route->runCallable()\n#3 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#4 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#5 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#6 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#7 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}', NULL, '2021-01-06 19:19:04', '2021-01-06 19:19:04'),
(18, 'error', 'ErrorException: Undefined index: addresses in /Applications/MAMP/htdocs/wellwell/storage/cms/cache/31/d8/create-client.htm.php:101\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/storage/cms/cache/31/d8/create-client.htm.php(101): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'/Applications/M...\', 101, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(858): Cms5ff6471562da9710110771_2c1441e8f908a096f3c48fddcb0f26f8Class->onSave()\n#2 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#3 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#5 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/clien...\')\n#6 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/clien...\')\n#7 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#54 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#55 {main}', NULL, '2021-01-06 19:27:03', '2021-01-06 19:27:03');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(19, 'error', 'ErrorException: Trying to get property \'county\' of non-object in /Applications/MAMP/htdocs/wellwell/storage/cms/cache/f9/b0/order-create.htm.php:787\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/storage/cms/cache/f9/b0/order-create.htm.php(787): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Trying to get p...\', \'/Applications/M...\', 787, Array)\n#1 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(858): Cms5ff647033554d208175053_e33f73adf5b3338bf46754e374ec38fbClass->onChangefees()\n#2 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onChangefees\')\n#3 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#4 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#5 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/shipm...\')\n#6 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/shipm...\')\n#7 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#10 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#11 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#12 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#54 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#55 {main}', NULL, '2021-01-06 19:29:59', '2021-01-06 19:29:59'),
(20, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalErrorException: Allowed memory size of 134217728 bytes exhausted (tried to allocate 69455556 bytes) in /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Attach/Resizer.php:504\nStack trace:\n#0 {main}', NULL, '2021-01-06 19:36:19', '2021-01-06 19:36:19'),
(21, 'error', 'Swift_TransportException: Expected response code 250 but got code \"550\", with message \"550 5.7.1 Relaying denied\r\n\" in /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php:457\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(341): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'550 5.7.1 Relay...\', Array)\n#1 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'MAIL FROM:<supp...\', Array, Array, false, NULL)\n#2 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(390): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(497): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(516): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'support@spotlay...\', Array, Array)\n#5 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'support@spotlay...\', Array, Array)\n#6 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(451): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Mail\\Mailer->send(\'notification\', Array, Object(Closure))\n#10 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/init.php(112): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 [internal function]: System\\Classes\\PluginManager->{closure}(NULL, Object(Spot\\Shipment\\Models\\Settings), Array)\n#12 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'spot.event\', Array, false)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Events\\Dispatcher->fire(\'spot.event\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/storage/cms/cache/f9/b0/order-create.htm.php(192): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(858): Cms5ff648312ed34205712920_1ebdc11fdccdb5641623d2e4b6b17c5fClass->onSave()\n#17 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onSave\')\n#18 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#19 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/shipm...\')\n#21 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/shipm...\')\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#57 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#60 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#62 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#63 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#64 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#67 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 {main}', NULL, '2021-01-06 19:36:25', '2021-01-06 19:36:25'),
(22, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalErrorException: Allowed memory size of 134217728 bytes exhausted (tried to allocate 69455556 bytes) in /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Attach/Resizer.php:504\nStack trace:\n#0 {main}', NULL, '2021-01-06 19:36:40', '2021-01-06 19:36:40'),
(23, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalErrorException: Allowed memory size of 134217728 bytes exhausted (tried to allocate 69455556 bytes) in /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Attach/Resizer.php:504\nStack trace:\n#0 {main}', NULL, '2021-01-06 19:36:46', '2021-01-06 19:36:46'),
(24, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalErrorException: Allowed memory size of 134217728 bytes exhausted (tried to allocate 69455556 bytes) in /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Database/Attach/Resizer.php:504\nStack trace:\n#0 {main}', NULL, '2021-01-06 19:36:51', '2021-01-06 19:36:51'),
(25, 'error', 'Swift_TransportException: Expected response code 250 but got code \"550\", with message \"550 5.7.1 Relaying denied\r\n\" in /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php:457\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(341): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'550 5.7.1 Relay...\', Array)\n#1 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'MAIL FROM:<thow...\', Array, Array, false, NULL)\n#2 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(390): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(497): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(516): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'thowsif@lrbinfo...\', Array, Array)\n#5 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'thowsif@lrbinfo...\', Array, Array)\n#6 /Applications/MAMP/htdocs/wellwell/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(451): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Mail\\Mailer->send(\'notification\', Array, Object(Closure))\n#10 /Applications/MAMP/htdocs/wellwell/plugins/spot/shipment/init.php(112): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 [internal function]: System\\Classes\\PluginManager->{closure}(NULL, Object(Spot\\Shipment\\Models\\Settings), Array)\n#12 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#13 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'spot.event\', Array, false)\n#14 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Events\\Dispatcher->fire(\'spot.event\', Array)\n#15 /Applications/MAMP/htdocs/wellwell/storage/cms/cache/dd/0d/shipment.htm.php(335): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#16 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(858): Cms5ff649b847f25368531015_3763774cf6ae842e7e18b517fc70c7ffClass->onAccept()\n#17 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onAccept\')\n#18 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#19 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'dashboard/shipm...\')\n#21 [internal function]: Cms\\Classes\\CmsController->run(\'dashboard/shipm...\')\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#27 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#49 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#57 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#60 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#62 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#63 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#64 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#67 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 {main}', NULL, '2021-01-06 19:39:40', '2021-01-06 19:39:40'),
(26, 'info', 'Error with RainLab\\Notify\\NotifyRules\\SendMailTemplateAction', NULL, '2021-01-06 19:41:05', '2021-01-06 19:41:05');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(27, 'error', 'InvalidArgumentException: View [welcome] not found. in /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:137\nStack trace:\n#0 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(92): Illuminate\\View\\FileViewFinder->findInPaths(\'welcome\', Array)\n#1 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(76): Illuminate\\View\\FileViewFinder->findNamespacedView(\'rainlab.user::w...\')\n#2 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Factory.php(128): Illuminate\\View\\FileViewFinder->find(\'rainlab.user::w...\')\n#3 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(328): Illuminate\\View\\Factory->make(\'rainlab.user::w...\', Array)\n#4 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Mail/Mailer.php(406): Illuminate\\Mail\\Mailer->renderView(\'rainlab.user::w...\', Array)\n#5 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Mail/Mailer.php(73): October\\Rain\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'rainlab.user::w...\', NULL, NULL, Array)\n#6 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Mail/Mailer.php(181): October\\Rain\\Mail\\Mailer->send(\'rainlab.user::w...\', Array, Object(Closure))\n#7 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Mail\\Mailer->sendTo(Array, \'rainlab.user::w...\', Array, Object(Closure))\n#8 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/notify/notifyrules/SendMailTemplateAction.php(55): Illuminate\\Support\\Facades\\Facade::__callStatic(\'sendTo\', Array)\n#9 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/notify/models/RuleAction.php(49): RainLab\\Notify\\NotifyRules\\SendMailTemplateAction->triggerAction(Array)\n#10 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/notify/models/NotificationRule.php(81): Rainlab\\Notify\\Models\\RuleAction->triggerAction(Array)\n#11 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/notify/classes/Notifier.php(108): RainLab\\Notify\\Models\\NotificationRule->triggerRule()\n#12 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/notify/classes/EventParams.php(35): RainLab\\Notify\\Classes\\Notifier->fireEvent(\'RainLab\\\\User\\\\No...\', Array)\n#13 [internal function]: RainLab\\Notify\\Classes\\EventParams->handle()\n#14 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#15 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(October\\Rain\\Foundation\\Application), Array, Object(Closure))\n#17 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Container/Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(October\\Rain\\Foundation\\Application), Array, Array, NULL)\n#18 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(RainLab\\Notify\\Classes\\EventParams))\n#20 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(RainLab\\Notify\\Classes\\EventParams))\n#21 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(RainLab\\Notify\\Classes\\EventParams), false)\n#23 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(76): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\SyncJob), Array)\n#24 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Queue/SyncQueue.php(42): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Queue/QueueManager.php(268): Illuminate\\Queue\\SyncQueue->push(Object(RainLab\\Notify\\Classes\\EventParams))\n#26 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): Illuminate\\Queue\\QueueManager->__call(\'push\', Array)\n#27 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/notify/classes/Notifier.php(95): Illuminate\\Support\\Facades\\Facade::__callStatic(\'push\', Array)\n#28 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/notify/classes/Notifier.php(85): RainLab\\Notify\\Classes\\Notifier->queueEvent(\'RainLab\\\\User\\\\No...\', Array)\n#29 [internal function]: RainLab\\Notify\\Classes\\Notifier::RainLab\\Notify\\Classes\\{closure}(Object(RainLab\\User\\Models\\User), Array)\n#30 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(233): call_user_func_array(Object(Closure), Array)\n#31 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Events/Dispatcher.php(197): October\\Rain\\Events\\Dispatcher->dispatch(\'rainlab.user.re...\', Array, false)\n#32 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): October\\Rain\\Events\\Dispatcher->fire(\'rainlab.user.re...\', Array)\n#33 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/user/components/Account.php(283): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#34 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/ComponentBase.php(187): RainLab\\User\\Components\\Account->onRegister()\n#35 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(872): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onRegister\')\n#36 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(740): Cms\\Classes\\Controller->runAjaxHandler(\'onRegister\')\n#37 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(373): Cms\\Classes\\Controller->execAjaxHandlers()\n#38 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#39 /Applications/MAMP/htdocs/wellwell/modules/cms/Classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#40 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#41 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#42 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#43 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#44 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#45 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#46 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /Applications/MAMP/htdocs/wellwell/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#57 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#60 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#63 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#65 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#66 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#67 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#68 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#69 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#70 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#71 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#72 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/CDNMiddleware.php(40): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#73 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\CDNMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#74 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#75 /Applications/MAMP/htdocs/wellwell/plugins/offline/speedy/classes/middleware/Http2Middleware.php(38): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#76 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\Speedy\\Classes\\Middleware\\Http2Middleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#78 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#79 /Applications/MAMP/htdocs/wellwell/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#80 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 /Applications/MAMP/htdocs/wellwell/plugins/offline/cors/classes/HandleCors.php(36): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#83 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): OFFLINE\\CORS\\Classes\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#84 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#85 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#86 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#87 /Applications/MAMP/htdocs/wellwell/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#88 /Applications/MAMP/htdocs/wellwell/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#89 {main}', NULL, '2021-01-06 19:41:05', '2021-01-06 19:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(8, '5ddd8a3f510a5987313209.jpg', '1 (1).jpg', 51571, 'image/jpeg', NULL, NULL, 'id_copy', '2', 'Spot\\Shipment\\Models\\Order', 1, 8, '2019-11-26 21:25:35', '2019-11-26 21:25:35'),
(9, '5dde2cd311700857850857.jpg', 'id-identification-driver-license-national-260nw-1310800595 (1).jpg', 21410, 'image/jpeg', NULL, NULL, 'id_copy', '1', 'Spot\\Shipment\\Models\\Order', 1, 9, '2019-11-27 08:59:15', '2019-11-27 08:59:15'),
(10, '5dde9d7615bb9455148432.jpg', 'cam-1574870333083.jpg', 8003, 'image/jpeg', NULL, NULL, 'id_copy', '3', 'Spot\\Shipment\\Models\\Order', 1, 10, '2019-11-27 16:59:50', '2019-11-27 16:59:50'),
(12, '5e190d2819c42114498074.png', '1.png', 43431, 'image/png', NULL, NULL, 'id_copy', '5', 'Spot\\Shipment\\Models\\Order', 1, 12, '2020-01-10 17:47:52', '2020-01-10 17:47:52'),
(13, '5ff63a0790248806136750.png', 'logo-well-well.png', 163278, 'image/png', NULL, NULL, 'logo', '1', 'Spot\\Shipment\\Models\\Settings', 1, 13, '2021-01-06 18:30:31', '2021-01-06 18:30:31'),
(14, '5ff63a0d0151c298316948.png', 'logo-well-well.png', 163278, 'image/png', NULL, NULL, 'mobile_logo', '1', 'Spot\\Shipment\\Models\\Settings', 1, 14, '2021-01-06 18:30:37', '2021-01-06 18:30:37'),
(15, '5ff63a14c5e21299914791.png', 'logo-well-well.png', 163278, 'image/png', NULL, NULL, 'favicon', '1', 'Spot\\Shipment\\Models\\Settings', 1, 15, '2021-01-06 18:30:44', '2021-01-06 18:30:44'),
(16, '5ff64973cc40e734057095.png', 'LRB LOGO VECTOR FILE-01.png', 230005, 'image/png', NULL, NULL, 'avatar', '1', 'RainLab\\User\\Models\\User', 1, 16, '2021-01-06 19:36:19', '2021-01-06 19:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-11-24 19:18:27', '2019-11-24 19:18:27'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-11-24 19:18:27', '2019-11-24 19:18:27'),
(3, 'Spotlayer', 'spotlayer', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n    <head>\r\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n    </head>\r\n    <body>\r\n        <style type=\"text/css\" media=\"screen\">\r\n            {{ brandCss|raw }}\r\n            {{ css|raw }}\r\n        </style>\r\n    \r\n    	<div class=\"es-wrapper-color {% if currentLang == \'ar\' %}rtl{% endif %}\">\r\n    		<!--[if gte mso 9]>\r\n    			<v:background xmlns:v=\"urn:schemas-microsoft-com:vml\" fill=\"t\">\r\n    				<v:fill type=\"tile\" src=\"https://stripo.email/content/guids/CABINET_63fbbc11db6741389cc3292b09a63e6d/images/7711511856111535.png\" color=\"#f6f6f6\" origin=\"0.5, 0\" position=\"0.5,0\"></v:fill>\r\n    			</v:background>\r\n    		<![endif]-->\r\n    		<table class=\"main_table\" background=\"https://stripo.email/content/guids/CABINET_63fbbc11db6741389cc3292b09a63e6d/images/7711511856111535.png\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-wrapper\" width=\"100%\">\r\n    			<tbody>\r\n    				<tr style=\"border-collapse:collapse;\">\r\n    					<td style=\"padding:0;Margin:0;\" valign=\"top\">\r\n    \r\n							<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-content\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;\">\r\n								<tbody>\r\n									<tr style=\"border-collapse:collapse;\">\r\n										<td align=\"center\" class=\"es-adaptive\" style=\"padding:0;Margin:0;\">\r\n										<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-content-body\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;\" width=\"600\">\r\n											<tbody>\r\n												<tr style=\"border-collapse:collapse;\">\r\n													<td align=\"left\" colspan=\"2\" style=\"padding:10px;Margin:0;background-image:url(https://tlr.stripocdn.email/content/guids/CABINET_63fbbc11db6741389cc3292b09a63e6d/images/7711511856111535.png);background-position:left top;background-repeat:repeat;\"><!--[if mso]><table width=\"580\"><tr><td width=\"280\" valign=\"top\"><![endif]-->\r\n														<p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:12px;font-family:verdana, geneva, sans-serif;line-height:120%;color:#CCCCCC;\">{{site_description|__}}</p>\r\n														<!--[if mso]></td><td width=\"20\"></td><td width=\"280\" valign=\"top\"><![endif]-->\r\n														<!--[if mso]></td></tr></table><![endif]-->\r\n													</td>\r\n												</tr>\r\n											</tbody>\r\n										</table>\r\n										</td>\r\n									</tr>\r\n								</tbody>\r\n							</table>\r\n\r\n							<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-header\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top;\">\r\n								<tbody>\r\n									<tr style=\"border-collapse:collapse;\">\r\n										<td align=\"center\" class=\"es-adaptive\" style=\"padding:0;Margin:0;\">\r\n										<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-header-body\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;\" width=\"600\">\r\n											<tbody>\r\n												<tr style=\"border-collapse:collapse;\">\r\n													<td align=\"left\" style=\"padding:15px;Margin:0;\">\r\n													<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n														<tbody>\r\n															<tr style=\"border-collapse:collapse;\">\r\n																<td align=\"center\" style=\"padding:0;Margin:0;\" valign=\"top\" width=\"570\">\r\n																<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n																	<tbody>\r\n																		<tr style=\"border-collapse:collapse;\">\r\n																			<td align=\"center\" class=\"es-m-p0l\" style=\"padding:0;Margin:0;\"><a href=\"{{site_url}}\" target=\"_blank\"><img alt=\"{{site_title}}\" src=\"{{site_logo}}\" style=\"display: block; border: 0px; outline: none; text-decoration: none; width: 90px;\" title=\"{{site_title}}\" /></a><h2 style=\"margin: 8px auto 0!important;text-decoration: none !important;text-align: center !important;\">{{site_title|__}}</h2></td>\r\n																		</tr>\r\n																	</tbody>\r\n																</table>\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n													</td>\r\n												</tr>\r\n												<tr style=\"border-collapse:collapse;\">\r\n													<td align=\"left\" style=\"padding:0;Margin:0;\">\r\n													<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n														<tbody>\r\n															<tr style=\"border-collapse:collapse;\">\r\n																<td align=\"center\" style=\"padding:0;Margin:0;\" valign=\"top\" width=\"600\">\r\n																<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n																	<tbody>\r\n																		<tr style=\"border-collapse:collapse;\">\r\n																			<td style=\"padding:0;Margin:0;\">\r\n																			<table cellpadding=\"0\" cellspacing=\"0\" class=\"es-menu\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n																				<tbody>\r\n																					<tr class=\"links\" style=\"border-collapse:collapse;\">\r\n																						<td align=\"center\" bgcolor=\"#333333\" id=\"esd-menu-id-0\" style=\"Margin:0;padding-left:5px;padding-right:5px;padding-top:12px;padding-bottom:12px;border:0;\" width=\"25.00%\"></td>\r\n																					</tr>\r\n																				</tbody>\r\n																			</table>\r\n																			</td>\r\n																		</tr>\r\n																	</tbody>\r\n																</table>\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n													</td>\r\n												</tr>\r\n											</tbody>\r\n										</table>\r\n										</td>\r\n									</tr>\r\n								</tbody>\r\n							</table>\r\n\r\n							<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-content\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;\">\r\n								<tbody>\r\n									<tr style=\"border-collapse:collapse;\">\r\n										<td align=\"center\" style=\"padding:0;Margin:0;\">\r\n										<table align=\"center\" bgcolor=\"#ffffff\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-content-body\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;\" width=\"600\">\r\n											<tbody>\r\n												<tr style=\"border-collapse:collapse;\">\r\n													<td align=\"left\" style=\"Margin:0;padding-top:20px;padding-bottom:20px;padding-left:10px;padding-right:30px;\">\r\n													<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n														<tbody>\r\n															<tr style=\"border-collapse:collapse;\">\r\n																<td align=\"center\" style=\"padding:0;Margin:0;\" valign=\"top\" width=\"540\">\r\n																<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n																	<tbody>\r\n																		<tr style=\"border-collapse:collapse;\">\r\n																			<td class=\"es-m-txt-c\" style=\"padding:0;Margin:0;\">\r\n																				{{ content|raw }}\r\n																			</td>\r\n																		</tr>\r\n																	</tbody>\r\n																</table>\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n													</td>\r\n												</tr>\r\n												<tr style=\"border-collapse:collapse;\">\r\n													<td align=\"left\" style=\"Margin:0;padding-top:10px;padding-bottom:30px;padding-left:30px;padding-right:30px;\"><!--[if mso]><table width=\"540\" cellpadding=\"0\"\r\n				                            cellspacing=\"0\"><tr><td width=\"100\" valign=\"top\"><![endif]-->\r\n													<table align=\"left\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-left\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left;width: 100%\">\r\n														<tbody>\r\n															<tr style=\"border-collapse:collapse;\">\r\n																<td align=\"center\" class=\"es-m-p0r es-m-p20b\" style=\"padding:0;Margin:0;\" valign=\"top\" width=\"100\">\r\n																<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n																	<tbody>\r\n																		<tr style=\"border-collapse:collapse;\">\r\n																			<td align=\"left\" class=\"es-m-txt-c\" style=\"padding:0;Margin:0;\">\r\n																			<p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:verdana, geneva, sans-serif;line-height:150%;color:#666666;\">{{theme_lang.best_regards}},</p>\r\n																			<p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:verdana, geneva, sans-serif;line-height:150%;color:#666666;\">{{site_title|__}}</p>\r\n																			</td>\r\n																		</tr>\r\n																	</tbody>\r\n																</table>\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n													<!--[if mso]></td><td width=\"20\"></td><td width=\"420\" valign=\"top\"><![endif]-->\r\n													<!--[if mso]></td></tr></table><![endif]--></td>\r\n												</tr>\r\n											</tbody>\r\n										</table>\r\n										</td>\r\n									</tr>\r\n								</tbody>\r\n							</table>\r\n\r\n							<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-content footer\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;\">\r\n								<tbody>\r\n									<tr style=\"border-collapse:collapse;\">\r\n									</tr>\r\n									<tr style=\"border-collapse:collapse;\">\r\n										<td align=\"center\" style=\"padding:0;Margin:0;\">\r\n										<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"es-footer-body\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#333333;\" width=\"600\">\r\n											<tbody>\r\n												<tr style=\"border-collapse:collapse;\">\r\n													<td align=\"left\" style=\"Margin:0;padding-top:20px;padding-bottom:20px;padding-left:20px;padding-right:20px;\">\r\n													<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n														<tbody>\r\n															<tr style=\"border-collapse:collapse;\">\r\n																<td align=\"center\" style=\"padding:0;Margin:0;\" valign=\"top\" width=\"560\">\r\n																<table cellpadding=\"0\" cellspacing=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;\" width=\"100%\">\r\n																	<tbody>\r\n																		<tr style=\"border-collapse:collapse;\">\r\n																			<td align=\"center\" style=\"padding:0;Margin:0;padding-top:5px;padding-bottom:5px;\">\r\n																			<p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:verdana, geneva, sans-serif;line-height:21px;color:#FFFFFF;\">{{site_address|__}}</p>\r\n																			</td>\r\n																		</tr>\r\n																		<tr style=\"border-collapse:collapse;\">\r\n																			<td align=\"center\" style=\"padding:0;Margin:0;padding-top:5px;padding-bottom:5px;\">\r\n																			<p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:12px;font-family:verdana, geneva, sans-serif;line-height:21px;color:#FFFFFF;\">{{theme_lang.footer_email_msg}}. {{theme_lang.please_add}} <a href=\"mailto:{{site_email}}\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:verdana, geneva, sans-serif;font-size:12px;text-decoration:underline;color:#FFFFFF;line-height:21px;\" target=\"_blank\">{{site_email}}</a> {{theme_lang.to_contacts}}!</p>\r\n\r\n																			</td>\r\n																		</tr>\r\n																		<tr style=\"border-collapse:collapse;\">\r\n																			<td align=\"center\" style=\"padding:0;Margin:0;\">\r\n																			<p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:verdana, geneva, sans-serif;line-height:150%;color:#FFFFFF;\"><span style=\"font-size:12px;line-height:150%;\">{{site_title|__}} © {{theme_lang.rights_reserved}}</span></p>\r\n																			</td>\r\n																		</tr>\r\n																	</tbody>\r\n																</table>\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n													</td>\r\n												</tr>\r\n											</tbody>\r\n										</table>\r\n										</td>\r\n									</tr>\r\n								</tbody>\r\n							</table>\r\n						\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n		</div>\r\n	</body>\r\n</html>', '', '', 0, '{\"disable_auto_inline_css\":\"0\"}', '2019-11-26 16:30:28', '2019-11-26 16:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_partials`
--

INSERT INTO `system_mail_partials` (`id`, `name`, `code`, `content_html`, `content_text`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'header', '<tr>\n    <td class=\"header\">\n        {% if url %}\n            <a href=\"{{ url }}\">\n                {{ body }}\n            </a>\n        {% else %}\n            <span>\n                {{ body }}\n            </span>\n        {% endif %}\n    </td>\n</tr>', '*** {{ body|trim }} <{{ url }}>', 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(2, 'Footer', 'footer', '<tr>\n    <td>\n        <table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n            <tr>\n                <td class=\"content-cell\" align=\"center\">\n                    {{ body|md_safe }}\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>', '-------------------\n{{ body|trim }}', 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(3, 'Button', 'button', '<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td align=\"center\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                            <tr>\n                                <td>\n                                    <a href=\"{{ url }}\" class=\"button button-{{ type ?: \'primary\' }}\" target=\"_blank\">\n                                        {{ body }}\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }} <{{ url }}>', 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(4, 'Panel', 'panel', '<table class=\"panel\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td class=\"panel-content\">\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td class=\"panel-item\">\n                        {{ body|md_safe }}\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(5, 'Table', 'table', '<div class=\"table\">\n    {{ body|md_safe }}\n</div>', '{{ body|trim }}', 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(6, 'Subcopy', 'subcopy', '<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '-----\n{{ body|trim }}', 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(7, 'Promotion', 'promotion', '<table class=\"promotion\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_mail_templates`
--

INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'zainab.simplecontact::mail.reply', NULL, NULL, NULL, NULL, 1, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(2, 'zainab.simplecontact::mail.auto-response', NULL, NULL, NULL, NULL, 1, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(3, 'zainab.simplecontact::mail.notification', NULL, NULL, NULL, NULL, 1, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(4, 'rainlab.user::mail.activate', NULL, 'Activate a new user', NULL, NULL, 1, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(5, 'rainlab.user::mail.welcome', NULL, 'User confirmed their account', NULL, NULL, 1, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(6, 'rainlab.user::mail.restore', NULL, 'User requests a password reset', NULL, NULL, 1, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(7, 'rainlab.user::mail.new_user', NULL, 'Notify admins of a new sign up', NULL, NULL, 2, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(8, 'rainlab.user::mail.reactivate', NULL, 'User has reactivated their account', NULL, NULL, 1, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(9, 'rainlab.user::mail.invite', NULL, 'Invite a new user to the website', NULL, NULL, 1, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(10, 'backend::mail.invite', NULL, 'Invite new admin to the site', NULL, NULL, 2, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(11, 'backend::mail.restore', NULL, 'Reset an admin password', NULL, NULL, 2, 0, '2019-11-26 16:28:37', '2019-11-26 16:28:37'),
(13, 'notification', 'Notification', 'The default Template for Notification', '<p>{{theme_lang.dear}} <strong>{{ name }}</strong>,</p>\r\n{% if content %}\r\n<p>\r\n    {{content}}\r\n</p>\r\n{% endif %}\r\n{% if link %}\r\n<p>\r\n    <a href=\"{{ link }}\">{{ link }}</a>\r\n</p>\r\n{% endif %}', '', 3, 1, '2019-11-26 16:32:43', '2019-11-26 16:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '7'),
(2, 'system', 'core', 'hash', '\"7ecf00bd75e60458191bfcdc43dc14e5\"'),
(3, 'system', 'core', 'build', '\"458\"'),
(4, 'system', 'update', 'retry', '1579039093');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(2, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2019-11-24 19:38:38'),
(3, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2019-11-24 19:38:39'),
(4, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-24 19:38:39'),
(5, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2019-11-24 19:38:39'),
(6, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2019-11-24 19:38:39'),
(7, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2019-11-24 19:38:39'),
(8, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2019-11-24 19:38:39'),
(9, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2019-11-24 19:38:39'),
(10, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2019-11-24 19:38:39'),
(11, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2019-11-24 19:38:39'),
(12, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2019-11-24 19:38:39'),
(13, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2019-11-24 19:38:39'),
(14, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2019-11-24 19:38:39'),
(15, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2019-11-24 19:38:39'),
(16, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2019-11-24 19:38:39'),
(17, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2019-11-24 19:38:39'),
(18, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2019-11-24 19:38:39'),
(19, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2019-11-24 19:38:39'),
(20, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2019-11-24 19:38:39'),
(21, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2019-11-24 19:38:39'),
(22, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2019-11-24 19:38:39'),
(23, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2019-11-24 19:38:39'),
(24, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2019-11-24 19:38:39'),
(25, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2019-11-24 19:38:39'),
(26, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2019-11-24 19:38:39'),
(27, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2019-11-24 19:38:39'),
(28, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2019-11-24 19:38:39'),
(29, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2019-11-24 19:38:39'),
(30, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2019-11-24 19:38:39'),
(31, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2019-11-24 19:38:39'),
(32, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2019-11-24 19:38:39'),
(33, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2019-11-24 19:38:39'),
(34, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2019-11-24 19:38:39'),
(35, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2019-11-24 19:38:39'),
(36, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2019-11-24 19:38:39'),
(37, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2019-11-24 19:38:39'),
(38, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2019-11-24 19:38:39'),
(39, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2019-11-24 19:38:39'),
(40, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2019-11-24 19:38:39'),
(41, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2019-11-24 19:38:39'),
(42, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2019-11-24 19:38:39'),
(43, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2019-11-24 19:38:39'),
(44, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2019-11-24 19:38:39'),
(45, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2019-11-24 19:38:39'),
(46, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2019-11-24 19:38:39'),
(47, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2019-11-24 19:38:39'),
(48, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2019-11-24 19:38:39'),
(49, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2019-11-24 19:38:39'),
(50, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2019-11-24 19:38:39'),
(51, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2019-11-24 19:38:39'),
(52, 'RainLab.User', 'comment', '1.4.0', '!!! The Notifications tab in User settings has been removed.', '2019-11-24 19:38:39'),
(53, 'RainLab.User', 'comment', '1.4.1', 'Added support for user impersonation.', '2019-11-24 19:38:39'),
(54, 'RainLab.User', 'comment', '1.4.2', 'Fixes security bug in Password Reset component.', '2019-11-24 19:38:39'),
(55, 'RainLab.User', 'comment', '1.4.3', 'Fixes session handling for AJAX requests.', '2019-11-24 19:38:39'),
(56, 'RainLab.User', 'comment', '1.4.4', 'Fixes bug where impersonation touches the last seen timestamp.', '2019-11-24 19:38:39'),
(57, 'RainLab.User', 'comment', '1.4.5', 'Added token fallback process to Account / Reset Password components when parameter is missing.', '2019-11-24 19:38:39'),
(58, 'RainLab.User', 'comment', '1.4.6', 'Fixes Auth::register method signature mismatch with core OctoberCMS Auth library', '2019-11-24 19:38:39'),
(59, 'RainLab.User', 'comment', '1.4.7', 'Fixes redirect bug in Account component / Update translations and separate user and group management.', '2019-11-24 19:38:39'),
(60, 'RainLab.User', 'comment', '1.4.8', 'Fixes a bug where calling MailBlocker::removeBlock could remove all mail blocks for the user.', '2019-11-24 19:38:39'),
(61, 'RainLab.User', 'comment', '1.5.0', '!!! Required password length is now a minimum of 8 characters. Previous passwords will not be affected until the next password change.', '2019-11-24 19:38:39'),
(62, 'Vdomah.JWTAuth', 'comment', '1.0.0', 'Initialize plugin.', '2019-11-24 19:38:50'),
(63, 'Vdomah.JWTAuth', 'comment', '1.0.1', 'Custom service provider and config file added.', '2019-11-24 19:38:50'),
(64, 'Vdomah.JWTAuth', 'comment', '1.0.2', 'Compability with OctoberCMS builds > 419 (Laravel 5.5)', '2019-11-24 19:38:50'),
(65, 'Vdomah.JWTAuth', 'comment', '1.0.3', 'README.md updated', '2019-11-24 19:38:50'),
(66, 'Vdomah.JWTAuth', 'comment', '1.0.4', 'Ability to define own set of user attributes in response.', '2019-11-24 19:38:50'),
(67, 'Vdomah.JWTAuth', 'comment', '1.0.5', '/refresh and /invalidate endpoints back.', '2019-11-24 19:38:50'),
(68, 'Vdomah.JWTAuth', 'comment', '1.0.6', 'Update README about creating route in another plugin.', '2019-11-24 19:38:50'),
(69, 'Vdomah.JWTAuth', 'comment', '1.0.7', 'Compability with OctoberCMS builds > 454 (Authenticatable trait removed)', '2019-11-24 19:38:50'),
(70, 'RainLab.Notify', 'script', '1.0.1', 'create_notifications_table.php', '2019-11-24 19:38:58'),
(71, 'RainLab.Notify', 'script', '1.0.1', 'create_notification_rules_table.php', '2019-11-24 19:38:58'),
(72, 'RainLab.Notify', 'script', '1.0.1', 'create_rule_conditions_table.php', '2019-11-24 19:38:58'),
(73, 'RainLab.Notify', 'script', '1.0.1', 'create_rule_actions_table.php', '2019-11-24 19:38:58'),
(74, 'RainLab.Notify', 'comment', '1.0.1', 'First version of Notify', '2019-11-24 19:38:58'),
(75, 'RainLab.Notify', 'comment', '1.0.2', 'Fixes crashing bug.', '2019-11-24 19:38:58'),
(76, 'Tiipiik.SmsSender', 'script', '1.0.1', 'create_message_histories_table.php', '2019-11-24 19:39:11'),
(77, 'Tiipiik.SmsSender', 'comment', '1.0.1', 'First version of SmsSender', '2019-11-24 19:39:11'),
(78, 'Tiipiik.SmsSender', 'comment', '1.0.2', 'Added russian localisation, PR by @maximlit. Thanks !', '2019-11-24 19:39:11'),
(79, 'Tiipiik.SmsSender', 'comment', '1.0.3', 'Added Dutch language, thanks to @dogiedog', '2019-11-24 19:39:11'),
(80, 'Tiipiik.SmsSender', 'comment', '1.0.4', 'Added Dutch translation, thanks to @alacoo', '2019-11-24 19:39:11'),
(81, 'RainLab.Location', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-24 19:39:19'),
(82, 'RainLab.Location', 'script', '1.0.2', 'create_states_table.php', '2019-11-24 19:39:19'),
(83, 'RainLab.Location', 'script', '1.0.2', 'create_countries_table.php', '2019-11-24 19:39:19'),
(84, 'RainLab.Location', 'comment', '1.0.2', 'Create database tables.', '2019-11-24 19:39:19'),
(85, 'RainLab.Location', 'script', '1.0.3', 'seed_all_tables.php', '2019-11-24 19:39:20'),
(86, 'RainLab.Location', 'comment', '1.0.3', 'Add seed data for countries and states.', '2019-11-24 19:39:20'),
(87, 'RainLab.Location', 'comment', '1.0.4', 'Satisfy the new Google API key requirement.', '2019-11-24 19:39:20'),
(88, 'RainLab.Location', 'script', '1.0.5', 'add_country_pinned_flag.php', '2019-11-24 19:39:20'),
(89, 'RainLab.Location', 'comment', '1.0.5', 'Countries can now be pinned to make them appear at the top of the list.', '2019-11-24 19:39:20'),
(90, 'RainLab.Location', 'comment', '1.0.6', 'Added support for defining a default country and state.', '2019-11-24 19:39:20'),
(91, 'RainLab.Location', 'comment', '1.0.7', 'Added basic geocoding method to the Country model.', '2019-11-24 19:39:20'),
(92, 'RainLab.Location', 'comment', '1.0.8', 'Include Mexico states', '2019-11-24 19:39:20'),
(93, 'RainLab.Location', 'comment', '1.1.0', '!!! Update requires Build 447. Fixed AddressFinder formwidget not working correctly in repeaters.', '2019-11-24 19:39:20'),
(94, 'RainLab.Location', 'comment', '1.1.1', 'Minor fix to AddressFinder formwidget for the change to the FormField API', '2019-11-24 19:39:20'),
(95, 'RainLab.Location', 'comment', '1.1.2', 'Yet another change to the AddressFinder for changes to the FormField API', '2019-11-24 19:39:20'),
(96, 'RainLab.Location', 'script', '1.1.3', 'seed_ar_states.php', '2019-11-24 19:39:20'),
(97, 'RainLab.Location', 'comment', '1.1.3', 'Include Argentina states', '2019-11-24 19:39:20'),
(98, 'RainLab.Location', 'comment', '1.1.4', 'Added support for UK counties', '2019-11-24 19:39:20'),
(99, 'RainLab.Location', 'script', '1.1.5', 'seed_it_states.php', '2019-11-24 19:39:20'),
(100, 'RainLab.Location', 'comment', '1.1.5', 'Include Italian states (province)', '2019-11-24 19:39:20'),
(101, 'RainLab.UserPlus', 'comment', '1.0.1', 'First version of User Profile', '2019-11-24 19:39:29'),
(102, 'RainLab.UserPlus', 'script', '1.0.2', 'user_add_profile_fields.php', '2019-11-24 19:39:29'),
(103, 'RainLab.UserPlus', 'script', '1.0.2', 'user_add_location_fields.php', '2019-11-24 19:39:29'),
(104, 'RainLab.UserPlus', 'comment', '1.0.2', 'Reintroduce profile fields that were removed from User plugin', '2019-11-24 19:39:29'),
(105, 'RainLab.UserPlus', 'script', '1.0.3', 'user_add_mobile_field.php', '2019-11-24 19:39:29'),
(106, 'RainLab.UserPlus', 'comment', '1.0.3', 'Add mobile phone user profile field.', '2019-11-24 19:39:29'),
(107, 'RainLab.UserPlus', 'comment', '1.0.4', 'Add various languages and minor bug fixes.', '2019-11-24 19:39:29'),
(108, 'RainLab.UserPlus', 'comment', '1.1.0', 'Compatibility with Notify plugin.', '2019-11-24 19:39:29'),
(109, 'Vdomah.Roles', 'script', '1.0.0', 'builder_table_create_vdomah_roles_roles.php', '2019-11-24 19:39:37'),
(110, 'Vdomah.Roles', 'script', '1.0.0', 'builder_table_create_vdomah_roles_permissions.php', '2019-11-24 19:39:37'),
(111, 'Vdomah.Roles', 'script', '1.0.0', 'users_add_role_id_column.php', '2019-11-24 19:39:37'),
(112, 'Vdomah.Roles', 'comment', '1.0.0', 'Initialize plugin.', '2019-11-24 19:39:37'),
(113, 'Vdomah.Roles', 'comment', '1.0.1', 'Permission name transaltable. Readme update. Move static methods to Helper', '2019-11-24 19:39:37'),
(114, 'Vdomah.Roles', 'comment', '1.0.2', 'Soft implementation of RainLab.Translate', '2019-11-24 19:39:37'),
(115, 'Vdomah.Roles', 'comment', '1.0.3', 'SimpleTree trait implemented, fixed roles dropdown in user form', '2019-11-24 19:39:38'),
(116, 'Vdomah.Roles', 'comment', '1.0.4', 'Replaced hardcoded backend urls with dynamic links in view (thanks to Damian Verhaar)', '2019-11-24 19:39:38'),
(117, 'Vdomah.Roles', 'comment', '1.0.5', 'Replaced hardcoded backend urls with dynamic links in controller (thanks to Damian Verhaar)', '2019-11-24 19:39:38'),
(118, 'Vdomah.Roles', 'comment', '1.1.0', 'CMS Pages access managment by assigning roles and permissions', '2019-11-24 19:39:38'),
(119, 'Vdomah.Roles', 'comment', '1.1.1', 'CMS Pages access managment moved to separate tab', '2019-11-24 19:39:38'),
(120, 'Vdomah.Roles', 'comment', '1.1.2', 'Fixed bug wich prevented returning the whole ancestor tree in a role (thanks Daniel Tamas). En translations updated', '2019-11-24 19:39:38'),
(121, 'Vdomah.Roles', 'comment', '1.1.3', '\"Logged only\" CMS page parameter added', '2019-11-24 19:39:38'),
(122, 'Vdomah.Roles', 'comment', '1.2.0', 'Lovata.Buddies plugin integration', '2019-11-24 19:39:38'),
(123, 'Vdomah.Roles', 'script', '1.2.1', 'buddies_add_role_id_column.php', '2019-11-24 19:39:38'),
(124, 'Vdomah.Roles', 'comment', '1.2.1', 'Check if users table exists in migrations before altering it', '2019-11-24 19:39:38'),
(125, 'Vdomah.Roles', 'comment', '1.2.2', 'Add fillable to Role model', '2019-11-24 19:39:38'),
(126, 'Vdomah.Roles', 'comment', '1.2.3', 'role_id field nullable', '2019-11-24 19:39:38'),
(127, 'Vdomah.Roles', 'comment', '1.2.4', 'Check role_id exists in users table and add if no', '2019-11-24 19:39:38'),
(128, 'Vdomah.Roles', 'comment', '1.2.5', 'Added isRole and able methods to user object', '2019-11-24 19:39:38'),
(129, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2019-11-24 19:39:47'),
(130, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2019-11-24 19:39:47'),
(131, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2019-11-24 19:39:47'),
(132, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2019-11-24 19:39:47'),
(133, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2019-11-24 19:39:47'),
(134, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2019-11-24 19:39:47'),
(135, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2019-11-24 19:39:47'),
(136, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2019-11-24 19:39:47'),
(137, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2019-11-24 19:39:47'),
(138, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2019-11-24 19:39:47'),
(139, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2019-11-24 19:39:47'),
(140, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2019-11-24 19:39:47'),
(141, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2019-11-24 19:39:47'),
(142, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2019-11-24 19:39:47'),
(143, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2019-11-24 19:39:47'),
(144, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2019-11-24 19:39:47'),
(145, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2019-11-24 19:39:47'),
(146, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2019-11-24 19:39:47'),
(147, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2019-11-24 19:39:47'),
(148, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2019-11-24 19:39:47'),
(149, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2019-11-24 19:39:47'),
(150, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2019-11-24 19:39:47'),
(151, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2019-11-24 19:39:47'),
(152, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2019-11-24 19:39:47'),
(153, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2019-11-24 19:39:47'),
(154, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2019-11-24 19:39:47'),
(155, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2019-11-24 19:39:47'),
(156, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2019-11-24 19:39:47'),
(157, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2019-11-24 19:39:47'),
(158, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2019-11-24 19:39:47'),
(159, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2019-11-24 19:39:47'),
(160, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2019-11-24 19:39:47'),
(161, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2019-11-24 19:39:47'),
(162, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2019-11-24 19:39:47'),
(163, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX.', '2019-11-24 19:39:47'),
(164, 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2019-11-24 19:39:47'),
(165, 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2019-11-24 19:39:47'),
(166, 'RainLab.Translate', 'script', '1.3.1', 'builder_table_update_rainlab_translate_locales.php', '2019-11-24 19:39:47'),
(167, 'RainLab.Translate', 'script', '1.3.1', 'seed_all_tables.php', '2019-11-24 19:39:47'),
(168, 'RainLab.Translate', 'comment', '1.3.1', 'Added reordering to languages', '2019-11-24 19:39:47'),
(169, 'RainLab.Translate', 'comment', '1.3.2', 'Improved compatibility with RainLab.Pages, added ability to scan Mail Messages for translatable variables.', '2019-11-24 19:39:47'),
(170, 'RainLab.Translate', 'comment', '1.3.3', 'Fix to the locale picker session handling in Build 420 onwards.', '2019-11-24 19:39:47'),
(171, 'RainLab.Translate', 'comment', '1.3.4', 'Add alternate hreflang elements and adds prefixDefaultLocale setting.', '2019-11-24 19:39:47'),
(172, 'RainLab.Translate', 'comment', '1.3.5', 'Fix MLRepeater bug when switching locales.', '2019-11-24 19:39:47'),
(173, 'RainLab.Translate', 'comment', '1.3.6', 'Fix Middleware to use the prefixDefaultLocale setting introduced in 1.3.4', '2019-11-24 19:39:47'),
(174, 'RainLab.Translate', 'comment', '1.3.7', 'Fix config reference in LocaleMiddleware', '2019-11-24 19:39:47'),
(175, 'RainLab.Translate', 'comment', '1.3.8', 'Keep query string when switching locales', '2019-11-24 19:39:47'),
(176, 'RainLab.Translate', 'comment', '1.4.0', 'Add importer and exporter for messages', '2019-11-24 19:39:47'),
(177, 'RainLab.Translate', 'comment', '1.4.1', 'Updated Hungarian translation. Added Arabic translation. Fixed issue where default texts are overwritten by import. Fixed issue where the language switcher for repeater fields would overlap with the first repeater row.', '2019-11-24 19:39:47'),
(178, 'RainLab.Translate', 'comment', '1.4.2', 'Add multilingual MediaFinder', '2019-11-24 19:39:47'),
(179, 'RainLab.Translate', 'comment', '1.4.3', '!!! Please update OctoberCMS to Build 444 before updating this plugin. Added ability to translate CMS Pages fields (e.g. title, description, meta-title, meta-description)', '2019-11-24 19:39:47'),
(180, 'RainLab.Translate', 'comment', '1.4.4', 'Minor improvements to compatibility with Laravel framework.', '2019-11-24 19:39:47'),
(181, 'RainLab.Translate', 'comment', '1.4.5', 'Fixed issue when using the language switcher', '2019-11-24 19:39:47'),
(182, 'RainLab.Translate', 'comment', '1.5.0', 'Compatibility fix with Build 451', '2019-11-24 19:39:47'),
(183, 'RainLab.Translate', 'comment', '1.6.0', 'Make File Upload widget properties translatable. Merge Repeater core changes into MLRepeater widget. Add getter method to retrieve original translate data.', '2019-11-24 19:39:47'),
(184, 'RainLab.Translate', 'comment', '1.6.1', 'Add ability for models to provide translated computed data, add option to disable locale prefix routing', '2019-11-24 19:39:47'),
(185, 'RainLab.Translate', 'comment', '1.6.2', 'Implement localeUrl filter, add per-locale theme configuration support', '2019-11-24 19:39:47'),
(186, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2019-11-24 19:40:05'),
(187, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2019-11-24 19:40:05'),
(188, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2019-11-24 19:40:05'),
(189, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2019-11-24 19:40:05'),
(190, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2019-11-24 19:40:05'),
(191, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2019-11-24 19:40:05'),
(192, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2019-11-24 19:40:05'),
(193, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2019-11-24 19:40:05'),
(194, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2019-11-24 19:40:05'),
(195, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2019-11-24 19:40:05'),
(196, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2019-11-24 19:40:05'),
(197, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2019-11-24 19:40:05'),
(198, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2019-11-24 19:40:05'),
(199, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2019-11-24 19:40:05'),
(200, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2019-11-24 19:40:05'),
(201, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2019-11-24 19:40:05'),
(202, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2019-11-24 19:40:05'),
(203, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2019-11-24 19:40:05'),
(204, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2019-11-24 19:40:05'),
(205, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2019-11-24 19:40:05'),
(206, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2019-11-24 19:40:05'),
(207, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2019-11-24 19:40:05'),
(208, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2019-11-24 19:40:05'),
(209, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2019-11-24 19:40:05'),
(210, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2019-11-24 19:40:05'),
(211, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2019-11-24 19:40:05'),
(212, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2019-11-24 19:40:05'),
(213, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2019-11-24 19:40:05'),
(214, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2019-11-24 19:40:05'),
(215, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2019-11-24 19:40:05'),
(216, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2019-11-24 19:40:05'),
(217, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2019-11-24 19:40:05'),
(218, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2019-11-24 19:40:05'),
(219, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2019-11-24 19:40:05'),
(220, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2019-11-24 19:40:05'),
(221, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2019-11-24 19:40:05'),
(222, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2019-11-24 19:40:05'),
(223, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2019-11-24 19:40:05'),
(224, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2019-11-24 19:40:05'),
(225, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2019-11-24 19:40:05'),
(226, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-11-24 19:40:05'),
(227, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2019-11-24 19:40:05'),
(228, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2019-11-24 19:40:05'),
(229, 'RainLab.Pages', 'comment', '1.2.18', 'Fixes cache-invalidation issues when RainLab.Translate is not installed. Added Greek & Simplified Chinese translations. Removed deprecated calls. Allowed saving HTML in snippet properties. Added support for the MediaFinder in menu items.', '2019-11-24 19:40:05'),
(230, 'RainLab.Pages', 'comment', '1.2.19', 'Catch exception with corrupted menu file.', '2019-11-24 19:40:05'),
(231, 'RainLab.Pages', 'comment', '1.2.20', 'StaticMenu component now exposes menuName property; added pages.menu.referencesGenerated event.', '2019-11-24 19:40:05'),
(232, 'RainLab.Pages', 'comment', '1.2.21', 'Fixes a bug where last Static Menu item cannot be deleted. Improved Persian, Slovak and Turkish translations.', '2019-11-24 19:40:05'),
(233, 'RainLab.Pages', 'comment', '1.3.0', 'Added support for using Database-driven Themes when enabled in the CMS configuration.', '2019-11-24 19:40:05'),
(234, 'RainLab.Pages', 'comment', '1.3.1', 'Added ChildPages Component, prevent hidden pages from being returned via menu item resolver.', '2019-11-24 19:40:05'),
(235, 'PanaKour.Translate', 'comment', '1.0.1', 'Initial version of translate plugin', '2019-11-24 19:40:05'),
(236, 'PanaKour.Translate', 'comment', '1.0.1', 'Make RainLab Static Menu Multilingual', '2019-11-24 19:40:05'),
(237, 'Mey.Breadcrumbs', 'comment', '1.0.1', 'First version of Breadcrumbs', '2019-11-24 19:40:13'),
(238, 'Mey.Breadcrumbs', 'comment', '1.0.2', 'Update how the menu works', '2019-11-24 19:40:13'),
(239, 'Mey.Breadcrumbs', 'comment', '1.0.3', 'Add the option to set the crumb title using a DOM element that lives on the page. This is helpful for pages that use :slug type routing.', '2019-11-24 19:40:13'),
(240, 'Mey.Breadcrumbs', 'comment', '1.0.4', 'Pages are now sorted by title in the dropdown menu in the breadcrumbs tab.', '2019-11-24 19:40:13'),
(241, 'Mey.Breadcrumbs', 'comment', '1.0.5', 'Update to fix the page sorting issue. Pages now sort alphabetically in the dropdown menu. Also a better icon choice.', '2019-11-24 19:40:13'),
(242, 'Mey.Breadcrumbs', 'comment', '1.0.6', 'Internal updates and bug fixes.', '2019-11-24 19:40:13'),
(243, 'Mey.Breadcrumbs', 'comment', '1.0.7', 'Bug fix for those who use element titles. Now no error will be thrown if the element does not exist on the page.', '2019-11-24 19:40:13'),
(244, 'Mey.Breadcrumbs', 'comment', '1.0.8', 'Updated menu to be much more logical. Also gave some more context to he menu dropdown.', '2019-11-24 19:40:13'),
(245, 'Mey.Breadcrumbs', 'comment', '1.0.9', 'Update to be compatible with the latest october build.', '2019-11-24 19:40:13'),
(246, 'Mey.Breadcrumbs', 'comment', '1.0.10', 'Fix for compatibility with 286 build.', '2019-11-24 19:40:13'),
(247, 'Responsiv.Currency', 'script', '1.0.1', 'create_exchange_converters_table.php', '2019-11-24 19:40:22'),
(248, 'Responsiv.Currency', 'script', '1.0.1', 'create_exchange_rates_table.php', '2019-11-24 19:40:22'),
(249, 'Responsiv.Currency', 'script', '1.0.1', 'create_currencies_table.php', '2019-11-24 19:40:22'),
(250, 'Responsiv.Currency', 'script', '1.0.1', 'seed_all_tables.php', '2019-11-24 19:40:22'),
(251, 'Responsiv.Currency', 'comment', '1.0.1', 'First version of Currency', '2019-11-24 19:40:22'),
(252, 'Responsiv.Currency', 'comment', '1.0.2', 'Add currency form widget and list column type.', '2019-11-24 19:40:22'),
(253, 'Responsiv.Currency', 'comment', '1.0.3', 'Add new exchanges Fixer and CoinMarketCap. Yahoo exchange has been discontinued.', '2019-11-24 19:40:22'),
(254, 'Responsiv.Currency', 'comment', '1.0.4', 'Improvements to currency formatting parameters.', '2019-11-24 19:40:22'),
(255, 'Initbiz.Money', 'script', '1.0.1', 'update_responsive_currency_currencies_table.php', '2019-11-24 19:40:32'),
(256, 'Initbiz.Money', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-24 19:40:32'),
(257, 'Initbiz.Money', 'comment', '1.0.2', 'MoneyFields behavior fixed', '2019-11-24 19:40:32'),
(258, 'Initbiz.Money', 'comment', '1.0.3', 'Small extending fix for better DX', '2019-11-24 19:40:32'),
(259, 'Initbiz.Money', 'comment', '1.0.4', 'Minor bug fixes', '2019-11-24 19:40:32'),
(260, 'Initbiz.Money', 'comment', '1.0.5', 'Yet another small fix', '2019-11-24 19:40:32'),
(261, 'Initbiz.Money', 'comment', '1.0.6', 'Updating partials with moneyFields works', '2019-11-24 19:40:32'),
(262, 'Initbiz.Money', 'comment', '1.0.7', 'Added money column type', '2019-11-24 19:40:32'),
(263, 'Initbiz.Money', 'comment', '1.0.8', 'Minor bug fixes, a few features added', '2019-11-24 19:40:32'),
(264, 'Responsiv.Uploader', 'comment', '1.0.1', 'First version of Uploader', '2019-11-24 19:40:40'),
(265, 'Jacob.Logbook', 'script', '1.0.1', 'create_logs_table.php', '2019-11-24 19:40:48'),
(266, 'Jacob.Logbook', 'comment', '1.0.1', 'First version of Logbook', '2019-11-24 19:40:48'),
(267, 'Jacob.Logbook', 'comment', '1.0.2', 'Fix error when changing properties from the LogChanges trait.', '2019-11-24 19:40:48'),
(268, 'Jacob.Logbook', 'comment', '1.0.3', 'Add undo button to form widget and add report widget.', '2019-11-24 19:40:48'),
(269, 'Excodus.TranslateExtended', 'comment', '1.0.1', 'First version of Translate Extended', '2019-11-24 19:40:56'),
(270, 'Excodus.TranslateExtended', 'comment', '1.0.2', 'Added backend settings page with option to opt-out from the browser lang detection and route prefixing', '2019-11-24 19:40:56'),
(271, 'Excodus.TranslateExtended', 'comment', '1.0.2', 'Bug fixes', '2019-11-24 19:40:56'),
(272, 'Excodus.TranslateExtended', 'comment', '1.0.2', 'Improved browser language matching', '2019-11-24 19:40:56'),
(273, 'Excodus.TranslateExtended', 'comment', '1.0.3', 'Fixed default plugin settings', '2019-11-24 19:40:56'),
(274, 'Excodus.TranslateExtended', 'comment', '1.0.4', 'Added extended locale picker', '2019-11-24 19:40:56'),
(275, 'Excodus.TranslateExtended', 'comment', '1.0.5', 'Bug fixes', '2019-11-24 19:40:56'),
(276, 'Excodus.TranslateExtended', 'comment', '1.0.5', 'Added setting for homepage redirect', '2019-11-24 19:40:56'),
(277, 'Excodus.TranslateExtended', 'comment', '1.0.6', 'Support for translated page URLs', '2019-11-24 19:40:56'),
(278, 'Excodus.TranslateExtended', 'comment', '1.0.6', 'Fix for switcher for pages in subdirectory of domain', '2019-11-24 19:40:56'),
(279, 'Excodus.TranslateExtended', 'comment', '1.0.7', 'Specified \'web\' middleware for Laravel 5.5 support', '2019-11-24 19:40:56'),
(280, 'Responsiv.Pay', 'script', '1.0.1', 'create_invoices_table.php', '2019-11-24 19:41:11'),
(281, 'Responsiv.Pay', 'script', '1.0.1', 'create_methods_table.php', '2019-11-24 19:41:11'),
(282, 'Responsiv.Pay', 'script', '1.0.1', 'create_taxes_table.php', '2019-11-24 19:41:11'),
(283, 'Responsiv.Pay', 'script', '1.0.1', 'seed_all_tables.php', '2019-11-24 19:41:11'),
(284, 'Responsiv.Pay', 'comment', '1.0.1', 'First version of Pay', '2019-11-24 19:41:11'),
(285, 'Responsiv.Pay', 'comment', '1.0.2', 'Payment settings can now push the invoice number forward.', '2019-11-24 19:41:11'),
(286, 'Responsiv.Pay', 'comment', '1.0.3', 'Fixes bug in Skrill payment method when saving.', '2019-11-24 19:41:11'),
(287, 'Responsiv.Pay', 'script', '1.0.4', 'add_invoice_item_related.php', '2019-11-24 19:41:11'),
(288, 'Responsiv.Pay', 'comment', '1.0.4', 'Invoice items now support related objects.', '2019-11-24 19:41:11'),
(289, 'Responsiv.Pay', 'script', '1.1.0', 'create_user_profiles_table.php', '2019-11-24 19:41:11'),
(290, 'Responsiv.Pay', 'comment', '1.1.0', '!!! Add support for payment profiles.', '2019-11-24 19:41:11'),
(291, 'Responsiv.Pay', 'script', '1.1.1', 'add_invoice_throwaway_flag.php', '2019-11-24 19:41:11'),
(292, 'Responsiv.Pay', 'comment', '1.1.1', 'Added a throwaway flag to invoices.', '2019-11-24 19:41:11'),
(293, 'Zainab.SimpleContact', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-24 19:41:20'),
(294, 'Zainab.SimpleContact', 'script', '1.0.2', 'builder_table_create_zainab_simplecontact_contact.php', '2019-11-24 19:41:20'),
(295, 'Zainab.SimpleContact', 'comment', '1.0.2', 'Created table zainab_simplecontact_contact', '2019-11-24 19:41:20'),
(296, 'Zainab.SimpleContact', 'script', '1.0.3', 'builder_table_update_zainab_simplecontact_contact.php', '2019-11-24 19:41:20'),
(297, 'Zainab.SimpleContact', 'comment', '1.0.3', 'Updated table zainab_simplecontact_contact', '2019-11-24 19:41:20'),
(298, 'Zainab.SimpleContact', 'comment', '1.0.4', 'Change Alias bug fixed', '2019-11-24 19:41:20'),
(299, 'Zainab.SimpleContact', 'comment', '1.0.5', 'Dashboard widget added', '2019-11-24 19:41:20'),
(300, 'Zainab.SimpleContact', 'comment', '1.0.5', 'Language added -- Portuguese (Brazil)', '2019-11-24 19:41:20'),
(301, 'Zainab.SimpleContact', 'comment', '1.0.6', 'grecaptcha reset bug fixed', '2019-11-24 19:41:20'),
(302, 'Zainab.SimpleContact', 'comment', '1.1.0', 'sql_modes NO_ZERO_IN_DATE,NO_ZERO_DATE fixed', '2019-11-24 19:41:20'),
(303, 'Zainab.SimpleContact', 'comment', '1.1.0', 'minor bugs fixed', '2019-11-24 19:41:20'),
(304, 'Zainab.SimpleContact', 'comment', '1.1.1', 'Language added -- Russian', '2019-11-24 19:41:20'),
(305, 'Zainab.SimpleContact', 'comment', '1.1.1', 'minor bug fixed', '2019-11-24 19:41:20'),
(306, 'Zainab.SimpleContact', 'comment', '2.0.0', 'Translate Plugin Dependency Added (RainLab.Translate)', '2019-11-24 19:41:20'),
(307, 'Zainab.SimpleContact', 'comment', '2.0.0', 'Languages Added (Arabic, Chinese)', '2019-11-24 19:41:20'),
(308, 'Zainab.SimpleContact', 'comment', '2.0.1', 'Migration Bug Fixed', '2019-11-24 19:41:20'),
(309, 'Zainab.SimpleContact', 'comment', '2.0.1', 'Notification Email Updated', '2019-11-24 19:41:20'),
(310, 'Zainab.SimpleContact', 'comment', '2.0.2', 'Languages Added (Czech, Turkish)', '2019-11-24 19:41:20'),
(311, 'Zainab.SimpleContact', 'comment', '2.0.3', 'Language Added (French), fixed punctuation', '2019-11-24 19:41:20'),
(312, 'Spot.UserPermissions', 'script', '1.0.1', 'create_tables.php', '2019-11-24 19:41:49'),
(313, 'Spot.UserPermissions', 'comment', '1.0.1', 'Development version', '2019-11-24 19:41:49'),
(314, 'Spot.UserPermissions', 'comment', '1.0.2', '!!! Various optimization changes, this update is not compatible with previous versions.', '2019-11-24 19:41:49'),
(315, 'Spot.UserPermissions', 'comment', '1.0.3', '!!! Consolidation of permission functions into a single hasUserPermission() function, other various changes.', '2019-11-24 19:41:49'),
(316, 'Spot.UserPermissions', 'comment', '1.1.0', '!!! Added requested code field, optimized SQL query and data handling. Changes to permission forms.', '2019-11-24 19:41:49'),
(317, 'Spot.UserPermissions', 'comment', '1.1.1', 'Fixed so that back-end permissions can control the availability of controlling front-end user permissions', '2019-11-24 19:41:49'),
(318, 'Spot.TwigExtensions', 'comment', '1.0.1', 'First version of TwigExtensions', '2019-11-24 19:41:55'),
(319, 'Spot.TwigExtensions', 'comment', '1.0.2', 'Add template_from_string function', '2019-11-24 19:41:55'),
(320, 'Spot.TwigExtensions', 'comment', '1.0.3', 'Fix uppercase, lowercase and ucfirst for UTF-8 characters', '2019-11-24 19:41:55'),
(321, 'Spot.TwigExtensions', 'comment', '1.0.4', 'Add leftpad, rightpad and strpad filters. Cover by unit tests.', '2019-11-24 19:41:55'),
(322, 'Spot.TwigExtensions', 'comment', '1.0.5', 'Add config function (thanks to Sebastian Hilger)', '2019-11-24 19:41:55'),
(323, 'Spot.TwigExtensions', 'comment', '1.0.6', 'Fix localizednumber and localizedcurrency filters (thanks to Vita Zoubek)', '2019-11-24 19:41:55'),
(324, 'Spot.TwigExtensions', 'comment', '1.0.7', 'Add the session() and trans() helper functions (thanks to Sebastian Hilger)', '2019-11-24 19:41:55'),
(325, 'Spot.TwigExtensions', 'comment', '1.0.8', 'Plugin can be installed over Composer.', '2019-11-24 19:41:55'),
(326, 'Spot.TwigExtensions', 'comment', '1.0.9', 'Add var_dump filter and function.', '2019-11-24 19:41:55'),
(327, 'Spot.TwigExtensions', 'comment', '1.0.10', 'Remove pre tag from var_dump', '2019-11-24 19:41:55'),
(328, 'Spot.TwigExtensions', 'comment', '1.0.11', 'Add mailto filter for rendering encrypted email addresses.', '2019-11-24 19:41:55'),
(329, 'Spot.TwigExtensions', 'comment', '1.0.12', 'Add mailto text parameter and rtl filter.', '2019-11-24 19:41:55'),
(330, 'Spot.TwigExtensions', 'comment', '1.0.13', 'Make time_diff translatable.', '2019-11-24 19:41:55'),
(331, 'Spot.TwigExtensions', 'comment', '1.0.14', 'Add pt-br locale for time_diff translation (thanks to Ronaldo Ribeiro de Sousa)', '2019-11-24 19:41:55'),
(332, 'Spot.TwigExtensions', 'comment', '1.0.15', 'Add DE and HU locale (thanks to Szabó Gergő and Sebastian Hilger)', '2019-11-24 19:41:55'),
(333, 'Spot.TwigExtensions', 'comment', '1.1.0', 'Make changes for Laravel 5.5.', '2019-11-24 19:41:55'),
(334, 'Spot.TwigExtensions', 'comment', '1.1.1', 'Add revision filter', '2019-11-24 19:41:55'),
(335, 'Spot.TwigExtensions', 'comment', '1.1.2', 'Add strip_tags filter', '2019-11-24 19:41:55'),
(336, 'Spot.TwigExtensions', 'comment', '1.1.3', 'Add sortbyfield filter to sorting arrays/fields by key.', '2019-11-24 19:41:55'),
(337, 'Spot.TwigExtensions', 'comment', '1.2.0', 'Require PHP 7.0 as minimum version.', '2019-11-24 19:41:55'),
(338, 'Spot.TwigExtensions', 'comment', '1.2.1', 'Add linter and code sniffer for better automatization.', '2019-11-24 19:41:55'),
(339, 'Spot.TwigExtensions', 'comment', '1.2.2', 'Add str_replace filter (thanks to Szabó Gergő)', '2019-11-24 19:41:55'),
(340, 'Spot.TwigExtensions', 'comment', '1.2.3', 'Added an optional css class parameter to mailto function', '2019-11-24 19:41:55'),
(341, 'Spot.TwigExtensions', 'comment', '1.2.4', 'Add sk_SK locale, thanks to Marek Závacký', '2019-11-24 19:41:55'),
(342, 'Spot.TwigExtensions', 'comment', '1.2.5', 'Add env() helper function, thanks to Marek Závacký', '2019-11-24 19:41:55'),
(391, 'PanaKour.Backup', 'script', '1.0.1', 'seed_default_settings.php', '2019-11-24 19:49:52'),
(392, 'PanaKour.Backup', 'comment', '1.0.1', 'First version of backup plugin.', '2019-11-24 19:49:52'),
(393, 'PanaKour.Backup', 'comment', '1.0.2', 'Fixes bug when no backup folder exist', '2019-11-24 19:49:52'),
(394, 'PanaKour.Backup', 'comment', '1.0.3', 'Settings button directly in toolbar of backup list. Fixed monitored backups name', '2019-11-24 19:49:52'),
(395, 'PanaKour.Backup', 'comment', '1.0.4', 'Support Dropbox storage driver', '2019-11-24 19:49:52'),
(396, 'PanaKour.Backup', 'comment', '1.0.5', 'Support Dropbox storage driver (Fix if not configured yet)', '2019-11-24 19:49:52'),
(397, 'PanaKour.Backup', 'comment', '1.0.6', 'Change the backups path to fix 404 error on apache server because of the default .htaccess', '2019-11-24 19:49:52'),
(398, 'PanaKour.Backup', 'comment', '1.0.7', 'Display backup list even if exist only in the old path', '2019-11-24 19:49:52'),
(399, 'PanaKour.Backup', 'comment', '1.0.8', 'Add permissions.', '2019-11-24 19:49:52'),
(400, 'PanaKour.Backup', 'comment', '1.0.9', 'Add option to create backup of whole project independently of settings', '2019-11-24 19:49:52'),
(401, 'Kocholes.BarcodeGenerator', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-24 19:50:02'),
(402, 'Kocholes.BarcodeGenerator', 'comment', '1.0.2', 'Compatibility with latest build (446 at the moment).', '2019-11-24 19:50:02'),
(638, 'Spot.Shipment', 'script', '1.0.1', 'extendUser.php', '2019-11-24 20:07:19'),
(639, 'Spot.Shipment', 'script', '1.0.1', 'changePermissions.php', '2019-11-24 20:07:19'),
(640, 'Spot.Shipment', 'script', '1.0.1', 'changeTranslate.php', '2019-11-24 20:07:19'),
(641, 'Spot.Shipment', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-24 20:07:19'),
(642, 'Spot.Shipment', 'comment', '1.0.1', 'Added user table columns', '2019-11-24 20:07:19'),
(643, 'Spot.Shipment', 'script', '1.0.2', 'builder_table_create_spot_shipment_order.php', '2019-11-24 20:07:19'),
(644, 'Spot.Shipment', 'comment', '1.0.2', 'Created table spot_shipment_order', '2019-11-24 20:07:19'),
(645, 'Spot.Shipment', 'script', '1.0.3', 'builder_table_create_spot_shipment_item.php', '2019-11-24 20:07:19'),
(646, 'Spot.Shipment', 'comment', '1.0.3', 'Created table spot_shipment_item', '2019-11-24 20:07:19'),
(647, 'Spot.Shipment', 'script', '1.0.4', 'builder_table_create_spot_shipment_task.php', '2019-11-24 20:07:19'),
(648, 'Spot.Shipment', 'comment', '1.0.4', 'Created table spot_shipment_task', '2019-11-24 20:07:19'),
(649, 'Spot.Shipment', 'script', '1.0.5', 'builder_table_create_spot_shipment_category.php', '2019-11-24 20:07:19'),
(650, 'Spot.Shipment', 'comment', '1.0.5', 'Created table spot_shipment_category', '2019-11-24 20:07:19'),
(651, 'Spot.Shipment', 'script', '1.0.6', 'builder_table_create_spot_shipment_office.php', '2019-11-24 20:07:19'),
(652, 'Spot.Shipment', 'comment', '1.0.6', 'Created table spot_shipment_office', '2019-11-24 20:07:19'),
(653, 'Spot.Shipment', 'script', '1.0.7', 'builder_table_create_spot_shipment_address.php', '2019-11-24 20:07:19'),
(654, 'Spot.Shipment', 'comment', '1.0.7', 'Created table spot_shipment_address', '2019-11-24 20:07:19'),
(655, 'Spot.Shipment', 'script', '1.0.8', 'builder_table_create_spot_shipment_packaging.php', '2019-11-24 20:07:19'),
(656, 'Spot.Shipment', 'comment', '1.0.8', 'Created table spot_shipment_packaging', '2019-11-24 20:07:19'),
(657, 'Spot.Shipment', 'script', '1.0.9', 'builder_table_create_spot_shipment_courier.php', '2019-11-24 20:07:19'),
(658, 'Spot.Shipment', 'comment', '1.0.9', 'Created table spot_shipment_courier', '2019-11-24 20:07:19'),
(659, 'Spot.Shipment', 'script', '1.0.10', 'builder_table_create_spot_shipment_delivery_time.php', '2019-11-24 20:07:19'),
(660, 'Spot.Shipment', 'comment', '1.0.10', 'Created table spot_shipment_delivery_time', '2019-11-24 20:07:19'),
(661, 'Spot.Shipment', 'script', '1.0.11', 'builder_table_create_spot_shipment_mode.php', '2019-11-24 20:07:19'),
(662, 'Spot.Shipment', 'comment', '1.0.11', 'Created table spot_shipment_mode', '2019-11-24 20:07:19'),
(663, 'Spot.Shipment', 'script', '1.0.12', 'builder_table_create_spot_shipment_status.php', '2019-11-24 20:07:20'),
(664, 'Spot.Shipment', 'comment', '1.0.12', 'Created table spot_shipment_status', '2019-11-24 20:07:20'),
(665, 'Spot.Shipment', 'script', '1.0.13', 'builder_table_create_spot_shipment_activity.php', '2019-11-24 20:07:20'),
(666, 'Spot.Shipment', 'comment', '1.0.13', 'Created table spot_shipment_activity', '2019-11-24 20:07:20'),
(667, 'Spot.Shipment', 'script', '1.0.14', 'builder_table_create_spot_shipment_car.php', '2019-11-24 20:07:20'),
(668, 'Spot.Shipment', 'comment', '1.0.14', 'Created table spot_shipment_car', '2019-11-24 20:07:20'),
(669, 'Spot.Shipment', 'script', '1.0.15', 'builder_table_create_spot_shipment_area.php', '2019-11-24 20:07:20'),
(670, 'Spot.Shipment', 'comment', '1.0.15', 'Created table spot_shipment_area', '2019-11-24 20:07:20'),
(671, 'Spot.Shipment', 'script', '1.0.16', 'builder_table_create_spot_shipment_city.php', '2019-11-24 20:07:20'),
(672, 'Spot.Shipment', 'comment', '1.0.16', 'Created table spot_shipment_city', '2019-11-24 20:07:20'),
(673, 'Spot.Shipment', 'script', '1.0.17', 'builder_table_create_spot_shipment_manifest.php', '2019-11-24 20:07:20'),
(674, 'Spot.Shipment', 'comment', '1.0.17', 'Created table spot_shipment_manifest', '2019-11-24 20:07:20'),
(675, 'Spot.Shipment', 'script', '1.0.18', 'builder_table_create_spot_shipment_fees.php', '2019-11-24 20:07:20'),
(676, 'Spot.Shipment', 'comment', '1.0.18', 'Created table spot_shipment_fees', '2019-11-24 20:07:20'),
(677, 'Spot.Shipment', 'script', '1.0.19', 'builder_table_create_spot_shipment_payment.php', '2019-11-24 20:07:20'),
(678, 'Spot.Shipment', 'comment', '1.0.19', 'Created table spot_shipment_payment', '2019-11-24 20:07:20'),
(679, 'Spot.Shipment', 'script', '1.0.20', 'builder_table_create_spot_shipment_treasury.php', '2019-11-24 20:07:20'),
(680, 'Spot.Shipment', 'comment', '1.0.20', 'Created table spot_shipment_treasury', '2019-11-24 20:07:20'),
(681, 'Spot.Shipment', 'script', '1.0.21', 'builder_table_create_spot_shipment_employee_order.php', '2019-11-24 20:07:20'),
(682, 'Spot.Shipment', 'comment', '1.0.21', 'Created table spot_shipment_employee_order', '2019-11-24 20:07:20'),
(683, 'Spot.Shipment', 'script', '1.0.22', 'builder_table_create_spot_shipment_notes.php', '2019-11-24 20:07:20'),
(684, 'Spot.Shipment', 'comment', '1.0.22', 'Created table spot_shipment_notes', '2019-11-24 20:07:20'),
(685, 'Spot.Shipment', 'script', '1.0.23', 'seed_all_tables.php', '2019-11-24 20:07:20'),
(711, 'OFFLINE.CORS', 'comment', '1.0.1', 'Initial release.', '2019-11-25 19:13:47'),
(712, 'OFFLINE.CORS', 'comment', '1.0.2', 'Fixed backend settings label (thanks to LukeTowers)', '2019-11-25 19:13:47'),
(713, 'OFFLINE.CORS', 'comment', '1.0.3', 'Added support for filesystem configuration file / Added plugin to Packagist (https://packagist.org/packages/offline/oc-cors-plugin)', '2019-11-25 19:13:47'),
(714, 'OFFLINE.CORS', 'comment', '1.0.4', 'Fixed minor bug when running the plugin without custom settings', '2019-11-25 19:13:47'),
(715, 'OFFLINE.Speedy', 'comment', '1.0.1', 'Initial version of Speedy', '2019-11-27 06:26:40'),
(716, 'OFFLINE.Speedy', 'comment', '1.0.2', 'Fixed compatibility issues with builds 420+', '2019-11-27 06:26:40'),
(717, 'OFFLINE.Speedy', 'comment', '1.0.3', 'Added russian translations (thanks to pavalx-ru)', '2019-11-27 06:26:40'),
(718, 'OFFLINE.Speedy', 'comment', '1.0.4', 'Added french translations (thanks to damsfx)', '2019-11-27 06:26:40'),
(719, 'OFFLINE.Speedy', 'comment', '1.0.5', 'Added pt-pt translations (thanks to João Costa)', '2019-11-27 06:26:40'),
(720, 'OFFLINE.Speedy', 'comment', '1.0.6', 'Switched to mod_deflate for gzip compression. Disable gzip compression in the Speedy settings and turn it back on to apply these changes to your installation.', '2019-11-27 06:26:40'),
(722, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2020-01-13 00:40:27'),
(723, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2020-01-13 00:40:27'),
(724, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2020-01-13 00:40:27'),
(725, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2020-01-13 00:40:27'),
(726, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2020-01-13 00:40:27'),
(727, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2020-01-13 00:40:27'),
(728, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2020-01-13 00:40:27'),
(729, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2020-01-13 00:40:27'),
(730, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2020-01-13 00:40:27'),
(731, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2020-01-13 00:40:27'),
(732, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2020-01-13 00:40:27');
INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(733, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2020-01-13 00:40:27'),
(734, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2020-01-13 00:40:27'),
(735, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2020-01-13 00:40:27'),
(736, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2020-01-13 00:40:27'),
(737, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2020-01-13 00:40:27'),
(738, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2020-01-13 00:40:27'),
(739, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2020-01-13 00:40:27'),
(740, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2020-01-13 00:40:27'),
(741, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2020-01-13 00:40:27'),
(742, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2020-01-13 00:40:27'),
(743, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2020-01-13 00:40:27'),
(744, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2020-01-13 00:40:27'),
(745, 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2020-01-13 00:40:27'),
(746, 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the \"Migration\" popup when saving changes in the database editor.', '2020-01-13 00:40:27'),
(747, 'RainLab.Builder', 'comment', '1.0.26', 'Allow special default values for columns and added new \"Add ID column\" button to database editor.', '2020-01-13 00:40:27'),
(748, 'Spot.Shipment', 'script', '1.0.24', 'builder_table_update_spot_shipment_activity.php', '2020-01-13 00:41:13'),
(749, 'Spot.Shipment', 'comment', '1.0.24', 'Updated table spot_shipment_activity', '2020-01-13 00:41:13'),
(750, 'Spot.Shipment', 'script', '1.0.25', 'builder_table_create_spot_shipment_tracking.php', '2020-01-13 00:46:11'),
(751, 'Spot.Shipment', 'comment', '1.0.25', 'Created table spot_shipment_tracking', '2020-01-13 00:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(2, 'RainLab.User', '1.5.0', '2019-11-24 19:38:39', 0, 0),
(3, 'Vdomah.JWTAuth', '1.0.7', '2019-11-24 19:38:50', 0, 0),
(4, 'RainLab.Notify', '1.0.2', '2019-11-24 19:38:58', 0, 0),
(5, 'Tiipiik.SmsSender', '1.0.4', '2019-11-24 19:39:11', 0, 0),
(6, 'RainLab.Location', '1.1.5', '2019-11-24 19:39:20', 0, 0),
(7, 'RainLab.UserPlus', '1.1.0', '2019-11-24 19:39:29', 0, 0),
(8, 'Vdomah.Roles', '1.2.5', '2019-11-24 19:39:38', 0, 0),
(9, 'RainLab.Translate', '1.6.2', '2019-11-24 19:39:47', 0, 0),
(10, 'RainLab.Pages', '1.3.1', '2019-11-24 19:40:05', 0, 0),
(11, 'PanaKour.Translate', '1.0.1', '2019-11-24 19:40:05', 0, 0),
(12, 'Mey.Breadcrumbs', '1.0.10', '2019-11-24 19:40:13', 0, 0),
(13, 'Responsiv.Currency', '1.0.4', '2019-11-24 19:40:22', 0, 0),
(14, 'Initbiz.Money', '1.0.8', '2019-11-24 19:40:32', 0, 0),
(15, 'Responsiv.Uploader', '1.0.1', '2019-11-24 19:40:40', 0, 0),
(16, 'Jacob.Logbook', '1.0.3', '2019-11-24 19:40:48', 0, 0),
(17, 'Excodus.TranslateExtended', '1.0.7', '2019-11-24 19:40:56', 0, 0),
(18, 'Responsiv.Pay', '1.1.1', '2019-11-24 19:41:11', 0, 0),
(19, 'Zainab.SimpleContact', '2.0.3', '2019-11-24 19:41:20', 0, 0),
(20, 'Spot.UserPermissions', '1.1.1', '2019-11-24 19:41:49', 0, 0),
(21, 'Spot.TwigExtensions', '1.2.5', '2019-11-24 19:41:55', 0, 0),
(23, 'PanaKour.Backup', '1.0.9', '2019-11-24 19:49:52', 0, 0),
(24, 'Kocholes.BarcodeGenerator', '1.0.2', '2019-11-24 19:50:02', 0, 0),
(30, 'Spot.Shipment', '1.0.25', '2020-01-13 00:46:11', 0, 0),
(34, 'OFFLINE.CORS', '1.0.4', '2019-11-25 19:13:47', 0, 0),
(35, 'OFFLINE.Speedy', '1.0.6', '2019-11-27 06:26:40', 0, 0),
(37, 'RainLab.Builder', '1.0.26', '2020-01-13 00:40:27', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'acme_demo_settings', '{\"language\":\"en\",\"timezone_offset\":\"+04:00\",\"dateformat\":\"d M, Y\",\"company\":{\"title\":\"Well Well\",\"charset\":\"utf-8\",\"description\":\"We ship anything\",\"keywords\":\"courier system,shipping management,cargo\",\"primary_email\":\"info@lrbinfotech.com\",\"tax_number\":\"123456789\",\"company_phone\":\"+971568169568\",\"company_phone_2\":\"+971568169568\",\"company_phone_3\":\"+971568169568\",\"facebook\":\"http:\\/\\/facebook.com\\/lrbinfotech\",\"twitter\":\"http:\\/\\/twitter.com\\/lrbinfotech\",\"instagram\":\"http:\\/\\/instagram.com\\/lrbinfotech\",\"address\":\"Hamdan Bin Mohammed Street - Abu Dhabi - United Arab Emirates\",\"lat\":\"24.4934196\",\"lng\":\"54.3685304\",\"county\":\"Abu Dhabi\",\"city\":\"Abu dhabi\",\"state\":\"Abu Dhabi\",\"postal_code\":\"105400\",\"country\":\"United Arab Emirates\"},\"tracking\":{\"prefix_order\":\"AWBWELL\",\"numbers_order\":\"5\",\"default_deliverytime\":\"1\",\"default_status\":\"1\",\"default_tracking_id\":\"3\"},\"taxes\":{\"percent\":\"5\",\"insurance\":\"1\"},\"notifications\":{\"live\":0,\"responsibility\":{\"new_shipments\":[1],\"update_shipment\":[1],\"approved_shipment\":[1],\"refused_shipment\":[1],\"postponed_shipment\":[1],\"transfered_shipment\":[1],\"assign_shipment\":[1],\"driver_received\":[1],\"discards_request\":[1],\"received\":[1],\"manifest_assigned\":[1],\"stock_saved\":[1],\"returned\":[1],\"delivered\":[1],\"return_discards\":[1]}},\"fees\":{\"delivery_cost\":\"30.00\",\"pickup_cost\":\"10.00\",\"delivery_cost_back_sender\":\"30.00\",\"delivery_cost_back_receiver\":\"40.00\"},\"invoice\":{\"terms\":\"ACCEPTED: This invoice complies with the requirements of article 774 of the commercial code modified by law 1231 of 2008 and therefore constitutes a security title. The person who signs declares to be duly authorized by the buyer to do so. The cancellation after the due date causes default interest at the current legal maximum rate.\",\"signing_company\":\"Company\",\"signing_customer\":\"Customer\"},\"google\":{\"map\":{\"key\":\"AIzaSyCanHknp355-rJzwBPbz1FZDWs9t9ym_lY\"},\"recaptcha\":{\"key\":\"6Ld1i7wUAAAAAF7slYbtMkjKa792itRVrLOuno7M\"}}}'),
(2, 'user_settings', '{\"require_activation\":\"1\",\"activate_mode\":\"auto\",\"use_throttle\":\"1\",\"block_persistence\":\"0\",\"allow_registration\":\"1\",\"login_attribute\":\"username\",\"remember_login\":\"ask\",\"min_password_length\":\"6\"}'),
(3, 'panakour_backup_settings', '{\"include_files\":[{\"path\":\"themes\"},{\"path\":\"plugins\"}],\"exclude_files\":[{\"path\":\"vendor\"},{\"path\":\"plugins\\/rainlab\"}],\"maximum_execution_time\":\"30\"}'),
(8, 'user_settings', '{\"require_activation\":\"1\",\"activate_mode\":\"auto\",\"use_throttle\":\"1\",\"block_persistence\":\"0\",\"allow_registration\":\"1\",\"login_attribute\":\"username\",\"remember_login\":\"ask\",\"min_password_length\":\"6\"}'),
(9, 'rluders_cors_settings', '{\"supportsCredentials\":\"0\",\"allowedOrigins\":\"*\",\"allowedHeaders\":\"Content-Type X-Requested-With\",\"allowedMethods\":\"*\",\"exposedHeaders\":null,\"maxAge\":\"0\"}'),
(10, 'offline_cors_settings', '{\"supportsCredentials\":\"0\",\"maxAge\":\"86400\",\"allowedOrigins\":[{\"value\":\"*\"}],\"allowedHeaders\":[{\"value\":\"*\"}],\"allowedMethods\":[{\"value\":\"*\"}],\"exposedHeaders\":[{\"value\":\"*\"}]}'),
(11, 'excodus_translateextended_settings', '{\"browser_language_detection\":\"0\",\"prefer_user_session\":\"0\",\"route_prefixing\":\"1\",\"homepage_redirect\":\"1\"}'),
(12, 'tiipiik_smssender_settings', '{\"enable\":\"0\",\"from\":\"01008112686\",\"gateway\":\"clickatell\",\"clickatell_api_id\":\"\"}'),
(13, 'offline_speedy_settings', '{\"enable_http2\":\"1\",\"enable_gzip\":\"1\",\"enable_caching\":\"1\",\"enable_domain_sharding\":\"0\",\"enable_domain_sharding_in_debug\":\"0\",\"domain_sharding_cdn\":\"http:\\/\\/cdn.yourwebsite.com\"}'),
(14, 'rainlab_builder_settings', '{\"author_name\":\"Spotlayer\",\"author_namespace\":\"spot\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tiipiik_smssender_message_histories`
--

CREATE TABLE `tiipiik_smssender_message_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_status` int(11) NOT NULL DEFAULT '0',
  `sess_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_addr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `manager` text COLLATE utf8mb4_unicode_ci,
  `places` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`, `username`, `surname`, `deleted_at`, `last_seen`, `is_guest`, `is_superuser`, `phone`, `company`, `street_addr`, `city`, `zip`, `state_id`, `country_id`, `mobile`, `role_id`, `city_id`, `area_id`, `manager`, `places`, `gender`, `driver`, `office`, `language`) VALUES
(1, 'Manager', 'support@spotlayer.com', '$2y$10$jQSJ1ExYUxa.JMUPkKWjce/Q5TBazH4hNzdcfqBiK5uX.Oarnd.XO', NULL, '$2y$10$oaUPWD6HjFB87GWGNt94bOTxxIBIXbdH1fNDz/XGkgOwA84GjR4VK', NULL, NULL, 1, '2019-11-24 07:42:01', '2021-01-06 19:44:27', '2019-11-24 07:42:01', '2021-01-06 19:44:27', 'admin', 'Courier Administration', NULL, '2021-01-06 19:45:45', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'prasanth s', 'prasanthats@gmail.com', '$2y$10$4ONoQgkj7cmULaJgTx7YdOQ7qwD8sg3POD39DT5NeAUEVkt2NFiBO', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-06 18:03:31', '2021-01-06 18:03:31', 'thowsif', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07010384622', 5, NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL),
(3, 'prasanth s', NULL, '$2y$10$/zszVjzS70aTOvkBAhaLre/elqmu4xdbC7EcpPhNZLQ7hJCNOgnra', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-06 18:05:00', '2021-01-06 18:05:00', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+17010384622', 5, NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL),
(4, 'thowsif', NULL, '$2y$10$cU9rrR/3RqGVUgxZenMcZuqSlIGgVYbvnIbdh03VCDEMiZUs09cIu', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-06 18:05:59', '2021-01-06 18:05:59', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+971568169568', 5, NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL),
(5, 'prasanth s', 'prasanth@gmail.com', '$2y$10$SgdCEm9lwRpGJf7eI7GV.OC.WCZYtHDfMDeKr6.QFx.W7Ywh2LWNy', NULL, NULL, NULL, NULL, 1, '2021-01-06 19:27:03', NULL, '2021-01-06 19:27:03', '2021-01-06 19:27:03', 'prasanthats', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '564189385', 5, NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL),
(6, 'testing thowsif', 'thowsif@lrbinfotech.com', '$2y$10$kx8TgS86mx04xYjC8rehEOL/ih5gN.1VOF.YEj48RHU4nqK.PhOeK', NULL, NULL, NULL, NULL, 1, '2021-01-06 19:30:14', '2021-01-06 19:38:46', '2021-01-06 19:30:14', '2021-01-06 19:40:11', 'info@lrbinfotech.com', NULL, NULL, '2021-01-06 19:38:49', 0, 0, '0567100733', NULL, 'Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Abu Dhabi', NULL, '105400', NULL, 253, '0567100733', 1, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL),
(7, 'prasanth s', 'prasanthats1@gmail.com', '$2y$10$kCQ1DQiFJN04vjZXpa6DyeVEmU3ZkIYb84cIJql59LE/nALvVx8ce', NULL, NULL, NULL, NULL, 1, '2021-01-06 19:41:05', '2021-01-06 19:41:05', '2021-01-06 19:41:05', '2021-01-06 19:41:36', 'prasanthats1', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_throttle`
--

INSERT INTO `user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '92.99.110.78', 0, NULL, 0, NULL, 0, NULL),
(3, 1, '192.168.0.173', 0, NULL, 0, NULL, 0, NULL),
(4, 6, '192.168.0.173', 0, NULL, 0, NULL, 0, NULL),
(5, 7, '::1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vdomah_roles_permissions`
--

CREATE TABLE `vdomah_roles_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vdomah_roles_roles`
--

CREATE TABLE `vdomah_roles_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vdomah_roles_roles`
--

INSERT INTO `vdomah_roles_roles` (`id`, `name`, `parent_id`, `code`) VALUES
(1, 'General Manager', NULL, 'administration'),
(2, 'Supervisor', 1, 'supervisor'),
(3, 'Department Manager', 2, 'department-manager'),
(4, 'Employee', 3, 'employee'),
(5, 'Client', NULL, 'client'),
(6, 'Branch Manager', 1, 'branch-manager');

-- --------------------------------------------------------

--
-- Table structure for table `zainab_simplecontact_contact`
--

CREATE TABLE `zainab_simplecontact_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jacob_logbook_logs`
--
ALTER TABLE `jacob_logbook_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jacob_logbook_logs_model_index` (`model`),
  ADD KEY `jacob_logbook_logs_model_key_index` (`model_key`),
  ADD KEY `jacob_logbook_logs_updated_at_index` (`updated_at`),
  ADD KEY `jacob_logbook_logs_backend_user_id_foreign` (`backend_user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainlab_location_countries`
--
ALTER TABLE `rainlab_location_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_location_countries_name_index` (`name`);

--
-- Indexes for table `rainlab_location_states`
--
ALTER TABLE `rainlab_location_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_location_states_country_id_index` (`country_id`),
  ADD KEY `rainlab_location_states_name_index` (`name`);

--
-- Indexes for table `rainlab_notify_notifications`
--
ALTER TABLE `rainlab_notify_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_notify_notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `rainlab_notify_notification_rules`
--
ALTER TABLE `rainlab_notify_notification_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_notify_notification_rules_code_index` (`code`);

--
-- Indexes for table `rainlab_notify_rule_actions`
--
ALTER TABLE `rainlab_notify_rule_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_notify_rule_actions_rule_host_id_index` (`rule_host_id`);

--
-- Indexes for table `rainlab_notify_rule_conditions`
--
ALTER TABLE `rainlab_notify_rule_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `host_rule_id_type` (`rule_host_id`,`rule_host_type`),
  ADD KEY `rainlab_notify_rule_conditions_rule_host_id_index` (`rule_host_id`),
  ADD KEY `rainlab_notify_rule_conditions_rule_parent_id_index` (`rule_parent_id`);

--
-- Indexes for table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_attributes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_attributes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_attributes_model_type_index` (`model_type`);

--
-- Indexes for table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_indexes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_indexes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_indexes_model_type_index` (`model_type`),
  ADD KEY `rainlab_translate_indexes_item_index` (`item`);

--
-- Indexes for table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_locales_code_index` (`code`),
  ADD KEY `rainlab_translate_locales_name_index` (`name`);

--
-- Indexes for table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_messages_code_index` (`code`(191));

--
-- Indexes for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Indexes for table `responsiv_currency_currencies`
--
ALTER TABLE `responsiv_currency_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsiv_currency_currencies_currency_code_index` (`currency_code`);

--
-- Indexes for table `responsiv_currency_exchange_converters`
--
ALTER TABLE `responsiv_currency_exchange_converters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsiv_currency_exchange_rates`
--
ALTER TABLE `responsiv_currency_exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_currency_to_currency` (`from_currency`,`to_currency`);

--
-- Indexes for table `responsiv_pay_invoices`
--
ALTER TABLE `responsiv_pay_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsiv_pay_invoices_template_id_index` (`template_id`),
  ADD KEY `responsiv_pay_invoices_user_id_index` (`user_id`),
  ADD KEY `responsiv_pay_invoices_state_id_index` (`state_id`),
  ADD KEY `responsiv_pay_invoices_country_id_index` (`country_id`),
  ADD KEY `responsiv_pay_invoices_payment_method_id_index` (`payment_method_id`),
  ADD KEY `responsiv_pay_invoices_status_id_index` (`status_id`),
  ADD KEY `responsiv_pay_invoices_hash_index` (`hash`),
  ADD KEY `responsiv_pay_invoices_related_id_index` (`related_id`),
  ADD KEY `responsiv_pay_invoices_related_type_index` (`related_type`);

--
-- Indexes for table `responsiv_pay_invoice_items`
--
ALTER TABLE `responsiv_pay_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsiv_pay_invoice_items_invoice_id_index` (`invoice_id`),
  ADD KEY `responsiv_pay_invoice_items_tax_class_id_index` (`tax_class_id`),
  ADD KEY `responsiv_pay_invoice_items_related_id_index` (`related_id`),
  ADD KEY `responsiv_pay_invoice_items_related_type_index` (`related_type`);

--
-- Indexes for table `responsiv_pay_invoice_logs`
--
ALTER TABLE `responsiv_pay_invoice_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsiv_pay_invoice_logs_invoice_id_index` (`invoice_id`),
  ADD KEY `responsiv_pay_invoice_logs_admin_id_index` (`admin_id`);

--
-- Indexes for table `responsiv_pay_invoice_statuses`
--
ALTER TABLE `responsiv_pay_invoice_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsiv_pay_invoice_statuses_code_index` (`code`),
  ADD KEY `responsiv_pay_invoice_statuses_notify_template_index` (`notify_template`);

--
-- Indexes for table `responsiv_pay_invoice_status_logs`
--
ALTER TABLE `responsiv_pay_invoice_status_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsiv_pay_invoice_status_logs_invoice_id_index` (`invoice_id`),
  ADD KEY `responsiv_pay_invoice_status_logs_status_id_index` (`status_id`),
  ADD KEY `responsiv_pay_invoice_status_logs_admin_id_index` (`admin_id`);

--
-- Indexes for table `responsiv_pay_invoice_templates`
--
ALTER TABLE `responsiv_pay_invoice_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsiv_pay_methods`
--
ALTER TABLE `responsiv_pay_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsiv_pay_methods_code_index` (`code`);

--
-- Indexes for table `responsiv_pay_methods_countries`
--
ALTER TABLE `responsiv_pay_methods_countries`
  ADD PRIMARY KEY (`payment_method_id`,`country_id`);

--
-- Indexes for table `responsiv_pay_taxes`
--
ALTER TABLE `responsiv_pay_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsiv_pay_user_profiles`
--
ALTER TABLE `responsiv_pay_user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsiv_pay_user_profiles_user_id_index` (`user_id`),
  ADD KEY `responsiv_pay_user_profiles_payment_method_id_index` (`payment_method_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `spot_shipment_activity`
--
ALTER TABLE `spot_shipment_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_address`
--
ALTER TABLE `spot_shipment_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_area`
--
ALTER TABLE `spot_shipment_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_car`
--
ALTER TABLE `spot_shipment_car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_category`
--
ALTER TABLE `spot_shipment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_city`
--
ALTER TABLE `spot_shipment_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_courier`
--
ALTER TABLE `spot_shipment_courier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_delivery_time`
--
ALTER TABLE `spot_shipment_delivery_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_employee_order`
--
ALTER TABLE `spot_shipment_employee_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_fees`
--
ALTER TABLE `spot_shipment_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_item`
--
ALTER TABLE `spot_shipment_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_manifest`
--
ALTER TABLE `spot_shipment_manifest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_mode`
--
ALTER TABLE `spot_shipment_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_notes`
--
ALTER TABLE `spot_shipment_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_office`
--
ALTER TABLE `spot_shipment_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_order`
--
ALTER TABLE `spot_shipment_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spot_shipment_order_barcode_unique` (`barcode`);

--
-- Indexes for table `spot_shipment_packaging`
--
ALTER TABLE `spot_shipment_packaging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_payment`
--
ALTER TABLE `spot_shipment_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_status`
--
ALTER TABLE `spot_shipment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_task`
--
ALTER TABLE `spot_shipment_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_tracking`
--
ALTER TABLE `spot_shipment_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_shipment_treasury`
--
ALTER TABLE `spot_shipment_treasury`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spot_userpermissions_group_permission`
--
ALTER TABLE `spot_userpermissions_group_permission`
  ADD PRIMARY KEY (`group_id`,`permission_id`);

--
-- Indexes for table `spot_userpermissions_permissions`
--
ALTER TABLE `spot_userpermissions_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spot_userpermissions_permissions_code_unique` (`code`);

--
-- Indexes for table `spot_userpermissions_user_permission`
--
ALTER TABLE `spot_userpermissions_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `tiipiik_smssender_message_histories`
--
ALTER TABLE `tiipiik_smssender_message_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`),
  ADD KEY `users_state_id_index` (`state_id`),
  ADD KEY `users_country_id_index` (`country_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Indexes for table `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `vdomah_roles_permissions`
--
ALTER TABLE `vdomah_roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vdomah_roles_roles`
--
ALTER TABLE `vdomah_roles_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zainab_simplecontact_contact`
--
ALTER TABLE `zainab_simplecontact_contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jacob_logbook_logs`
--
ALTER TABLE `jacob_logbook_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rainlab_location_countries`
--
ALTER TABLE `rainlab_location_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `rainlab_location_states`
--
ALTER TABLE `rainlab_location_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT for table `rainlab_notify_notification_rules`
--
ALTER TABLE `rainlab_notify_notification_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_notify_rule_actions`
--
ALTER TABLE `rainlab_notify_rule_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_notify_rule_conditions`
--
ALTER TABLE `rainlab_notify_rule_conditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1144;

--
-- AUTO_INCREMENT for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_currency_currencies`
--
ALTER TABLE `responsiv_currency_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `responsiv_currency_exchange_converters`
--
ALTER TABLE `responsiv_currency_exchange_converters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_currency_exchange_rates`
--
ALTER TABLE `responsiv_currency_exchange_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_pay_invoices`
--
ALTER TABLE `responsiv_pay_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_pay_invoice_items`
--
ALTER TABLE `responsiv_pay_invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_pay_invoice_logs`
--
ALTER TABLE `responsiv_pay_invoice_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_pay_invoice_statuses`
--
ALTER TABLE `responsiv_pay_invoice_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `responsiv_pay_invoice_status_logs`
--
ALTER TABLE `responsiv_pay_invoice_status_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_pay_invoice_templates`
--
ALTER TABLE `responsiv_pay_invoice_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `responsiv_pay_methods`
--
ALTER TABLE `responsiv_pay_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_pay_taxes`
--
ALTER TABLE `responsiv_pay_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsiv_pay_user_profiles`
--
ALTER TABLE `responsiv_pay_user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_activity`
--
ALTER TABLE `spot_shipment_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_address`
--
ALTER TABLE `spot_shipment_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spot_shipment_area`
--
ALTER TABLE `spot_shipment_area`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spot_shipment_car`
--
ALTER TABLE `spot_shipment_car`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_shipment_category`
--
ALTER TABLE `spot_shipment_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_shipment_city`
--
ALTER TABLE `spot_shipment_city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `spot_shipment_courier`
--
ALTER TABLE `spot_shipment_courier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_shipment_delivery_time`
--
ALTER TABLE `spot_shipment_delivery_time`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spot_shipment_employee_order`
--
ALTER TABLE `spot_shipment_employee_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_fees`
--
ALTER TABLE `spot_shipment_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spot_shipment_item`
--
ALTER TABLE `spot_shipment_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_manifest`
--
ALTER TABLE `spot_shipment_manifest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_mode`
--
ALTER TABLE `spot_shipment_mode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_shipment_notes`
--
ALTER TABLE `spot_shipment_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_office`
--
ALTER TABLE `spot_shipment_office`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_shipment_order`
--
ALTER TABLE `spot_shipment_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_shipment_packaging`
--
ALTER TABLE `spot_shipment_packaging`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spot_shipment_payment`
--
ALTER TABLE `spot_shipment_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_status`
--
ALTER TABLE `spot_shipment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `spot_shipment_task`
--
ALTER TABLE `spot_shipment_task`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_tracking`
--
ALTER TABLE `spot_shipment_tracking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spot_shipment_treasury`
--
ALTER TABLE `spot_shipment_treasury`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spot_userpermissions_permissions`
--
ALTER TABLE `spot_userpermissions_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tiipiik_smssender_message_histories`
--
ALTER TABLE `tiipiik_smssender_message_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vdomah_roles_permissions`
--
ALTER TABLE `vdomah_roles_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vdomah_roles_roles`
--
ALTER TABLE `vdomah_roles_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zainab_simplecontact_contact`
--
ALTER TABLE `zainab_simplecontact_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
