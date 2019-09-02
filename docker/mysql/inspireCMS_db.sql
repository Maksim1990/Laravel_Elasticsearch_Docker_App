-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2019 at 11:46 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inspireCMS_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `app_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `use_admin_ftp_credentials` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `use_remote_server` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `remote_server` text COLLATE utf8mb4_unicode_ci,
  `use_elasticsearch` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `user_id`, `app_version`, `app_name`, `app_status`, `use_admin_ftp_credentials`, `use_remote_server`, `remote_server`, `use_elasticsearch`, `created_at`, `updated_at`) VALUES
(1, 1, '1.0.2', NULL, 'Y', 'Y', 'Y', 'http://185.177.59.147/inspirecms', 'N', '2018-08-10 22:00:00', '2018-08-28 15:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `background_type` enum('color','image') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'color',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `block_id`, `user_id`, `background_type`, `color`, `image_path`, `image_name`, `image_size`, `image_extension`, `created_at`, `updated_at`) VALUES
(1, '2', 1, 'color', '#ffffff', 'upload/1/background/1534603815running.jpg', '1534603815running.jpg', '18618', 'jpg', '2018-08-18 12:38:56', '2018-09-07 09:30:39'),
(2, 'footer', 1, 'color', '#000000', NULL, NULL, NULL, NULL, '2018-09-07 09:33:00', '2019-01-02 21:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `block_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_custom_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortorder` int(10) UNSIGNED NOT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `user_id`, `block_id`, `block_custom_id`, `sortorder`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'block1_1', 'home', 1, 'Y', '2018-06-24 21:00:00', '2018-06-24 21:00:00'),
(2, 1, 'block2_1', 'about', 2, 'Y', '2018-06-24 21:00:00', '2018-06-24 21:00:00'),
(3, 1, 'block3_1', 'block3', 3, 'Y', '2018-06-24 21:00:00', '2018-08-06 04:24:26'),
(4, 1, 'block4_1', 'block4', 4, 'Y', '2018-06-24 21:00:00', '2018-08-06 04:24:26'),
(5, 1, 'block5_1', 'portfolio', 5, 'Y', '2018-06-24 21:00:00', '2018-06-24 21:00:00'),
(6, 1, 'block6_1', 'contact', 6, 'Y', '2018-06-24 21:00:00', '2018-06-24 21:00:00'),
(7, 1, 'block7_1', 'block7', 7, 'Y', '2018-06-24 21:00:00', '2018-06-24 21:00:00'),
(10, 2, 'block1_2', 'home', 1, 'Y', '2018-08-28 15:11:06', '2019-04-25 14:16:12'),
(11, 2, 'block2_2', 'about', 2, 'Y', '2018-08-28 15:11:06', '2019-04-25 14:16:12'),
(12, 2, 'block3_2', 'block3', 3, 'Y', '2018-08-28 15:11:06', '2019-04-25 14:16:12'),
(13, 2, 'block4_2', 'block4', 4, 'Y', '2018-08-28 15:11:06', '2019-04-25 14:16:12'),
(14, 2, 'block5_2', 'portfolio', 5, 'Y', '2018-08-28 15:11:06', '2019-04-25 14:16:12'),
(15, 2, 'block6_2', 'contact', 6, 'Y', '2018-08-28 15:11:06', '2019-04-25 14:16:12'),
(16, 2, 'block7_2', 'block7', 7, 'Y', '2018-08-28 15:11:07', '2019-04-25 14:16:12'),
(17, 2, 'block8_2', 'block8', 0, 'N', '2018-08-28 15:20:45', '2018-08-28 15:20:45'),
(18, 1, 'block8_1', 'block8', 0, 'N', '2018-09-07 08:14:35', '2018-09-07 08:14:35'),
(19, 3, 'block1_3', 'home', 1, 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(20, 3, 'block2_3', 'about', 2, 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(21, 3, 'block3_3', 'block3', 3, 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(22, 3, 'block4_3', 'block4', 4, 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(23, 3, 'block5_3', 'portfolio', 5, 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(24, 3, 'block6_3', 'contact', 6, 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(25, 3, 'block7_3', 'block7', 7, 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(26, 4, 'block1_4', 'home', 1, 'Y', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(27, 4, 'block2_4', 'about', 2, 'Y', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(28, 4, 'block3_4', 'block3', 3, 'Y', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(29, 4, 'block4_4', 'block4', 4, 'Y', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(30, 4, 'block5_4', 'portfolio', 5, 'Y', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(31, 4, 'block6_4', 'contact', 6, 'Y', '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(32, 4, 'block7_4', 'block7', 7, 'Y', '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(33, 5, 'block1_5', 'home', 1, 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(34, 5, 'block2_5', 'about', 2, 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(35, 5, 'block3_5', 'block3', 3, 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(36, 5, 'block4_5', 'block4', 4, 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(37, 5, 'block5_5', 'portfolio', 5, 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(38, 5, 'block6_5', 'contact', 6, 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(39, 5, 'block7_5', 'block7', 7, 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(40, 6, 'block1_6', 'home', 1, 'Y', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(41, 6, 'block2_6', 'about', 2, 'Y', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(42, 6, 'block3_6', 'block3', 3, 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(43, 6, 'block4_6', 'block4', 4, 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(44, 6, 'block5_6', 'portfolio', 5, 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(45, 6, 'block6_6', 'contact', 6, 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(46, 6, 'block7_6', 'block7', 7, 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(47, 7, 'block1_7', 'home', 1, 'Y', '2018-10-16 18:28:41', '2018-10-16 18:32:23'),
(48, 7, 'block2_7', 'about', 2, 'Y', '2018-10-16 18:28:41', '2018-10-16 18:32:23'),
(49, 7, 'block3_7', 'block3', 3, 'Y', '2018-10-16 18:28:41', '2018-10-16 18:32:23'),
(50, 7, 'block4_7', 'block4', 5, 'Y', '2018-10-16 18:28:41', '2018-10-16 18:32:23'),
(51, 7, 'block5_7', 'portfolio', 4, 'Y', '2018-10-16 18:28:41', '2018-10-16 18:32:23'),
(52, 7, 'block6_7', 'contact', 6, 'Y', '2018-10-16 18:28:41', '2018-10-16 18:32:23'),
(53, 7, 'block7_7', 'block7', 7, 'Y', '2018-10-16 18:28:41', '2018-10-16 18:32:23'),
(54, 8, 'block1_8', 'home', 1, 'Y', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(55, 8, 'block2_8', 'about', 2, 'Y', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(56, 8, 'block3_8', 'block3', 3, 'Y', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(57, 8, 'block4_8', 'block4', 4, 'Y', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(58, 8, 'block5_8', 'portfolio', 5, 'Y', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(59, 8, 'block6_8', 'contact', 6, 'Y', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(60, 8, 'block7_8', 'block7', 7, 'Y', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(61, 9, 'block1_9', 'home', 1, 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(62, 9, 'block2_9', 'about', 2, 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(63, 9, 'block3_9', 'block3', 3, 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(64, 9, 'block4_9', 'block4', 4, 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(65, 9, 'block5_9', 'portfolio', 5, 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(66, 9, 'block6_9', 'contact', 6, 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(67, 9, 'block7_9', 'block7', 7, 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(68, 10, 'block1_10', 'home', 1, 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(69, 10, 'block2_10', 'about', 2, 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(70, 10, 'block3_10', 'block3', 3, 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(71, 10, 'block4_10', 'block4', 4, 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(72, 10, 'block5_10', 'portfolio', 5, 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(73, 10, 'block6_10', 'contact', 6, 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(74, 10, 'block7_10', 'block7', 7, 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(75, 11, 'block1_11', 'home', 1, 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(76, 11, 'block2_11', 'about', 2, 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(77, 11, 'block3_11', 'block3', 3, 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(78, 11, 'block4_11', 'block4', 4, 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(79, 11, 'block5_11', 'portfolio', 5, 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(80, 11, 'block6_11', 'contact', 6, 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(81, 11, 'block7_11', 'block7', 7, 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `block_contents`
--

CREATE TABLE `block_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `block_contents`
--

INSERT INTO `block_contents` (`id`, `content`, `block_template`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2018-06-24 21:00:00', '2018-07-25 08:09:39'),
(2, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\n<p class=\"w3-center\"><em>I love photography</em></p>\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<div class=\"w3-row\" style=\"cursor: pointer;\">\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\n<p><strong>My Name</strong></p>\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n</div>\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\n<p class=\"w3-wide\">Photography</p>\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\n</div>\n<p class=\"w3-wide\">Web Design</p>\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\n</div>\n<p class=\"w3-wide\">Photoshop</p>\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\n</div>\n<hr />', 'default', '2018-06-24 21:00:00', '2018-07-27 17:20:27'),
(3, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2018-06-24 21:00:00', '2018-06-24 21:00:00'),
(4, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2018-06-24 21:00:00', '2018-06-28 08:43:28'),
(5, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2018-06-24 21:00:00', '2018-07-27 10:07:29'),
(6, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2018-06-24 21:00:00', '2018-06-24 21:00:00'),
(7, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2018-06-24 21:00:00', '2018-06-24 21:00:00'),
(10, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(11, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(12, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(13, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(14, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(15, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(16, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2018-08-28 15:11:07', '2018-08-28 15:11:07'),
(17, '<div></div>', 'custom_div', '2018-08-28 15:20:45', '2018-08-28 15:20:45'),
(18, '<div></div>', 'custom_div', '2018-09-07 08:14:35', '2018-09-07 08:14:35'),
(19, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(20, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(21, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(22, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(23, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(24, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(25, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(26, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(27, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(28, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(29, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(30, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(31, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(32, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(33, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(34, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(35, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(36, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(37, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(38, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(39, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(40, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(41, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(42, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(43, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(44, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(45, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(46, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(47, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(48, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(49, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(50, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2018-10-16 18:28:41', '2018-10-16 18:28:41');
INSERT INTO `block_contents` (`id`, `content`, `block_template`, `created_at`, `updated_at`) VALUES
(51, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(52, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(53, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(54, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(55, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(56, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(57, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(58, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(59, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(60, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(61, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(62, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(63, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(64, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(65, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(66, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(67, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(68, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(69, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(70, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(71, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(72, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(73, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(74, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(75, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(76, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(77, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(78, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(79, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(80, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(81, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', '2019-05-11 03:51:12', '2019-05-11 03:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `block_defaults`
--

CREATE TABLE `block_defaults` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block_custom_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `block_defaults`
--

INSERT INTO `block_defaults` (`id`, `content`, `block_template`, `block_id`, `block_custom_id`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"w3-display-middle\" style=\"white-space:nowrap;\"><span class=\"w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity\"> @lang(website.header_name) <span class=\"w3-hide-small\">WEBSITE This is a titles 5 @lang(website.new_name) </span></span></div>\r\n<hr />', 'default', 'block1', 'home', '2018-08-06 21:00:00', '2018-08-06 21:00:00'),
(2, '<h3 class=\"w3-center\">ABOUT&nbsp; ME &amp;&nbsp; YOU</h3>\r\n<p class=\"w3-center\"><em>I love photography</em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../../public/storage/upload/1/1_2_1532722753_Test-Logo-Circle-black-transparent.png\" alt=\"\" width=\"100\" height=\"100\" /></em></p>\r\n<p class=\"w3-center\"><em><img src=\"../../public/storage/upload/1/1_2_1532722502_happy-birthday-wishes01.png\" alt=\"\" width=\"200\" height=\"133\" /></em></p>\r\n<p>We have created a fictional \"personal\" website/blog, and our fictional character is a hobby photographer. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<div class=\"w3-row\" style=\"cursor: pointer;\">\r\n<div class=\"w3-col m6 w3-center w3-padding-large\" style=\"cursor: pointer;\">\r\n<p><strong>My Name</strong></p>\r\n<br /><img class=\"w3-round w3-image w3-opacity w3-hover-opacity-off\" src=\"../../storage/img/avatar_hat.jpg\" alt=\"Photo of Me\" width=\"500\" height=\"333\" /></div>\r\n<div class=\"w3-col m6 w3-hide-small w3-padding-large\" style=\"cursor: pointer;\">\r\n<p>Welcome to my website. I am lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n</div>\r\n</div>\r\n<p class=\"w3-large w3-center w3-padding-16\">Im really good at:</p>\r\n<p class=\"w3-wide\">Photography</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 90%; cursor: pointer;\">90%</div>\r\n</div>\r\n<p class=\"w3-wide\">Web Design</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 85%; cursor: pointer;\">85%</div>\r\n</div>\r\n<p class=\"w3-wide\">Photoshop</p>\r\n<div class=\"w3-light-grey\" style=\"cursor: pointer;\">\r\n<div class=\"w3-container w3-padding-small w3-dark-grey w3-center\" style=\"width: 99%; cursor: pointer;\">98%</div>\r\n</div>\r\n<hr />', 'default', 'block2', 'about', '2018-08-06 21:00:00', '2018-08-06 21:00:00'),
(3, '  <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">14+</span><br>\r\n        Partners\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">55+</span><br>\r\n        Projects Done\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">89+</span><br>\r\n        Happy Clients\r\n    </div>\r\n    <div class=\"w3-quarter w3-section\">\r\n        <span class=\"w3-xlarge\">150+</span><br>\r\n        Meetings\r\n    </div>', 'default', 'block3', 'block3', '2018-08-06 21:00:00', '2018-08-06 21:00:00'),
(4, '<h1 class=\"w3-display-middle\" style=\"cursor: pointer;\" data-cursor=\"pointer\"><span class=\"w3-xxlarge w3-text-white w3-wide\"><span style=\"text-decoration: line-through;\">MY PORTFOLIO</span></span></h1>', 'default', 'block4', 'block4', '2018-08-06 21:00:00', '2018-08-06 21:00:00'),
(5, '<h3 class=\"w3-center\">MY WORKS</h3>\r\n<p class=\"w3-center\"><em>Here are some of my latest lorem work ipsum tipsum.<br />Click on the images to make them bigger</em></p>\r\n<p> </p>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p1.jpg\" alt=\"The mist over the mountains\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p2.jpg\" alt=\"Coffee beans\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p3.jpg\" alt=\"Bear closeup\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p4.jpg\" alt=\"Quiet ocean\" /></div>\r\n</div>\r\n<div class=\"w3-row-padding w3-center w3-section image_gallery\">\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p5.jpg\" alt=\"The mist\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p6.jpg\" alt=\"My beloved typewriter\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p7.jpg\" alt=\"Empty ghost train\" /></div>\r\n<div class=\"w3-col m3\"><img class=\"w3-hover-opacity\" src=\"../../storage/img/p8.jpg\" alt=\"Sailing\" /></div>\r\nLOAD MORE</div>', 'default', 'block5', 'portfolio', '2018-08-06 21:00:00', '2018-08-06 21:00:00'),
(6, '    <h3 class=\"w3-center\">WHERE I WORK</h3>\n    <p class=\"w3-center\"><em>I\'d love your feedback!</em></p>\n\n    <div class=\"w3-row w3-padding-32 w3-section\">\n        <div class=\"w3-col m8 w3-panel\">\n            <div class=\"w3-large w3-margin-bottom\">\n                <i class=\"fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Chicago, US<br>\n                <i class=\"fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Phone: +00 151515<br>\n                <i class=\"fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right\"></i> Email: mail@mail.com<br>\n            </div>\n            <p>Swing by for a cup of <i class=\"fa fa-coffee\"></i>, or leave me a note:</p>\n          \n        </div>\n    </div>', 'default', 'block6', 'contact', '2018-08-06 21:00:00', '2018-08-06 21:00:00'),
(7, '<div id=\"modal01\" class=\"w3-modal w3-black\" onclick=\"this.style.display=\'none\'\">\r\n        <span class=\"w3-button w3-large w3-black w3-display-topright\" title=\"Close Modal Image\"><i\r\n                    class=\"fa fa-remove\"></i></span>\r\n    <div class=\"w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64\">\r\n        <img id=\"img01\" class=\"w3-image\">\r\n        <p id=\"caption\" class=\"w3-opacity w3-large\"></p>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div class=\"bgimg-3 w3-display-container w3-opacity-min\">\r\n    <div class=\"w3-display-middle\">\r\n        <span class=\"w3-xxlarge w3-text-white w3-wide\">CONTACT</span>\r\n    </div>\r\n</div>', 'default', 'block7', 'block7', '2018-08-06 21:00:00', '2018-08-06 21:00:00'),
(8, '<div></div>', 'custom_div', '', NULL, '2018-08-20 22:00:00', '2018-08-20 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `block_pivot`
--

CREATE TABLE `block_pivot` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `block_content_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `block_pivot`
--

INSERT INTO `block_pivot` (`id`, `block_id`, `block_content_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 5, 5, NULL, NULL),
(6, 6, 6, NULL, NULL),
(7, 7, 7, NULL, NULL),
(10, 10, 10, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(11, 11, 11, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(12, 12, 12, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(13, 13, 13, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(14, 14, 14, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(15, 15, 15, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(16, 16, 16, '2018-08-28 15:11:07', '2018-08-28 15:11:07'),
(17, 17, 17, '2018-08-28 15:20:45', '2018-08-28 15:20:45'),
(18, 18, 18, '2018-09-07 08:14:35', '2018-09-07 08:14:35'),
(19, 19, 19, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(20, 20, 20, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(21, 21, 21, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(22, 22, 22, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(23, 23, 23, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(24, 24, 24, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(25, 25, 25, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(26, 26, 26, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(27, 27, 27, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(28, 28, 28, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(29, 29, 29, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(30, 30, 30, '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(31, 31, 31, '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(32, 32, 32, '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(33, 33, 33, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(34, 34, 34, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(35, 35, 35, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(36, 36, 36, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(37, 37, 37, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(38, 38, 38, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(39, 39, 39, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(40, 40, 40, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(41, 41, 41, '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(42, 42, 42, '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(43, 43, 43, '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(44, 44, 44, '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(45, 45, 45, '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(46, 46, 46, '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(47, 47, 47, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(48, 48, 48, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(49, 49, 49, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(50, 50, 50, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(51, 51, 51, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(52, 52, 52, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(53, 53, 53, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(54, 54, 54, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(55, 55, 55, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(56, 56, 56, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(57, 57, 57, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(58, 58, 58, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(59, 59, 59, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(60, 60, 60, '2018-11-15 17:36:29', '2018-11-15 17:36:29'),
(61, 61, 61, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(62, 62, 62, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(63, 63, 63, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(64, 64, 64, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(65, 65, 65, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(66, 66, 66, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(67, 67, 67, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(68, 68, 68, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(69, 69, 69, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(70, 70, 70, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(71, 71, 71, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(72, 72, 72, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(73, 73, 73, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(74, 74, 74, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(75, 75, 75, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(76, 76, 76, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(77, 77, 77, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(78, 78, 78, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(79, 79, 79, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(80, 80, 80, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(81, 81, 81, '2019-05-11 03:51:12', '2019-05-11 03:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'af', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(2, 'Albania', 'al', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(3, 'Algeria', 'dz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(4, 'Andorra', 'ad', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(5, 'Angola', 'ao', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(6, 'Anguilla', 'ai', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(7, 'Antigua and Barbuda', 'ag', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(8, 'Argentina', 'ar', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(9, 'Armenia', 'am', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(10, 'Aruba', 'aw', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(11, 'Australia', 'au', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(12, 'Austria', 'at', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(13, 'Azerbaijan', 'az', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(14, 'Bahamas', 'bs', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(15, 'Bahrain', 'bh', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(16, 'Bangladesh', 'bd', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(17, 'Barbados', 'bb', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(18, 'Belarus', 'by', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(19, 'Belgium', 'be', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(20, 'Belize', 'bz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(21, 'Benin', 'bj', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(22, 'Bermuda', 'bm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(23, 'Bhutan', 'bt', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(24, 'Bolivia', 'bo', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(25, 'Bosnia and Herzegovina', 'ba', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(26, 'Botswana', 'bw', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(27, 'Brazil', 'br', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(28, 'Brunei Darussalam', 'bn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(29, 'Bulgaria', 'bg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(30, 'Burkina Faso', 'bf', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(31, 'Burundi', 'bi', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(32, 'Cambodia', 'kh', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(33, 'Cameroon', 'cm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(34, 'Canada', 'ca', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(35, 'Cape Verde', 'cv', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(36, 'Cayman Islands', 'ky', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(37, 'Central African Republic', 'cf', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(38, 'Chad', 'td', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(39, 'Chile', 'cl', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(40, 'China', 'cn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(41, 'Christmas Island', 'cx', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(42, 'Cocos (Keeling) Islands', 'cc', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(43, 'Colombia', 'co', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(44, 'Comoros', 'km', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(45, 'Congo', 'cg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(46, 'Cook Islands', 'ck', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(47, 'Costa Rica', 'cr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(48, 'Cote D\'Ivoire (Ivory Coast)', 'ci', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(49, 'Croatia (Hrvatska)', 'hr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(50, 'Cuba', 'cu', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(51, 'Cyprus', 'cy', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(52, 'Czech Republic', 'cz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(53, 'Democratic Republic of the Congo', 'cd', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(54, 'Denmark', 'dk', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(55, 'Djibouti', 'dj', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(56, 'Dominica', 'dm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(57, 'Dominican Republic', 'do', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(58, 'Ecuador', 'ec', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(59, 'Egypt', 'eg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(60, 'El Salvador', 'sv', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(61, 'Equatorial Guinea', 'gq', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(62, 'Eritrea', 'er', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(63, 'Estonia', 'ee', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(64, 'Ethiopia', 'et', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(65, 'Falkland Islands (Malvinas)', 'fk', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(66, 'Faroe Islands', 'fo', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(67, 'Federated States of Micronesia', 'fm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(68, 'Fiji', 'fj', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(69, 'Finland', 'fi', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(70, 'France', 'fr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(71, 'French Guiana', 'gf', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(72, 'French Polynesia', 'pf', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(73, 'French Southern Territories', 'tf', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(74, 'Gabon', 'ga', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(75, 'Gambia', 'gm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(76, 'Georgia', 'ge', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(77, 'Germany', 'de', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(78, 'Ghana', 'gh', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(79, 'Gibraltar', 'gi', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(80, 'Great Britain (UK)', 'gb', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(81, 'Greece', 'gr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(82, 'Greenland', 'gl', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(83, 'Grenada', 'gd', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(84, 'Guadeloupe', 'gp', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(85, 'Guatemala', 'gt', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(86, 'Guinea', 'gn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(87, 'Guinea-Bissau', 'gw', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(88, 'Guyana', 'gy', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(89, 'Haiti', 'ht', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(90, 'Honduras', 'hn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(91, 'Hong Kong', 'hk', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(92, 'Hungary', 'hu', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(93, 'Iceland', 'is', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(94, 'India', 'in', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(95, 'Indonesia', 'id', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(96, 'Iran', 'ir', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(97, 'Iraq', 'iq', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(98, 'Ireland', 'ie', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(99, 'Israel', 'il', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(100, 'Italy', 'it', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(101, 'Jamaica', 'jm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(102, 'Japan', 'jp', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(103, 'Jordan', 'jo', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(104, 'Kazakhstan', 'kz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(105, 'Kenya', 'ke', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(106, 'Kiribati', 'ki', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(107, 'Korea (North)', 'kp', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(108, 'Korea (South)', 'kr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(109, 'Kuwait', 'kw', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(110, 'Kyrgyzstan', 'kg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(111, 'Laos', 'la', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(112, 'Latvia', 'lv', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(113, 'Lebanon', 'lb', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(114, 'Lesotho', 'ls', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(115, 'Liberia', 'lr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(116, 'Libya', 'ly', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(117, 'Liechtenstein', 'li', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(118, 'Lithuania', 'lt', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(119, 'Luxembourg', 'lu', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(120, 'Macao', 'mo', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(121, 'Macedonia', 'mk', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(122, 'Madagascar', 'mg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(123, 'Malawi', 'mw', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(124, 'Malaysia', 'my', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(125, 'Maldives', 'mv', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(126, 'Mali', 'ml', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(127, 'Malta', 'mt', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(128, 'Marshall Islands', 'mh', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(129, 'Martinique', 'mq', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(130, 'Mauritania', 'mr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(131, 'Mauritius', 'mu', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(132, 'Mayotte', 'yt', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(133, 'Mexico', 'mx', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(134, 'Moldova', 'md', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(135, 'Monaco', 'mc', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(136, 'Mongolia', 'mn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(137, 'Montserrat', 'ms', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(138, 'Morocco', 'ma', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(139, 'Mozambique', 'mz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(140, 'Myanmar', 'mm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(141, 'Namibia', 'na', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(142, 'Nauru', 'nr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(143, 'Nepal', 'np', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(144, 'Netherlands', 'nl', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(145, 'Netherlands Antilles', 'an', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(146, 'New Caledonia', 'nc', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(147, 'New Zealand (Aotearoa)', 'nz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(148, 'Nicaragua', 'ni', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(149, 'Niger', 'ne', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(150, 'Nigeria', 'ng', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(151, 'Niue', 'nu', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(152, 'Norfolk Island', 'nf', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(153, 'Northern Mariana Islands', 'mp', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(154, 'Norway', 'no', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(155, 'NULL', 'gg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(156, 'Oman', 'om', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(157, 'Pakistan', 'pk', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(158, 'Palau', 'pw', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(159, 'Palestinian Territory', 'ps', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(160, 'Panama', 'pa', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(161, 'Papua New Guinea', 'pg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(162, 'Paraguay', 'py', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(163, 'Peru', 'pe', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(164, 'Philippines', 'ph', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(165, 'Pitcairn', 'pn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(166, 'Poland', 'pl', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(167, 'Portugal', 'pt', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(168, 'Qatar', 'qa', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(169, 'Reunion', 're', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(170, 'Romania', 'ro', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(171, 'Russian Federation', 'ru', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(172, 'Rwanda', 'rw', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(173, 'S. Georgia and S. Sandwich Islands', 'gs', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(174, 'Saint Helena', 'sh', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(175, 'Saint Kitts and Nevis', 'kn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(176, 'Saint Lucia', 'lc', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(177, 'Saint Pierre and Miquelon', 'pm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(178, 'Saint Vincent and the Grenadines', 'vc', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(179, 'Samoa', 'ws', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(180, 'San Marino', 'sm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(181, 'Sao Tome and Principe', 'st', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(182, 'Saudi Arabia', 'sa', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(183, 'Senegal', 'sn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(184, 'Seychelles', 'sc', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(185, 'Sierra Leone', 'sl', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(186, 'Singapore', 'sg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(187, 'Slovakia', 'sk', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(188, 'Slovenia', 'si', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(189, 'Solomon Islands', 'sb', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(190, 'Somalia', 'so', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(191, 'South Africa', 'za', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(192, 'Spain', 'es', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(193, 'Sri Lanka', 'lk', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(194, 'Sudan', 'sd', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(195, 'Suriname', 'sr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(196, 'Svalbard and Jan Mayen', 'sj', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(197, 'Swaziland', 'sz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(198, 'Sweden', 'se', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(199, 'Switzerland', 'ch', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(200, 'Syria', 'sy', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(201, 'Taiwan', 'tw', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(202, 'Tajikistan', 'tj', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(203, 'Tanzania', 'tz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(204, 'Thailand', 'th', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(205, 'Togo', 'tg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(206, 'Tokelau', 'tk', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(207, 'Tonga', 'to', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(208, 'Trinidad and Tobago', 'tt', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(209, 'Tunisia', 'tn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(210, 'Turkey', 'tr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(211, 'Turkmenistan', 'tm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(212, 'Turks and Caicos Islands', 'tc', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(213, 'Tuvalu', 'tv', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(214, 'Uganda', 'ug', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(215, 'Ukraine', 'ua', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(216, 'United Arab Emirates', 'ae', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(217, 'United States of America', 'us', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(218, 'Uruguay', 'uy', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(219, 'Uzbekistan', 'uz', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(220, 'Vanuatu', 'vu', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(221, 'Venezuela', 've', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(222, 'Viet Nam', 'vn', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(223, 'Virgin Islands (British)', 'vg', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(224, 'Virgin Islands (U.S.)', 'vi', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(225, 'Wallis and Futuna', 'wf', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(226, 'Western Sahara', 'eh', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(227, 'Yemen', 'ye', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(228, 'Zaire (former)', 'zr', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(229, 'Zambia', 'zm', '2018-06-18 09:50:17', '2018-06-18 09:50:17'),
(230, 'Zimbabwe', 'zw', '2018-06-18 09:50:17', '2018-06-18 09:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `user_id`, `path`, `name`, `size`, `extension`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/1/documents/1534543638_Exopera_Laravel.docx', '1534543638_Exopera_Laravel.docx', '20396', 'docx', '2018-08-17 20:07:18', '2018-08-17 20:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `path`, `created_at`, `updated_at`) VALUES
(3, 2, '153546574034701_man_400x400.png', '2018-08-28 15:15:40', '2018-08-28 15:15:40'),
(4, 1, '1536304316eQWu4AYHL70.jpg', '2018-09-07 08:11:56', '2018-09-07 08:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `user_id`, `name`, `native`, `native_en`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'English', 'English', 'Y', '2018-07-29 07:27:49', '2018-07-29 07:58:07'),
(2, 1, 'fr', 'français', 'French', 'Y', '2018-07-29 07:27:49', '2018-07-29 07:58:07'),
(3, 1, 'ru', 'русский', 'Russian', 'Y', '2018-07-29 07:27:49', '2018-07-29 07:58:07'),
(4, 1, 'th', 'ไทย', 'Thai', 'Y', '2018-07-29 07:27:49', '2018-07-29 07:58:07'),
(5, 1, 'lo', 'ລາວ', 'Lao', 'N', '2018-07-29 07:34:48', '2018-07-29 08:00:36'),
(6, 1, 'ko', '한국어', 'Korean', 'N', '2018-07-29 08:00:36', '2018-08-11 17:30:30'),
(7, 1, 'ace', 'Aceh', 'Achinese', 'N', '2018-07-31 05:22:09', '2018-08-11 17:30:30'),
(8, 1, 'af', 'Afrikaans', 'Afrikaans', 'N', '2018-08-06 06:26:30', '2018-08-06 06:26:50'),
(11, 2, 'en', 'English', 'English', 'Y', '2018-08-28 15:11:07', '2018-08-28 15:11:07'),
(12, 2, 'fr', 'Français', 'French', 'Y', '2018-08-28 15:11:07', '2018-08-28 15:11:07'),
(13, 2, 'ru', 'Русский', 'Russian', 'Y', '2018-08-28 15:11:07', '2018-08-28 15:11:07'),
(14, 2, 'th', 'ไทย', 'Thai', 'Y', '2018-08-28 15:11:07', '2018-08-28 15:11:07'),
(15, 3, 'en', 'English', 'English', 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(16, 3, 'fr', 'Français', 'French', 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(17, 3, 'ru', 'Русский', 'Russian', 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(18, 3, 'th', 'ไทย', 'Thai', 'Y', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(19, 4, 'en', 'English', 'English', 'Y', '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(20, 4, 'fr', 'Français', 'French', 'Y', '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(21, 4, 'ru', 'Русский', 'Russian', 'Y', '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(22, 4, 'th', 'ไทย', 'Thai', 'Y', '2018-09-19 23:40:48', '2018-09-19 23:40:48'),
(23, 5, 'en', 'English', 'English', 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(24, 5, 'fr', 'Français', 'French', 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(25, 5, 'ru', 'Русский', 'Russian', 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(26, 5, 'th', 'ไทย', 'Thai', 'Y', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(27, 6, 'en', 'English', 'English', 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(28, 6, 'fr', 'Français', 'French', 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(29, 6, 'ru', 'Русский', 'Russian', 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(30, 6, 'th', 'ไทย', 'Thai', 'Y', '2018-09-26 20:01:51', '2018-09-26 20:01:51'),
(31, 7, 'en', 'English', 'English', 'Y', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(32, 7, 'fr', 'Français', 'French', 'Y', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(33, 7, 'ru', 'Русский', 'Russian', 'Y', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(34, 7, 'th', 'ไทย', 'Thai', 'Y', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(35, 8, 'en', 'English', 'English', 'Y', '2018-11-15 17:36:29', '2018-11-15 17:36:29'),
(36, 8, 'fr', 'Français', 'French', 'Y', '2018-11-15 17:36:29', '2018-11-15 17:36:29'),
(37, 8, 'ru', 'Русский', 'Russian', 'Y', '2018-11-15 17:36:29', '2018-11-15 17:36:29'),
(38, 8, 'th', 'ไทย', 'Thai', 'Y', '2018-11-15 17:36:29', '2018-11-15 17:36:29'),
(39, 9, 'en', 'English', 'English', 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(40, 9, 'fr', 'Français', 'French', 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(41, 9, 'ru', 'Русский', 'Russian', 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(42, 9, 'th', 'ไทย', 'Thai', 'Y', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(43, 10, 'en', 'English', 'English', 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(44, 10, 'fr', 'Français', 'French', 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(45, 10, 'ru', 'Русский', 'Russian', 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(46, 10, 'th', 'ไทย', 'Thai', 'Y', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(47, 11, 'en', 'English', 'English', 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(48, 11, 'fr', 'Français', 'French', 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(49, 11, 'ru', 'Русский', 'Russian', 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(50, 11, 'th', 'ไทย', 'Thai', 'Y', '2019-05-11 03:51:12', '2019-05-11 03:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `language_lines`
--

CREATE TABLE `language_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_lines`
--

INSERT INTO `language_lines` (`id`, `user_id`, `group`, `key`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'website', 'header_name', '{\"en\":\"English header\",\"fr\":\"fhrth\",\"ru\":\"wefwe\",\"th\":\"wfwefwe\",\"ko\":\"ttt\",\"ace\":null}', '2018-07-27 08:25:32', '2018-07-31 05:50:13'),
(3, 1, 'website', 'new_name', '{\"en\":\"New name EN\",\"fr\":\"French\",\"ru\":null,\"th\":\"test\",\"ko\":\"New name KOR\",\"ace\":null}', '2018-07-27 08:34:07', '2019-03-16 15:26:16'),
(5, 2, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(6, 3, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(7, 4, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(8, 5, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(9, 6, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(10, 7, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(11, 8, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(12, 9, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(13, 10, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(14, 11, 'website', 'title', '{\"en\":\"Inspire CMS EN\",\"fr\":\"Inspire CMS FR\",\"ru\":\"Inspire CMS RU\",\"th\":\"Inspire CMS TH\"}', '2019-05-11 03:51:12', '2019-05-11 03:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `with_queue` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `sent` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `with_content` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `user_id`, `title`, `content`, `from`, `to`, `active`, `with_queue`, `sent`, `with_content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test mail!', 'Sending email with Laravel mailable', 'maksim@gmail.com', 'maxim.narushevich@cactussoft.biz', 'Y', 'N', 'Y', 'N', '2018-08-08 10:45:36', '2018-08-08 10:45:36'),
(2, 1, 'Test mail with image', 'Laravel email with attachment', 'maksim@gmail.com', 'maxim.narushevich@cactussoft.biz', 'Y', 'N', 'Y', 'N', '2018-08-08 11:17:54', '2018-08-08 11:17:54'),
(6, 1, 'Test mail from VPS server', 'TEST mail', 'maksim@gmail.com', 'maxim.narushevich@cactussoft.biz', 'Y', 'N', 'Y', 'N', '2018-08-09 11:33:32', '2018-08-09 11:33:34'),
(7, 1, 'Test mail!', 'MAIL from VPS server', 'maksim@gmail.com', 'maxim.narushevich@cactussoft.biz', 'Y', 'N', 'Y', 'N', '2018-08-20 07:08:31', '2018-08-20 07:08:32'),
(8, 1, 'Test mailgun servcie!', 'TEST MAIL!', 'narushevich.maksim@gmail.com', 'maxim.narushevich@cactussoft.biz', 'Y', 'N', 'Y', 'N', '2018-11-15 14:02:22', '2018-11-15 14:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `mail_photos`
--

CREATE TABLE `mail_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `user_id`, `title`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test template', '<h1>Hello World</h1>\n\n<p>{{$content}}</p>\n\n<div>\nMail was sent by <b style=\"color:#008000;\">Maksim</b>\n</div>', 'Y', '2018-08-19 22:00:00', '2019-01-02 21:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(11) DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_id_parameter` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `admin` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `module_id`, `icon`, `route`, `route_id_parameter`, `admin`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, NULL, 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-13 16:26:19'),
(2, 0, NULL, NULL, 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-13 16:25:46'),
(3, 0, '<i class=\"fas fa-tags\"></i>', 'label', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-04 21:00:00'),
(4, 0, '<i class=\"far fa-file-alt\"></i>', 'pagebuilder_index', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(5, 0, '<i class=\"fas fa-pencil-alt\"></i>', 'css', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(6, 0, '<i class=\"fas fa-bars\"></i>', 'menu', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-06 10:15:54'),
(7, 0, '<i class=\"fas fa-pen-square\"></i>', 'codeeditor_setting', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(8, 0, '<i class=\"fas fa-language\"></i>', 'languages', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(9, 0, '<i class=\"fas fa-clipboard\"></i>', 'posts', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(10, 0, '<i class=\"fas fa-images\"></i>', 'images', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(11, 0, '<i class=\"fas fa-cog\"></i>', 'website_settings', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(12, 0, '<i class=\"fas fa-cogs\"></i>', 'profile_settings', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(13, 0, '<i class=\"fas fa-file-export\"></i>', 'export', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(14, 0, '<i class=\"fas fa-at\"></i>', 'mail', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(15, 0, '<i class=\"fas fa-briefcase\"></i>', 'office', 'Y', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(16, 0, '<i class=\"fas fa-info-circle\"></i>', 'about_us', 'N', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(17, 0, '<i class=\"fas fa-phone-square\"></i>', 'contacts', 'N', 'Y', '2018-08-05 21:00:00', '2018-08-05 21:00:00'),
(18, 0, '<i class=\"fas fa-tasks\"></i>', 'tasks', 'Y', 'Y', '2018-08-21 05:46:56', '2018-08-21 05:46:56'),
(19, 0, '<i class=\"fas fa-download\"></i>', 'import', 'Y', 'Y', '2018-08-21 05:51:03', '2018-08-21 05:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `menu_langs`
--

CREATE TABLE `menu_langs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EN',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_langs`
--

INSERT INTO `menu_langs` (`id`, `user_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Modules', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(1, 1, 'Modules', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(1, 1, 'Модули', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:22:36'),
(1, 1, 'Modules', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(1, 2, 'Modules', 'EN', '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(1, 2, 'Modules', 'FR', '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(1, 2, 'Modules', 'RU', '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(1, 2, 'Modules', 'TH', '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(1, 3, 'Modules', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(1, 3, 'Modules', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(1, 3, 'Modules', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(1, 3, 'Modules', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(1, 4, 'Modules', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(1, 4, 'Modules', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(1, 4, 'Modules', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(1, 4, 'Modules', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(1, 5, 'Modules', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(1, 5, 'Modules', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(1, 5, 'Modules', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(1, 5, 'Modules', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(1, 6, 'Modules', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(1, 6, 'Modules', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(1, 6, 'Modules', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(1, 6, 'Modules', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(1, 7, 'Modules', 'EN', '2018-10-16 18:28:40', '2018-10-16 18:28:40'),
(1, 7, 'Modules', 'FR', '2018-10-16 18:28:40', '2018-10-16 18:28:40'),
(1, 7, 'Modules', 'RU', '2018-10-16 18:28:40', '2018-10-16 18:28:40'),
(1, 7, 'Modules', 'TH', '2018-10-16 18:28:40', '2018-10-16 18:28:40'),
(1, 8, 'Modules', 'EN', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(1, 8, 'Modules', 'FR', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(1, 8, 'Modules', 'RU', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(1, 8, 'Modules', 'TH', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(1, 9, 'Modules', 'EN', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(1, 9, 'Modules', 'FR', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(1, 9, 'Modules', 'RU', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(1, 9, 'Modules', 'TH', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(1, 10, 'Modules', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(1, 10, 'Modules', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(1, 10, 'Modules', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(1, 10, 'Modules', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(1, 11, 'Modules', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(1, 11, 'Modules', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(1, 11, 'Modules', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(1, 11, 'Modules', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(2, 1, 'Settings', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(2, 1, 'Settings', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(2, 1, 'Настройки', 'RU', '2018-08-06 06:20:24', '2018-08-06 10:07:37'),
(2, 1, 'Settings', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(2, 2, 'Settings', 'EN', '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(2, 2, 'Settings', 'FR', '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(2, 2, 'Settings', 'RU', '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(2, 2, 'Settings', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(2, 3, 'Settings', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(2, 3, 'Settings', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(2, 3, 'Settings', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(2, 3, 'Settings', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(2, 4, 'Settings', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(2, 4, 'Settings', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(2, 4, 'Settings', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(2, 4, 'Settings', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(2, 5, 'Settings', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(2, 5, 'Settings', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(2, 5, 'Settings', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(2, 5, 'Settings', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(2, 6, 'Settings', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(2, 6, 'Settings', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(2, 6, 'Settings', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(2, 6, 'Settings', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(2, 7, 'Settings', 'EN', '2018-10-16 18:28:40', '2018-10-16 18:28:40'),
(2, 7, 'Settings', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(2, 7, 'Settings', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(2, 7, 'Settings', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(2, 8, 'Settings', 'EN', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(2, 8, 'Settings', 'FR', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(2, 8, 'Settings', 'RU', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(2, 8, 'Settings', 'TH', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(2, 9, 'Settings', 'EN', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(2, 9, 'Settings', 'FR', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(2, 9, 'Settings', 'RU', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(2, 9, 'Settings', 'TH', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(2, 10, 'Settings', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(2, 10, 'Settings', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(2, 10, 'Settings', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(2, 10, 'Settings', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(2, 11, 'Settings', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(2, 11, 'Settings', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(2, 11, 'Settings', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(2, 11, 'Settings', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(3, 1, 'Labels management', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(3, 1, 'Labels management', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(3, 1, 'Labels management', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(3, 1, 'Labels management', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(3, 2, 'Labels management', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(3, 2, 'Labels management', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(3, 2, 'Labels management', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(3, 2, 'Labels management', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(3, 3, 'Labels management', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(3, 3, 'Labels management', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(3, 3, 'Labels management', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(3, 3, 'Labels management', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(3, 4, 'Labels management', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(3, 4, 'Labels management', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(3, 4, 'Labels management', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(3, 4, 'Labels management', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(3, 5, 'Labels management', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(3, 5, 'Labels management', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(3, 5, 'Labels management', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(3, 5, 'Labels management', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(3, 6, 'Labels management', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(3, 6, 'Labels management', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(3, 6, 'Labels management', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(3, 6, 'Labels management', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(3, 7, 'Labels management', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(3, 7, 'Labels management', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(3, 7, 'Labels management', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(3, 7, 'Labels management', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(3, 8, 'Labels management', 'EN', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(3, 8, 'Labels management', 'FR', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(3, 8, 'Labels management', 'RU', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(3, 8, 'Labels management', 'TH', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(3, 9, 'Labels management', 'EN', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(3, 9, 'Labels management', 'FR', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(3, 9, 'Labels management', 'RU', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(3, 9, 'Labels management', 'TH', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(3, 10, 'Labels management', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(3, 10, 'Labels management', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(3, 10, 'Labels management', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(3, 10, 'Labels management', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(3, 11, 'Labels management', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(3, 11, 'Labels management', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(3, 11, 'Labels management', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(3, 11, 'Labels management', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(4, 1, 'Pagebuilder', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(4, 1, 'Pagebuilder', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(4, 1, 'Pagebuilder', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(4, 1, 'Pagebuilder', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(4, 2, 'Pagebuilder', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(4, 2, 'Pagebuilder', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(4, 2, 'Pagebuilder', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(4, 2, 'Pagebuilder', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(4, 3, 'Pagebuilder', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(4, 3, 'Pagebuilder', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(4, 3, 'Pagebuilder', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(4, 3, 'Pagebuilder', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(4, 4, 'Pagebuilder', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(4, 4, 'Pagebuilder', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(4, 4, 'Pagebuilder', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(4, 4, 'Pagebuilder', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(4, 5, 'Pagebuilder', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(4, 5, 'Pagebuilder', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(4, 5, 'Pagebuilder', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(4, 5, 'Pagebuilder', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(4, 6, 'Pagebuilder', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(4, 6, 'Pagebuilder', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(4, 6, 'Pagebuilder', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(4, 6, 'Pagebuilder', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(4, 7, 'Pagebuilder', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(4, 7, 'Pagebuilder', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(4, 7, 'Pagebuilder', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(4, 7, 'Pagebuilder', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(4, 8, 'Pagebuilder', 'EN', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(4, 8, 'Pagebuilder', 'FR', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(4, 8, 'Pagebuilder', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(4, 8, 'Pagebuilder', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(4, 9, 'Pagebuilder', 'EN', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(4, 9, 'Pagebuilder', 'FR', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(4, 9, 'Pagebuilder', 'RU', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(4, 9, 'Pagebuilder', 'TH', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(4, 10, 'Pagebuilder', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(4, 10, 'Pagebuilder', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(4, 10, 'Pagebuilder', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(4, 10, 'Pagebuilder', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(4, 11, 'Pagebuilder', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(4, 11, 'Pagebuilder', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(4, 11, 'Pagebuilder', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(4, 11, 'Pagebuilder', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(5, 1, 'Custom CSS', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(5, 1, 'Custom CSS', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(5, 1, 'Custom CSS', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(5, 1, 'Custom CSS', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(5, 2, 'Custom CSS', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(5, 2, 'Custom CSS', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(5, 2, 'Custom CSS', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(5, 2, 'Custom CSS', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(5, 3, 'Custom CSS', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(5, 3, 'Custom CSS', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(5, 3, 'Custom CSS', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(5, 3, 'Custom CSS', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(5, 4, 'Custom CSS', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 4, 'Custom CSS', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 4, 'Custom CSS', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 4, 'Custom CSS', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 5, 'Custom CSS', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(5, 5, 'Custom CSS', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(5, 5, 'Custom CSS', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(5, 5, 'Custom CSS', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(5, 6, 'Custom CSS', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(5, 6, 'Custom CSS', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(5, 6, 'Custom CSS', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(5, 6, 'Custom CSS', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(5, 7, 'Custom CSS', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(5, 7, 'Custom CSS', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(5, 7, 'Custom CSS', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(5, 7, 'Custom CSS', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(5, 8, 'Custom CSS', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(5, 8, 'Custom CSS', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(5, 8, 'Custom CSS', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(5, 8, 'Custom CSS', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(5, 9, 'Custom CSS', 'EN', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(5, 9, 'Custom CSS', 'FR', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(5, 9, 'Custom CSS', 'RU', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(5, 9, 'Custom CSS', 'TH', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(5, 10, 'Custom CSS', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(5, 10, 'Custom CSS', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(5, 10, 'Custom CSS', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(5, 10, 'Custom CSS', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(5, 11, 'Custom CSS', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(5, 11, 'Custom CSS', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(5, 11, 'Custom CSS', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(5, 11, 'Custom CSS', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(6, 1, 'Header menu settings', 'EN', '2018-08-06 06:20:24', '2018-08-10 08:42:01'),
(6, 1, 'Menu settings', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(6, 1, 'Настройки меню', 'RU', '2018-08-06 06:20:24', '2018-08-06 10:07:58'),
(6, 1, 'Menu settings', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(6, 2, 'Menu settings', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(6, 2, 'Menu settings', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(6, 2, 'Menu settings', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(6, 2, 'Menu settings', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(6, 3, 'Menu settings', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(6, 3, 'Menu settings', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(6, 3, 'Menu settings', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(6, 3, 'Menu settings', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(6, 4, 'Menu settings', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(6, 4, 'Menu settings', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(6, 4, 'Menu settings', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(6, 4, 'Menu settings', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(6, 5, 'Menu settings', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 5, 'Menu settings', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 5, 'Menu settings', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 5, 'Menu settings', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 6, 'Menu settings', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(6, 6, 'Menu settings', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(6, 6, 'Menu settings', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(6, 6, 'Menu settings', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(6, 7, 'Menu settings', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(6, 7, 'Menu settings', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(6, 7, 'Menu settings', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(6, 7, 'Menu settings', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(6, 8, 'Menu settings', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(6, 8, 'Menu settings', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(6, 8, 'Menu settings', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(6, 8, 'Menu settings', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(6, 9, 'Menu settings', 'EN', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(6, 9, 'Menu settings', 'FR', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(6, 9, 'Menu settings', 'RU', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(6, 9, 'Menu settings', 'TH', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(6, 10, 'Menu settings', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(6, 10, 'Menu settings', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(6, 10, 'Menu settings', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(6, 10, 'Menu settings', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(6, 11, 'Menu settings', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(6, 11, 'Menu settings', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(6, 11, 'Menu settings', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(6, 11, 'Menu settings', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(7, 1, 'Code editor settings', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(7, 1, 'Code editor settings', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(7, 1, 'Code editor settings', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(7, 1, 'Code editor settings', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(7, 2, 'Code editor settings', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(7, 2, 'Code editor settings', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(7, 2, 'Code editor settings', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(7, 2, 'Code editor settings', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(7, 3, 'Code editor settings', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(7, 3, 'Code editor settings', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(7, 3, 'Code editor settings', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(7, 3, 'Code editor settings', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(7, 4, 'Code editor settings', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(7, 4, 'Code editor settings', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(7, 4, 'Code editor settings', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(7, 4, 'Code editor settings', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(7, 5, 'Code editor settings', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(7, 5, 'Code editor settings', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(7, 5, 'Code editor settings', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(7, 5, 'Code editor settings', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(7, 6, 'Code editor settings', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(7, 6, 'Code editor settings', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(7, 6, 'Code editor settings', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(7, 6, 'Code editor settings', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(7, 7, 'Code editor settings', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(7, 7, 'Code editor settings', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(7, 7, 'Code editor settings', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(7, 7, 'Code editor settings', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(7, 8, 'Code editor settings', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(7, 8, 'Code editor settings', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(7, 8, 'Code editor settings', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(7, 8, 'Code editor settings', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(7, 9, 'Code editor settings', 'EN', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(7, 9, 'Code editor settings', 'FR', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(7, 9, 'Code editor settings', 'RU', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(7, 9, 'Code editor settings', 'TH', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(7, 10, 'Code editor settings', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(7, 10, 'Code editor settings', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(7, 10, 'Code editor settings', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(7, 10, 'Code editor settings', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(7, 11, 'Code editor settings', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(7, 11, 'Code editor settings', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(7, 11, 'Code editor settings', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(7, 11, 'Code editor settings', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(8, 1, 'Language settings', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(8, 1, 'Language settings', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(8, 1, 'Language settings', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(8, 1, 'Language settings', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(8, 2, 'Language settings', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(8, 2, 'Language settings', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(8, 2, 'Language settings', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(8, 2, 'Language settings', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(8, 3, 'Language settings', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(8, 3, 'Language settings', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(8, 3, 'Language settings', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(8, 3, 'Language settings', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(8, 4, 'Language settings', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(8, 4, 'Language settings', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(8, 4, 'Language settings', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(8, 4, 'Language settings', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(8, 5, 'Language settings', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(8, 5, 'Language settings', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(8, 5, 'Language settings', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(8, 5, 'Language settings', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(8, 6, 'Language settings', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(8, 6, 'Language settings', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(8, 6, 'Language settings', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(8, 6, 'Language settings', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(8, 7, 'Language settings', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(8, 7, 'Language settings', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(8, 7, 'Language settings', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(8, 7, 'Language settings', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(8, 8, 'Language settings', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(8, 8, 'Language settings', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(8, 8, 'Language settings', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(8, 8, 'Language settings', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(8, 9, 'Language settings', 'EN', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(8, 9, 'Language settings', 'FR', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(8, 9, 'Language settings', 'RU', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(8, 9, 'Language settings', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(8, 10, 'Language settings', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(8, 10, 'Language settings', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(8, 10, 'Language settings', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(8, 10, 'Language settings', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(8, 11, 'Language settings', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(8, 11, 'Language settings', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(8, 11, 'Language settings', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(8, 11, 'Language settings', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(9, 1, 'Posts module', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(9, 1, 'Posts module', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(9, 1, 'Posts module', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(9, 1, 'Posts module', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(9, 2, 'Posts module', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(9, 2, 'Posts module', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(9, 2, 'Posts module', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(9, 2, 'Posts module', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(9, 3, 'Posts module', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(9, 3, 'Posts module', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(9, 3, 'Posts module', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(9, 3, 'Posts module', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(9, 4, 'Posts module', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(9, 4, 'Posts module', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(9, 4, 'Posts module', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(9, 4, 'Posts module', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(9, 5, 'Posts module', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(9, 5, 'Posts module', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(9, 5, 'Posts module', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(9, 5, 'Posts module', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(9, 6, 'Posts module', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(9, 6, 'Posts module', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(9, 6, 'Posts module', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(9, 6, 'Posts module', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(9, 7, 'Posts module', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(9, 7, 'Posts module', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(9, 7, 'Posts module', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(9, 7, 'Posts module', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(9, 8, 'Posts module', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(9, 8, 'Posts module', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(9, 8, 'Posts module', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(9, 8, 'Posts module', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(9, 9, 'Posts module', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(9, 9, 'Posts module', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(9, 9, 'Posts module', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(9, 9, 'Posts module', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(9, 10, 'Posts module', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(9, 10, 'Posts module', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(9, 10, 'Posts module', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(9, 10, 'Posts module', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(9, 11, 'Posts module', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(9, 11, 'Posts module', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(9, 11, 'Posts module', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(9, 11, 'Posts module', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(10, 1, 'Images module', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(10, 1, 'Images module', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(10, 1, 'Images module', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(10, 1, 'Images module', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(10, 2, 'Images module', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(10, 2, 'Images module', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(10, 2, 'Images module', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(10, 2, 'Images module', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(10, 3, 'Images module', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(10, 3, 'Images module', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(10, 3, 'Images module', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(10, 3, 'Images module', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(10, 4, 'Images module', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(10, 4, 'Images module', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(10, 4, 'Images module', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(10, 4, 'Images module', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(10, 5, 'Images module', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(10, 5, 'Images module', 'FR', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(10, 5, 'Images module', 'RU', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(10, 5, 'Images module', 'TH', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(10, 6, 'Images module', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(10, 6, 'Images module', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(10, 6, 'Images module', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(10, 6, 'Images module', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(10, 7, 'Images module', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(10, 7, 'Images module', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(10, 7, 'Images module', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(10, 7, 'Images module', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(10, 8, 'Images module', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(10, 8, 'Images module', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(10, 8, 'Images module', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(10, 8, 'Images module', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(10, 9, 'Images module', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(10, 9, 'Images module', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(10, 9, 'Images module', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(10, 9, 'Images module', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(10, 10, 'Images module', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(10, 10, 'Images module', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(10, 10, 'Images module', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(10, 10, 'Images module', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(10, 11, 'Images module', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(10, 11, 'Images module', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(10, 11, 'Images module', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(10, 11, 'Images module', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(11, 1, 'Website settings', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(11, 1, 'Website settings', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(11, 1, 'Website settings', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(11, 1, 'Website settings', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(11, 2, 'Website settings', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(11, 2, 'Website settings', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(11, 2, 'Website settings', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(11, 2, 'Website settings', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(11, 3, 'Website settings', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(11, 3, 'Website settings', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(11, 3, 'Website settings', 'RU', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(11, 3, 'Website settings', 'TH', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(11, 4, 'Website settings', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(11, 4, 'Website settings', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(11, 4, 'Website settings', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(11, 4, 'Website settings', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(11, 5, 'Website settings', 'EN', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(11, 5, 'Website settings', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(11, 5, 'Website settings', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(11, 5, 'Website settings', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(11, 6, 'Website settings', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(11, 6, 'Website settings', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(11, 6, 'Website settings', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(11, 6, 'Website settings', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(11, 7, 'Website settings', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(11, 7, 'Website settings', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(11, 7, 'Website settings', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(11, 7, 'Website settings', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(11, 8, 'Website settings', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(11, 8, 'Website settings', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(11, 8, 'Website settings', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(11, 8, 'Website settings', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(11, 9, 'Website settings', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(11, 9, 'Website settings', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(11, 9, 'Website settings', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(11, 9, 'Website settings', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(11, 10, 'Website settings', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(11, 10, 'Website settings', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(11, 10, 'Website settings', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(11, 10, 'Website settings', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(11, 11, 'Website settings', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(11, 11, 'Website settings', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(11, 11, 'Website settings', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(11, 11, 'Website settings', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(12, 1, 'Profile settings', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(12, 1, 'Profile settings', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(12, 1, 'Profile settings', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(12, 1, 'Profile settings', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(12, 2, 'Profile settings', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(12, 2, 'Profile settings', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(12, 2, 'Profile settings', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(12, 2, 'Profile settings', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(12, 3, 'Profile settings', 'EN', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(12, 3, 'Profile settings', 'FR', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(12, 3, 'Profile settings', 'RU', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(12, 3, 'Profile settings', 'TH', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(12, 4, 'Profile settings', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(12, 4, 'Profile settings', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(12, 4, 'Profile settings', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(12, 4, 'Profile settings', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(12, 5, 'Profile settings', 'EN', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(12, 5, 'Profile settings', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(12, 5, 'Profile settings', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(12, 5, 'Profile settings', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(12, 6, 'Profile settings', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(12, 6, 'Profile settings', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(12, 6, 'Profile settings', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(12, 6, 'Profile settings', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(12, 7, 'Profile settings', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(12, 7, 'Profile settings', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(12, 7, 'Profile settings', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(12, 7, 'Profile settings', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(12, 8, 'Profile settings', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(12, 8, 'Profile settings', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(12, 8, 'Profile settings', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(12, 8, 'Profile settings', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(12, 9, 'Profile settings', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(12, 9, 'Profile settings', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(12, 9, 'Profile settings', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(12, 9, 'Profile settings', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(12, 10, 'Profile settings', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(12, 10, 'Profile settings', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(12, 10, 'Profile settings', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(12, 10, 'Profile settings', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(12, 11, 'Profile settings', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(12, 11, 'Profile settings', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(12, 11, 'Profile settings', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(12, 11, 'Profile settings', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(13, 1, 'Export module', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(13, 1, 'Export module', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(13, 1, 'Export module', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(13, 1, 'Export module', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(13, 2, 'Export module', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(13, 2, 'Export module', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(13, 2, 'Export module', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(13, 2, 'Export module', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(13, 3, 'Export module', 'EN', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(13, 3, 'Export module', 'FR', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(13, 3, 'Export module', 'RU', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(13, 3, 'Export module', 'TH', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(13, 4, 'Export module', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(13, 4, 'Export module', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(13, 4, 'Export module', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(13, 4, 'Export module', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(13, 5, 'Export module', 'EN', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(13, 5, 'Export module', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(13, 5, 'Export module', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(13, 5, 'Export module', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(13, 6, 'Export module', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(13, 6, 'Export module', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(13, 6, 'Export module', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(13, 6, 'Export module', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(13, 7, 'Export module', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(13, 7, 'Export module', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(13, 7, 'Export module', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(13, 7, 'Export module', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(13, 8, 'Export module', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(13, 8, 'Export module', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(13, 8, 'Export module', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(13, 8, 'Export module', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(13, 9, 'Export module', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(13, 9, 'Export module', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(13, 9, 'Export module', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(13, 9, 'Export module', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(13, 10, 'Export module', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(13, 10, 'Export module', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(13, 10, 'Export module', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(13, 10, 'Export module', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(13, 11, 'Export module', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(13, 11, 'Export module', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(13, 11, 'Export module', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(13, 11, 'Export module', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(14, 1, 'Mail module', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(14, 1, 'Mail module', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(14, 1, 'Mail module', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(14, 1, 'Mail module', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(14, 2, 'Mail module', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(14, 2, 'Mail module', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(14, 2, 'Mail module', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(14, 2, 'Mail module', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(14, 3, 'Mail module', 'EN', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(14, 3, 'Mail module', 'FR', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(14, 3, 'Mail module', 'RU', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(14, 3, 'Mail module', 'TH', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(14, 4, 'Mail module', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(14, 4, 'Mail module', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(14, 4, 'Mail module', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(14, 4, 'Mail module', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(14, 5, 'Mail module', 'EN', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(14, 5, 'Mail module', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(14, 5, 'Mail module', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(14, 5, 'Mail module', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(14, 6, 'Mail module', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(14, 6, 'Mail module', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(14, 6, 'Mail module', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(14, 6, 'Mail module', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(14, 7, 'Mail module', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(14, 7, 'Mail module', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(14, 7, 'Mail module', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(14, 7, 'Mail module', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(14, 8, 'Mail module', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(14, 8, 'Mail module', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(14, 8, 'Mail module', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(14, 8, 'Mail module', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(14, 9, 'Mail module', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(14, 9, 'Mail module', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(14, 9, 'Mail module', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(14, 9, 'Mail module', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(14, 10, 'Mail module', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(14, 10, 'Mail module', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(14, 10, 'Mail module', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(14, 10, 'Mail module', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(14, 11, 'Mail module', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(14, 11, 'Mail module', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(14, 11, 'Mail module', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(14, 11, 'Mail module', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(15, 1, 'Office module', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(15, 1, 'Office module', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(15, 1, 'Office module', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(15, 1, 'Office module', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(15, 2, 'Office module', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(15, 2, 'Office module', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(15, 2, 'Office module', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(15, 2, 'Office module', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(15, 3, 'Office module', 'EN', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(15, 3, 'Office module', 'FR', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(15, 3, 'Office module', 'RU', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(15, 3, 'Office module', 'TH', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(15, 4, 'Office module', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(15, 4, 'Office module', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(15, 4, 'Office module', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(15, 4, 'Office module', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(15, 5, 'Office module', 'EN', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(15, 5, 'Office module', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(15, 5, 'Office module', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(15, 5, 'Office module', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(15, 6, 'Office module', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(15, 6, 'Office module', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(15, 6, 'Office module', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(15, 6, 'Office module', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(15, 7, 'Office module', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(15, 7, 'Office module', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(15, 7, 'Office module', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(15, 7, 'Office module', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(15, 8, 'Office module', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(15, 8, 'Office module', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(15, 8, 'Office module', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(15, 8, 'Office module', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(15, 9, 'Office module', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(15, 9, 'Office module', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(15, 9, 'Office module', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(15, 9, 'Office module', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(15, 10, 'Office module', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(15, 10, 'Office module', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(15, 10, 'Office module', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(15, 10, 'Office module', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(15, 11, 'Office module', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(15, 11, 'Office module', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(15, 11, 'Office module', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12');
INSERT INTO `menu_langs` (`id`, `user_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(15, 11, 'Office module', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(16, 1, 'About', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(16, 1, 'About', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(16, 1, 'О нас', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:23:13'),
(16, 1, 'About', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(16, 2, 'About', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(16, 2, 'About', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(16, 2, 'About', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(16, 2, 'About', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(16, 3, 'About', 'EN', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(16, 3, 'About', 'FR', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(16, 3, 'About', 'RU', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(16, 3, 'About', 'TH', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(16, 4, 'About', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(16, 4, 'About', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(16, 4, 'About', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(16, 4, 'About', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(16, 5, 'About', 'EN', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(16, 5, 'About', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(16, 5, 'About', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(16, 5, 'About', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(16, 6, 'About', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(16, 6, 'About', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(16, 6, 'About', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(16, 6, 'About', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(16, 7, 'About', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(16, 7, 'About', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(16, 7, 'About', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(16, 7, 'About', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(16, 8, 'About', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(16, 8, 'About', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(16, 8, 'About', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(16, 8, 'About', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(16, 9, 'About', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(16, 9, 'About', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(16, 9, 'About', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(16, 9, 'About', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(16, 10, 'About', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(16, 10, 'About', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(16, 10, 'About', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(16, 10, 'About', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(16, 11, 'About', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(16, 11, 'About', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(16, 11, 'About', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(16, 11, 'About', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(17, 1, 'Contact Us', 'EN', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(17, 1, 'Contact Us', 'FR', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(17, 1, 'Contact Us', 'RU', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(17, 1, 'Contact Us', 'TH', '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(17, 2, 'Contact Us', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(17, 2, 'Contact Us', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(17, 2, 'Contact Us', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(17, 2, 'Contact Us', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(17, 3, 'Contact Us', 'EN', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(17, 3, 'Contact Us', 'FR', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(17, 3, 'Contact Us', 'RU', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(17, 3, 'Contact Us', 'TH', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(17, 4, 'Contact Us', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(17, 4, 'Contact Us', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(17, 4, 'Contact Us', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(17, 4, 'Contact Us', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(17, 5, 'Contact Us', 'EN', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(17, 5, 'Contact Us', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(17, 5, 'Contact Us', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(17, 5, 'Contact Us', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(17, 6, 'Contact Us', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(17, 6, 'Contact Us', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(17, 6, 'Contact Us', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(17, 6, 'Contact Us', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(17, 7, 'Contact Us', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(17, 7, 'Contact Us', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(17, 7, 'Contact Us', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(17, 7, 'Contact Us', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(17, 8, 'Contact Us', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(17, 8, 'Contact Us', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(17, 8, 'Contact Us', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(17, 8, 'Contact Us', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(17, 9, 'Contact Us', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(17, 9, 'Contact Us', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(17, 9, 'Contact Us', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(17, 9, 'Contact Us', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(17, 10, 'Contact Us', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(17, 10, 'Contact Us', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(17, 10, 'Contact Us', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(17, 10, 'Contact Us', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(17, 11, 'Contact Us', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(17, 11, 'Contact Us', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(17, 11, 'Contact Us', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(17, 11, 'Contact Us', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(18, 1, 'Tasks', 'EN', '2018-08-21 06:48:48', '2018-08-21 06:48:48'),
(18, 1, 'Tasks', 'FR', '2018-08-21 06:48:48', '2018-08-21 06:48:48'),
(18, 1, 'Tasks', 'RU', '2018-08-21 06:48:48', '2018-08-21 06:48:48'),
(18, 1, 'Tasks', 'TH', '2018-08-21 06:48:48', '2018-08-21 06:48:48'),
(18, 2, 'Import module', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(18, 2, 'Import module', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(18, 2, 'Import module', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(18, 2, 'Import module', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(18, 3, 'Import module', 'EN', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(18, 3, 'Import module', 'FR', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(18, 3, 'Import module', 'RU', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(18, 3, 'Import module', 'TH', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(18, 4, 'Import module', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(18, 4, 'Import module', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(18, 4, 'Import module', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(18, 4, 'Import module', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(18, 5, 'Import module', 'EN', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(18, 5, 'Import module', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(18, 5, 'Import module', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(18, 5, 'Import module', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(18, 6, 'Import module', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(18, 6, 'Import module', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(18, 6, 'Import module', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(18, 6, 'Import module', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(18, 7, 'Import module', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(18, 7, 'Import module', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(18, 7, 'Import module', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(18, 7, 'Import module', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(18, 8, 'Import module', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(18, 8, 'Import module', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(18, 8, 'Import module', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(18, 8, 'Import module', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(18, 9, 'Import module', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(18, 9, 'Import module', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(18, 9, 'Import module', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(18, 9, 'Import module', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(18, 10, 'Import module', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(18, 10, 'Import module', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(18, 10, 'Import module', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(18, 10, 'Import module', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(18, 11, 'Import module', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(18, 11, 'Import module', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(18, 11, 'Import module', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(18, 11, 'Import module', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(19, 1, 'Import module', 'EN', '2018-08-21 06:50:04', '2018-08-21 06:50:04'),
(19, 1, 'Import module', 'FR', '2018-08-21 06:50:04', '2018-08-21 06:50:04'),
(19, 1, 'Import module', 'RU', '2018-08-21 06:50:04', '2018-08-21 06:50:04'),
(19, 1, 'Import module', 'TH', '2018-08-21 06:50:04', '2018-08-21 06:50:04'),
(19, 2, 'Tasks module', 'EN', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(19, 2, 'Tasks module', 'FR', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(19, 2, 'Tasks module', 'RU', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(19, 2, 'Tasks module', 'TH', '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(19, 3, 'Tasks module', 'EN', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(19, 3, 'Tasks module', 'FR', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(19, 3, 'Tasks module', 'RU', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(19, 3, 'Tasks module', 'TH', '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(19, 4, 'Tasks module', 'EN', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(19, 4, 'Tasks module', 'FR', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(19, 4, 'Tasks module', 'RU', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(19, 4, 'Tasks module', 'TH', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(19, 5, 'Tasks module', 'EN', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(19, 5, 'Tasks module', 'FR', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(19, 5, 'Tasks module', 'RU', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(19, 5, 'Tasks module', 'TH', '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(19, 6, 'Tasks module', 'EN', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(19, 6, 'Tasks module', 'FR', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(19, 6, 'Tasks module', 'RU', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(19, 6, 'Tasks module', 'TH', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(19, 7, 'Tasks module', 'EN', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(19, 7, 'Tasks module', 'FR', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(19, 7, 'Tasks module', 'RU', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(19, 7, 'Tasks module', 'TH', '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(19, 8, 'Tasks module', 'EN', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(19, 8, 'Tasks module', 'FR', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(19, 8, 'Tasks module', 'RU', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(19, 8, 'Tasks module', 'TH', '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(19, 9, 'Tasks module', 'EN', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(19, 9, 'Tasks module', 'FR', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(19, 9, 'Tasks module', 'RU', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(19, 9, 'Tasks module', 'TH', '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(19, 10, 'Tasks module', 'EN', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(19, 10, 'Tasks module', 'FR', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(19, 10, 'Tasks module', 'RU', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(19, 10, 'Tasks module', 'TH', '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(19, 11, 'Tasks module', 'EN', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(19, 11, 'Tasks module', 'FR', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(19, 11, 'Tasks module', 'RU', '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(19, 11, 'Tasks module', 'TH', '2019-05-11 03:51:12', '2019-05-11 03:51:12');

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
(3, '2017_07_07_165720_create_settings_table', 2),
(4, '2018_06_18_124801_create_language_lines_table', 3),
(5, '2018_06_04_144038_create_countries_table', 4),
(6, '2018_06_04_145256_create_regions_table', 4),
(7, '2018_06_25_072358_create_blocks_table', 5),
(8, '2018_06_25_083747_create_block_contents_table', 6),
(11, '2018_06_25_092400_create_user_block_pivot_table', 7),
(12, '2018_07_23_190518_create_images_table', 8),
(13, '2018_07_24_175320_create_menus_table', 9),
(14, '2018_07_24_175518_create_menu_langs_table', 9),
(15, '2018_07_24_182800_create_user_menus_table', 9),
(16, '2018_07_27_123643_create_languages_table', 10),
(17, '2018_07_30_173551_create_photos_table', 11),
(18, '2018_07_30_174050_create_photo_posts_table', 12),
(19, '2018_08_02_065400_create_posts_table', 13),
(20, '2018_08_07_083640_create_block_defaults_table', 14),
(21, '2018_08_08_125318_create_mails_table', 15),
(22, '2018_08_08_135617_create_mail_photos_table', 16),
(23, '2018_08_08_185345_create_website_settings_table', 17),
(24, '2018_08_10_065714_create_social_icons_table', 18),
(25, '2018_08_11_185549_create_admin_settings_table', 19),
(28, '2018_08_17_220117_create_documents_table', 21),
(29, '2018_08_16_140235_create_backgrounds_table', 22),
(30, '2018_08_20_073907_create_mail_templates_table', 23),
(31, '2018_08_22_083625_create_post_images_table', 24);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(191) DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_posts`
--

CREATE TABLE `photo_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'First blog post', '<div>\n  <h1>Initial post header</h1>\n<img src=\"http://inspirecms.local/public/storage/upload/1/photos/1533029156_img.jpg\" class=\"w3-border w3-hover-opacity\" alt=\"1533029156_img.jpg\" /><img src=\"http://inspirecms.local/public/storage/upload/1/photos/1533029198_images.jpg\" class=\"w3-border w3-hover-opacity\" alt=\"1533029198_images.jpg\" /></div>', 'Y', '2018-08-02 05:35:20', '2018-09-07 08:19:52'),
(2, 1, 'Travelling to Asia', '<div>\n  <h1>Post header</h1>\n  <p>Title content</p>\n</div>', 'Y', '2018-08-22 12:01:01', '2018-09-07 08:20:26'),
(3, 5, 'test', '123', 'Y', '2018-09-21 00:41:47', '2018-09-21 00:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `user_id`, `post_id`, `path`, `name`, `size`, `extension`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 'upload/1/post/images/1536304590_2_images.jpg', '1536304590_2_images.jpg', '8867', 'jpg', '2018-09-07 08:16:30', '2018-09-07 08:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `active_left_sidebar` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `codeeditor_theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ftp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ftp_user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ftp_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `user_id`, `active_left_sidebar`, `custom_css`, `codeeditor_theme`, `ftp_host`, `ftp_user_name`, `ftp_password`, `created_at`, `updated_at`) VALUES
(1, 1, 'N', '/* Your custom CSS will be here */', 'material', 'ftp.ghibli.be', 'infomat_contimac', 'sCsi90_8Djdo0!03', '2018-06-17 21:00:00', '2019-03-16 15:29:43'),
(2, 2, 'Y', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2018-08-28 15:11:05', '2019-04-25 14:18:56'),
(3, 3, 'Y', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2018-09-15 11:01:25', '2018-09-15 11:02:26'),
(4, 4, 'Y', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 5, 'Y', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 6, 'Y', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2018-09-26 20:01:50', '2018-09-26 20:03:00'),
(7, 7, 'N', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2018-10-16 18:28:40', '2018-10-16 18:30:19'),
(8, 8, 'Y', '/* Your custom CSS will be here */', 'cobalt', NULL, NULL, NULL, '2018-11-15 17:36:27', '2018-11-15 17:46:32'),
(9, 9, 'Y', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(10, 10, 'Y', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(11, 11, 'N', '/* Your custom CSS will be here */', NULL, NULL, NULL, NULL, '2019-05-11 03:51:12', '2019-05-11 03:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `user_id`, `github`, `facebook`, `vk`, `linkedin`, `line`, `instagram`, `pinterest`, `twitter`, `google`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-10 08:06:18'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-16 18:28:40', '2018-10-16 18:28:40'),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-11 03:51:12', '2019-05-11 03:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Maksim', 'narushevich.maksim@gmail.com', '$2y$10$aZteWC45tOQrPi3AiWrG5Oe6S9Mbe6DfjnPzhvmPUT3yYO1roNiRO', 'FcKGXVmWiePbGqWu2vn7SkPtxF0lOW1qIcZbeNZOVz5BFqClS4mFjhSUpdNW', '2018-06-18 03:26:01', '2018-08-22 12:53:50'),
(2, 0, 'Test', 'test@gmail.com', '$2y$10$r7OET9cDaHHevdZLCpGCj.yDD7bb6q.lplzhskKoP64qoWx9cyVIW', '4WhQJE1vUayO43Cq9wUTOUcpDuDat0iz6uVDlmzC1E00U6XDeW10ncZIoUZ7', '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(3, 0, 'Prateek Soni', 'virgo.prateek@gmail.com', '$2y$10$cJi1Oe08SsgjY8mFI5nDrOm/rbgyel89C65zdMMWyG2qlRwi88hI6', NULL, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(4, 0, 'admin', 'arno@alerta.cc', '$2y$10$MNtCMmt8.eIyY4zZCRSJU.4ayWHXg8zg9KZ83V9.aLaXdWVZwLihS', NULL, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 0, 'test', 'test@q.cn', '$2y$10$hQONfb8sGNQCsBO.rL9EIu/O/tL.txhtZJ1DA6bfEXihxDNOlLHu.', NULL, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 0, 'AH', 'admin@admin.com', '$2y$10$K2zwD6gDYRBcAymRXsujwOrrs3cGet0sVKMqXy83bJqhIu9y5S2Sm', NULL, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(7, 0, 'aukc', 'aukc@mail.ru', '$2y$10$RkDwFUEl1NxV.9p39K9r.O.PWWem1dQ9x8CYw9o5K3.H1KqH3qHpS', NULL, '2018-10-16 18:28:40', '2018-10-16 18:28:40'),
(8, 0, 'serge', 'example@mail.ru', '$2y$10$N.gbm9QsjkLr8QwF9nX1l.KTwcgYLBjvq28LBdPH25mOVKYbTL6xq', NULL, '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(9, 0, 'aaaaaaa', 'teguing.amr@gmail.com', '$2y$10$eZkAa17dOmlQMIILn27Bgu.Rz396V5RgGVIeXT5mZuMo7uZuyCQra', NULL, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(10, 0, 'fgasfasdfd', 'fgasfasdfd@hotmail.com', '$2y$10$/fs9w0El6W58wags0byuGukhb/2Ym/Pr7iaAHUhQFH8wepJn98yx6', NULL, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(11, 0, 'Testehh', 'elvitrina@yahoo.com', '$2y$10$Zpoc9ECteWgkmBfLGngA4OEzD9JTnXkZ8jbnk0QldXrA7b7BKCfN.', NULL, '2019-05-11 03:51:12', '2019-05-11 03:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_menus`
--

CREATE TABLE `user_menus` (
  `menu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `parent` int(11) DEFAULT '0',
  `sortorder` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menus`
--

INSERT INTO `user_menus` (`menu_id`, `user_id`, `active`, `parent`, `sortorder`, `created_at`, `updated_at`) VALUES
(1, 1, 'Y', 0, 0, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(1, 2, 'Y', 0, 0, '2018-08-28 15:11:05', '2018-08-28 15:11:05'),
(1, 3, 'Y', 0, 0, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(1, 4, 'Y', 0, 0, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(1, 5, 'Y', 0, 0, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(1, 6, 'Y', 0, 0, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(1, 7, 'Y', 0, 0, '2018-10-16 18:28:40', '2018-10-16 18:28:40'),
(1, 8, 'Y', 0, 0, '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(1, 9, 'Y', 0, 0, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(1, 10, 'Y', 0, 0, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(1, 11, 'Y', 0, 0, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(2, 1, 'Y', 0, 0, '2018-08-06 06:20:24', '2018-08-13 16:26:01'),
(2, 2, 'Y', 0, 0, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(2, 3, 'Y', 0, 0, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(2, 4, 'Y', 0, 0, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(2, 5, 'Y', 0, 0, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(2, 6, 'Y', 0, 0, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(2, 7, 'Y', 0, 0, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(2, 8, 'Y', 0, 0, '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(2, 9, 'Y', 0, 0, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(2, 10, 'Y', 0, 0, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(2, 11, 'Y', 0, 5, '2019-05-11 03:51:12', '2019-05-11 03:54:29'),
(3, 1, 'Y', 1, 5, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(3, 2, 'Y', 1, 5, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(3, 3, 'Y', 1, 5, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(3, 4, 'Y', 1, 5, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(3, 5, 'Y', 1, 5, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(3, 6, 'Y', 1, 5, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(3, 7, 'Y', 1, 5, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(3, 8, 'Y', 1, 5, '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(3, 9, 'Y', 1, 5, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(3, 10, 'Y', 1, 5, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(3, 11, 'Y', 1, 5, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(4, 1, 'Y', 1, 10, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(4, 2, 'Y', 1, 10, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(4, 3, 'Y', 1, 10, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(4, 4, 'Y', 1, 10, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(4, 5, 'Y', 1, 10, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(4, 6, 'Y', 1, 10, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(4, 7, 'Y', 1, 10, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(4, 8, 'Y', 1, 10, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(4, 9, 'Y', 1, 10, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(4, 10, 'Y', 1, 10, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(4, 11, 'Y', 1, 10, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(5, 1, 'Y', 1, 15, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(5, 2, 'Y', 1, 15, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(5, 3, 'Y', 1, 15, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(5, 4, 'Y', 1, 15, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 5, 'Y', 1, 15, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(5, 6, 'Y', 1, 15, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(5, 7, 'Y', 1, 15, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(5, 8, 'Y', 1, 15, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(5, 9, 'Y', 1, 15, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(5, 10, 'Y', 1, 15, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(5, 11, 'Y', 1, 15, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(6, 1, 'Y', 2, 5, '2018-08-06 06:20:24', '2018-08-06 10:16:20'),
(6, 2, 'Y', 2, 5, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(6, 3, 'Y', 2, 5, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(6, 4, 'Y', 2, 5, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(6, 5, 'Y', 2, 5, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 6, 'Y', 2, 5, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(6, 7, 'Y', 2, 5, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(6, 8, 'Y', 2, 5, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(6, 9, 'Y', 2, 5, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(6, 10, 'Y', 2, 5, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(6, 11, 'Y', 2, 5, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(7, 1, 'Y', 2, 10, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(7, 2, 'Y', 2, 10, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(7, 3, 'Y', 2, 10, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(7, 4, 'Y', 2, 10, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(7, 5, 'Y', 2, 10, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(7, 6, 'Y', 2, 10, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(7, 7, 'Y', 2, 10, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(7, 8, 'Y', 2, 10, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(7, 9, 'Y', 2, 10, '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(7, 10, 'Y', 2, 10, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(7, 11, 'Y', 2, 10, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(8, 1, 'Y', 2, 15, '2018-08-06 06:20:24', '2018-08-06 06:28:19'),
(8, 2, 'Y', 2, 15, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(8, 3, 'Y', 2, 15, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(8, 4, 'Y', 2, 15, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(8, 5, 'Y', 2, 15, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(8, 6, 'Y', 2, 15, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(8, 7, 'Y', 2, 15, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(8, 8, 'Y', 2, 15, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(8, 9, 'Y', 2, 15, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(8, 10, 'Y', 2, 15, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(8, 11, 'Y', 2, 15, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(9, 1, 'Y', 1, 20, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(9, 2, 'Y', 1, 20, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(9, 3, 'Y', 1, 20, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(9, 4, 'Y', 1, 20, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(9, 5, 'Y', 1, 20, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(9, 6, 'Y', 1, 20, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(9, 7, 'Y', 1, 20, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(9, 8, 'Y', 1, 20, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(9, 9, 'Y', 1, 20, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(9, 10, 'Y', 1, 20, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(9, 11, 'Y', 1, 20, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(10, 1, 'Y', 1, 25, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(10, 2, 'Y', 1, 25, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(10, 3, 'Y', 1, 25, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(10, 4, 'Y', 1, 25, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(10, 5, 'Y', 1, 25, '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(10, 6, 'Y', 1, 25, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(10, 7, 'Y', 1, 25, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(10, 8, 'Y', 1, 25, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(10, 9, 'Y', 1, 25, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(10, 10, 'Y', 1, 25, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(10, 11, 'Y', 1, 25, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(11, 1, 'Y', 2, 20, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(11, 2, 'Y', 2, 20, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(11, 3, 'Y', 2, 20, '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(11, 4, 'Y', 2, 20, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(11, 5, 'Y', 2, 20, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(11, 6, 'Y', 2, 20, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(11, 7, 'Y', 2, 20, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(11, 8, 'Y', 2, 20, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(11, 9, 'Y', 2, 20, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(11, 10, 'Y', 2, 20, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(11, 11, 'Y', 2, 20, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(12, 1, 'Y', 2, 25, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(12, 2, 'Y', 2, 25, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(12, 3, 'Y', 2, 25, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(12, 4, 'Y', 2, 25, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(12, 5, 'Y', 2, 25, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(12, 6, 'Y', 2, 25, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(12, 7, 'Y', 2, 25, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(12, 8, 'Y', 2, 25, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(12, 9, 'Y', 2, 25, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(12, 10, 'Y', 2, 25, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(12, 11, 'Y', 2, 25, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(13, 1, 'Y', 1, 30, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(13, 2, 'Y', 1, 30, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(13, 3, 'Y', 1, 30, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(13, 4, 'Y', 1, 30, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(13, 5, 'Y', 1, 30, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(13, 6, 'Y', 1, 30, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(13, 7, 'Y', 1, 30, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(13, 8, 'Y', 1, 30, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(13, 9, 'Y', 1, 30, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(13, 10, 'Y', 1, 30, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(13, 11, 'Y', 1, 30, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(14, 1, 'Y', 1, 35, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(14, 2, 'Y', 1, 35, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(14, 3, 'Y', 1, 35, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(14, 4, 'Y', 1, 35, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(14, 5, 'Y', 1, 35, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(14, 6, 'Y', 1, 35, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(14, 7, 'Y', 1, 35, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(14, 8, 'Y', 1, 35, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(14, 9, 'Y', 1, 35, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(14, 10, 'Y', 1, 35, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(14, 11, 'Y', 1, 35, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(15, 1, 'Y', 1, 40, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(15, 2, 'Y', 1, 40, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(15, 3, 'Y', 1, 40, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(15, 4, 'Y', 1, 40, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(15, 5, 'Y', 1, 40, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(15, 6, 'Y', 1, 40, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(15, 7, 'Y', 1, 40, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(15, 8, 'Y', 1, 40, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(15, 9, 'Y', 1, 40, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(15, 10, 'Y', 1, 40, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(15, 11, 'Y', 1, 40, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(16, 1, 'Y', 2, 30, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(16, 2, 'Y', 2, 30, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(16, 3, 'Y', 2, 30, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(16, 4, 'Y', 2, 30, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(16, 5, 'Y', 2, 30, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(16, 6, 'Y', 2, 30, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(16, 7, 'Y', 2, 30, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(16, 8, 'Y', 2, 30, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(16, 9, 'Y', 2, 30, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(16, 10, 'Y', 2, 30, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(16, 11, 'Y', 2, 30, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(17, 1, 'Y', 2, 35, '2018-08-06 06:20:24', '2018-08-06 06:20:24'),
(17, 2, 'Y', 2, 35, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(17, 3, 'Y', 2, 35, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(17, 4, 'Y', 2, 35, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(17, 5, 'Y', 2, 35, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(17, 6, 'Y', 2, 35, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(17, 7, 'Y', 2, 35, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(17, 8, 'Y', 2, 35, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(17, 9, 'Y', 2, 35, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(17, 10, 'Y', 2, 35, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(17, 11, 'Y', 2, 35, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(18, 1, 'Y', 1, 50, '2018-08-21 06:48:48', '2018-08-21 06:50:04'),
(18, 2, 'Y', 1, 50, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(18, 3, 'Y', 1, 50, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(18, 4, 'Y', 1, 50, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(18, 5, 'Y', 1, 50, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(18, 6, 'Y', 1, 50, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(18, 7, 'Y', 1, 50, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(18, 8, 'Y', 1, 50, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(18, 9, 'Y', 1, 50, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(18, 10, 'Y', 1, 50, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(18, 11, 'Y', 1, 50, '2019-05-11 03:51:12', '2019-05-11 03:51:12'),
(19, 1, 'Y', 1, 45, '2018-08-21 06:50:04', '2018-08-21 06:50:04'),
(19, 2, 'Y', 1, 45, '2018-08-28 15:11:06', '2018-08-28 15:11:06'),
(19, 3, 'Y', 1, 45, '2018-09-15 11:01:26', '2018-09-15 11:01:26'),
(19, 4, 'Y', 1, 45, '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(19, 5, 'Y', 1, 45, '2018-09-21 00:40:50', '2018-09-21 00:40:50'),
(19, 6, 'Y', 1, 45, '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(19, 7, 'Y', 1, 45, '2018-10-16 18:28:41', '2018-10-16 18:28:41'),
(19, 8, 'Y', 1, 45, '2018-11-15 17:36:28', '2018-11-15 17:36:28'),
(19, 9, 'Y', 1, 45, '2019-02-14 12:06:22', '2019-02-14 12:06:22'),
(19, 10, 'Y', 1, 45, '2019-04-13 01:02:46', '2019-04-13 01:02:46'),
(19, 11, 'Y', 1, 45, '2019-05-11 03:51:12', '2019-05-11 03:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `go_top_button` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `posts_page` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `email_form` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `google_map_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_active_languages` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `user_id`, `website_name`, `google_map`, `go_top_button`, `posts_page`, `email_form`, `google_map_key`, `use_active_languages`, `created_at`, `updated_at`) VALUES
(1, 1, 'travel', 'Y', 'Y', 'Y', 'Y', 'test', 'Y', NULL, '2018-08-23 15:57:40'),
(2, 2, '2018_08_28_05_11_05_2_website', 'N', 'Y', 'N', 'N', NULL, 'N', '2018-08-28 15:11:05', '2019-04-25 14:18:18'),
(3, 3, '2018_09_15_01_01_25_3_website', 'N', 'Y', 'N', 'N', NULL, 'N', '2018-09-15 11:01:25', '2018-09-15 11:01:25'),
(4, 4, '2018_09_20_01_40_47_4_website', 'N', 'Y', 'N', 'N', NULL, 'N', '2018-09-19 23:40:47', '2018-09-19 23:40:47'),
(5, 5, '2018_09_21_02_40_49_5_website', 'N', 'Y', 'N', 'N', NULL, 'N', '2018-09-21 00:40:49', '2018-09-21 00:40:49'),
(6, 6, '2018_09_26_10_01_50_6_website', 'N', 'Y', 'N', 'N', NULL, 'N', '2018-09-26 20:01:50', '2018-09-26 20:01:50'),
(7, 7, '2018_10_16_08_28_40_7_website', 'N', 'Y', 'N', 'N', NULL, 'Y', '2018-10-16 18:28:40', '2018-10-16 18:29:53'),
(8, 8, '2018_11_15_06_36_27_8_website', 'N', 'Y', 'N', 'N', NULL, 'N', '2018-11-15 17:36:27', '2018-11-15 17:36:27'),
(9, 9, '2019_02_14_01_06_21_9_website', 'N', 'Y', 'N', 'N', NULL, 'N', '2019-02-14 12:06:21', '2019-02-14 12:06:21'),
(10, 10, 'webindy', 'N', 'Y', 'N', 'N', NULL, 'N', '2019-04-13 01:02:46', '2019-04-13 01:07:38'),
(11, 11, '2019_05_11_05_51_12_11_website', 'N', 'Y', 'N', 'N', NULL, 'N', '2019-05-11 03:51:12', '2019-05-11 03:51:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block_id` (`block_id`);

--
-- Indexes for table `block_contents`
--
ALTER TABLE `block_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_defaults`
--
ALTER TABLE `block_defaults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_pivot`
--
ALTER TABLE `block_pivot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_lines`
--
ALTER TABLE `language_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_lines_group_index` (`group`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_photos`
--
ALTER TABLE `mail_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_langs`
--
ALTER TABLE `menu_langs`
  ADD PRIMARY KEY (`id`,`user_id`,`lang`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_posts`
--
ALTER TABLE `photo_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_country_id_foreign` (`country_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_menus`
--
ALTER TABLE `user_menus`
  ADD PRIMARY KEY (`menu_id`,`user_id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `block_contents`
--
ALTER TABLE `block_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `block_defaults`
--
ALTER TABLE `block_defaults`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `block_pivot`
--
ALTER TABLE `block_pivot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `language_lines`
--
ALTER TABLE `language_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mail_photos`
--
ALTER TABLE `mail_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photo_posts`
--
ALTER TABLE `photo_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
