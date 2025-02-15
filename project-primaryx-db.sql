-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2024 at 03:13 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my-boiler-plate`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint UNSIGNED NOT NULL,
  `activity_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `activity_name`, `activity_image`, `activity_image_path`, `activity_location`, `activity_description`, `created_by`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(12, 'Stephen Britt', '664b9c8cbe874.jpg', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/664b9c8cbe874.jpg', 'Velit porro sed ear', 'In et cum nihil mole', 2, '2009-08-08', '2015-05-31', '2024-05-20 12:55:08', '2024-06-05 07:03:54'),
(13, 'Rebecca Mercer', '6651f8b58ed55.jpeg', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/6651f8b58ed55.jpeg', 'Pariatur Voluptas n', 'Itaque dolor minus q', 2, '2010-12-06', '2022-06-24', '2024-05-20 12:56:08', '2024-05-25 08:41:57'),
(14, 'Ariel Jefferson', '665203c36b4c9.jpeg', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/665203c36b4c9.jpeg', 'Corrupti error exce', 'Qui quos dolore unde', 2, '1990-04-04', '1997-01-08', '2024-05-25 09:29:07', '2024-05-25 09:29:07'),
(16, 'Jada Dorsey', '666061c561198.jpg', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/666061c561198.jpg', 'Minima necessitatibu', 'Pariatur Ea aut fug', 2, '1979-12-16', '1988-08-06', '2024-06-05 07:01:57', '2024-06-05 07:01:57'),
(18, 'dfadsfsd', '66616f216e4d3.jpg', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/66616f216e4d3.jpg', 'dfdsfkdsfj', 'dafdsfsdf', 2, '2024-06-14', '2024-06-08', '2024-06-06 02:10:31', '2024-06-06 02:11:13'),
(19, 'Price Vincent', '666186d7daabc.jpeg', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/666186d7daabc.jpeg', 'Aut ad reiciendis es', 'Modi suscipit omnis', 2, '1978-03-18', '2003-08-13', '2024-06-06 03:52:23', '2024-06-06 03:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `communication_messages`
--

CREATE TABLE `communication_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED NOT NULL,
  `message_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_user_activities`
--

CREATE TABLE `enrolled_user_activities` (
  `id` bigint UNSIGNED NOT NULL,
  `activity_id` int NOT NULL,
  `user_id` int NOT NULL,
  `enroll_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Applide;0=Cancelled;2=Enrolled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolled_user_activities`
--

INSERT INTO `enrolled_user_activities` (`id`, `activity_id`, `user_id`, `enroll_status`, `created_at`, `updated_at`) VALUES
(4, 13, 10, 0, '2024-05-20 13:09:16', '2024-05-20 13:09:23'),
(5, 12, 10, 1, '2024-05-20 13:10:05', '2024-05-20 13:10:05'),
(6, 13, 15, 1, '2024-05-25 09:40:34', '2024-05-25 09:44:23'),
(7, 14, 15, 1, '2024-05-25 09:40:45', '2024-05-25 09:40:45'),
(8, 14, 16, 0, '2024-05-25 09:47:25', '2024-05-25 10:09:18'),
(9, 13, 16, 1, '2024-05-25 09:47:41', '2024-05-25 10:09:27'),
(10, 12, 16, 0, '2024-05-25 09:48:21', '2024-05-25 09:51:27'),
(11, 12, 17, 2, '2024-05-25 10:24:31', '2024-06-07 00:24:48'),
(12, 13, 17, 0, '2024-05-25 10:24:41', '2024-06-07 00:24:18'),
(13, 14, 17, 0, '2024-06-05 08:57:47', '2024-06-07 00:20:03'),
(14, 16, 17, 0, '2024-06-05 08:58:18', '2024-06-07 00:20:10'),
(15, 14, 22, 2, '2024-07-01 10:44:47', '2024-07-01 10:47:21'),
(16, 19, 23, 2, '2024-07-01 11:16:35', '2024-07-01 11:19:36'),
(17, 18, 23, 2, '2024-07-01 11:17:45', '2024-07-01 11:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `activity_id` bigint UNSIGNED NOT NULL,
  `enrollment_status` enum('enrolled','withdrawn','completed','ongoing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enrolled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_15_061459_create_permission_tables', 2),
(6, '2023_07_15_061530_create_products_table', 3),
(7, '2023_07_16_034610_create_table_name', 4),
(8, '2024_04_26_012837_create_activities_table', 5),
(9, '2024_04_26_013530_create_enrollments_table', 6),
(10, '2024_04_26_014144_create_user_profiles_table', 7),
(11, '2024_04_26_020215_create_communication_messages_table', 8),
(12, '2024_04_26_020711_create_notifications_table', 9),
(13, '2024_04_26_021022_create_parent_accesses_table', 10),
(14, '2024_05_09_124251_create_enrolled_user_activities_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(7, 'App\\Models\\User', 5),
(7, 'App\\Models\\User', 7),
(7, 'App\\Models\\User', 8),
(8, 'App\\Models\\User', 13),
(7, 'App\\Models\\User', 15),
(7, 'App\\Models\\User', 16),
(9, 'App\\Models\\User', 17),
(8, 'App\\Models\\User', 18),
(8, 'App\\Models\\User', 19),
(8, 'App\\Models\\User', 21),
(7, 'App\\Models\\User', 22),
(7, 'App\\Models\\User', 23),
(8, 'App\\Models\\User', 24);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `notification_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_accesses`
--

CREATE TABLE `parent_accesses` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_user_id` bigint UNSIGNED NOT NULL,
  `child_user_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1=Applied;2=Accepted;3=Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_childs`
--

CREATE TABLE `parent_childs` (
  `id` int NOT NULL,
  `parent_id` int NOT NULL,
  `children_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1= Applied;2=Reject;3=Approved',
  `user_profile_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `parent_childs`
--

INSERT INTO `parent_childs` (`id`, `parent_id`, `children_id`, `status`, `user_profile_id`, `created_at`, `updated_at`) VALUES
(11, 18, 10, 2, 10, '2024-06-30 01:09:50', '2024-06-30 09:50:11'),
(12, 18, 15, 3, 5, '2024-06-30 01:32:06', '2024-06-30 09:50:20'),
(13, 20, 10, 2, 4, '2024-06-30 16:42:28', '2024-06-30 10:43:21'),
(14, 21, 8, 1, 1, '2024-07-01 16:25:55', '2024-07-01 16:25:55'),
(15, 21, 22, 3, 13, '2024-07-01 16:54:54', '2024-07-01 10:55:21'),
(16, 24, 23, 3, 14, '2024-07-01 17:23:26', '2024-07-01 11:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-07-15 00:48:36', '2023-07-15 00:48:36'),
(2, 'role-create', 'web', '2023-07-15 00:48:36', '2023-07-15 00:48:36'),
(3, 'role-edit', 'web', '2023-07-15 00:48:36', '2023-07-15 00:48:36'),
(4, 'role-delete', 'web', '2023-07-15 00:48:36', '2023-07-15 00:48:36'),
(12, 'create-menu', 'web', '2023-07-15 22:34:16', '2023-07-15 22:34:16'),
(126, 'user-profile', 'web', '2024-04-26 07:45:41', '2024-04-26 07:45:41'),
(127, 'user-management', 'web', '2024-04-26 07:45:49', '2024-04-26 07:45:49'),
(128, 'notification', 'web', '2024-04-26 07:45:55', '2024-04-26 07:45:55'),
(130, 'user-activity', 'web', '2024-04-26 07:46:22', '2024-04-26 07:46:22'),
(131, 'extra-curricular-acitivities', 'web', '2024-04-26 07:46:43', '2024-04-26 07:46:43'),
(132, 'activity-enrollment', 'web', '2024-04-26 07:47:12', '2024-04-26 07:47:12'),
(133, 'reports', 'web', '2024-04-26 07:47:25', '2024-04-26 07:47:25'),
(134, 'system-user-activities', 'web', '2024-04-26 08:01:56', '2024-04-26 08:01:56'),
(135, 'enrollment-application-approve', 'web', '2024-06-06 02:01:01', '2024-06-06 02:01:01'),
(136, 'view-parent-application-list', 'web', '2024-07-01 08:36:02', '2024-07-01 08:36:02'),
(137, 'enroll-as-parent-for-kids', 'web', '2024-07-01 10:49:57', '2024-07-01 10:49:57'),
(138, 'view-children-activity', 'web', '2024-07-01 10:50:06', '2024-07-01 10:50:06'),
(139, 'activity-action', 'web', '2024-07-01 10:51:52', '2024-07-01 10:51:52'),
(140, 'activity-list', 'web', '2024-07-02 07:54:18', '2024-07-02 07:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Bucket', 'Pran RFL buckt', '2023-07-15 01:19:11', '2023-07-15 01:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-07-15 00:49:38', '2023-07-15 00:49:38'),
(2, 'Superadmin', 'web', '2023-07-15 00:58:50', '2024-04-26 08:26:26'),
(7, 'Student', 'web', '2024-04-25 20:42:13', '2024-04-25 20:42:13'),
(8, 'Parent', 'web', '2024-04-25 20:42:32', '2024-04-25 20:42:32'),
(9, 'Teacher', 'web', '2024-04-26 08:08:11', '2024-04-26 08:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(12, 1),
(127, 1),
(128, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(12, 2),
(127, 2),
(128, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(126, 7),
(130, 7),
(132, 7),
(133, 7),
(134, 7),
(140, 7),
(126, 8),
(130, 8),
(133, 8),
(134, 8),
(135, 8),
(137, 8),
(138, 8),
(140, 8),
(126, 9),
(130, 9),
(131, 9),
(133, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sidbar_menus`
--

CREATE TABLE `sidbar_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_id` int NOT NULL,
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidbar_menus`
--

INSERT INTO `sidbar_menus` (`id`, `name`, `icon`, `permission_id`, `permission_name`, `url`, `created_at`, `updated_at`) VALUES
(41, 'Fouth Menu', 'ti-target', 117, 'fouth-menu', 'menus.index', '2023-07-21 22:06:35', '2023-07-21 22:06:35'),
(42, 'Sixth Menu', 'ti-target', 118, 'sixth-menu', 'menus.index', '2023-07-21 22:27:17', '2023-07-21 22:27:17'),
(43, 'Seventh Menu', 'ti-target', 119, 'seventh-menu', 'menus.index', '2023-07-21 22:45:58', '2023-07-22 03:50:51'),
(44, 'Eighteenth Menu', 'ti-target', 120, 'eighteenth-menu', 'menus.index', '2023-07-21 23:20:18', '2023-07-22 03:50:57'),
(45, 'Nineteenth menu', 'ti-target', 121, 'nineteenth-menu', 'defaultmenu', '2023-07-21 23:23:32', '2023-07-21 23:23:32'),
(46, 'Subscriber List', 'ti-target', 122, 'subscriber-list', 'defaultmenu', '2023-07-22 00:07:28', '2023-07-22 03:50:14'),
(47, 'My Menu', 'ti-target', 123, 'my-menu', 'defaultmenu', '2023-10-26 14:43:28', '2023-10-26 14:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(1) DEFAULT '1' COMMENT '1=Parent;2=Teacher;3=Student',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'Rakib Chowdhury', 'admin@admin.com', NULL, '$2y$10$EZTL8cRcSOnGRj2WT31JKe.ESQ6lBr6zrvueqkgGyxaAVO0ysvT2u', NULL, NULL, '2023-07-14 21:39:04', '2023-07-15 00:54:38'),
(2, 'Hardik Savani', 'admin@gmail.com', NULL, '$2y$10$LzCt4jVhVFYSOj.3bO.W/.dXu97aR4GGhOjBJnkE9bawt2zIxSY8K', NULL, NULL, '2023-07-15 00:49:38', '2023-07-15 00:54:06'),
(3, 'First User', 'first-user@gmai.com', NULL, '$2y$10$74FYjnilGaMLE9BV1kJE9uUuwEzUxWJrMtme9QfeNzi.LUT7DauPG', NULL, NULL, '2023-07-15 00:59:24', '2023-07-16 04:53:07'),
(4, 'Jui', 'juikhan@gmail.com', NULL, '$2y$10$ESkrT.f4/D1FYS9nGC1JE.uzHAJOI60KwfFqQibLf5PHP58ctj3aG', NULL, NULL, '2023-07-16 21:43:44', '2023-07-17 02:21:24'),
(5, 'Minhaz', 'minhaz@gmail.com', NULL, '$2y$10$cyc3NR/3KaR9eV41/lhnI.CLpI8QCrzfuABEtDBHW.MAX/AeF4w2G', NULL, NULL, '2023-07-22 00:16:47', '2024-04-26 08:27:59'),
(6, 'rakibch', 'rakibch123@gmail.com', NULL, '$2y$10$VfBQQsb75WviNJy0DV6bMe0MTHKmg34135uzBXbpzXQHumbCf/xTe', NULL, NULL, '2024-04-19 19:28:53', '2024-04-19 19:28:53'),
(7, 'Samma', 'samma@gmail.com', NULL, '$2y$10$T5v2k1fFWJbctej71piqrehR/jEzGaalo9yroAoAAgPWUcb.BXxjS', NULL, NULL, '2024-04-25 20:36:00', '2024-04-25 20:36:00'),
(8, 'tonmoy', 'tonmoy@gmai.com', NULL, '$2y$10$8PK3abHCOUb5mgllD6PZp.xQFQRloZk993CerRAh9lxR//EPWEiwa', NULL, 3, '2024-04-25 21:30:57', '2024-04-25 21:30:57'),
(9, 'Johon Doe', 'john@gmail.com', NULL, '$2y$10$9ai/BLMVzBjNsjb8XBkRgew0Q9B8UPI8WzOAgnhwHrg0hlxG/Rdne', NULL, 2, '2024-04-26 07:15:46', '2024-04-26 07:15:46'),
(10, 'Test Student', 'teststudent@gmail.com', NULL, '$2y$10$Re5m3zmtVPP7wAb95H/5i.bTxKiS6licRSHSqGrXuAlw4R/igsQa6', NULL, 3, '2024-04-26 08:29:48', '2024-04-26 08:29:48'),
(11, 'teststudent', 'student@gmail.com', NULL, '$2y$10$rIVP5dugSskqLO5dOtobHuccMxGS9eSxQokOluYb6s9.O8In.u4vG', NULL, 3, '2024-04-28 10:28:14', '2024-04-28 10:28:14'),
(12, 'student1', 'student1@gmail.com', NULL, '$2y$10$SF5DvHRb/lU2fTOFFe1.Wu3uSz3bKY2X55B2Eih5cTWphGR2ZoV6q', NULL, 3, '2024-04-28 10:34:16', '2024-04-28 10:34:16'),
(13, 'parent', 'parent@gmail.com', NULL, '$2y$10$2zSH7zOFmFBYUFkW2j.EqezNyuBNlSkQb0S..a.WVRavL2qVyyQvG', NULL, 1, '2024-04-28 12:22:01', '2024-04-28 12:22:01'),
(15, 'mujib@gmail.com', 'mujib@gmail.com', NULL, '$2y$10$MMwJivM1xm9Rf1rEdeX0zedaUw1L3BuvsvOxFdbokwxagVWqlDqT2', NULL, 3, '2024-05-25 08:45:08', '2024-05-25 08:45:08'),
(16, 'teresa', 'teresa@gmail.com', NULL, '$2y$10$yOMy7RPVb74IJUVn/BXWyeqbPIC9DkjTRqhB6O4yv1PcaUu3T1Tj2', NULL, 3, '2024-05-25 09:45:05', '2024-05-25 09:45:05'),
(17, 'test student', 'studentuser@gmail.com', NULL, '$2y$10$MJpXVsIO9y5eMAJ9iQF1CusOr6QcIamRzzpzRP/RUvhfs3pHygN..', NULL, 3, '2024-05-25 10:20:09', '2024-06-05 08:52:16'),
(18, 'johnmiller', 'johnmiller45@gmail.com', NULL, '$2y$10$/9bW6RK4suFRBinX3S.DAenK/VpYRmxaqIpFg63P6j.i3oqj8pIK2', NULL, 1, '2024-06-29 19:09:35', '2024-06-29 19:09:35'),
(19, 'parentuser', 'parentuser@gmail.com', NULL, '$2y$10$EqULb9ufvzIlIYZwbnMGHeVUybUYjnHGo2kYjfBTeIWI.SKEf6oEW', NULL, 1, '2024-06-30 10:18:20', '2024-06-30 10:18:20'),
(20, 'parentuser1', 'parentuser1@gmail.com', NULL, '$2y$10$th09E0a.AjUKt1Nkfvzrou2rFdc5Od9XjCYi35GAoXB96IToHmh0u', NULL, 1, '2024-06-30 10:26:03', '2024-06-30 10:26:03'),
(21, 'parent22', 'parent22@gmail.com', NULL, '$2y$10$g5B4j6KUodnxTpkJwotvWeXrgR7fVy6qqbcbDrZWVUWxWi7jxUn62', NULL, 1, '2024-07-01 10:25:38', '2024-07-01 10:25:38'),
(22, 'student22', 'student22@gmail.com', NULL, '$2y$10$sPNnEdIpmj9OCVQdKYTQ/OT1GelNgjiL1HV7jH1t4LHB177j/zSDa', NULL, 3, '2024-07-01 10:37:16', '2024-07-01 10:37:16'),
(23, 'student23', 'student23@gmail.com', NULL, '$2y$10$wohqCSxGSzt2eMqjwfI7y.bOLXlYHGPHyMkzDiBDRabrfERQf2K2W', NULL, 3, '2024-07-01 11:10:36', '2024-07-01 11:10:36'),
(24, 'parent23', 'parent23@gmail.com', NULL, '$2y$10$WokyUb/Di01P9dy5Psmkge4/qlxY5YSHckTYLj0G28qLGbUvJnJGa', NULL, 1, '2024-07-01 11:20:57', '2024-07-01 11:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_type` tinyint(1) NOT NULL DEFAULT '1',
  `profile_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Male;2=Female;3=Other',
  `student_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VIII',
  `is_applied_by_parent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Not Applied;1=Applied;2=Approved;3=Not Approved',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `name`, `city`, `state`, `country`, `street_address`, `phone`, `email`, `skype_id`, `profession`, `date_of_birth`, `profile_image`, `profile_image_path`, `profile_type`, `profile_id`, `gender`, `student_id`, `teacher_id`, `class`, `is_applied_by_parent`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 8, 'Rhoda Mcconnell 123', 'Aliquip est in archi', 'Porro provident sim', 'Aliquip est in archi', 'Incidunt vitae saep', '+1 (619) 892-9487', 'vohyropig@mailinator.com', 'Ut saepe explicabo', NULL, '2019-11-10', '662bbae87bfdc.png', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/profile_pictures/662bbae87bfdc.png', 3, NULL, 2, 'Sunt doloribus lauda', '', 'I', 1, NULL, '2024-04-26 01:48:08', '2024-07-01 10:25:55'),
(2, 9, 'Michelle Suarez 123', 'Est commodo atque s', 'Aut fugiat Nam volup', 'Est commodo atque s', 'Voluptate voluptas i', '+1 (864) 479-4329', 'pycazev@mailinator.com12', 'Nostrud atque necess', NULL, '2001-04-30', '662bae2cb8c9a.png', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/profile_pictures/662bae2cb8c9a.png', 2, NULL, 1, '', 'Exercitation volupta', 'VII', 0, NULL, '2024-04-26 07:37:48', '2024-04-26 08:33:24'),
(3, 13, 'Bell Gill', 'Quia earum minima la', 'Et saepe consequatur', 'Quia earum minima la', 'Dolore consequatur', '+1 (758) 304-2794', 'golo@mailinator.com1', 'Et culpa quis quidem', 'Cupiditate dolorum s', '2003-09-11', '662e949665aeb.png', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/profile_pictures/662e949665aeb.png', 1, NULL, 1, '', '', 'VI', 0, NULL, '2024-04-28 12:25:26', '2024-04-28 12:37:02'),
(4, 10, 'Maile Mason', 'Nulla ut incididunt', 'Ut temporibus tempor', 'Sit est aut cumque', 'Aperiam aspernatur e', '+1 (355) 593-2541', 'xozir@mailinator.com', 'Dicta praesentium di', '', '1998-09-02', '664ba4c1bcffa.jpg', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/profile_pictures/664ba4c1bcffa.jpg', 3, NULL, 2, 'Et reiciendis ut qui', '', 'XI', 3, NULL, '2024-05-20 13:30:09', '2024-06-30 10:43:21'),
(5, 15, 'Mujib Ahmed', 'Brahmanbaria', 'Brahmanbaria', 'Brahmanbaria', '43 th Road', '019563215144568', 'mujib@gmail.com', 'mujib987', '', '2024-05-26', '66520160593b2.jpg', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/66520160593b2.jpg', 3, NULL, 1, '2012-2-260-62', '', 'VIII', 2, NULL, '2024-05-25 08:47:24', '2024-06-30 09:50:20'),
(6, 16, 'Daryl Jacobson', 'Ut elit quia archit', 'Eiusmod quia dolorum', 'Tempor voluptate sae', 'Maxime quo quibusdam', '+1 (458) 538-9545', 'xojonoq@mailinator.com', 'Enim provident quia', '', '1972-03-09', '66520791b1bc2.png', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/66520791b1bc2.png', 3, NULL, 2, 'Aliquam et Nam enim', '', 'V', 0, NULL, '2024-05-25 09:45:21', '2024-07-01 10:36:37'),
(7, 17, 'Anupom Devnath', 'Brahmanbaria', 'Chittagong', 'Bangladesh', 'South Pairtala', '01965321510', 'studentuser@gmail.com', 'studentuser', '', '2024-05-24', '66521013cc1db.png', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/66521013cc1db.png', 3, NULL, 1, '2012-9-630-54', '', 'XII', 2, NULL, '2024-05-25 10:21:39', '2024-06-29 19:24:56'),
(9, 2, 'Anupom Devnath', 'Brahmanbaria', 'Chittagong', 'Bangladesh', 'South Pairtala', '01965321510', 'studentuser@15gmail.com', 'studentuser', '', '2024-05-24', '66521013cc1db.png', 'C:\\laragon\\www\\my-boiler-plate-laravel\\storage\\app/storage/uploads/66521013cc1db.png', 3, NULL, 1, '2012-9-630-54', '', 'XII', 1, NULL, '2024-05-25 10:21:39', '2024-06-25 23:39:25'),
(10, 18, 'John Miller Vice', 'kansas', 'oklahoma', 'USA', '44 tha araod', '01986544545', 'johnmiller@gmaillcom', 'skype.id', 'Smith', '2024-06-22', '6680b1b1a9e9a.png', 'C:\\laragon\\www\\student-extra-curricular-activities\\storage\\app/storage/uploads/6680b1b1a9e9a.png', 1, NULL, 1, '', '', 'VIII', 3, NULL, '2024-06-29 19:15:29', '2024-06-30 09:50:11'),
(11, 20, 'Alimul Islam', 'Dhaka', 'Dhaka', 'Bangladesh', 'House no :44, Road No: 05, DIT Project Merul Badda,', '01658984548', 'parentuser1@gmail.com', 'skypeId:###344', 'BlackSmith', '2024-06-20', '66818a52051b1.png', 'C:\\laragon\\www\\student-extra-curricular-activities\\storage\\app/storage/uploads/66818a52051b1.png', 1, NULL, 1, '', '', 'VIII', 0, NULL, '2024-06-30 10:39:46', '2024-06-30 10:39:46'),
(12, 21, 'Zia Rios', 'Laboris duis cupidit', 'Provident incidunt', 'Neque ullam nisi err', 'In consequat Laboru', '+1 (508) 583-8674', 'parent22@mailinator.com', 'Dolor nisi officiis', 'Distinctio Ex verit', '1991-01-22', '6682dafa66a20.jpeg', 'C:\\laragon\\www\\student-extra-curricular-activities\\storage\\app/storage/uploads/6682dafa66a20.jpeg', 1, NULL, 1, '', '', 'VIII', 0, NULL, '2024-07-01 10:36:10', '2024-07-01 10:36:10'),
(13, 22, 'Susan Randall', 'Adipisicing cupidata', 'Asperiores saepe exe', 'Aut architecto incid', 'Enim distinctio Qua', '+1 (586) 588-3943', 'student22@gmail.com', 'Quae vitae quis aut', '', '1987-08-26', '6682dba215431.jpg', 'C:\\laragon\\www\\student-extra-curricular-activities\\storage\\app/storage/uploads/6682dba215431.jpg', 3, NULL, 1, 'Vel aut dolore labor', '', 'VIII', 2, NULL, '2024-07-01 10:38:58', '2024-07-01 10:55:21'),
(14, 23, 'Minhaz', 'dhaka', 'dhaka', 'Bangladesh', 'merul badda', '01675321610', 'student23@gmail.com', 'testskype', '', '2024-07-04', '6682e40498e63.jpg', 'C:\\laragon\\www\\student-extra-curricular-activities\\storage\\app/storage/uploads/6682e40498e63.jpg', 3, NULL, 1, '2012-1-60-021', '', 'VIII', 2, NULL, '2024-07-01 11:14:44', '2024-07-01 11:24:30'),
(15, 24, 'Abdul Karim', 'Dhaka', 'Dhaka', 'Bangladesh', 'Merul Badda', '01956321610', 'abdulkarim@gmail.com', 'skype:dfdf', 'Plumber', '2024-07-06', '6682e5ba9ec72.jpg', 'C:\\laragon\\www\\student-extra-curricular-activities\\storage\\app/storage/uploads/6682e5ba9ec72.jpg', 1, NULL, 1, '', '', 'VIII', 0, NULL, '2024-07-01 11:22:02', '2024-07-01 11:22:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_messages`
--
ALTER TABLE `communication_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communication_messages_sender_id_foreign` (`sender_id`),
  ADD KEY `communication_messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `enrolled_user_activities`
--
ALTER TABLE `enrolled_user_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollments_user_id_foreign` (`user_id`),
  ADD KEY `enrollments_activity_id_foreign` (`activity_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `parent_accesses`
--
ALTER TABLE `parent_accesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_accesses_parent_user_id_foreign` (`parent_user_id`),
  ADD KEY `parent_accesses_child_user_id_foreign` (`child_user_id`);

--
-- Indexes for table `parent_childs`
--
ALTER TABLE `parent_childs`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sidbar_menus`
--
ALTER TABLE `sidbar_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user_profiles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `communication_messages`
--
ALTER TABLE `communication_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrolled_user_activities`
--
ALTER TABLE `enrolled_user_activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_accesses`
--
ALTER TABLE `parent_accesses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_childs`
--
ALTER TABLE `parent_childs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sidbar_menus`
--
ALTER TABLE `sidbar_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `communication_messages`
--
ALTER TABLE `communication_messages`
  ADD CONSTRAINT `communication_messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `communication_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parent_accesses`
--
ALTER TABLE `parent_accesses`
  ADD CONSTRAINT `parent_accesses_child_user_id_foreign` FOREIGN KEY (`child_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `parent_accesses_parent_user_id_foreign` FOREIGN KEY (`parent_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
