-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2018 at 08:40 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eslmain`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicationmodules`
--

CREATE TABLE `applicationmodules` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicationmodules`
--

INSERT INTO `applicationmodules` (`id`, `app_name`, `app_url`, `app_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hr', 'http://esl.dnsalias.com/hrm/webforms/index.aspx', 'http://esldashboard.dom/img/frontend/hr.png', '2018-04-20 04:22:01', '2018-04-20 04:22:01', NULL),
(2, 'Imprest', 'http://esl-imprest.dnsalias.com/', 'http://esldashboard.dom/img/frontend/imprest.png', '2018-04-20 04:22:28', '2018-04-20 04:22:28', NULL),
(3, 'Prokazi', 'http://esl.dnsalias.com:8080/', 'http://esldashboard.dom/img/frontend/prokazi.png', '2018-04-20 04:22:55', '2018-04-20 04:22:55', NULL),
(4, 'Operations', '#', 'http://esldashboard.dom/img/frontend/operations.png', '2018-04-20 04:23:29', '2018-04-20 04:23:29', NULL),
(5, 'Travel', 'http://esl.dnsalias.com/Travel/Forms/login.aspx', 'http://esldashboard.dom/img/frontend/TRAVEL.png', '2018-04-23 05:37:19', '2018-04-23 05:37:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_datetime` datetime NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Published','Draft','InActive','Scheduled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_categories`
--

CREATE TABLE `blog_map_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_tags`
--

CREATE TABLE `blog_map_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Express Shipping & Logistics (E.A) Limited', '2018-04-20 04:19:59', '2018-04-20 04:19:59', NULL),
(2, 'Manuchar Kenya Limited', '2018-04-20 04:20:16', '2018-04-20 04:20:16', NULL),
(3, 'Freightwell Express Limited', '2018-04-20 04:20:29', '2018-04-20 04:20:29', NULL),
(4, 'Sovereign Logistics Limited', '2018-04-20 04:20:45', '2018-04-20 04:20:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companyapps`
--

CREATE TABLE `companyapps` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companyapps`
--

INSERT INTO `companyapps` (`id`, `application_id`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2018-04-20 04:24:25', '2018-04-20 04:24:25', NULL),
(2, 2, 1, '2018-04-20 04:24:37', '2018-04-20 04:24:37', NULL),
(3, 4, 1, '2018-04-20 04:24:51', '2018-04-20 04:24:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type_id`, `title`, `subject`, `body`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'User Registration', 'You have succesfully registerd', '<center>\r\n<table id=\"bodyTable\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td id=\"bodyCell\" align=\"center\" valign=\"top\">\r\n<table id=\"templateContainer\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" valign=\"top\">\r\n<table id=\"templateBody\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"bodyContainer\" style=\"padding-top: 9px; padding-bottom: 9px;\" valign=\"top\">\r\n<table class=\"mcnBoxedTextBlock\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody class=\"mcnBoxedTextBlockOuter\">\r\n<tr>\r\n<td class=\"mcnBoxedTextBlockInner\" valign=\"top\">\r\n<table class=\"mcnBoxedTextContentContainer\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 9px 18px 9px 18px;\">\r\n<table class=\"mcnTextContentContainer\" style=\"background-color: #ffffff;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"18\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mcnTextContent\" style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: left; padding: 36px; word-break: break-word;\" valign=\"top\">\r\n<div style=\"text-align: left; word-wrap: break-word;\">Thank you for joining [app_name]! To finish signing up, you just need to confirm your account. <br /> <br />To confirm your email, please click this link:&nbsp;[confirmation_link] <br /> <br />Welcome and thanks! <br />[app_name] Team\r\n<div class=\"footer\" style=\"font-size: 0.7em; padding: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: right; color: #777777; line-height: 14px; margin-top: 36px;\">&copy; [app_name]</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- // END BODY --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- // END TEMPLATE --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center>', 1, 1, NULL, '2018-04-20 04:00:55', '2018-04-20 04:00:55', NULL),
(2, 2, 'Create User', 'Congratulations! your account has been created', '<center>\r\n<table id=\"bodyTable\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td id=\"bodyCell\" align=\"center\" valign=\"top\">\r\n<table id=\"templateContainer\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" valign=\"top\">\r\n<table id=\"templateBody\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"bodyContainer\" style=\"padding-top: 9px; padding-bottom: 9px;\" valign=\"top\">\r\n<table class=\"mcnBoxedTextBlock\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody class=\"mcnBoxedTextBlockOuter\">\r\n<tr>\r\n<td class=\"mcnBoxedTextBlockInner\" valign=\"top\">\r\n<table class=\"mcnBoxedTextContentContainer\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 9px 18px 9px 18px;\">\r\n<table class=\"mcnTextContentContainer\" style=\"background-color: #ffffff;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"18\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mcnTextContent\" style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: left; padding: 36px; word-break: break-word;\" valign=\"top\">\r\n<div style=\"text-align: left; word-wrap: break-word;\">Congratulations! your account has been created</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">&nbsp;</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">&nbsp;</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">Your credentials are as below</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">&nbsp;</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">Email - [email]</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">Password - [password]</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">&nbsp;</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\"><br />Welcome and thanks! <br />[app_name] Team\r\n<div class=\"footer\" style=\"font-size: 0.7em; padding: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: right; color: #777777; line-height: 14px; margin-top: 36px;\">&copy; [app_name]</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- // END BODY --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- // END TEMPLATE --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center>', 1, 1, NULL, '2018-04-20 04:00:55', '2018-04-20 04:00:55', NULL),
(3, 3, 'Activate / Deactivate User', 'Your account has been [status]', '<center>\r\n<table id=\"bodyTable\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td id=\"bodyCell\" align=\"center\" valign=\"top\">\r\n<table id=\"templateContainer\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" valign=\"top\">\r\n<table id=\"templateBody\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"bodyContainer\" style=\"padding-top: 9px; padding-bottom: 9px;\" valign=\"top\">\r\n<table class=\"mcnBoxedTextBlock\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody class=\"mcnBoxedTextBlockOuter\">\r\n<tr>\r\n<td class=\"mcnBoxedTextBlockInner\" valign=\"top\">\r\n<table class=\"mcnBoxedTextContentContainer\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 9px 18px 9px 18px;\">\r\n<table class=\"mcnTextContentContainer\" style=\"background-color: #ffffff;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"18\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mcnTextContent\" style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: left; padding: 36px; word-break: break-word;\" valign=\"top\">\r\n<div style=\"text-align: left; word-wrap: break-word;\">Your account has been [status].<br /> <br />Welcome and thanks! <br />[app_name] Team\r\n<div class=\"footer\" style=\"font-size: 0.7em; padding: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: right; color: #777777; line-height: 14px; margin-top: 36px;\">&copy; [app_name]</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- // END BODY --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- // END TEMPLATE --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center>', 1, 1, NULL, '2018-04-20 04:00:55', '2018-04-20 04:00:55', NULL),
(4, 4, 'Change Password', 'Your passwprd has been changed successfully', '<center>\r\n<table id=\"bodyTable\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td id=\"bodyCell\" align=\"center\" valign=\"top\">\r\n<table id=\"templateContainer\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" valign=\"top\">\r\n<table id=\"templateBody\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"bodyContainer\" style=\"padding-top: 9px; padding-bottom: 9px;\" valign=\"top\">\r\n<table class=\"mcnBoxedTextBlock\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody class=\"mcnBoxedTextBlockOuter\">\r\n<tr>\r\n<td class=\"mcnBoxedTextBlockInner\" valign=\"top\">\r\n<table class=\"mcnBoxedTextContentContainer\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 9px 18px 9px 18px;\">\r\n<table class=\"mcnTextContentContainer\" style=\"background-color: #ffffff;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"18\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mcnTextContent\" style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: left; padding: 36px; word-break: break-word;\" valign=\"top\">\r\n<div style=\"text-align: left; word-wrap: break-word;\">Your password has been changed successfully.</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">&nbsp;</div>\r\n<div style=\"text-align: left; word-wrap: break-word;\">New password : [password]<br /> <br />Welcome and thanks! <br />[app_name] Team\r\n<div class=\"footer\" style=\"font-size: 0.7em; padding: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: right; color: #777777; line-height: 14px; margin-top: 36px;\">&copy; [app_name]</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- // END BODY --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- // END TEMPLATE --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center>', 1, 1, NULL, '2018-04-20 04:00:55', '2018-04-20 04:00:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_template_placeholders`
--

CREATE TABLE `email_template_placeholders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template_placeholders`
--

INSERT INTO `email_template_placeholders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'app_name', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(2, 'name', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(3, 'email', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(4, 'password', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(5, 'contact-details', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(6, 'confirmation_link', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(7, 'password_reset_link', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(8, 'header_logo', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(9, 'footer_logo', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(10, 'unscribe_link', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(11, 'status', '2018-04-20 04:00:55', '2018-04-20 04:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `email_template_types`
--

CREATE TABLE `email_template_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template_types`
--

INSERT INTO `email_template_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Registration', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(2, 'Create User', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(3, 'Acivate / Deactivate User', '2018-04-20 04:00:55', '2018-04-20 04:00:55'),
(4, 'Change Password', '2018-04-20 04:00:55', '2018-04-20 04:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `type_id`, `user_id`, `entity_id`, `icon`, `class`, `text`, `assets`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 49, 'plus', 'bg-green', 'trans(\"history.backend.users.created\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Fredrick Boaz\",49]}', '2018-04-23 05:07:43', '2018-04-23 05:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `history_types`
--

CREATE TABLE `history_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_types`
--

INSERT INTO `history_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'User', '2018-04-20 04:00:54', '2018-04-20 04:00:54'),
(2, 'Role', '2018-04-20 04:00:54', '2018-04-20 04:00:54'),
(3, 'Permission', '2018-04-20 04:00:54', '2018-04-20 04:00:54'),
(4, 'CMSPage', '2018-04-20 04:00:54', '2018-04-20 04:00:54'),
(5, 'EmailTemplate', '2018-04-20 04:00:54', '2018-04-20 04:00:54'),
(6, 'BlogTag', '2018-04-20 04:00:54', '2018-04-20 04:00:54'),
(7, 'BlogCategory', '2018-04-20 04:00:54', '2018-04-20 04:00:54'),
(8, 'Blog', '2018-04-20 04:00:54', '2018-04-20 04:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `type`, `name`, `items`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'backend', 'Backend Sidebar Menu', '[{\"view_permission_id\":\"view-access-management\",\"icon\":\"fa-users\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"\",\"name\":\"Access Management\",\"id\":11,\"content\":\"Access Management\",\"children\":[{\"view_permission_id\":\"view-user-management\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.access.user.index\",\"name\":\"User Management\",\"id\":12,\"content\":\"User Management\"},{\"view_permission_id\":\"view-role-management\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.access.role.index\",\"name\":\"Role Management\",\"id\":13,\"content\":\"Role Management\"},{\"view_permission_id\":\"view-permission-management\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.access.permission.index\",\"name\":\"Permission Management\",\"id\":14,\"content\":\"Permission Management\"}]},{\"view_permission_id\":\"view-menu\",\"icon\":\"fa-bars\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.menus.index\",\"name\":\"Menus\",\"id\":3,\"content\":\"Menus\"},{\"view_permission_id\":\"view-email-template\",\"icon\":\"fa-envelope\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.emailtemplates.index\",\"name\":\"Email Templates\",\"id\":8,\"content\":\"Email Templates\"},{\"view_permission_id\":\"edit-settings\",\"icon\":\"fa-gear\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.settings.edit?id=1\",\"name\":\"Settings\",\"id\":9,\"content\":\"Settings\"},{\"id\":15,\"name\":\"Assign Users to Companies\",\"url\":\"admin.usercompanies.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-user-plus\",\"view_permission_id\":\"usercompany\",\"content\":\"Assign Users to Companies\"},{\"id\":16,\"name\":\"Company Manager\",\"url\":\"admin.companies.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa-building\",\"view_permission_id\":\"companies\",\"content\":\"Company Manager\"},{\"view_permission_id\":\"applicationmodules\",\"icon\":\"fa-cubes\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.applicationmodules.index\",\"name\":\"Apps\",\"id\":17,\"content\":\"Apps\"},{\"view_permission_id\":\"companyapps\",\"icon\":\"fa-plus-circle\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.companyapps.index\",\"name\":\"Assign Apps to Companies\",\"id\":18,\"content\":\"Assign Apps to Companies\"}]', 1, NULL, '2018-04-20 04:00:56', '2018-04-20 04:18:22', NULL);

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
(40, '2017_11_02_060149_create_blog_categories_table', 1),
(41, '2017_11_02_060149_create_blog_map_categories_table', 1),
(42, '2017_11_02_060149_create_blog_map_tags_table', 1),
(43, '2017_11_02_060149_create_blog_tags_table', 1),
(44, '2017_11_02_060149_create_blogs_table', 1),
(45, '2017_11_02_060149_create_email_template_placeholders_table', 1),
(46, '2017_11_02_060149_create_email_template_types_table', 1),
(47, '2017_11_02_060149_create_email_templates_table', 1),
(48, '2017_11_02_060149_create_faqs_table', 1),
(49, '2017_11_02_060149_create_history_table', 1),
(50, '2017_11_02_060149_create_history_types_table', 1),
(51, '2017_11_02_060149_create_modules_table', 1),
(52, '2017_11_02_060149_create_notifications_table', 1),
(53, '2017_11_02_060149_create_pages_table', 1),
(54, '2017_11_02_060149_create_password_resets_table', 1),
(55, '2017_11_02_060149_create_permission_role_table', 1),
(56, '2017_11_02_060149_create_permission_user_table', 1),
(57, '2017_11_02_060149_create_permissions_table', 1),
(58, '2017_11_02_060149_create_role_user_table', 1),
(59, '2017_11_02_060149_create_roles_table', 1),
(60, '2017_11_02_060149_create_sessions_table', 1),
(61, '2017_11_02_060149_create_settings_table', 1),
(62, '2017_11_02_060149_create_social_logins_table', 1),
(63, '2017_11_02_060149_create_users_table', 1),
(64, '2017_11_02_060152_add_foreign_keys_to_history_table', 1),
(65, '2017_11_02_060152_add_foreign_keys_to_notifications_table', 1),
(66, '2017_11_02_060152_add_foreign_keys_to_permission_role_table', 1),
(67, '2017_11_02_060152_add_foreign_keys_to_permission_user_table', 1),
(68, '2017_11_02_060152_add_foreign_keys_to_role_user_table', 1),
(69, '2017_11_02_060152_add_foreign_keys_to_social_logins_table', 1),
(70, '2017_12_10_122555_create_menus_table', 1),
(71, '2017_12_24_042039_add_null_constraint_on_created_by_on_user_table', 1),
(72, '2017_12_28_005822_add_null_constraint_on_created_by_on_role_table', 1),
(73, '2017_12_28_010952_add_null_constraint_on_created_by_on_permission_table', 1),
(74, '2018_04_11_202420_create_countries_table', 1),
(75, '2018_04_12_123631_create_companies_table', 1),
(76, '2018_04_13_120426_create_usercompanies_table', 1),
(77, '2018_04_14_085439_create_applicationmodules_table', 1),
(78, '2018_04_14_100006_create_companyapps_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'view_route',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `view_permission_id`, `name`, `url`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'view-access-management', 'Access Management', NULL, 1, NULL, '2018-04-20 04:00:56', NULL),
(2, 'view-user-management', 'User Management', 'admin.access.user.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(3, 'view-role-management', 'Role Management', 'admin.access.role.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(4, 'view-permission-management', 'Permission Management', 'admin.access.permission.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(5, 'view-menu', 'Menus', 'admin.menus.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(6, 'view-module', 'Modules', 'admin.modules.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(7, 'view-page', 'Pages', 'admin.pages.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(8, 'view-email-template', 'Email Templates', 'admin.emailtemplates.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(9, 'edit-settings', 'Settings', 'admin.settings.edit', 1, NULL, '2018-04-20 04:00:56', NULL),
(10, 'view-blog', 'Blog Management', NULL, 1, NULL, '2018-04-20 04:00:56', NULL),
(11, 'view-blog-category', 'Blog Category Management', 'admin.blogcategories.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(12, 'view-blog-tag', 'Blog Tag Management', 'admin.blogtags.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(13, 'view-blog', 'Blog Management', 'admin.blogs.index', 1, NULL, '2018-04-20 04:00:56', NULL),
(14, 'view-faq', 'Faq Management', 'admin.faqs.index', 1, NULL, '2018-04-20 04:00:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - Dashboard , 2 - Email , 3 - Both',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `user_id`, `type`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'User Logged In: User', 1, 1, 1, '2018-04-20 04:25:27', '2018-04-23 05:08:08'),
(2, 'User Logged In: Viral', 1, 1, 1, '2018-04-23 04:35:56', '2018-04-23 05:08:08'),
(3, 'User Logged In: Viral', 1, 1, 1, '2018-04-23 05:03:20', '2018-04-23 05:08:08'),
(4, 'User Logged In: Fredrick', 1, 1, 0, '2018-04-23 05:08:14', NULL),
(5, 'User Logged In: Fredrick', 1, 1, 0, '2018-04-23 05:32:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `page_slug`, `description`, `cannonical_link`, `seo_title`, `seo_keyword`, `seo_description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Terms and conditions', 'terms-and-conditions', 'terms and conditions', NULL, NULL, NULL, NULL, 1, 1, NULL, '2018-04-20 04:00:56', '2018-04-20 04:00:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fredrickboaz@gmail.com', '$2y$10$usSlB9XBr5./5SyhEvuMz.ogkqplCmptnC3XrN5ulWIMfkTyqROPe', '2018-04-23 08:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'view-backend', 'View Backend', 1, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(2, 'view-frontend', 'View Frontend', 2, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(3, 'view-access-management', 'View Access Management', 3, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(4, 'view-user-management', 'View User Management', 4, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(5, 'view-active-user', 'View Active User', 5, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(6, 'view-deactive-user', 'View Deactive User', 6, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(7, 'view-deleted-user', 'View Deleted User', 7, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(8, 'show-user', 'Show User Details', 8, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(9, 'create-user', 'Create User', 9, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(10, 'edit-user', 'Edit User', 9, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(11, 'delete-user', 'Delete User', 10, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(12, 'activate-user', 'Activate User', 11, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(13, 'deactivate-user', 'Deactivate User', 12, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(14, 'login-as-user', 'Login As User', 13, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(15, 'clear-user-session', 'Clear User Session', 14, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(16, 'view-role-management', 'View Role Management', 15, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(17, 'create-role', 'Create Role', 16, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(18, 'edit-role', 'Edit Role', 17, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(19, 'delete-role', 'Delete Role', 18, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(20, 'view-permission-management', 'View Permission Management', 19, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(21, 'create-permission', 'Create Permission', 20, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(22, 'edit-permission', 'Edit Permission', 21, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(23, 'delete-permission', 'Delete Permission', 22, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(24, 'view-page', 'View Page', 23, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(25, 'create-page', 'Create Page', 24, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(26, 'edit-page', 'Edit Page', 25, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(27, 'delete-page', 'Delete Page', 26, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(28, 'view-email-template', 'View Email Templates', 27, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(29, 'create-email-template', 'Create Email Templates', 28, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(30, 'edit-email-template', 'Edit Email Templates', 29, 1, 1, NULL, '2018-04-20 04:00:51', '2018-04-20 04:00:51', NULL),
(31, 'delete-email-template', 'Delete Email Templates', 30, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(32, 'edit-settings', 'Edit Settings', 31, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(33, 'view-blog-category', 'View Blog Categories Management', 32, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(34, 'create-blog-category', 'Create Blog Category', 33, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(35, 'edit-blog-category', 'Edit Blog Category', 34, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(36, 'delete-blog-category', 'Delete Blog Category', 35, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(37, 'view-blog-tag', 'View Blog Tags Management', 36, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(38, 'create-blog-tag', 'Create Blog Tag', 37, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(39, 'edit-blog-tag', 'Edit Blog Tag', 38, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(40, 'delete-blog-tag', 'Delete Blog Tag', 39, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(41, 'view-blog', 'View Blogs Management', 40, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(42, 'create-blog', 'Create Blog', 41, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(43, 'edit-blog', 'Edit Blog', 42, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(44, 'delete-blog', 'Delete Blog', 43, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(45, 'view-faq', 'View FAQ Management', 44, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(46, 'create-faq', 'Create FAQ', 45, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(47, 'edit-faq', 'Edit FAQ', 46, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL),
(48, 'delete-faq', 'Delete FAQ', 47, 1, 1, NULL, '2018-04-20 04:00:52', '2018-04-20 04:00:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 4, 2),
(4, 5, 2),
(5, 6, 2),
(6, 7, 2),
(7, 8, 2),
(8, 16, 2),
(9, 20, 2),
(10, 24, 2),
(11, 25, 2),
(12, 26, 2),
(13, 27, 2),
(14, 28, 2),
(15, 29, 2),
(16, 30, 2),
(17, 31, 2),
(18, 33, 2),
(19, 34, 2),
(20, 35, 2),
(21, 36, 2),
(22, 37, 2),
(23, 38, 2),
(24, 39, 2),
(25, 40, 2),
(26, 41, 2),
(27, 42, 2),
(28, 43, 2),
(29, 44, 2),
(30, 45, 2),
(31, 46, 2),
(32, 47, 2),
(33, 48, 2),
(34, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`) VALUES
(1, 42, 2),
(2, 34, 2),
(3, 38, 2),
(4, 29, 2),
(5, 46, 2),
(6, 25, 2),
(7, 44, 2),
(8, 36, 2),
(9, 40, 2),
(10, 31, 2),
(11, 48, 2),
(12, 27, 2),
(13, 43, 2),
(14, 35, 2),
(15, 39, 2),
(16, 30, 2),
(17, 47, 2),
(18, 26, 2),
(19, 8, 2),
(20, 3, 2),
(21, 5, 2),
(22, 1, 2),
(23, 33, 2),
(24, 37, 2),
(25, 41, 2),
(26, 6, 2),
(27, 7, 2),
(28, 28, 2),
(29, 45, 2),
(30, 24, 2),
(31, 20, 2),
(32, 16, 2),
(33, 4, 2),
(34, 2, 3),
(35, 1, 49),
(36, 2, 49),
(37, 3, 49),
(38, 4, 49),
(39, 5, 49),
(40, 6, 49),
(41, 7, 49),
(42, 8, 49),
(43, 9, 49),
(44, 10, 49),
(45, 11, 49),
(46, 12, 49),
(47, 13, 49),
(48, 14, 49),
(49, 15, 49),
(50, 16, 49),
(51, 17, 49),
(52, 18, 49),
(53, 19, 49),
(54, 20, 49),
(55, 21, 49),
(56, 22, 49),
(57, 23, 49),
(58, 24, 49),
(59, 25, 49),
(60, 26, 49),
(61, 27, 49),
(62, 28, 49),
(63, 29, 49),
(64, 30, 49),
(65, 31, 49),
(66, 32, 49),
(67, 33, 49),
(68, 34, 49),
(69, 35, 49),
(70, 36, 49),
(71, 37, 49),
(72, 38, 49),
(73, 39, 49),
(74, 40, 49),
(75, 41, 49),
(76, 42, 49),
(77, 43, 49),
(78, 44, 49),
(79, 45, 49),
(80, 46, 49),
(81, 47, 49),
(82, 48, 49);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `all`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', 1, 1, 1, 1, NULL, '2018-04-20 04:00:50', '2018-04-20 04:00:50', NULL),
(2, 'Executive', 0, 2, 1, 1, NULL, '2018-04-20 04:00:50', '2018-04-20 04:00:50', NULL),
(3, 'User', 0, 3, 1, 1, NULL, '2018-04-20 04:00:50', '2018-04-20 04:00:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 49, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci,
  `disclaimer` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `seo_title`, `seo_keyword`, `seo_description`, `company_contact`, `company_address`, `from_name`, `from_email`, `facebook`, `linkedin`, `twitter`, `google`, `copyright_text`, `footer_text`, `terms`, `disclaimer`, `google_analytics`, `home_video1`, `home_video2`, `home_video3`, `home_video4`, `explanation1`, `explanation2`, `explanation3`, `explanation4`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'ProKazi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usercompanies`
--

CREATE TABLE `usercompanies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usercompanies`
--

INSERT INTO `usercompanies` (`id`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2018-04-20 04:25:06', '2018-04-20 04:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_term_accept` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `is_term_accept`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Viral', 'Solani', 'admin@admin.com', '$2y$10$lk3GV8BAwhxLHDYlTlqY7ebdAQUSzojA6teQXG.wgTUu5tT81OvNG', 1, 'a4e187589148c4901a4d316de873f3c2', 1, 0, 'iNjtDo0Xc4pAiSD54vVutESXUmeZJimbP1RBesIWBcUMpr7ENnFILyzVyzSi', 1, NULL, '2018-04-20 04:00:50', '2018-04-20 04:00:50', NULL),
(2, 'Vipul', 'Basapati', 'executive@executive.com', '$2y$10$NR3EOHCoFY9knw9.gLT.IucRKdn0GO7VM.iSLoMDnenvpyGHFPgeC', 1, '8988dc550c5f841b8019a2d3b967bfeb', 1, 0, NULL, 1, NULL, '2018-04-20 04:00:50', '2018-04-20 04:00:50', NULL),
(3, 'User', 'Test', 'user@user.com', '$2y$10$bq.6CPMlf1HRqgpBvO1Bo.vv2x.39PTv/YuBKraMwsMM1BY4kY.im', 1, '108c237ea7f3a3520b993cd84f6b1c0b', 1, 0, 'ePpUKKct3Xpsp11eyiOt9yrZ8CEBOL7TLRfTDuzkoY2TbsRT0tLYSyXv7USH', 1, NULL, '2018-04-20 04:00:50', '2018-04-20 04:00:50', NULL),
(4, 'Joseph Kuuma Matheka', '', 'joseph.matheka@freightwell.com', '$2y$10$aTXk1ivmLho5QchaV0DfS.om.P6r9fkKITt2dhpJwKOdPz712GRdm', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:01:42', '2018-04-20 04:01:42', NULL),
(5, 'Washington Mwamburi Maseghe', '', 'washington.mwamburi@freightwell.com', '$2y$10$C0Oo6iC8cb0NFTuP6BxwCuSgWzoLxXWLIr2CiF8HwmQ1nXp7pH3h2', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:01:42', '2018-04-20 04:01:42', NULL),
(6, 'Moses John Shikhonga', '', 'imports@freightwell.com', '$2y$10$R/IqNIOkKXLxp7AhKdH6Uu2IfGg2y1GrXok1xdXU.a8FO.6qbtMEG', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:01:42', '2018-04-20 04:01:42', NULL),
(7, 'Christine Nduta Gema', '', 'christine.gema@freitwell.com', '$2y$10$xZ9eBxSK3KWBgv8z1jaWtesJSXxBT9ol3GvdM/27JWmnZ0lZN4mWm', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:01:42', '2018-04-20 04:01:42', NULL),
(9, 'PAULINE KARWIRWA', '', 'pauline.karwirwa@sovereignlog.com', '$2y$10$jy4S.ZJqwX9C4B.a/V62Zur06ttojJFjaI21YNo/7IGnEO4wPbzMS', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:02', '2018-04-20 04:03:02', NULL),
(10, 'CLIFFORD NYAKUNDI', '', 'info@sovereignlog.com', '$2y$10$OxABgqtms35XqgnzaqZAWuJHYv6L43EL2gri2fZlWf9jrozcMM0ai', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:03', '2018-04-20 04:03:03', NULL),
(11, 'SILVESTER MUSOVYA KUTUTA', '', 'silvester@esl-eastafrica.com', '$2y$10$xS4Q6Ui1iSKje.JVf4xfK.HpA8v4H4aTTahcfQpefYxt3y3zX7zyq', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:18', '2018-04-20 04:03:18', NULL),
(12, 'CATHERINE ANZAZI LEWA', '', 'catherine.lewa@esl-eastafrica.com', '$2y$10$eqlXaIuIQoSEKtooRgd2oO4g.TddpnZu88tXGbIoq/FF2ejsknMNK', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:18', '2018-04-20 04:03:18', NULL),
(13, 'MOURINE ACHIENG MAGERO', '', 'mourine.magero@esl-eastafrica.com', '$2y$10$XunSTLP3cnq3AOvoSQIHf.12tB2CrS2mqkfSQIblXhJX0CoTRqF6q', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:18', '2018-04-20 04:03:18', NULL),
(14, 'FRANCISCA MUENI NZIOKA', '', 'francisca@esl-eastafrica.com', '$2y$10$c5vKRdevOKH8ub/1Xm.sS.8U8QvpLtJIyUCIrxh3KND9CADoa.32q', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:18', '2018-04-20 04:03:18', NULL),
(15, 'ALOICE MUOKI KUTUTA', '', 'aloice@esl-eastafrica.com', '$2y$10$2wGoAdRi02RkcdLpobLevOvbgYVIXYSBIinsiI.0WUfV68AhO7h8K', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:18', '2018-04-20 04:03:18', NULL),
(16, 'MAUREEN ATIENO OPIYO', '', 'maurine.atieno@esl-eastafrica.com', '$2y$10$C4JsfeFjib/dWEafweiS1.zp5No1PsG/RDyA9Ic6s5HkeNWVfb8/q', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:19', '2018-04-20 04:03:19', NULL),
(17, 'ISAAC BABU WATKINS', '', 'watkins@esl-eastafrica.com', '$2y$10$08MGer65/r1AOa1mnVemIu1HgrhhBSsX60fhvQif7VJVywebwoSyO', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:19', '2018-04-20 04:03:19', NULL),
(18, 'CHRISPUS MAINGI KILEI', '', 'chrispus.kilei@esl-eastafrica.com', '$2y$10$7UHYBBQXdAyGvXBLW5aCeeAWqS7PYRKYwGEy.H7Jl2GN4tpkYa4Ee', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:19', '2018-04-20 04:03:19', NULL),
(19, 'EVANS NGALA CHIBUNGU', '', 'evans.ngala@esl-eastafrica.com', '$2y$10$UVxlWEWNKUlsCB3UpNnFa.nSq/5ROabVg5L/SKxAX4qfevXlGbY5q', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:19', '2018-04-20 04:03:19', NULL),
(20, 'LEONARD MWARUWA BAYA', '', 'leonard.baya@esl-eastafrica.com', '$2y$10$pnN4YptT4EhWo4l1VpdjXeA26bCOiEs/uANB.m9fR2p/Xb4b8HZPq', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:19', '2018-04-20 04:03:19', NULL),
(21, 'MARTIN KARANI IKIARA', '', 'martin.karani@esl-eastafrica.com', '$2y$10$xg799GvtRY0yNUS5y4J1FOTwT59Vjty.MvYDpMLFhqkA8nLLkIMUa', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:19', '2018-04-20 04:03:19', NULL),
(22, 'LENROD MWAMBURI MGENDI', '', 'lenrod.mwamburi@esl-eastafrica.com', '$2y$10$hB8IheUvQEyCqqyrpy3Zxei9S37eLlS7skM3.3AA.k3uKv2giHQVG', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:20', '2018-04-20 04:03:20', NULL),
(23, 'JOHN KIPCHUMBA LAGAT', '', 'john.lagat@esl-eastafrica.com', '$2y$10$35j2CMXLrMVfRGhTGx7LpeaDeaBbAdanjOI9zYnN.MFIsIUykg9Ea', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:20', '2018-04-20 04:03:20', NULL),
(24, 'JOYLINAH NDUTA NJERI', '', 'joylinah.nduta@esl-eastafrica.com', '$2y$10$vO8wLAHwgkysQy187/CjHuJjejItmBaR/ZouPhNKIT3FBn0IVFv0W', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:20', '2018-04-20 04:03:20', NULL),
(25, 'DANIEL LUKORITO WANIKINA', '', 'daniel.lukorito@esl-eastafrica.com', '$2y$10$Fo6z0tX8nbSRQW/x5bx6IeE9eIqE1c6/kc7v/O.823H1526hjFlSW', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:20', '2018-04-20 04:03:20', NULL),
(26, 'STEPHEN OKIKI OMONDI', '', 'stephen.okiki@esl-eastafrica.com', '$2y$10$6kRbi614cIqiJevcPZbqauLy5dDoIHQUAKo7SVgu1SDw65L8.1PzS', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:20', '2018-04-20 04:03:20', NULL),
(27, 'JUSTUS KALII MUTHEMBWA', '', 'justus.muthembwa@esl-eastafrica.com', '$2y$10$5qPTjOzYGFUCpQCV4ZyKe.ESsgSlOw1Zi9NmJcZozbxFXogxDSlLS', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:21', '2018-04-20 04:03:21', NULL),
(28, 'PATRICK MUKUNDI MBUGUA', '', 'patrick.mbugua@esl-eastafrica.com', '$2y$10$RSkuNICjEpkpZP4KZrkBAOfbekW5smOaCNgbJi0ufPMEwjCxyxk3m', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:21', '2018-04-20 04:03:21', NULL),
(29, 'RAYMOND JUMA WANGUNDA', '', 'raymond.wangunda@esl-eastafrica.com', '$2y$10$UZ4d.vDb9Qgyy86b8jXUn.AfxO8lkxyUPeYzyNr/y/EGoI9NbOTiq', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:21', '2018-04-20 04:03:21', NULL),
(30, 'FLORENCE CHEPNGETICH TUEI', '', 'florence.tuei@esl-eastafrica.com', '$2y$10$3yqaC6p6mIFC6zOovwDq/uFrXLPp.ThgwdjkvxSgER0i1JyJFWHJe', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:21', '2018-04-20 04:03:21', NULL),
(31, 'KENNEDY KIVUVANI', '', 'kennedy.kivuvani@esl-eastafrica.com', '$2y$10$ao2yVDixD99md74Y/kUq8.f2i1t20HeLkOWGAFeTBlx.ge/ffF8y6', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:21', '2018-04-20 04:03:21', NULL),
(32, 'ERIC OLENSI OLENSI OSINYA', '', 'erick.osinya@esl-eastafrica.com', '$2y$10$O4anL4Oj/ITD9ZZ5OxmTeOb8VZTHGxMgRq0fJxrThoS7Hmoym5z6u', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:21', '2018-04-20 04:03:21', NULL),
(33, 'CATHERINE NYAMBURA THUO', '', 'catherine.thuo@esl-eastafrica.com', '$2y$10$nFV0twAwVGDd5VjJI.umHu5M.eZtPIwsVCXxpA.7AqoHy6SejdWeu', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:22', '2018-04-20 04:03:22', NULL),
(34, 'GRACE MPOYA', '', 'grace.mpoya@esl-eastafrica.com', '$2y$10$s8rkxxgnaFADowpn2xfuK.8ex1ZxFfpiVOJX1H97OyEXYpZl/SEfu', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:22', '2018-04-20 04:03:22', NULL),
(35, 'ERIC MULWA KYALO', '', 'eric.mulwa@esl-eastafrica.com', '$2y$10$DkxpV7W52V4z0SKKWF0okOzbWfvcDub1tA2rWbE1SRfvZmLMALJdC', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:22', '2018-04-20 04:03:22', NULL),
(36, 'IRENE ATIENO OTIENO', '', 'irene.atieno@esl-eastafrica.com', '$2y$10$yKGWr7bWadZRBFVGaa3NsezZqLd7L/PUKSE5agy8K2.Q04Wml6e6C', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:22', '2018-04-20 04:03:22', NULL),
(37, 'MERCYLINE MUTHEU MUTUA', '', 'mercyline.mutua@esl-eastafrica.com', '$2y$10$l7Jzg1uMlEDYq/gIm2/fyuTBahA1nwYaG1G/XeIrpB3Dl6QFooyAC', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:22', '2018-04-20 04:03:22', NULL),
(38, 'ARSHUR LOMO OWANE', '', 'lomo.owane@esl-eastafrica.com', '$2y$10$R4ldrQo93RUCn.rogtSlmukVP2sPaT1Y6l.ml3ztufuOuJK6Ie5Ci', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:23', '2018-04-20 04:03:23', NULL),
(39, 'COLLINS ONYANGO PAMBA', '', 'collins.pamba@esl-eastafrica.com', '$2y$10$jWy1gLdRwyTHPpKFZPL1Tu3Hl3Mxl/OEVY157MoRPd/CsZkiMPPaO', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:23', '2018-04-20 04:03:23', NULL),
(40, 'GULJAN ABUBAKAR RAMADHAN', '', 'guljan.abubakar@esl-eastafrica.com', '$2y$10$GNzw.05ch0NfRQ5xaoj7JOMmVmJueJCdRda1qIcFegXU0x07rBV9O', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:23', '2018-04-20 04:03:23', NULL),
(41, 'FRANCIS OUMA OPALO', '', 'francis.opalo@esl-eastafrica.com', '$2y$10$dRY0A7VaZYIZYq7ZoIdJ0uVwJAFA/rJiUfuYeR.lqKpmoUMg1i./O', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:23', '2018-04-20 04:03:23', NULL),
(42, 'PETER HAVACY MANGA', '', 'peter.manga@esl-eastafrica.com', '$2y$10$eKfE.lt9YhuEXQPy3TOe5OUuSoiZmqe5VJ0ZzBlblCqAjUCKa13QW', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:23', '2018-04-20 04:03:23', NULL),
(43, 'LAWRENCE ODHIAMBO AMENYA', '', 'lawrence.amenya@esl-eastafrica.com', '$2y$10$M066rYFuQRjXMo0kf4VSwuY0M95bD1P1jEbTtIwv3B7sFjeMVKLIe', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:23', '2018-04-20 04:03:23', NULL),
(44, 'MOSES ELIAS MANGALE', '', 'moses.mangale@esl-eastafrica.com', '$2y$10$YCYNiSx4iCD9Tsm/3UCDeuo6gi03QIRPPX7ID1jLbCQm2BgigQYDa', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:24', '2018-04-20 04:03:24', NULL),
(45, 'MOUREEN WAIRIMU KIAMA', '', 'wairimu.kiama@esl-eastafrica.com', '$2y$10$V8ny23YYASJXzFIx8V42DuT3lYq8OKH4jSzaf/CTX5dSnimjHQXiK', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:24', '2018-04-20 04:03:24', NULL),
(46, 'ERICKSON MWANIKI NGELE', '', 'erickson.mwaniki@esl-eastafrica.com', '$2y$10$jD2CNTTbwcGEq6lLMU.zyO/aCZ13faugOD/c0wm3EGuJxBvo9SyzC', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:24', '2018-04-20 04:03:24', NULL),
(47, 'FANUEL ONYANGO', '', 'fanuel.onyango@esl-eastafrica.com', '$2y$10$/koFvpeNw5ijSePp/8vyU.//3Af7xiCXmBIUrKLs8dUcyEXpJ2BCS', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:24', '2018-04-20 04:03:24', NULL),
(48, 'Benson Munene Ireri', '', 'benson.ireri@esl-eastafrica.com', '$2y$10$2PbKC7qxj/yH2fcbSTF/EOn88ZQV0he/Rp4uuB48P5BI4/rT0J7GG', 1, NULL, 0, 0, NULL, NULL, NULL, '2018-04-20 04:03:24', '2018-04-20 04:03:24', NULL),
(49, 'Fredrick', 'Boaz', 'fredrickboaz@gmail.com', '$2y$10$OPbz3lK3pdFudstzu3Vqzuz9mGBOGl4SNqbLTVWQk/oXNOk0WRL46', 1, '4b7ae92890fc09ca4c5795d1f94f94ec', 1, 0, 'QnPm4OfMkMsSeAMDf3X8hmrUrHmfzplMDwAZEkDNB5ZK6vAUWNzA3L9nz4mv', 1, NULL, '2018-04-23 05:07:42', '2018-04-23 05:07:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicationmodules`
--
ALTER TABLE `applicationmodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_map_categories`
--
ALTER TABLE `blog_map_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_categories_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_categories_category_id_index` (`category_id`);

--
-- Indexes for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_tags_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyapps`
--
ALTER TABLE `companyapps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_id_foreign` (`application_id`),
  ADD KEY `company_id_foreign` (`company_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_type_id_index` (`type_id`);

--
-- Indexes for table `email_template_placeholders`
--
ALTER TABLE `email_template_placeholders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_types`
--
ALTER TABLE `email_template_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_type_id_foreign` (`type_id`),
  ADD KEY `history_user_id_foreign` (`user_id`);

--
-- Indexes for table `history_types`
--
ALTER TABLE `history_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_slug_unique` (`page_slug`);

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
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_foreign` (`user_id`);

--
-- Indexes for table `usercompanies`
--
ALTER TABLE `usercompanies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `company_id_foreign` (`company_id`);

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
-- AUTO_INCREMENT for table `applicationmodules`
--
ALTER TABLE `applicationmodules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_map_categories`
--
ALTER TABLE `blog_map_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companyapps`
--
ALTER TABLE `companyapps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_template_placeholders`
--
ALTER TABLE `email_template_placeholders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `email_template_types`
--
ALTER TABLE `email_template_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history_types`
--
ALTER TABLE `history_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usercompanies`
--
ALTER TABLE `usercompanies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `history_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
