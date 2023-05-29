-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2023 at 10:03 PM
-- Server version: 10.3.34-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midspri2_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `routing` varchar(100) DEFAULT NULL,
  `balance` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `account_type`, `account_number`, `routing`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'USD', '4545656', '452435454', '350', 'active', '2022-11-20 01:31:06', '2023-01-08 16:33:21'),
(2, 2, 'GBP', '78997689', '5634635', '800', 'active', '2022-11-20 01:31:47', '2023-01-08 11:54:03'),
(3, 2, 'EUR', '65657777', '7755665', '400', 'active', '2022-11-20 01:32:09', '2022-12-21 16:20:51'),
(4, 11, 'USD', '414536334240', '452326899', '0', 'active', '2022-11-23 22:15:01', '2022-11-23 22:15:01'),
(5, 11, NULL, '180744635207', '987591961', '0', 'active', '2022-11-23 22:15:01', '2022-11-23 22:15:01'),
(6, 11, 'EUR', '412768261372', '421635502', '0', 'active', '2022-11-23 22:15:01', '2022-11-23 22:15:01'),
(7, 12, 'USD', '245319299563', '537733194', '0', 'active', '2022-11-23 22:18:29', '2022-11-23 22:18:29'),
(8, 12, 'GBP', '245319299563', '513757349', '0', 'active', '2022-11-23 22:18:29', '2022-11-24 11:29:04'),
(9, 12, 'EUR', '154255907902', '957003389', '0', 'active', '2022-11-23 22:18:29', '2022-11-23 22:18:29'),
(10, 13, 'USD', '573243350366', '827859992', '150', 'active', '2022-12-07 20:14:56', '2023-01-08 16:33:21'),
(11, 13, NULL, '573243350366', '516207402', '0', 'active', '2022-12-07 20:14:56', '2022-12-07 20:14:56'),
(12, 13, 'EUR', '408801437238', '531003445', '0', 'active', '2022-12-07 20:14:56', '2022-12-07 20:14:56'),
(13, 14, 'USD', '436978029460', '701326611', '0', 'active', '2022-12-07 20:21:28', '2022-12-07 20:21:28'),
(14, 14, NULL, '436978029460', '687057291', '0', 'active', '2022-12-07 20:21:28', '2022-12-07 20:21:28'),
(15, 14, 'EUR', '168234368186', '175342677', '0', 'active', '2022-12-07 20:21:28', '2022-12-07 20:21:28'),
(16, 15, 'USD', '292185193916', '633118041', '0', 'active', '2022-12-07 20:27:59', '2022-12-07 20:27:59'),
(17, 15, NULL, '292185193916', '486033710', '0', 'active', '2022-12-07 20:27:59', '2022-12-07 20:27:59'),
(18, 15, 'EUR', '357258660529', '488505674', '0', 'active', '2022-12-07 20:27:59', '2022-12-07 20:27:59'),
(19, 16, 'USD', '581014305921', '616635202', '49500', 'active', '2022-12-08 08:39:28', '2023-01-13 14:07:37'),
(20, 16, NULL, '581014305921', '386578624', '0', 'active', '2022-12-08 08:39:28', '2022-12-08 08:39:28'),
(21, 16, 'EUR', '426666678717', '528127671', '0', 'active', '2022-12-08 08:39:28', '2022-12-08 08:39:28'),
(22, 17, 'USD', '213095586793', '922558801', '0', 'active', '2022-12-09 17:38:27', '2022-12-09 17:38:27'),
(23, 17, 'GBP', '213095586793', '346009136', '0', 'active', '2022-12-09 17:38:27', '2022-12-18 23:02:00'),
(24, 17, 'EUR', '273600561869', '981164052', '0', 'active', '2022-12-09 17:38:27', '2022-12-09 17:38:27'),
(25, 18, 'USD', '987507588522', '670252083', '500', 'active', '2022-12-28 17:11:03', '2023-01-13 14:07:37'),
(26, 18, NULL, '987507588522', '479215291', '0', 'active', '2022-12-28 17:11:03', '2022-12-28 17:11:03'),
(27, 18, 'EUR', '857931583005', '911202185', '0', 'active', '2022-12-28 17:11:03', '2022-12-28 17:11:03'),
(28, 19, 'USD', '239527932977', '409995136', '0', 'active', '2022-12-29 22:47:26', '2022-12-29 22:47:26'),
(29, 19, NULL, '239527932977', '590628196', '0', 'active', '2022-12-29 22:47:26', '2022-12-29 22:47:26'),
(30, 19, 'EUR', '798303035367', '585402531', '0', 'active', '2022-12-29 22:47:26', '2022-12-29 22:47:26'),
(31, 20, 'USD', '663206672244', '296603322', '0', 'active', '2022-12-31 09:15:17', '2022-12-31 09:15:17'),
(32, 20, NULL, '663206672244', '244555860', '0', 'active', '2022-12-31 09:15:17', '2022-12-31 09:15:17'),
(33, 20, 'EUR', '881751420223', '922160464', '0', 'active', '2022-12-31 09:15:17', '2022-12-31 09:15:17'),
(34, 21, 'USD', '107343382181', '488011447', '0', 'active', '2023-01-19 11:47:12', '2023-01-19 11:47:12'),
(35, 21, NULL, '107343382181', '327210141', '0', 'active', '2023-01-19 11:47:12', '2023-01-19 11:47:12'),
(36, 21, 'EUR', '612978157554', '171965172', '0', 'active', '2023-01-19 11:47:12', '2023-01-19 11:47:12'),
(37, 22, 'USD', '446316027167', '156009502', '0', 'active', '2023-04-13 13:23:05', '2023-04-13 13:23:05'),
(38, 22, NULL, '446316027167', '366458150', '0', 'active', '2023-04-13 13:23:05', '2023-04-13 13:23:05'),
(39, 22, 'EUR', '453952296769', '900505931', '0', 'active', '2023-04-13 13:23:05', '2023-04-13 13:23:05'),
(40, 23, 'USD', '733670689404', '439419300', '0', 'active', '2023-05-24 03:15:09', '2023-05-24 03:15:09'),
(41, 23, NULL, '733670689404', '824991373', '0', 'active', '2023-05-24 03:15:09', '2023-05-24 03:15:09'),
(42, 23, 'EUR', '336828609141', '657654055', '0', 'active', '2023-05-24 03:15:09', '2023-05-24 03:15:09'),
(43, 24, 'USD', '936036187193', '822785936', '99992', 'active', '2023-05-24 03:34:24', '2023-05-26 03:10:48'),
(44, 24, NULL, '936036187193', '974876866', '0', 'active', '2023-05-24 03:34:24', '2023-05-24 03:34:24'),
(45, 24, 'EUR', '263875270695', '452645589', '149998', 'active', '2023-05-24 03:34:24', '2023-05-26 03:05:46'),
(46, 25, 'USD', '626451151799', '370860472', '6', 'active', '2023-05-26 02:25:59', '2023-05-26 03:10:48'),
(47, 25, NULL, '626451151799', '347213047', '0', 'active', '2023-05-26 02:25:59', '2023-05-26 02:25:59'),
(48, 25, 'EUR', '816361479825', '524994333', '2', 'active', '2023-05-26 02:25:59', '2023-05-26 03:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@admin.com', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', 'ROLE_SUPER_ADMIN', NULL, '2023-01-02 23:48:54'),
(2, 'mane', 'mane', 'adam20@hotmail.com', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', 'ROLE_SUPER_ADMIN', NULL, '2022-12-07 17:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `agent` varchar(20) NOT NULL,
  `total_refered` varchar(20) NOT NULL DEFAULT '0',
  `total_activated` varchar(20) DEFAULT '0',
  `earnings` varchar(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `agent`, `total_refered`, `total_activated`, `earnings`, `created_at`, `updated_at`) VALUES
(1, '172', '1', '2', '5500', '2018-05-02 16:52:11', '2018-06-08 13:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `trx` varchar(40) NOT NULL,
  `user` varchar(20) NOT NULL,
  `acoount_id` int(11) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `plan` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `trx`, `user`, `acoount_id`, `amount`, `payment_mode`, `plan`, `status`, `proof`, `created_at`, `updated_at`) VALUES
(1, '206527060827', '2', 3, '100', 'btc', NULL, 'confirmed', '', '2022-12-18 15:13:57', '2022-12-18 15:13:57'),
(2, '252884589903', '2', 3, '100', 'eth', NULL, 'confirmed', '', '2022-12-21 16:20:51', '2022-12-21 16:20:51'),
(3, '313379975837', '2', 2, '100', 'eth', NULL, 'confirmed', '', '2022-12-18 15:14:19', '2022-12-18 15:14:19'),
(4, '609355205502', '2', 1, '100', 'eth', NULL, 'pending', '', '2022-12-18 11:14:11', '2022-12-18 11:14:11'),
(5, '455380308456', '2', 2, '100', 'eth', NULL, 'pending', '', '2022-12-18 11:15:31', '2022-12-18 11:15:31'),
(6, '394568523534', '2', 1, '100', 'eth', NULL, 'pending', '', '2022-12-18 11:15:58', '2022-12-18 11:15:58'),
(7, '141079386566', '2', 1, '100', 'eth', NULL, 'pending', '', '2022-12-18 11:16:02', '2022-12-18 11:16:02'),
(8, '727821191836', '2', 1, '100', 'eth', NULL, 'pending', '', '2022-12-18 11:17:38', '2022-12-18 11:17:38'),
(9, '787846796973', '2', 1, '1,000', 'eth', NULL, 'pending', '', '2022-12-18 11:22:06', '2022-12-18 11:22:06'),
(10, '740580321714', '2', 1, '1,000', 'eth', NULL, 'pending', '', '2022-12-18 11:22:44', '2022-12-18 11:22:44'),
(11, '452191263220', '2', 1, '1,000', 'eth', NULL, 'pending', '', '2022-12-18 11:24:03', '2022-12-18 11:24:03'),
(12, '243746341652', '2', 2, '100', 'eth', NULL, 'pending', '', '2022-12-18 11:44:43', '2022-12-18 11:44:43'),
(13, '705655772917', '2', 1, '100', 'eth', NULL, 'pending', '', '2022-12-18 11:46:12', '2022-12-18 11:46:12'),
(14, '833768842052', '2', 1, '100', 'btc', NULL, 'pending', '', '2022-12-18 11:47:48', '2022-12-18 11:47:48'),
(15, '328607100059', '2', 1, '100', 'btc', NULL, 'pending', '', '2022-12-18 11:48:19', '2022-12-18 11:48:19'),
(16, '655937325554', '2', 1, '100', 'eth', NULL, 'pending', '', '2022-12-18 12:27:27', '2022-12-18 12:27:27'),
(17, '669771511525', '2', 1, '100', 'eth', NULL, 'pending', '', '2022-12-18 13:25:24', '2022-12-18 13:25:24'),
(18, '876866907032', '2', 1, '100', 'eth', NULL, 'pending', '', '2022-12-18 13:28:57', '2022-12-18 13:28:57'),
(19, '383479425548', '2', 1, '100', 'usdt', NULL, 'pending', '', '2022-12-18 14:46:03', '2022-12-18 14:46:03'),
(20, '453196035355', '2', 2, '100', 'eth', NULL, 'pending', '', '2022-12-18 23:41:10', '2022-12-18 23:41:10'),
(21, '749585866603', '2', 1, '50', 'eth', NULL, 'pending', '', '2022-12-18 23:42:22', '2022-12-18 23:42:22'),
(22, '784091334099', '2', 1, '50', 'eth', NULL, 'pending', '', '2022-12-18 23:43:51', '2022-12-18 23:43:51'),
(23, '848274965501', '2', 2, '100', 'btc', NULL, 'pending', '', '2022-12-21 16:22:39', '2022-12-21 16:22:39'),
(24, '430145993544', '16', 19, '5,000,000', 'btc', NULL, 'confirmed', '', '2022-12-28 16:52:21', '2022-12-28 16:52:21'),
(25, '158808057744', '16', 19, '50,000', 'btc', NULL, 'confirmed', '', '2022-12-28 16:55:11', '2022-12-28 16:55:11'),
(26, '353123060039', '20', 31, '50,000', 'btc', NULL, 'pending', '', '2022-12-31 09:19:31', '2022-12-31 09:19:31'),
(27, '832663107034', '24', 43, '100,000', 'btc', NULL, 'confirmed', '', '2023-05-24 05:12:19', '2023-05-24 05:12:19'),
(28, '284237632490', '2', 1, '2,000', 'btc', NULL, 'pending', '', '2023-05-25 17:39:43', '2023-05-25 17:39:43'),
(29, '693889370617', '24', 45, '150,000', 'btc', NULL, 'confirmed', '', '2023-05-26 02:51:09', '2023-05-26 02:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `loan` varchar(255) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `interest` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `approved` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `member` varchar(50) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `paid_from` varchar(50) NOT NULL,
  `paid_to` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `depo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `wthd` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key1` text COLLATE utf8_unicode_ci NOT NULL,
  `key2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Method Currency',
  `status` varchar(44) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `image`, `depo`, `wthd`, `key1`, `key2`, `currency`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PayPal', '59f809c931cb0.png', '2', '1.5', 'admin@rexbd.com', NULL, 'USD', 'active', NULL, '2017-12-27 01:45:00'),
(6, 'Skrill', 'skrill.png', '0.7', '1.50', 'paygrain@grain.skrill.com', 'welcome', 'USD', 'inactive', '2017-12-12 18:00:00', '2017-12-20 14:46:01'),
(8, 'VoguePay', 'vogue.jpg', '0.9', '1.3', '', NULL, 'USD', 'active', '2018-04-19 07:25:24', '2018-04-19 05:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `expected_return` varchar(20) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `increment_interval` varchar(20) NOT NULL,
  `increment_type` varchar(20) NOT NULL,
  `increment_amount` varchar(20) DEFAULT NULL,
  `expiration` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `expected_return`, `type`, `created_at`, `updated_at`, `increment_interval`, `increment_type`, `increment_amount`, `expiration`) VALUES
(1, 'Micro', '1000', '5000', 'Promo', '2018-04-24 21:25:37', '2018-05-18 13:26:21', '', '', NULL, ''),
(2, 'Basic', '5000', '15000', 'Promo', '2018-04-25 09:33:37', '2018-05-18 13:26:29', '', '', NULL, ''),
(7, 'Diamond', '50000', '7000', 'Main', '2018-05-16 10:40:27', '2018-06-08 19:31:50', 'Daily', 'Percentage', '10', 'One year'),
(9, 'Premium', '10000', '25000', 'Promo', '2018-05-18 13:20:51', '2018-05-18 13:26:41', '', '', NULL, ''),
(5, 'Basic', '1000', '3000', 'Main', '2018-04-25 15:02:29', '2018-06-08 19:31:21', 'Weekly', 'Percentage', '14', 'One week'),
(6, 'Silver', '10000', '4000', 'Main', '2018-04-28 12:58:40', '2018-06-08 19:31:32', 'Weekly', 'Fixed', '20', 'One month'),
(8, 'Gold', '100000', '12000', 'Promo', '2018-05-16 10:41:02', '2018-06-08 13:40:20', '', '', NULL, ''),
(10, 'Platinum', '50000', '150000', 'Promo', '2018-05-18 13:21:17', '2018-05-18 13:27:18', '', '', NULL, ''),
(11, 'Gold', '100000', '300000', 'Main', '2018-06-08 19:00:04', '2018-06-08 19:32:08', 'Monthly', 'Percentage', '30', 'One year');

-- --------------------------------------------------------

--
-- Table structure for table `predictions`
--

CREATE TABLE `predictions` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `trade_min` varchar(40) NOT NULL,
  `trade_max` varchar(40) NOT NULL,
  `trade_type` varchar(40) NOT NULL,
  `trade_method` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `eth_address` varchar(200) NOT NULL,
  `btc_address` varchar(200) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `site_title` varchar(100) NOT NULL,
  `site_address` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `trade_mode` varchar(20) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `referral_commission` varchar(20) DEFAULT NULL,
  `update` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `description`, `currency`, `bank_name`, `account_name`, `account_number`, `eth_address`, `btc_address`, `payment_mode`, `keywords`, `site_title`, `site_address`, `logo`, `trade_mode`, `contact_email`, `referral_commission`, `update`, `created_at`, `updated_at`) VALUES
(1, 'Online trade', 'online forex and cryptocurrencies Investment system', '$', '', '', '', 'njhjhkskhjgjsgashghghhgy73767efe63te653767776737', 'f655787gjgjsgashghghhgy73767efe63te653767776737', 'BTC', 'make money online, hyips', 'online forex and cryptocurrencies Investment system', 'sitename.com', 'loogo.png', 'on', 'rialekingsley@gmail.com', '20', 'Hello, we successfully launched', '2017-02-27 01:10:03', '2018-06-08 22:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `phone`, `created_at`, `updated_at`) VALUES
(1, '08169701672', '2017-04-05 11:28:33', '0000-00-00 00:00:00'),
(2, '07030626644', '2017-04-05 11:38:26', '0000-00-00 00:00:00'),
(3, '08037252468', '2017-04-06 01:28:19', '0000-00-00 00:00:00'),
(4, '08037252468', '2017-04-06 01:28:21', '0000-00-00 00:00:00'),
(5, '08037252468', '2017-04-06 01:28:59', '0000-00-00 00:00:00'),
(6, '08037252468', '2017-04-06 01:29:00', '0000-00-00 00:00:00'),
(7, '08130991778', '2017-04-13 07:02:10', '0000-00-00 00:00:00'),
(8, '08061155143', '2017-04-14 04:43:21', '0000-00-00 00:00:00'),
(9, '08037252468', '2017-04-14 08:22:00', '0000-00-00 00:00:00'),
(10, '9063559664', '2017-04-17 15:18:42', '0000-00-00 00:00:00'),
(11, '9063559664', '2017-04-17 15:18:55', '0000-00-00 00:00:00'),
(12, '08120284913', '2017-04-18 16:03:11', '0000-00-00 00:00:00'),
(13, '08038763462', '2017-04-19 02:33:51', '0000-00-00 00:00:00'),
(14, '07066745546', '2017-04-20 02:49:31', '0000-00-00 00:00:00'),
(15, '08124806609', '2017-04-21 05:12:05', '0000-00-00 00:00:00'),
(16, '08032688250', '2017-04-21 05:42:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `reply_to` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `gencode` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `passkey` varchar(40) DEFAULT NULL,
  `ip_address` varchar(40) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `nation` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `marry` varchar(100) DEFAULT NULL,
  `reg_state` varchar(40) NOT NULL,
  `reg_country` varchar(40) NOT NULL,
  `bank_name` varchar(25) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_no` varchar(50) DEFAULT NULL,
  `btc_address` varchar(255) DEFAULT NULL,
  `eth_address` varchar(255) DEFAULT NULL,
  `litecoin_address` varchar(200) DEFAULT NULL,
  `ripple_address` varchar(200) DEFAULT NULL,
  `plan` varchar(25) DEFAULT '0',
  `promo_plan` varchar(20) NOT NULL DEFAULT '0',
  `confirmed_plan` varchar(25) DEFAULT '0',
  `account_bal` varchar(20) NOT NULL DEFAULT '0',
  `ref_bonus` varchar(20) NOT NULL DEFAULT '0',
  `bonus_released` varchar(20) NOT NULL DEFAULT '0',
  `ref_by` varchar(20) DEFAULT NULL,
  `ref_link` varchar(100) DEFAULT NULL,
  `entered_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `idcard` varchar(400) DEFAULT NULL,
  `photoid` varchar(400) DEFAULT NULL,
  `transfer` varchar(120) NOT NULL DEFAULT 'active',
  `deposit` varchar(100) NOT NULL DEFAULT 'active',
  `status` varchar(25) DEFAULT 'blocked',
  `verification` varchar(40) DEFAULT NULL,
  `otpstatus` int(11) NOT NULL DEFAULT 0,
  `otp` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gencode`, `name`, `email`, `photo`, `password`, `passkey`, `ip_address`, `city`, `sex`, `nation`, `dob`, `salary`, `work`, `marry`, `reg_state`, `reg_country`, `bank_name`, `account_name`, `account_no`, `btc_address`, `eth_address`, `litecoin_address`, `ripple_address`, `plan`, `promo_plan`, `confirmed_plan`, `account_bal`, `ref_bonus`, `bonus_released`, `ref_by`, `ref_link`, `entered_at`, `activated_at`, `last_growth`, `idcard`, `photoid`, `transfer`, `deposit`, `status`, `verification`, `otpstatus`, `otp`, `type`, `created_at`, `updated_at`) VALUES
(2, 'UID8824830', 'Bamideele', 'oyewoletimmy@gmail.com', 'faq_man.png', '$2y$11$ICtXP4ujMi/L4Nq36MGpEu8up1eiXJSe9bQRZflWSSFCjwsZZptda', '11111', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'active', 'active', 'active', 1, 320212, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'UID1583312', 'Our Campaign', 'oyewoletimmy20@gmail.com', 'faq_man.png', '$2y$11$ZwWsOuEJZhndxB1B8.ou9esW09eDlot3NVP0tjuPMcVooi9W09AjK', '11111', '105.113.17.225', 'Luanda', 'female', 'Nigeria', NULL, '399,000', 'Civil', NULL, 'Naolr', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 'driver', NULL, 'active', 'active', 'active', 'active', 1, 964024, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'UID8774390', 'Felix Clark ', 'felixclark1237@gmail.com', 'faq_man.png', '$2y$11$istTToP7kseQYnK4nP8Zc.5VEOGHmzpN/3iMYHjc1AKPliEK2.4b.', 'ugochukwu', '197.210.78.88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'active', 'active', 'active', 1, 933400, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'UID5573113', 'Top Web', 'topwebbuilders1@gmail.com', 'faq_man.png', '$2y$11$EEi5.DSEVVAGcwmpdXRKvuQOmsrvsILoso/I/OgMeIu.FeLkLtl5i', '123456789', '197.210.84.101', 'Maitama', 'male', 'Nigeria', NULL, '300,000', 'tech', NULL, 'Abuja', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 'passport', NULL, 'active', 'active', 'active', 'active', 1, 874496, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'UID9824002', 'Laura Harris ', 'Lauraharris1240@gmail.com', 'faq_man.png', '$2y$11$6ZoGUIlmdyx7fEnBALySJ.cLH0l7cTNbkhi/P7mtevdW/IUgMQyeO', 'ugochukwu', '197.210.78.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'active', 'active', 'active', 1, 599771, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'UID1224127', 'David Moore', 'davidmoore1373@gmail.com', 'faq_man.png', '$2y$11$iBk85OgMX3olTNiGgAb2Su3F4filAD.Lu2frbbVXLgCOkXb9pOB2S', 'ugochukwu', '197.210.71.30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FCT', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'active', 'active', 'active', 1, 125853, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'UID6553833', 'Owo nikoko', 'oworested@gmail.com', 'faq_man.png', '$2y$11$gzPuer9ThtQBk1T3te6Mt.4sBq/3ZRpOWNm6GO9B.ImQiFdOJPba.', '1111111', '197.210.85.23', 'Iloko', 'female', 'Oman', NULL, '10,000,000', 'Sexual tin', NULL, 'Spi', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 'passport', NULL, 'active', 'active', 'active', 'active', 1, 314871, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'UID4005137', 'Dan dann', 'dann@gmail.com', 'faq_man.png', '$2y$11$j47WFHCUGF0C81VyICdsIuJj0i8bFeqMPAOa8jvx2IF/b4tYCAACC', 'qwertyui', '197.210.84.189', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lagos', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'active', 'active', 'active', 0, 468410, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'UID4155156', 'Gregorio Venn', 'gregoriovenn@gmail.com', 'faq_man.png', '$2y$11$b8AAzMoerrDJ8j2u7KRnk.AN8i4AdJMVTlfcs1uQJulQBSgo6RljS', 'Whitney081', '105.113.33.188', 'Diego Martin', 'male', 'United States', NULL, '28,000', 'Nurse', NULL, 'South American ', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, 'passport', NULL, 'active', 'active', 'active', 'active', 1, 329554, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'UID3294243', 'Fredrick Clark ', 'fredrickclark1975@gmail.com', 'faq_man.png', '$2y$11$klMBrbw7rDB6CuNFlvlm2um8Z/h9XKSqbEK/o2XetqvCJVn9PAmqG', 'Henrylisa225', '103.107.197.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Western Australia', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'active', 'active', 'active', 0, 996545, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'UID9654797', 'Fredrick Clark ', 'fredrickclark1349@gmail.com', 'faq_man.png', '$2y$11$HnVnXnngmM4Ew.CWMLe7yeNWa4g6INGTM.xALGddjTU9.lbFrT7B6', 'lisahen2251', '105.113.37.127', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enugu State', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'active', 'freeze', 'active', 1, 561023, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'UID9112963', 'Bruce Cheng ', 'brucecheng1734@gmail.com', 'faq_man.png', '$2y$11$BD6vYaIyvsnAD2zdq9z7Nu3yn4Rc40Lz4cbbBYpdKtp9eh4oOl5sO', 'ugochukwu', '105.113.34.98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abia State', 'Nigeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'active', 'active', 'active', 1, 593473, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `trx` varchar(40) NOT NULL,
  `user` int(11) NOT NULL,
  `acoount_id` int(11) DEFAULT NULL,
  `amount` varchar(40) NOT NULL,
  `bank` varchar(200) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `routing` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `gateway` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `trx`, `user`, `acoount_id`, `amount`, `bank`, `account_number`, `routing`, `type`, `description`, `gateway`, `status`, `created_date`, `updated_date`) VALUES
(1, '439019369596', 2, 1, '100', 'NBVBV', '21309558679', '', 'inter', 'mnbmn', 'GBP', 'pending', '2022-12-18 23:02:37', '2022-12-18 23:06:24'),
(2, '917228688249', 16, NULL, '5,000', 'Midspring Bank', '239527932977', '', 'dom', 'Allowance ', 'USD', 'pending', '2023-01-04 17:04:22', '2023-01-04 17:04:22'),
(3, '455608437159', 2, NULL, '100', 'Midspring Bank', '573243350366', '', 'dom', 'nmbm', 'USD', 'pending', '2023-01-08 12:12:37', '2023-01-08 12:12:37'),
(4, '385479328977', 2, NULL, '100', 'Midspring Bank', '573243350366', '', 'dom', 'nnn', 'USD', 'pending', '2023-01-08 16:18:17', '2023-01-08 16:18:17'),
(5, '601845629044', 2, NULL, '100', 'NBBNBNBN', '987987987896876', '7656757876', 'wire', 'mhh', 'USD', 'pending', '2023-01-08 16:19:20', '2023-01-08 16:19:20'),
(6, '391901332829', 2, NULL, '50', 'Midspring Bank', '573243350366', '', 'dom', 'mmmmm', 'USD', 'pending', '2023-01-08 16:33:21', '2023-01-08 16:33:21'),
(7, '910538668473', 16, NULL, '500', 'Midspring Bank', '987507588522', '', 'dom', 'Bill Payment ', 'USD', 'pending', '2023-01-13 14:07:37', '2023-01-13 14:07:37'),
(8, '762459330277', 24, NULL, '2,000', 'Midspring Bank', '626451151799', '', 'dom', 'Cable payment ', 'USD', 'pending', '2023-05-26 02:58:44', '2023-05-26 02:58:44'),
(9, '635186053200', 24, NULL, '2,000', 'Midspring Bank', '626451151799', '', 'dom', 'Nursing home ', 'USD', 'pending', '2023-05-26 03:00:43', '2023-05-26 03:00:43'),
(10, '964282377384', 24, NULL, '2,000', 'Fidelity ', '6173056285', '', 'inter', 'Test ', 'USD', 'pending', '2023-05-26 03:03:39', '2023-05-26 03:03:39'),
(11, '486672481383', 24, NULL, '2,000', 'Midspring Bank', '816361479825', '', 'dom', '', 'EUR', 'pending', '2023-05-26 03:05:46', '2023-05-26 03:05:46'),
(12, '464532659707', 24, NULL, '2,000', 'Midspring Bank', '626451151799', '', 'dom', '', 'USD', 'pending', '2023-05-26 03:10:48', '2023-05-26 03:10:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `predictions`
--
ALTER TABLE `predictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `predictions`
--
ALTER TABLE `predictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
