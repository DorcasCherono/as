-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2016 at 11:47 AM
-- Server version: 5.5.52-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lixnetco_xarademo`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` double NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` double(15,2) DEFAULT '0.00',
  `active` tinyint(1) NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `category`, `code`, `name`, `account_group`, `balance`, `active`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'INCOME', 2001, 'bank', '', 90000.00, 1, 1, '2016-07-27 07:50:42', '2016-07-27 07:50:42'),
(2, 'INCOME', 2002, 'mpesa', '', 115620.00, 1, 1, '2016-07-27 07:52:52', '2016-07-27 07:52:52'),
(3, 'ASSET', 1001, 'Emergency Loan Account', '', 3000.00, 1, 1, '2016-07-27 09:20:23', '2016-07-27 09:20:23'),
(4, 'ASSET', 1002, 'Emergency Portfolio Account', '', 0.00, 1, 1, '2016-07-27 09:21:14', '2016-07-27 09:21:14'),
(5, 'INCOME', 2003, 'Emergency Interest Account', '', 2000.00, 1, 1, '2016-07-27 09:27:21', '2016-07-27 09:27:21'),
(6, 'INCOME', 2004, 'Emergency Fees  Account', '', 2000.00, 1, 1, '2016-07-27 09:30:51', '2016-07-27 09:30:51'),
(7, 'INCOME', 2005, 'Emergency Penalties Account', '', 1000.00, 1, 1, '2016-07-27 09:32:09', '2016-07-27 09:32:09'),
(8, 'EXPENSE', 3001, 'Loan losses written off Account', '', 600.00, 1, 1, '2016-07-27 09:33:22', '2016-07-27 09:33:22'),
(9, 'LIABILITY', 5001, 'Loan Over Payment', '', 500.00, 1, 1, '2016-07-27 09:34:07', '2016-07-27 09:34:07'),
(10, 'ASSET', 1004, 'Savings cash account', '', 8000.00, 1, 1, '2016-07-27 09:56:53', '2016-07-27 09:56:53'),
(11, 'LIABILITY', 5003, 'Savings control Account', '', 900.00, 1, 1, '2016-07-27 09:57:36', '2016-07-27 09:57:36'),
(12, 'INCOME', 2006, 'Savings fees income account', '', 0.00, 1, 1, '2016-07-27 09:58:15', '2016-07-27 09:58:15'),
(13, 'EXPENSE', 3002, 'Expense Account', '', 10000.00, 1, 1, '2016-08-09 09:58:06', '2016-08-09 09:58:06'),
(14, 'EXPENSE', 3001, 'Expense Account', '', 8000.00, 1, 8, '2016-08-09 09:59:49', '2016-08-09 09:59:49'),
(15, 'INCOME', 2001, 'bank', '', 40000.00, 1, 8, '2016-08-09 10:00:35', '2016-08-09 10:00:35'),
(16, 'ASSET', 1001, 'loan cash account', '', 0.00, 1, 8, '2016-08-11 09:13:46', '2016-08-11 09:13:46'),
(17, 'LIABILITY', 5001, 'Advances', '', 0.00, 1, 11, '2016-09-19 09:09:13', '2016-09-19 09:09:13'),
(18, 'LIABILITY', 5002, 'Salaries', '', 0.00, 1, 11, '2016-09-19 09:11:53', '2016-09-19 09:11:53'),
(19, 'EXPENSE', 3001, 'Expenditures', '', -17500.00, 1, 11, '2016-09-20 05:59:29', '2016-09-20 05:59:29'),
(20, 'ASSET', 1001, 'Mpesa', '', 1000000.00, 1, 11, '2016-09-20 06:48:51', '2016-09-20 06:48:51'),
(21, 'ASSET', 1002, 'Bank', '', 5000000.00, 1, 11, '2016-09-20 06:49:15', '2016-09-20 06:49:15'),
(22, 'ASSET', 1003, 'Cash', '', 0.00, 1, 11, '2016-09-20 09:18:17', '2016-09-20 09:18:17'),
(23, 'INCOME', 2001, 'Loan Interest Account', '', 0.00, 1, 11, '2016-09-20 09:19:37', '2016-09-20 09:26:22'),
(24, 'ASSET', 1004, 'Portfolio Account', '', 0.00, 1, 11, '2016-09-20 09:25:19', '2016-09-20 09:25:19'),
(25, 'INCOME', 2002, 'Loan Fees Account', '', 0.00, 1, 11, '2016-09-20 09:26:03', '2016-09-20 09:26:03'),
(26, 'INCOME', 2003, 'Loan Penalty Account', '', 0.00, 1, 11, '2016-09-20 09:27:23', '2016-09-20 09:27:23'),
(27, 'EXPENSE', 3002, 'Losses Written Off', '', 0.00, 1, 11, '2016-09-20 09:28:34', '2016-09-20 09:28:34'),
(28, 'LIABILITY', 5003, 'Loan Over Payments', '', 0.00, 1, 11, '2016-09-20 09:29:08', '2016-09-20 09:30:08'),
(29, 'LIABILITY', 5005, 'Savings', '', 0.00, 1, 11, '2016-09-20 09:57:24', '2016-09-20 09:57:24'),
(30, 'INCOME', 2006, 'Saving Fees Income', '', 0.00, 1, 11, '2016-09-20 09:58:09', '2016-09-20 09:58:55'),
(31, 'ASSET', 1005, 'Purchase', '', 0.00, 1, 11, '2016-09-21 07:59:09', '2016-09-21 07:59:29'),
(32, 'LIABILITY', 5004, 'Payable', '', 0.00, 1, 11, '2016-09-21 08:00:13', '2016-09-21 08:00:13'),
(33, 'INCOME', 2004, 'Sales Revenue', '', 0.00, 1, 11, '2016-09-21 08:39:00', '2016-09-21 08:39:00'),
(34, 'ASSET', 1008, 'Payment Receivable', '', 0.00, 1, 11, '2016-09-21 10:16:31', '2016-09-21 10:16:31'),
(35, 'INCOME', 2001, 'mpesa', '', 0.00, 1, 12, '2016-10-06 06:23:40', '2016-10-06 06:23:40'),
(36, 'INCOME', 2002, 'Cash', '', 0.00, 1, 12, '2016-10-06 06:24:04', '2016-10-06 06:24:04'),
(37, 'INCOME', 2003, 'bank', '', 80000.00, 1, 12, '2016-10-06 06:24:37', '2016-10-06 06:24:37'),
(38, 'ASSET', 1001, 'cash Account', '', 0.00, 1, 12, '2016-10-06 06:27:11', '2016-10-06 06:27:11'),
(39, 'EXPENSE', 3001, 'Expense Account', '', 6000.00, 1, 12, '2016-10-06 06:27:47', '2016-10-06 06:27:47'),
(40, 'ASSET', 1002, 'portfolio Account', '', 0.00, 1, 12, '2016-10-06 07:24:17', '2016-10-06 07:24:17'),
(41, 'INCOME', 2004, 'interest Acc', '', 0.00, 1, 12, '2016-10-06 07:25:19', '2016-10-06 07:25:19'),
(42, 'INCOME', 2005, 'Fees Acc', '', 0.00, 1, 12, '2016-10-06 07:27:09', '2016-10-06 07:27:09'),
(43, 'INCOME', 2006, 'Penalties Acc', '', 0.00, 1, 12, '2016-10-06 07:27:46', '2016-10-06 07:27:46'),
(44, 'EXPENSE', 3002, 'Losses Written Off', '', 0.00, 1, 12, '2016-10-06 07:29:56', '2016-10-06 07:29:56'),
(45, 'LIABILITY', 5001, 'Loan Over Payment', '', 0.00, 1, 12, '2016-10-06 07:30:32', '2016-10-06 07:30:32'),
(46, 'ASSET', 1001, 'Cash Account', '', 1000000.00, 1, 17, '2016-10-19 12:53:34', '2016-10-19 12:53:34'),
(47, 'ASSET', 1002, 'Emergency Loan Account', '', 0.00, 1, 17, '2016-10-19 12:54:22', '2016-10-19 12:54:22'),
(48, 'INCOME', 2001, 'Emergency Loan Interest Account', '', 0.00, 1, 17, '2016-10-19 12:55:36', '2016-10-19 12:55:36'),
(49, 'INCOME', 2002, 'Emergency Loan Penalty Account', '', 0.00, 1, 17, '2016-10-19 12:56:00', '2016-10-19 12:56:00'),
(50, 'INCOME', 2003, 'Emergency Loan Fees Account', '', 0.00, 1, 17, '2016-10-19 12:56:36', '2016-10-19 12:56:36'),
(51, 'INCOME', 2005, 'Member Savings Fees Account', '', 0.00, 1, 17, '2016-10-19 12:57:05', '2016-10-19 12:57:05'),
(52, 'EXPENSE', 3001, 'Emergency Loan Written Off Account', '', 0.00, 1, 17, '2016-10-19 12:58:58', '2016-10-19 12:58:58'),
(53, 'LIABILITY', 5001, 'Emergency Loan Overpayment Account', '', 0.00, 1, 17, '2016-10-19 12:59:32', '2016-10-19 12:59:32'),
(54, 'LIABILITY', 5005, 'Emergency Loan Offset Account', '', 0.00, 1, 17, '2016-10-19 13:00:19', '2016-10-19 13:00:19'),
(55, 'LIABILITY', 5006, 'Member Savings Account', '', 0.00, 1, 17, '2016-10-19 13:01:01', '2016-10-19 13:01:01'),
(56, 'ASSET', 0, 'Imarisha Loan', '', 0.00, 1, 23, '2016-10-28 03:29:10', '2016-10-28 03:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE IF NOT EXISTS `allowances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allowance_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `allowances_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `allowances`
--

INSERT INTO `allowances` (`id`, `allowance_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'House Allowance', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(2, 'Transport Allowance', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `appraisalcategories`
--

CREATE TABLE IF NOT EXISTS `appraisalcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `rate` int(11) DEFAULT '10',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `appraisalcategories_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `appraisalcategories`
--

INSERT INTO `appraisalcategories` (`id`, `name`, `organization_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'Attendance and Punctuality', NULL, 10, '2016-07-27 06:03:33', '2016-07-27 06:03:33'),
(2, 'Communication', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(3, 'Dependability', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(4, 'Individual Effectiveness', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(5, 'Initiative', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(6, 'Job Knowledge', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(7, 'Judgement and Decision Making', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(8, 'Ongoing Skill Improvement', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(9, 'Quality of Work', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(10, 'Safe Work Practise', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(11, 'Service Focus', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(12, 'Team Building', NULL, 10, '2016-07-27 06:03:34', '2016-07-27 06:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `appraisalquestions`
--

CREATE TABLE IF NOT EXISTS `appraisalquestions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `appraisalcategory_id` int(10) unsigned NOT NULL,
  `rate` int(11) DEFAULT '10',
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `appraisalquestions_appraisalcategory_id_foreign` (`appraisalcategory_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `appraisalquestions`
--

INSERT INTO `appraisalquestions` (`id`, `question`, `appraisalcategory_id`, `rate`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'How ofetn does he come to the office?', 1, 20, 1, '2016-07-28 11:44:47', '2016-07-28 11:44:47'),
(2, 'how quality is it?', 9, 20, 8, '2016-08-10 12:32:11', '2016-08-10 12:32:11'),
(3, 'When does he/she get to work', 1, 10, 11, '2016-09-19 11:41:34', '2016-09-19 11:41:34'),
(4, 'how good is she?', 2, 20, 12, '2016-10-07 12:17:39', '2016-10-07 12:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE IF NOT EXISTS `appraisals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `appraisalquestion_id` int(10) unsigned NOT NULL,
  `performance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL DEFAULT '0',
  `examiner` int(10) unsigned NOT NULL,
  `appraisaldate` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `appraisals_employee_id_foreign` (`employee_id`),
  KEY `appraisals_appraisalquestion_id_foreign` (`appraisalquestion_id`),
  KEY `appraisals_examiner_foreign` (`examiner`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `appraisals`
--

INSERT INTO `appraisals` (`id`, `employee_id`, `appraisalquestion_id`, `performance`, `rate`, `examiner`, `appraisaldate`, `comment`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Needs Improvements', 10, 1, '2016-07-28', '', NULL, '2016-07-28 08:45:16', '2016-07-28 08:45:16'),
(2, 6, 2, 'Meets Expectations', 20, 8, '2016-08-10', '', 8, '2016-08-10 09:32:31', '2016-08-10 09:32:31'),
(3, 9, 3, 'Outstanding', 8, 14, '2016-09-19', '', 11, '2016-09-19 08:41:44', '2016-09-19 08:41:44'),
(4, 10, 4, 'Outstanding', 19, 23, '2016-10-07', '', 12, '2016-10-07 09:17:59', '2016-10-07 09:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE IF NOT EXISTS `assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_foreign` (`user_id`),
  KEY `assigned_roles_role_id_foreign` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(3, 6, 6),
(4, 7, 7),
(5, 8, 8),
(6, 14, 9),
(7, 22, 10),
(8, 23, 12),
(9, 24, 13),
(10, 25, 14),
(11, 26, 15),
(12, 27, 16),
(13, 28, 17),
(14, 32, 18),
(15, 33, 19),
(16, 34, 20),
(17, 35, 21);

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE IF NOT EXISTS `audits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float(10,0) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `date`, `user`, `action`, `entity`, `amount`, `description`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:14:54', '2016-11-02 05:14:54'),
(2, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:28:44', '2016-11-02 05:28:44'),
(3, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:29:54', '2016-11-02 05:29:54'),
(4, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:31:57', '2016-11-02 05:31:57'),
(5, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:32:33', '2016-11-02 05:32:33'),
(6, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:33:18', '2016-11-02 05:33:18'),
(7, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:34:01', '2016-11-02 05:34:01'),
(8, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:34:52', '2016-11-02 05:34:52'),
(9, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:35:21', '2016-11-02 05:35:21'),
(10, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:35:54', '2016-11-02 05:35:54'),
(11, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:36:31', '2016-11-02 05:36:31'),
(12, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:37:24', '2016-11-02 05:37:24'),
(13, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:37:44', '2016-11-02 05:37:44'),
(14, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:38:34', '2016-11-02 05:38:34'),
(15, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:39:38', '2016-11-02 05:39:38'),
(16, '2016-11-02', 'superadmin', 'view', 'Employees', NULL, 'viewed employee list', 1, '2016-11-02 05:41:49', '2016-11-02 05:41:49'),
(17, '2016-11-02', 'superadmin', 'view', 'Appraisals', NULL, 'viewed appraisals', 1, '2016-11-02 05:42:07', '2016-11-02 05:42:07'),
(18, '2016-11-04', 'Kov', 'view', 'Budgets', NULL, 'viewed budgets', 15, '2016-11-04 07:27:14', '2016-11-04 07:27:14'),
(19, '2016-11-04', 'Kov', 'view', 'Budgets', NULL, 'viewed budgets', 15, '2016-11-04 11:24:52', '2016-11-04 11:24:52'),
(20, '2016-11-04', 'Kov', 'view', 'Earnings', NULL, 'viewed earnings', 15, '2016-11-04 11:34:58', '2016-11-04 11:34:58'),
(21, '2016-11-04', 'Kov', 'view', 'Budgets', NULL, 'viewed budgets', 15, '2016-11-04 12:41:06', '2016-11-04 12:41:06'),
(22, '2016-11-07', 'steviemwa', 'view', 'Budgets', NULL, 'viewed budgets', 16, '2016-11-07 03:33:45', '2016-11-07 03:33:45'),
(23, '2016-11-07', 'cris', 'view', 'Budgets', NULL, 'viewed budgets', 17, '2016-11-07 03:35:31', '2016-11-07 03:35:31'),
(24, '2016-11-07', 'steviemwa', 'view', 'Budgets', NULL, 'viewed budgets', 16, '2016-11-07 03:37:50', '2016-11-07 03:37:50'),
(25, '2016-11-07', 'steviemwa', 'view', 'Budgets', NULL, 'viewed budgets', 16, '2016-11-07 03:39:11', '2016-11-07 03:39:11'),
(26, '2016-11-07', 'steviemwa', 'view', 'Budgets', NULL, 'viewed budgets', 16, '2016-11-07 03:43:36', '2016-11-07 03:43:36'),
(27, '2016-11-07', 'ken', 'view', 'Budgets', NULL, 'viewed budgets', 12, '2016-11-07 05:46:30', '2016-11-07 05:46:30'),
(28, '2016-11-07', 'ken', 'create', 'Budgets', NULL, 'created:  for Nov-2016', 12, '2016-11-07 05:46:55', '2016-11-07 05:46:55'),
(29, '2016-11-07', 'ken', 'view', 'Budgets', NULL, 'viewed budgets', 12, '2016-11-07 05:46:56', '2016-11-07 05:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `autoprocesses`
--

CREATE TABLE IF NOT EXISTS `autoprocesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_code` int(11) NOT NULL DEFAULT '0',
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `banks_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_name`, `bank_code`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'AFRICAN BANKING CORPORATION', 35, NULL, '2016-07-28 06:24:34', '2016-07-28 06:24:34'),
(2, 'BANK OF AFRICA (K) LTD. ', 19, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(3, 'BANK OF BARODA (K) LTD. ', 6, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(4, 'BANK OF INDIA', 5, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(5, 'BARCLAYS BANK OF (K) LTD. ', 3, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(6, 'CENTRAL BANK OF KENYA', 9, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(7, 'CFCSTANBIC BANK KENYA LTD. ', 31, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(8, 'CHASE BANK LTD. ', 30, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(9, 'CITIBANK', 16, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(10, 'COMMERCIAL BANK OF AFRICA LTD. ', 7, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(11, 'CONSOLIDATED BANK OF (K) LTD. ', 23, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(12, 'CO-OP BANK OF (K) LTD. ', 11, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(13, 'CREDIT BANK LTD. ', 25, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(14, 'DEVELOPMENT BANK (K) LTD. ', 59, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(15, 'DIAMOND TRUST BANK LTD. ', 63, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(16, 'DUBAI BANK LTD. ', 20, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(17, 'ECOBANK LTD. ', 43, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(18, 'EQUATORAL COMMERCIAL BANK LTD. ', 49, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(19, 'EQUITY BANK LTD. ', 68, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(20, 'FAMILY BANK LTD. ', 70, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(21, 'FAULU KENYA', 0, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(22, 'FINA BANK LTD. ', 0, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(23, 'FIRST COMMUNITY BANK LTD. ', 74, NULL, '2016-07-28 06:24:35', '2016-07-28 06:24:35'),
(24, 'GIRO COMMERCIAL BANK LTD. ', 42, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(25, 'GUARDIAN BANK LTD. ', 55, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(26, 'GUARANTY TRUST BANK (KENYA) LTD.', 53, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(27, 'GULF AFRICAN BANK', 72, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(28, 'HABIB BANK A.G. ZURICH', 17, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(29, 'HABIB BANK LTD. ', 8, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(30, 'HOUSING FINANCE. ', 61, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(31, 'I&M BANK LTD. ', 57, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(32, 'IMPERIAL BANK LTD. ', 39, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(33, 'JAMII BORA BANK LTD. ', 51, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(34, 'KENYA COMMERCIALIAL BANK LTD. ', 1, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(35, 'KENYA WOMEN MICROFINANCE BANK LTD.', 0, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(36, 'K-REP BANK LTD. ', 66, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(37, 'MIDDLE EAST BANK (K) LTD. ', 18, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(38, 'NATIONAL BANK  ', 12, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(39, 'NIC BANK LTD. ', 41, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(40, 'ORIENTAL COMMERCIAL BANK LTD. ', 14, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(41, 'PARAMAOUNT UNIVERSAL BANK LTD. ', 50, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(42, 'PRIME BANK LTD. ', 10, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(43, 'POST BANK.', 0, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(44, 'STANDARD CHARTERED BANK (K) LTD. ', 2, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(45, 'TRANS-NATIONAL BANK LTD. ', 26, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(46, 'UBA BANK', 76, NULL, '2016-07-28 06:24:36', '2016-07-28 06:24:36'),
(47, 'VICTORIA COMMERCIAL BANK LTD. ', 54, NULL, '2016-07-28 06:24:37', '2016-07-28 06:24:37'),
(48, ' FIDELITY COMMERCIAL BANK ', 60, NULL, '2016-07-28 06:24:37', '2016-07-28 06:24:37'),
(49, ' CHARTERHOUSE BANK LTD ', 64, NULL, '2016-07-28 06:24:37', '2016-07-28 06:24:37'),
(50, 'Equity', 0, NULL, '2016-08-10 11:30:40', '2016-08-10 11:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `bank_branches`
--

CREATE TABLE IF NOT EXISTS `bank_branches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_id` int(10) unsigned NOT NULL DEFAULT '0',
  `organization_id` int(10) unsigned DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `bank_branches_bank_id_foreign` (`bank_id`),
  KEY `bank_branches_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2939 ;

--
-- Dumping data for table `bank_branches`
--

INSERT INTO `bank_branches` (`id`, `branch_code`, `bank_branch_name`, `bank_id`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, '23', 'Valley Arcade', 17, NULL, '2016-03-31 03:33:52', '2016-03-31 03:33:52'),
(2, '24', 'Karen', 17, NULL, '2016-03-31 03:33:52', '2016-03-31 03:33:52'),
(3, '25', 'Nyali Mombasa', 17, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(4, '26', 'Ongata Rongai', 17, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(5, '27', 'Embakasi', 17, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(6, '28', 'Kitengela', 17, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(7, '29', 'Thika Mall', 17, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(8, '100', 'Head Office ', 17, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(9, '0', 'Nairobi ', 18, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(10, '1', 'Nyerere ', 18, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(11, '2', 'Mombasa ', 18, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(12, '3', 'Westlands ', 18, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(13, '4', 'Mombasa Road ', 18, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(14, '5', 'Chester ', 18, NULL, '2016-03-31 03:33:53', '2016-03-31 03:33:53'),
(15, '7', 'Waiyaki Way ', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(16, '8', 'Kakamega ', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(17, '9', 'Eldoret ', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(18, '10', 'Senator Cards', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(19, '11', 'Nyali ', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(20, '12', 'Kisumu ', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(21, '13', 'Industrial Area ', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(22, '15', 'Nakuru', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(23, '16', 'Ongata Rongai', 18, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(24, '0', 'Equity Bank Head Office ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(25, '1', 'Equity Bank Corporate ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(26, '2', 'Equity Bank Fourways ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(27, '3', 'Kangema ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(28, '4', 'Karatina ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(29, '5', 'Kiriaini ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(30, '6', 'Murarandia ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(31, '7', 'Kangari ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(32, '8', 'Othaya ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(33, '9', 'Thika / Equity Plaza ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(34, '10', 'Kerugoya ', 19, NULL, '2016-03-31 03:33:54', '2016-03-31 03:33:54'),
(35, '11', 'Nyeri ', 19, NULL, '2016-03-31 03:33:55', '2016-03-31 03:33:55'),
(36, '12', 'Tom Mboya ', 19, NULL, '2016-03-31 03:33:55', '2016-03-31 03:33:55'),
(37, '13', 'Nakuru ', 19, NULL, '2016-03-31 03:33:55', '2016-03-31 03:33:55'),
(38, '14', 'Meru ', 19, NULL, '2016-03-31 03:33:56', '2016-03-31 03:33:56'),
(39, '15', 'Mama Ngina ', 19, NULL, '2016-03-31 03:33:56', '2016-03-31 03:33:56'),
(40, '16', 'Nyahururu ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(41, '17', 'Community ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(42, '18', 'Community Corporate ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(43, '19', 'Embu ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(44, '20', 'Naivasha ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(45, '21', 'Chuka ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(46, '22', 'Muranga ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(47, '23', 'Molo ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(48, '24', 'Harambee Avenu ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(49, '25', 'Mombasa ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(50, '26', 'Kimathi Street ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(51, '27', 'Nanyuki ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(52, '28', 'Kericho ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(53, '29', 'Kisumu ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(54, '30', 'Eldoret ', 19, NULL, '2016-03-31 03:33:57', '2016-03-31 03:33:57'),
(55, '31', 'Nakuru Kenyatta Avenue ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(56, '32', 'Kariobangi ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(57, '33', 'Kitale ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(58, '34', 'Thika Kenyatta Avenue ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(59, '35', 'Knut House ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(60, '36', 'Narok ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(61, '37', 'Nkubu ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(62, '38', 'Mwea ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(63, '39', 'Matuu ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(64, '40', 'Maua ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(65, '41', 'Isiolo ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(66, '42', 'Kagio ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(67, '43', 'Gikomba ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(68, '44', 'Ukunda ', 19, NULL, '2016-03-31 03:33:58', '2016-03-31 03:33:58'),
(69, '45', 'Malindi ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(70, '46', 'Mombasa Digo Road ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(71, '47', 'Moi Avenue ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(72, '48', 'Bungoma ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(73, '49', 'Kapsabet ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(74, '50', 'Kakamega ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(75, '51', 'Kisii ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(76, '52', 'Nyamira ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(77, '53', 'Litein ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(78, '54', 'Equity Centre Diaspora', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(79, '55', 'Westlands ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(80, '56', 'Industrial Area Kenpipe Plaza ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(81, '57', 'Kikuyu ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(82, '58', 'Garissa ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(83, '59', 'Mwingi ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(84, '60', 'Machakos ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(85, '61', 'Ongata Rongai ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(86, '62', 'Ol-kalao ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(87, '63', 'Kawangware ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(88, '64', 'Kiambu ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(89, '65', 'Kayole ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(90, '66', 'Gatundu ', 19, NULL, '2016-03-31 03:33:59', '2016-03-31 03:33:59'),
(91, '67', 'Wote ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(92, '68', 'Mumias ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(93, '69', 'Limuru ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(94, '70', 'Kitengela ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(95, '71', 'Githurai ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(96, '72', 'Kitui ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(97, '73', 'Ngong ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(98, '74', 'Loitoktok ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(99, '75', 'Bondo ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(100, '76', 'Mbita ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(101, '77', 'Gilgil ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(102, '78', 'Busia ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(103, '79', 'Voi ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(104, '80', 'Enterprise Road ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(105, '81', 'Equity Centre ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(106, '82', 'Donholm ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(107, '83', 'Mukurwe-ini ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(108, '84', 'Eastleigh ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(109, '85', 'Namanga ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(110, '86', 'Kajiado ', 19, NULL, '2016-03-31 03:34:00', '2016-03-31 03:34:00'),
(111, '87', 'Ruiru ', 19, NULL, '2016-03-31 03:34:01', '2016-03-31 03:34:01'),
(112, '88', 'Otc ', 19, NULL, '2016-03-31 03:34:01', '2016-03-31 03:34:01'),
(113, '89', 'Kenol ', 19, NULL, '2016-03-31 03:34:01', '2016-03-31 03:34:01'),
(114, '90', 'Tala ', 19, NULL, '2016-03-31 03:34:01', '2016-03-31 03:34:01'),
(115, '91', 'Ngara ', 19, NULL, '2016-03-31 03:34:01', '2016-03-31 03:34:01'),
(116, '92', 'Nandi Hills ', 19, NULL, '2016-03-31 03:34:02', '2016-03-31 03:34:02'),
(117, '93', 'Githunguri ', 19, NULL, '2016-03-31 03:34:02', '2016-03-31 03:34:02'),
(118, '94', 'Tea Room ', 19, NULL, '2016-03-31 03:34:02', '2016-03-31 03:34:02'),
(119, '95', 'Buru Buru ', 19, NULL, '2016-03-31 03:34:02', '2016-03-31 03:34:02'),
(120, '96', 'Mbale ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(121, '97', 'Siaya ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(122, '98', 'Homa Bay ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(123, '99', 'Lodwar ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(124, '100', 'Mandera ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(125, '101', 'Marsabit ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(126, '102', 'Moyale ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(127, '103', 'Wajir ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(128, '104', 'Meru Makutano ', 19, NULL, '2016-03-31 03:34:03', '2016-03-31 03:34:03'),
(129, '105', 'Malaba Town ', 19, NULL, '2016-03-31 03:34:04', '2016-03-31 03:34:04'),
(130, '106', 'Kilifi ', 19, NULL, '2016-03-31 03:34:04', '2016-03-31 03:34:04'),
(131, '107', 'Kapenguria ', 19, NULL, '2016-03-31 03:34:04', '2016-03-31 03:34:04'),
(132, '108', 'Mombasa Road ', 19, NULL, '2016-03-31 03:34:04', '2016-03-31 03:34:04'),
(133, '109', 'Eldoret Market ', 19, NULL, '2016-03-31 03:34:04', '2016-03-31 03:34:04'),
(134, '110', 'Maralal ', 19, NULL, '2016-03-31 03:34:04', '2016-03-31 03:34:04'),
(135, '111', 'Kimende ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(136, '112', 'Luanda ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(137, '113', 'Ku Sub Branch ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(138, '114', 'Kengeleni ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(139, '115', 'Nyeri Kimathi Way ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(140, '116', 'Migori ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(141, '117', 'Kibera ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(142, '118', 'Kasarani ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(143, '119', 'Mtwapa ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(144, '120', 'Changamwe ', 19, NULL, '2016-03-31 03:34:05', '2016-03-31 03:34:05'),
(145, '121', 'Hola ', 19, NULL, '2016-03-31 03:34:06', '2016-03-31 03:34:06'),
(146, '122', 'Bomet ', 19, NULL, '2016-03-31 03:34:06', '2016-03-31 03:34:06'),
(147, '123', 'Kilgoris ', 19, NULL, '2016-03-31 03:34:06', '2016-03-31 03:34:06'),
(148, '124', 'Keroka ', 19, NULL, '2016-03-31 03:34:06', '2016-03-31 03:34:06'),
(149, '125', 'KAREN', 19, NULL, '2016-03-31 03:34:06', '2016-03-31 03:34:06'),
(150, '126', 'KISUMU ANGAWA AVE', 19, NULL, '2016-03-31 03:34:06', '2016-03-31 03:34:06'),
(151, '127', 'MPEKETONI', 19, NULL, '2016-03-31 03:34:06', '2016-03-31 03:34:06'),
(152, '128', 'NAIROBI WEST', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(153, '129', 'KENYATTA AVENUE', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(154, '130', 'City Hall', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(155, '131', 'Eldama Ravine', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(156, '132', 'Embakasi', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(157, '133', 'KPCU', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(158, '134', 'Ridgeways', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(159, '135', 'Runyenjes Sub Branch', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(160, '136', 'Dadaad', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(161, '137', 'Kangemi', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(162, '138', 'Nyali Centre Corporate', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(163, '139', 'Kabarnet', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(164, '140', 'Westlands Corporate', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(165, '141', 'Lavington Corporate', 19, NULL, '2016-03-31 03:34:07', '2016-03-31 03:34:07'),
(166, '142', 'Taita Taveta', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(167, '143', 'Awendo', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(168, '144', 'Ruai', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(169, '145', 'Kilimani', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(170, '146', 'Nakuru Westside Mall', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(171, '147', 'Kilimani Supreme', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(172, '148', 'JKIA Cargo Centre', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(173, '149', 'EPZ Athi River', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(174, '150', 'Oyugis', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(175, '151', 'Mayfair Supreme Centre', 19, NULL, '2016-03-31 03:34:08', '2016-03-31 03:34:08'),
(176, '152', 'Juja', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(177, '153', 'Iten', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(178, '154', 'Nyali Supreme Centre', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(179, '155', 'Thika Supreme Centre', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(180, '156', 'Mombasa Supreme Centre', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(181, '157', 'Kapsowar Sub-Branch', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(182, '158', 'Kwale', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(183, '159', 'Lamu', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(184, '160', 'Kenyatta Avenue Supreme', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(185, '161', 'KPA Sub-Branch Mombasa', 19, NULL, '2016-03-31 03:34:09', '2016-03-31 03:34:09'),
(186, '162', 'Gigiri Supreme Centre', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(187, '163', 'Karen Supreme Centre', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(188, '164', 'Eldoret Supreme Centre', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(189, '165', 'Kakuma', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(190, '166', 'Archers Post ', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(191, '167', 'Mutomo', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(192, '168', 'Kiserian Sub Branch', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(193, '169', 'Dagoretti Corner', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(194, '170', 'Kisumu Supreme Centre', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(195, '171', 'Thika Makongeni', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(196, '777', 'Equity Hapo Hapo', 19, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(197, '0', 'Head Office ', 20, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(198, '1', 'Kiambu ', 20, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(199, '2', 'Githunguri ', 20, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(200, '3', 'Sonalux ', 20, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(201, '4', 'Gatundu ', 20, NULL, '2016-03-31 03:34:10', '2016-03-31 03:34:10'),
(202, '5', 'Thika ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(203, '6', 'Muranga ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(204, '7', 'Kangari ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(205, '8', 'Kiria-ini ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(206, '9', 'Kangema ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(207, '11', 'Othaya ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(208, '12', 'Kenyatta Avenue ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(209, '14', 'Cargen House ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(210, '15', 'Laptrust', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(211, '16', 'City Hall Annex', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(212, '17', 'Kasarani', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(213, '18', 'Nakuru Finance House ', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(214, '19', 'Nakuru Market', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(215, '21', 'Dagoretti', 20, NULL, '2016-03-31 03:34:11', '2016-03-31 03:34:11'),
(216, '22', 'Kericho', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(217, '23', 'Nyahururu', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(218, '24', 'Ruiru ', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(219, '25', 'Kisumu Reliance', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(220, '26', 'Nyamira ', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(221, '27', 'Kisii ', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(222, '28', 'Kisumu Al Imran', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(223, '29', 'Narok', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(224, '31', 'Industrial Area ', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(225, '32', 'Thika Makongeni', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(226, '33', 'Donholm ', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(227, '34', 'Utawala', 20, NULL, '2016-03-31 03:34:12', '2016-03-31 03:34:12'),
(228, '35', 'Fourways Retail Branch', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(229, '37', 'Olkalou', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(230, '38', 'Ktda Plaza ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(231, '41', 'Kariobangi ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(232, '42', 'Gikomba Area 42', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(233, '43', 'Sokoni ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(234, '45', 'Githurai ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(235, '46', 'Yaya ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(236, '47', 'Limuru ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(237, '48', 'Westlands', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(238, '49', 'Kagwe', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(239, '51', 'Banana ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(240, '53', 'Naivasha ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(241, '54', 'Chuka', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(242, '55', 'Nyeri ', 20, NULL, '2016-03-31 03:34:13', '2016-03-31 03:34:13'),
(243, '56', 'Karatina', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(244, '57', 'Kerugoya ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(245, '58', 'Tom Mboya ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(246, '59', 'River Road ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(247, '61', 'Kayole ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(248, '62', 'Nkubu ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(249, '63', 'Meru ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(250, '64', 'Nanyuki', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(251, '65', 'Ktda Plaza Corporate ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(252, '66', 'Ongata Rongai ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(253, '67', 'Kajiado', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(254, '68', 'Fourways Corporate Branch ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(255, '69', 'Ngara', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(256, '71', 'Kitengela ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(257, '72', 'Kitui', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(258, '73', 'Mackakos ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(259, '74', 'Migori', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(260, '75', 'Embu ', 20, NULL, '2016-03-31 03:34:14', '2016-03-31 03:34:14'),
(261, '76', 'Mwea', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(262, '77', 'Bungoma ', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(263, '78', 'Kakamega ', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(264, '79', 'Busia ', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(265, '81', 'Mumias', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(266, '82', 'Eldoret West', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(267, '83', 'Molo ', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(268, '84', 'Bomet', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(269, '85', 'Eldoret ', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(270, '87', 'Leitin', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(271, '89', 'Bamburi', 20, NULL, '2016-03-31 03:34:15', '2016-03-31 03:34:15'),
(272, '91', 'Ukunda', 20, NULL, '2016-03-31 03:34:16', '2016-03-31 03:34:16'),
(273, '92', 'Digo', 20, NULL, '2016-03-31 03:34:16', '2016-03-31 03:34:16'),
(274, '93', 'Kitale ', 20, NULL, '2016-03-31 03:34:16', '2016-03-31 03:34:16'),
(275, '94', 'Mtwapa', 20, NULL, '2016-03-31 03:34:16', '2016-03-31 03:34:16'),
(276, '95', 'Mombasa Nkrumah Road', 20, NULL, '2016-03-31 03:34:16', '2016-03-31 03:34:16'),
(277, '96', 'Mombasa Jomo Kenyatta Avenue', 20, NULL, '2016-03-31 03:34:17', '2016-03-31 03:34:17'),
(278, '97', 'Kapsabet ', 20, NULL, '2016-03-31 03:34:17', '2016-03-31 03:34:17'),
(279, '98', 'Malindi', 20, NULL, '2016-03-31 03:34:17', '2016-03-31 03:34:17'),
(280, '102', 'Kikuyu', 20, NULL, '2016-03-31 03:34:17', '2016-03-31 03:34:17'),
(281, NULL, 'head office', 21, NULL, '2016-03-31 03:34:17', '2016-03-31 03:34:17'),
(282, NULL, 'Kariobangi', 21, NULL, '2016-03-31 03:34:18', '2016-03-31 03:34:18'),
(283, NULL, 'Kawangware', 21, NULL, '2016-03-31 03:34:18', '2016-03-31 03:34:18'),
(284, NULL, 'Ngong Road', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(285, NULL, 'Kayole Branch', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(286, NULL, 'OTC', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(287, NULL, 'Thika Road', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(288, NULL, 'Kibera', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(289, NULL, 'Kimathi Street', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(290, NULL, 'Kitengela', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(291, NULL, 'Kitui', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(292, NULL, 'Emali', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(293, NULL, 'Wote', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(294, NULL, 'Mwingi', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(295, NULL, 'Makutano', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(296, NULL, 'Nkubu', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(297, NULL, 'Meru', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(298, NULL, 'Maua', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(299, NULL, 'Isiolo', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(300, NULL, 'Embu', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(301, NULL, 'Mwea', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(302, NULL, 'Machakos', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(303, NULL, 'Tala Plaza', 21, NULL, '2016-03-31 03:34:19', '2016-03-31 03:34:19'),
(304, NULL, 'Kiserian', 21, NULL, '2016-03-31 03:34:20', '2016-03-31 03:34:20'),
(305, NULL, 'Matuu', 21, NULL, '2016-03-31 03:34:20', '2016-03-31 03:34:20'),
(306, NULL, 'Kiambu', 21, NULL, '2016-03-31 03:34:20', '2016-03-31 03:34:20'),
(307, NULL, 'Muranga ', 21, NULL, '2016-03-31 03:34:20', '2016-03-31 03:34:20'),
(308, NULL, 'Nanyuki', 21, NULL, '2016-03-31 03:34:20', '2016-03-31 03:34:20'),
(309, NULL, 'Timau', 21, NULL, '2016-03-31 03:34:20', '2016-03-31 03:34:20'),
(310, NULL, 'Thika', 21, NULL, '2016-03-31 03:34:20', '2016-03-31 03:34:20'),
(311, NULL, 'Githunguri', 21, NULL, '2016-03-31 03:34:20', '2016-03-31 03:34:20'),
(312, NULL, 'Kerugoya', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(313, NULL, 'Nyeri', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(314, NULL, 'Karatina', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(315, NULL, 'Rongai', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(316, NULL, 'Narumoru', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(317, NULL, 'Bungoma', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(318, NULL, 'Webuye', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(319, NULL, 'Mumias', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(320, NULL, 'Kakamega', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(321, NULL, 'Busia', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(322, NULL, 'Kimilili', 21, NULL, '2016-03-31 03:34:21', '2016-03-31 03:34:21'),
(323, NULL, 'Kapenguria', 21, NULL, '2016-03-31 03:34:22', '2016-03-31 03:34:22'),
(324, NULL, 'Bomet', 21, NULL, '2016-03-31 03:34:22', '2016-03-31 03:34:22'),
(325, NULL, 'Litein', 21, NULL, '2016-03-31 03:34:22', '2016-03-31 03:34:22'),
(326, NULL, 'Kericho', 21, NULL, '2016-03-31 03:34:22', '2016-03-31 03:34:22'),
(327, NULL, 'Kapsabet', 21, NULL, '2016-03-31 03:34:23', '2016-03-31 03:34:23'),
(328, NULL, 'Kitale', 21, NULL, '2016-03-31 03:34:23', '2016-03-31 03:34:23'),
(329, NULL, 'Kabarnet', 21, NULL, '2016-03-31 03:34:23', '2016-03-31 03:34:23'),
(330, NULL, 'Rware Shop', 21, NULL, '2016-03-31 03:34:23', '2016-03-31 03:34:23'),
(331, NULL, 'Maralal', 21, NULL, '2016-03-31 03:34:23', '2016-03-31 03:34:23'),
(332, NULL, 'Olenguruone', 21, NULL, '2016-03-31 03:34:23', '2016-03-31 03:34:23'),
(333, NULL, 'Eldoret', 21, NULL, '2016-03-31 03:34:24', '2016-03-31 03:34:24'),
(334, NULL, 'Rumuruti', 21, NULL, '2016-03-31 03:34:24', '2016-03-31 03:34:24'),
(335, NULL, 'Nyahururu', 21, NULL, '2016-03-31 03:34:24', '2016-03-31 03:34:24'),
(336, NULL, 'Nakuru', 21, NULL, '2016-03-31 03:34:24', '2016-03-31 03:34:24'),
(337, NULL, 'Eldama Ravine', 21, NULL, '2016-03-31 03:34:24', '2016-03-31 03:34:24'),
(338, NULL, 'Naivasha ', 21, NULL, '2016-03-31 03:34:24', '2016-03-31 03:34:24'),
(339, NULL, 'Njambini', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(340, NULL, 'Narok', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(341, NULL, 'Molo', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(342, NULL, 'Kinamba', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(343, NULL, 'Njoro', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(344, NULL, 'Mombasa Central', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(345, NULL, 'Malindi', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(346, NULL, 'Kengeleni', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(347, '0', 'Head Office/koinange St. ', 1, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(348, NULL, 'Voi ', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(349, '1', 'Westlands', 1, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(350, NULL, 'Changamwe', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(351, '2', 'Industrial Area Branch ', 1, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(352, NULL, 'Kongowea ', 21, NULL, '2016-03-31 03:34:25', '2016-03-31 03:34:25'),
(353, '3', 'Nkrumah Road Branch/mombasa', 1, NULL, '2016-03-31 03:34:26', '2016-03-31 03:34:26'),
(354, NULL, 'Ukunda', 21, NULL, '2016-03-31 03:34:26', '2016-03-31 03:34:26'),
(355, '4', 'Kisumu Branch ', 1, NULL, '2016-03-31 03:34:26', '2016-03-31 03:34:26'),
(356, NULL, 'Mpeketoni', 21, NULL, '2016-03-31 03:34:26', '2016-03-31 03:34:26'),
(357, '5', 'Eldoret Branch', 1, NULL, '2016-03-31 03:34:26', '2016-03-31 03:34:26'),
(358, NULL, 'Kisumu', 21, NULL, '2016-03-31 03:34:26', '2016-03-31 03:34:26'),
(359, '6', 'Meru Branch ', 1, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(360, NULL, 'Ugunja', 21, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(361, '7', 'Libra House ', 1, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(362, NULL, 'Bondo', 21, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(363, '8', 'Nakuru', 1, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(364, '0', 'Head Office', 22, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(365, '9', 'Lamu', 1, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(366, '0', 'Reinsurance Plaza Nairobi', 2, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(367, '1', 'Kimathi Street', 22, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(368, '1', 'Mombasa', 2, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(369, '2', 'Ind Area ', 22, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(370, '2', 'Westlands', 2, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(371, '3', 'Westlands ', 22, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(372, '3', 'Uhuru Highway', 2, NULL, '2016-03-31 03:34:27', '2016-03-31 03:34:27'),
(373, '4', 'Lavington ', 22, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(374, '4', 'River Road', 2, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(375, '5', 'Nkrumah Road , Mombasa ', 22, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(376, '5', 'Thika ', 2, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(377, '6', 'Nakuru ', 22, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(378, '6', 'Kisumu ', 2, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(379, '7', 'Eldoret ', 22, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(380, '7', 'Ruaraka ', 2, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(381, '8', 'Monrovia Street ', 2, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(382, '8', 'Muthaiga ', 22, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(383, '9', 'Nakuru ', 2, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(384, '9', 'Nanyuki ', 22, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(385, '10', 'Ngong Road ', 2, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(386, '10', 'Thika ', 22, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(387, '11', 'Eldoret ', 2, NULL, '2016-03-31 03:34:28', '2016-03-31 03:34:28'),
(388, '11', 'Gikomba ', 22, NULL, '2016-03-31 03:34:29', '2016-03-31 03:34:29'),
(389, '12', 'Embakasi ', 2, NULL, '2016-03-31 03:34:29', '2016-03-31 03:34:29'),
(390, '12', 'Ngong Road ', 22, NULL, '2016-03-31 03:34:29', '2016-03-31 03:34:29'),
(391, '13', 'Kericho ', 2, NULL, '2016-03-31 03:34:29', '2016-03-31 03:34:29'),
(392, '13', 'Meru ', 22, NULL, '2016-03-31 03:34:29', '2016-03-31 03:34:29'),
(393, '14', 'Ongata Rongai', 2, NULL, '2016-03-31 03:34:29', '2016-03-31 03:34:29'),
(394, '14', 'Nyali', 22, NULL, '2016-03-31 03:34:29', '2016-03-31 03:34:29'),
(395, '15', 'Changamwe', 2, NULL, '2016-03-31 03:34:30', '2016-03-31 03:34:30'),
(396, '1', 'Wabera Street ', 23, NULL, '2016-03-31 03:34:30', '2016-03-31 03:34:30'),
(397, '2', 'Eastleigh 1 ', 23, NULL, '2016-03-31 03:34:30', '2016-03-31 03:34:30'),
(398, '16', 'Bungoma', 2, NULL, '2016-03-31 03:34:30', '2016-03-31 03:34:30'),
(399, '17', 'KISII', 2, NULL, '2016-03-31 03:34:30', '2016-03-31 03:34:30'),
(400, '3', 'Mombasa 1 ', 23, NULL, '2016-03-31 03:34:30', '2016-03-31 03:34:30'),
(401, '4', 'Garissa ', 23, NULL, '2016-03-31 03:34:30', '2016-03-31 03:34:30'),
(402, '18', 'MERU', 2, NULL, '2016-03-31 03:34:30', '2016-03-31 03:34:30'),
(403, '5', 'Eastleigh 2 - General Waruinge ', 23, NULL, '2016-03-31 03:34:31', '2016-03-31 03:34:31'),
(404, '19', 'Kitengela', 2, NULL, '2016-03-31 03:34:31', '2016-03-31 03:34:31'),
(405, '6', 'Malindi ', 23, NULL, '2016-03-31 03:34:31', '2016-03-31 03:34:31'),
(406, '20', 'Nyali', 2, NULL, '2016-03-31 03:34:31', '2016-03-31 03:34:31'),
(407, '7', 'Kisumu ', 23, NULL, '2016-03-31 03:34:31', '2016-03-31 03:34:31'),
(408, '21', 'Galleria', 2, NULL, '2016-03-31 03:34:31', '2016-03-31 03:34:31'),
(409, '22', 'Greenspan Mall', 2, NULL, '2016-03-31 03:34:32', '2016-03-31 03:34:32'),
(410, '8', 'Kimathi Street ', 23, NULL, '2016-03-31 03:34:32', '2016-03-31 03:34:32'),
(411, '9', 'Westlands ', 23, NULL, '2016-03-31 03:34:33', '2016-03-31 03:34:33'),
(412, '23', 'Upper Hilll', 2, NULL, '2016-03-31 03:34:33', '2016-03-31 03:34:33'),
(413, '10', 'South C ', 23, NULL, '2016-03-31 03:34:33', '2016-03-31 03:34:33'),
(414, '24', 'Nanyuki', 2, NULL, '2016-03-31 03:34:34', '2016-03-31 03:34:34'),
(415, '11', 'Industrial Area ', 23, NULL, '2016-03-31 03:34:34', '2016-03-31 03:34:34'),
(416, '25', 'Lunga Lunga Road', 2, NULL, '2016-03-31 03:34:34', '2016-03-31 03:34:34'),
(417, '12', 'Masalani ', 23, NULL, '2016-03-31 03:34:34', '2016-03-31 03:34:34'),
(418, '26', 'Kenyatta Avenue', 2, NULL, '2016-03-31 03:34:34', '2016-03-31 03:34:34'),
(419, '13', 'Habasweni ', 23, NULL, '2016-03-31 03:34:34', '2016-03-31 03:34:34'),
(420, '27', 'Sameer Business Park', 2, NULL, '2016-03-31 03:34:34', '2016-03-31 03:34:34'),
(421, '14', 'Wajir ', 23, NULL, '2016-03-31 03:34:34', '2016-03-31 03:34:34'),
(422, '28', 'Moi Avenue, Mombasa', 2, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(423, '15', 'Moyale ', 23, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(424, '29', 'Ongata Rongai II', 2, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(425, '16', 'Nakuru ', 23, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(426, '30', 'Gikomba', 2, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(427, '17', 'Mombasa 2 ', 23, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(428, '31', 'Githurai', 2, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(429, '32', 'Embu', 2, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(430, '18', 'Lunga Lunga', 23, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(431, '33', 'Gateway Mall', 2, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(432, '999', 'Head Office/clearing Center ', 23, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(433, '34', 'Kitale', 2, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(434, '0', 'Banda', 24, NULL, '2016-03-31 03:34:35', '2016-03-31 03:34:35'),
(435, '35', 'South B', 2, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(436, '1', 'Mombasa ', 24, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(437, '36', 'Digo Road', 2, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(438, '2', 'Industrial Area ', 24, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(439, '0', 'Nairobi Main', 3, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(440, '3', 'Kimathi St.', 24, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(441, '2', 'Digo Road, Mombasa', 3, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(442, '4', 'Kisumu Branch ', 24, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(443, '4', 'Thika', 3, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(444, '5', 'Westlands ', 24, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(445, '5', 'Kisumu ', 3, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(446, '7', 'Parklands 3rd Avenue ', 24, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(447, '6', 'Sarit Centre ', 3, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(448, '1', 'Head Office ', 25, NULL, '2016-03-31 03:34:36', '2016-03-31 03:34:36'),
(449, '7', 'Industrial Area', 3, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(450, '2', 'Westlands ', 25, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(451, '8', 'Eldoret', 3, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(452, '3', 'Mombasa ', 25, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(453, '9', 'Nakuru', 3, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(454, '4', 'Eldoret ', 25, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(455, '10', 'Kakamega', 3, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(456, '5', 'Kisumu ', 25, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(457, '11', 'Nyali Mombasa', 3, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(458, '6', 'Moi Ave ', 25, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(459, '0', 'Kenyatta Avenue , Nairobi ', 4, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(460, '7', 'Mombasa Road ', 25, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(461, '1', 'Nkrumah Road , Mombasa ', 4, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(462, '8', 'Nyali', 25, NULL, '2016-03-31 03:34:37', '2016-03-31 03:34:37'),
(463, '2', 'Industrial Area ', 4, NULL, '2016-03-31 03:34:38', '2016-03-31 03:34:38'),
(464, '9', 'Ngong Road', 25, NULL, '2016-03-31 03:34:38', '2016-03-31 03:34:38'),
(465, '3', 'Westlands ', 4, NULL, '2016-03-31 03:34:38', '2016-03-31 03:34:38'),
(466, '10', 'Nakuru', 25, NULL, '2016-03-31 03:34:38', '2016-03-31 03:34:38'),
(467, '4', 'Kisumu', 4, NULL, '2016-03-31 03:34:38', '2016-03-31 03:34:38'),
(468, '0', 'Head Office', 26, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(469, '5', 'Eldoret', 4, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(470, '1', 'Head Office - Vpc ', 5, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(471, '1', 'Kimathi Street', 26, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(472, '2', 'Kapsabet Branch ', 5, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(473, '2', 'Ind Area ', 26, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(474, '3', 'Eldoret Branch ', 5, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(475, '3', 'Westlands ', 26, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(476, '4', 'Embu Branch ', 5, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(477, '4', 'Lavington ', 26, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(478, '5', 'Murang A Branch ', 5, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(479, '5', 'Nkrumah Road , Mombasa ', 26, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(480, '6', 'Kapenguria Branch ', 5, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(481, '6', 'Nakuru ', 26, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(482, '7', 'Kericho Branch ', 5, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(483, '7', 'Eldoret ', 26, NULL, '2016-03-31 03:34:39', '2016-03-31 03:34:39'),
(484, '8', 'Kisii Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(485, '8', 'Muthaiga ', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(486, '9', 'Kisumu Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(487, '9', 'Nanyuki ', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(488, '10', 'South C Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(489, '10', 'Thika ', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(490, '11', 'Limuru Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(491, '11', 'Gikomba ', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(492, '12', 'Malindi Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(493, '12', 'Ngong Road ', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(494, '13', 'Meru Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(495, '13', 'Meru ', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(496, '14', 'Eastleigh Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(497, '14', 'Nyali', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(498, '15', 'Kitui Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(499, '15', 'Sky Park', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(500, '16', 'Nkrumah Road Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(501, '16', 'Karen', 26, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(502, '17', 'Garissa Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(503, '0', 'Head Office ', 27, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(504, '18', 'Nyamira Branch ', 5, NULL, '2016-03-31 03:34:40', '2016-03-31 03:34:40'),
(505, '1', 'Central Clearing Centre ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(506, '19', 'Kilifi Branch ', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(507, '2', 'Upperhill ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(508, '20', 'Office Park Westlands ', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(509, '3', 'Eastleigh ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(510, '21', 'Barclaycard Operations ', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(511, '4', 'Kenyatta Avenue ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(512, '22', 'Paymants And International Services ', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(513, '5', 'Mombasa ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(514, '23', 'Gilgil Branch ', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(515, '6', 'Garissa ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(516, '24', 'Thika Road Mall', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(517, '7', 'Lamu ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(518, '26', 'Kakamega Branch ', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(519, '8', 'Malindi ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(520, '27', 'Nakuru East ', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(521, '9', 'Muthaiga ', 27, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(522, '28', 'Buruburu ', 5, NULL, '2016-03-31 03:34:41', '2016-03-31 03:34:41'),
(523, '10', 'Bondeni ', 27, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(524, '29', 'Bomet ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(525, '11', 'Eastleigh 7th Street', 27, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(526, '30', 'Nyeri Branch ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(527, '12', 'Eastleigh Athumani Kipanga Street', 27, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(528, '31', 'Thika Branch ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(529, '13', 'Westlands', 27, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(530, '32', 'Port Mombasa ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(531, '14', 'Industrial Area', 27, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(532, '33', 'Gikomba ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(533, '15', 'Jomo Kenyatta Avenue', 27, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(534, '34', 'Kawangware ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(535, '16', 'Bombululu', 27, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(536, '35', 'Mbale ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(537, '17', 'Mombasa Road', 27, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(538, '36', 'Plaza Premier Centre ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(539, '0', 'Head Office ', 28, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(540, '37', 'River Road Branch ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(541, '1', 'Mombasa ', 28, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(542, '38', 'Chomba House-river Road ', 5, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(543, '2', 'Industrial Area ', 28, NULL, '2016-03-31 03:34:42', '2016-03-31 03:34:42'),
(544, '39', 'Mumias Branch ', 5, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(545, '3', 'Westlands ', 28, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(546, '40', 'Machakos Branch ', 5, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(547, '4', 'Nyali', 28, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(548, '41', 'Narok Branch ', 5, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(549, '46', 'Mombasa ', 29, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(550, '42', 'Isiolo Branch ', 5, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(551, '47', 'Malindi ', 29, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(552, '43', 'Ngong Branch ', 5, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(553, '48', 'Kimathi Street ', 29, NULL, '2016-03-31 03:34:43', '2016-03-31 03:34:43'),
(554, '44', 'Maua Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(555, '49', 'Kenyatta Avenue ', 29, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(556, '45', 'Hurlingham Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(557, '86', 'Kisumu ', 29, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(558, '46', 'Makupa Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(559, '108', 'Industrial Area', 29, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(560, '47', 'Development House Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(561, '109', 'HBL Westlands', 29, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(562, '48', 'Bungoma ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(563, '16', 'Kitengela', 30, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(564, '49', 'Lavington Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(565, '17', 'Naivasha', 30, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(566, '50', 'Tala ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(567, '100', 'Head Office', 30, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(568, '51', 'Homa Bay Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(569, '200', 'Rehani House', 30, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(570, '52', 'Ongata Rongai Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(571, '210', 'Kenyatta Market', 30, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(572, '53', 'Othaya Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(573, '220', 'Gill House', 30, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(574, '54', 'Voi Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(575, '230', 'Buru Buru', 30, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(576, '55', 'Muthaiga Branch ', 5, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(577, '260', 'Thika Road Mall', 30, NULL, '2016-03-31 03:34:44', '2016-03-31 03:34:44'),
(578, '56', 'Barclays Advisory And Reg. Services ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(579, '270', 'Sameer Business Park', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(580, '57', 'Githunguri Branch ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(581, '280', 'Westlands', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(582, '58', 'Webuye Branch ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(583, '300', 'Mombasa', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(584, '59', 'Kasarani Branch ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(585, '310', 'Nyali ', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(586, '60', 'Chuka Branch ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(587, '400', 'Nakuru', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(588, '61', 'Nakumatt-westgate Branch ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(589, '410', 'Eldoret', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(590, '62', 'Kabarnet Branch ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(591, '500', 'Thika', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(592, '63', 'Kerugoya Branch ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(593, '510', 'Nyeri', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(594, '64', 'Taveta Branch ', 5, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(595, '520', 'Meru', 30, NULL, '2016-03-31 03:34:45', '2016-03-31 03:34:45'),
(596, '65', 'Karen Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(597, '600', 'Kisumu', 30, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(598, '66', 'Wundanyi Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(599, '0', 'Kenyatta Avenue ', 31, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(600, '67', 'Ruaraka Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(601, '1', '2nd Nong Avenue ', 31, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(602, '68', 'Pamoja Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(603, '2', 'Sarit Centre ', 31, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(604, '69', 'Wote Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(605, '3', 'Head Office ', 31, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(606, '70', 'Enterprise Road Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(607, '4', 'Biashara St ', 31, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(608, '71', 'Nakumatt Meru Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(609, '5', 'Mombasa ', 31, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46');
INSERT INTO `bank_branches` (`id`, `branch_code`, `bank_branch_name`, `bank_id`, `organization_id`, `created_at`, `updated_at`) VALUES
(610, '6', 'Industrial Area ', 31, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(611, '72', 'Juja Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(612, '7', 'Kisumu ', 31, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(613, '73', 'Westlands Branch ', 5, NULL, '2016-03-31 03:34:46', '2016-03-31 03:34:46'),
(614, '8', 'Karen ', 31, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(615, '74', 'Kikuyu Branch ', 5, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(616, '9', 'Panari Centre ', 31, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(617, '75', 'Moi Avenue-nairobi Branch ', 5, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(618, '10', 'Parklands ', 31, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(619, '76', 'Kenyatta Avenue ', 5, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(620, '11', 'Wilson Airport ', 31, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(621, '77', 'Barcalys Plaza Corporate Service Centre ', 5, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(622, '12', 'Ongata Rongai ', 31, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(623, '78', 'Kiriaini Branch ', 5, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(624, '13', 'South C Shopping Centre ', 31, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(625, '79', 'Butere Road Branch ', 5, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(626, '14', 'Nyali Cinemax ', 31, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(627, '80', 'Migori Branch ', 5, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(628, '15', 'Langata Link ', 31, NULL, '2016-03-31 03:34:47', '2016-03-31 03:34:47'),
(629, '81', 'Digo Branch ', 5, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(630, '16', 'Lavington ', 31, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(631, '82', 'Haile Selassie Avenue Branch ', 5, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(632, '17', 'Eldoret ', 31, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(633, '83', 'Nairobi University Branch ', 5, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(634, '18', 'NAKURU', 31, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(635, '84', 'Bunyala Road ', 5, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(636, '19', 'Riversid Drive Branch', 31, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(637, '86', 'Nairobi West Branch ', 5, NULL, '2016-03-31 03:34:48', '2016-03-31 03:34:48'),
(638, '20', 'Kisii', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(639, '87', 'Parklands ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(640, '21', 'Changamwe', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(641, '88', 'Busia ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(642, '22', 'Malindi', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(643, '89', 'Pangani Branch ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(644, '23', 'Nyeri', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(645, '90', 'Abc Premier Life Centre ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(646, '24', 'Thika', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(647, '93', 'Kariobangi Branch ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(648, '25', 'Gigiri', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(649, '94', 'Queensway House Branch ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(650, '26', 'Mtwapa', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(651, '95', 'Nakumatt Embakasi Branch ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(652, '27', 'Lavington Mall', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(653, '96', 'Barclays Merchant Finance Ltd. ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(654, '28', 'Kitale', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(655, '97', 'Barclays Securities Services (k ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(656, '29', 'Lunga Lunga', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(657, '100', 'Diani Branch ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(658, '30', 'Yaya Centre', 31, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(659, '103', 'Nairobi J.k.i.a Branch ', 5, NULL, '2016-03-31 03:34:49', '2016-03-31 03:34:49'),
(660, '31', 'I&M Bank Ltd Gateway Mall, Syokimau', 31, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(661, '105', 'Village Market - Premier Life Centre ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(662, '32', 'Garden City Mall', 31, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(663, '106', 'Sarit Centre - Premier Life Centre ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(664, '98', 'Card Center ', 31, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(665, '109', 'Yaya Centre- Premier Life Centre ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(666, '1', 'IPS', 32, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(667, '111', 'Naivasha Branch ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(668, '2', 'Mombasa ', 32, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(669, '113', 'Market Branch ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(670, '3', 'Upper Hill ', 32, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(671, '114', 'Changamwe Branch ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(672, '4', 'Parklands ', 32, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(673, '117', 'Rahimtulla Trust Towers - Premier Life Centre ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(674, '5', 'Malindi ', 32, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(675, '125', 'Nakuru West Branch ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(676, '6', 'Industrial Area ', 32, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(677, '128', 'Bamburi Branch ', 5, NULL, '2016-03-31 03:34:50', '2016-03-31 03:34:50'),
(678, '7', 'Watamu ', 32, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(679, '130', 'Harambee Ave - Premier Life Centre ', 5, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(680, '8', 'Diani ', 32, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(681, '132', 'Kitale Branch ', 5, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(682, '9', 'Kilifi ', 32, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(683, '139', 'Nyahururu Branch ', 5, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(684, '10', 'Eldoret ', 32, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(685, '144', 'Treasury Operations', 5, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(686, '11', 'Karen ', 32, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(687, '145', 'Moi Avenue Mombasa -  Premier Life Centre ', 5, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(688, '12', 'Thika ', 32, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(689, '151', 'Cash Monitoring Unit ', 5, NULL, '2016-03-31 03:34:51', '2016-03-31 03:34:51'),
(690, '14', 'Changamwe ', 32, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(691, '190', 'Nanyuki Branch ', 5, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(692, '206', 'Karatina Branch ', 5, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(693, '15', 'Riverside ', 32, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(694, '220', 'Mombasa Nyerere Ave -  Premier Life Centre ', 5, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(695, '16', 'Likoni ', 32, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(696, '273', 'Consumer Operations ', 5, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(697, '17', 'HAILE SELASSIE ROAD', 32, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(698, '18', 'Village Market', 32, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(699, '300', 'Finance Department ', 5, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(700, '19', 'Bamburi', 32, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(701, '337', 'Documents And Securities  Dsc ', 5, NULL, '2016-03-31 03:34:52', '2016-03-31 03:34:52'),
(702, '20', 'Junction Mall', 32, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(703, '340', 'Retail Credit Team ', 5, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(704, '21', 'Greenspan mall', 32, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(705, '354', 'Credit Operations ', 5, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(706, '22', 'Westside Mall', 32, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(707, '400', 'Head office', 5, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(708, '23', 'Kenyatta Street Eldoret', 32, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(709, '138', 'Malindi -  Premier Life Centre ', 5, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(710, '24', 'Westlands', 32, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(711, '139', 'Nyahururu Branch ', 5, NULL, '2016-03-31 03:34:53', '2016-03-31 03:34:53'),
(712, '26', 'Highridge Branch', 32, NULL, '2016-03-31 03:34:54', '2016-03-31 03:34:54'),
(713, '142', 'Nakuru West - Premier Life Centre ', 5, NULL, '2016-03-31 03:34:54', '2016-03-31 03:34:54'),
(714, '27', 'Nyali Cinemax', 32, NULL, '2016-03-31 03:34:54', '2016-03-31 03:34:54'),
(715, '144', 'Treasury Operations', 5, NULL, '2016-03-31 03:34:54', '2016-03-31 03:34:54'),
(716, '28', 'Garden City', 32, NULL, '2016-03-31 03:34:54', '2016-03-31 03:34:54'),
(717, '145', 'Moi Avenue Mombasa -  Premier Life Centre ', 5, NULL, '2016-03-31 03:34:54', '2016-03-31 03:34:54'),
(718, '0', 'Head Office ', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(719, '146', 'Karen -  Premier Life Center ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(720, '1', 'Koinange Street', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(721, '148', 'Muthaiga Premier ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(722, '100', 'Kiongozi', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(723, '151', 'Cash Monitoring Unit ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(724, '101', 'Kayole', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(725, '156', 'Nakuru Local Business Club ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(726, '102', 'Eastleigh', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(727, '158', 'Queensway Business Suite ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(728, '105', 'Kawangware', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(729, '159', 'Digo Prestige ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(730, '106', 'Kibera', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(731, '162', 'Nkrumah Road Corporate Service Centre ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(732, '107', 'Kariobangi', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(733, '165', 'Queensway Premier ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(734, '111', 'Central Clearing Center', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(735, '179', 'Westgate Premier ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(736, '114', 'Funzi Road', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(737, '190', 'Nanyuki Branch ', 5, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(738, '115', 'Ngong Road', 33, NULL, '2016-03-31 03:34:55', '2016-03-31 03:34:55'),
(739, '206', 'Karatina Branch ', 5, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(740, '116', 'Kirinyaga Road', 33, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(741, '208', 'Plaza Premier Life Centre ', 5, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(742, '209', 'Machakos', 33, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(743, '220', 'Mombasa Nyerere Ave -  Premier Life Centre ', 5, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(744, '210', 'Mtwapa', 33, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(745, '273', 'Consumer Operations ', 5, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(746, '213', 'Kiritiri', 33, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(747, '287', 'Corporate Credit Team ', 5, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(748, '301', 'Thika', 33, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(749, '290', 'Barclays Business Support  Bbs ', 5, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(750, '303', 'Muranga ', 33, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(751, '300', 'Finance Department ', 5, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(752, '306', 'Kikuyu', 33, NULL, '2016-03-31 03:34:56', '2016-03-31 03:34:56'),
(753, '323', 'Tba ', 5, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(754, '307', 'Banana', 33, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(755, '337', 'Documents And Securities  Dsc ', 5, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(756, '310', 'Utawala', 33, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(757, '340', 'Retail Credit Team ', 5, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(758, '316', 'Nyeri', 33, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(759, '354', 'Credit Operations ', 5, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(760, '402', 'Kisumu', 33, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(761, '400', 'Head office', 5, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(762, '502', 'Ongata Rongai', 33, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(763, '0', 'Head Office ', 6, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(764, '503', 'Kitengela', 33, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(765, '1', 'Head Office ', 6, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(766, '507', 'Nakuru', 33, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(767, '2', 'Mombasa ', 6, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(768, '603', 'Mombasa', 33, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(769, '3', 'Kisumu ', 6, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(770, '91', 'Eastleigh ', 34, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(771, '4', 'Eldoret ', 6, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(772, '92', 'KCB CPC', 34, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(773, '0', 'CFC Stanbic Head Office', 7, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(774, '94', 'Head Office ', 34, NULL, '2016-03-31 03:34:57', '2016-03-31 03:34:57'),
(775, '2', 'Kenyatta Ave ', 7, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(776, '95', 'Wote ', 34, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(777, '3', 'Digo road', 7, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(778, '96', 'Head Office Finance', 34, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(779, '4', 'Waiyaki Way ', 7, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(780, '100', 'Moi Avenue Nairobi ', 34, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(781, '5', 'Industrial Area ', 7, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(782, '101', 'Kipande House ', 34, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(783, '6', 'Harambee Avenue ', 7, NULL, '2016-03-31 03:34:58', '2016-03-31 03:34:58'),
(784, '102', 'Treasury Sq Mombasa ', 34, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(785, '7', 'Chiromo Road ', 7, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(786, '103', 'Nakuru ', 34, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(787, '8', 'International House ', 7, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(788, '104', 'Kicc ', 34, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(789, '10', 'Upper Hill ', 7, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(790, '105', 'Kisumu ', 34, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(791, '11', 'Naivasha ', 7, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(792, '106', 'Kericho ', 34, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(793, '12', 'Wesgate ', 7, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(794, '107', 'Tom Mboya ', 34, NULL, '2016-03-31 03:34:59', '2016-03-31 03:34:59'),
(795, '13', 'Kisumu ', 7, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(796, '108', 'Thika ', 34, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(797, '14', 'Nakuru ', 7, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(798, '109', 'Eldoret ', 34, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(799, '15', 'Thika ', 7, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(800, '110', 'Kakamega ', 34, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(801, '17', 'Nanyuki ', 7, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(802, '111', 'Kilindini Mombasa ', 34, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(803, '18', 'Meru', 7, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(804, '112', 'Nyeri ', 34, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(805, '19', 'Buruburu', 7, NULL, '2016-03-31 03:35:00', '2016-03-31 03:35:00'),
(806, '113', 'Industrial Area Nairobi ', 34, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(807, '20', 'Gikomba', 7, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(808, '114', 'River Road ', 34, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(809, '21', 'Garden city', 7, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(810, '115', 'Muranga ', 34, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(811, '22', 'ELDORET', 7, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(812, '116', 'Embu ', 34, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(813, '23', 'KAREN', 7, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(814, '117', 'Kangema ', 34, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(815, '24', 'Kisii', 7, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(816, '119', 'Kiambu ', 34, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(817, '25', 'Warwick', 7, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(818, '120', 'Karatina ', 34, NULL, '2016-03-31 03:35:01', '2016-03-31 03:35:01'),
(819, '26', 'Private Clients', 7, NULL, '2016-03-31 03:35:02', '2016-03-31 03:35:02'),
(820, '121', 'Siaya ', 34, NULL, '2016-03-31 03:35:02', '2016-03-31 03:35:02'),
(821, '27', 'Nyali', 7, NULL, '2016-03-31 03:35:02', '2016-03-31 03:35:02'),
(822, '122', 'Nyahururu ', 34, NULL, '2016-03-31 03:35:02', '2016-03-31 03:35:02'),
(823, '28', 'Malindi', 7, NULL, '2016-03-31 03:35:02', '2016-03-31 03:35:02'),
(824, '123', 'Meru ', 34, NULL, '2016-03-31 03:35:02', '2016-03-31 03:35:02'),
(825, '124', 'Mumias ', 34, NULL, '2016-03-31 03:35:03', '2016-03-31 03:35:03'),
(826, '999', 'Central Processing H/o ', 7, NULL, '2016-03-31 03:35:03', '2016-03-31 03:35:03'),
(827, '125', 'Nanyuki ', 34, NULL, '2016-03-31 03:35:03', '2016-03-31 03:35:03'),
(828, '0', 'Head Office', 8, NULL, '2016-03-31 03:35:03', '2016-03-31 03:35:03'),
(829, '127', 'Moyale ', 34, NULL, '2016-03-31 03:35:04', '2016-03-31 03:35:04'),
(830, '1', 'City Centre Branch', 8, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(831, '129', 'Kikuyu ', 34, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(832, '3', 'Village Market ', 8, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(833, '4', 'Mombasa Moi Avenue', 8, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(834, '130', 'Tala ', 34, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(835, '5', 'Hurlingham ', 8, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(836, '131', 'Kajiado ', 34, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(837, '133', 'KCB Custody services', 34, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(838, '6', 'Eastleigh ', 8, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(839, '7', 'Parklands ', 8, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(840, '134', 'Matuu ', 34, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(841, '8', 'Riverside Mews ', 8, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(842, '135', 'Kitui ', 34, NULL, '2016-03-31 03:35:05', '2016-03-31 03:35:05'),
(843, '136', 'Mvita ', 34, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(844, '10', 'Thika ', 8, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(845, '137', 'Jogoo Rd Nairobi ', 34, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(846, '11', 'Nakuru ', 8, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(847, '139', 'Card Centre ', 34, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(848, '12', 'Donholm ', 8, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(849, '13', 'Bondeni Chase Iman ', 8, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(850, '140', 'Marsabit ', 34, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(851, '141', 'Sarit Centre ', 34, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(852, '14', 'Ngara Mini ', 8, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(853, '142', 'Loitokitok ', 34, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(854, '15', 'Kisumu ', 8, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(855, '143', 'Nandi Hills ', 34, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(856, '16', 'Eldoret', 8, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(857, '144', 'Lodwar ', 34, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(858, '17', 'Diamond Plaza', 8, NULL, '2016-03-31 03:35:06', '2016-03-31 03:35:06'),
(859, '145', 'Un Gigiri ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(860, '18', 'Windsor', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(861, '146', 'Hola ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(862, '19', 'Malindi', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(863, '147', 'Ruiru ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(864, '20', 'Embakasi', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(865, '148', 'Mwingi ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(866, '21', 'Upper Hill', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(867, '149', 'Kitale ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(868, '22', 'Nyali', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(869, '150', 'Mandera ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(870, '23', 'Buru Buru', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(871, '151', 'Kapenguria ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(872, '24', 'Strathmore', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(873, '152', 'Kabarnet ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(874, '25', 'Kisii', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(875, '153', 'Wajir ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(876, '26', 'Virtual ', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(877, '154', 'Maralal ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(878, '27', 'Rafiki DTM Clearing Center', 8, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(879, '155', 'Limuru ', 34, NULL, '2016-03-31 03:35:07', '2016-03-31 03:35:07'),
(880, '28', 'Chase Xpress - Ngong Road', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(881, '157', 'Ukunda ', 34, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(882, '29', 'Chase Elite ABC Place', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(883, '158', 'Iten ', 34, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(884, '30', 'Sameer Business Park', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(885, '159', 'Gilgil ', 34, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(886, '31', 'Mtwapa', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(887, '161', 'Ongata Rongai ', 34, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(888, '32', 'Ongata Rongai ', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(889, '162', 'Kitengela ', 34, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(890, '33', 'Westlands', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(891, '163', 'Eldama Ravine ', 34, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(892, '34', 'Machakos', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(893, '164', 'Kibwezi ', 34, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(894, '35', 'Mombasa Old Town', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(895, '166', 'Kapsabet ', 34, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(896, '36', 'River Road', 8, NULL, '2016-03-31 03:35:08', '2016-03-31 03:35:08'),
(897, '167', 'University Way ', 34, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(898, '37', 'Lunga Lunga', 8, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(899, '168', 'KCB Eldoret West', 34, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(900, '38', 'Chase Xpress Dagoretti Corner', 8, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(901, '169', 'Garissa ', 34, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(902, '39', 'Chase Xpress Madaraka Corner', 8, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(903, '173', 'Lamu ', 34, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(904, '40', 'Kitale', 8, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(905, '174', 'Kilifi ', 34, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(906, '41', 'Kimathi', 8, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(907, '175', 'Milimani ', 34, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(908, '42', 'Narok', 8, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(909, '176', 'Nyamira ', 34, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(910, '43', 'SACCO Processing Centre', 8, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(911, '177', 'Mukuruweini ', 34, NULL, '2016-03-31 03:35:09', '2016-03-31 03:35:09'),
(912, '44', 'Garissa', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(913, '180', 'Village Market ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(914, '45', 'KPA', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(915, '181', 'Bomet ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(916, '46', 'Lavington', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(917, '183', 'Mbale ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(918, '47', 'Kericho', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(919, '184', 'Narok ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(920, '48', 'Karen', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(921, '185', 'Othaya ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(922, '49', 'Kilimani', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(923, '186', 'Voi ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(924, '50', 'Kasuku Centre', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(925, '188', 'Webuye ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(926, '51', 'Kilifi', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(927, '189', 'Sotik ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(928, '52', 'Kisumu Naivas', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(929, '190', 'Naivasha ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(930, '53', 'Ruaka', 8, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(931, '191', 'Kisii ', 34, NULL, '2016-03-31 03:35:10', '2016-03-31 03:35:10'),
(932, '54', 'Garden City', 8, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(933, '192', 'Migori ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(934, '0', 'Head Office , Nairobi ', 9, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(935, '193', 'Githunguri ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(936, '400', 'Mombasa ', 9, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(937, '194', 'Machakos ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(938, '500', 'Gigiri Agency ', 9, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(939, '195', 'Kerugoya ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(940, '700', 'Kisumu ', 9, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(941, '196', 'Chuka ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(942, '0', 'Head Office', 10, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(943, '197', 'Bungoma ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(944, '1', 'Upper Hill', 10, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(945, '198', 'Wundanyi ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(946, '2', 'Wabera Street', 10, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(947, '199', 'Malindi ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(948, '3', 'Mama Ngina', 10, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(949, '201', 'Capital Hill ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(950, '4', 'Westlands Branch', 10, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(951, '202', 'Karen ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(952, '5', 'Industrial Area ', 10, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(953, '203', 'Lokichogio ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(954, '6', 'Mamlaka', 10, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(955, '204', 'Gateway Msa Road ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(956, '7', 'Village Market', 10, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(957, '205', 'Buruburu ', 34, NULL, '2016-03-31 03:35:11', '2016-03-31 03:35:11'),
(958, '8', 'Cargo Centre', 10, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(959, '206', 'Chogoria ', 34, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(960, '9', 'Park Side', 10, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(961, '207', 'Kangare ', 34, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(962, '16', 'Galleria Mall ', 10, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(963, '208', 'Kianyaga ', 34, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(964, '17', 'Junction', 10, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(965, '209', 'Nkubu ', 34, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(966, '18', 'Thika Road Mall', 10, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(967, '210', 'Ol Kalou ', 34, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(968, '19', 'Greenspan Mall', 10, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(969, '211', 'Makuyu ', 34, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(970, '20', 'Moi Avenue Mombasa ', 10, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(971, '212', 'Mwea ', 34, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(972, '21', 'Meru', 10, NULL, '2016-03-31 03:35:12', '2016-03-31 03:35:12'),
(973, '213', 'Njambini ', 34, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(974, '22', 'Nakuru', 10, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(975, '214', 'Gatundu ', 34, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(976, '23', 'Bamburi', 10, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(977, '215', 'Emali ', 34, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(978, '24', 'Diani', 10, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(979, '216', 'Isiolo ', 34, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(980, '25', 'Changamwe', 10, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(981, '217', 'KCB Flamingo', 34, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(982, '26', 'Eldoret', 10, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(983, '218', 'Njoro ', 34, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(984, '27', 'Kisumu', 10, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(985, '219', 'Mutomo ', 34, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(986, '28', 'Thika', 10, NULL, '2016-03-31 03:35:13', '2016-03-31 03:35:13'),
(987, '220', 'Mariakani ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(988, '29', 'Nanyuki', 10, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(989, '221', 'Mpeketoni ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(990, '30', 'Yaya Centre', 10, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(991, '222', 'Mtitu Andei ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(992, '31', 'Lavington', 10, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(993, '223', 'Mtwapa ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(994, '32', 'Machakos', 10, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(995, '224', 'Taveta ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(996, '0', 'Harambee Avenue ', 11, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(997, '225', 'Kengeleni ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(998, '1', 'Muranga ', 11, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(999, '226', 'Garsen ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1000, '2', 'Embu ', 11, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1001, '227', 'Watamu ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1002, '3', 'Mombasa ', 11, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1003, '228', 'Bondo ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1004, '4', 'Koinange Street ', 11, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1005, '229', 'Busia ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1006, '5', 'Thika ', 11, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1007, '230', 'Homa Bay ', 34, NULL, '2016-03-31 03:35:14', '2016-03-31 03:35:14'),
(1008, '6', 'Meru ', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1009, '231', 'Kapsowar ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1010, '7', 'Nyeri ', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1011, '232', 'Kehancha ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1012, '8', 'Laare', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1013, '233', 'Keroka ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1014, '9', 'Maua ', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1015, '234', 'Kilgoris ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1016, '10', 'Isiolo ', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1017, '235', 'Kimilili ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1018, '11', 'Head Office ', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1019, '236', 'Litein ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1020, '12', 'Corporate', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1021, '237', 'Londiani Branch ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1022, '13', 'Umoja ', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1023, '238', 'Luanda ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1024, '14', 'River Road ', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1025, '239', 'Malaba ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1026, '15', 'Eldoret', 11, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1027, '240', 'Muhoroni ', 34, NULL, '2016-03-31 03:35:15', '2016-03-31 03:35:15'),
(1028, '16', 'Nakuru', 11, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1029, '241', 'Oyugis ', 34, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1030, '17', 'Kitengela', 11, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1031, '242', 'Ugunja ', 34, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1032, '18', 'Taj Mall', 11, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1033, '243', 'United Mall ', 34, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1034, '0', 'Head Office ', 12, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1035, '244', 'Serem ', 34, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1036, '1', 'Finance And Accounts ', 12, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1037, '245', 'Sondu ', 34, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1038, '2', 'Co-op House ', 12, NULL, '2016-03-31 03:35:16', '2016-03-31 03:35:16'),
(1039, '3', 'Kisumu ', 12, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1040, '246', 'Kisumu West ', 34, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1041, '4', 'Nkurumah Road', 12, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1042, '247', 'Marigat ', 34, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1043, '5', 'Meru ', 12, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1044, '248', 'Mois Bridge ', 34, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1045, '6', 'Nakuru ', 12, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1046, '249', 'Mashariki ', 34, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1047, '7', 'Industrial Area ', 12, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1048, '250', 'Naro Moro ', 34, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1049, '8', 'Kisii ', 12, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1050, '251', 'Kiriaini ', 34, NULL, '2016-03-31 03:35:17', '2016-03-31 03:35:17'),
(1051, '9', 'Machakos ', 12, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1052, '252', 'Egerton University ', 34, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1053, '10', 'Nyeri ', 12, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1054, '253', 'Maua ', 34, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1055, '11', 'Ukulima ', 12, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1056, '254', 'Kawangare ', 34, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1057, '12', 'Kerugoya ', 12, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1058, '255', 'Kimathi ', 34, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1059, '13', 'Eldoret ', 12, NULL, '2016-03-31 03:35:18', '2016-03-31 03:35:18'),
(1060, '256', 'Namanga ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1061, '14', 'Moi Avenue ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1062, '257', 'Gikomba ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1063, '15', 'Naivasha ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1064, '258', 'Kwale ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1065, '17', 'Nyahururu ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1066, '259', 'Prestige Plaza ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1067, '18', 'Chuka ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1068, '260', 'Kariobangi ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1069, '19', 'Wakulima Market ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1070, '263', 'Biashara Street ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1071, '20', 'Eastleigh ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1072, '266', 'Ngara ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1073, '21', 'Kiambu ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1074, '267', 'Kyuso ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1075, '22', 'Homa Bay ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1076, '270', 'Masii ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1077, '23', 'Embu ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1078, '271', 'Menengai Crater', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1079, '24', 'Kericho ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1080, '272', 'Town Centre ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1081, '25', 'Bungoma ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1082, '278', 'Makindu ', 34, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1083, '26', 'Muranga ', 12, NULL, '2016-03-31 03:35:19', '2016-03-31 03:35:19'),
(1084, '283', 'Rongo ', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1085, '27', 'Kayole ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1086, '284', 'Isibania ', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1087, '28', 'Karatina ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1088, '285', 'Kiserian ', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1089, '29', 'Ukunda ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1090, '286', 'Mwembe Tayari ', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1091, '30', 'Mtwapa ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1092, '287', 'Kisauni ', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1093, '31', 'University Way ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1094, '288', 'Haile Selassie ', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1095, '32', 'Buru Buru ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1096, '289', 'Salama House Mortgage Centre', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1097, '33', 'Athi River ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1098, '290', 'Garden Plaza ', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1099, '34', 'Mumias ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1100, '291', 'Sarit Centre Mortgage Centre', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1101, '35', 'Stima Plaza ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1102, '292', 'Cpc Bulk Corporate Cheques ', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1103, '36', 'Westlands ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1104, '293', 'Trade Services', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1105, '37', 'Upper Hill ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1106, '295', 'Nairobi High Court', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1107, '38', 'Ongata Rongai ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1108, '296', 'Mombasa High Court', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1109, '39', 'Thika ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1110, '297', 'Kisumu Airport', 34, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1111, '40', 'Nacico ', 12, NULL, '2016-03-31 03:35:20', '2016-03-31 03:35:20'),
(1112, '298', 'Port Victoria', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1113, '41', 'Kariobangi ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1114, '299', 'Moi International Airport', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1115, '42', 'Kawangware ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1116, '300', 'Nyali', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1117, '43', 'Makutano ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1118, '301', 'Westgate Advantage', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1119, '44', 'Canon House ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1120, '302', 'Diaspora ', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1121, '45', 'Kimathi Street ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1122, '303', 'Kisii West ', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1123, '46', 'Kitale ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1124, '304', 'Mbita', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1125, '47', 'Githurai ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1126, '305', 'Sori', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1127, '48', 'Maua ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1128, '306', 'Hurlingham', 34, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1129, '49', 'City  Hall ', 12, NULL, '2016-03-31 03:35:21', '2016-03-31 03:35:21'),
(1130, '307', 'Kibera', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1131, '50', 'Digo Rd ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1132, '308', 'Thika Road Mall Branch', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1133, '51', 'Nbc ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1134, '309', 'Kasarani Branch', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1135, '52', 'Kakamega', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1136, '310', 'KCB Maasai Mara', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1137, '53', 'Migori ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1138, '311', 'KCB Kabartonjo', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1139, '54', 'Kenyatta Avenue ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1140, '312', 'KCB Eldoret East', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1141, '55', 'Nkubu ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1142, '313', 'Kikim', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1143, '56', 'Enterprise Road ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1144, '314', 'KCB JKUAT', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1145, '57', 'Busia ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1146, '315', 'KCB Changamwe', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1147, '58', 'Siaya ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1148, '316', 'KCB Makongeni', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1149, '59', 'Voi ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1150, '317', 'KCB Syokimau', 34, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1151, '60', 'Mariakani ', 12, NULL, '2016-03-31 03:35:22', '2016-03-31 03:35:22'),
(1152, '318', 'KCB Moi Referral Hospital', 34, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1153, '61', 'Malindi ', 12, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1154, '319', 'KCB Kitale Advantage', 34, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1155, '62', 'Zimmerman ', 12, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1156, '320', 'KCB Lavington', 34, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1157, '63', 'Nakuru East ', 12, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1158, '321', 'KCB ICD Kibarani', 34, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1159, '64', 'Kitengela ', 12, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1160, '322', 'KCB Riverside Advantage', 34, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1161, '65', 'Aga Khan Walk ', 12, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1162, '323', 'KCB Gigiri Square', 34, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1163, '66', 'Narok ', 12, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1164, NULL, 'head quarters', 35, NULL, '2016-03-31 03:35:23', '2016-03-31 03:35:23'),
(1165, '67', 'Kitui ', 12, NULL, '2016-03-31 03:35:24', '2016-03-31 03:35:24'),
(1166, NULL, 'North –Rift', 35, NULL, '2016-03-31 03:35:24', '2016-03-31 03:35:24'),
(1167, '68', 'Nanyuki ', 12, NULL, '2016-03-31 03:35:24', '2016-03-31 03:35:24'),
(1168, NULL, 'Nandi hills', 35, NULL, '2016-03-31 03:35:24', '2016-03-31 03:35:24'),
(1169, '69', 'Embakasi ', 12, NULL, '2016-03-31 03:35:24', '2016-03-31 03:35:24'),
(1170, NULL, 'Eldoret', 35, NULL, '2016-03-31 03:35:25', '2016-03-31 03:35:25'),
(1171, '70', 'Kibera ', 12, NULL, '2016-03-31 03:35:25', '2016-03-31 03:35:25'),
(1172, NULL, 'Trans-Nzoia', 35, NULL, '2016-03-31 03:35:25', '2016-03-31 03:35:25'),
(1173, '71', 'Siakago ', 12, NULL, '2016-03-31 03:35:25', '2016-03-31 03:35:25'),
(1174, NULL, 'Bomet', 35, NULL, '2016-03-31 03:35:25', '2016-03-31 03:35:25'),
(1175, '72', 'Kapsabet ', 12, NULL, '2016-03-31 03:35:25', '2016-03-31 03:35:25'),
(1176, NULL, 'Kericho', 35, NULL, '2016-03-31 03:35:25', '2016-03-31 03:35:25'),
(1177, '73', 'Mbita ', 12, NULL, '2016-03-31 03:35:25', '2016-03-31 03:35:25'),
(1178, NULL, 'Lodwar ', 35, NULL, '2016-03-31 03:35:26', '2016-03-31 03:35:26'),
(1179, '74', 'Kangemi ', 12, NULL, '2016-03-31 03:35:26', '2016-03-31 03:35:26'),
(1180, NULL, 'Malaba ', 35, NULL, '2016-03-31 03:35:26', '2016-03-31 03:35:26'),
(1181, '75', 'Dandora ', 12, NULL, '2016-03-31 03:35:26', '2016-03-31 03:35:26'),
(1182, NULL, 'Kakamega', 35, NULL, '2016-03-31 03:35:26', '2016-03-31 03:35:26'),
(1183, '76', 'Kajiado ', 12, NULL, '2016-03-31 03:35:26', '2016-03-31 03:35:26'),
(1184, NULL, 'Serem ', 35, NULL, '2016-03-31 03:35:26', '2016-03-31 03:35:26'),
(1185, '77', 'Tala ', 12, NULL, '2016-03-31 03:35:26', '2016-03-31 03:35:26'),
(1186, NULL, 'Nakuru', 35, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1187, '78', 'Gikomba ', 12, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1188, NULL, 'Njambini', 35, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1189, '79', 'River Road ', 12, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1190, NULL, 'Gilgil ', 35, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1191, '80', 'Nyamira ', 12, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1192, NULL, 'Embu', 35, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1193, '81', 'Garisa ', 12, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1194, NULL, 'Mwea', 35, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1195, '82', 'Bomet ', 12, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1196, NULL, 'Tharaka', 35, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1197, '83', 'Keroka ', 12, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1198, NULL, 'Mbeere', 35, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1199, '84', 'Gilgil ', 12, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1200, NULL, 'Nkubu', 35, NULL, '2016-03-31 03:35:27', '2016-03-31 03:35:27'),
(1201, '85', 'Tom Mboya ', 12, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1202, NULL, 'Meru', 35, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1203, '86', 'Likoni ', 12, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1204, NULL, 'Maua', 35, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1205, '87', 'Donholm ', 12, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28');
INSERT INTO `bank_branches` (`id`, `branch_code`, `bank_branch_name`, `bank_id`, `organization_id`, `created_at`, `updated_at`) VALUES
(1206, NULL, 'Mount Kenya', 35, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1207, '88', 'Mwingi ', 12, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1208, NULL, 'Narumoru', 35, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1209, '89', 'Ruaka', 12, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1210, NULL, 'Othaya', 35, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1211, '90', 'Webuye', 12, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1212, NULL, 'Mukurweini', 35, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1213, '94', 'Sacco Clearing Unit', 12, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1214, NULL, 'Machakos', 35, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1215, '97', 'clearing Centre', 12, NULL, '2016-03-31 03:35:28', '2016-03-31 03:35:28'),
(1216, NULL, 'Matuu ', 35, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1217, '100', 'Ndhiwa', 12, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1218, NULL, 'Masii ', 35, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1219, '101', 'Oyugis', 12, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1220, NULL, 'Kyuso', 35, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1221, '102', 'Isiolo', 12, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1222, NULL, 'Machakos 760 Hotel', 35, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1223, '103', 'Eldoret West', 12, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1224, NULL, 'Mwingi ', 35, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1225, '104', 'Changamwe', 12, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1226, NULL, 'Tala ', 35, NULL, '2016-03-31 03:35:29', '2016-03-31 03:35:29'),
(1227, '105', 'Kisumu East', 12, NULL, '2016-03-31 03:35:30', '2016-03-31 03:35:30'),
(1228, NULL, 'Kitui', 35, NULL, '2016-03-31 03:35:30', '2016-03-31 03:35:30'),
(1229, '106', 'Githurai Kimbo', 12, NULL, '2016-03-31 03:35:30', '2016-03-31 03:35:30'),
(1230, NULL, 'Migori', 35, NULL, '2016-03-31 03:35:30', '2016-03-31 03:35:30'),
(1231, '107', 'Mlolongo', 12, NULL, '2016-03-31 03:35:30', '2016-03-31 03:35:30'),
(1232, NULL, 'Thika', 35, NULL, '2016-03-31 03:35:30', '2016-03-31 03:35:30'),
(1233, '108', 'Kilifi', 12, NULL, '2016-03-31 03:35:30', '2016-03-31 03:35:30'),
(1234, NULL, 'Ruiru', 35, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1235, '109', 'Ol Kalau', 12, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1236, NULL, 'Gatundu ', 35, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1237, '110', 'Mbale', 12, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1238, '111', 'Kimilili', 12, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1239, NULL, 'Githurai 45', 35, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1240, '112', 'Kisii East', 12, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1241, NULL, 'Kiambu', 35, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1242, '113', 'Kilgoris', 12, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1243, NULL, 'Nairobi', 35, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1244, '114', 'Wote', 12, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1245, '116', 'Malaba', 12, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1246, NULL, 'Gikomba', 35, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1247, '117', 'Molo', 12, NULL, '2016-03-31 03:35:31', '2016-03-31 03:35:31'),
(1248, NULL, 'Nairobi west', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1249, '118', 'Mwea', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1250, NULL, 'Embakasi', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1251, '119', 'Kutus', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1252, NULL, 'River road', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1253, '120', 'Umoja', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1254, NULL, 'Kibwezi ', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1255, '121', 'Embakasi Junction', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1256, NULL, 'Emali', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1257, '122', 'Kongowea ', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1258, NULL, 'Nunguni', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1259, '123', 'Langata Road', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1260, NULL, 'Wote ', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1261, '124', 'Juja', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1262, NULL, 'Loitoktok', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1263, '125', 'Ngong', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1264, NULL, 'Taveta ', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1265, '126', 'Kawangware 46', 12, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1266, NULL, 'Garsen', 35, NULL, '2016-03-31 03:35:32', '2016-03-31 03:35:32'),
(1267, '127', 'Mombasa Road', 12, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1268, NULL, 'Wundanyi ', 35, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1269, '128', 'Marsabit', 12, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1270, NULL, 'Mwatate', 35, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1271, '130', 'Dagoretti', 12, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1272, NULL, 'Voi ', 35, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1273, '131', 'Othaya', 12, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1274, NULL, 'Kitengela', 35, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1275, '132', 'Limuru', 12, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1276, NULL, 'Mombasa', 35, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1277, '133', 'Kikuyu', 12, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1278, NULL, 'Malindi', 35, NULL, '2016-03-31 03:35:33', '2016-03-31 03:35:33'),
(1279, '134', 'Githunguri', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1280, '0', 'Head Office ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1281, '135', 'Karen', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1282, '1', 'Main Office ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1283, '136', 'Mpeketoni', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1284, '2', 'Mombasa ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1285, '137', 'Gatundu', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1286, '3', 'Kenyatta Ave Nbi ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1287, '138', 'Ruiru', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1288, '4', 'Nakuru ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1289, '139', 'Nyali Mall ', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1290, '5', 'Nyeri ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1291, '140', 'Yala', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1292, '6', 'Buruburu ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1293, '141', 'Maasai Mall - Ongata Rongai', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1294, '7', 'Embu ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1295, '142', 'Thika Road Mall', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1296, '8', 'Eldoret ', 36, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1297, '143', 'Kiserian', 12, NULL, '2016-03-31 03:35:34', '2016-03-31 03:35:34'),
(1298, '9', 'Kisumu ', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1299, '144', 'Nandi Hills', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1300, '10', 'Kericho ', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1301, '145', 'Lodwar', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1302, '11', 'Mlolongo', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1303, '147', 'Engineer', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1304, '12', 'Thika ', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1305, '148', 'Rongo', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1306, '13', 'Kerugoya', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1307, '149', 'Lavington Mall', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1308, '14', 'Kenyatta Market ', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1309, '150', 'Bondo', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1310, '15', 'Kisii ', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1311, '151', 'Gigiri Mall', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1312, '16', 'CHUKA', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1313, '152', 'United Mall, Kisumu', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1314, '17', 'Kitui ', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1315, '153', 'Green House Mall', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1316, '18', 'Machakos ', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1317, '228', 'Shares Operations ', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1318, '19', 'Nanyuki ', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1319, '247', 'Back Office Operations', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1320, '20', 'Kangemi', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1321, '250', 'E- Channels Unit', 12, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1322, '21', 'Email', 36, NULL, '2016-03-31 03:35:35', '2016-03-31 03:35:35'),
(1323, '254', 'Diaspora Banking', 12, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1324, '22', 'Naivasha ', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1325, '266', 'Kilindini Port ', 12, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1326, '23', 'Nyahururu ', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1327, '270', 'Money Transfers Agency ', 12, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1328, '24', 'Isiolo ', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1329, '0', 'Head Office', 13, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1330, '25', 'Meru ', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1331, '1', 'Koinange Street', 13, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1332, '26', 'Kitale ', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1333, '2', 'Kisumu', 13, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1334, '27', 'Kibwezi ', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1335, '3', 'Nakuru', 13, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1336, '28', 'Bungoma ', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1337, '4', 'Kisii', 13, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1338, '29', 'Kajiado ', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1339, '5', 'Westlands ', 13, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1340, '30', 'Nkubu', 36, NULL, '2016-03-31 03:35:36', '2016-03-31 03:35:36'),
(1341, '6', 'Industrial Area ', 13, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1342, '31', 'Mtwapa ', 36, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1343, '8', 'Nakuru, Kenyatta Avenue', 13, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1344, '32', 'Busia', 36, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1345, '9', 'Eldoret', 13, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1346, '33', 'Moi Nbi ', 36, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1347, '10', 'Rongai', 13, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1348, '34', 'Mwea ', 36, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1349, '11', 'Mombasa- Nyali Centre', 13, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1350, '35', 'Kengeleni ', 36, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1351, '12', 'Thika', 13, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1352, '36', 'Kilimani ', 36, NULL, '2016-03-31 03:35:37', '2016-03-31 03:35:37'),
(1353, '13', 'Lavington Mall', 13, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1354, '37', 'Rongai', 36, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1355, '14', 'Machakos', 13, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1356, '0', 'Head Office ', 37, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1357, '15', 'Kitengela', 13, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1358, '1', 'Nairobi ', 37, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1359, '0', 'Head Office', 14, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1360, '2', 'Mombasa ', 37, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1361, '1', 'Loita Street', 14, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1362, '3', 'Milimani ', 37, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1363, '0', 'Head Office ', 15, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1364, '4', 'Industrial Area', 37, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1365, '1', 'Nation Centre ', 15, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1366, '5', 'Eldoret', 37, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1367, '2', 'Mombasa ', 15, NULL, '2016-03-31 03:35:38', '2016-03-31 03:35:38'),
(1368, '0', 'Central Business Unit', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1369, '3', 'Kisumu ', 15, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1370, '2', 'Kenyatta', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1371, '5', 'Parklands ', 15, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1372, '3', 'Harambee ', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1373, '6', 'Westgate ', 15, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1374, '4', 'Hill ', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1375, '8', 'Mombasa Rd ', 15, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1376, '5', 'Busia ', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1377, '9', 'Ind Area ', 15, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1378, '6', 'Kiambu', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1379, '10', 'Kisii ', 15, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1380, '7', 'Meru ', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1381, '11', 'Malindi ', 15, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1382, '8', 'Karatina ', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1383, '12', 'Thika ', 15, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1384, '9', 'Narok ', 38, NULL, '2016-03-31 03:35:39', '2016-03-31 03:35:39'),
(1385, '13', 'Otc ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1386, '10', 'Kisii ', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1387, '14', 'Eldoret ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1388, '11', 'Malindi ', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1389, '15', 'Eastleigh ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1390, '12', 'Nyeri ', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1391, '16', 'Changamwe ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1392, '13', 'Kitale ', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1393, '17', 'T-mall ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1394, '15', 'Eastleigh', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1395, '18', 'Nakuru ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1396, '16', 'Limuru ', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1397, '19', 'Village Market ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1398, '17', 'Kitui ', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1399, '20', 'Diani ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1400, '18', 'Molo ', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1401, '21', 'Bungoma ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1402, '19', 'Bungoma ', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1403, '22', 'Kitale ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1404, '20', 'Nkrumah', 38, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1405, '23', 'Prestige ', 15, NULL, '2016-03-31 03:35:40', '2016-03-31 03:35:40'),
(1406, '21', 'Kapsabet ', 38, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1407, '24', 'Buru Buru ', 15, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1408, '22', 'Awendo ', 38, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1409, '25', 'Kitengela ', 15, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1410, '23', 'Portway-msa ', 38, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1411, '26', 'Jomo Kenyatta Branch ', 15, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1412, '25', 'Hospital Br. ', 38, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1413, '27', 'Kakamega ', 15, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1414, '26', 'Ruiru ', 38, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1415, '28', 'Kericho ', 15, NULL, '2016-03-31 03:35:41', '2016-03-31 03:35:41'),
(1416, '27', 'Ongata Rongai ', 38, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1417, '29', 'Upper Hill ', 15, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1418, '28', 'Embu ', 38, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1419, '30', 'Wabera Street ', 15, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1420, '29', 'Kakamega ', 38, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1421, '31', 'Karen ', 15, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1422, '30', 'Nakuru ', 38, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1423, '32', 'Voi ', 15, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1424, '31', 'Ukunda ', 38, NULL, '2016-03-31 03:35:42', '2016-03-31 03:35:42'),
(1425, '33', 'Shimanzi ', 15, NULL, '2016-03-31 03:35:43', '2016-03-31 03:35:43'),
(1426, '32', 'Upper Hill ', 38, NULL, '2016-03-31 03:35:44', '2016-03-31 03:35:44'),
(1427, '34', 'Meru ', 15, NULL, '2016-03-31 03:35:45', '2016-03-31 03:35:45'),
(1428, '33', 'Nandi Hills ', 38, NULL, '2016-03-31 03:35:45', '2016-03-31 03:35:45'),
(1429, '35', 'Diamond Plaza ', 15, NULL, '2016-03-31 03:35:45', '2016-03-31 03:35:45'),
(1430, '34', 'Migori ', 38, NULL, '2016-03-31 03:35:45', '2016-03-31 03:35:45'),
(1431, '36', 'crossroad', 15, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1432, '35', 'Westlands ', 38, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1433, '36', 'Times Tower', 38, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1434, '37', 'JKIA', 15, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1435, '37', 'Maua', 38, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1436, '38', 'Nyali ', 15, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1437, '38', 'WILSON AIRPORT', 38, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1438, '39', 'Migori Branch', 15, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1439, '39', 'J.K.I.A.', 38, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1440, '40', 'Madina Mall', 15, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1441, '40', 'Eldoret ', 38, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1442, '41', 'Courtyard Branch', 15, NULL, '2016-03-31 03:35:46', '2016-03-31 03:35:46'),
(1443, '41', 'MOIS BRIDGE', 38, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1444, '42', 'Mtwapa Branch', 15, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1445, '42', 'MUTOMO', 38, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1446, '43', 'Lamu Branch', 15, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1447, '43', 'KIANJAI', 38, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1448, '44', 'Kilifi Branch', 15, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1449, '44', 'KENYATTA UNIVERSITY', 38, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1450, '45', 'Mariakani Branch', 15, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1451, '45', 'ST PAULS UNIVERSITY', 38, NULL, '2016-03-31 03:35:47', '2016-03-31 03:35:47'),
(1452, '46', 'Thika Road Mall', 15, NULL, '2016-03-31 03:35:48', '2016-03-31 03:35:48'),
(1453, '46', 'MOI UNIVERSITY ELDORET', 38, NULL, '2016-03-31 03:35:48', '2016-03-31 03:35:48'),
(1454, '47', 'Ronald Ngala', 15, NULL, '2016-03-31 03:35:48', '2016-03-31 03:35:48'),
(1455, '47', 'MOI INT AIRPORT MOMBASA', 38, NULL, '2016-03-31 03:35:48', '2016-03-31 03:35:48'),
(1456, '48', 'Busia', 15, NULL, '2016-03-31 03:35:48', '2016-03-31 03:35:48'),
(1457, '48', 'Machakos', 38, NULL, '2016-03-31 03:35:48', '2016-03-31 03:35:48'),
(1458, '49', 'West End Mall - Kisumu', 15, NULL, '2016-03-31 03:35:48', '2016-03-31 03:35:48'),
(1459, '49', 'Kitengela', 38, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1460, '50', 'Tom Mboya ', 15, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1461, '50', 'Kisumu ', 38, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1462, '51', 'Mtwapa', 38, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1463, '52', 'DTB Centre', 15, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1464, '52', 'Changamwe', 38, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1465, '53', 'South C', 15, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1466, '53', 'Garissa', 38, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1467, '54', 'Lavington', 15, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1468, '54', 'Thika', 38, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1469, '55', '9 West', 15, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1470, '56', 'Biashara street, Nakuru', 15, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1471, '55', 'Momasa Polytechnic University College', 38, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1472, '56', 'Bomet', 38, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1473, '0', 'Head Office ', 16, NULL, '2016-03-31 03:35:49', '2016-03-31 03:35:49'),
(1474, '1', 'Eastleigh ', 16, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1475, '58', 'Greenspan', 38, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1476, '59', 'Sameer Park', 38, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1477, '2', 'Mombasa ', 16, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1478, '3', 'Mombasa ', 16, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1479, '60', 'SEKU', 38, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1480, '4', 'Nakuru ', 16, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1481, '61', 'Ngong Road', 38, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1482, '20', 'Nakuru ', 16, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1483, '62', 'Moi Avenue', 38, NULL, '2016-03-31 03:35:50', '2016-03-31 03:35:50'),
(1484, '0', 'Fedha Branch , Head Office ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1485, '63', 'Mountain Mall', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1486, '1', 'Moi Avenue Nairobi ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1487, '65', 'Nyali Centre', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1488, '2', 'Akiba Hse Mombasa ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1489, '66', 'Kilifi', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1490, '3', 'Plaza 2000 ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1491, '67', 'South C Branch- KEBS', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1492, '4', 'Westminister ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1493, '68', 'Kericho', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1494, '5', 'Chambers ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1495, '70', 'Isiolo', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1496, '6', 'Thika ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1497, '7', 'Eldoret ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1498, '71', 'South C - Red Cross', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1499, '8', 'Kisumu ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1500, '72', 'National Bank Premium Banking Kisumu', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1501, '9', 'Kisii ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1502, '73', 'Yaya Centre', 38, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1503, '10', 'Kitale ', 17, NULL, '2016-03-31 03:35:51', '2016-03-31 03:35:51'),
(1504, '74', 'Gigiri', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1505, '11', 'Industrial Area ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1506, '93', 'Wajir', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1507, '12', 'Karatina ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1508, '94', 'Bondeni', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1509, '13', 'Westlands ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1510, '95', 'Lunga Lunga', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1511, '14', 'United Mall ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1512, '96', 'Mandera', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1513, '15', 'Nakuru ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1514, '98', 'Card Centre ', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1515, '16', 'Jomo Kenyatta Avenue ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1516, '99', 'Head Office', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1517, '17', 'Nyeri ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1518, '198', 'Central CLearing Centre', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1519, '18', 'Busia ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1520, '200', 'Head Office Amanah', 38, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1521, '19', 'Malindi ', 17, NULL, '2016-03-31 03:35:52', '2016-03-31 03:35:52'),
(1522, '201', 'Card Centre Amanah', 38, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1523, '20', 'Meru', 17, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1524, '202', 'Eastleigh Amanah', 38, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1525, '21', 'Gikomba', 17, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1526, '203', 'Kenyatta Ave Amanah', 38, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1527, '22', 'UpperHill', 17, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1528, '204', 'Wajir Amanah', 38, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1529, '205', 'Bondeni Amanah', 38, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1530, '23', 'Valley Arcade', 17, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1531, '206', 'Garissa Amanah', 38, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1532, '24', 'Karen', 17, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1533, '207', 'Mandera Amanah', 38, NULL, '2016-03-31 03:35:53', '2016-03-31 03:35:53'),
(1534, '25', 'Nyali Mombasa', 17, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1535, '208', 'Isiolo Amanah', 38, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1536, '26', 'Ongata Rongai', 17, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1537, '0', 'Head Office', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1538, '27', 'Embakasi', 17, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1539, '101', 'City Centre', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1540, '28', 'Kitengela', 17, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1541, '102', 'NIC House', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1542, '29', 'Thika Mall', 17, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1543, '103', 'Harbour House ', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1544, '100', 'Head Office ', 17, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1545, '104', 'Head Office-Fargo', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1546, '0', 'Nairobi ', 18, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1547, '105', 'Westlands ', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1548, '1', 'Nyerere ', 18, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1549, '106', 'The Junction Br. ', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1550, '2', 'Mombasa ', 18, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1551, '107', 'Nakuru ', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1552, '3', 'Westlands ', 18, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1553, '108', 'Nyali ', 39, NULL, '2016-03-31 03:35:54', '2016-03-31 03:35:54'),
(1554, '4', 'Mombasa Road ', 18, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1555, '109', 'Nkrumah Road ', 39, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1556, '5', 'Chester ', 18, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1557, '110', 'Harambee ', 39, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1558, '7', 'Waiyaki Way ', 18, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1559, '111', 'Prestige - Ngong Road ', 39, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1560, '8', 'Kakamega ', 18, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1561, '112', 'Kisumu ', 39, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1562, '9', 'Eldoret ', 18, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1563, '113', 'Thika ', 39, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1564, '10', 'Senator Cards', 18, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1565, '114', 'Meru', 39, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1566, '11', 'Nyali ', 18, NULL, '2016-03-31 03:35:55', '2016-03-31 03:35:55'),
(1567, '115', 'Galleria (bomas ', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1568, '12', 'Kisumu ', 18, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1569, '116', 'ELDORET', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1570, '13', 'Industrial Area ', 18, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1571, '117', 'VILLAGE MARKET', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1572, '15', 'Nakuru', 18, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1573, '118', 'SAMEER PARK', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1574, '16', 'Ongata Rongai', 18, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1575, '119', 'Karen', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1576, '0', 'Equity Bank Head Office ', 19, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1577, '121', 'Taj Mall', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1578, '1', 'Equity Bank Corporate ', 19, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1579, '122', 'ABC', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1580, '2', 'Equity Bank Fourways ', 19, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1581, '123', 'Thika Road Mall ', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1582, '3', 'Kangema ', 19, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1583, '124', 'Changamwe Branch', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1584, '4', 'Karatina ', 19, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1585, '125', 'Kenyatta Avenue', 39, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1586, '5', 'Kiriaini ', 19, NULL, '2016-03-31 03:35:56', '2016-03-31 03:35:56'),
(1587, '126', 'Riverside', 39, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1588, '6', 'Murarandia ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1589, '127', 'Machakos', 39, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1590, '7', 'Kangari ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1591, '128', 'Lunga Lunga', 39, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1592, '8', 'Othaya ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1593, '0', 'Head Office ', 40, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1594, '9', 'Thika / Equity Plaza ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1595, '1', 'Koinange Street ', 40, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1596, '10', 'Kerugoya ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1597, '3', 'Nakuru ', 40, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1598, '11', 'Nyeri ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1599, '4', 'Nakuru ', 40, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1600, '12', 'Tom Mboya ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1601, '5', 'Eldoret ', 40, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1602, '13', 'Nakuru ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1603, '6', 'Kitale ', 40, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1604, '14', 'Meru ', 19, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1605, '7', 'Westlands ', 40, NULL, '2016-03-31 03:35:57', '2016-03-31 03:35:57'),
(1606, '15', 'Mama Ngina ', 19, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1607, '8', 'Nakumatt Mega', 40, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1608, '16', 'Nyahururu ', 19, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1609, '9', 'Thika Road Mall', 40, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1610, '17', 'Community ', 19, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1611, '10', 'Mombasa', 40, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1612, '18', 'Community Corporate ', 19, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1613, '0', 'Head Office ', 41, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1614, '19', 'Embu ', 19, NULL, '2016-03-31 03:35:58', '2016-03-31 03:35:58'),
(1615, '1', 'Westlands ', 41, NULL, '2016-03-31 03:35:59', '2016-03-31 03:35:59'),
(1616, '20', 'Naivasha ', 19, NULL, '2016-03-31 03:35:59', '2016-03-31 03:35:59'),
(1617, '2', 'Parklands ', 41, NULL, '2016-03-31 03:35:59', '2016-03-31 03:35:59'),
(1618, '21', 'Chuka ', 19, NULL, '2016-03-31 03:35:59', '2016-03-31 03:35:59'),
(1619, '3', 'Koinange Street ', 41, NULL, '2016-03-31 03:35:59', '2016-03-31 03:35:59'),
(1620, '22', 'Muranga ', 19, NULL, '2016-03-31 03:35:59', '2016-03-31 03:35:59'),
(1621, '4', 'Mombasa ', 41, NULL, '2016-03-31 03:35:59', '2016-03-31 03:35:59'),
(1622, '23', 'Molo ', 19, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1623, '6', 'Eldoret', 41, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1624, '24', 'Harambee Avenu ', 19, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1625, '7', 'Industrial Area', 41, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1626, '25', 'Mombasa ', 19, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1627, '0', 'H/o Riverside ', 42, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1628, '26', 'Kimathi Street ', 19, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1629, '1', 'Kenindia ', 42, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1630, '27', 'Nanyuki ', 19, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1631, '2', 'Biashara ', 42, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1632, '28', 'Kericho ', 19, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1633, '3', 'Mombasa ', 42, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1634, '29', 'Kisumu ', 19, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1635, '4', 'Westlands ', 42, NULL, '2016-03-31 03:36:00', '2016-03-31 03:36:00'),
(1636, '30', 'Eldoret ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1637, '5', 'Industrial Area ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1638, '31', 'Nakuru Kenyatta Avenue ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1639, '6', 'Kisumu ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1640, '32', 'Kariobangi ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1641, '7', 'Parklands ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1642, '33', 'Kitale ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1643, '8', 'Riverside Drive ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1644, '34', 'Thika Kenyatta Avenue ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1645, '9', 'Card Centre ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1646, '35', 'Knut House ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1647, '10', 'Hurlingham ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1648, '36', 'Narok ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1649, '11', 'Capital Centre ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1650, '37', 'Nkubu ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1651, '12', 'Nyali ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1652, '38', 'Mwea ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1653, '14', 'Kamukunji ', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1654, '39', 'Matuu ', 19, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1655, '15', 'Eldoret', 42, NULL, '2016-03-31 03:36:01', '2016-03-31 03:36:01'),
(1656, '40', 'Maua ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1657, '16', 'Karen ', 42, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1658, '41', 'Isiolo ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1659, '17', 'Nakuru ', 42, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1660, '42', 'Kagio ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1661, '18', 'Gigiri', 42, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1662, '43', 'Gikomba ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1663, '19', 'Thika', 42, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1664, '44', 'Ukunda ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1665, NULL, 'Head Office', 43, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1666, '45', 'Malindi ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1667, NULL, 'Kenyatta Market', 43, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1668, '46', 'Mombasa Digo Road ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1669, NULL, 'Karen', 43, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1670, '47', 'Moi Avenue ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1671, NULL, 'Tom Mboya', 43, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1672, '48', 'Bungoma ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1673, NULL, 'Ngong', 43, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1674, '49', 'Kapsabet ', 19, NULL, '2016-03-31 03:36:02', '2016-03-31 03:36:02'),
(1675, NULL, 'Wote - Makueni ', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1676, '50', 'Kakamega ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1677, NULL, 'Machakos', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1678, '51', 'Kisii ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1679, NULL, 'Ongata Rongai', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1680, '52', 'Nyamira ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1681, NULL, 'Kibwezi', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1682, '53', 'Litein ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1683, NULL, 'Athi River', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1684, '54', 'Equity Centre Diaspora', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1685, NULL, 'Emali', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1686, '55', 'Westlands ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1687, NULL, 'Mlolongo', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1688, '56', 'Industrial Area Kenpipe Plaza ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1689, NULL, 'Kajiado', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1690, '57', 'Kikuyu ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1691, NULL, 'Westlands', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1692, '58', 'Garissa ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1693, NULL, 'Ngara', 43, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1694, '59', 'Mwingi ', 19, NULL, '2016-03-31 03:36:03', '2016-03-31 03:36:03'),
(1695, NULL, 'Uthiru', 43, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1696, '60', 'Machakos ', 19, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1697, NULL, 'Kikuyu', 43, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1698, '61', 'Ongata Rongai ', 19, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1699, NULL, 'Limuru', 43, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1700, '62', 'Ol-kalao ', 19, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1701, NULL, 'Adams Arcade', 43, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1702, '63', 'Kawangware ', 19, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1703, NULL, 'Kitengela', 43, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1704, '64', 'Kiambu ', 19, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1705, NULL, 'Karuri', 43, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1706, '65', 'Kayole ', 19, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1707, NULL, 'Kawangware', 43, NULL, '2016-03-31 03:36:04', '2016-03-31 03:36:04'),
(1708, '66', 'Gatundu ', 19, NULL, '2016-03-31 03:36:05', '2016-03-31 03:36:05'),
(1709, NULL, 'Ruiru', 43, NULL, '2016-03-31 03:36:05', '2016-03-31 03:36:05'),
(1710, '67', 'Wote ', 19, NULL, '2016-03-31 03:36:05', '2016-03-31 03:36:05'),
(1711, NULL, 'Githurai', 43, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1712, '68', 'Mumias ', 19, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1713, NULL, 'Mwingi', 43, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1714, '69', 'Limuru ', 19, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1715, NULL, 'Eastleigh', 43, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1716, '70', 'Kitengela ', 19, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1717, NULL, 'Thika', 43, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1718, '71', 'Githurai ', 19, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1719, NULL, 'Kiambu', 43, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1720, '72', 'Kitui ', 19, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1721, NULL, 'Garissa', 43, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1722, '73', 'Ngong ', 19, NULL, '2016-03-31 03:36:06', '2016-03-31 03:36:06'),
(1723, NULL, 'Matuu', 43, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1724, '74', 'Loitoktok ', 19, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1725, NULL, 'Dandora', 43, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1726, '75', 'Bondo ', 19, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1727, NULL, 'Afya Center', 43, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1728, '76', 'Mbita ', 19, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1729, NULL, 'Cannon House', 43, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1730, '77', 'Gilgil ', 19, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1731, NULL, 'Viwandani', 43, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1732, '78', 'Busia ', 19, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1733, NULL, 'Kitui', 43, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1734, '79', 'Voi ', 19, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1735, NULL, 'Ronald Ngala', 43, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1736, '80', 'Enterprise Road ', 19, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1737, NULL, 'Enterprise Post Office', 43, NULL, '2016-03-31 03:36:07', '2016-03-31 03:36:07'),
(1738, '81', 'Equity Centre ', 19, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1739, NULL, 'Jogoo Road', 43, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1740, '82', 'Donholm ', 19, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1741, NULL, 'Nacico', 43, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1742, '83', 'Mukurwe-ini ', 19, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1743, NULL, 'Kangundo', 43, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1744, '84', 'Eastleigh ', 19, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1745, NULL, 'Kenyatta', 43, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1746, '85', 'Namanga ', 19, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1747, NULL, 'Kariobangi', 43, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1748, '86', 'Kajiado ', 19, NULL, '2016-03-31 03:36:08', '2016-03-31 03:36:08'),
(1749, NULL, 'Nakuru', 43, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1750, '87', 'Ruiru ', 19, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1751, NULL, 'Naivasha', 43, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1752, '88', 'Otc ', 19, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1753, NULL, 'Narok', 43, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1754, '89', 'Kenol ', 19, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1755, NULL, 'Eldoret', 43, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1756, '90', 'Tala ', 19, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1757, NULL, 'Kapsabet', 43, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1758, '91', 'Ngara ', 19, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1759, NULL, 'Molo', 43, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1760, '92', 'Nandi Hills ', 19, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1761, NULL, 'Kabarnet', 43, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1762, '93', 'Githunguri ', 19, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1763, NULL, 'Nandi Hills', 43, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1764, '94', 'Tea Room ', 19, NULL, '2016-03-31 03:36:09', '2016-03-31 03:36:09'),
(1765, NULL, 'Kitale', 43, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1766, '95', 'Buru Buru ', 19, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1767, NULL, 'Gilgil', 43, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1768, '96', 'Mbale ', 19, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1769, NULL, 'Kapenguria', 43, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1770, '97', 'Siaya ', 19, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1771, NULL, 'Nyahururu', 43, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1772, '98', 'Homa Bay ', 19, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1773, NULL, 'Lodwar', 43, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1774, '99', 'Lodwar ', 19, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1775, NULL, 'Eldama Ravine', 43, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1776, '100', 'Mandera ', 19, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1777, NULL, 'Maralal', 43, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1778, '101', 'Marsabit ', 19, NULL, '2016-03-31 03:36:10', '2016-03-31 03:36:10'),
(1779, NULL, 'Iten', 43, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1780, '102', 'Moyale ', 19, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1781, NULL, 'Kisumu', 43, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1782, '103', 'Wajir ', 19, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1783, NULL, 'Kakamega', 43, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1784, '104', 'Meru Makutano ', 19, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1785, NULL, 'Bungoma', 43, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1786, '105', 'Malaba Town ', 19, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1787, NULL, 'HomaBay', 43, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1788, '106', 'Kilifi ', 19, NULL, '2016-03-31 03:36:11', '2016-03-31 03:36:11'),
(1789, NULL, 'Busia', 43, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1790, '107', 'Kapenguria ', 19, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1791, NULL, 'Mumias', 43, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1792, '108', 'Mombasa Road ', 19, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1793, NULL, 'Siaya', 43, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1794, '109', 'Eldoret Market ', 19, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1795, NULL, 'Kisii', 43, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1796, '110', 'Maralal ', 19, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1797, NULL, 'Webuye', 43, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1798, '111', 'Kimende ', 19, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1799, NULL, 'Suna Migori', 43, NULL, '2016-03-31 03:36:12', '2016-03-31 03:36:12'),
(1800, '112', 'Luanda ', 19, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1801, NULL, 'Sare Awendo', 43, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1802, '113', 'Ku Sub Branch ', 19, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1803, NULL, 'Luanda', 43, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1804, '114', 'Kengeleni ', 19, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1805, NULL, 'Keroka', 43, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1806, '115', 'Nyeri Kimathi Way ', 19, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1807, NULL, 'Kehancha', 43, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1808, '116', 'Migori ', 19, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1809, NULL, 'Nyamira', 43, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1810, '117', 'Kibera ', 19, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1811, NULL, 'Bomet', 43, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1812, '118', 'Kasarani ', 19, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13');
INSERT INTO `bank_branches` (`id`, `branch_code`, `bank_branch_name`, `bank_id`, `organization_id`, `created_at`, `updated_at`) VALUES
(1813, NULL, 'Kericho', 43, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1814, '119', 'Mtwapa ', 19, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1815, NULL, 'Mbale', 43, NULL, '2016-03-31 03:36:13', '2016-03-31 03:36:13'),
(1816, '120', 'Changamwe ', 19, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1817, NULL, 'Oyugis', 43, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1818, '121', 'Hola ', 19, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1819, NULL, 'Mbita', 43, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1820, '122', 'Bomet ', 19, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1821, NULL, 'Bondo', 43, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1822, '123', 'Kilgoris ', 19, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1823, '124', 'Keroka ', 19, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1824, NULL, 'Chaani', 43, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1825, NULL, 'Ukunda', 43, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1826, '125', 'KAREN', 19, NULL, '2016-03-31 03:36:14', '2016-03-31 03:36:14'),
(1827, NULL, 'Voi', 43, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1828, '126', 'KISUMU ANGAWA AVE', 19, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1829, NULL, 'Kilifi', 43, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1830, '127', 'MPEKETONI', 19, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1831, NULL, 'Likoni', 43, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1832, '128', 'NAIROBI WEST', 19, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1833, NULL, 'Mombasa', 43, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1834, '129', 'KENYATTA AVENUE', 19, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1835, NULL, 'Moi Avenue', 43, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1836, '130', 'City Hall', 19, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1837, NULL, 'Malindi', 43, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1838, '131', 'Eldama Ravine', 19, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1839, NULL, 'Mtwapa', 43, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1840, '132', 'Embakasi', 19, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1841, NULL, 'Kisauni', 43, NULL, '2016-03-31 03:36:15', '2016-03-31 03:36:15'),
(1842, '133', 'KPCU', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1843, NULL, 'Mariakani', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1844, '134', 'Ridgeways', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1845, NULL, 'Taveta', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1846, '135', 'Runyenjes Sub Branch', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1847, NULL, 'Watamu', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1848, '136', 'Dadaad', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1849, NULL, 'Kerugoya', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1850, '137', 'Kangemi', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1851, NULL, 'Embu', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1852, '138', 'Nyali Centre Corporate', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1853, NULL, 'Meru', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1854, '139', 'Kabarnet', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1855, NULL, 'Nanyuki', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1856, '140', 'Westlands Corporate', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1857, NULL, 'Muranga', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1858, '141', 'Lavington Corporate', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1859, '142', 'Taita Taveta', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1860, NULL, 'Nyeri', 43, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1861, '143', 'Awendo', 19, NULL, '2016-03-31 03:36:16', '2016-03-31 03:36:16'),
(1862, NULL, 'Karatina', 43, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1863, '144', 'Ruai', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1864, NULL, 'Chuka', 43, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1865, '145', 'Kilimani', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1866, NULL, 'Wanguru', 43, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1867, '146', 'Nakuru Westside Mall', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1868, NULL, 'Maua', 43, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1869, '147', 'Kilimani Supreme', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1870, NULL, 'Isiolo', 43, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1871, '148', 'JKIA Cargo Centre', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1872, '0', 'Eldoret ', 44, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1873, '149', 'EPZ Athi River', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1874, '1', 'Kericho ', 44, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1875, '150', 'Oyugis', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1876, '2', 'Kisumu ', 44, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1877, '151', 'Mayfair Supreme Centre', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1878, 's', 'Kitale ', 44, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1879, '152', 'Juja', 19, NULL, '2016-03-31 03:36:17', '2016-03-31 03:36:17'),
(1880, '4', 'Treasury Square ', 44, NULL, '2016-03-31 03:36:18', '2016-03-31 03:36:18'),
(1881, '153', 'Iten', 19, NULL, '2016-03-31 03:36:18', '2016-03-31 03:36:18'),
(1882, '5', 'Kilindini ', 44, NULL, '2016-03-31 03:36:18', '2016-03-31 03:36:18'),
(1883, '154', 'Nyali Supreme Centre', 19, NULL, '2016-03-31 03:36:18', '2016-03-31 03:36:18'),
(1884, '6', 'Kenyatta Avenue ', 44, NULL, '2016-03-31 03:36:18', '2016-03-31 03:36:18'),
(1885, '155', 'Thika Supreme Centre', 19, NULL, '2016-03-31 03:36:18', '2016-03-31 03:36:18'),
(1886, '8', 'Moi Avenue ', 44, NULL, '2016-03-31 03:36:18', '2016-03-31 03:36:18'),
(1887, '156', 'Mombasa Supreme Centre', 19, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1888, '9', 'Nakuru ', 44, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1889, '157', 'Kapsowar Sub-Branch', 19, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1890, '10', 'Nanyuki ', 44, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1891, '158', 'Kwale', 19, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1892, '11', 'Nyeri ', 44, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1893, '159', 'Lamu', 19, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1894, '12', 'Thika ', 44, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1895, '160', 'Kenyatta Avenue Supreme', 19, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1896, '15', 'Westlands ', 44, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1897, '161', 'KPA Sub-Branch Mombasa', 19, NULL, '2016-03-31 03:36:19', '2016-03-31 03:36:19'),
(1898, '16', 'Machakos ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1899, '162', 'Gigiri Supreme Centre', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1900, '17', 'Meru ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1901, '163', 'Karen Supreme Centre', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1902, '19', 'Harambee Avenue ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1903, '164', 'Eldoret Supreme Centre', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1904, '20', 'Kiambu ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1905, '165', 'Kakuma', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1906, '53', 'Industrial Area ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1907, '166', 'Archers Post ', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1908, '54', 'Kakamega ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1909, '167', 'Mutomo', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1910, '60', 'Malindi ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1911, '168', 'Kiserian Sub Branch', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1912, '64', 'Koinage', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1913, '169', 'Dagoretti Corner', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1914, '71', 'Yaya Centre Branch ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1915, '170', 'Kisumu Supreme Centre', 19, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1916, '72', 'Ruaraka ', 44, NULL, '2016-03-31 03:36:20', '2016-03-31 03:36:20'),
(1917, '171', 'Thika Makongeni', 19, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1918, '73', 'Langata ', 44, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1919, '777', 'Equity Hapo Hapo', 19, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1920, '74', 'Makupa ', 44, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1921, '0', 'Head Office ', 20, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1922, '75', 'Karen ', 44, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1923, '1', 'Kiambu ', 20, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1924, '76', 'Muthaiga ', 44, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1925, '2', 'Githunguri ', 20, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1926, '78', 'C.o.u ', 44, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1927, '3', 'Sonalux ', 20, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1928, '79', 'Ukay ', 44, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1929, '4', 'Gatundu ', 20, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1930, '80', 'Eastleigh ', 44, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1931, '5', 'Thika ', 20, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1932, '81', 'Kisii ', 44, NULL, '2016-03-31 03:36:21', '2016-03-31 03:36:21'),
(1933, '6', 'Muranga ', 20, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1934, '82', 'Upper Hill Branch ', 44, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1935, '7', 'Kangari ', 20, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1936, '83', 'Nyali ', 44, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1937, '8', 'Kiria-ini ', 20, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1938, '84', 'Chiromo', 44, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1939, '9', 'Kangema ', 20, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1940, '85', 'Greenspan', 44, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1941, '11', 'Othaya ', 20, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1942, '86', 'The T-Mall', 44, NULL, '2016-03-31 03:36:22', '2016-03-31 03:36:22'),
(1943, '12', 'Kenyatta Avenue ', 20, NULL, '2016-03-31 03:36:23', '2016-03-31 03:36:23'),
(1944, '87', 'The Junction', 44, NULL, '2016-03-31 03:36:23', '2016-03-31 03:36:23'),
(1945, '14', 'Cargen House ', 20, NULL, '2016-03-31 03:36:23', '2016-03-31 03:36:23'),
(1946, '89', 'Kitengela', 44, NULL, '2016-03-31 03:36:23', '2016-03-31 03:36:23'),
(1947, '15', 'Laptrust', 20, NULL, '2016-03-31 03:36:23', '2016-03-31 03:36:23'),
(1948, '90', 'Bungoma ', 44, NULL, '2016-03-31 03:36:23', '2016-03-31 03:36:23'),
(1949, '16', 'City Hall Annex', 20, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1950, '91', 'Thika Road Mall', 44, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1951, '17', 'Kasarani', 20, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1952, '92', 'UN Gigiri', 44, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1953, '18', 'Nakuru Finance House ', 20, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1954, '1', 'Head Office ', 45, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1955, '19', 'Nakuru Market', 20, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1956, '2', 'Mombasa ', 45, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1957, '21', 'Dagoretti', 20, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1958, '3', 'Eldoret ', 45, NULL, '2016-03-31 03:36:24', '2016-03-31 03:36:24'),
(1959, '22', 'Kericho', 20, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1960, '4', 'Nakuru ', 45, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1961, '23', 'Nyahururu', 20, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1962, '5', 'Mia ', 45, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1963, '24', 'Ruiru ', 20, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1964, '6', 'Jkia ', 45, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1965, '25', 'Kisumu Reliance', 20, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1966, '7', 'Kirinyaga Rd Nakuru ', 45, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1967, '26', 'Nyamira ', 20, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1968, '8', 'Kabarak ', 45, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1969, '27', 'Kisii ', 20, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1970, '9', 'Olenguruone ', 45, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1971, '28', 'Kisumu Al Imran', 20, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1972, '10', 'Kericho ', 45, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1973, '29', 'Narok', 20, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1974, '11', 'Nandi Hills', 45, NULL, '2016-03-31 03:36:25', '2016-03-31 03:36:25'),
(1975, '31', 'Industrial Area ', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1976, '12', 'Epz ', 45, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1977, '32', 'Thika Makongeni', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1978, '13', 'Sheikh Karume ', 45, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1979, '33', 'Donholm ', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1980, '14', 'Kabarnet ', 45, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1981, '34', 'Utawala', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1982, '15', 'Kitale', 45, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1983, '35', 'Fourways Retail Branch', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1984, '16', 'Narok', 45, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1985, '37', 'Olkalou', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1986, '17', 'Bomet', 45, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1987, '38', 'Ktda Plaza ', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1988, '18', 'Iten', 45, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1989, '41', 'Kariobangi ', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1990, '1', 'Westlands ', 46, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1991, '42', 'Gikomba Area 42', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1992, '2', 'Enterprise Road ', 46, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1993, '3', 'Upper Hill ', 46, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1994, '43', 'Sokoni ', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1995, '99', 'Head Office ', 46, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1996, '45', 'Githurai ', 20, NULL, '2016-03-31 03:36:26', '2016-03-31 03:36:26'),
(1997, '1', 'Victoria Towers, Upperhill', 47, NULL, '2016-03-31 03:36:27', '2016-03-31 03:36:27'),
(1998, '46', 'Yaya ', 20, NULL, '2016-03-31 03:36:27', '2016-03-31 03:36:27'),
(1999, '2', 'Riverside Drive', 47, NULL, '2016-03-31 03:36:27', '2016-03-31 03:36:27'),
(2000, '47', 'Limuru ', 20, NULL, '2016-03-31 03:36:27', '2016-03-31 03:36:27'),
(2001, '3', 'Lunga Lunga Square', 47, NULL, '2016-03-31 03:36:27', '2016-03-31 03:36:27'),
(2002, '48', 'Westlands', 20, NULL, '2016-03-31 03:36:27', '2016-03-31 03:36:27'),
(2003, '49', 'Kagwe', 20, NULL, '2016-03-31 03:36:28', '2016-03-31 03:36:28'),
(2004, '51', 'Banana ', 20, NULL, '2016-03-31 03:36:28', '2016-03-31 03:36:28'),
(2005, '53', 'Naivasha ', 20, NULL, '2016-03-31 03:36:28', '2016-03-31 03:36:28'),
(2006, '54', 'Chuka', 20, NULL, '2016-03-31 03:36:28', '2016-03-31 03:36:28'),
(2007, '55', 'Nyeri ', 20, NULL, '2016-03-31 03:36:29', '2016-03-31 03:36:29'),
(2008, '56', 'Karatina', 20, NULL, '2016-03-31 03:36:29', '2016-03-31 03:36:29'),
(2009, '57', 'Kerugoya ', 20, NULL, '2016-03-31 03:36:29', '2016-03-31 03:36:29'),
(2010, '58', 'Tom Mboya ', 20, NULL, '2016-03-31 03:36:29', '2016-03-31 03:36:29'),
(2011, '59', 'River Road ', 20, NULL, '2016-03-31 03:36:29', '2016-03-31 03:36:29'),
(2012, '61', 'Kayole ', 20, NULL, '2016-03-31 03:36:29', '2016-03-31 03:36:29'),
(2013, '62', 'Nkubu ', 20, NULL, '2016-03-31 03:36:29', '2016-03-31 03:36:29'),
(2014, '63', 'Meru ', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2015, '64', 'Nanyuki', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2016, '65', 'Ktda Plaza Corporate ', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2017, '66', 'Ongata Rongai ', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2018, '67', 'Kajiado', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2019, '68', 'Fourways Corporate Branch ', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2020, '69', 'Ngara', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2021, '71', 'Kitengela ', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2022, '72', 'Kitui', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2023, '73', 'Mackakos ', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2024, '74', 'Migori', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2025, '75', 'Embu ', 20, NULL, '2016-03-31 03:36:30', '2016-03-31 03:36:30'),
(2026, '76', 'Mwea', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2027, '77', 'Bungoma ', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2028, '78', 'Kakamega ', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2029, '79', 'Busia ', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2030, '81', 'Mumias', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2031, '82', 'Eldoret West', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2032, '83', 'Molo ', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2033, '84', 'Bomet', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2034, '85', 'Eldoret ', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2035, '87', 'Leitin', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2036, '89', 'Bamburi', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2037, '91', 'Ukunda', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2038, '92', 'Digo', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2039, '93', 'Kitale ', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2040, '94', 'Mtwapa', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2041, '95', 'Mombasa Nkrumah Road', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2042, '96', 'Mombasa Jomo Kenyatta Avenue', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2043, '97', 'Kapsabet ', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2044, '98', 'Malindi', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2045, '102', 'Kikuyu', 20, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2046, NULL, 'head office', 21, NULL, '2016-03-31 03:36:31', '2016-03-31 03:36:31'),
(2047, NULL, 'Kariobangi', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2048, NULL, 'Kawangware', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2049, NULL, 'Ngong Road', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2050, NULL, 'Kayole Branch', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2051, NULL, 'OTC', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2052, NULL, 'Thika Road', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2053, NULL, 'Kibera', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2054, NULL, 'Kimathi Street', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2055, NULL, 'Kitengela', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2056, NULL, 'Kitui', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2057, NULL, 'Emali', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2058, NULL, 'Wote', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2059, NULL, 'Mwingi', 21, NULL, '2016-03-31 03:36:32', '2016-03-31 03:36:32'),
(2060, NULL, 'Makutano', 21, NULL, '2016-03-31 03:36:33', '2016-03-31 03:36:33'),
(2061, NULL, 'Nkubu', 21, NULL, '2016-03-31 03:36:33', '2016-03-31 03:36:33'),
(2062, NULL, 'Meru', 21, NULL, '2016-03-31 03:36:33', '2016-03-31 03:36:33'),
(2063, NULL, 'Maua', 21, NULL, '2016-03-31 03:36:33', '2016-03-31 03:36:33'),
(2064, NULL, 'Isiolo', 21, NULL, '2016-03-31 03:36:33', '2016-03-31 03:36:33'),
(2065, NULL, 'Embu', 21, NULL, '2016-03-31 03:36:33', '2016-03-31 03:36:33'),
(2066, NULL, 'Mwea', 21, NULL, '2016-03-31 03:36:33', '2016-03-31 03:36:33'),
(2067, NULL, 'Machakos', 21, NULL, '2016-03-31 03:36:34', '2016-03-31 03:36:34'),
(2068, NULL, 'Tala Plaza', 21, NULL, '2016-03-31 03:36:34', '2016-03-31 03:36:34'),
(2069, NULL, 'Kiserian', 21, NULL, '2016-03-31 03:36:34', '2016-03-31 03:36:34'),
(2070, NULL, 'Matuu', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2071, NULL, 'Kiambu', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2072, NULL, 'Muranga ', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2073, NULL, 'Nanyuki', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2074, NULL, 'Timau', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2075, NULL, 'Thika', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2076, NULL, 'Githunguri', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2077, NULL, 'Kerugoya', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2078, NULL, 'Nyeri', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2079, NULL, 'Karatina', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2080, NULL, 'Rongai', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2081, NULL, 'Narumoru', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2082, NULL, 'Bungoma', 21, NULL, '2016-03-31 03:36:35', '2016-03-31 03:36:35'),
(2083, NULL, 'Webuye', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2084, NULL, 'Mumias', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2085, NULL, 'Kakamega', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2086, NULL, 'Busia', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2087, NULL, 'Kimilili', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2088, NULL, 'Kapenguria', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2089, NULL, 'Bomet', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2090, NULL, 'Litein', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2091, NULL, 'Kericho', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2092, NULL, 'Kapsabet', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2093, NULL, 'Kitale', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2094, NULL, 'Kabarnet', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2095, NULL, 'Rware Shop', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2096, NULL, 'Maralal', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2097, NULL, 'Olenguruone', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2098, NULL, 'Eldoret', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2099, NULL, 'Rumuruti', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2100, NULL, 'Nyahururu', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2101, NULL, 'Nakuru', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2102, NULL, 'Eldama Ravine', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2103, NULL, 'Naivasha ', 21, NULL, '2016-03-31 03:36:36', '2016-03-31 03:36:36'),
(2104, NULL, 'Njambini', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2105, NULL, 'Narok', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2106, NULL, 'Molo', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2107, NULL, 'Kinamba', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2108, NULL, 'Njoro', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2109, NULL, 'Mombasa Central', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2110, NULL, 'Malindi', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2111, NULL, 'Kengeleni', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2112, NULL, 'Voi ', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2113, NULL, 'Changamwe', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2114, NULL, 'Kongowea ', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2115, NULL, 'Ukunda', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2116, NULL, 'Mpeketoni', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2117, NULL, 'Kisumu', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2118, NULL, 'Ugunja', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2119, NULL, 'Bondo', 21, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2120, '0', 'Head Office', 22, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2121, '1', 'Kimathi Street', 22, NULL, '2016-03-31 03:36:37', '2016-03-31 03:36:37'),
(2122, '2', 'Ind Area ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2123, '3', 'Westlands ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2124, '4', 'Lavington ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2125, '5', 'Nkrumah Road , Mombasa ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2126, '6', 'Nakuru ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2127, '7', 'Eldoret ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2128, '8', 'Muthaiga ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2129, '9', 'Nanyuki ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2130, '10', 'Thika ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2131, '11', 'Gikomba ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2132, '12', 'Ngong Road ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2133, '13', 'Meru ', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2134, '14', 'Nyali', 22, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2135, '1', 'Wabera Street ', 23, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2136, '2', 'Eastleigh 1 ', 23, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2137, '3', 'Mombasa 1 ', 23, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2138, '4', 'Garissa ', 23, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2139, '5', 'Eastleigh 2 - General Waruinge ', 23, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2140, '6', 'Malindi ', 23, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2141, '7', 'Kisumu ', 23, NULL, '2016-03-31 03:36:38', '2016-03-31 03:36:38'),
(2142, '8', 'Kimathi Street ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2143, '9', 'Westlands ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2144, '10', 'South C ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2145, '11', 'Industrial Area ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2146, '12', 'Masalani ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2147, '13', 'Habasweni ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2148, '14', 'Wajir ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2149, '15', 'Moyale ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2150, '16', 'Nakuru ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2151, '17', 'Mombasa 2 ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2152, '18', 'Lunga Lunga', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2153, '999', 'Head Office/clearing Center ', 23, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2154, '0', 'Banda', 24, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2155, '1', 'Mombasa ', 24, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2156, '2', 'Industrial Area ', 24, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2157, '3', 'Kimathi St.', 24, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2158, '4', 'Kisumu Branch ', 24, NULL, '2016-03-31 03:36:39', '2016-03-31 03:36:39'),
(2159, '5', 'Westlands ', 24, NULL, '2016-03-31 03:36:40', '2016-03-31 03:36:40'),
(2160, '7', 'Parklands 3rd Avenue ', 24, NULL, '2016-03-31 03:36:40', '2016-03-31 03:36:40'),
(2161, '1', 'Head Office ', 25, NULL, '2016-03-31 03:36:40', '2016-03-31 03:36:40'),
(2162, '2', 'Westlands ', 25, NULL, '2016-03-31 03:36:40', '2016-03-31 03:36:40'),
(2163, '3', 'Mombasa ', 25, NULL, '2016-03-31 03:36:40', '2016-03-31 03:36:40'),
(2164, '4', 'Eldoret ', 25, NULL, '2016-03-31 03:36:40', '2016-03-31 03:36:40'),
(2165, '5', 'Kisumu ', 25, NULL, '2016-03-31 03:36:41', '2016-03-31 03:36:41'),
(2166, '6', 'Moi Ave ', 25, NULL, '2016-03-31 03:36:41', '2016-03-31 03:36:41'),
(2167, '7', 'Mombasa Road ', 25, NULL, '2016-03-31 03:36:41', '2016-03-31 03:36:41'),
(2168, '8', 'Nyali', 25, NULL, '2016-03-31 03:36:41', '2016-03-31 03:36:41'),
(2169, '9', 'Ngong Road', 25, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2170, '10', 'Nakuru', 25, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2171, '0', 'Head Office', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2172, '1', 'Kimathi Street', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2173, '2', 'Ind Area ', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2174, '3', 'Westlands ', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2175, '4', 'Lavington ', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2176, '5', 'Nkrumah Road , Mombasa ', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2177, '6', 'Nakuru ', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2178, '7', 'Eldoret ', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2179, '8', 'Muthaiga ', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2180, '9', 'Nanyuki ', 26, NULL, '2016-03-31 03:36:42', '2016-03-31 03:36:42'),
(2181, '10', 'Thika ', 26, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2182, '11', 'Gikomba ', 26, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2183, '12', 'Ngong Road ', 26, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2184, '13', 'Meru ', 26, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2185, '14', 'Nyali', 26, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2186, '15', 'Sky Park', 26, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2187, '16', 'Karen', 26, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2188, '0', 'Head Office ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2189, '1', 'Central Clearing Centre ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2190, '2', 'Upperhill ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2191, '3', 'Eastleigh ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2192, '4', 'Kenyatta Avenue ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2193, '5', 'Mombasa ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2194, '6', 'Garissa ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2195, '7', 'Lamu ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2196, '8', 'Malindi ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2197, '9', 'Muthaiga ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2198, '10', 'Bondeni ', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2199, '11', 'Eastleigh 7th Street', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2200, '12', 'Eastleigh Athumani Kipanga Street', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2201, '13', 'Westlands', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2202, '14', 'Industrial Area', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2203, '15', 'Jomo Kenyatta Avenue', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2204, '16', 'Bombululu', 27, NULL, '2016-03-31 03:36:43', '2016-03-31 03:36:43'),
(2205, '17', 'Mombasa Road', 27, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2206, '0', 'Head Office ', 28, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2207, '1', 'Mombasa ', 28, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2208, '2', 'Industrial Area ', 28, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2209, '3', 'Westlands ', 28, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2210, '4', 'Nyali', 28, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2211, '46', 'Mombasa ', 29, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2212, '47', 'Malindi ', 29, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2213, '48', 'Kimathi Street ', 29, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2214, '49', 'Kenyatta Avenue ', 29, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2215, '86', 'Kisumu ', 29, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2216, '108', 'Industrial Area', 29, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2217, '109', 'HBL Westlands', 29, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2218, '16', 'Kitengela', 30, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2219, '17', 'Naivasha', 30, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2220, '100', 'Head Office', 30, NULL, '2016-03-31 03:36:44', '2016-03-31 03:36:44'),
(2221, '200', 'Rehani House', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2222, '210', 'Kenyatta Market', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2223, '220', 'Gill House', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2224, '230', 'Buru Buru', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2225, '260', 'Thika Road Mall', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2226, '270', 'Sameer Business Park', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2227, '280', 'Westlands', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2228, '300', 'Mombasa', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2229, '310', 'Nyali ', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2230, '400', 'Nakuru', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2231, '410', 'Eldoret', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2232, '500', 'Thika', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2233, '510', 'Nyeri', 30, NULL, '2016-03-31 03:36:45', '2016-03-31 03:36:45'),
(2234, '520', 'Meru', 30, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2235, '600', 'Kisumu', 30, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2236, '0', 'Kenyatta Avenue ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2237, '1', '2nd Nong Avenue ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2238, '2', 'Sarit Centre ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2239, '3', 'Head Office ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2240, '4', 'Biashara St ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2241, '5', 'Mombasa ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2242, '6', 'Industrial Area ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2243, '7', 'Kisumu ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2244, '8', 'Karen ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2245, '9', 'Panari Centre ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2246, '10', 'Parklands ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2247, '11', 'Wilson Airport ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2248, '12', 'Ongata Rongai ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2249, '13', 'South C Shopping Centre ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2250, '14', 'Nyali Cinemax ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2251, '15', 'Langata Link ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2252, '16', 'Lavington ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2253, '17', 'Eldoret ', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2254, '18', 'NAKURU', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2255, '19', 'Riversid Drive Branch', 31, NULL, '2016-03-31 03:36:46', '2016-03-31 03:36:46'),
(2256, '20', 'Kisii', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2257, '21', 'Changamwe', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2258, '22', 'Malindi', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2259, '23', 'Nyeri', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2260, '24', 'Thika', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2261, '25', 'Gigiri', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2262, '26', 'Mtwapa', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2263, '27', 'Lavington Mall', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2264, '28', 'Kitale', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2265, '29', 'Lunga Lunga', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2266, '30', 'Yaya Centre', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2267, '31', 'I&M Bank Ltd Gateway Mall, Syokimau', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2268, '32', 'Garden City Mall', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2269, '98', 'Card Center ', 31, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2270, '1', 'IPS', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2271, '2', 'Mombasa ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2272, '3', 'Upper Hill ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2273, '4', 'Parklands ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2274, '5', 'Malindi ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2275, '6', 'Industrial Area ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2276, '7', 'Watamu ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2277, '8', 'Diani ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2278, '9', 'Kilifi ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2279, '10', 'Eldoret ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2280, '11', 'Karen ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2281, '12', 'Thika ', 32, NULL, '2016-03-31 03:36:47', '2016-03-31 03:36:47'),
(2282, '14', 'Changamwe ', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2283, '15', 'Riverside ', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2284, '16', 'Likoni ', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2285, '17', 'HAILE SELASSIE ROAD', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2286, '18', 'Village Market', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2287, '19', 'Bamburi', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2288, '20', 'Junction Mall', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2289, '21', 'Greenspan mall', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2290, '22', 'Westside Mall', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2291, '23', 'Kenyatta Street Eldoret', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2292, '24', 'Westlands', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2293, '26', 'Highridge Branch', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2294, '27', 'Nyali Cinemax', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2295, '28', 'Garden City', 32, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2296, '0', 'Head Office ', 33, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2297, '1', 'Koinange Street', 33, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2298, '100', 'Kiongozi', 33, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2299, '101', 'Kayole', 33, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2300, '102', 'Eastleigh', 33, NULL, '2016-03-31 03:36:48', '2016-03-31 03:36:48'),
(2301, '105', 'Kawangware', 33, NULL, '2016-03-31 03:36:49', '2016-03-31 03:36:49'),
(2302, '106', 'Kibera', 33, NULL, '2016-03-31 03:36:49', '2016-03-31 03:36:49'),
(2303, '107', 'Kariobangi', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2304, '111', 'Central Clearing Center', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2305, '114', 'Funzi Road', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2306, '115', 'Ngong Road', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2307, '116', 'Kirinyaga Road', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2308, '209', 'Machakos', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2309, '210', 'Mtwapa', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2310, '213', 'Kiritiri', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2311, '301', 'Thika', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2312, '303', 'Muranga ', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2313, '306', 'Kikuyu', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2314, '307', 'Banana', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2315, '310', 'Utawala', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2316, '316', 'Nyeri', 33, NULL, '2016-03-31 03:36:50', '2016-03-31 03:36:50'),
(2317, '402', 'Kisumu', 33, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2318, '502', 'Ongata Rongai', 33, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2319, '503', 'Kitengela', 33, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2320, '507', 'Nakuru', 33, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2321, '603', 'Mombasa', 33, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2322, '91', 'Eastleigh ', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2323, '92', 'KCB CPC', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2324, '94', 'Head Office ', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2325, '95', 'Wote ', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2326, '96', 'Head Office Finance', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2327, '100', 'Moi Avenue Nairobi ', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2328, '101', 'Kipande House ', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2329, '102', 'Treasury Sq Mombasa ', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2330, '103', 'Nakuru ', 34, NULL, '2016-03-31 03:36:51', '2016-03-31 03:36:51'),
(2331, '104', 'Kicc ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2332, '105', 'Kisumu ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2333, '106', 'Kericho ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2334, '107', 'Tom Mboya ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2335, '108', 'Thika ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2336, '109', 'Eldoret ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2337, '110', 'Kakamega ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2338, '111', 'Kilindini Mombasa ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2339, '112', 'Nyeri ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2340, '113', 'Industrial Area Nairobi ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2341, '114', 'River Road ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2342, '115', 'Muranga ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2343, '116', 'Embu ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2344, '117', 'Kangema ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2345, '119', 'Kiambu ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2346, '120', 'Karatina ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2347, '121', 'Siaya ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2348, '122', 'Nyahururu ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2349, '123', 'Meru ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2350, '124', 'Mumias ', 34, NULL, '2016-03-31 03:36:52', '2016-03-31 03:36:52'),
(2351, '125', 'Nanyuki ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2352, '127', 'Moyale ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2353, '129', 'Kikuyu ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2354, '130', 'Tala ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2355, '131', 'Kajiado ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2356, '133', 'KCB Custody services', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2357, '134', 'Matuu ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2358, '135', 'Kitui ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2359, '136', 'Mvita ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2360, '137', 'Jogoo Rd Nairobi ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2361, '139', 'Card Centre ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2362, '140', 'Marsabit ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2363, '141', 'Sarit Centre ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2364, '142', 'Loitokitok ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2365, '143', 'Nandi Hills ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2366, '144', 'Lodwar ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2367, '145', 'Un Gigiri ', 34, NULL, '2016-03-31 03:36:53', '2016-03-31 03:36:53'),
(2368, '146', 'Hola ', 34, NULL, '2016-03-31 03:36:54', '2016-03-31 03:36:54'),
(2369, '147', 'Ruiru ', 34, NULL, '2016-03-31 03:36:54', '2016-03-31 03:36:54'),
(2370, '148', 'Mwingi ', 34, NULL, '2016-03-31 03:36:55', '2016-03-31 03:36:55'),
(2371, '149', 'Kitale ', 34, NULL, '2016-03-31 03:36:55', '2016-03-31 03:36:55'),
(2372, '150', 'Mandera ', 34, NULL, '2016-03-31 03:36:55', '2016-03-31 03:36:55'),
(2373, '151', 'Kapenguria ', 34, NULL, '2016-03-31 03:36:55', '2016-03-31 03:36:55'),
(2374, '152', 'Kabarnet ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2375, '153', 'Wajir ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2376, '154', 'Maralal ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2377, '155', 'Limuru ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2378, '157', 'Ukunda ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2379, '158', 'Iten ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2380, '159', 'Gilgil ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2381, '161', 'Ongata Rongai ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2382, '162', 'Kitengela ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2383, '163', 'Eldama Ravine ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2384, '164', 'Kibwezi ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2385, '166', 'Kapsabet ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2386, '167', 'University Way ', 34, NULL, '2016-03-31 03:36:56', '2016-03-31 03:36:56'),
(2387, '168', 'KCB Eldoret West', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2388, '169', 'Garissa ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2389, '173', 'Lamu ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2390, '174', 'Kilifi ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2391, '175', 'Milimani ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2392, '176', 'Nyamira ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2393, '177', 'Mukuruweini ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2394, '180', 'Village Market ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2395, '181', 'Bomet ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2396, '183', 'Mbale ', 34, NULL, '2016-03-31 03:36:57', '2016-03-31 03:36:57'),
(2397, '184', 'Narok ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2398, '185', 'Othaya ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2399, '186', 'Voi ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2400, '188', 'Webuye ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2401, '189', 'Sotik ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2402, '190', 'Naivasha ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2403, '191', 'Kisii ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2404, '192', 'Migori ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2405, '193', 'Githunguri ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2406, '194', 'Machakos ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2407, '195', 'Kerugoya ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2408, '196', 'Chuka ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2409, '197', 'Bungoma ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2410, '198', 'Wundanyi ', 34, NULL, '2016-03-31 03:36:58', '2016-03-31 03:36:58'),
(2411, '199', 'Malindi ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2412, '201', 'Capital Hill ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2413, '202', 'Karen ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2414, '203', 'Lokichogio ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2415, '204', 'Gateway Msa Road ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2416, '205', 'Buruburu ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2417, '206', 'Chogoria ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59');
INSERT INTO `bank_branches` (`id`, `branch_code`, `bank_branch_name`, `bank_id`, `organization_id`, `created_at`, `updated_at`) VALUES
(2418, '207', 'Kangare ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2419, '208', 'Kianyaga ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2420, '209', 'Nkubu ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2421, '210', 'Ol Kalou ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2422, '211', 'Makuyu ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2423, '212', 'Mwea ', 34, NULL, '2016-03-31 03:36:59', '2016-03-31 03:36:59'),
(2424, '213', 'Njambini ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2425, '214', 'Gatundu ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2426, '215', 'Emali ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2427, '216', 'Isiolo ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2428, '217', 'KCB Flamingo', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2429, '218', 'Njoro ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2430, '219', 'Mutomo ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2431, '220', 'Mariakani ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2432, '221', 'Mpeketoni ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2433, '222', 'Mtitu Andei ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2434, '223', 'Mtwapa ', 34, NULL, '2016-03-31 03:37:00', '2016-03-31 03:37:00'),
(2435, '224', 'Taveta ', 34, NULL, '2016-03-31 03:37:01', '2016-03-31 03:37:01'),
(2436, '225', 'Kengeleni ', 34, NULL, '2016-03-31 03:37:01', '2016-03-31 03:37:01'),
(2437, '226', 'Garsen ', 34, NULL, '2016-03-31 03:37:01', '2016-03-31 03:37:01'),
(2438, '227', 'Watamu ', 34, NULL, '2016-03-31 03:37:01', '2016-03-31 03:37:01'),
(2439, '228', 'Bondo ', 34, NULL, '2016-03-31 03:37:01', '2016-03-31 03:37:01'),
(2440, '229', 'Busia ', 34, NULL, '2016-03-31 03:37:01', '2016-03-31 03:37:01'),
(2441, '230', 'Homa Bay ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2442, '231', 'Kapsowar ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2443, '232', 'Kehancha ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2444, '233', 'Keroka ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2445, '234', 'Kilgoris ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2446, '235', 'Kimilili ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2447, '236', 'Litein ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2448, '237', 'Londiani Branch ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2449, '238', 'Luanda ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2450, '239', 'Malaba ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2451, '240', 'Muhoroni ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2452, '241', 'Oyugis ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2453, '242', 'Ugunja ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2454, '243', 'United Mall ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2455, '244', 'Serem ', 34, NULL, '2016-03-31 03:37:02', '2016-03-31 03:37:02'),
(2456, '245', 'Sondu ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2457, '246', 'Kisumu West ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2458, '247', 'Marigat ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2459, '248', 'Mois Bridge ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2460, '249', 'Mashariki ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2461, '250', 'Naro Moro ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2462, '251', 'Kiriaini ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2463, '252', 'Egerton University ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2464, '253', 'Maua ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2465, '254', 'Kawangare ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2466, '255', 'Kimathi ', 34, NULL, '2016-03-31 03:37:03', '2016-03-31 03:37:03'),
(2467, '256', 'Namanga ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2468, '257', 'Gikomba ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2469, '258', 'Kwale ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2470, '259', 'Prestige Plaza ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2471, '260', 'Kariobangi ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2472, '263', 'Biashara Street ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2473, '266', 'Ngara ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2474, '267', 'Kyuso ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2475, '270', 'Masii ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2476, '271', 'Menengai Crater', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2477, '272', 'Town Centre ', 34, NULL, '2016-03-31 03:37:04', '2016-03-31 03:37:04'),
(2478, '278', 'Makindu ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2479, '283', 'Rongo ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2480, '284', 'Isibania ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2481, '285', 'Kiserian ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2482, '286', 'Mwembe Tayari ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2483, '287', 'Kisauni ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2484, '288', 'Haile Selassie ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2485, '289', 'Salama House Mortgage Centre', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2486, '290', 'Garden Plaza ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2487, '291', 'Sarit Centre Mortgage Centre', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2488, '292', 'Cpc Bulk Corporate Cheques ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2489, '293', 'Trade Services', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2490, '295', 'Nairobi High Court', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2491, '296', 'Mombasa High Court', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2492, '297', 'Kisumu Airport', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2493, '298', 'Port Victoria', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2494, '299', 'Moi International Airport', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2495, '300', 'Nyali', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2496, '301', 'Westgate Advantage', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2497, '302', 'Diaspora ', 34, NULL, '2016-03-31 03:37:05', '2016-03-31 03:37:05'),
(2498, '303', 'Kisii West ', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2499, '304', 'Mbita', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2500, '305', 'Sori', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2501, '306', 'Hurlingham', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2502, '307', 'Kibera', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2503, '308', 'Thika Road Mall Branch', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2504, '309', 'Kasarani Branch', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2505, '310', 'KCB Maasai Mara', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2506, '311', 'KCB Kabartonjo', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2507, '312', 'KCB Eldoret East', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2508, '313', 'Kikim', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2509, '314', 'KCB JKUAT', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2510, '315', 'KCB Changamwe', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2511, '316', 'KCB Makongeni', 34, NULL, '2016-03-31 03:37:06', '2016-03-31 03:37:06'),
(2512, '317', 'KCB Syokimau', 34, NULL, '2016-03-31 03:37:07', '2016-03-31 03:37:07'),
(2513, '318', 'KCB Moi Referral Hospital', 34, NULL, '2016-03-31 03:37:07', '2016-03-31 03:37:07'),
(2514, '319', 'KCB Kitale Advantage', 34, NULL, '2016-03-31 03:37:07', '2016-03-31 03:37:07'),
(2515, '320', 'KCB Lavington', 34, NULL, '2016-03-31 03:37:07', '2016-03-31 03:37:07'),
(2516, '321', 'KCB ICD Kibarani', 34, NULL, '2016-03-31 03:37:07', '2016-03-31 03:37:07'),
(2517, '322', 'KCB Riverside Advantage', 34, NULL, '2016-03-31 03:37:07', '2016-03-31 03:37:07'),
(2518, '323', 'KCB Gigiri Square', 34, NULL, '2016-03-31 03:37:08', '2016-03-31 03:37:08'),
(2519, NULL, 'head quarters', 35, NULL, '2016-03-31 03:37:08', '2016-03-31 03:37:08'),
(2520, NULL, 'North –Rift', 35, NULL, '2016-03-31 03:37:08', '2016-03-31 03:37:08'),
(2521, NULL, 'Nandi hills', 35, NULL, '2016-03-31 03:37:08', '2016-03-31 03:37:08'),
(2522, NULL, 'Eldoret', 35, NULL, '2016-03-31 03:37:08', '2016-03-31 03:37:08'),
(2523, NULL, 'Trans-Nzoia', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2524, NULL, 'Bomet', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2525, NULL, 'Kericho', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2526, NULL, 'Lodwar ', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2527, NULL, 'Malaba ', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2528, NULL, 'Kakamega', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2529, NULL, 'Serem ', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2530, NULL, 'Nakuru', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2531, NULL, 'Njambini', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2532, NULL, 'Gilgil ', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2533, NULL, 'Embu', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2534, NULL, 'Mwea', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2535, NULL, 'Tharaka', 35, NULL, '2016-03-31 03:37:09', '2016-03-31 03:37:09'),
(2536, NULL, 'Mbeere', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2537, NULL, 'Nkubu', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2538, NULL, 'Meru', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2539, NULL, 'Maua', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2540, NULL, 'Mount Kenya', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2541, NULL, 'Narumoru', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2542, NULL, 'Othaya', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2543, NULL, 'Mukurweini', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2544, NULL, 'Machakos', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2545, NULL, 'Matuu ', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2546, NULL, 'Masii ', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2547, NULL, 'Kyuso', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2548, NULL, 'Machakos 760 Hotel', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2549, NULL, 'Mwingi ', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2550, NULL, 'Tala ', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2551, NULL, 'Kitui', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2552, NULL, 'Migori', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2553, NULL, 'Thika', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2554, NULL, 'Ruiru', 35, NULL, '2016-03-31 03:37:10', '2016-03-31 03:37:10'),
(2555, NULL, 'Gatundu ', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2556, NULL, 'Githurai 45', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2557, NULL, 'Kiambu', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2558, NULL, 'Nairobi', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2559, NULL, 'Gikomba', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2560, NULL, 'Nairobi west', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2561, NULL, 'Embakasi', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2562, NULL, 'River road', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2563, NULL, 'Kibwezi ', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2564, NULL, 'Emali', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2565, NULL, 'Nunguni', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2566, NULL, 'Wote ', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2567, NULL, 'Loitoktok', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2568, NULL, 'Taveta ', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2569, NULL, 'Garsen', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2570, NULL, 'Wundanyi ', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2571, NULL, 'Mwatate', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2572, NULL, 'Voi ', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2573, NULL, 'Kitengela', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2574, NULL, 'Mombasa', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2575, NULL, 'Malindi', 35, NULL, '2016-03-31 03:37:11', '2016-03-31 03:37:11'),
(2576, '0', 'Head Office ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2577, '1', 'Main Office ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2578, '2', 'Mombasa ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2579, '3', 'Kenyatta Ave Nbi ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2580, '4', 'Nakuru ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2581, '5', 'Nyeri ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2582, '6', 'Buruburu ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2583, '7', 'Embu ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2584, '8', 'Eldoret ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2585, '9', 'Kisumu ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2586, '10', 'Kericho ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2587, '11', 'Mlolongo', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2588, '12', 'Thika ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2589, '13', 'Kerugoya', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2590, '14', 'Kenyatta Market ', 36, NULL, '2016-03-31 03:37:12', '2016-03-31 03:37:12'),
(2591, '15', 'Kisii ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2592, '16', 'CHUKA', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2593, '17', 'Kitui ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2594, '18', 'Machakos ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2595, '19', 'Nanyuki ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2596, '20', 'Kangemi', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2597, '21', 'Email', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2598, '22', 'Naivasha ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2599, '23', 'Nyahururu ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2600, '24', 'Isiolo ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2601, '25', 'Meru ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2602, '26', 'Kitale ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2603, '27', 'Kibwezi ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2604, '28', 'Bungoma ', 36, NULL, '2016-03-31 03:37:13', '2016-03-31 03:37:13'),
(2605, '29', 'Kajiado ', 36, NULL, '2016-03-31 03:37:14', '2016-03-31 03:37:14'),
(2606, '30', 'Nkubu', 36, NULL, '2016-03-31 03:37:14', '2016-03-31 03:37:14'),
(2607, '31', 'Mtwapa ', 36, NULL, '2016-03-31 03:37:14', '2016-03-31 03:37:14'),
(2608, '32', 'Busia', 36, NULL, '2016-03-31 03:37:14', '2016-03-31 03:37:14'),
(2609, '33', 'Moi Nbi ', 36, NULL, '2016-03-31 03:37:14', '2016-03-31 03:37:14'),
(2610, '34', 'Mwea ', 36, NULL, '2016-03-31 03:37:14', '2016-03-31 03:37:14'),
(2611, '35', 'Kengeleni ', 36, NULL, '2016-03-31 03:37:14', '2016-03-31 03:37:14'),
(2612, '36', 'Kilimani ', 36, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2613, '37', 'Rongai', 36, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2614, '0', 'Head Office ', 37, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2615, '1', 'Nairobi ', 37, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2616, '2', 'Mombasa ', 37, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2617, '3', 'Milimani ', 37, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2618, '4', 'Industrial Area', 37, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2619, '5', 'Eldoret', 37, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2620, '0', 'Central Business Unit', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2621, '2', 'Kenyatta', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2622, '3', 'Harambee ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2623, '4', 'Hill ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2624, '5', 'Busia ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2625, '6', 'Kiambu', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2626, '7', 'Meru ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2627, '8', 'Karatina ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2628, '9', 'Narok ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2629, '10', 'Kisii ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2630, '11', 'Malindi ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2631, '12', 'Nyeri ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2632, '13', 'Kitale ', 38, NULL, '2016-03-31 03:37:15', '2016-03-31 03:37:15'),
(2633, '15', 'Eastleigh', 38, NULL, '2016-03-31 03:37:16', '2016-03-31 03:37:16'),
(2634, '16', 'Limuru ', 38, NULL, '2016-03-31 03:37:16', '2016-03-31 03:37:16'),
(2635, '17', 'Kitui ', 38, NULL, '2016-03-31 03:37:16', '2016-03-31 03:37:16'),
(2636, '18', 'Molo ', 38, NULL, '2016-03-31 03:37:17', '2016-03-31 03:37:17'),
(2637, '19', 'Bungoma ', 38, NULL, '2016-03-31 03:37:17', '2016-03-31 03:37:17'),
(2638, '20', 'Nkrumah', 38, NULL, '2016-03-31 03:37:17', '2016-03-31 03:37:17'),
(2639, '21', 'Kapsabet ', 38, NULL, '2016-03-31 03:37:18', '2016-03-31 03:37:18'),
(2640, '22', 'Awendo ', 38, NULL, '2016-03-31 03:37:18', '2016-03-31 03:37:18'),
(2641, '23', 'Portway-msa ', 38, NULL, '2016-03-31 03:37:18', '2016-03-31 03:37:18'),
(2642, '25', 'Hospital Br. ', 38, NULL, '2016-03-31 03:37:18', '2016-03-31 03:37:18'),
(2643, '26', 'Ruiru ', 38, NULL, '2016-03-31 03:37:18', '2016-03-31 03:37:18'),
(2644, '27', 'Ongata Rongai ', 38, NULL, '2016-03-31 03:37:18', '2016-03-31 03:37:18'),
(2645, '28', 'Embu ', 38, NULL, '2016-03-31 03:37:18', '2016-03-31 03:37:18'),
(2646, '29', 'Kakamega ', 38, NULL, '2016-03-31 03:37:18', '2016-03-31 03:37:18'),
(2647, '30', 'Nakuru ', 38, NULL, '2016-03-31 03:37:19', '2016-03-31 03:37:19'),
(2648, '31', 'Ukunda ', 38, NULL, '2016-03-31 03:37:19', '2016-03-31 03:37:19'),
(2649, '32', 'Upper Hill ', 38, NULL, '2016-03-31 03:37:19', '2016-03-31 03:37:19'),
(2650, '33', 'Nandi Hills ', 38, NULL, '2016-03-31 03:37:19', '2016-03-31 03:37:19'),
(2651, '34', 'Migori ', 38, NULL, '2016-03-31 03:37:19', '2016-03-31 03:37:19'),
(2652, '35', 'Westlands ', 38, NULL, '2016-03-31 03:37:19', '2016-03-31 03:37:19'),
(2653, '36', 'Times Tower', 38, NULL, '2016-03-31 03:37:20', '2016-03-31 03:37:20'),
(2654, '37', 'Maua', 38, NULL, '2016-03-31 03:37:20', '2016-03-31 03:37:20'),
(2655, '38', 'WILSON AIRPORT', 38, NULL, '2016-03-31 03:37:20', '2016-03-31 03:37:20'),
(2656, '39', 'J.K.I.A.', 38, NULL, '2016-03-31 03:37:20', '2016-03-31 03:37:20'),
(2657, '40', 'Eldoret ', 38, NULL, '2016-03-31 03:37:20', '2016-03-31 03:37:20'),
(2658, '41', 'MOIS BRIDGE', 38, NULL, '2016-03-31 03:37:20', '2016-03-31 03:37:20'),
(2659, '42', 'MUTOMO', 38, NULL, '2016-03-31 03:37:20', '2016-03-31 03:37:20'),
(2660, '43', 'KIANJAI', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2661, '44', 'KENYATTA UNIVERSITY', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2662, '45', 'ST PAULS UNIVERSITY', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2663, '46', 'MOI UNIVERSITY ELDORET', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2664, '47', 'MOI INT AIRPORT MOMBASA', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2665, '48', 'Machakos', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2666, '49', 'Kitengela', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2667, '50', 'Kisumu ', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2668, '51', 'Mtwapa', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2669, '52', 'Changamwe', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2670, '53', 'Garissa', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2671, '54', 'Thika', 38, NULL, '2016-03-31 03:37:21', '2016-03-31 03:37:21'),
(2672, '55', 'Momasa Polytechnic University College', 38, NULL, '2016-03-31 03:37:22', '2016-03-31 03:37:22'),
(2673, '56', 'Bomet', 38, NULL, '2016-03-31 03:37:22', '2016-03-31 03:37:22'),
(2674, '58', 'Greenspan', 38, NULL, '2016-03-31 03:37:22', '2016-03-31 03:37:22'),
(2675, '59', 'Sameer Park', 38, NULL, '2016-03-31 03:37:22', '2016-03-31 03:37:22'),
(2676, '60', 'SEKU', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2677, '61', 'Ngong Road', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2678, '62', 'Moi Avenue', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2679, '63', 'Mountain Mall', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2680, '65', 'Nyali Centre', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2681, '66', 'Kilifi', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2682, '67', 'South C Branch- KEBS', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2683, '68', 'Kericho', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2684, '70', 'Isiolo', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2685, '71', 'South C - Red Cross', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2686, '72', 'National Bank Premium Banking Kisumu', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2687, '73', 'Yaya Centre', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2688, '74', 'Gigiri', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2689, '93', 'Wajir', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2690, '94', 'Bondeni', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2691, '95', 'Lunga Lunga', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2692, '96', 'Mandera', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2693, '98', 'Card Centre ', 38, NULL, '2016-03-31 03:37:23', '2016-03-31 03:37:23'),
(2694, '99', 'Head Office', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2695, '198', 'Central CLearing Centre', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2696, '200', 'Head Office Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2697, '201', 'Card Centre Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2698, '202', 'Eastleigh Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2699, '203', 'Kenyatta Ave Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2700, '204', 'Wajir Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2701, '205', 'Bondeni Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2702, '206', 'Garissa Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2703, '207', 'Mandera Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2704, '208', 'Isiolo Amanah', 38, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2705, '0', 'Head Office', 39, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2706, '101', 'City Centre', 39, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2707, '102', 'NIC House', 39, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2708, '103', 'Harbour House ', 39, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2709, '104', 'Head Office-Fargo', 39, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2710, '105', 'Westlands ', 39, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2711, '106', 'The Junction Br. ', 39, NULL, '2016-03-31 03:37:24', '2016-03-31 03:37:24'),
(2712, '107', 'Nakuru ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2713, '108', 'Nyali ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2714, '109', 'Nkrumah Road ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2715, '110', 'Harambee ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2716, '111', 'Prestige - Ngong Road ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2717, '112', 'Kisumu ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2718, '113', 'Thika ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2719, '114', 'Meru', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2720, '115', 'Galleria (bomas ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2721, '116', 'ELDORET', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2722, '117', 'VILLAGE MARKET', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2723, '118', 'SAMEER PARK', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2724, '119', 'Karen', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2725, '121', 'Taj Mall', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2726, '122', 'ABC', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2727, '123', 'Thika Road Mall ', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2728, '124', 'Changamwe Branch', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2729, '125', 'Kenyatta Avenue', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2730, '126', 'Riverside', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2731, '127', 'Machakos', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2732, '128', 'Lunga Lunga', 39, NULL, '2016-03-31 03:37:25', '2016-03-31 03:37:25'),
(2733, '0', 'Head Office ', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2734, '1', 'Koinange Street ', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2735, '3', 'Nakuru ', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2736, '4', 'Nakuru ', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2737, '5', 'Eldoret ', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2738, '6', 'Kitale ', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2739, '7', 'Westlands ', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2740, '8', 'Nakumatt Mega', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2741, '9', 'Thika Road Mall', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2742, '10', 'Mombasa', 40, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2743, '0', 'Head Office ', 41, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2744, '1', 'Westlands ', 41, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2745, '2', 'Parklands ', 41, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2746, '3', 'Koinange Street ', 41, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2747, '4', 'Mombasa ', 41, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2748, '6', 'Eldoret', 41, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2749, '7', 'Industrial Area', 41, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2750, '0', 'H/o Riverside ', 42, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2751, '1', 'Kenindia ', 42, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2752, '2', 'Biashara ', 42, NULL, '2016-03-31 03:37:26', '2016-03-31 03:37:26'),
(2753, '3', 'Mombasa ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2754, '4', 'Westlands ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2755, '5', 'Industrial Area ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2756, '6', 'Kisumu ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2757, '7', 'Parklands ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2758, '8', 'Riverside Drive ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2759, '9', 'Card Centre ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2760, '10', 'Hurlingham ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2761, '11', 'Capital Centre ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2762, '12', 'Nyali ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2763, '14', 'Kamukunji ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2764, '15', 'Eldoret', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2765, '16', 'Karen ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2766, '17', 'Nakuru ', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2767, '18', 'Gigiri', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2768, '19', 'Thika', 42, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2769, NULL, 'Head Office', 43, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2770, NULL, 'Kenyatta Market', 43, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2771, NULL, 'Karen', 43, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2772, NULL, 'Tom Mboya', 43, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2773, NULL, 'Ngong', 43, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2774, NULL, 'Wote - Makueni ', 43, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2775, NULL, 'Machakos', 43, NULL, '2016-03-31 03:37:27', '2016-03-31 03:37:27'),
(2776, NULL, 'Ongata Rongai', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2777, NULL, 'Kibwezi', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2778, NULL, 'Athi River', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2779, NULL, 'Emali', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2780, NULL, 'Mlolongo', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2781, NULL, 'Kajiado', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2782, NULL, 'Westlands', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2783, NULL, 'Ngara', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2784, NULL, 'Uthiru', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2785, NULL, 'Kikuyu', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2786, NULL, 'Limuru', 43, NULL, '2016-03-31 03:37:28', '2016-03-31 03:37:28'),
(2787, NULL, 'Adams Arcade', 43, NULL, '2016-03-31 03:37:29', '2016-03-31 03:37:29'),
(2788, NULL, 'Kitengela', 43, NULL, '2016-03-31 03:37:29', '2016-03-31 03:37:29'),
(2789, NULL, 'Karuri', 43, NULL, '2016-03-31 03:37:30', '2016-03-31 03:37:30'),
(2790, NULL, 'Kawangware', 43, NULL, '2016-03-31 03:37:30', '2016-03-31 03:37:30'),
(2791, NULL, 'Ruiru', 43, NULL, '2016-03-31 03:37:31', '2016-03-31 03:37:31'),
(2792, NULL, 'Githurai', 43, NULL, '2016-03-31 03:37:31', '2016-03-31 03:37:31'),
(2793, NULL, 'Mwingi', 43, NULL, '2016-03-31 03:37:31', '2016-03-31 03:37:31'),
(2794, NULL, 'Eastleigh', 43, NULL, '2016-03-31 03:37:31', '2016-03-31 03:37:31'),
(2795, NULL, 'Thika', 43, NULL, '2016-03-31 03:37:31', '2016-03-31 03:37:31'),
(2796, NULL, 'Kiambu', 43, NULL, '2016-03-31 03:37:31', '2016-03-31 03:37:31'),
(2797, NULL, 'Garissa', 43, NULL, '2016-03-31 03:37:31', '2016-03-31 03:37:31'),
(2798, NULL, 'Matuu', 43, NULL, '2016-03-31 03:37:31', '2016-03-31 03:37:31'),
(2799, NULL, 'Dandora', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2800, NULL, 'Afya Center', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2801, NULL, 'Cannon House', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2802, NULL, 'Viwandani', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2803, NULL, 'Kitui', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2804, NULL, 'Ronald Ngala', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2805, NULL, 'Enterprise Post Office', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2806, NULL, 'Jogoo Road', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2807, NULL, 'Nacico', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2808, NULL, 'Kangundo', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2809, NULL, 'Kenyatta', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2810, NULL, 'Kariobangi', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2811, NULL, 'Nakuru', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2812, NULL, 'Naivasha', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2813, NULL, 'Narok', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2814, NULL, 'Eldoret', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2815, NULL, 'Kapsabet', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2816, NULL, 'Molo', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2817, NULL, 'Kabarnet', 43, NULL, '2016-03-31 03:37:32', '2016-03-31 03:37:32'),
(2818, NULL, 'Nandi Hills', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2819, NULL, 'Kitale', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2820, NULL, 'Gilgil', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2821, NULL, 'Kapenguria', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2822, NULL, 'Nyahururu', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2823, NULL, 'Lodwar', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2824, NULL, 'Eldama Ravine', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2825, NULL, 'Maralal', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2826, NULL, 'Iten', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2827, NULL, 'Kisumu', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2828, NULL, 'Kakamega', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2829, NULL, 'Bungoma', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2830, NULL, 'HomaBay', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2831, NULL, 'Busia', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2832, NULL, 'Mumias', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2833, NULL, 'Siaya', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2834, NULL, 'Kisii', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2835, NULL, 'Webuye', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2836, NULL, 'Suna Migori', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2837, NULL, 'Sare Awendo', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2838, NULL, 'Luanda', 43, NULL, '2016-03-31 03:37:33', '2016-03-31 03:37:33'),
(2839, NULL, 'Keroka', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2840, NULL, 'Kehancha', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2841, NULL, 'Nyamira', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2842, NULL, 'Bomet', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2843, NULL, 'Kericho', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2844, NULL, 'Mbale', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2845, NULL, 'Oyugis', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2846, NULL, 'Mbita', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2847, NULL, 'Bondo', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2848, NULL, 'Chaani', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2849, NULL, 'Ukunda', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2850, NULL, 'Voi', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2851, NULL, 'Kilifi', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2852, NULL, 'Likoni', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2853, NULL, 'Mombasa', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2854, NULL, 'Moi Avenue', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2855, NULL, 'Malindi', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2856, NULL, 'Mtwapa', 43, NULL, '2016-03-31 03:37:34', '2016-03-31 03:37:34'),
(2857, NULL, 'Kisauni', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2858, NULL, 'Mariakani', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2859, NULL, 'Taveta', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2860, NULL, 'Watamu', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2861, NULL, 'Kerugoya', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2862, NULL, 'Embu', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2863, NULL, 'Meru', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2864, NULL, 'Nanyuki', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2865, NULL, 'Muranga', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2866, NULL, 'Nyeri', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2867, NULL, 'Karatina', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2868, NULL, 'Chuka', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2869, NULL, 'Wanguru', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2870, NULL, 'Maua', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2871, NULL, 'Isiolo', 43, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2872, '0', 'Eldoret ', 44, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2873, '1', 'Kericho ', 44, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2874, '2', 'Kisumu ', 44, NULL, '2016-03-31 03:37:35', '2016-03-31 03:37:35'),
(2875, 's', 'Kitale ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2876, '4', 'Treasury Square ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2877, '5', 'Kilindini ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2878, '6', 'Kenyatta Avenue ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2879, '8', 'Moi Avenue ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2880, '9', 'Nakuru ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2881, '10', 'Nanyuki ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2882, '11', 'Nyeri ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2883, '12', 'Thika ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2884, '15', 'Westlands ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2885, '16', 'Machakos ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2886, '17', 'Meru ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2887, '19', 'Harambee Avenue ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2888, '20', 'Kiambu ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2889, '53', 'Industrial Area ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2890, '54', 'Kakamega ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2891, '60', 'Malindi ', 44, NULL, '2016-03-31 03:37:36', '2016-03-31 03:37:36'),
(2892, '64', 'Koinage', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2893, '71', 'Yaya Centre Branch ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2894, '72', 'Ruaraka ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2895, '73', 'Langata ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2896, '74', 'Makupa ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2897, '75', 'Karen ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2898, '76', 'Muthaiga ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2899, '78', 'C.o.u ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2900, '79', 'Ukay ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2901, '80', 'Eastleigh ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2902, '81', 'Kisii ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2903, '82', 'Upper Hill Branch ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2904, '83', 'Nyali ', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2905, '84', 'Chiromo', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2906, '85', 'Greenspan', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2907, '86', 'The T-Mall', 44, NULL, '2016-03-31 03:37:37', '2016-03-31 03:37:37'),
(2908, '87', 'The Junction', 44, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2909, '89', 'Kitengela', 44, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2910, '90', 'Bungoma ', 44, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2911, '91', 'Thika Road Mall', 44, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2912, '92', 'UN Gigiri', 44, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2913, '1', 'Head Office ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2914, '2', 'Mombasa ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2915, '3', 'Eldoret ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2916, '4', 'Nakuru ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2917, '5', 'Mia ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2918, '6', 'Jkia ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2919, '7', 'Kirinyaga Rd Nakuru ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2920, '8', 'Kabarak ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2921, '9', 'Olenguruone ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2922, '10', 'Kericho ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2923, '11', 'Nandi Hills', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2924, '12', 'Epz ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2925, '13', 'Sheikh Karume ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2926, '14', 'Kabarnet ', 45, NULL, '2016-03-31 03:37:38', '2016-03-31 03:37:38'),
(2927, '15', 'Kitale', 45, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2928, '16', 'Narok', 45, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2929, '17', 'Bomet', 45, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2930, '18', 'Iten', 45, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2931, '1', 'Westlands ', 46, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2932, '2', 'Enterprise Road ', 46, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2933, '3', 'Upper Hill ', 46, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2934, '99', 'Head Office ', 46, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2935, '1', 'Victoria Towers, Upperhill', 47, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2936, '2', 'Riverside Drive', 47, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2937, '3', 'Lunga Lunga Square', 47, NULL, '2016-03-31 03:37:39', '2016-03-31 03:37:39'),
(2938, 'GT', 'Githurai', 50, NULL, '2016-08-10 11:30:55', '2016-08-10 11:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `benefitsettings`
--

CREATE TABLE IF NOT EXISTS `benefitsettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `benefit_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `benefitsettings_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Head Office', NULL, '2016-07-27 06:03:33', '2016-07-27 06:03:33'),
(2, 'nairobi', 1, '2016-08-01 08:58:23', '2016-08-01 08:58:23'),
(3, 'Kericho', 8, '2016-08-10 11:42:48', '2016-08-10 11:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE IF NOT EXISTS `budgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `expensesetting_id` int(11) NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `financial_month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `financial_year` int(11) NOT NULL,
  `organization_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `budgets_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `budgets`
--

INSERT INTO `budgets` (`id`, `expensesetting_id`, `amount`, `financial_month`, `financial_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 9, '1,000.00', 'Aug', 0, 8, '2016-08-10 09:45:46', '2016-08-10 09:46:46'),
(2, 11, '7,000.00', 'Aug', 0, 8, '2016-08-11 06:24:13', '2016-08-11 06:24:13'),
(3, 10, '60,000.00', 'Aug', 0, 8, '2016-08-15 06:40:50', '2016-08-15 06:40:50'),
(4, 12, '5,000.00', 'Sep', 2016, 11, '2016-09-20 06:04:46', '2016-09-20 06:10:06'),
(5, 13, '5,000.00', 'Sep', 2016, 11, '2016-09-20 06:10:49', '2016-09-20 06:10:49'),
(6, 14, '10,000.00', 'Sep', 2016, 11, '2016-09-20 06:11:33', '2016-09-20 06:11:33'),
(7, 15, '4,000.00', 'Nov', 2016, 12, '2016-11-07 05:46:55', '2016-11-07 05:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE IF NOT EXISTS `charges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calculation_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage_of` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float(10,0) NOT NULL,
  `fee` tinyint(1) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `charge_loanproduct`
--

CREATE TABLE IF NOT EXISTS `charge_loanproduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charge_id` int(10) unsigned NOT NULL,
  `loanproduct_id` int(10) unsigned NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loancharges_charge_id_foreign` (`charge_id`),
  KEY `loancharges_loanproduct_id_foreign` (`loanproduct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `charge_savingproduct`
--

CREATE TABLE IF NOT EXISTS `charge_savingproduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charge_id` int(10) unsigned NOT NULL,
  `savingproduct_id` int(10) unsigned NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `savingcharges_charge_id_foreign` (`charge_id`),
  KEY `savingcharges_savingproduct_id_foreign` (`savingproduct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `citizenships`
--

CREATE TABLE IF NOT EXISTS `citizenships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `citizenships_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `citizenships`
--

INSERT INTO `citizenships` (`id`, `name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Kenyan', NULL, '2016-07-27 06:03:33', '2016-07-27 06:03:33'),
(2, 'Ugandan', NULL, '2016-07-27 06:03:33', '2016-07-27 06:03:33'),
(3, 'Tanzanian', NULL, '2016-07-27 06:03:33', '2016-07-27 06:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `date`, `email`, `phone`, `address`, `contact_person`, `contact_person_phone`, `contact_person_email`, `type`, `organization_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Ken wango', '2016-07-27', 'ken@gmail.com', '072909878', '', '', '', '', 'Customer', 0, '2016-07-27 07:39:02', '2016-07-27 07:39:02', NULL),
(2, 'jacob', '2016-07-27', 'jacq@gmail.com', '', '', 'Chumo', '', '', 'Supplier', 0, '2016-07-27 07:45:46', '2016-07-27 07:45:46', NULL),
(3, 'Stevie Mwangi', '2016-08-09', 'stevie@gmail.com', '074636564372', '', 'steveie', '', '', 'Customer', 1, '2016-08-09 08:56:57', '2016-08-09 08:56:57', NULL),
(4, 'Cripino', '2016-08-09', 'cripino@gmail.com', '07116473777', '', 'cris', '', 'cris@lixnet.net', 'Supplier', 1, '2016-08-09 08:57:44', '2016-08-09 08:57:44', NULL),
(5, 'Uchumi', '2016-08-09', 'stevie@gmail.com', '07116473777', '', 'steveie', '', '', 'Customer', 8, '2016-08-09 09:43:33', '2016-08-09 09:43:33', NULL),
(6, 'Nakumatt', '2016-08-09', 'nakumatt@gmail.com', '074636564372', '', 'nakumatt', '', '', 'Supplier', 8, '2016-08-09 09:44:27', '2016-08-09 09:44:27', NULL),
(7, 'Stevie', '2016-08-11', 'stevie@lixnet.net', '0738984748', '', 'stevie', '', '', 'Customer', 8, '2016-08-11 06:19:11', '2016-08-11 06:19:11', NULL),
(8, 'Kencode', '2016-08-11', 'kenco@gmail.com', '07433432223', '', 'ken', '', '', 'Supplier', 8, '2016-08-11 06:20:01', '2016-08-11 06:20:01', NULL),
(9, 'Cris', '2016-08-15', 'cris@gmail.com', '0739282882', '', 'crispino', '', '', 'Customer', 8, '2016-08-15 06:23:39', '2016-08-15 06:23:39', NULL),
(10, 'Kelvin', '2016-08-15', 'kelvin@gmail.com', '073737363', '', 'kelvin', '', '', 'Supplier', 8, '2016-08-15 06:32:38', '2016-08-15 06:32:38', NULL),
(11, 'Graceful Technologies', '2016-08-30', 'profmakamu@gmail.com', '0729683817', NULL, NULL, NULL, NULL, 'Customer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10),
(12, 'Lixonet Tech', '2016-08-30', 'nehigna@gmail.com', '7654568799', NULL, NULL, NULL, NULL, 'Customer', NULL, '0000-00-00 00:00:00', '2016-08-30 08:16:32', 11),
(13, 'LixonetTech', '2016-08-30', 'nehigna@gmail.com', '7654568799', NULL, NULL, NULL, NULL, 'Customer', NULL, '0000-00-00 00:00:00', '2016-08-30 08:17:08', 11),
(14, 'Tramier Technologies', '2016-08-30', 'makamukelvin@ymail.com', '0745236987', NULL, NULL, NULL, NULL, 'Supplier', NULL, '0000-00-00 00:00:00', '2016-08-30 08:22:49', 12),
(15, 'Tramier Technologies', '2016-08-30', 'makamukelvin@ymail.com', '0745236987', NULL, NULL, NULL, NULL, 'Supplier', NULL, '0000-00-00 00:00:00', '2016-08-30 08:22:58', 12),
(16, 'lixnet', '2016-09-01', 'chrispus.cheruiyot@lixnet.net', '0710411226', NULL, NULL, NULL, NULL, 'Customer', NULL, '0000-00-00 00:00:00', '2016-09-01 15:46:30', 12),
(17, 'Daticho', '2016-09-02', 'chrispus.cheruiyot@lixnet.net', '0710411226', NULL, NULL, NULL, NULL, 'Customer', NULL, '0000-00-00 00:00:00', '2016-09-02 05:46:31', 12),
(18, 'Dreatove', '2016-09-02', 'chrispus.cheruiyot@lixnet.net', '0730567876', NULL, NULL, NULL, NULL, 'Customer', NULL, '0000-00-00 00:00:00', '2016-09-02 05:48:28', 12),
(19, 'Swer', '2016-09-02', 'chrispus.cheruiyot@lixnet.net', '0721345678', NULL, NULL, NULL, NULL, 'Customer', NULL, '0000-00-00 00:00:00', '2016-09-02 05:57:16', 12),
(20, 'Derva', '2016-09-02', 'chrispuscheruiyot@lixnet.net', '0721345678', NULL, NULL, NULL, NULL, 'Customer', NULL, '0000-00-00 00:00:00', '2016-09-02 05:57:54', 13),
(21, 'Victor', '2016-09-20', 'vic@gmail.com', '0712342423', '', '', '', '', 'Customer', 11, '2016-09-20 05:55:25', '2016-09-20 05:55:25', NULL),
(22, 'Gabriel', '2016-09-20', 'gabu@gmail.com', '0770440123', '', '', '', '', 'Supplier', 11, '2016-09-20 06:16:52', '2016-09-20 06:16:52', NULL),
(23, 'Lixnet Tech', '2016-09-20', 'info@lixnet.net', '', '', '', '', '', 'Supplier', 11, '2016-09-20 06:19:56', '2016-09-20 06:19:56', NULL),
(24, 'Lixnet Technologies', '2016-10-06', 'info@lixnet.net', '07108987687', '', '', '', '', 'Customer', 12, '2016-10-06 06:19:30', '2016-10-06 06:19:30', NULL),
(25, 'James', '2016-10-06', '', '073474738383', '', 'jymo', '', '', 'Supplier', 12, '2016-10-06 06:20:25', '2016-10-06 06:20:25', NULL),
(26, 'VirtualTech', '2016-10-26', 'info@virtualtech.net', '020444904', '90393, Nairobi', 'Crispus', '+254710411226', 'crispus15@gmail.com', 'Customer', 17, '2016-10-26 08:15:19', '2016-10-26 08:15:19', NULL),
(27, 'Spectre Int', '2016-10-26', 'info@spect.co.ke', '039494484', '4423', 'barry', '', '', 'Supplier', 17, '2016-10-26 08:16:28', '2016-10-26 08:16:28', NULL),
(28, 'Stevie Niz', '2016-10-26', 'niz@gmail.com', '0715486954', '', 'Steve', '0715486954', '', 'Customer', 16, '2016-10-26 08:32:28', '2016-10-26 08:32:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `shortname`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Kenyan Shillings', 'KES', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE IF NOT EXISTS `deductions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deduction_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `deductions_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `deduction_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Salary Advance', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(2, 'Loans', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(3, 'Savings', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(4, 'Breakages and spoilages', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `departments_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Finance', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36'),
(2, 'Human Resource', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36'),
(3, 'Information Technology', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36'),
(4, 'Management', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36'),
(5, 'Marketing', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `from_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `documents_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `employee_id`, `document_name`, `document_path`, `description`, `from_date`, `expiry_date`, `created_at`, `updated_at`) VALUES
(5, 8, 'bla.php', '1474285688-AfricasTalkingGateway.php', 'bla', '2016-09-01', '2016-09-02', '2016-09-19 11:56:05', '2016-09-19 11:56:05'),
(6, 8, 'bla1.php', '1474285688-addads.php', 'bla1', '2016-09-01', '2016-09-29', '2016-09-19 11:56:05', '2016-09-19 11:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE IF NOT EXISTS `earnings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `earning_id` int(10) unsigned NOT NULL,
  `narrative` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instalments` int(11) DEFAULT '0',
  `earnings_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `earning_date` date NOT NULL,
  `first_day_month` date NOT NULL,
  `last_day_month` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `earnings_employee_id_foreign` (`employee_id`),
  KEY `earnings_earning_id_foreign` (`earning_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `employee_id`, `earning_id`, `narrative`, `formular`, `instalments`, `earnings_amount`, `earning_date`, `first_day_month`, `last_day_month`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '', 'One Time', 1, '4000.00', '2016-07-29', '2016-07-01', '2016-07-31', '2016-07-28 08:54:16', '2016-07-28 08:54:16'),
(2, 4, 2, '', 'One Time', 1, '50000.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-01 06:15:46', '2016-08-01 06:15:46'),
(3, 5, 1, '', 'One Time', 1, '4000.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-01 06:16:52', '2016-08-01 06:16:52'),
(4, 6, 1, '', 'One Time', 1, '2000.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-10 08:48:53', '2016-08-10 08:48:53'),
(5, 7, 2, '', 'Recurring', 1, '200.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-10 08:50:15', '2016-08-10 08:50:15'),
(6, 8, 1, 'Best Employee', 'One Time', 0, '20000.00', '2016-09-01', '2016-09-01', '2016-09-30', '2016-09-19 06:02:37', '2016-09-19 06:02:37'),
(7, 10, 1, '', 'One Time', 1, '5000.00', '2016-11-01', '2016-11-01', '2016-11-30', '2016-10-26 07:02:10', '2016-10-26 07:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `earningsettings`
--

CREATE TABLE IF NOT EXISTS `earningsettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `earning_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `earningsettings_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `earningsettings`
--

INSERT INTO `earningsettings` (`id`, `earning_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Bonus', NULL, '2016-07-27 06:03:33', '2016-07-27 06:03:33'),
(2, 'Commission', NULL, '2016-07-27 06:03:33', '2016-07-27 06:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE IF NOT EXISTS `education` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `education_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `education_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `education_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Primary School', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(2, 'Secondary School', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(3, 'College - Certificate', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(4, 'College - Diploma', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(5, 'Degree', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(6, 'Masters Degree', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(7, 'PHD', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(8, 'None', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `emergencycontacts`
--

CREATE TABLE IF NOT EXISTS `emergencycontacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `same_address_employee` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellular_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_road` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `emergencycontacts_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(10) unsigned NOT NULL,
  `personal_file_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `passport_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basic_pay` double(15,2) NOT NULL DEFAULT '0.00',
  `vol_amount` double(15,2) NOT NULL DEFAULT '0.00',
  `pin` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_security_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital_insurance_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_permit_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  `job_group_id` int(10) unsigned DEFAULT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital_status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yob` date DEFAULT NULL,
  `citizenship_id` int(10) unsigned DEFAULT NULL,
  `education_type_id` int(10) unsigned DEFAULT NULL,
  `income_tax_applicable` int(11) NOT NULL DEFAULT '1',
  `income_tax_relief_applicable` int(11) NOT NULL DEFAULT '1',
  `hospital_insurance_applicable` int(11) NOT NULL DEFAULT '1',
  `social_security_applicable` int(11) NOT NULL DEFAULT '1',
  `mode_of_payment` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_id` int(10) unsigned DEFAULT NULL,
  `bank_branch_id` int(10) unsigned DEFAULT NULL,
  `bank_account_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_eft_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swift_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_clock_rate_normal` double(15,2) NOT NULL DEFAULT '0.00',
  `day_clock_rate_normal` double(15,2) NOT NULL DEFAULT '0.00',
  `time_clock_rate_weekday` double(15,2) NOT NULL DEFAULT '0.00',
  `day_clock_rate_weekday` double(15,2) NOT NULL DEFAULT '0.00',
  `time_clock_rate_saturday` double(15,2) NOT NULL DEFAULT '0.00',
  `day_clock_rate_saturday` double(15,2) NOT NULL DEFAULT '0.00',
  `time_clock_rate_sunday` double(15,2) NOT NULL DEFAULT '0.00',
  `day_clock_rate_sunday` double(15,2) NOT NULL DEFAULT '0.00',
  `time_clock_rate_holiday` double(15,2) NOT NULL DEFAULT '0.00',
  `day_clock_rate_holiday` double(15,2) NOT NULL DEFAULT '0.00',
  `medical_smoker` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_blood_group` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_disabilities` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_conditions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_office` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_personal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_office` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_extension_office` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_zip` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_joined` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bf_leave_days` int(11) NOT NULL DEFAULT '0',
  `annual_leave_days` int(11) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `custom_field1` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field3` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field4` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_employment` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `is_css_active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_identity_number_unique` (`identity_number`),
  UNIQUE KEY `employee_email_office_unique` (`email_office`),
  UNIQUE KEY `employee_passport_number_unique` (`passport_number`),
  UNIQUE KEY `employee_pin_unique` (`pin`),
  UNIQUE KEY `employee_social_security_number_unique` (`social_security_number`),
  UNIQUE KEY `employee_hospital_insurance_number_unique` (`hospital_insurance_number`),
  UNIQUE KEY `employee_work_permit_number_unique` (`work_permit_number`),
  UNIQUE KEY `employee_bank_account_number_unique` (`bank_account_number`),
  UNIQUE KEY `employee_bank_eft_code_unique` (`bank_eft_code`),
  UNIQUE KEY `employee_swift_code_unique` (`swift_code`),
  UNIQUE KEY `employee_email_personal_unique` (`email_personal`),
  UNIQUE KEY `employee_telephone_office_unique` (`telephone_office`),
  UNIQUE KEY `employee_telephone_extension_office_unique` (`telephone_extension_office`),
  UNIQUE KEY `employee_telephone_mobile_unique` (`telephone_mobile`),
  KEY `employee_organization_id_foreign` (`organization_id`),
  KEY `employee_branch_id_foreign` (`branch_id`),
  KEY `employee_department_id_foreign` (`department_id`),
  KEY `employee_job_group_id_foreign` (`job_group_id`),
  KEY `employee_type_id_foreign` (`type_id`),
  KEY `employee_citizenship_id_foreign` (`citizenship_id`),
  KEY `employee_education_type_id_foreign` (`education_type_id`),
  KEY `employee_bank_id_foreign` (`bank_id`),
  KEY `employee_bank_branch_id_foreign` (`bank_branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `organization_id`, `personal_file_number`, `first_name`, `last_name`, `middle_name`, `identity_number`, `passport_number`, `basic_pay`, `vol_amount`, `pin`, `social_security_number`, `hospital_insurance_number`, `work_permit_number`, `job_title`, `branch_id`, `department_id`, `job_group_id`, `type_id`, `photo`, `signature`, `gender`, `marital_status`, `yob`, `citizenship_id`, `education_type_id`, `income_tax_applicable`, `income_tax_relief_applicable`, `hospital_insurance_applicable`, `social_security_applicable`, `mode_of_payment`, `bank_id`, `bank_branch_id`, `bank_account_number`, `bank_eft_code`, `swift_code`, `time_clock_rate_normal`, `day_clock_rate_normal`, `time_clock_rate_weekday`, `day_clock_rate_weekday`, `time_clock_rate_saturday`, `day_clock_rate_saturday`, `time_clock_rate_sunday`, `day_clock_rate_sunday`, `time_clock_rate_holiday`, `day_clock_rate_holiday`, `medical_smoker`, `medical_blood_group`, `medical_disabilities`, `medical_conditions`, `email_office`, `email_personal`, `telephone_office`, `telephone_extension_office`, `telephone_mobile`, `postal_address`, `postal_zip`, `date_joined`, `bf_leave_days`, `annual_leave_days`, `start_date`, `end_date`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `in_employment`, `is_css_active`, `created_at`, `updated_at`) VALUES
(3, 2, '1', 'Josephine', 'Ayienda', '', '268767373', NULL, 60000.00, 0.00, 'A28383838238p', '7737733737', '6382373', NULL, '', 1, 4, 2, 1, 'default_photo.png', 'sign_av.jpg', 'female', 'Married', '1998-07-01', 1, 5, 1, 1, 1, 1, 'Bank', 46, 2, '07353535255353', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'jos@lixnet.net', NULL, NULL, NULL, NULL, '', '', '2016-07-21', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 0, '2016-07-28 07:19:17', '2016-07-28 07:19:17'),
(4, 1, '003', 'Chiero', 'Eric', '', '30787656', NULL, 50000.00, 0.00, 'A3838382983P', '78777373', '88920838', NULL, '', 2, 5, 2, 1, 'default_photo.png', 'sign_av.jpg', 'male', 'Single', '1983-06-08', 1, 6, 1, 1, 1, 1, 'Bank', 12, 1041, '0723454323', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'eric.chiero@lixnet.net', NULL, NULL, NULL, NULL, '', '', '2016-07-13', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 0, '2016-08-01 06:02:04', '2016-08-01 06:14:33'),
(5, 1, '4', 'Cheruiyot', 'Kibet', '', '267876567', NULL, 70000.00, 0.00, 'K3422238743', '3456646', '54638837', NULL, '', 1, 4, 2, 1, 'default_photo.png', 'sign_av.jpg', 'male', 'Single', '1988-07-05', 1, 5, 1, 1, 1, 1, 'Bank', 17, 1497, '07245646664', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'kibet@lixnet.net', NULL, NULL, NULL, NULL, '', '', '2016-03-01', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 0, '2016-08-01 06:11:43', '2016-08-01 06:11:43'),
(6, 8, '10', 'josephine', 'Ayienda', '', '28563553', NULL, 50000.00, 0.00, 'A2192828911P', '8276789', '222765678', NULL, '', 1, 4, 2, 1, 'default_photo.png', 'sign_av.jpg', 'female', 'Married', '1998-08-04', 3, 6, 1, 1, 1, 1, 'Bank', 50, 2938, '07132234432', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'jose@gmail.com', NULL, NULL, NULL, NULL, '', '', '2016-08-01', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 0, '2016-08-10 08:36:54', '2016-08-10 08:43:53'),
(7, 8, '11', 'Lamech', 'Aondo', '', '2839890', NULL, 100000.00, 0.00, 'A2872636336P', '9387893', '78909829', NULL, '', 3, 1, 1, 1, 'default_photo.png', 'sign_av.jpg', 'male', 'Married', '1998-07-27', 1, 7, 1, 1, 1, 1, 'Bank', 50, 2938, '0734212343', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'aondo@gmail.com', NULL, NULL, NULL, NULL, '', '', '2016-07-04', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 0, '2016-08-10 08:43:13', '2016-08-10 08:43:13'),
(8, 11, 'B.1', 'Kennedy', 'Wango', 'Wachira', '27781190', NULL, 50388.71, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, 1, 'default_photo.png', 'sign_av.jpg', 'male', '', '1990-06-13', NULL, NULL, 1, 1, 1, 1, 'Bank', 19, 193, '1239812737217', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'ken.wango@lixnet.net', NULL, NULL, NULL, NULL, '', '', '2015-07-13', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 1, '2016-09-19 04:43:20', '2016-09-19 11:56:05'),
(9, 11, 'B.2', 'James', 'Githu', '', '1232343', NULL, 50388.71, 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, 1, 'default_photo.png', 'sign_av.jpg', 'male', '', '1990-01-01', NULL, NULL, 1, 1, 1, 1, '', NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'wangoken2@gmail.com', NULL, NULL, NULL, NULL, '', '', '2016-09-01', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 0, '2016-09-19 04:44:22', '2016-09-19 07:19:00'),
(10, 12, 'K.1', 'Josephine', 'Ayienda', '', '287967456', NULL, 40000.00, 0.00, 'A20293330998P', '36635363', '466373772', NULL, '', 1, 3, 2, 1, 'default_photo.png', 'sign_av.jpg', 'female', 'Married', '1989-07-12', 1, 5, 1, 1, 1, 1, 'Cheque', 17, 1497, '0716787656445', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'josephine.ayienda@lixnet.net', NULL, NULL, NULL, NULL, '', '', '2015-06-12', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 1, '2016-10-07 08:55:30', '2016-10-17 05:55:35'),
(11, 17, 'LTL1', 'JOB', 'MAMBOLEO', 'M', '24958676', NULL, 726826738.00, 0.00, 'A3994944K', '8887333', '3566565', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'BANK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 0, '2016-10-18 02:49:09', '2016-10-18 02:49:09'),
(13, 12, 'K.2', 'Kelvin', 'Makamu', '', '398882882', NULL, 100000.00, 0.00, 'A39988767P', '3765467322', '236378746', NULL, '', 1, 4, 2, 1, 'default_photo.png', 'sign_av.jpg', 'male', 'Single', '1990-02-07', 1, 5, 1, 1, 1, 1, 'Bank', 4, 459, '1677663782288', NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, 'kelvin.makamu@lixnet.net', NULL, NULL, NULL, NULL, '', '', '2012-03-01', 0, 0, '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, 'Y', 0, '2016-10-19 06:02:20', '2016-10-19 06:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `employeebenefits`
--

CREATE TABLE IF NOT EXISTS `employeebenefits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobgroup_id` int(10) unsigned NOT NULL,
  `benefit_id` int(10) unsigned NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `employeebenefits_jobgroup_id_foreign` (`jobgroup_id`),
  KEY `employeebenefits_benefit_id_foreign` (`benefit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employeenontaxables`
--

CREATE TABLE IF NOT EXISTS `employeenontaxables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `nontaxable_id` int(10) unsigned NOT NULL,
  `formular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instalments` int(11) DEFAULT '0',
  `nontaxable_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `nontaxable_date` date NOT NULL,
  `first_day_month` date NOT NULL,
  `last_day_month` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `employeenontaxables_employee_id_foreign` (`employee_id`),
  KEY `employeenontaxables_nontaxable_id_foreign` (`nontaxable_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employeenontaxables`
--

INSERT INTO `employeenontaxables` (`id`, `employee_id`, `nontaxable_id`, `formular`, `instalments`, `nontaxable_amount`, `nontaxable_date`, `first_day_month`, `last_day_month`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'One Time', 1, '5000.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-10 08:55:52', '2016-08-10 08:55:52'),
(2, 9, 1, 'One Time', 0, '2000.00', '2016-09-01', '2016-09-01', '2016-09-30', '2016-09-19 06:05:25', '2016-09-19 06:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `employee_allowances`
--

CREATE TABLE IF NOT EXISTS `employee_allowances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `allowance_id` int(10) unsigned NOT NULL,
  `formular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instalments` int(11) DEFAULT '0',
  `allowance_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `allowance_date` date NOT NULL,
  `first_day_month` date NOT NULL,
  `last_day_month` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `employee_allowances_employee_id_foreign` (`employee_id`),
  KEY `employee_allowances_allowance_id_foreign` (`allowance_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `employee_allowances`
--

INSERT INTO `employee_allowances` (`id`, `employee_id`, `allowance_id`, `formular`, `instalments`, `allowance_amount`, `allowance_date`, `first_day_month`, `last_day_month`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'One Time', 1, '2000.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-01 06:20:52', '2016-08-01 06:20:52'),
(2, 5, 1, 'One Time', 1, '4000.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-01 06:34:01', '2016-08-01 06:34:01'),
(3, 6, 2, 'Recurring', 1, '3000.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-10 08:51:24', '2016-08-10 08:51:24'),
(4, 9, 1, 'One Time', 0, '5000.00', '2016-09-01', '2016-09-01', '2016-09-30', '2016-09-19 06:07:04', '2016-09-19 06:07:04'),
(5, 10, 2, 'Recurring', 1, '6000.00', '2016-11-01', '2016-11-01', '2016-11-30', '2016-10-26 07:02:56', '2016-10-26 07:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_deductions`
--

CREATE TABLE IF NOT EXISTS `employee_deductions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `deduction_id` int(10) unsigned NOT NULL,
  `formular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instalments` int(11) DEFAULT '0',
  `deduction_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `deduction_date` date NOT NULL,
  `first_day_month` date NOT NULL,
  `last_day_month` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `employee_deductions_employee_id_foreign` (`employee_id`),
  KEY `employee_deductions_deduction_id_foreign` (`deduction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `employee_deductions`
--

INSERT INTO `employee_deductions` (`id`, `employee_id`, `deduction_id`, `formular`, `instalments`, `deduction_amount`, `deduction_date`, `first_day_month`, `last_day_month`, `created_at`, `updated_at`) VALUES
(1, 6, 4, 'One Time', 1, '100.00', '2016-08-31', '2016-08-01', '2016-08-31', '2016-08-10 08:54:55', '2016-08-10 08:54:55'),
(2, 8, 1, 'One Time', 0, '3000.00', '2016-09-01', '2016-09-01', '2016-09-30', '2016-09-19 06:08:34', '2016-09-19 06:08:34'),
(3, 10, 1, 'One Time', 1, '2000.00', '2016-11-01', '2016-11-01', '2016-11-30', '2016-10-26 07:04:44', '2016-10-26 07:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `employee_relief`
--

CREATE TABLE IF NOT EXISTS `employee_relief` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relief_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `relief_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `employee_relief_relief_id_foreign` (`relief_id`),
  KEY `employee_relief_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `employee_relief`
--

INSERT INTO `employee_relief` (`id`, `relief_id`, `employee_id`, `relief_amount`, `created_at`, `updated_at`) VALUES
(1, 2, 6, '2500.00', '2016-08-10 08:59:48', '2016-08-10 08:59:48'),
(2, 3, 9, '2500.00', '2016-09-19 06:07:41', '2016-09-19 06:07:41'),
(3, 4, 10, '1500.00', '2016-10-26 07:05:37', '2016-10-26 07:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE IF NOT EXISTS `employee_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `employee_type_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`id`, `employee_type_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36'),
(2, 'Contract', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36'),
(3, 'Internship', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36'),
(4, 'Probation', 11, '2016-09-19 09:03:35', '2016-09-19 09:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `erporderitems`
--

CREATE TABLE IF NOT EXISTS `erporderitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `issued_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `date_of_return` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_returned` tinyint(1) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  `duration` int(11) DEFAULT NULL,
  `erporder_id` int(10) unsigned NOT NULL,
  `price` double DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `erporderitems_item_id_foreign` (`item_id`),
  KEY `erporderitems_erporder_id_foreign` (`erporder_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=61 ;

--
-- Dumping data for table `erporderitems`
--

INSERT INTO `erporderitems` (`id`, `item_id`, `quantity`, `issued_by`, `date_of_issue`, `date_of_return`, `status`, `is_returned`, `rate`, `duration`, `erporder_id`, `price`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 35000, 1, '2016-07-27 08:03:03', '2016-07-27 08:03:03'),
(2, 2, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 700, 1, '2016-07-27 08:03:03', '2016-07-27 08:03:03'),
(3, 1, 10, NULL, NULL, NULL, NULL, 0, 0, NULL, 2, 30000, 1, '2016-07-27 08:06:23', '2016-07-27 08:06:23'),
(4, 2, 20, NULL, NULL, NULL, NULL, 0, 0, NULL, 2, 300, 1, '2016-07-27 08:06:23', '2016-07-27 08:06:23'),
(5, 1, 10, NULL, NULL, NULL, NULL, 0, 0, NULL, 3, 35000, 1, '2016-07-27 08:30:11', '2016-07-27 08:30:11'),
(6, 4, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 4, 35000, 0, '2016-08-09 09:11:20', '2016-08-09 09:11:20'),
(7, 4, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 5, 35000, 0, '2016-08-09 09:13:10', '2016-08-09 09:13:10'),
(8, 4, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 6, 35000, 0, '2016-08-09 09:14:00', '2016-08-09 09:14:00'),
(9, 6, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 7, 35000, 8, '2016-08-09 10:07:33', '2016-08-09 10:07:33'),
(10, 6, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 8, 20000, 8, '2016-08-09 10:08:53', '2016-08-09 10:08:53'),
(11, 6, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 9, 35000, 8, '2016-08-09 10:11:55', '2016-08-09 10:11:55'),
(12, 7, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 9, 1200, 8, '2016-08-09 10:11:55', '2016-08-09 10:11:55'),
(13, 6, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 10, 35000, 0, '2016-08-10 08:39:11', '2016-08-10 08:39:11'),
(14, 7, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 11, 1200, 0, '2016-08-10 08:45:37', '2016-08-10 08:45:37'),
(15, 7, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 12, 0, 8, '2016-08-10 08:59:47', '2016-08-10 08:59:47'),
(16, 7, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 13, 1200, 8, '2016-08-10 09:00:46', '2016-08-10 09:00:46'),
(17, 8, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 14, 9000, 8, '2016-08-11 06:27:47', '2016-08-11 06:27:47'),
(18, 9, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 14, 250000, 8, '2016-08-11 06:27:47', '2016-08-11 06:27:47'),
(19, 8, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 15, 7500, 8, '2016-08-11 06:31:44', '2016-08-11 06:31:44'),
(20, 8, 3, NULL, NULL, NULL, NULL, 0, 0, NULL, 16, 9000, 8, '2016-08-11 06:35:25', '2016-08-11 06:35:25'),
(21, 10, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 17, 4500, 8, '2016-08-15 06:42:39', '2016-08-15 06:42:39'),
(22, 11, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 18, 100000, 8, '2016-08-15 06:45:43', '2016-08-15 06:45:43'),
(23, 10, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 18, 7000, 8, '2016-08-15 06:45:44', '2016-08-15 06:45:44'),
(24, 11, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 19, 100000, 8, '2016-08-15 06:49:59', '2016-08-15 06:49:59'),
(25, 10, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 19, 7000, 8, '2016-08-15 06:49:59', '2016-08-15 06:49:59'),
(26, 2, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 20, 700, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 5, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 20, 1200, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 6, 6, NULL, NULL, NULL, NULL, 0, 0, NULL, 21, 35000, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 3, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 21, 50000, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 2, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 22, 700, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 5, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 23, 1200, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 6, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, 24, 35000, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 25, 35000, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 12, 10, NULL, NULL, NULL, NULL, 0, 0, NULL, 26, 70000, 11, '2016-09-20 06:24:05', '2016-09-20 06:24:05'),
(35, 13, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 27, 500, 11, '2016-09-20 06:32:28', '2016-09-20 06:32:28'),
(36, 12, 20, NULL, NULL, NULL, NULL, 0, 0, NULL, 28, 40000, 11, '2016-09-20 06:33:20', '2016-09-20 06:33:20'),
(37, 12, 10, NULL, NULL, NULL, NULL, 0, 0, NULL, 29, 70000, 11, '2016-09-20 06:36:14', '2016-09-20 06:36:14'),
(38, 13, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 30, 500, 11, '2016-09-21 08:26:07', '2016-09-21 08:26:07'),
(39, 13, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 30, 500, 11, '2016-09-21 08:26:08', '2016-09-21 08:26:08'),
(40, 12, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 31, 70000, 11, '2016-09-21 08:56:03', '2016-09-21 08:56:03'),
(41, 13, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 31, 850, 11, '2016-09-21 08:56:04', '2016-09-21 08:56:04'),
(42, 12, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 32, 70000, 11, '2016-09-21 08:58:32', '2016-09-21 08:58:32'),
(43, 12, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 33, 70000, 11, '2016-09-21 09:10:29', '2016-09-21 09:10:29'),
(44, 12, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 36, 70000, 11, '2016-09-21 09:15:02', '2016-09-21 09:15:02'),
(45, 13, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 36, 850, 11, '2016-09-21 09:15:03', '2016-09-21 09:15:03'),
(46, 12, 3, NULL, NULL, NULL, NULL, 0, 0, NULL, 37, 70000, 11, '2016-09-22 06:38:51', '2016-09-22 06:38:51'),
(47, 13, 6, NULL, NULL, NULL, NULL, 0, 0, NULL, 37, 850, 11, '2016-09-22 06:38:51', '2016-09-22 06:38:51'),
(48, 12, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 38, 40000, 11, '2016-09-22 08:10:42', '2016-09-22 08:10:42'),
(49, 12, 6, NULL, NULL, NULL, NULL, 0, 0, NULL, 39, 40000, 11, '2016-09-23 03:42:15', '2016-09-23 03:42:15'),
(50, 12, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 39, 40000, 11, '2016-09-23 03:42:15', '2016-09-23 03:42:15'),
(51, 12, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 40, 70000, 11, '2016-09-23 03:57:40', '2016-09-23 03:57:40'),
(52, 13, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 41, 500, 11, '2016-09-23 03:58:20', '2016-09-23 03:58:20'),
(53, 15, 20, NULL, NULL, NULL, NULL, 0, 0, NULL, 42, 200, 12, '2016-10-06 06:35:22', '2016-10-06 06:35:22'),
(54, 15, 4, NULL, NULL, NULL, NULL, 0, 0, NULL, 43, 450, 12, '2016-10-06 06:48:17', '2016-10-06 06:48:17'),
(55, 15, 10, NULL, NULL, NULL, NULL, 0, 0, NULL, 44, 450, 12, '2016-10-06 06:50:23', '2016-10-06 06:50:23'),
(56, 17, 3, NULL, NULL, NULL, NULL, 0, 0, NULL, 45, 40000, 17, '2016-10-26 08:36:24', '2016-10-26 08:36:24'),
(57, 18, 2, NULL, NULL, NULL, NULL, 0, 0, NULL, 45, 22000, 17, '2016-10-26 08:36:24', '2016-10-26 08:36:24'),
(58, 19, 10, NULL, NULL, NULL, NULL, 0, 0, NULL, 46, 37000, 16, '2016-10-26 08:38:35', '2016-10-26 08:38:35'),
(59, 17, 10, NULL, NULL, NULL, NULL, 0, 0, NULL, 47, 40000, 17, '2016-10-26 08:40:49', '2016-10-26 08:40:49'),
(60, 18, 5, NULL, NULL, NULL, NULL, 0, 0, NULL, 47, 22000, 17, '2016-10-26 08:40:49', '2016-10-26 08:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `erporders`
--

CREATE TABLE IF NOT EXISTS `erporders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `purchase_acc_id` int(11) DEFAULT NULL,
  `payable_acc_id` int(11) DEFAULT NULL,
  `asset_acc_id` int(11) DEFAULT NULL,
  `income_acc_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_lease` tinyint(1) NOT NULL DEFAULT '0',
  `payment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `ordered_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `erporders_client_id_foreign` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `erporders`
--

INSERT INTO `erporders` (`id`, `client_id`, `purchase_acc_id`, `payable_acc_id`, `asset_acc_id`, `income_acc_id`, `date`, `status`, `total_amount`, `discount_amount`, `type`, `is_lease`, `payment_type`, `order_number`, `inv_number`, `due_date`, `ordered_by`, `organization_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 31, 32, NULL, NULL, '2016-07-27', 'new', NULL, 0, 'sales', 0, NULL, '2016/07/27/0001', NULL, NULL, NULL, 1, NULL, '2016-07-27 08:03:03', '2016-07-27 08:03:03'),
(2, 2, 31, 32, NULL, NULL, '2016-07-27', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/07/27/0002', NULL, NULL, NULL, 1, NULL, '2016-07-27 08:06:23', '2016-07-27 08:06:23'),
(3, 1, 31, 32, NULL, NULL, '2016-07-27', 'new', NULL, 0, 'quotations', 0, NULL, '2016/07/27/0003', NULL, NULL, NULL, 1, NULL, '2016-07-27 08:30:10', '2016-07-27 08:30:10'),
(4, 3, 31, 32, NULL, NULL, '2016-08-09', 'new', NULL, 0, 'sales', 0, NULL, '2016/08/09/0004', NULL, NULL, NULL, 0, NULL, '2016-08-09 09:11:20', '2016-08-09 09:11:20'),
(5, 3, 31, 32, NULL, NULL, '2016-08-09', 'new', NULL, 0, 'quotations', 0, NULL, '2016/08/09/0005', NULL, NULL, NULL, 0, NULL, '2016-08-09 09:13:10', '2016-08-09 09:13:10'),
(6, 3, 31, 32, NULL, NULL, '2016-08-09', 'new', NULL, 0, 'quotations', 0, NULL, '2016/08/09/0006', NULL, NULL, NULL, 0, NULL, '2016-08-09 09:13:59', '2016-08-09 09:13:59'),
(7, 5, 31, 32, NULL, NULL, '2016-08-09', 'new', NULL, 0, 'sales', 0, NULL, '2016/08/09/0007', NULL, NULL, NULL, 8, NULL, '2016-08-09 10:07:33', '2016-08-09 10:07:33'),
(8, 6, 31, 32, NULL, NULL, '2016-08-09', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/09/0001', NULL, NULL, NULL, 8, NULL, '2016-08-09 10:08:53', '2016-08-09 10:08:53'),
(9, 5, 31, 32, NULL, NULL, '2016-08-09', 'new', NULL, 0, 'quotations', 0, NULL, '2016/08/09/0009', NULL, NULL, NULL, 8, NULL, '2016-08-09 10:11:54', '2016-08-09 10:11:54'),
(10, 5, 31, 32, NULL, NULL, '2016-08-10', 'new', NULL, 0, 'sales', 0, NULL, '2016/08/10/0010', NULL, NULL, NULL, 0, NULL, '2016-08-10 08:39:11', '2016-08-10 08:39:11'),
(11, 5, 31, 32, NULL, NULL, '2016-08-10', 'new', NULL, 0, 'sales', 0, NULL, '2016/08/10/0011', NULL, NULL, NULL, 8, NULL, '2016-08-10 08:45:37', '2016-08-10 08:45:37'),
(12, 6, 31, 32, NULL, NULL, '2016-08-10', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/10/0005', NULL, NULL, NULL, 8, NULL, '2016-08-10 08:59:47', '2016-08-10 08:59:47'),
(13, 5, 31, 32, NULL, NULL, '2016-08-10', 'new', NULL, 0, 'quotations', 0, NULL, '2016/08/10/0013', NULL, NULL, NULL, 8, NULL, '2016-08-10 09:00:46', '2016-08-10 09:00:46'),
(14, 7, 31, 32, NULL, NULL, '2016-08-11', 'new', NULL, 0, 'sales', 0, NULL, '2016/08/11/0014', NULL, NULL, NULL, 8, NULL, '2016-08-11 06:27:46', '2016-08-11 06:27:46'),
(15, 8, 31, 32, NULL, NULL, '2016-08-11', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/11/0008', NULL, NULL, NULL, 8, NULL, '2016-08-11 06:31:44', '2016-08-11 06:31:44'),
(16, 7, 31, 32, NULL, NULL, '2016-08-11', 'new', NULL, 0, 'quotations', 0, NULL, '2016/08/11/0016', NULL, NULL, NULL, 8, NULL, '2016-08-11 06:35:25', '2016-08-11 06:35:25'),
(17, 10, 31, 32, NULL, NULL, '2016-08-15', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/15/0010', NULL, NULL, NULL, 8, NULL, '2016-08-15 06:42:39', '2016-08-15 06:42:39'),
(18, 9, 31, 32, NULL, NULL, '2016-08-15', 'new', NULL, 0, 'sales', 0, NULL, '2016/08/15/0018', NULL, NULL, NULL, 8, NULL, '2016-08-15 06:45:43', '2016-08-15 06:45:43'),
(19, 9, 31, 32, NULL, NULL, '2016-08-15', 'new', NULL, 0, 'quotations', 0, NULL, '2016/08/15/0019', NULL, NULL, NULL, 8, NULL, '2016-08-15 06:49:59', '2016-08-15 06:49:59'),
(20, 11, 31, 32, NULL, NULL, '2016-08-30', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/30/0020', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 12, 31, 32, NULL, NULL, '2016-08-30', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/30/0021', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 11, 31, 32, NULL, NULL, '2016-08-30', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/30/0022', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 11, 31, 32, NULL, NULL, '2016-08-30', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/30/0023', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 11, 31, 32, NULL, NULL, '2016-08-30', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/08/30/0024', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 12, 31, 32, NULL, NULL, '2016-09-01', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/09/01/0025', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 21, 31, 32, NULL, NULL, '2016-09-20', 'new', NULL, 3500, 'sales', 0, NULL, '2016/09/20/0026', NULL, NULL, NULL, 11, NULL, '2016-09-20 06:24:05', '2016-09-20 06:24:05'),
(27, 22, 31, 32, NULL, NULL, '2016-09-20', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/09/20/0002', NULL, NULL, NULL, 11, NULL, '2016-09-20 06:32:28', '2016-09-20 06:32:28'),
(28, 23, 31, 32, NULL, NULL, '2016-09-20', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/09/20/0003', NULL, NULL, NULL, 11, NULL, '2016-09-20 06:33:20', '2016-09-20 06:33:20'),
(29, 21, 31, 32, NULL, NULL, '2016-09-20', 'new', NULL, 3500, 'quotations', 0, NULL, '2016/09/20/0029', NULL, NULL, NULL, 11, 'Hi', '2016-09-20 06:36:14', '2016-09-22 08:36:11'),
(30, 22, 31, 22, NULL, NULL, '2016-09-21', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/09/21/0005', NULL, NULL, NULL, 11, NULL, '2016-09-21 08:26:07', '2016-09-21 08:26:07'),
(31, 21, NULL, NULL, 22, 33, '2016-09-21', 'new', NULL, 1000, 'sales', 0, NULL, '2016/09/21/0031', NULL, NULL, NULL, 11, NULL, '2016-09-21 08:56:03', '2016-09-21 08:56:03'),
(32, 21, NULL, NULL, 22, 30, '2016-09-21', 'cancelled', NULL, 1000, 'sales', 0, NULL, '2016/09/21/0032', NULL, NULL, NULL, 11, NULL, '2016-09-21 08:58:32', '2016-09-21 09:13:35'),
(33, 21, NULL, NULL, 22, 33, '2016-09-21', 'cancelled', NULL, 1000, 'sales', 0, NULL, '2016/09/21/0033', NULL, NULL, NULL, 11, NULL, '2016-09-21 09:10:29', '2016-09-21 09:13:26'),
(34, 21, NULL, NULL, 22, 33, '2016-09-21', 'cancelled', NULL, 1000, 'sales', 0, NULL, '2016/09/21/0033', NULL, NULL, NULL, 11, NULL, '2016-09-21 09:12:17', '2016-09-21 09:13:18'),
(35, 21, NULL, NULL, 22, 33, '2016-09-21', 'cancelled', NULL, 1000, 'sales', 0, NULL, '2016/09/21/0035', NULL, NULL, NULL, 11, NULL, '2016-09-21 09:14:30', '2016-09-21 09:15:41'),
(36, 21, NULL, NULL, 22, 33, '2016-09-21', 'new', NULL, 1000, 'sales', 0, NULL, '2016/09/21/0035', NULL, NULL, NULL, 11, NULL, '2016-09-21 09:15:02', '2016-09-21 09:15:02'),
(37, 21, NULL, NULL, NULL, NULL, '2016-09-22', 'new', NULL, 10000, 'quotations', 0, NULL, '2016/09/22/0037', NULL, NULL, NULL, 11, NULL, '2016-09-22 06:38:50', '2016-09-22 06:38:50'),
(38, 22, 31, 34, NULL, NULL, '2016-09-22', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/09/22/0013', NULL, NULL, NULL, 11, NULL, '2016-09-22 08:10:42', '2016-09-22 08:10:42'),
(39, 22, NULL, NULL, NULL, NULL, '2016-09-23', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/09/23/0014', NULL, NULL, NULL, 11, NULL, '2016-09-23 03:42:15', '2016-09-23 03:42:15'),
(40, 21, NULL, NULL, 22, 34, '2016-09-23', 'new', NULL, 3000, 'sales', 0, NULL, '2016/09/23/0040', NULL, NULL, NULL, 11, NULL, '2016-09-23 03:57:40', '2016-09-23 03:57:40'),
(41, 22, 31, 22, NULL, NULL, '2016-09-23', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/09/23/0016', NULL, NULL, NULL, 11, NULL, '2016-09-23 03:58:20', '2016-09-23 03:58:20'),
(42, 25, 31, 22, NULL, NULL, '2016-10-06', 'new', NULL, NULL, 'purchases', 0, NULL, '2016/10/06/0001', NULL, NULL, NULL, 12, NULL, '2016-10-06 06:35:21', '2016-10-06 06:35:21'),
(43, 24, NULL, NULL, 22, 38, '2016-10-06', 'new', NULL, 0, 'sales', 0, NULL, '2016/10/06/0043', NULL, NULL, NULL, 12, NULL, '2016-10-06 06:48:17', '2016-10-06 06:48:17'),
(44, 24, NULL, NULL, NULL, NULL, '2016-10-06', 'new', NULL, 0, 'quotations', 0, NULL, '2016/10/06/0044', NULL, NULL, NULL, 12, NULL, '2016-10-06 06:50:22', '2016-10-06 06:50:22'),
(45, 26, NULL, NULL, 22, 22, '2016-10-26', 'delivered', NULL, 0, 'sales', 0, NULL, '2016/10/26/0045', NULL, NULL, NULL, 17, NULL, '2016-10-26 08:36:23', '2016-10-26 08:50:41'),
(46, 28, NULL, NULL, NULL, NULL, '2016-10-26', 'new', NULL, 0, 'quotations', 0, NULL, '2016/10/26/0046', NULL, NULL, NULL, 16, NULL, '2016-10-26 08:38:35', '2016-10-26 08:38:35'),
(47, 26, NULL, NULL, NULL, NULL, '2016-10-26', 'APPROVED', NULL, 0, 'quotations', 0, NULL, '2016/10/26/0047', NULL, NULL, NULL, 17, 'No comment.', '2016-10-26 08:40:49', '2016-10-26 08:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `asset_account_id` int(10) unsigned NOT NULL,
  `expense_account_id` int(11) NOT NULL,
  `expense_journal_id` int(11) DEFAULT NULL,
  `asset_journal_id` int(11) DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `expensesetting_id` int(11) NOT NULL,
  `void` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `expenses_account_id_foreign` (`asset_account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `name`, `amount`, `type`, `date`, `asset_account_id`, `expense_account_id`, `expense_journal_id`, `asset_journal_id`, `organization_id`, `expensesetting_id`, `void`, `created_at`, `updated_at`) VALUES
(1, '', '5500.00', 'Bill', '2016-09-21', 22, 19, 44, 43, 11, 12, 1, '2016-09-21 11:47:38', '2016-09-21 11:59:17'),
(2, '', '800', 'Bill', '2016-10-06', 38, 39, 52, 51, 12, 16, 0, '2016-10-06 06:28:43', '2016-10-06 06:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `expensesettings`
--

CREATE TABLE IF NOT EXISTS `expensesettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `expensesettings_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `expensesettings`
--

INSERT INTO `expensesettings` (`id`, `name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'car fuel', 2, '2016-07-27 08:37:08', '2016-07-27 08:37:08'),
(2, 'electricity bill', 2, '2016-07-27 08:37:45', '2016-07-27 08:37:45'),
(3, 'Rent', 2, '2016-07-27 08:38:22', '2016-07-27 08:38:22'),
(4, 'car fuel', 2, '2016-07-27 08:38:38', '2016-07-27 08:38:38'),
(6, 'Sales', NULL, '2016-08-08 06:30:00', '2016-08-08 06:30:00'),
(7, 'Car Fuel', 1, '2016-08-09 09:01:23', '2016-08-09 09:01:23'),
(8, 'Rent', 1, '2016-08-09 09:01:36', '2016-08-09 09:01:36'),
(9, 'Car Fuel', 8, '2016-08-09 09:56:28', '2016-08-09 09:56:28'),
(10, 'Rent', 8, '2016-08-09 09:56:49', '2016-08-09 09:56:49'),
(11, 'Electricity', 8, '2016-08-11 06:21:02', '2016-08-11 06:21:02'),
(12, 'Water Bill', 11, '2016-09-20 05:55:50', '2016-09-20 05:55:50'),
(13, 'Electricity Bill', 11, '2016-09-20 05:56:20', '2016-09-20 05:56:20'),
(14, 'Fuel', 11, '2016-09-20 05:56:36', '2016-09-20 05:56:36'),
(15, 'rent', 12, '2016-10-06 06:22:39', '2016-10-06 06:22:39'),
(16, 'Electricity', 12, '2016-10-06 06:22:57', '2016-10-06 06:22:57'),
(17, 'Fuel', 17, '2016-10-26 08:52:35', '2016-10-26 08:52:35'),
(18, 'Airtime', 17, '2016-10-26 08:52:52', '2016-10-26 08:52:52'),
(19, 'Breakfast', 17, '2016-10-26 08:53:21', '2016-10-26 08:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'lixnet group', ' ', 1, '2016-07-27 09:05:40', '2016-07-27 09:05:40'),
(2, 'lixnet chamaa grp', ' chamaa', 8, '2016-08-11 09:19:00', '2016-08-11 09:19:00'),
(3, 'Chama', ' Chama', 11, '2016-09-20 08:55:16', '2016-09-20 08:55:16'),
(4, 'IT', ' ', 12, '2016-10-06 07:14:09', '2016-10-06 07:14:09'),
(5, 'Members', ' ', 17, '2016-10-25 05:52:05', '2016-10-25 05:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `organization_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `holidays_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hospital_insurance`
--

CREATE TABLE IF NOT EXISTS `hospital_insurance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `income_from` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `income_to` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `hi_amount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `hospital_insurance_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `hospital_insurance`
--

INSERT INTO `hospital_insurance` (`id`, `income_from`, `income_to`, `hi_amount`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, '0.00', '0.00', '0.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(2, '1.00', '5999.00', '150.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(3, '6000.00', '7999.00', '300.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(4, '8000.00', '11999.00', '400.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(5, '12000.00', '14999.00', '500.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(6, '15000.00', '19999.00', '600.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(7, '20000.00', '24999.00', '750.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(8, '25000.00', '29999.00', '850.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(9, '30000.00', '34999.00', '900.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(10, '35000.00', '39999.00', '950.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(11, '40000.00', '44999.00', '1000.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(12, '45000.00', '49999.00', '1100.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(13, '50000.00', '59999.00', '1200.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(14, '60000.00', '69999.00', '1300.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(15, '70000.00', '79999.00', '1400.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(16, '80000.00', '89999.00', '1500.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(17, '90000.00', '99999.00', '1600.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(18, '100000.00', '99000000.00', '1700.00', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_price` double NOT NULL DEFAULT '0',
  `selling_price` double NOT NULL DEFAULT '0',
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `date`, `description`, `purchase_price`, `selling_price`, `sku`, `tag_id`, `reorder_level`, `type`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'laptop', '2016-07-27', '', 30000, 35000, '', '', 4, '', 0, '2016-07-27 07:26:40', '2016-07-27 07:26:40'),
(2, 'Flash disk', '2016-07-27', '', 300, 700, '', '', 5, '', 0, '2016-07-27 07:28:42', '2016-07-27 07:28:42'),
(3, 'Hp Laptop', '2016-07-29', 'Core i3, 8gb RAM, 1TB HDD', 40000, 50000, 'LP001', '', 0, 'product', 0, '2016-07-29 04:34:22', '2016-07-29 04:34:22'),
(4, 'Laptop', '2016-08-09', 'Lenovo', 20000, 35000, '', '', 2, 'product', 1, '2016-08-09 08:50:55', '2016-08-09 08:50:55'),
(5, 'Printing Papers', '2016-08-09', '', 0, 1200, '', '', 0, 'service', 1, '2016-08-09 08:56:04', '2016-08-09 08:56:04'),
(6, 'laptop', '2016-08-09', 'lenovo', 20000, 35000, '', '', 2, 'product', 8, '2016-08-09 09:55:16', '2016-08-09 09:55:16'),
(7, 'Printing Papers', '2016-08-09', '', 0, 1200, '', '', 0, 'service', 8, '2016-08-09 09:55:51', '2016-08-09 09:55:51'),
(8, 'RAM', '2016-08-11', '8 gb', 7500, 9000, '', '', 0, 'product', 8, '2016-08-11 06:17:40', '2016-08-11 06:17:40'),
(9, 'xarafinancials', '2016-08-11', '', 0, 250000, '', '', 0, 'service', 8, '2016-08-11 06:20:38', '2016-08-11 06:20:38'),
(10, 'Printers', '2016-08-15', '', 4500, 7000, '', '', 2, 'product', 8, '2016-08-15 06:21:19', '2016-08-15 06:21:19'),
(11, 'Erp', '2016-08-15', '', 0, 100000, '', '', 0, 'service', 8, '2016-08-15 06:21:37', '2016-08-15 06:21:37'),
(12, 'Lenovo laptops', '2016-09-20', '4GB Ram,\r\n2Hz Processor,\r\n500GB HDD', 40000, 70000, '10', 'ASDB25425#', 5, 'product', 11, '2016-09-20 05:38:52', '2016-09-20 05:38:52'),
(13, 'Gas Cylinder', '2016-09-20', 'Total 13Kg cylinder', 500, 850, '100', 'TYG45676#', 20, 'product', 11, '2016-09-20 06:18:16', '2016-09-20 06:18:16'),
(14, 'ERP Software', '2016-09-20', '', 0, 100000, '', '', 0, 'service', 11, '2016-09-20 06:19:19', '2016-09-20 06:19:19'),
(15, 'Chicken meat', '2016-10-06', '', 200, 450, '', '', 10, 'product', 12, '2016-10-06 06:17:03', '2016-10-06 06:17:03'),
(16, 'Deliveries', '2016-10-06', '', 0, 0, '', '', 0, 'service', 12, '2016-10-06 06:17:36', '2016-10-06 06:17:36'),
(17, 'Laptops', '2016-10-26', 'Lenovo', 30000, 40000, '', '', 5, 'product', 17, '2016-10-26 08:17:27', '2016-10-26 08:17:27'),
(18, 'Printers', '2016-10-26', 'HP Deskjet', 18000, 22000, '', '', 3, 'product', 17, '2016-10-26 08:18:12', '2016-10-26 08:18:12'),
(19, 'Laptop', '2016-10-26', 'Laptops', 30000, 37000, '', '', 5, 'product', 16, '2016-10-26 08:29:54', '2016-10-26 08:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `job_group`
--

CREATE TABLE IF NOT EXISTS `job_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `job_group_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_group`
--

INSERT INTO `job_group` (`id`, `job_group_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Junior Staff', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(2, 'Management', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(3, 'Marketing', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE IF NOT EXISTS `journals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `trans_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `amount` float(10,0) NOT NULL,
  `initiated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `void` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `journals_account_id_foreign` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=95 ;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `date`, `trans_no`, `account_id`, `amount`, `initiated_by`, `type`, `description`, `organization_id`, `created_at`, `updated_at`, `void`) VALUES
(1, '2016-07-27', '1469624820', 3, 40000, 'system', 'credit', 'loan disbursement', 1, '2016-07-27 10:41:00', '2016-07-27 10:41:00', 0),
(2, '2016-07-27', '1469624820', 4, 40000, 'system', 'debit', 'loan disbursement', 1, '2016-07-27 10:41:00', '2016-07-27 10:41:00', 0),
(3, '2016-07-27', '1469624859', 5, 800, 'system', 'credit', 'interest repayment', 1, '2016-07-27 10:54:39', '2016-07-27 10:54:39', 0),
(4, '2016-07-27', '1469624859', 3, 800, 'system', 'debit', 'interest repayment', 1, '2016-07-27 10:54:39', '2016-07-27 10:54:39', 0),
(5, '2016-07-27', '1469624859', 4, 3333, 'system', 'credit', 'principal repayment', 1, '2016-07-27 10:54:39', '2016-07-27 10:54:39', 0),
(6, '2016-07-27', '1469624859', 3, 3333, 'system', 'debit', 'principal repayment', 1, '2016-07-27 10:54:39', '2016-07-27 10:54:39', 0),
(7, '2016-07-27', '1469628469', 5, 727, 'system', 'credit', 'interest repayment', 1, '2016-07-27 11:08:49', '2016-07-27 11:08:49', 0),
(8, '2016-07-27', '1469628469', 3, 727, 'system', 'debit', 'interest repayment', 1, '2016-07-27 11:08:49', '2016-07-27 11:08:49', 0),
(9, '2016-07-27', '1469628469', 4, 3333, 'system', 'credit', 'principal repayment', 1, '2016-07-27 11:08:49', '2016-07-27 11:08:49', 0),
(10, '2016-07-27', '1469628469', 3, 3333, 'system', 'debit', 'principal repayment', 1, '2016-07-27 11:08:49', '2016-07-27 11:08:49', 0),
(11, '2016-09-20', '1474373361', 22, 5000, 'system', 'credit', 'loan disbursement', 11, '2016-09-20 09:52:21', '2016-09-20 09:52:21', 0),
(12, '2016-09-20', '1474373361', 24, 5000, 'system', 'debit', 'loan disbursement', 11, '2016-09-20 09:52:21', '2016-09-20 09:52:21', 0),
(13, '2016-09-20', '1474380549', 23, 300, 'system', 'credit', 'interest repayment', 11, '2016-09-20 11:00:09', '2016-09-20 11:00:09', 0),
(14, '2016-09-20', '1474380549', 22, 300, 'system', 'debit', 'interest repayment', 11, '2016-09-20 11:00:10', '2016-09-20 11:00:10', 0),
(15, '2016-09-20', '1474380550', 24, 833, 'system', 'credit', 'principal repayment', 11, '2016-09-20 11:00:10', '2016-09-20 11:00:10', 0),
(16, '2016-09-20', '1474380550', 22, 833, 'system', 'debit', 'principal repayment', 11, '2016-09-20 11:00:10', '2016-09-20 11:00:10', 0),
(17, '2016-09-20', '1474380579', 24, 4167, 'system', 'credit', 'principal repayment', 11, '2016-09-20 11:00:39', '2016-09-20 11:00:39', 0),
(18, '2016-09-20', '1474380579', 22, 4167, 'system', 'debit', 'principal repayment', 11, '2016-09-20 11:00:39', '2016-09-20 11:00:39', 0),
(19, '2016-09-20', '1474380579', 23, 1200, 'system', 'credit', 'interest repayment', 11, '2016-09-20 11:00:39', '2016-09-20 11:00:39', 0),
(20, '2016-09-20', '1474380579', 22, 1200, 'system', 'debit', 'interest repayment', 11, '2016-09-20 11:00:40', '2016-09-20 11:00:40', 0),
(21, '2016-09-20', '1474380545', 22, 3000, 'system', 'credit', 'loan top up', 11, '2016-09-20 11:20:05', '2016-09-20 11:20:05', 0),
(22, '2016-09-20', '1474380545', 24, 3000, 'system', 'debit', 'loan top up', 11, '2016-09-20 11:20:05', '2016-09-20 11:20:05', 0),
(23, '2016-09-20', '1474380576', 24, 3000, 'system', 'credit', 'principal repayment', 11, '2016-09-20 11:20:36', '2016-09-20 11:20:36', 0),
(24, '2016-09-20', '1474380576', 22, 3000, 'system', 'debit', 'principal repayment', 11, '2016-09-20 11:20:36', '2016-09-20 11:20:36', 0),
(25, '2016-09-20', '1474380577', 23, -420, 'system', 'credit', 'interest repayment', 11, '2016-09-20 11:20:37', '2016-09-20 11:20:37', 0),
(26, '2016-09-20', '1474380577', 22, -420, 'system', 'debit', 'interest repayment', 11, '2016-09-20 11:20:37', '2016-09-20 11:20:37', 0),
(27, '2016-09-20', '1474380586', 29, 5000, 'system', 'credit', 'bla', 11, '2016-09-20 11:28:46', '2016-09-20 11:28:46', 0),
(28, '2016-09-20', '1474380586', 22, 5000, 'system', 'debit', 'bla', 11, '2016-09-20 11:28:46', '2016-09-20 11:28:46', 0),
(29, '2016-09-20', '1474380540', 22, 1000, 'system', 'credit', 'bla', 11, '2016-09-20 11:30:00', '2016-09-20 11:30:00', 0),
(30, '2016-09-20', '1474380540', 29, 1000, 'system', 'debit', 'bla', 11, '2016-09-20 11:30:00', '2016-09-20 11:30:00', 0),
(31, '2016-09-01', '1474384192', 29, 2000, 'system', 'credit', '', 11, '2016-09-20 12:08:52', '2016-09-20 12:08:52', 0),
(32, '2016-09-01', '1474384192', 22, 2000, 'system', 'debit', '', 11, '2016-09-20 12:08:52', '2016-09-20 12:08:52', 0),
(33, '2016-09-21', '1474456148', 22, 3500, 'system', 'credit', 'Purchase of Goods', 11, '2016-09-21 08:26:08', '2016-09-21 08:26:08', 0),
(34, '2016-09-21', '1474456148', 31, 3500, 'system', 'debit', 'Purchase of Goods', 11, '2016-09-21 08:26:08', '2016-09-21 08:26:08', 0),
(35, '2016-09-21', '1474459743', 33, 427432, 'system', 'credit', 'Sale of Goods', 11, '2016-09-21 09:15:03', '2016-09-21 09:15:03', 0),
(36, '2016-09-21', '1474459743', 22, 427432, 'system', 'debit', 'Sale of Goods', 11, '2016-09-21 09:15:03', '2016-09-21 09:15:03', 0),
(37, '2016-09-21', '1474463389', 22, 100000, 'system', 'credit', 'Sale of Goods', 11, '2016-09-21 10:51:49', '2016-09-21 11:07:41', 1),
(38, '2016-09-21', '1474463389', 34, 100000, 'system', 'debit', 'Sale of Goods', 11, '2016-09-21 10:51:49', '2016-09-21 11:07:41', 1),
(39, '2016-09-21', '1474466981', 34, 100000, 'system', 'credit', 'Sale of Goods', 11, '2016-09-21 11:07:41', '2016-09-21 11:13:22', 1),
(40, '2016-09-21', '1474466981', 22, 100000, 'system', 'debit', 'Sale of Goods', 11, '2016-09-21 11:07:41', '2016-09-21 11:13:22', 1),
(41, '2016-09-21', '1474466978', 22, 5000, 'system', 'credit', 'Company Expenses', 11, '2016-09-21 11:47:38', '2016-09-21 11:55:38', 1),
(42, '2016-09-21', '1474466978', 19, 5000, 'system', 'debit', 'Company Expenses', 11, '2016-09-21 11:47:39', '2016-09-21 11:56:58', 1),
(43, '2016-09-21', '1474466998', 22, 5500, 'system', 'credit', 'Company Expenses', 11, '2016-09-21 11:56:58', '2016-09-21 11:59:17', 1),
(44, '2016-09-21', '1474466998', 19, 5500, 'system', 'debit', 'Company Expenses', 11, '2016-09-21 11:56:58', '2016-09-21 11:59:17', 1),
(45, '2016-09-22', '1474542585', 34, 200000, 'system', 'credit', 'Purchase of Goods', 11, '2016-09-22 08:10:45', '2016-09-22 08:10:45', 0),
(46, '2016-09-22', '1474542585', 31, 200000, 'system', 'debit', 'Purchase of Goods', 11, '2016-09-22 08:10:45', '2016-09-22 08:10:45', 0),
(47, '2016-09-23', '1474610980', 34, 402520, 'system', 'credit', 'Sale of Goods', 11, '2016-09-23 03:57:40', '2016-09-23 03:57:40', 0),
(48, '2016-09-23', '1474610980', 22, 402520, 'system', 'debit', 'Sale of Goods', 11, '2016-09-23 03:57:40', '2016-09-23 03:57:40', 0),
(49, '2016-09-23', '1474610960', 22, 2500, 'system', 'credit', 'Purchase of Goods', 11, '2016-09-23 03:58:20', '2016-09-23 03:58:20', 0),
(50, '2016-09-23', '1474610960', 31, 2500, 'system', 'debit', 'Purchase of Goods', 11, '2016-09-23 03:58:20', '2016-09-23 03:58:20', 0),
(51, '2016-10-06', '1475745044', 38, 800, 'system', 'credit', 'Company Expenses', 12, '2016-10-06 06:28:44', '2016-10-06 06:28:44', 0),
(52, '2016-10-06', '1475745044', 39, 800, 'system', 'debit', 'Company Expenses', 12, '2016-10-06 06:28:44', '2016-10-06 06:28:44', 0),
(53, '2016-10-06', '1475745022', 22, 4000, 'system', 'credit', 'Purchase of Goods', 12, '2016-10-06 06:35:22', '2016-10-06 06:35:22', 0),
(54, '2016-10-06', '1475745022', 31, 4000, 'system', 'debit', 'Purchase of Goods', 12, '2016-10-06 06:35:22', '2016-10-06 06:35:22', 0),
(55, '2016-10-06', '1475745018', 38, 2088, 'system', 'credit', 'Sale of Goods', 12, '2016-10-06 06:48:18', '2016-10-06 06:48:18', 0),
(56, '2016-10-06', '1475745018', 22, 2088, 'system', 'debit', 'Sale of Goods', 12, '2016-10-06 06:48:18', '2016-10-06 06:48:18', 0),
(57, '2016-10-06', '1475745036', 38, 2000, 'system', 'credit', 'Sale of Goods', 12, '2016-10-06 06:53:36', '2016-10-06 06:53:36', 0),
(58, '2016-10-06', '1475745036', 38, 2000, 'system', 'debit', 'Sale of Goods', 12, '2016-10-06 06:53:36', '2016-10-06 06:53:36', 0),
(59, '2016-10-06', '1475752212', 38, 40000, 'system', 'credit', 'loan disbursement', 12, '2016-10-06 08:21:12', '2016-10-06 08:21:12', 0),
(60, '2016-10-06', '1475752212', 40, 40000, 'system', 'debit', 'loan disbursement', 12, '2016-10-06 08:21:13', '2016-10-06 08:21:13', 0),
(61, '2016-10-05', '1475752257', 41, 800, 'system', 'credit', 'interest repayment', 12, '2016-10-06 08:32:57', '2016-10-06 08:32:57', 0),
(62, '2016-10-05', '1475752257', 38, 800, 'system', 'debit', 'interest repayment', 12, '2016-10-06 08:32:57', '2016-10-06 08:32:57', 0),
(63, '2016-10-05', '1475752257', 40, 9200, 'system', 'credit', 'principal repayment', 12, '2016-10-06 08:32:57', '2016-10-06 08:32:57', 0),
(64, '2016-10-05', '1475752257', 38, 9200, 'system', 'debit', 'principal repayment', 12, '2016-10-06 08:32:58', '2016-10-06 08:32:58', 0),
(65, '2016-10-06', '1475752229', 45, 50000, 'system', 'credit', '', 12, '2016-10-06 08:45:29', '2016-10-06 08:45:29', 0),
(66, '2016-10-06', '1475752229', 38, 50000, 'system', 'debit', '', 12, '2016-10-06 08:45:29', '2016-10-06 08:45:29', 0),
(67, '2016-10-17', '1476695446', 38, 2000, 'system', 'credit', 'loan disbursement', 12, '2016-10-17 06:25:46', '2016-10-17 06:25:46', 0),
(68, '2016-10-17', '1476695446', 40, 2000, 'system', 'debit', 'loan disbursement', 12, '2016-10-17 06:25:46', '2016-10-17 06:25:46', 0),
(69, '2016-10-26', '1477473040', 38, 40000, 'system', 'credit', 'loan disbursement', 12, '2016-10-26 06:20:40', '2016-10-26 06:20:40', 0),
(70, '2016-10-26', '1477473040', 40, 40000, 'system', 'debit', 'loan disbursement', 12, '2016-10-26 06:20:40', '2016-10-26 06:20:40', 0),
(71, '2016-08-26', '1477473054', 41, 800, 'system', 'credit', 'interest repayment', 12, '2016-10-26 06:24:54', '2016-10-26 06:24:54', 0),
(72, '2016-08-26', '1477473054', 38, 800, 'system', 'debit', 'interest repayment', 12, '2016-10-26 06:24:54', '2016-10-26 06:24:54', 0),
(73, '2016-08-26', '1477473054', 40, 3400, 'system', 'credit', 'principal repayment', 12, '2016-10-26 06:24:54', '2016-10-26 06:24:54', 0),
(74, '2016-08-26', '1477473054', 38, 3400, 'system', 'debit', 'principal repayment', 12, '2016-10-26 06:24:54', '2016-10-26 06:24:54', 0),
(75, '2016-10-26', '1477473008', 40, 36600, 'system', 'credit', 'principal repayment', 12, '2016-10-26 06:29:08', '2016-10-26 06:29:08', 0),
(76, '2016-10-26', '1477473008', 38, 36600, 'system', 'debit', 'principal repayment', 12, '2016-10-26 06:29:08', '2016-10-26 06:29:08', 0),
(77, '2016-10-26', '1477473008', 41, 7984, 'system', 'credit', 'interest repayment', 12, '2016-10-26 06:29:08', '2016-10-26 06:29:08', 0),
(78, '2016-10-26', '1477473008', 38, 7984, 'system', 'debit', 'interest repayment', 12, '2016-10-26 06:29:08', '2016-10-26 06:29:08', 0),
(79, '2016-10-26', '1477473048', 38, 4000, 'system', 'credit', 'loan top up', 12, '2016-10-26 06:29:48', '2016-10-26 06:29:48', 0),
(80, '2016-10-26', '1477473048', 40, 4000, 'system', 'debit', 'loan top up', 12, '2016-10-26 06:29:48', '2016-10-26 06:29:48', 0),
(81, '2016-10-26', '1477473012', 40, 4000, 'system', 'credit', 'principal repayment', 12, '2016-10-26 06:30:12', '2016-10-26 06:30:12', 0),
(82, '2016-10-26', '1477473012', 38, 4000, 'system', 'debit', 'principal repayment', 12, '2016-10-26 06:30:13', '2016-10-26 06:30:13', 0),
(83, '2016-10-26', '1477473013', 41, -7824, 'system', 'credit', 'interest repayment', 12, '2016-10-26 06:30:13', '2016-10-26 06:30:13', 0),
(84, '2016-10-26', '1477473013', 38, -7824, 'system', 'debit', 'interest repayment', 12, '2016-10-26 06:30:13', '2016-10-26 06:30:13', 0),
(85, '2016-10-26', '1477473012', 45, 5000, 'system', 'credit', '', 12, '2016-10-26 06:46:12', '2016-10-26 06:46:12', 0),
(86, '2016-10-26', '1477473012', 38, 5000, 'system', 'debit', '', 12, '2016-10-26 06:46:12', '2016-10-26 06:46:12', 0),
(87, '2016-10-26', '1477480225', 22, 164000, 'system', 'credit', 'Sale of Goods', 17, '2016-10-26 08:36:25', '2016-10-26 08:36:25', 0),
(88, '2016-10-26', '1477480225', 22, 164000, 'system', 'debit', 'Sale of Goods', 17, '2016-10-26 08:36:26', '2016-10-26 08:36:26', 0),
(89, '2016-10-26', '1477480217', 46, 100000, 'system', 'credit', 'Sale of Goods', 17, '2016-10-26 08:50:17', '2016-10-26 08:50:17', 0),
(90, '2016-10-26', '1477480217', 46, 100000, 'system', 'debit', 'Sale of Goods', 17, '2016-10-26 08:50:18', '2016-10-26 08:50:18', 0),
(91, '2016-10-28', '1477638614', 46, 45000, 'system', 'credit', 'loan disbursement', 17, '2016-10-28 04:42:14', '2016-10-28 04:42:14', 0),
(92, '2016-10-28', '1477638614', 47, 45000, 'system', 'debit', 'loan disbursement', 17, '2016-10-28 04:42:14', '2016-10-28 04:42:14', 0),
(93, '2016-10-12', '1477642217', 48, 2700, 'system', 'credit', 'interest repayment', 17, '2016-10-28 05:06:17', '2016-10-28 05:06:17', 0),
(94, '2016-10-12', '1477642217', 46, 2700, 'system', 'debit', 'interest repayment', 17, '2016-10-28 05:06:17', '2016-10-28 05:06:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kins`
--

CREATE TABLE IF NOT EXISTS `kins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodwill` float(10,0) DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `kins_member_id_foreign` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kins`
--

INSERT INTO `kins` (`id`, `name`, `rship`, `goodwill`, `id_number`, `member_id`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Cris', 'sponsor', 20, '28976545', 1, 1, '2016-07-27 10:04:14', '2016-07-27 10:04:14'),
(2, 'manny', 'hubby', 100, '3088764', 3, 8, '2016-08-11 09:21:28', '2016-08-11 09:21:28'),
(3, 'George Wango', 'Father', 50, '1342344412', 4, 11, '2016-09-20 09:11:37', '2016-09-21 04:58:21'),
(4, 'Grace Wango', 'Mother', 50, '1255465', 4, 11, '2016-09-21 04:57:51', '2016-09-21 04:57:51'),
(5, 'kim', 'friend', 100, '9009988', 6, 12, '2016-10-06 07:20:23', '2016-10-06 07:20:23'),
(6, 'Stephen', 'Friend', 50, '21343212', 9, 12, '2016-10-26 06:19:03', '2016-10-26 06:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `leaveapplications`
--

CREATE TABLE IF NOT EXISTS `leaveapplications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `application_date` date DEFAULT NULL,
  `applied_start_date` date DEFAULT NULL,
  `applied_end_date` date DEFAULT NULL,
  `leavetype_id` int(10) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_approved` date DEFAULT NULL,
  `date_rejected` date DEFAULT NULL,
  `date_amended` date DEFAULT NULL,
  `date_cancelled` date DEFAULT NULL,
  `approved_start_date` date DEFAULT NULL,
  `approved_end_date` date DEFAULT NULL,
  `actual_start_date` date DEFAULT NULL,
  `actual_end_date` date DEFAULT NULL,
  `is_weekend` int(11) NOT NULL DEFAULT '0',
  `is_supervisor_approved` int(11) DEFAULT '1',
  `is_holiday` int(11) NOT NULL DEFAULT '0',
  `organization_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `leaveapplications_employee_id_foreign` (`employee_id`),
  KEY `leaveapplications_leavetype_id_foreign` (`leavetype_id`),
  KEY `leaveapplications_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `leaveapplications`
--

INSERT INTO `leaveapplications` (`id`, `employee_id`, `application_date`, `applied_start_date`, `applied_end_date`, `leavetype_id`, `status`, `date_approved`, `date_rejected`, `date_amended`, `date_cancelled`, `approved_start_date`, `approved_end_date`, `actual_start_date`, `actual_end_date`, `is_weekend`, `is_supervisor_approved`, `is_holiday`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 6, '2016-08-10', '2016-08-01', '2016-08-31', 1, 'approved', '2016-08-10', NULL, NULL, NULL, '2016-08-01', '2016-08-31', NULL, NULL, 0, 1, 0, 8, '2016-08-10 10:15:57', '2016-08-10 10:16:19'),
(2, 7, '2016-08-11', '2016-09-01', '2016-10-01', 1, 'approved', '2016-08-11', NULL, NULL, NULL, '2016-09-01', '2016-10-01', NULL, NULL, 0, 1, 0, 8, '2016-08-11 07:04:36', '2016-08-11 07:05:39'),
(3, 8, '2016-09-19', '2016-09-01', '2016-09-14', 2, 'approved', '2016-09-19', NULL, '2016-09-19', NULL, '2016-09-01', '2016-09-14', NULL, NULL, 0, 1, 0, 11, '2016-09-19 05:47:06', '2016-09-19 05:51:19'),
(4, 8, '2016-09-19', '2016-09-19', '2016-09-20', 2, 'applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 11, '2016-09-19 11:41:42', '2016-09-19 11:41:42'),
(5, 4, '2016-11-01', '2016-11-01', '2016-11-01', 4, 'cancelled', NULL, NULL, NULL, '2016-11-01', NULL, NULL, NULL, NULL, 0, 1, 0, 1, '2016-11-01 08:34:55', '2016-11-01 08:45:09'),
(6, 4, '2016-11-01', '2016-11-01', '2016-11-14', 4, 'applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, '2016-11-01 08:37:37', '2016-11-01 08:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `leavetypes`
--

CREATE TABLE IF NOT EXISTS `leavetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days` int(11) DEFAULT '0',
  `organization_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `leavetypes_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `leavetypes`
--

INSERT INTO `leavetypes` (`id`, `name`, `days`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Annual Leave', 30, 8, '2016-08-10 13:15:30', '2016-08-10 13:15:30'),
(2, 'Annual', 21, 11, '2016-09-19 08:40:46', '2016-09-19 08:40:46'),
(3, 'Annual', 30, 12, '2016-10-07 12:33:30', '2016-10-07 12:33:30'),
(4, 'Annual Leave', 21, 1, '2016-11-01 11:14:53', '2016-11-01 11:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `loanaccounts`
--

CREATE TABLE IF NOT EXISTS `loanaccounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `loanproduct_id` int(10) unsigned NOT NULL,
  `is_new_application` tinyint(1) NOT NULL DEFAULT '1',
  `application_date` date NOT NULL,
  `amount_applied` float(10,0) NOT NULL,
  `interest_rate` float(10,0) NOT NULL,
  `period` int(11) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `date_approved` date DEFAULT NULL,
  `amount_approved` float(10,0) DEFAULT NULL,
  `is_rejected` tinyint(1) NOT NULL DEFAULT '0',
  `rejection_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_amended` tinyint(1) NOT NULL DEFAULT '0',
  `date_amended` date DEFAULT NULL,
  `is_disbursed` tinyint(1) NOT NULL DEFAULT '0',
  `amount_disbursed` float(10,0) DEFAULT NULL,
  `date_disbursed` date DEFAULT NULL,
  `repayment_start_date` date DEFAULT NULL,
  `is_matured` tinyint(1) NOT NULL DEFAULT '0',
  `is_written_off` tinyint(1) NOT NULL DEFAULT '0',
  `is_defaulted` tinyint(1) NOT NULL DEFAULT '0',
  `is_overpaid` tinyint(1) NOT NULL DEFAULT '0',
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repayment_duration` int(11) DEFAULT NULL,
  `is_top_up` tinyint(1) DEFAULT '0',
  `top_up_amount` float(15,3) DEFAULT '0.000',
  `loan_purpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loanaccounts_member_id_foreign` (`member_id`),
  KEY `loanaccounts_loanproduct_id_foreign` (`loanproduct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `loanaccounts`
--

INSERT INTO `loanaccounts` (`id`, `member_id`, `loanproduct_id`, `is_new_application`, `application_date`, `amount_applied`, `interest_rate`, `period`, `is_approved`, `date_approved`, `amount_approved`, `is_rejected`, `rejection_reason`, `is_amended`, `date_amended`, `is_disbursed`, `amount_disbursed`, `date_disbursed`, `repayment_start_date`, `is_matured`, `is_written_off`, `is_defaulted`, `is_overpaid`, `account_number`, `repayment_duration`, `is_top_up`, `top_up_amount`, `loan_purpose`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2016-07-27', 40000, 2, 12, 1, '2016-07-27', 40000, 0, NULL, 0, NULL, 1, 40000, '2016-07-27', '2016-07-27', 0, 0, 0, 0, 'EL-L001-2', 12, 0, 0.000, NULL, 1, '2016-07-27 10:05:07', '2016-07-27 10:41:00'),
(2, 4, 3, 0, '2016-09-20', 5000, 6, 10, 1, '2016-09-20', 5000, 0, NULL, 0, NULL, 1, 5000, '2016-09-20', '2016-09-20', 0, 0, 0, 0, 'EL-BM.1-2', 6, 1, 3000.000, NULL, 11, '2016-09-20 09:40:36', '2016-09-20 11:20:05'),
(3, 5, 3, 0, '2016-09-01', 2500, 6, 10, 0, NULL, NULL, 1, 'Not qualified', 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 3, 0, 0.000, NULL, 11, '2016-09-20 10:58:07', '2016-09-20 10:58:24'),
(4, 4, 3, 1, '2016-09-21', 2000, 6, 10, 0, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 5, 0, 0.000, NULL, 11, '2016-09-21 05:22:24', '2016-09-21 05:22:24'),
(5, 6, 4, 0, '2016-10-06', 40000, 2, 12, 1, '2016-10-06', 40000, 0, NULL, 0, NULL, 1, 40000, '2016-10-06', '2016-10-06', 0, 0, 0, 0, 'EM-KM.1-2', 12, 0, 0.000, NULL, 12, '2016-10-06 08:09:13', '2016-10-06 08:21:12'),
(6, 6, 5, 0, '2016-10-14', 3000, 2, 12, 0, NULL, NULL, 1, 'Already has another loan', 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 12, 0, 0.000, NULL, 12, '2016-10-14 07:31:54', '2016-10-26 06:21:19'),
(7, 6, 6, 0, '2016-10-17', 2000, 2, 12, 1, '2016-10-17', 2000, 0, NULL, 0, NULL, 1, 2000, '2016-10-17', '2016-10-17', 0, 0, 0, 0, 'ML-KM.1-4', 5, 0, 0.000, NULL, 12, '2016-10-17 06:23:33', '2016-10-17 06:25:45'),
(8, 9, 4, 0, '2016-10-26', 40000, 2, 12, 1, '2016-10-26', 40000, 0, NULL, 0, NULL, 1, 40000, '2016-10-26', '2016-10-26', 0, 0, 0, 0, 'EM-KM.2-2', 12, 1, 4000.000, NULL, 12, '2016-10-26 06:19:49', '2016-10-26 06:29:47'),
(9, 10, 7, 0, '2016-10-28', 45000, 6, 15, 1, '2016-10-28', 45000, 0, NULL, 0, NULL, 1, 45000, '2016-10-28', '2016-10-28', 0, 0, 0, 0, 'IL-LTLM.2-2', 15, 0, 0.000, NULL, 17, '2016-10-28 04:37:53', '2016-10-28 04:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `loanguarantors`
--

CREATE TABLE IF NOT EXISTS `loanguarantors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `loanaccount_id` int(10) unsigned NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `is_approved` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loanguarantors_member_id_foreign` (`member_id`),
  KEY `loanguarantors_loanaccount_id_foreign` (`loanaccount_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `loanguarantors`
--

INSERT INTO `loanguarantors` (`id`, `member_id`, `loanaccount_id`, `organization_id`, `is_approved`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'pending', NULL, '2016-07-27 10:50:13', '2016-07-27 10:50:13'),
(2, 5, 2, 11, 'approved', '2016-09-21', '2016-09-20 11:13:08', '2016-09-21 07:05:48'),
(3, 6, 8, 12, 'pending', NULL, '2016-10-26 06:22:13', '2016-10-26 06:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `loanpostings`
--

CREATE TABLE IF NOT EXISTS `loanpostings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loanproduct_id` int(10) unsigned NOT NULL,
  `transaction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `debit_account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit_account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loanpostings_loanproduct_id_foreign` (`loanproduct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `loanpostings`
--

INSERT INTO `loanpostings` (`id`, `loanproduct_id`, `transaction`, `debit_account`, `credit_account`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'disbursal', '4', '3', 1, '2016-07-27 09:37:02', '2016-07-27 09:37:02'),
(2, 1, 'principal_repayment', '3', '4', 1, '2016-07-27 09:37:02', '2016-07-27 09:37:02'),
(3, 1, 'interest_repayment', '3', '5', 1, '2016-07-27 09:37:02', '2016-07-27 09:37:02'),
(4, 1, 'loan_write_off', '8', '4', 1, '2016-07-27 09:37:02', '2016-07-27 09:37:02'),
(5, 1, 'fee_payment', '3', '6', 1, '2016-07-27 09:37:02', '2016-07-27 09:37:02'),
(6, 1, 'penalty_payment', '3', '7', 1, '2016-07-27 09:37:02', '2016-07-27 09:37:02'),
(7, 1, 'loan_overpayment', '3', '9', 1, '2016-07-27 09:37:02', '2016-07-27 09:37:02'),
(8, 1, 'overpayment_refund', '9', '3', 1, '2016-07-27 09:37:03', '2016-07-27 09:37:03'),
(9, 2, 'disbursal', '4', '3', 1, '2016-07-27 09:47:23', '2016-07-27 09:47:23'),
(10, 2, 'principal_repayment', '3', '4', 1, '2016-07-27 09:47:23', '2016-07-27 09:47:23'),
(11, 2, 'interest_repayment', '3', '5', 1, '2016-07-27 09:47:23', '2016-07-27 09:47:23'),
(12, 2, 'loan_write_off', '8', '4', 1, '2016-07-27 09:47:23', '2016-07-27 09:47:23'),
(13, 2, 'fee_payment', '3', '6', 1, '2016-07-27 09:47:23', '2016-07-27 09:47:23'),
(14, 2, 'penalty_payment', '3', '7', 1, '2016-07-27 09:47:23', '2016-07-27 09:47:23'),
(15, 2, 'loan_overpayment', '3', '9', 1, '2016-07-27 09:47:23', '2016-07-27 09:47:23'),
(16, 2, 'overpayment_refund', '9', '3', 1, '2016-07-27 09:47:23', '2016-07-27 09:47:23'),
(17, 3, 'disbursal', '24', '22', 11, '2016-09-20 09:31:46', '2016-09-20 09:31:46'),
(18, 3, 'principal_repayment', '22', '24', 11, '2016-09-20 09:31:47', '2016-09-20 09:31:47'),
(19, 3, 'interest_repayment', '22', '23', 11, '2016-09-20 09:31:47', '2016-09-20 09:31:47'),
(20, 3, 'loan_write_off', '27', '24', 11, '2016-09-20 09:31:47', '2016-09-20 09:31:47'),
(21, 3, 'fee_payment', '22', '25', 11, '2016-09-20 09:31:47', '2016-09-20 09:31:47'),
(22, 3, 'penalty_payment', '22', '26', 11, '2016-09-20 09:31:47', '2016-09-20 09:31:47'),
(23, 3, 'loan_overpayment', '22', '28', 11, '2016-09-20 09:31:47', '2016-09-20 09:31:47'),
(24, 3, 'overpayment_refund', '28', '22', 11, '2016-09-20 09:31:47', '2016-09-20 09:31:47'),
(25, 4, 'disbursal', '40', '38', 12, '2016-10-06 08:03:24', '2016-10-06 08:03:24'),
(26, 4, 'principal_repayment', '38', '40', 12, '2016-10-06 08:03:24', '2016-10-06 08:03:24'),
(27, 4, 'interest_repayment', '38', '41', 12, '2016-10-06 08:03:24', '2016-10-06 08:03:24'),
(28, 4, 'loan_write_off', '44', '40', 12, '2016-10-06 08:03:24', '2016-10-06 08:03:24'),
(29, 4, 'fee_payment', '38', '42', 12, '2016-10-06 08:03:24', '2016-10-06 08:03:24'),
(30, 4, 'penalty_payment', '38', '43', 12, '2016-10-06 08:03:25', '2016-10-06 08:03:25'),
(31, 4, 'loan_overpayment', '38', '45', 12, '2016-10-06 08:03:25', '2016-10-06 08:03:25'),
(32, 4, 'overpayment_refund', '45', '38', 12, '2016-10-06 08:03:25', '2016-10-06 08:03:25'),
(33, 5, 'disbursal', '40', '38', 12, '2016-10-14 07:30:18', '2016-10-14 07:30:18'),
(34, 5, 'principal_repayment', '38', '40', 12, '2016-10-14 07:30:18', '2016-10-14 07:30:18'),
(35, 5, 'interest_repayment', '38', '41', 12, '2016-10-14 07:30:18', '2016-10-14 07:30:18'),
(36, 5, 'loan_write_off', '44', '40', 12, '2016-10-14 07:30:18', '2016-10-14 07:30:18'),
(37, 5, 'fee_payment', '38', '42', 12, '2016-10-14 07:30:18', '2016-10-14 07:30:18'),
(38, 5, 'penalty_payment', '38', '43', 12, '2016-10-14 07:30:18', '2016-10-14 07:30:18'),
(39, 5, 'loan_overpayment', '38', '45', 12, '2016-10-14 07:30:18', '2016-10-14 07:30:18'),
(40, 5, 'overpayment_refund', '45', '38', 12, '2016-10-14 07:30:19', '2016-10-14 07:30:19'),
(41, 6, 'disbursal', '40', '38', 12, '2016-10-17 06:21:21', '2016-10-17 06:21:21'),
(42, 6, 'principal_repayment', '38', '40', 12, '2016-10-17 06:21:22', '2016-10-17 06:21:22'),
(43, 6, 'interest_repayment', '38', '41', 12, '2016-10-17 06:21:22', '2016-10-17 06:21:22'),
(44, 6, 'loan_write_off', '44', '40', 12, '2016-10-17 06:21:22', '2016-10-17 06:21:22'),
(45, 6, 'fee_payment', '38', '42', 12, '2016-10-17 06:21:22', '2016-10-17 06:21:22'),
(46, 6, 'penalty_payment', '38', '43', 12, '2016-10-17 06:21:22', '2016-10-17 06:21:22'),
(47, 6, 'loan_overpayment', '38', '45', 12, '2016-10-17 06:21:22', '2016-10-17 06:21:22'),
(48, 6, 'overpayment_refund', '45', '38', 12, '2016-10-17 06:21:22', '2016-10-17 06:21:22'),
(49, 7, 'disbursal', '47', '46', 17, '2016-10-28 04:35:21', '2016-10-28 04:35:21'),
(50, 7, 'principal_repayment', '46', '47', 17, '2016-10-28 04:35:21', '2016-10-28 04:35:21'),
(51, 7, 'interest_repayment', '46', '48', 17, '2016-10-28 04:35:21', '2016-10-28 04:35:21'),
(52, 7, 'loan_write_off', '52', '47', 17, '2016-10-28 04:35:21', '2016-10-28 04:35:21'),
(53, 7, 'fee_payment', '46', '50', 17, '2016-10-28 04:35:21', '2016-10-28 04:35:21'),
(54, 7, 'penalty_payment', '46', '49', 17, '2016-10-28 04:35:21', '2016-10-28 04:35:21'),
(55, 7, 'loan_overpayment', '46', '53', 17, '2016-10-28 04:35:21', '2016-10-28 04:35:21'),
(56, 7, 'overpayment_refund', '53', '46', 17, '2016-10-28 04:35:21', '2016-10-28 04:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `loanproducts`
--

CREATE TABLE IF NOT EXISTS `loanproducts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interest_rate` float(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `amortization` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'EI',
  `period` int(11) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `loanproducts`
--

INSERT INTO `loanproducts` (`id`, `name`, `short_name`, `formula`, `interest_rate`, `created_at`, `updated_at`, `amortization`, `period`, `currency`, `organization_id`) VALUES
(1, 'Emergency Loan', 'EL', 'SL', 2, '2016-07-27 09:37:02', '2016-07-27 09:37:02', 'EI', 12, 'KES', 0),
(2, 'mkopa laon', 'ML', 'SL', 2, '2016-07-27 09:47:23', '2016-07-27 09:47:23', 'EI', 12, 'KES', 0),
(3, 'Emergency Loan', 'EL', 'SL', 6, '2016-09-20 09:31:46', '2016-09-20 09:31:46', 'EI', 10, 'KES', 11),
(4, 'Emergency Loan', 'EM', 'SL', 2, '2016-10-06 08:03:24', '2016-10-06 08:03:24', 'EI', 12, 'KES', 12),
(5, 'Bidhaa Loan', 'BL', 'SL', 2, '2016-10-14 07:30:18', '2016-10-14 07:30:18', 'EI', 12, 'KES', 12),
(6, 'Mkopa Loan', 'ML', 'SL', 2, '2016-10-17 06:21:21', '2016-10-17 06:21:21', 'EI', 12, 'KES', 12),
(7, 'Imarisha Loan', 'IL', 'RB', 6, '2016-10-28 04:35:21', '2016-10-28 04:35:21', 'EI', 15, 'KES', 17);

-- --------------------------------------------------------

--
-- Table structure for table `loanrepayments`
--

CREATE TABLE IF NOT EXISTS `loanrepayments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loanaccount_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `principal_paid` float(12,2) NOT NULL DEFAULT '0.00',
  `interest_paid` float(12,2) NOT NULL DEFAULT '0.00',
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loanrepayments_loanaccount_id_foreign` (`loanaccount_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `loanrepayments`
--

INSERT INTO `loanrepayments` (`id`, `loanaccount_id`, `date`, `principal_paid`, `interest_paid`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2016-07-27', 0.00, 800.00, 1, '2016-07-27 10:54:39', '2016-07-27 10:54:39'),
(2, 1, '2016-07-27', 3333.33, 0.00, 1, '2016-07-27 10:54:39', '2016-07-27 10:54:39'),
(3, 1, '2016-07-27', 0.00, 727.27, 1, '2016-07-27 11:08:49', '2016-07-27 11:08:49'),
(4, 1, '2016-07-27', 3333.34, 0.00, 1, '2016-07-27 11:08:49', '2016-07-27 11:08:49'),
(5, 2, '2016-09-20', 0.00, 300.00, 11, '2016-09-20 11:00:09', '2016-09-20 11:00:09'),
(6, 2, '2016-09-20', 833.33, 0.00, 11, '2016-09-20 11:00:10', '2016-09-20 11:00:10'),
(7, 2, '2016-09-20', 4166.67, 0.00, 11, '2016-09-20 11:00:39', '2016-09-20 11:00:39'),
(8, 2, '2016-09-20', 0.00, 1200.00, 11, '2016-09-20 11:00:39', '2016-09-20 11:00:39'),
(9, 2, '2016-09-20', 3000.00, 0.00, 11, '2016-09-20 11:20:36', '2016-09-20 11:20:36'),
(10, 2, '2016-09-20', 0.00, -420.00, 11, '2016-09-20 11:20:36', '2016-09-20 11:20:36'),
(11, 5, '2016-10-05', 0.00, 800.00, 12, '2016-10-06 08:32:57', '2016-10-06 08:32:57'),
(12, 5, '2016-10-05', 9200.00, 0.00, 12, '2016-10-06 08:32:57', '2016-10-06 08:32:57'),
(13, 8, '2016-08-26', 0.00, 800.00, 12, '2016-10-26 06:24:54', '2016-10-26 06:24:54'),
(14, 8, '2016-08-26', 3400.00, 0.00, 12, '2016-10-26 06:24:54', '2016-10-26 06:24:54'),
(15, 8, '2016-10-26', 36600.00, 0.00, 12, '2016-10-26 06:29:08', '2016-10-26 06:29:08'),
(16, 8, '2016-10-26', 0.00, 7984.00, 12, '2016-10-26 06:29:08', '2016-10-26 06:29:08'),
(17, 8, '2016-10-26', 4000.00, 0.00, 12, '2016-10-26 06:30:12', '2016-10-26 06:30:12'),
(18, 8, '2016-10-26', 0.00, -7824.00, 12, '2016-10-26 06:30:13', '2016-10-26 06:30:13'),
(19, 9, '2016-10-12', 0.00, 2700.00, 17, '2016-10-28 05:06:17', '2016-10-28 05:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `loantransactions`
--

CREATE TABLE IF NOT EXISTS `loantransactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loanaccount_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float(10,0) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loantransactions_loanaccount_id_foreign` (`loanaccount_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `loantransactions`
--

INSERT INTO `loantransactions` (`id`, `loanaccount_id`, `date`, `description`, `trans_no`, `amount`, `type`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2016-07-27', 'loan disbursement', NULL, 49600, 'debit', 1, '2016-07-27 10:41:00', '2016-07-27 10:41:00'),
(2, 1, '2016-07-27', 'loan repayment', NULL, 4133, 'credit', 1, '2016-07-27 10:54:39', '2016-07-27 10:54:39'),
(3, 1, '2016-07-27', 'loan repayment', NULL, 4061, 'credit', 1, '2016-07-27 11:08:50', '2016-07-27 11:08:50'),
(4, 2, '2016-09-20', 'loan disbursement', NULL, 6800, 'debit', 11, '2016-09-20 09:52:21', '2016-09-20 09:52:21'),
(5, 2, '2016-09-20', 'loan repayment', NULL, 1133, 'credit', 11, '2016-09-20 11:00:10', '2016-09-20 11:00:10'),
(6, 2, '2016-09-20', 'loan repayment', NULL, 4417, 'credit', 11, '2016-09-20 11:00:40', '2016-09-20 11:00:40'),
(7, 2, '2016-09-20', 'loan top up', NULL, 3000, 'debit', 11, '2016-09-20 11:20:05', '2016-09-20 11:20:05'),
(8, 2, '2016-09-20', 'loan repayment', NULL, 3180, 'credit', 11, '2016-09-20 11:20:37', '2016-09-20 11:20:37'),
(9, 5, '2016-10-06', 'loan disbursement', NULL, 49600, 'debit', 12, '2016-10-06 08:21:12', '2016-10-06 08:21:12'),
(10, 5, '2016-10-05', 'loan repayment', NULL, 10000, 'credit', 12, '2016-10-06 08:32:58', '2016-10-06 08:32:58'),
(11, 7, '2016-10-17', 'loan disbursement', NULL, 2200, 'debit', 12, '2016-10-17 06:25:46', '2016-10-17 06:25:46'),
(12, 8, '2016-10-26', 'loan disbursement', NULL, 49600, 'debit', 12, '2016-10-26 06:20:40', '2016-10-26 06:20:40'),
(13, 8, '2016-08-26', 'loan repayment', NULL, 4200, 'credit', 12, '2016-10-26 06:24:54', '2016-10-26 06:24:54'),
(14, 8, '2016-10-26', 'loan repayment', NULL, 37332, 'credit', 12, '2016-10-26 06:29:08', '2016-10-26 06:29:08'),
(15, 8, '2016-10-26', 'loan top up', NULL, 4000, 'debit', 12, '2016-10-26 06:29:47', '2016-10-26 06:29:47'),
(16, 8, '2016-10-26', 'loan repayment', NULL, 4080, 'credit', 12, '2016-10-26 06:30:13', '2016-10-26 06:30:13'),
(17, 9, '2016-10-28', 'loan disbursement', NULL, 66600, 'debit', 17, '2016-10-28 04:42:14', '2016-10-28 04:42:14'),
(18, 9, '2016-10-12', 'loan repayment', NULL, 0, 'credit', 17, '2016-10-28 05:06:17', '2016-10-28 05:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `description`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'main', '', 1, '2016-07-27 07:57:22', '2016-07-27 07:57:22'),
(2, 'main', '', 8, '2016-08-09 10:06:24', '2016-08-09 10:06:24'),
(3, 'Main', 'Main store', 11, '2016-09-20 06:13:44', '2016-09-20 06:13:44'),
(4, 'main', '', 12, '2016-10-06 06:29:38', '2016-10-06 06:29:38'),
(5, 'Main Store', '', 17, '2016-10-26 08:19:52', '2016-10-26 08:19:52'),
(6, 'Main Store', '', 16, '2016-10-26 08:30:52', '2016-10-26 08:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE IF NOT EXISTS `mails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'smtp',
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encryption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `driver`, `host`, `username`, `password`, `port`, `encryption`, `sender_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'mail.lixnet.net', 'info@lixnet.net', 'lixnetco2015', '25', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `membership_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default_photo.png',
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_number` bigint(20) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `group_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `monthly_remittance_amount` float(15,2) DEFAULT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) DEFAULT '1',
  `is_css_active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `members_group_id_foreign` (`group_id`),
  KEY `members_branch_id_foreign` (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `membership_no`, `photo`, `signature`, `gender`, `id_number`, `phone`, `email`, `address`, `group_id`, `branch_id`, `monthly_remittance_amount`, `organization_id`, `created_at`, `updated_at`, `is_active`, `is_css_active`) VALUES
(1, 'Josephine Nyanchama', 'L001', 'default_photo.png', NULL, 'female', 283277377, '0720700690', 'josephineayienda@gmail.com', '', 1, 1, 350000.00, 2, '2016-07-27 09:38:24', '2016-07-27 09:38:24', 1, 0),
(2, 'Ken Wango', 'L002', 'default_photo.png', NULL, 'male', 27677655, '072112212', 'ken@gmail.com', '', 1, 1, 450000.00, 2, '2016-07-27 09:39:29', '2016-07-27 09:39:29', 1, 0),
(3, 'josephine ayienda', '001', 'default_photo.png', NULL, 'female', 2856543425, '0723454345', 'jos@gmail.com', '', 2, 3, 5000.00, 8, '2016-08-11 09:20:27', '2016-08-11 09:56:39', 1, 1),
(4, 'Kennedy Wango', 'BM.1', 'zLYsIanLGaQg.jpg', 'JcVSMSfnr6ac.jpg', 'male', 27781190, '0725145304', 'wangoken2@gmail.com', 'P.O. Box 123,\r\nGithunguri', 3, 1, 10000.00, 11, '2016-09-20 09:07:24', '2016-09-21 04:29:02', 1, 1),
(5, 'James Githu', 'BM.2', 'default_photo.png', NULL, 'male', 1342344412, '0712345678', 'ken.wango@lixnet.net', '', 3, 1, 15000.00, 11, '2016-09-20 09:08:50', '2016-09-21 03:43:22', 1, 1),
(6, 'jj', 'KM.1', 'default_photo.png', NULL, 'male', 3455554448, '0723444334', '', '', 4, 1, 900.00, 12, '2016-10-06 07:18:31', '2016-10-06 07:18:31', 1, 0),
(7, 'Crispus Cheruiyot', 'LTLM.1', 'default_photo.png', NULL, 'male', 27757671, '0710411226', 'crispus15@gmail.com', '270-30102', 5, 1, 3000.00, 17, '2016-10-25 05:58:06', '2016-10-25 05:58:06', 1, 0),
(8, 'Majimarefu', 'MIM.1', 'default_photo.png', NULL, 'male', 7869009, '0700000002', 'maji@gmail.com', '', NULL, 1, 1500.00, 23, '2016-10-25 11:48:08', '2016-10-25 11:48:08', 1, 0),
(9, 'Kelvin Makamu', 'KM.2', 'default_photo.png', NULL, 'male', 12345433, '072798747337', 'kelvin.makamu@lixnet.net', '', 4, 1, 0.00, 12, '2016-10-26 06:17:14', '2016-10-26 06:17:14', 1, 0),
(10, 'Ken Wango', 'LTLM.2', 'default_photo.png', NULL, 'male', 29394844, '0723847484', 'ken.wango@lixnet.net', '', 5, 1, 5000.00, 17, '2016-10-26 09:23:56', '2016-10-26 09:23:56', 1, 0),
(11, 'Josephine Ayienda', 'LTLM.3', 'default_photo.png', NULL, 'female', 24904944, '0720929833', '', '', 5, 1, 3000.00, 17, '2016-10-26 09:27:00', '2016-10-26 09:27:00', 1, 0),
(12, 'Alfred Kimutai', 'MIM.2', 'default_photo.png', NULL, 'male', 22445566, '0715243586', 'makamu3pmkelvin@gmail.com', '35200', NULL, 1, 15000.00, 23, '2016-10-28 03:22:28', '2016-10-28 03:22:28', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_11_11_192002_create_x_organizations_table', 1),
('2015_11_12_192002_create_appraisalcategories_table', 1),
('2015_11_13_192002_create_appraisal_questions_table', 1),
('2015_11_13_192002_create_occurencesettings_table', 1),
('2015_11_13_192002_create_x_account_table', 1),
('2015_11_13_192002_create_x_accounts_table', 1),
('2015_11_13_192002_create_x_assigned_roles_table', 1),
('2015_11_13_192002_create_x_audits_table', 1),
('2015_11_13_192002_create_x_branches_table', 1),
('2015_11_13_192002_create_x_categories_table', 1),
('2015_11_13_192002_create_x_charge_loanproduct_table', 1),
('2015_11_13_192002_create_x_charge_savingproduct_table', 1),
('2015_11_13_192002_create_x_charges_table', 1),
('2015_11_13_192002_create_x_currencies_table', 1),
('2015_11_13_192002_create_x_groups_table', 1),
('2015_11_13_192002_create_x_journals_table', 1),
('2015_11_13_192002_create_x_kins_table', 1),
('2015_11_13_192002_create_x_loanaccounts_table', 1),
('2015_11_13_192002_create_x_loanguarantors_table', 1),
('2015_11_13_192002_create_x_loanpostings_table', 1),
('2015_11_13_192002_create_x_loanproducts_table', 1),
('2015_11_13_192002_create_x_loanrepayments_table', 1),
('2015_11_13_192002_create_x_loantransactions_table', 1),
('2015_11_13_192002_create_x_members_table', 1),
('2015_11_13_192002_create_x_orders_table', 1),
('2015_11_13_192002_create_x_password_reminders_table', 1),
('2015_11_13_192002_create_x_permission_role_table', 1),
('2015_11_13_192002_create_x_permissions_table', 1),
('2015_11_13_192002_create_x_products_table', 1),
('2015_11_13_192002_create_x_roles_table', 1),
('2015_11_13_192002_create_x_savingaccounts_table', 1),
('2015_11_13_192002_create_x_savingpostings_table', 1),
('2015_11_13_192002_create_x_savingproducts_table', 1),
('2015_11_13_192002_create_x_savingtransactions_table', 1),
('2015_11_13_192002_create_x_shareaccounts_table', 1),
('2015_11_13_192002_create_x_shares_table', 1),
('2015_11_13_192002_create_x_sharetransactions_table', 1),
('2015_11_13_192002_create_x_tax_orders_table', 1),
('2015_11_13_192002_create_x_tax_table', 1),
('2015_11_13_192002_create_x_user_role_table', 1),
('2015_11_13_192002_create_x_users_table', 1),
('2015_11_13_192002_create_x_vendors_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_assigned_roles_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_charge_loanproduct_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_charge_savingproduct_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_journals_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_kins_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_loanaccounts_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_loanguarantors_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_loanpostings_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_loanrepayments_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_loantransactions_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_members_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_orders_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_permission_role_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_products_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_savingaccounts_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_savingpostings_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_savingtransactions_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_shareaccounts_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_sharetransactions_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_user_role_table', 1),
('2015_11_13_192006_add_foreign_keys_to_x_users_table', 1),
('2015_11_20_083755_create_autoprocesses_table', 1),
('2015_11_30_101925_create_departments_table', 1),
('2015_11_30_102341_create_job_group_table', 1),
('2015_11_30_103046_create_education_table', 1),
('2015_11_30_104021_create_employee_type_table', 1),
('2015_11_30_104621_create_bank_table', 1),
('2015_11_30_104621_create_budget_table', 1),
('2015_11_30_104621_create_expensesettings_table', 1),
('2015_11_30_105006_create_deductions_table', 1),
('2015_11_30_105006_create_nontaxables_table', 1),
('2015_11_30_105430_create_relief_table', 1),
('2015_11_30_125654_create_allowances_table', 1),
('2015_11_30_125654_create_benefitsettings_table', 1),
('2015_11_30_125654_create_citizenships_table', 1),
('2015_11_30_125654_create_earningsettings_table', 1),
('2015_11_30_131641_create_bank_branches_table', 1),
('2015_12_02_060131_create_nssf_table', 1),
('2015_12_02_060202_create_nhif_table', 1),
('2015_12_11_073943_create_leavetypes_table', 1),
('2015_12_11_074541_create_holidays_table', 1),
('2015_12_17_092634_create_items_table', 1),
('2015_12_17_093206_create_clients_table', 1),
('2015_12_17_093509_create_paymentmethods_table', 1),
('2015_12_17_094052_create_locations_table', 1),
('2015_12_17_094633_create_expenses_table', 1),
('2015_12_17_095700_create_erporders_table', 1),
('2015_12_17_101046_create_erporderitems_table', 1),
('2015_12_17_104147_create_payments_table', 1),
('2015_12_17_104738_create_stocks_table', 1),
('2016_03_08_080320_create_mails_table', 1),
('2016_03_09_054131_create_tests_table', 1),
('2016_11_13_072830_create_employee_table', 1),
('2016_11_13_192002_create_employeebenefits_table', 1),
('2016_11_13_202002_create_appraisals_table', 1),
('2016_11_13_202002_create_emergency_contacts_table', 1),
('2017_11_13_192002_create_properties_table', 1),
('2017_11_13_192002_create_x_occurences_table', 1),
('2017_11_13_202002_create_next_of_kins_table', 1),
('2017_11_30_105530_create_employee_relief_table', 1),
('2017_11_30_122642_create_earnings_table', 1),
('2017_11_30_122642_create_overtimes_table', 1),
('2017_11_30_130039_create_employee_allowances_table', 1),
('2017_11_30_132013_create_employee_deductions_table', 1),
('2017_11_30_132013_create_employeenontaxables_table', 1),
('2017_11_30_132807_create_transact_allowances_table', 1),
('2017_11_30_132807_create_transact_deductions_table', 1),
('2017_11_30_132807_create_transact_nontaxables_table', 1),
('2017_11_30_133021_create_transact_earnings_table', 1),
('2017_11_30_133021_create_transact_overtimes_table', 1),
('2017_11_30_133021_create_transact_reliefs_table', 1),
('2017_11_30_133337_create_transact_advances_table', 1),
('2017_11_30_133337_create_transact_table', 1),
('2017_11_30_134419_create_documents_table', 1),
('2017_12_11_075243_create_leaveapplications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nextofkins`
--

CREATE TABLE IF NOT EXISTS `nextofkins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8_unicode_ci,
  `goodwill` float(10,0) DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `nextofkins_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nextofkins`
--

INSERT INTO `nextofkins` (`id`, `first_name`, `middle_name`, `last_name`, `relationship`, `contact`, `goodwill`, `id_number`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, 'Cris', '', 'Kibet', 'Sponsor', '', NULL, '37373746437', 3, '2016-07-28 07:19:17', '2016-07-28 07:19:17'),
(3, 'Cherono', '', 'Damaris', 'sister', '', NULL, '34565434', 5, '2016-08-01 06:11:43', '2016-08-01 06:11:43'),
(4, 'Susan', '', 'Chiero', 'sister', '', NULL, '459838882', 4, '2016-08-01 06:14:34', '2016-08-01 06:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `nontaxables`
--

CREATE TABLE IF NOT EXISTS `nontaxables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `nontaxables_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nontaxables`
--

INSERT INTO `nontaxables` (`id`, `name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Refunds', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `occurences`
--

CREATE TABLE IF NOT EXISTS `occurences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occurence_brief` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `occurencesetting_id` int(10) unsigned NOT NULL,
  `narrative` text COLLATE utf8_unicode_ci,
  `doc_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occurence_date` date NOT NULL,
  `organization_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `occurences_employee_id_foreign` (`employee_id`),
  KEY `occurences_occurencesetting_id_foreign` (`occurencesetting_id`),
  KEY `occurences_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `occurences`
--

INSERT INTO `occurences` (`id`, `occurence_brief`, `employee_id`, `occurencesetting_id`, `narrative`, `doc_path`, `occurence_date`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'misbehaved', 3, 2, '', NULL, '2016-07-28', 1, '2016-07-28 08:48:16', '2016-07-28 08:48:16'),
(2, 'theft', 6, 14, '', NULL, '2016-08-31', 8, '2016-08-10 09:41:55', '2016-08-10 09:41:55'),
(3, 'Daily duties', 8, 7, 'Completed unimaginable tasks', 'agritech.sql', '2016-09-01', 11, '2016-09-19 08:42:45', '2016-09-19 08:42:45'),
(4, 'lateness', 10, 3, '', NULL, '2016-10-04', 12, '2016-10-07 09:21:12', '2016-10-07 09:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `occurencesettings`
--

CREATE TABLE IF NOT EXISTS `occurencesettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occurence_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `occurencesettings_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `occurencesettings`
--

INSERT INTO `occurencesettings` (`id`, `occurence_type`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Absentism/Abandonment', NULL, '2016-07-27 06:03:34', '2016-07-27 06:03:34'),
(2, 'Abuse of Office', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(3, 'Assessment', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(4, 'Corruption', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(5, 'Emergency Drill', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(6, 'Incompetence', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(7, 'Initiative', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(8, 'Innovation', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(9, 'Insubordination', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(10, 'Intoxication', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(11, 'Meeting', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(12, 'Promotion', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(13, 'Team Building', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(14, 'Theft', NULL, '2016-07-27 06:03:35', '2016-07-27 06:03:35'),
(15, 'Training', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36'),
(16, 'Violence', NULL, '2016-07-27 06:03:36', '2016-07-27 06:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `order_date` date NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sacco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `orders_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'XARA FINANCIALS',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kra_pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nssf_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhif_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bank_branch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bank_account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swift_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payroll_license_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'evaluation',
  `erp_license_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'evaluation',
  `cbs_license_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'evaluation',
  `license_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payroll_license_key` int(11) NOT NULL DEFAULT '0',
  `erp_license_key` int(11) NOT NULL DEFAULT '0',
  `cbs_license_key` int(11) NOT NULL DEFAULT '0',
  `erp_client_licensed` bigint(20) DEFAULT '10',
  `erp_item_licensed` bigint(20) DEFAULT '5',
  `payroll_licensed` bigint(20) DEFAULT '10',
  `cbs_licensed` bigint(20) DEFAULT '100',
  `payroll_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'P3110',
  `erp_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'E3110',
  `cbs_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'C3110',
  `payroll_support_period` date DEFAULT NULL,
  `erp_support_period` date DEFAULT NULL,
  `cbs_support_period` date DEFAULT NULL,
  `is_payroll_active` bigint(20) DEFAULT '0',
  `is_erp_active` bigint(20) DEFAULT '0',
  `is_cbs_active` bigint(20) DEFAULT '0',
  `demo_expiry` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `organization_bank_id_foreign` (`bank_id`),
  KEY `organization_bank_branch_id_foreign` (`bank_branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `logo`, `email`, `website`, `address`, `phone`, `kra_pin`, `nssf_no`, `nhif_no`, `bank_id`, `bank_branch_id`, `bank_account_number`, `swift_code`, `payroll_license_type`, `erp_license_type`, `cbs_license_type`, `license_code`, `payroll_license_key`, `erp_license_key`, `cbs_license_key`, `erp_client_licensed`, `erp_item_licensed`, `payroll_licensed`, `cbs_licensed`, `payroll_code`, `erp_code`, `cbs_code`, `payroll_support_period`, `erp_support_period`, `cbs_support_period`, `is_payroll_active`, `is_erp_active`, `is_cbs_active`, `demo_expiry`, `status`, `created_at`, `updated_at`) VALUES
(1, 'XARA FINANCIALS', 'xara.png', NULL, 'www.lixnet.co.ke', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', NULL, 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', NULL, NULL, NULL, 1, 1, 1, '2017-09-30', 0, '0000-00-00 00:00:00', '2016-10-10 08:01:12'),
(2, 'IntraCraze ', 'xara.png', '', 'www.lixnet.net', '', '', '', '', '', 0, 0, '', '', 'evaluation', 'evaluation', 'evaluation', 'Cn4aDOjAsw', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-07-27', '2016-07-27', '2016-07-27', 1, 1, 1, '2016-09-30', 0, '2016-07-27 06:03:33', '2016-07-27 16:01:00'),
(5, 'Clitel Technologies', 'xara.png', '', '', '', '0712345678', '', '', '', 0, 0, '', '', 'evaluation', 'evaluation', 'evaluation', 'fjegVRad1I', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-07-28', '2016-07-28', '2016-07-28', 1, 1, 1, '2016-09-30', 0, '2016-07-28 04:35:08', '2016-08-02 08:18:10'),
(6, 'VirtualTech', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', '2v0gVXqUsu', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-08-01', '2016-08-01', '2016-08-01', 1, 1, 1, '2016-09-30', 0, '2016-08-01 06:05:10', '2016-08-01 06:05:10'),
(7, 'Lixnet technologies', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'uQ1ZphdMVW', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-08-09', '2016-08-09', '2016-08-09', 1, 1, 1, '2016-09-08', 0, '2016-08-09 09:19:02', '2016-08-09 09:19:02'),
(8, 'Lixnet technologies', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'gQ85M9tOsX', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-08-09', '2016-08-09', '2016-08-09', 1, 1, 1, '2016-09-08', 0, '2016-08-09 09:19:43', '2016-08-09 09:19:43'),
(11, 'Boolie', '6W2DFQ2JxVIT.png', 'info@boolie.com', 'boolie.com', 'P.O. Box 123,\r\nGithunguri', '0712345678', '', '', '', 19, 24, '', '', 'evaluation', 'evaluation', 'evaluation', 'DEGHOewXV9', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-09-19', '2016-09-19', '2016-09-19', 1, 1, 1, '2016-09-19', 0, '2016-09-19 04:41:29', '2016-09-20 06:27:38'),
(12, 'Kenchic', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 's8BRjL3hSu', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2020-10-06', '2020-10-06', '2020-10-06', 1, 1, 1, '2020-11-05', 1, '2016-10-06 06:14:55', '2016-10-06 06:14:55'),
(13, 'worldtech ict', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'Zd2UAJvg0o', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-10', '2016-10-10', '2016-10-10', 1, 1, 1, '2016-11-09', 0, '2016-10-10 07:14:09', '2016-10-10 07:14:09'),
(14, 'chumo inc', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', '7ktENDJ3Cv', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-10', '2016-10-10', '2016-10-10', 1, 1, 1, '2016-11-09', 0, '2016-10-10 07:59:28', '2016-10-10 07:59:28'),
(15, 'LT', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', '6YvjkDJ5Cy', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-11', '2016-10-11', '2016-10-11', 1, 1, 1, '2016-11-10', 0, '2016-10-11 08:17:14', '2016-10-11 08:17:14'),
(16, 'Dutech Core', 'PiITHIBO0ULQ.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', '0M1QW8pfJm', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-12', '2016-10-12', '2016-10-12', 1, 1, 1, '2016-11-11', 0, '2016-10-12 03:46:36', '2016-10-19 12:20:08'),
(17, 'Lixnet Technologies Ltd', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'LShGAfuzmI', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-12', '2016-10-12', '2016-10-12', 1, 1, 1, '2016-11-11', 0, '2016-10-12 08:25:50', '2016-10-12 08:25:50'),
(18, 'Lixnet', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'HBPFg0qDkr', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-19', '2016-10-19', '2016-10-19', 1, 1, 1, '2016-11-18', 0, '2016-10-19 07:41:14', '2016-10-19 07:41:14'),
(19, 'Test', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'TWG7DtmQdK', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-25', '2016-10-25', '2016-10-25', 1, 1, 1, '2016-11-24', 0, '2016-10-25 05:36:33', '2016-10-25 05:36:33'),
(20, 'Mazawalifu Incorporation', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'JPvlZLBkQq', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-25', '2016-10-25', '2016-10-25', 1, 1, 1, '2016-11-24', 0, '2016-10-25 10:59:37', '2016-10-25 10:59:37'),
(21, 'Mazawalifu Incorporation', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'hJkdm8PI0N', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-25', '2016-10-25', '2016-10-25', 1, 1, 1, '2016-11-24', 0, '2016-10-25 11:00:06', '2016-10-25 11:00:06'),
(22, 'Mazawalifu Incorporation', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'eYFk2tgvVs', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-25', '2016-10-25', '2016-10-25', 1, 1, 1, '2016-11-24', 0, '2016-10-25 11:00:46', '2016-10-25 11:00:46'),
(23, 'Mazawalifu Inc.', 'xara.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'evaluation', 'evaluation', 'evaluation', 'VK8DqFPab0', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-10-25', '2016-10-25', '2016-10-25', 1, 1, 1, '2016-11-24', 0, '2016-10-25 11:03:32', '2016-10-25 11:03:32'),
(24, 'HEBRON SACCO LIMITED', 'xara.png', '', '', '72950 00200\r\nNairobi', '+254716919783', '', '', '', 12, 1101, '01120532394900', '', 'evaluation', 'evaluation', 'evaluation', '4cWKL7ekmO', 0, 0, 0, 10, 5, 10, 100, 'P3110', 'E3110', 'C3110', '2016-11-04', '2016-11-04', '2016-11-04', 1, 1, 1, '2016-12-04', 0, '2016-11-04 06:58:02', '2016-11-04 07:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE IF NOT EXISTS `overtimes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `period` float(15,2) NOT NULL,
  `formular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instalments` int(11) DEFAULT '0',
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `overtime_date` date NOT NULL,
  `first_day_month` date NOT NULL,
  `last_day_month` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `overtimes_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `overtimes`
--

INSERT INTO `overtimes` (`id`, `employee_id`, `type`, `period`, `formular`, `instalments`, `amount`, `overtime_date`, `first_day_month`, `last_day_month`, `created_at`, `updated_at`) VALUES
(1, 6, 'Hourly', 3.00, 'One Time', 1, '69.44', '2016-08-10', '2016-08-01', '2016-08-31', '2016-08-10 08:52:34', '2016-08-10 08:52:34'),
(2, 7, 'Hourly', 4.00, 'One Time', 1, '138.89', '2016-08-08', '2016-08-01', '2016-08-31', '2016-08-10 08:53:32', '2016-08-10 08:53:32'),
(3, 8, 'Hourly', 3.00, 'One Time', 0, '69.98', '2016-09-01', '2016-09-01', '2016-09-30', '2016-09-19 06:06:13', '2016-09-19 06:06:13'),
(4, 10, 'Daily', 2.00, 'One Time', 1, '1333.33', '2016-11-01', '2016-11-01', '2016-11-30', '2016-10-26 07:03:47', '2016-10-26 07:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `token`, `created_at`) VALUES
('steviemwa@gmail.com', '97be9b705012fd72cb5fda57df3cbb75', '2016-11-02 12:10:57'),
('steviemwa@gmail.com', '45a523f751bd7bf7ba7294ef8a3184c5', '2016-11-02 12:11:14'),
('steviemwa@gmail.com', 'eee734822c1e2ef7cc1b85965e021d40', '2016-11-02 12:11:34'),
('steviemwa@gmail.com', '9ee31a92228b5c6ff28060f5bbabffe9', '2016-11-02 12:22:11'),
('steviemwa@gmail.com', '813d768a3e651268abef9e0625b1ecc3', '2016-11-02 12:23:33'),
('steviemwa@gmail.com', '591074fa860d1ad89966372c3f810528', '2016-11-02 12:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethods`
--

CREATE TABLE IF NOT EXISTS `paymentmethods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `paymentmethods_account_id_foreign` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`id`, `name`, `account_id`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'lipa na mpesa', 2, 1, '2016-07-27 07:53:50', '2016-07-27 07:53:50'),
(2, 'banking', 1, 1, '2016-07-27 07:56:36', '2016-07-27 07:56:36'),
(3, 'lipa mpesa', 15, 8, '2016-08-09 10:26:01', '2016-08-09 10:26:01'),
(4, 'Lipa na Mpesa', 20, 11, '2016-09-20 06:50:22', '2016-09-20 06:50:22'),
(5, 'Wire Transfer', 21, 11, '2016-09-20 06:50:49', '2016-09-20 06:50:49'),
(6, 'lipa na mpesa', 36, 12, '2016-10-06 06:51:48', '2016-10-06 06:51:48'),
(7, 'Cheque', 37, 12, '2016-10-06 06:52:03', '2016-10-06 06:52:03'),
(8, 'Cash', 46, 17, '2016-10-26 08:48:11', '2016-10-26 08:48:11'),
(9, 'Cheque', 46, 17, '2016-10-26 08:48:42', '2016-10-26 08:48:42'),
(10, 'Mpesa', 46, 17, '2016-10-26 08:49:05', '2016-10-26 08:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `cash_account_id` int(10) unsigned NOT NULL,
  `receivable_acc_id` int(11) NOT NULL,
  `cash_journal_id` int(11) DEFAULT NULL,
  `receivable_journal_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount_paid` double NOT NULL DEFAULT '0',
  `received_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentmethod_id` int(10) unsigned NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `void` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `payments_paymentmethod_id_foreign` (`paymentmethod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `client_id`, `cash_account_id`, `receivable_acc_id`, `cash_journal_id`, `receivable_journal_id`, `date`, `amount_paid`, `received_by`, `paymentmethod_id`, `organization_id`, `void`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, 0, 0, '2016-07-27', 35620, 'superadmin', 1, 1, 0, '2016-07-27 08:13:00', '2016-07-27 08:13:00'),
(2, 6, 0, 0, 0, 0, '2016-08-11', 10000, 'josephine', 3, 8, 0, '2016-08-11 10:38:18', '2016-08-11 10:38:18'),
(3, 11, 0, 0, 0, 0, '2016-08-30', 5000, NULL, 0, 1, 0, '2016-08-30 04:08:42', '2016-08-30 04:08:42'),
(4, 12, 0, 0, 0, 0, '2016-08-30', 460000, NULL, 0, 1, 0, '2016-08-30 05:08:24', '2016-08-30 05:08:24'),
(5, 11, 0, 0, 0, 0, '2016-08-30', 35000, NULL, 0, 1, 0, '2016-08-30 06:08:02', '2016-08-30 06:08:02'),
(6, 11, 0, 0, 0, 0, '2016-08-30', 35000, NULL, 0, 1, 0, '2016-08-30 16:08:35', '2016-08-30 16:08:35'),
(7, 12, 0, 0, 0, 0, '2016-09-01', 460000, NULL, 0, 1, 0, '2016-09-01 13:09:10', '2016-09-01 13:09:10'),
(8, 21, 0, 0, 0, 0, '2016-09-20', 250000, 'jamharic', 5, 11, 0, '2016-09-20 07:13:34', '2016-09-20 07:26:06'),
(12, 21, 22, 34, 40, 39, '2016-09-21', 100000, 'jamharic', 4, 11, 1, '2016-09-21 10:51:49', '2016-09-21 11:13:22'),
(13, 24, 38, 38, 58, 57, '2016-10-06', 2000, 'ken', 6, 12, 0, '2016-10-06 06:53:35', '2016-10-06 06:53:36'),
(14, 26, 46, 46, 90, 89, '2016-10-26', 100000, 'cris', 9, 17, 0, '2016-10-26 08:50:17', '2016-10-26 08:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `category`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'create_employee', 'Create employee', 'Employee', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(2, 'update_employee', 'Update employee', 'Employee', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(3, 'delete_employee', 'Deactivate employee', 'Employee', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(4, 'view_employee', 'View employee', 'Employee', NULL, '2016-07-27 06:03:38', '2016-07-27 06:03:38'),
(5, 'manage_earning', 'Manage earnings', 'Payroll', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(6, 'manage_deduction', 'Manage deductions', 'Payroll', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(7, 'manage_allowance', 'Manage allowance', 'Payroll', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(8, 'manage_relief', 'Manage releif', 'Payroll', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(9, 'manage_benefit', 'Manage benefits', 'Payroll', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(10, 'process_payroll', 'Process payroll', 'Payroll', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(11, 'view_payroll_report', 'View reports', 'Payroll', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(12, 'manage_settings', 'Manage settings', 'Payroll', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(13, 'view_application', 'View applications', 'Leave', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(14, 'amend_application', 'Amend applications', 'Leave', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(15, 'approve_application', 'Approve applications', 'Leave', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(16, 'reject_application', 'Reject applications', 'Leave', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(17, 'cancel_application', 'Cancel applications', 'Leave', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(18, 'manage_type', 'Manage leave types', 'Leave', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(19, 'manage_holiday', 'Manage holidays', 'Leave', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(20, 'view_leave_report', 'View reports', 'Leave', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(21, 'manage_organization', 'manage organization', 'Organization', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(22, 'manage_branch', 'manage branches', 'Organization', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(23, 'manage_group', 'manage groups', 'Organization', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(24, 'manage_organization_settings', 'manage settings', 'Organization', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(25, 'manage_user', 'manage users', 'System', NULL, '2016-07-27 06:03:39', '2016-07-27 06:03:39'),
(26, 'manage_role', 'manage roles', 'System', NULL, '2016-07-27 06:03:40', '2016-07-27 06:03:40'),
(27, 'manage_audit', 'manage audits', 'System', NULL, '2016-07-27 06:03:40', '2016-07-27 06:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=453 ;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 1, 2),
(29, 2, 2),
(30, 3, 2),
(31, 4, 2),
(32, 5, 2),
(33, 6, 2),
(34, 7, 2),
(35, 8, 2),
(36, 9, 2),
(37, 10, 2),
(38, 11, 2),
(39, 12, 2),
(40, 13, 2),
(41, 14, 2),
(42, 15, 2),
(43, 16, 2),
(44, 17, 2),
(45, 18, 2),
(46, 19, 2),
(47, 20, 2),
(48, 21, 2),
(49, 22, 2),
(50, 23, 2),
(51, 24, 2),
(52, 25, 2),
(53, 26, 2),
(54, 27, 2),
(55, 1, 6),
(56, 2, 6),
(57, 3, 6),
(58, 4, 6),
(59, 5, 6),
(60, 6, 6),
(61, 7, 6),
(62, 8, 6),
(63, 9, 6),
(64, 10, 6),
(65, 11, 6),
(66, 12, 6),
(67, 13, 6),
(68, 14, 6),
(69, 15, 6),
(70, 16, 6),
(71, 17, 6),
(72, 18, 6),
(73, 19, 6),
(74, 20, 6),
(75, 21, 6),
(76, 22, 6),
(77, 23, 6),
(78, 24, 6),
(79, 25, 6),
(80, 26, 6),
(81, 27, 6),
(82, 1, 7),
(83, 2, 7),
(84, 3, 7),
(85, 4, 7),
(86, 5, 7),
(87, 6, 7),
(88, 7, 7),
(89, 8, 7),
(90, 9, 7),
(91, 10, 7),
(92, 11, 7),
(93, 12, 7),
(94, 13, 7),
(95, 14, 7),
(96, 15, 7),
(97, 16, 7),
(98, 17, 7),
(99, 18, 7),
(100, 19, 7),
(101, 20, 7),
(102, 21, 7),
(103, 22, 7),
(104, 23, 7),
(105, 24, 7),
(106, 25, 7),
(107, 26, 7),
(108, 27, 7),
(109, 1, 8),
(110, 2, 8),
(111, 3, 8),
(112, 4, 8),
(113, 5, 8),
(114, 6, 8),
(115, 7, 8),
(116, 8, 8),
(117, 9, 8),
(118, 10, 8),
(119, 11, 8),
(120, 12, 8),
(121, 13, 8),
(122, 14, 8),
(123, 15, 8),
(124, 16, 8),
(125, 17, 8),
(126, 18, 8),
(127, 19, 8),
(128, 20, 8),
(129, 21, 8),
(130, 22, 8),
(131, 23, 8),
(132, 24, 8),
(133, 25, 8),
(134, 26, 8),
(135, 27, 8),
(136, 1, 9),
(137, 2, 9),
(138, 3, 9),
(139, 4, 9),
(140, 5, 9),
(141, 6, 9),
(142, 7, 9),
(143, 8, 9),
(144, 9, 9),
(145, 10, 9),
(146, 11, 9),
(147, 12, 9),
(148, 13, 9),
(149, 14, 9),
(150, 15, 9),
(151, 16, 9),
(152, 17, 9),
(153, 18, 9),
(154, 19, 9),
(155, 20, 9),
(156, 21, 9),
(157, 22, 9),
(158, 23, 9),
(159, 24, 9),
(160, 25, 9),
(161, 26, 9),
(162, 27, 9),
(163, 5, 10),
(164, 6, 10),
(165, 7, 10),
(166, 8, 10),
(167, 9, 10),
(168, 10, 10),
(169, 11, 10),
(170, 12, 10),
(171, 1, 11),
(172, 2, 11),
(173, 3, 11),
(174, 4, 11),
(175, 13, 11),
(176, 14, 11),
(177, 15, 11),
(178, 16, 11),
(179, 17, 11),
(180, 18, 11),
(181, 19, 11),
(182, 20, 11),
(183, 1, 12),
(184, 2, 12),
(185, 3, 12),
(186, 4, 12),
(187, 5, 12),
(188, 6, 12),
(189, 7, 12),
(190, 8, 12),
(191, 9, 12),
(192, 10, 12),
(193, 11, 12),
(194, 12, 12),
(195, 13, 12),
(196, 14, 12),
(197, 15, 12),
(198, 16, 12),
(199, 17, 12),
(200, 18, 12),
(201, 19, 12),
(202, 20, 12),
(203, 21, 12),
(204, 22, 12),
(205, 23, 12),
(206, 24, 12),
(207, 25, 12),
(208, 26, 12),
(209, 27, 12),
(210, 1, 13),
(211, 2, 13),
(212, 3, 13),
(213, 4, 13),
(214, 5, 13),
(215, 6, 13),
(216, 7, 13),
(217, 8, 13),
(218, 9, 13),
(219, 10, 13),
(220, 11, 13),
(221, 12, 13),
(222, 13, 13),
(223, 14, 13),
(224, 15, 13),
(225, 16, 13),
(226, 17, 13),
(227, 18, 13),
(228, 19, 13),
(229, 20, 13),
(230, 21, 13),
(231, 22, 13),
(232, 23, 13),
(233, 24, 13),
(234, 25, 13),
(235, 26, 13),
(236, 27, 13),
(237, 1, 14),
(238, 2, 14),
(239, 3, 14),
(240, 4, 14),
(241, 5, 14),
(242, 6, 14),
(243, 7, 14),
(244, 8, 14),
(245, 9, 14),
(246, 10, 14),
(247, 11, 14),
(248, 12, 14),
(249, 13, 14),
(250, 14, 14),
(251, 15, 14),
(252, 16, 14),
(253, 17, 14),
(254, 18, 14),
(255, 19, 14),
(256, 20, 14),
(257, 21, 14),
(258, 22, 14),
(259, 23, 14),
(260, 24, 14),
(261, 25, 14),
(262, 26, 14),
(263, 27, 14),
(264, 1, 15),
(265, 2, 15),
(266, 3, 15),
(267, 4, 15),
(268, 5, 15),
(269, 6, 15),
(270, 7, 15),
(271, 8, 15),
(272, 9, 15),
(273, 10, 15),
(274, 11, 15),
(275, 12, 15),
(276, 13, 15),
(277, 14, 15),
(278, 15, 15),
(279, 16, 15),
(280, 17, 15),
(281, 18, 15),
(282, 19, 15),
(283, 20, 15),
(284, 21, 15),
(285, 22, 15),
(286, 23, 15),
(287, 24, 15),
(288, 25, 15),
(289, 26, 15),
(290, 27, 15),
(291, 1, 16),
(292, 2, 16),
(293, 3, 16),
(294, 4, 16),
(295, 5, 16),
(296, 6, 16),
(297, 7, 16),
(298, 8, 16),
(299, 9, 16),
(300, 10, 16),
(301, 11, 16),
(302, 12, 16),
(303, 13, 16),
(304, 14, 16),
(305, 15, 16),
(306, 16, 16),
(307, 17, 16),
(308, 18, 16),
(309, 19, 16),
(310, 20, 16),
(311, 21, 16),
(312, 22, 16),
(313, 23, 16),
(314, 24, 16),
(315, 25, 16),
(316, 26, 16),
(317, 27, 16),
(318, 1, 17),
(319, 2, 17),
(320, 3, 17),
(321, 4, 17),
(322, 5, 17),
(323, 6, 17),
(324, 7, 17),
(325, 8, 17),
(326, 9, 17),
(327, 10, 17),
(328, 11, 17),
(329, 12, 17),
(330, 13, 17),
(331, 14, 17),
(332, 15, 17),
(333, 16, 17),
(334, 17, 17),
(335, 18, 17),
(336, 19, 17),
(337, 20, 17),
(338, 21, 17),
(339, 22, 17),
(340, 23, 17),
(341, 24, 17),
(342, 25, 17),
(343, 26, 17),
(344, 27, 17),
(345, 1, 18),
(346, 2, 18),
(347, 3, 18),
(348, 4, 18),
(349, 5, 18),
(350, 6, 18),
(351, 7, 18),
(352, 8, 18),
(353, 9, 18),
(354, 10, 18),
(355, 11, 18),
(356, 12, 18),
(357, 13, 18),
(358, 14, 18),
(359, 15, 18),
(360, 16, 18),
(361, 17, 18),
(362, 18, 18),
(363, 19, 18),
(364, 20, 18),
(365, 21, 18),
(366, 22, 18),
(367, 23, 18),
(368, 24, 18),
(369, 25, 18),
(370, 26, 18),
(371, 27, 18),
(372, 1, 19),
(373, 2, 19),
(374, 3, 19),
(375, 4, 19),
(376, 5, 19),
(377, 6, 19),
(378, 7, 19),
(379, 8, 19),
(380, 9, 19),
(381, 10, 19),
(382, 11, 19),
(383, 12, 19),
(384, 13, 19),
(385, 14, 19),
(386, 15, 19),
(387, 16, 19),
(388, 17, 19),
(389, 18, 19),
(390, 19, 19),
(391, 20, 19),
(392, 21, 19),
(393, 22, 19),
(394, 23, 19),
(395, 24, 19),
(396, 25, 19),
(397, 26, 19),
(398, 27, 19),
(399, 1, 20),
(400, 2, 20),
(401, 3, 20),
(402, 4, 20),
(403, 5, 20),
(404, 6, 20),
(405, 7, 20),
(406, 8, 20),
(407, 9, 20),
(408, 10, 20),
(409, 11, 20),
(410, 12, 20),
(411, 13, 20),
(412, 14, 20),
(413, 15, 20),
(414, 16, 20),
(415, 17, 20),
(416, 18, 20),
(417, 19, 20),
(418, 20, 20),
(419, 21, 20),
(420, 22, 20),
(421, 23, 20),
(422, 24, 20),
(423, 25, 20),
(424, 26, 20),
(425, 27, 20),
(426, 1, 21),
(427, 2, 21),
(428, 3, 21),
(429, 4, 21),
(430, 5, 21),
(431, 6, 21),
(432, 7, 21),
(433, 8, 21),
(434, 9, 21),
(435, 10, 21),
(436, 11, 21),
(437, 12, 21),
(438, 13, 21),
(439, 14, 21),
(440, 15, 21),
(441, 16, 21),
(442, 17, 21),
(443, 18, 21),
(444, 19, 21),
(445, 20, 21),
(446, 21, 21),
(447, 22, 21),
(448, 23, 21),
(449, 24, 21),
(450, 25, 21),
(451, 26, 21),
(452, 27, 21);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,0) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_vendor_id_index` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digitalserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monetary` float(15,2) NOT NULL DEFAULT '0.00',
  `issued_by` int(10) unsigned NOT NULL,
  `issue_date` date NOT NULL,
  `scheduled_return_date` date NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `received_by` int(10) unsigned DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `properties_employee_id_foreign` (`employee_id`),
  KEY `properties_issued_by_foreign` (`issued_by`),
  KEY `properties_received_by_foreign` (`received_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `employee_id`, `name`, `description`, `serial`, `digitalserial`, `monetary`, `issued_by`, `issue_date`, `scheduled_return_date`, `state`, `received_by`, `return_date`, `created_at`, `updated_at`) VALUES
(1, 3, 'car', '', 'kbp87889p', '', 1000000.00, 1, '2016-07-28', '2016-07-28', 0, 0, NULL, '2016-07-28 07:20:41', '2016-07-28 07:20:41'),
(2, 6, 'company Car', '', 'KBT 500P', '', 1000000.00, 8, '2016-08-10', '2016-08-10', 0, 0, NULL, '2016-08-10 09:29:45', '2016-08-10 09:29:45'),
(3, 8, 'Lenovo laptops', '4GB RAM,\r\n500GBHDD\r\n2Hz Processor', 'HX74987485', '', 70000.00, 14, '2016-09-19', '2016-09-19', 0, 0, NULL, '2016-09-19 08:40:35', '2016-09-19 08:40:35'),
(4, 10, 'car', '', 'kbt 300p', '', 500000.00, 23, '2016-10-07', '2016-10-07', 0, 0, NULL, '2016-10-07 09:01:54', '2016-10-07 09:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `relief`
--

CREATE TABLE IF NOT EXISTS `relief` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relief_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `relief_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `relief`
--

INSERT INTO `relief` (`id`, `relief_name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Insurance Relief', 1, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(2, 'insurance', 8, '2016-08-10 11:59:14', '2016-08-10 11:59:14'),
(3, 'Insurance Relief', 11, '2016-09-19 09:07:33', '2016-09-19 09:07:33'),
(4, 'insurance', 12, '2016-10-26 10:05:28', '2016-10-26 10:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 1, '2016-07-27 06:03:40', '2016-07-27 06:03:40'),
(2, 'systemadmin', 2, '2016-07-27 06:31:37', '2016-07-27 06:31:37'),
(6, 'systemadmin2', 5, '2016-07-28 04:35:08', '2016-07-28 04:35:08'),
(7, 'systemadmin6', 6, '2016-08-01 06:05:12', '2016-08-01 06:05:12'),
(8, 'systemadmin7', 0, '2016-08-09 09:19:44', '2016-08-09 09:19:44'),
(9, 'systemadmin8', 11, '2016-09-19 04:41:29', '2016-09-19 04:41:29'),
(10, 'Accountant', 11, '2016-09-21 13:08:22', '2016-09-21 13:08:22'),
(11, 'Human Resource', 11, '2016-09-21 13:08:56', '2016-09-21 13:08:56'),
(12, 'systemadmin11', 12, '2016-10-06 06:14:57', '2016-10-06 06:14:57'),
(13, 'systemadmin12', 13, '2016-10-10 07:14:10', '2016-10-10 07:14:10'),
(14, 'systemadmin13', 14, '2016-10-10 07:59:29', '2016-10-10 07:59:29'),
(15, 'systemadmin14', 15, '2016-10-11 08:17:14', '2016-10-11 08:17:14'),
(16, 'systemadmin15', 16, '2016-10-12 03:46:36', '2016-10-12 03:46:36'),
(17, 'systemadmin16', 17, '2016-10-12 08:25:50', '2016-10-12 08:25:50'),
(18, 'systemadmin17', 18, '2016-10-19 07:41:16', '2016-10-19 07:41:16'),
(19, 'systemadmin18', 19, '2016-10-25 05:36:34', '2016-10-25 05:36:34'),
(20, 'systemadmin19', 23, '2016-10-25 11:03:32', '2016-10-25 11:03:32'),
(21, 'systemadmin20', 24, '2016-11-04 06:58:02', '2016-11-04 06:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `savingaccounts`
--

CREATE TABLE IF NOT EXISTS `savingaccounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `savingproduct_id` int(10) unsigned NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `savingaccounts_member_id_foreign` (`member_id`),
  KEY `x_savingaccounts_fk` (`savingproduct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `savingaccounts`
--

INSERT INTO `savingaccounts` (`id`, `member_id`, `savingproduct_id`, `account_number`, `organization_id`, `created_at`, `updated_at`) VALUES
(6, 6, 4, 'Sav000000KM.1', 12, '2016-10-06 08:43:15', '2016-10-06 08:43:15'),
(7, 9, 5, 'WJO000000KM.2', 12, '2016-10-26 06:40:33', '2016-10-26 06:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `savingpostings`
--

CREATE TABLE IF NOT EXISTS `savingpostings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `savingproduct_id` int(10) unsigned NOT NULL,
  `transaction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `debit_account` int(11) NOT NULL,
  `credit_account` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `savingpostings_savingproduct_id_foreign` (`savingproduct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `savingpostings`
--

INSERT INTO `savingpostings` (`id`, `savingproduct_id`, `transaction`, `debit_account`, `credit_account`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'deposit', 10, 11, 1, '2016-07-27 09:59:57', '2016-07-27 09:59:57'),
(2, 1, 'withdrawal', 11, 10, 1, '2016-07-27 09:59:57', '2016-07-27 09:59:57'),
(3, 1, 'charge', 10, 12, 1, '2016-07-27 09:59:57', '2016-07-27 09:59:57'),
(10, 4, 'deposit', 38, 45, 12, '2016-10-06 08:39:20', '2016-10-06 08:39:20'),
(11, 4, 'withdrawal', 45, 38, 12, '2016-10-06 08:39:20', '2016-10-06 08:39:20'),
(12, 4, 'charge', 38, 42, 12, '2016-10-06 08:39:20', '2016-10-06 08:39:20'),
(13, 5, 'deposit', 38, 45, 12, '2016-10-26 06:33:01', '2016-10-26 06:33:01'),
(14, 5, 'withdrawal', 45, 38, 12, '2016-10-26 06:33:02', '2016-10-26 06:33:02'),
(15, 5, 'charge', 38, 42, 12, '2016-10-26 06:33:02', '2016-10-26 06:33:02'),
(16, 6, 'deposit', 46, 55, 17, '2016-10-28 04:18:01', '2016-10-28 04:18:01'),
(17, 6, 'withdrawal', 55, 46, 17, '2016-10-28 04:18:01', '2016-10-28 04:18:01'),
(18, 6, 'charge', 46, 51, 17, '2016-10-28 04:18:01', '2016-10-28 04:18:01'),
(19, 7, 'deposit', 46, 55, 17, '2016-10-31 09:23:10', '2016-10-31 09:23:10'),
(20, 7, 'withdrawal', 55, 46, 17, '2016-10-31 09:23:10', '2016-10-31 09:23:10'),
(21, 7, 'charge', 46, 51, 17, '2016-10-31 09:23:10', '2016-10-31 09:23:10'),
(22, 7, 'deposit', 38, 55, 17, '2016-10-31 09:24:11', '2016-10-31 09:24:11'),
(23, 7, 'withdrawal', 55, 38, 17, '2016-10-31 09:24:11', '2016-10-31 09:24:11'),
(24, 7, 'charge', 38, 42, 17, '2016-10-31 09:24:11', '2016-10-31 09:24:11'),
(25, 8, 'deposit', 46, 55, 17, '2016-10-31 09:29:45', '2016-10-31 09:29:45'),
(26, 8, 'withdrawal', 55, 46, 17, '2016-10-31 09:29:45', '2016-10-31 09:29:45'),
(27, 8, 'charge', 46, 51, 17, '2016-10-31 09:29:45', '2016-10-31 09:29:45'),
(28, 8, 'deposit', 56, 55, 17, '2016-10-31 09:30:24', '2016-10-31 09:30:24'),
(29, 8, 'withdrawal', 55, 56, 17, '2016-10-31 09:30:24', '2016-10-31 09:30:24'),
(30, 8, 'charge', 56, 49, 17, '2016-10-31 09:30:24', '2016-10-31 09:30:24'),
(34, 4, 'deposit', 38, 29, 12, '2016-10-31 09:40:54', '2016-10-31 09:40:54'),
(35, 4, 'withdrawal', 29, 38, 12, '2016-10-31 09:40:54', '2016-10-31 09:40:54'),
(36, 4, 'charge', 38, 42, 12, '2016-10-31 09:40:54', '2016-10-31 09:40:54'),
(52, 12, 'deposit', 46, 53, 17, '2016-10-31 10:01:25', '2016-10-31 10:01:25'),
(53, 12, 'withdrawal', 53, 46, 17, '2016-10-31 10:01:25', '2016-10-31 10:01:25'),
(54, 12, 'charge', 46, 49, 17, '2016-10-31 10:01:25', '2016-10-31 10:01:25'),
(55, 12, 'deposit', 46, 55, 17, '2016-10-31 10:07:35', '2016-10-31 10:07:35'),
(56, 12, 'withdrawal', 55, 46, 17, '2016-10-31 10:07:35', '2016-10-31 10:07:35'),
(57, 12, 'charge', 46, 51, 17, '2016-10-31 10:07:35', '2016-10-31 10:07:35'),
(58, 12, 'deposit', 46, 55, 17, '2016-10-31 10:12:52', '2016-10-31 10:12:52'),
(59, 12, 'withdrawal', 55, 46, 17, '2016-10-31 10:12:52', '2016-10-31 10:12:52'),
(60, 12, 'charge', 46, 51, 17, '2016-10-31 10:12:52', '2016-10-31 10:12:52'),
(61, 12, 'deposit', 46, 55, 17, '2016-10-31 10:17:31', '2016-10-31 10:17:31'),
(62, 12, 'withdrawal', 55, 46, 17, '2016-10-31 10:17:31', '2016-10-31 10:17:31'),
(63, 12, 'charge', 46, 51, 17, '2016-10-31 10:17:31', '2016-10-31 10:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `savingproducts`
--

CREATE TABLE IF NOT EXISTS `savingproducts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opening_balance` float(10,0) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `savingproducts`
--

INSERT INTO `savingproducts` (`id`, `name`, `shortname`, `currency`, `opening_balance`, `type`, `organization_id`, `created_at`, `updated_at`) VALUES
(12, 'Yellow Return', 'YR', 'KES', 25000, 'FOSA', 17, '2016-10-31 10:10:25', '2016-10-31 10:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `savingtransactions`
--

CREATE TABLE IF NOT EXISTS `savingtransactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `savingaccount_id` int(10) unsigned NOT NULL,
  `amount` float(12,2) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transacted_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `savingtransactions_savingaccount_id_foreign` (`savingaccount_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `savingtransactions`
--

INSERT INTO `savingtransactions` (`id`, `date`, `savingaccount_id`, `amount`, `type`, `description`, `transacted_by`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, '2016-09-20', 2, 5000.00, 'credit', 'bla', 'ken', 11, '2016-09-20 11:28:46', '2016-09-20 11:28:46'),
(2, '2016-09-20', 2, 1000.00, 'debit', 'bla', 'ken', 11, '2016-09-20 11:29:59', '2016-09-20 11:29:59'),
(3, '2016-09-01', 2, 2000.00, 'credit', '', 'ken', 11, '2016-09-20 12:08:52', '2016-09-20 12:08:52'),
(4, '2016-10-06', 6, 50000.00, 'credit', '', 'kunu', 12, '2016-10-06 08:45:29', '2016-10-06 08:45:29'),
(5, '2016-10-26', 7, 5000.00, 'credit', '', 'josephine', 12, '2016-10-26 06:46:12', '2016-10-26 06:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `shareaccounts`
--

CREATE TABLE IF NOT EXISTS `shareaccounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `shareaccounts_member_id_foreign` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `shareaccounts`
--

INSERT INTO `shareaccounts` (`id`, `member_id`, `account_number`, `opening_date`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'SH-L001', '2016-07-27', 1, '2016-07-27 09:38:24', '2016-07-27 09:38:24'),
(2, 2, 'SH-L002', '2016-07-27', 1, '2016-07-27 09:39:29', '2016-07-27 09:39:29'),
(3, 3, 'SH-001', '2016-08-11', 8, '2016-08-11 09:20:27', '2016-08-11 09:20:27'),
(4, 4, 'SH-BM.1', '2016-09-20', 11, '2016-09-20 09:07:24', '2016-09-20 09:07:24'),
(5, 5, 'SH-BM.2', '2016-09-20', 11, '2016-09-20 09:08:51', '2016-09-20 09:08:51'),
(6, 6, 'SH-KM.1', '2016-10-06', 12, '2016-10-06 07:18:31', '2016-10-06 07:18:31'),
(7, 7, 'SH-LTLM.1', '2016-10-25', 17, '2016-10-25 05:58:07', '2016-10-25 05:58:07'),
(8, 8, 'SH-MIM.1', '2016-10-25', 23, '2016-10-25 11:48:08', '2016-10-25 11:48:08'),
(9, 9, 'SH-KM.2', '2016-10-26', 12, '2016-10-26 06:17:14', '2016-10-26 06:17:14'),
(10, 10, 'SH-LTLM.2', '2016-10-26', 17, '2016-10-26 09:23:56', '2016-10-26 09:23:56'),
(11, 11, 'SH-LTLM.3', '2016-10-26', 17, '2016-10-26 09:27:00', '2016-10-26 09:27:00'),
(12, 12, 'SH-MIM.2', '2016-10-28', 23, '2016-10-28 03:22:28', '2016-10-28 03:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE IF NOT EXISTS `shares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` float(10,0) NOT NULL DEFAULT '0',
  `transfer_charge` float(10,0) NOT NULL DEFAULT '0',
  `charged_on` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'donor',
  `organization_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `value`, `transfer_charge`, `charged_on`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 20, 0, 'donor', NULL, '2016-07-27 06:03:38', '2016-10-26 06:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `sharetransactions`
--

CREATE TABLE IF NOT EXISTS `sharetransactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `shareaccount_id` int(10) unsigned NOT NULL,
  `trans_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` float(10,0) NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `sharetransactions_shareaccount_id_foreign` (`shareaccount_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sharetransactions`
--

INSERT INTO `sharetransactions` (`id`, `date`, `shareaccount_id`, `trans_no`, `type`, `description`, `amount`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, '0000-00-00', 1, NULL, 'credit', '', 20000, 1, '2016-07-27 11:07:36', '2016-07-27 11:07:36'),
(2, '2016-09-01', 4, NULL, 'credit', 'bla', 2500, 11, '2016-09-20 10:56:50', '2016-09-20 10:56:50'),
(3, '2016-10-06', 6, NULL, 'credit', '', 500, 12, '2016-10-06 08:55:46', '2016-10-06 08:55:46'),
(4, '2016-10-26', 9, NULL, 'credit', '', 10000, 12, '2016-10-26 06:53:44', '2016-10-26 06:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `social_security`
--

CREATE TABLE IF NOT EXISTS `social_security` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tier` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `income_from` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `income_to` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `ss_amount_employee` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `ss_amount_employer` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `social_security_organization_id_foreign` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `social_security`
--

INSERT INTO `social_security` (`id`, `tier`, `income_from`, `income_to`, `ss_amount_employee`, `ss_amount_employer`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'Tier I', '0.00', '0.00', '0.00', '0.00', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37'),
(2, 'Tier I', '1.00', '99000000.00', '200.00', '200.00', NULL, '2016-07-27 06:03:37', '2016-07-27 06:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `quantity_in` int(11) DEFAULT NULL,
  `quantity_out` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `stocks_item_id_foreign` (`item_id`),
  KEY `stocks_location_id_foreign` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `item_id`, `location_id`, `quantity_in`, `quantity_out`, `date`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, NULL, '0000-00-00', 1, '2016-07-27 08:00:39', '2016-07-27 08:00:39'),
(2, 2, 1, 20, NULL, '0000-00-00', 1, '2016-07-27 08:00:58', '2016-07-27 08:00:58'),
(3, 1, 1, NULL, 5, '2016-07-27', 1, '2016-07-27 08:03:03', '2016-07-27 08:03:03'),
(4, 2, 1, NULL, 5, '2016-07-27', 1, '2016-07-27 08:03:03', '2016-07-27 08:03:03'),
(5, 4, 1, NULL, 1, '2016-08-09', 1, '2016-08-09 09:11:20', '2016-08-09 09:11:20'),
(6, 6, 2, NULL, 2, '2016-08-09', 8, '2016-08-09 10:07:34', '2016-08-09 10:07:34'),
(7, 6, 2, NULL, 1, '2016-08-10', 8, '2016-08-10 08:39:11', '2016-08-10 08:39:11'),
(8, 7, 2, NULL, 2, '2016-08-10', 8, '2016-08-10 08:45:37', '2016-08-10 08:45:37'),
(9, 8, 2, NULL, 1, '2016-08-11', 8, '2016-08-11 06:27:47', '2016-08-11 06:27:47'),
(10, 9, 2, NULL, 1, '2016-08-11', 8, '2016-08-11 06:27:47', '2016-08-11 06:27:47'),
(11, 6, 2, 5, NULL, '2016-08-11', 8, '2016-08-11 06:50:07', '2016-08-11 06:50:07'),
(12, 7, 2, 6, NULL, '2016-08-11', 8, '2016-08-11 06:50:29', '2016-08-11 06:50:29'),
(13, 8, 2, 5, NULL, '2016-08-11', 8, '2016-08-11 06:50:52', '2016-08-11 06:50:52'),
(14, 9, 2, 1, NULL, '2016-08-11', 8, '2016-08-11 06:51:41', '2016-08-11 06:51:41'),
(15, 9, 2, 4, NULL, '2016-08-11', 8, '2016-08-11 06:52:07', '2016-08-11 06:52:07'),
(16, 11, 2, NULL, 1, '2016-08-15', 8, '2016-08-15 06:45:44', '2016-08-15 06:45:44'),
(17, 10, 2, NULL, 2, '2016-08-15', 8, '2016-08-15 06:45:44', '2016-08-15 06:45:44'),
(18, 10, 2, 5, NULL, '2016-08-15', 8, '2016-08-15 06:48:11', '2016-08-15 06:48:11'),
(19, 12, 3, 100, NULL, '2016-09-20', 11, '2016-09-20 06:14:12', '2016-09-20 06:14:12'),
(20, 12, 3, NULL, 10, '2016-09-20', 11, '2016-09-20 06:24:06', '2016-09-20 06:24:06'),
(21, 12, 3, NULL, 5, '2016-09-21', 11, '2016-09-21 08:56:04', '2016-09-21 08:56:04'),
(22, 13, 3, NULL, 5, '2016-09-21', 11, '2016-09-21 08:56:04', '2016-09-21 08:56:04'),
(23, 12, 3, NULL, 5, '2016-09-21', 11, '2016-09-21 09:15:02', '2016-09-21 09:15:02'),
(24, 13, 3, NULL, 5, '2016-09-21', 11, '2016-09-21 09:15:03', '2016-09-21 09:15:03'),
(25, 12, 3, NULL, 5, '2016-09-23', 11, '2016-09-23 03:57:40', '2016-09-23 03:57:40'),
(26, 15, 4, 20, NULL, '2016-10-06', 12, '2016-10-06 06:46:31', '2016-10-06 06:46:31'),
(27, 15, 4, NULL, 4, '2016-10-06', 12, '2016-10-06 06:48:17', '2016-10-06 06:48:17'),
(28, 19, 6, 15, NULL, '2016-10-26', 16, '2016-10-26 08:31:15', '2016-10-26 08:31:15'),
(29, 17, 5, NULL, 3, '2016-10-26', 17, '2016-10-26 08:36:24', '2016-10-26 08:36:24'),
(30, 18, 5, NULL, 2, '2016-10-26', 17, '2016-10-26 08:36:25', '2016-10-26 08:36:25'),
(31, 17, 5, 50, NULL, '2016-10-26', 17, '2016-10-26 09:05:41', '2016-10-26 09:05:41'),
(32, 18, 5, 30, NULL, '2016-10-26', 17, '2016-10-26 09:05:59', '2016-10-26 09:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE IF NOT EXISTS `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` double(15,2) NOT NULL DEFAULT '0.00',
  `organization_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 16.00, NULL, '2016-07-27 07:58:03', '2016-07-27 07:58:03'),
(2, 'VAT', 16.00, 1, '2016-08-09 09:09:04', '2016-08-09 09:09:04'),
(3, 'VAT', 16.00, 8, '2016-08-09 10:06:48', '2016-08-09 10:06:48'),
(4, 'VAT', 16.00, 11, '2016-09-20 06:14:37', '2016-09-20 06:14:37'),
(5, 'Shipping ', 5.00, 11, '2016-09-20 06:14:53', '2016-09-20 06:14:53'),
(6, 'VAT', 16.00, 12, '2016-10-06 06:30:05', '2016-10-06 06:30:05'),
(7, 'vat', 16.00, 13, '2016-10-10 07:17:02', '2016-10-10 07:17:02'),
(8, 'VAT', 16.00, 17, '2016-10-26 08:39:57', '2016-10-26 08:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `tax_orders`
--

CREATE TABLE IF NOT EXISTS `tax_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(15,2) DEFAULT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tax_orders`
--

INSERT INTO `tax_orders` (`id`, `tax_id`, `order_number`, `amount`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2016/07/27/0001', 28560.00, 1, '2016-07-27 08:03:03', '2016-07-27 08:03:03'),
(2, 1, '2016/07/27/0003', 56000.00, 1, '2016-07-27 08:30:11', '2016-07-27 08:30:11'),
(3, 2, '2016/08/09/0004', 5600.00, 1, '2016-08-09 09:11:20', '2016-08-09 09:11:20'),
(4, 2, '2016/08/09/0005', 11200.00, 1, '2016-08-09 09:13:10', '2016-08-09 09:13:10'),
(5, 2, '2016/08/09/0006', 28000.00, 1, '2016-08-09 09:14:00', '2016-08-09 09:14:00'),
(6, 3, '2016/08/09/0007', 11200.00, 1, '2016-08-09 10:07:34', '2016-08-09 10:07:34'),
(7, 3, '2016/08/09/0009', 5600.00, 1, '2016-08-09 10:11:55', '2016-08-09 10:11:55'),
(8, 3, '2016/08/11/0014', 41440.00, 1, '2016-08-11 06:27:47', '2016-08-11 06:27:47'),
(9, 3, '2016/08/11/0016', 4320.00, 1, '2016-08-11 06:35:25', '2016-08-11 06:35:25'),
(10, 3, '2016/08/15/0018', 18240.00, 1, '2016-08-15 06:45:45', '2016-08-15 06:45:45'),
(11, 3, '2016/08/15/0019', 21600.00, 1, '2016-08-15 06:49:59', '2016-08-15 06:49:59'),
(12, 4, '2016/09/20/0026', 111440.00, 1, '2016-09-20 06:24:06', '2016-09-20 06:24:06'),
(13, 4, '2016/09/20/0029', 111440.00, 1, '2016-09-20 06:36:15', '2016-09-20 06:36:15'),
(14, 4, '2016/09/21/0031', 56520.00, 1, '2016-09-21 08:56:04', '2016-09-21 08:56:04'),
(15, 5, '2016/09/21/0031', 17662.50, 1, '2016-09-21 08:56:04', '2016-09-21 08:56:04'),
(16, 4, '2016/09/21/0035', 56520.00, 1, '2016-09-21 09:15:03', '2016-09-21 09:15:03'),
(17, 5, '2016/09/21/0035', 17662.50, 1, '2016-09-21 09:15:03', '2016-09-21 09:15:03'),
(18, 4, '2016/09/22/0037', 32816.00, 1, '2016-09-22 06:38:51', '2016-09-22 06:38:51'),
(19, 5, '2016/09/22/0037', 10255.00, 1, '2016-09-22 06:38:51', '2016-09-22 06:38:51'),
(20, 4, '2016/09/23/0040', 55520.00, 1, '2016-09-23 03:57:40', '2016-09-23 03:57:40'),
(21, 6, '2016/10/06/0043', 288.00, 1, '2016-10-06 06:48:17', '2016-10-06 06:48:17'),
(22, 6, '2016/10/06/0044', 720.00, 1, '2016-10-06 06:50:23', '2016-10-06 06:50:23'),
(23, 8, '2016/10/26/0047', 81600.00, 1, '2016-10-26 08:40:49', '2016-10-26 08:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transact`
--

CREATE TABLE IF NOT EXISTS `transact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `basic_pay` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `earning_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `taxable_income` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `paye` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `nssf_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `vol_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `nhif_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `other_deductions` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `total_deductions` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `net` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `financial_month_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transact_employee_id_foreign` (`employee_id`),
  KEY `transact_account_id_foreign` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `transact`
--

INSERT INTO `transact` (`id`, `employee_id`, `account_id`, `basic_pay`, `earning_amount`, `taxable_income`, `paye`, `nssf_amount`, `vol_amount`, `nhif_amount`, `other_deductions`, `total_deductions`, `net`, `financial_month_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'B.1', 18, '50388.71', '20209.94', '70598.65', '15051.7', '200', '0.00', '1400', '3000', '19651.7', '50946.95', '9-2016', 11, '2016-09-19 06:19:01', '2016-09-19 06:19:01'),
(2, 'B.2', 18, '50388.71', '5000', '55388.71', '7988.71', '200', '0.00', '1200', '0', '9388.71', '48000', '9-2016', 11, '2016-09-19 06:19:01', '2016-09-19 06:19:01'),
(3, '003', 1, '50000.00', '0', '50000', '8872.1', '200', '0.00', '1200', '0', '10272.1', '39727.9', '12-2016', 1, '2016-10-31 08:48:26', '2016-10-31 08:48:26'),
(4, '4', 1, '70000.00', '0', '70000', '14872.1', '200', '0.00', '1400', '0', '16472.1', '53527.9', '12-2016', 1, '2016-10-31 08:48:26', '2016-10-31 08:48:26'),
(5, 'K.1', 37, '40000.00', '0', '40000', '4372.1', '200', '0.00', '1000', '0', '5572.1', '34427.9', '10-2016', 12, '2016-10-31 08:50:52', '2016-10-31 08:50:52'),
(6, 'K.2', 37, '100000.00', '0', '100000', '23872.1', '200', '0.00', '1700', '0', '25772.1', '74227.9', '10-2016', 12, '2016-10-31 08:50:52', '2016-10-31 08:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_id` varchar(255) NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `transaction_amount` decimal(15,2) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `pay_id`, `transaction_number`, `transaction_amount`, `transaction_date`, `transaction_status`, `created_at`, `updated_at`) VALUES
(1, '3', 'KHD123RD6', '5000.00', '2016-08-30', 0, '2016-08-30 04:08:42', '2016-08-30 04:08:42'),
(2, '4', 'KTDFIUR456UT', '460000.00', '2016-08-30', 0, '2016-08-30 05:08:24', '2016-08-30 05:08:24'),
(3, '5', 'KHD4567DX', '35000.00', '2016-08-30', 0, '2016-08-30 06:08:02', '2016-08-30 06:08:02'),
(4, '6', 'Brecht ', '35000.00', '2016-08-30', 0, '2016-08-30 16:08:35', '2016-08-30 16:08:35'),
(5, '7', 'hdhdhevehd', '460000.00', '2016-09-01', 0, '2016-09-01 13:09:10', '2016-09-01 13:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `transact_advances`
--

CREATE TABLE IF NOT EXISTS `transact_advances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `financial_month_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transact_advances_employee_id_foreign` (`employee_id`),
  KEY `transact_account_id_foreign` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transact_advances`
--

INSERT INTO `transact_advances` (`id`, `employee_id`, `account_id`, `amount`, `financial_month_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'B.1', 17, '3000.00', '9-2016', 11, '2016-09-19 06:11:05', '2016-09-19 06:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `transact_allowances`
--

CREATE TABLE IF NOT EXISTS `transact_allowances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `employee_allowance_id` int(10) unsigned NOT NULL,
  `allowance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `allowance_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowance_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `financial_month_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transact_allowances_employee_id_foreign` (`employee_id`),
  KEY `transact_allowances_allowance_id_foreign` (`allowance_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transact_allowances`
--

INSERT INTO `transact_allowances` (`id`, `employee_id`, `employee_allowance_id`, `allowance_id`, `allowance_name`, `allowance_amount`, `financial_month_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 9, 4, 1, 'House Allowance', '5000.00', '9-2016', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transact_deductions`
--

CREATE TABLE IF NOT EXISTS `transact_deductions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `employee_deduction_id` int(10) unsigned NOT NULL,
  `deduction_id` int(10) unsigned NOT NULL,
  `deduction_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deduction_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `financial_month_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transact_deductions_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transact_deductions`
--

INSERT INTO `transact_deductions` (`id`, `employee_id`, `employee_deduction_id`, `deduction_id`, `deduction_name`, `deduction_amount`, `financial_month_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 8, 2, 1, 'Salary Advance', '3000.00', '9-2016', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transact_earnings`
--

CREATE TABLE IF NOT EXISTS `transact_earnings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `earning_id` int(10) unsigned NOT NULL,
  `earningsetting_id` int(10) unsigned NOT NULL,
  `earning_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `earning_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `financial_month_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transact_earnings_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transact_earnings`
--

INSERT INTO `transact_earnings` (`id`, `employee_id`, `earning_id`, `earningsetting_id`, `earning_name`, `earning_amount`, `financial_month_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 8, 6, 0, 'Bonus', '20000.00', '9-2016', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transact_nontaxables`
--

CREATE TABLE IF NOT EXISTS `transact_nontaxables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `employee_nontaxable_id` int(10) unsigned NOT NULL,
  `nontaxable_id` int(10) unsigned NOT NULL,
  `nontaxable_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nontaxable_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `financial_month_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transact_nontaxables_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transact_nontaxables`
--

INSERT INTO `transact_nontaxables` (`id`, `employee_id`, `employee_nontaxable_id`, `nontaxable_id`, `nontaxable_name`, `nontaxable_amount`, `financial_month_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 9, 2, 1, 'Refunds', '2000.00', '9-2016', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transact_overtimes`
--

CREATE TABLE IF NOT EXISTS `transact_overtimes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `overtime_id` int(10) unsigned NOT NULL,
  `overtime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `overtime_period` float(15,2) NOT NULL,
  `overtime_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `financial_month_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transact_overtimes_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transact_overtimes`
--

INSERT INTO `transact_overtimes` (`id`, `employee_id`, `overtime_id`, `overtime_type`, `overtime_period`, `overtime_amount`, `financial_month_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 8, 3, 'Hourly', 3.00, '69.98', '9-2016', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transact_reliefs`
--

CREATE TABLE IF NOT EXISTS `transact_reliefs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `employee_relief_id` int(10) unsigned NOT NULL DEFAULT '0',
  `relief_id` int(10) unsigned NOT NULL DEFAULT '0',
  `relief_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relief_amount` double(15,2) NOT NULL DEFAULT '0.00',
  `financial_month_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `transact_reliefs_employee_id_foreign` (`employee_id`),
  KEY `transact_reliefs_employee_relief_id_foreign` (`employee_relief_id`),
  KEY `transact_reliefs_relief_id_foreign` (`relief_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `transact_reliefs`
--

INSERT INTO `transact_reliefs` (`id`, `employee_id`, `employee_relief_id`, `relief_id`, `relief_name`, `relief_amount`, `financial_month_year`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 9, 2, 3, 'Insurance Relief', 2500.00, '9-2016', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 10, 3, 4, 'insurance', 1500.00, '10-2016', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'admin',
  `is_active` tinyint(1) DEFAULT NULL,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `branch_id` (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `confirmation_code`, `remember_token`, `confirmed`, `token`, `user_type`, `is_active`, `branch_id`, `organization_id`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@lixnet.net', '$2y$10$j6OBORp9m4ugEejFgsUhNe68Bvqe4DG9twFavtX9wtLPQnCvzmJhW', '73a41281aac3c580fac2f3916fb70909', 'q0VJZJU6KeqeAJmJrNgSgmAdvSag7Ni82Sp7m85qrULXWfniPxRLW6Tk3p3T', 1, NULL, 'admin', NULL, NULL, 1, '2016-07-27 06:03:42', '2016-11-02 06:20:48'),
(6, 'kenkode', 'wangoken2@gmail.com', '$2y$10$ZjZge6aqSm5VmoN7C/d4veJP8uNkKBiBLq0HehaNDyDsQJlYZFghm', 'd21c41cd41bf1ae4cbf8d2dcbb2843f2', NULL, 1, NULL, 'admin', NULL, NULL, 5, '2016-07-28 04:35:08', '2016-07-28 04:35:08'),
(7, 'lagat', 'crispus15@gmail.com', '$2y$10$1xXPe3LIfLt0jOuwDPiTaeXlQbfhHDDcztv5WBqn8bwE8ALwz/Bba', '69afd017121218d21d17fa9f7d70b0d6', NULL, 1, NULL, 'admin', NULL, NULL, 6, '2016-08-01 06:05:12', '2016-08-01 06:05:12'),
(8, 'josephine', 'josephine.ayienda@lixnet.net', '$2y$10$02MSjDhJCA.qVPtr2drcFe8sTzkpQGsimXnNku4BBbttIPTvALocq', '8300a1e3414ca5bc48843b5e4fbfc52d', 'mKKOrj15VFpodL5osgaYoG6Cdsow1qtGRmi5zEOuyyEZEjRAFSFGlZAh1z6k', 1, NULL, 'admin', NULL, NULL, 8, '2016-08-09 09:19:43', '2016-08-18 10:03:21'),
(9, '001', 'jos@gmail.com', '$2y$10$mvA2HdsDVK2pwNBWHPiSlOLsVAcq.f.BXHj7Z3EcVmW9qZhQg42Wa', '4cad4f60b7adadd8e1884a0ec73dacd0', NULL, 1, NULL, 'member', NULL, NULL, 8, '2016-08-11 09:08:39', '2016-08-11 09:08:39'),
(11, 'nehigna', 'nehigna@gmail.com', '$2y$10$jALcE4ysEVNA4lTcnRJVIuLN0oLb8847z4J/3FRSfW3mIN9Ao7Ws.', '0cd594da0fee059e01c74fe8e48bdb18', 'nZdrOw5vtsYdh9lIAT7aYlgaYxAPXQAendXdN0RrtzarM8rO1yTXPWWPs1WP', 1, NULL, 'Customer', NULL, NULL, 0, '2016-08-30 05:16:32', '2016-09-01 08:13:14'),
(13, 'chrispuscheruiyot', 'chrispuscheruiyot@lixnet.net', '$2y$10$15PxL6CbLt.kFZ3h2hkRpOLFDqU2q2hq0yfyw/WC0PqNQ/FjQANs.', '1a56301ea23612579aeab0176d25121a', NULL, 1, NULL, 'Customer', NULL, NULL, 0, '2016-09-02 02:57:54', '2016-09-02 02:57:54'),
(14, 'jamharic', 'skewws@gmail.com', '$2y$10$8qK/C0G/TdnEe2gU0qkmEeS1tQe2rnXLMTMAyHLdQkv6XdQ42AzUa', '533fdf26bc34d0a15c209d9185735d8f', 'bk0HcQXcrxyX368f21nvUEEvcuQvg59zLywYFAfJwNq5ExaHOymvssxUFrdc', 1, NULL, 'admin', NULL, NULL, 11, '2016-09-19 04:41:29', '2016-10-17 11:05:02'),
(17, 'B.1', 'ken.wango@lixnet.net', '$2y$10$b/DMxoYzom1K8dHRYF0l4emPQHMMaaR1joHI2oV8bgCJ2E9uqKVWG', '0810b0889cd50391942d26e594b72bfc', NULL, 1, NULL, 'employee', NULL, NULL, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BM.1', 'wangoken2@gmail.com', '$2y$10$/fkMf0BZ4qo.504LdlJ1je32wsUytySo7j0HLXp6WmxAFOdbU3Rv6', '68c6d6bd01b15d6e034ba2e9e18256c2', NULL, 1, NULL, 'member', NULL, NULL, 11, '2016-09-21 03:09:34', '2016-09-21 03:09:34'),
(19, 'BM.2', 'ken.wango@lixnet.net', '$2y$10$Toe0q6hIBq8CYmSbTyb8B.VzVDOCX87WA6Qt7dzs8TtlRSeDtW9c.', '768ad93edf4cd14ae41de54c26290786', NULL, 1, NULL, 'member', NULL, NULL, 11, '2016-09-21 03:09:21', '2016-09-21 03:09:21'),
(22, 'skeww', 'wangoken2@gmail.com', '$2y$10$2acCHkHuOi4g9ITzcZt4Ve50MP/sWp.J1i.Vg7ZQPdAsa.M3tgAWe', '89259a3b7ca3be958b412dad1dc27812', NULL, 1, NULL, 'admin', NULL, NULL, 11, '2016-09-22 05:56:56', '2016-09-22 05:56:56'),
(23, 'ken', 'ken@gmail.com', '$2y$10$SR8TN9GfNQhK1ieIqwNUYeC5oZRTvZLdvRjkly4dDFO.zD6DpD2xW', '954190bf292c6eba4de1ca73e3adcb61', 'KW4MazZl96yTJehrfkGCpnJAh4378sU21qSqiXklM7hnA6v9FbztgFcTZNBF', 1, NULL, 'admin', NULL, NULL, 12, '2016-10-06 06:14:56', '2016-11-01 10:18:45'),
(24, 'evans', 'otangaevans@yahoo.co.uk', '$2y$10$Nxj9G9UN9R1/O8Houe27S.DdCLSgcdBT8tpk4bqc84/RwSVNlfzN2', '29db4231c4d2bf5ebabde9e069ef9715', NULL, 1, NULL, 'admin', NULL, NULL, 13, '2016-10-10 07:14:09', '2016-10-10 07:14:09'),
(25, 'chumo', 'jacqchumo@gmail.com', '$2y$10$xgyuZcP3.YRxfKPFFkNrlumu0s1//GmRRiPsSVFMDCsQ7bdGWhmkm', '0d0cce63df9f424cf4356cbdc7d155ca', '5BOF3ZFz34HyhhkeKJPsqzkntdlc37wpmfyAMoX9NZnwn90aw92wNjtQN16M', 1, NULL, 'admin', NULL, NULL, 14, '2016-10-10 07:59:29', '2016-10-25 09:17:24'),
(26, 'Kov', 'victor.kotonya@LT.co.ke', '$2y$10$dvPoGwVDPug1sPwCaMlnH.Ta6KDv6XlPUEETc3HBfJDfhQzDkIl/.', 'b80f2f831368c1df32118aeaffbb00cc', NULL, 1, NULL, 'admin', NULL, NULL, 15, '2016-10-11 08:17:14', '2016-10-11 08:17:14'),
(27, 'steviemwa', 'steviemwa@gmail.com', '$2y$10$sQ1RgnnZhXWfUFJcksya7.6Mwc9hmDpj/FmogpY06dZjFc8TsL1oe', '73e837b45e647e702ab63235101c3fd7', 'o73iaSFEIaoBWz4GuGGqpprPleg0jNWgwJqgmguwQaay11dSHnx0mzxGietp', 1, 'bed955a60acd039261c5e61ab715bec9', 'admin', NULL, NULL, 16, '2016-10-12 03:46:36', '2016-11-04 09:11:45'),
(28, 'cris', 'chrispus.cheruiyot@lixnet.net', '$2y$10$wyYiec/67zhaNc5mcok3euanFdIQ67lS7Ho64JeVfHpudbiK5mhuu', '916ee11e350f32fdc71490b5fba8bbec', 'rR2U0nuFnJONfPuqmZglUMxGkLLcwZNp7pmjfRoRBoMtLFEzSAwAZLsSCAy8', 1, NULL, 'admin', NULL, NULL, 17, '2016-10-12 08:25:50', '2016-10-28 09:31:59'),
(30, 'K.1', 'josephine.ayienda@lixnet.net', '$2y$10$B8KWbuIT4rCpbYrGvmkuhOTxpL7lzWAc/4qbrwjow/oW9DMbGTGTW', '87ddc39ea1dddedb27d7a68e52e58889', NULL, 1, NULL, 'employee', NULL, NULL, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Lixnet', 'info@lixnet.net', '$2y$10$kjwkcVloex10PJhX.4HU9OWeN6DXcbJdo4jbf/UU2ZCoYhMjfHfTa', '0a2ceef46ec2475a153caea81c066a7f', 'Rx0FAMVeDVnoThcj7o02hMWjVPwzyfLezoz6Z7W0h73ybtKxpoI3r08OerOG', 1, NULL, 'admin', NULL, NULL, 18, '2016-10-19 07:41:15', '2016-10-19 07:54:22'),
(33, 'test', 'rwqr@yordanmail.cf', '$2y$10$crT8EVvjYDtcyYwxHI0Ufet69YC3o/wNLGweb5cOvDTKvOc1MYry6', '5f90f6323a3569bcf2d3def9a54b3186', NULL, 1, NULL, 'admin', NULL, NULL, 19, '2016-10-25 05:36:33', '2016-10-25 05:36:33'),
(34, 'mazawalifu', 'kelvin.makamu@lixnet.net', '$2y$10$zTwQf/PzAYlvpLnqh1xFTOzTw8weorrzmkUYN6Qwr23Gg9WqjXzX6', 'b1896b196130b357bce560ce13da01d1', 'm0BU1mQOPXC0cnNEM2Iumq86zLquLjiQyelzD910flIotnfJX7ZoGNp7lpk5', 1, NULL, 'admin', NULL, NULL, 23, '2016-10-25 11:03:32', '2016-10-28 04:21:49'),
(35, 'HEBRON', 'jane.nmuhia@gmail.com', '$2y$10$ZuPAM04rknpi6Xz97z2i2.hGclXRPtZxH6Rs/CQmrkhuM1mfO6UDi', 'bdbca9e9c601f6b776d314526d3e2122', 'sJePEIQ3TMHjHjPCKSzlWwTqyL6HKCe5x2xv5vbzHsDaDLgghtWGOcU8rlif', 1, '8ac88ca1d4481c1640751afb923ed7e3', 'admin', NULL, NULL, 24, '2016-11-04 06:58:02', '2016-11-04 08:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `x_user_role_fk1` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allowances`
--
ALTER TABLE `allowances`
  ADD CONSTRAINT `allowances_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `appraisalcategories`
--
ALTER TABLE `appraisalcategories`
  ADD CONSTRAINT `appraisalcategories_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `appraisalquestions`
--
ALTER TABLE `appraisalquestions`
  ADD CONSTRAINT `appraisalquestions_appraisalcategory_id_foreign` FOREIGN KEY (`appraisalcategory_id`) REFERENCES `appraisalcategories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD CONSTRAINT `appraisals_appraisalquestion_id_foreign` FOREIGN KEY (`appraisalquestion_id`) REFERENCES `appraisalquestions` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `appraisals_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `appraisals_examiner_foreign` FOREIGN KEY (`examiner`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `banks`
--
ALTER TABLE `banks`
  ADD CONSTRAINT `banks_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `bank_branches`
--
ALTER TABLE `bank_branches`
  ADD CONSTRAINT `fk_bank_id` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `benefitsettings`
--
ALTER TABLE `benefitsettings`
  ADD CONSTRAINT `benefitsettings_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `budgets`
--
ALTER TABLE `budgets`
  ADD CONSTRAINT `budgets_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `charge_loanproduct`
--
ALTER TABLE `charge_loanproduct`
  ADD CONSTRAINT `loancharges_charge_id_foreign` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`),
  ADD CONSTRAINT `loancharges_loanproduct_id_foreign` FOREIGN KEY (`loanproduct_id`) REFERENCES `loanproducts` (`id`);

--
-- Constraints for table `charge_savingproduct`
--
ALTER TABLE `charge_savingproduct`
  ADD CONSTRAINT `savingcharges_charge_id_foreign` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`),
  ADD CONSTRAINT `savingcharges_savingproduct_id_foreign` FOREIGN KEY (`savingproduct_id`) REFERENCES `savingproducts` (`id`);

--
-- Constraints for table `citizenships`
--
ALTER TABLE `citizenships`
  ADD CONSTRAINT `citizenships_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_earning_id_foreign` FOREIGN KEY (`earning_id`) REFERENCES `earningsettings` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `earnings_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `earningsettings`
--
ALTER TABLE `earningsettings`
  ADD CONSTRAINT `earningsettings_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `emergencycontacts`
--
ALTER TABLE `emergencycontacts`
  ADD CONSTRAINT `emergencycontacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_citizenship_id_foreign` FOREIGN KEY (`citizenship_id`) REFERENCES `citizenships` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_education_type_id_foreign` FOREIGN KEY (`education_type_id`) REFERENCES `education` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_job_group_id_foreign` FOREIGN KEY (`job_group_id`) REFERENCES `job_group` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `employee_type` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employeebenefits`
--
ALTER TABLE `employeebenefits`
  ADD CONSTRAINT `employeebenefits_benefit_id_foreign` FOREIGN KEY (`benefit_id`) REFERENCES `benefitsettings` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employeebenefits_jobgroup_id_foreign` FOREIGN KEY (`jobgroup_id`) REFERENCES `job_group` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employeenontaxables`
--
ALTER TABLE `employeenontaxables`
  ADD CONSTRAINT `employeenontaxables_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employeenontaxables_nontaxable_id_foreign` FOREIGN KEY (`nontaxable_id`) REFERENCES `nontaxables` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_allowances`
--
ALTER TABLE `employee_allowances`
  ADD CONSTRAINT `employee_allowances_allowance_id_foreign` FOREIGN KEY (`allowance_id`) REFERENCES `allowances` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_allowances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_deductions`
--
ALTER TABLE `employee_deductions`
  ADD CONSTRAINT `employee_deductions_deduction_id_foreign` FOREIGN KEY (`deduction_id`) REFERENCES `deductions` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_deductions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_relief`
--
ALTER TABLE `employee_relief`
  ADD CONSTRAINT `employee_relief_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_relief_relief_id_foreign` FOREIGN KEY (`relief_id`) REFERENCES `relief` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD CONSTRAINT `employee_type_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `erporderitems`
--
ALTER TABLE `erporderitems`
  ADD CONSTRAINT `erporderitems_erporder_id_foreign` FOREIGN KEY (`erporder_id`) REFERENCES `erporders` (`id`),
  ADD CONSTRAINT `erporderitems_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `erporders`
--
ALTER TABLE `erporders`
  ADD CONSTRAINT `erporders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Constraints for table `expensesettings`
--
ALTER TABLE `expensesettings`
  ADD CONSTRAINT `expensesettings_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`);

--
-- Constraints for table `hospital_insurance`
--
ALTER TABLE `hospital_insurance`
  ADD CONSTRAINT `hospital_insurance_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `job_group`
--
ALTER TABLE `job_group`
  ADD CONSTRAINT `job_group_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `journals`
--
ALTER TABLE `journals`
  ADD CONSTRAINT `journals_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `kins`
--
ALTER TABLE `kins`
  ADD CONSTRAINT `kins_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `leaveapplications`
--
ALTER TABLE `leaveapplications`
  ADD CONSTRAINT `leaveapplications_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `leaveapplications_leavetype_id_foreign` FOREIGN KEY (`leavetype_id`) REFERENCES `leavetypes` (`id`),
  ADD CONSTRAINT `leaveapplications_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`);

--
-- Constraints for table `leavetypes`
--
ALTER TABLE `leavetypes`
  ADD CONSTRAINT `leavetypes_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`);

--
-- Constraints for table `loanaccounts`
--
ALTER TABLE `loanaccounts`
  ADD CONSTRAINT `loanaccounts_loanproduct_id_foreign` FOREIGN KEY (`loanproduct_id`) REFERENCES `loanproducts` (`id`),
  ADD CONSTRAINT `loanaccounts_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `loanguarantors`
--
ALTER TABLE `loanguarantors`
  ADD CONSTRAINT `loanguarantors_loanaccount_id_foreign` FOREIGN KEY (`loanaccount_id`) REFERENCES `loanaccounts` (`id`),
  ADD CONSTRAINT `loanguarantors_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `loanpostings`
--
ALTER TABLE `loanpostings`
  ADD CONSTRAINT `loanpostings_loanproduct_id_foreign` FOREIGN KEY (`loanproduct_id`) REFERENCES `loanproducts` (`id`);

--
-- Constraints for table `loanrepayments`
--
ALTER TABLE `loanrepayments`
  ADD CONSTRAINT `loanrepayments_loanaccount_id_foreign` FOREIGN KEY (`loanaccount_id`) REFERENCES `loanaccounts` (`id`);

--
-- Constraints for table `loantransactions`
--
ALTER TABLE `loantransactions`
  ADD CONSTRAINT `loantransactions_loanaccount_id_foreign` FOREIGN KEY (`loanaccount_id`) REFERENCES `loanaccounts` (`id`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `nextofkins`
--
ALTER TABLE `nextofkins`
  ADD CONSTRAINT `nextofkins_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
