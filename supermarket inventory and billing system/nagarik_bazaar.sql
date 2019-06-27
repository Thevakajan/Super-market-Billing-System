-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2018 at 12:42 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nagarik_bazar`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `expenses_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalamount` double NOT NULL,
  `paidamount` double NOT NULL,
  `dueamount` double NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expenses_name`, `party_name`, `totalamount`, `paidamount`, `dueamount`, `product_name`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Rent Expenses', 'House Owner', 50000, 5000, 45000, 'home', 'admin', 'admin', '2017-07-20 09:01:44', '2017-07-20 09:01:57'),
(2, 'Bill payment', 'Subusu', 4000, 4000, 0, 'Internet', 'admin', 'admin', '2017-10-28 14:52:48', '2017-10-28 15:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `expensestitles`
--

CREATE TABLE `expensestitles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expensestitles`
--

INSERT INTO `expensestitles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Consumable Expenses', '2017-07-20 09:00:46', '2017-07-20 09:00:46'),
(2, 'Rent Expenses', '2017-07-20 09:00:58', '2017-07-20 09:00:58'),
(3, 'Bill payment', '2017-10-28 14:52:16', '2017-10-28 14:52:16');

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
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2017_05_28_124228_create_roles_table', 3),
(4, '2017_05_28_124417_create_user_roles_table', 4),
(5, '2017_05_28_124654_create_permissions_table', 5),
(6, '2017_05_28_124806_create_role_permissions_table', 6),
(7, '2017_05_28_125406_create_modules_table', 7),
(8, '2017_05_28_125428_create_role_modules_table', 8),
(9, '2017_06_07_103849_create_productcategories_table', 9),
(10, '2017_06_07_103917_create_products_table', 10),
(11, '2017_06_09_071114_create_sales_table', 11),
(12, '2017_06_26_093722_create_expenses_table', 12),
(13, '2017_07_06_132245_create_salescarts_table', 13),
(14, '2017_07_06_141913_create_expensestitles_table', 14),
(15, '2017_07_07_125933_create_purchases_table', 15),
(17, '2017_07_17_084213_create_transactions_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_rank` int(11) NOT NULL,
  `view_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `module_key`, `module_url`, `module_icon`, `module_rank`, `view_sidebar`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', 'dashboard-panel', 'fa fa-home', 1, 1, '2017-06-21 12:30:00', NULL),
(2, 'User Management', 'user_management', 'user-register', 'fa fa-user', 2, 1, '2017-06-05 22:44:05', '2017-06-05 22:44:05'),
(3, 'Module Management', 'module_management', 'module-list', 'fa fa-signal', 3, 1, '2017-06-06 19:38:48', '2017-06-06 19:38:48'),
(4, 'Role Management', 'role_management', 'role-list', 'fa fa-eye', 5, 1, '2017-06-06 19:55:09', '2017-06-06 19:55:09'),
(5, 'Permission Management', 'permission_management', 'permission-list', 'fa fa-refresh', 4, 1, '2017-06-06 22:27:01', '2017-06-06 22:27:01'),
(6, 'Productcategory MGMT', 'productcategory_mgmt', 'productcategory-list', 'fa fa-flag', 6, 1, '2017-06-07 18:09:49', '2017-06-07 18:09:49'),
(7, 'Product Management', 'product_management', 'product-list', 'fa fa-product-hunt', 7, 1, '2017-06-07 18:11:25', '2017-06-07 18:11:25'),
(8, 'Sales Management', 'sales_management', 'sales-create', 'fa fa-shopping-cart', 8, 1, '2017-06-08 19:37:53', '2017-06-08 19:37:53'),
(10, 'Expenses Management', 'expenses_management', 'expenses-list', 'fa fa-usd', 10, 1, '2017-06-22 18:52:09', '2017-06-22 18:52:09'),
(14, 'Purchase Management', 'purchase_management', 'purchase-list', 'fa fa-list', 15, 1, '2017-07-07 01:23:47', '2017-07-07 01:23:47'),
(15, 'Bank Transaction', 'bank_transaction', 'transaction-list', 'fa fa-list', 17, 1, '2017-07-15 23:41:04', '2017-07-15 23:41:04');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `permission_key`, `created_at`, `updated_at`) VALUES
(1, 'Create New User', 'user-register', '2017-06-06 21:12:20', '2017-06-06 21:12:20'),
(2, 'Module Create', 'module-create', '2017-06-07 23:18:50', '2017-06-07 23:18:50'),
(3, 'Module View', 'module-list', '2017-06-07 23:19:11', '2017-06-07 23:19:11'),
(4, 'Module Delete', 'module-delete', '2017-06-07 23:19:26', '2017-06-07 23:19:26'),
(5, 'Module Edit', 'module-edit', '2017-06-07 23:19:43', '2017-06-07 23:19:43'),
(6, 'Role View', 'role-list', '2017-06-07 23:20:39', '2017-06-07 23:20:39'),
(7, 'Role Create', 'role-create', '2017-06-07 23:20:52', '2017-06-07 23:20:52'),
(8, 'Permission Asign', 'permission-asign', '2017-06-07 23:21:16', '2017-06-07 23:32:14'),
(9, 'Permission Create', 'permission-create', '2017-06-07 23:21:48', '2017-06-07 23:21:48'),
(10, 'Permission Views', 'permission-list', '2017-06-07 23:22:07', '2017-06-07 23:22:07'),
(11, 'Permission Edit', 'permission-edit', '2017-06-07 23:22:46', '2017-06-07 23:22:46'),
(12, 'Permission Delete', 'permission-delete', '2017-06-07 23:23:18', '2017-06-07 23:23:18'),
(13, 'Productcategory View', 'productcategory-list', '2017-06-07 23:33:40', '2017-06-07 23:33:40'),
(14, 'Product Category Create', 'productcategory-create', '2017-06-07 23:34:38', '2017-06-07 23:34:38'),
(15, 'Product Category Edit', 'productcategory-edit', '2017-06-07 23:35:00', '2017-06-07 23:35:00'),
(16, 'Product Category Delete', 'productcategory-delete', '2017-06-07 23:35:21', '2017-06-07 23:35:21'),
(17, 'Product View', 'product-list', '2017-06-07 23:39:33', '2017-06-07 23:39:33'),
(18, 'Product Create', 'product-create', '2017-06-07 23:39:50', '2017-06-07 23:39:50'),
(19, 'Product Edit', 'product-edit', '2017-06-07 23:40:06', '2017-06-07 23:40:06'),
(20, 'Product Delete', 'product-delete', '2017-06-07 23:40:45', '2017-06-07 23:40:45'),
(25, 'Sales view', 'sales-list', '2017-07-16 23:57:39', '2017-07-16 23:57:39'),
(26, 'Make/Create Sales', 'sales-create', '2017-07-16 23:59:43', '2017-07-16 23:59:43'),
(30, 'Purchase view', 'purchase-list', '2017-07-17 00:24:38', '2017-07-17 00:24:38'),
(31, 'Make new Purchase', 'purchase-create', '2017-07-17 00:25:03', '2017-07-17 00:25:03'),
(32, 'purchase Update/Confirm Dueamount', 'purchase-update', '2017-07-17 00:25:41', '2017-07-17 00:25:41'),
(33, 'Expenses View', 'expenses-list', '2017-07-17 00:30:32', '2017-07-17 00:30:32'),
(34, 'Expenses Create', 'expenses-create', '2017-07-17 00:31:24', '2017-07-17 00:31:24'),
(35, 'Expenses Edit', 'expenses-edit', '2017-07-17 00:31:43', '2017-07-17 00:31:43'),
(36, 'Expenses Delete', 'expenses-delete', '2017-07-17 00:32:04', '2017-07-17 00:32:04'),
(37, 'Expenses Heading Create', 'expenses-heading', '2017-07-17 00:33:34', '2017-07-17 00:33:34'),
(45, 'User Password Change', 'password-change', '2017-07-17 00:54:08', '2017-07-17 00:54:08'),
(46, 'Transcation/Bank view', 'transaction-list', '2017-07-17 22:30:39', '2017-07-17 22:30:39'),
(47, 'Transaction remaining Deposite update', 'transaction-update', '2017-07-17 22:31:56', '2017-07-17 22:31:56'),
(48, 'Transaction Entry', 'transaction-create', '2017-07-17 22:32:23', '2017-07-17 22:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`id`, `name`, `slug`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(3, 'Food Items', 'food-items', 1, 'admin', NULL, '2017-10-28 12:15:46', '2017-10-28 12:15:46'),
(4, 'Beverages', 'beverages', 1, 'user', NULL, '2017-10-28 15:06:02', '2017-10-28 15:06:02'),
(5, 'Personal Care', 'personal-care', 1, 'admin', 'admin', '2017-10-28 15:25:40', '2017-10-28 15:32:48'),
(6, 'Bread and Bakery', 'bread-and-bakery', 1, 'admin', NULL, '2017-10-28 15:25:54', '2017-10-28 15:25:54'),
(7, 'Baby Product', 'baby-product', 1, 'admin', NULL, '2017-10-28 15:26:52', '2017-10-28 15:26:52'),
(8, 'cvsdfsdf', 'cvsdfsdf', 1, 'admin', NULL, '2017-12-21 15:38:54', '2017-12-21 15:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productcategory_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productcategory_id`, `name`, `code`, `quantity`, `stock`, `price`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'Rice 50 kg', 'R50', 60, 58, 2500, 1, 'admin', NULL, '2017-10-28 15:27:48', '2017-10-29 00:35:37'),
(2, 3, 'Rice 10 kg', 'R10', 50, 49, 500, 1, 'admin', NULL, '2017-10-28 15:28:24', '2017-10-29 00:36:04'),
(3, 4, 'Apple Juce 1 Litter', 'AJ', 50, 49, 600, 1, 'admin', NULL, '2017-10-28 15:29:32', '2017-10-29 03:45:08'),
(4, 4, 'Hard Soda 1 Litter', 'HS1', 70, 70, 300, 1, 'admin', NULL, '2017-10-28 15:31:10', '2017-10-28 15:31:10'),
(5, 5, 'Gillette Razor Blade', 'GRB', 50, 50, 300, 1, 'admin', NULL, '2017-10-28 15:34:01', '2017-10-28 15:34:01'),
(6, 5, 'Toothpaste', 'TP', 70, 69, 50, 1, 'admin', NULL, '2017-10-28 15:34:41', '2017-10-29 03:47:21'),
(7, 5, 'Coconut Oil', 'CO', 70, 70, 100, 1, 'admin', NULL, '2017-10-28 15:36:13', '2017-10-28 15:36:13'),
(8, 6, 'Black Forest Full', 'BFF', 50, 50, 50, 1, 'admin', NULL, '2017-10-28 15:36:46', '2017-10-28 15:36:46'),
(9, 6, 'Black Forest Half', 'BFH', 40, 40, 30, 1, 'admin', NULL, '2017-10-28 15:37:14', '2017-10-28 15:37:14'),
(10, 6, 'French Bread', 'FB', 60, 60, 60, 1, 'admin', NULL, '2017-10-28 15:37:54', '2017-10-28 15:37:54'),
(11, 7, 'Johndon Powder', 'JP', 100, 100, 600, 1, 'admin', NULL, '2017-10-28 15:39:19', '2017-10-28 15:39:19'),
(12, 5, 'Pampers', 'PMRS', 35, 35, 500, 1, 'admin', NULL, '2017-10-28 15:40:13', '2017-10-28 15:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `goods_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalamount` double NOT NULL,
  `paidamount` double NOT NULL,
  `dueamount` double NOT NULL,
  `status` enum('vat','pan','normal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `goods_name`, `party_name`, `totalamount`, `paidamount`, `dueamount`, `status`, `purchase_date`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Software', 'Cheetahwebtech', 500000, 500000, 0, 'vat', '2017-07-20', 'admin', NULL, '2017-07-20 09:03:02', '2017-07-20 09:03:02'),
(2, 'Other Purchase', 'Some Other', 50000, 50000, 0, 'pan', '2017-07-20', 'admin', NULL, '2017-07-20 09:03:41', '2017-10-28 14:46:18'),
(3, 'Furniture', 'Thapa furniture', 4000, 30000, -26000, 'pan', '2017-10-28', 'admin', NULL, '2017-10-28 14:50:57', '2017-10-28 14:50:57'),
(4, 'Baby Product 1 Bundel', 'Gupta wholeSell', 5000, 5000, 0, 'pan', '2017-10-28', 'admin', NULL, '2017-10-28 15:46:07', '2017-10-28 15:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2017-07-19 18:15:00', '2017-07-20 18:15:00'),
(2, 'Admin', '2017-07-19 18:15:00', '2017-07-20 18:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_modules`
--

CREATE TABLE `role_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_modules`
--

INSERT INTO `role_modules` (`id`, `role_id`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-06-06 12:30:00', NULL),
(2, 2, 1, '2017-06-20 12:30:00', NULL),
(3, 1, 2, '2017-06-05 22:44:05', '2017-06-05 22:44:05'),
(4, 1, 3, '2017-06-06 19:38:48', '2017-06-06 19:38:48'),
(5, 1, 4, '2017-06-06 19:55:09', '2017-06-06 19:55:09'),
(6, 1, 5, '2017-06-06 22:27:01', '2017-06-06 22:27:01'),
(7, 1, 6, '2017-06-07 18:09:49', '2017-06-07 18:09:49'),
(8, 2, 6, '2017-06-07 18:09:49', '2017-06-07 18:09:49'),
(9, 1, 7, '2017-06-07 18:11:25', '2017-06-07 18:11:25'),
(10, 2, 7, '2017-06-07 18:11:25', '2017-06-07 18:11:25'),
(11, 1, 8, '2017-06-08 19:37:53', '2017-06-08 19:37:53'),
(12, 2, 8, '2017-06-08 19:37:53', '2017-06-08 19:37:53'),
(15, 1, 10, '2017-06-22 18:52:09', '2017-06-22 18:52:09'),
(16, 2, 10, '2017-06-22 18:52:09', '2017-06-22 18:52:09'),
(21, 1, 14, '2017-07-07 01:23:47', '2017-07-07 01:23:47'),
(22, 2, 14, '2017-07-07 01:23:47', '2017-07-07 01:23:47'),
(23, 1, 15, '2017-07-15 23:41:04', '2017-07-15 23:41:04'),
(24, 2, 15, '2017-07-15 23:41:04', '2017-07-15 23:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(817, 1, 1, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(818, 1, 2, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(819, 1, 3, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(820, 1, 4, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(821, 1, 5, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(822, 1, 6, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(823, 1, 7, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(824, 1, 8, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(825, 1, 9, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(826, 1, 10, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(827, 1, 11, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(828, 1, 12, '2017-07-17 22:32:41', '2017-07-17 22:32:41'),
(829, 1, 13, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(830, 1, 14, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(831, 1, 15, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(832, 1, 16, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(833, 1, 17, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(834, 1, 18, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(835, 1, 19, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(836, 1, 20, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(841, 1, 25, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(842, 1, 26, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(846, 1, 30, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(847, 1, 31, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(848, 1, 32, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(849, 1, 33, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(850, 1, 34, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(851, 1, 35, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(852, 1, 36, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(853, 1, 37, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(861, 1, 45, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(862, 1, 46, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(863, 1, 47, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(864, 1, 48, '2017-07-17 22:32:42', '2017-07-17 22:32:42'),
(875, 2, 13, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(876, 2, 14, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(877, 2, 15, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(878, 2, 16, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(879, 2, 17, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(880, 2, 18, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(881, 2, 19, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(882, 2, 20, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(883, 2, 25, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(884, 2, 26, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(885, 2, 30, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(886, 2, 31, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(887, 2, 32, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(888, 2, 33, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(889, 2, 34, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(890, 2, 35, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(891, 2, 36, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(892, 2, 37, '2017-10-28 14:45:43', '2017-10-28 14:45:43'),
(893, 2, 45, '2017-10-28 14:45:43', '2017-10-28 14:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `saller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` tinyint(1) NOT NULL DEFAULT '1',
  `sales_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `quantity`, `price`, `saller_name`, `sales_status`, `sales_date`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5000, 'grocerysystem', 1, '2017-10-29', '2017-10-29 00:36:10', '2017-10-29 00:36:10'),
(2, 2, 1, 500, 'grocerysystem', 1, '2017-10-29', '2017-10-29 00:36:10', '2017-10-29 00:36:10'),
(3, 3, 1, 600, 'grocerysystem1', 1, '2017-10-29', '2017-10-29 03:54:31', '2017-10-29 03:54:31'),
(4, 6, 1, 50, 'grocerysystem1', 1, '2017-10-29', '2017-10-29 03:54:31', '2017-10-29 03:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `salescarts`
--

CREATE TABLE `salescarts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `saller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` tinyint(1) NOT NULL DEFAULT '1',
  `sales_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `totalamount` double NOT NULL,
  `depositeamount` double NOT NULL,
  `remainingamount` double NOT NULL,
  `deposite_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deposite_date` date NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `last_login`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Grocery System', 'admin', 'nagarikbazar@gmail.com', '$2y$10$lIKCIfwU/4/PMkUDOQYXdOv5TNZBfFGl5XnD/N.PIOF8Tu/ChAAc2', '2017-12-24 08:39:55', 1, 'lAA65mYOYHBQ08slt5pBG7lwOx2Cuexqu1d21c6vNG7P2cArjtAAsLxszoYb', '2017-06-05 21:35:29', '2017-12-24 02:54:55'),
(2, 'User Admin', 'user', 'nagarikbazar1@testtest.com', '$2y$10$RJobR0XNPlyFr0XL5ENkg./R.lw2yRmxQoU6EW9nntGASaZ89xzQe', '2017-10-29 09:27:32', 1, 't4d8hhkDCOcbq3ASUlkwEHtPb69jZoq16Kl53SpfR9CkHxQd8HW8NwcyghQu', '2017-06-06 19:47:19', '2017-10-29 03:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-06-05 21:35:29', '2017-06-05 21:35:29'),
(2, 2, 2, '2017-06-06 19:47:19', '2017-06-06 19:47:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_created_by_foreign` (`created_by`),
  ADD KEY `expenses_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `expensestitles`
--
ALTER TABLE `expensestitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_name_unique` (`name`),
  ADD UNIQUE KEY `modules_module_key_unique` (`module_key`),
  ADD UNIQUE KEY `modules_module_url_unique` (`module_url`);

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
  ADD UNIQUE KEY `permissions_permission_key_unique` (`permission_key`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productcategories_slug_unique` (`slug`),
  ADD KEY `productcategories_created_by_foreign` (`created_by`),
  ADD KEY `productcategories_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_productcategory_id_foreign` (`productcategory_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_created_by_foreign` (`created_by`),
  ADD KEY `purchases_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_modules`
--
ALTER TABLE `role_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_modules_role_id_foreign` (`role_id`),
  ADD KEY `role_modules_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_id_foreign` (`product_id`);

--
-- Indexes for table `salescarts`
--
ALTER TABLE `salescarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salescarts_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_created_by_foreign` (`created_by`),
  ADD KEY `transactions_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `expensestitles`
--
ALTER TABLE `expensestitles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_modules`
--
ALTER TABLE `role_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=894;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `salescarts`
--
ALTER TABLE `salescarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE;

--
-- Constraints for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD CONSTRAINT `productcategories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `productcategories_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_productcategory_id_foreign` FOREIGN KEY (`productcategory_id`) REFERENCES `productcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE;

--
-- Constraints for table `role_modules`
--
ALTER TABLE `role_modules`
  ADD CONSTRAINT `role_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_modules_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salescarts`
--
ALTER TABLE `salescarts`
  ADD CONSTRAINT `salescarts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `users` (`username`) ON UPDATE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
