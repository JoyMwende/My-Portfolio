-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 07:46 AM
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
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-05-20 13:03:14', '2023-05-20 13:03:14', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_contact_form`
--

CREATE TABLE `wp_contact_form` (
  `id` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_contact_form`
--

INSERT INTO `wp_contact_form` (`id`, `full_name`, `email`, `subject`, `message`) VALUES
(17, 'ghj', '', 'hnmhjkl', 'tgyhujik'),
(18, 'ghjk', 'patrick@gmail.com', '', 'ghjkl'),
(19, 'xcvbn', 'patrick@gmail.com', 'Job Hiring', 'ghjmk,'),
(20, 'l ', 'trainee@gmail.com', 'kjhb lkjnh', ''),
(21, 'rtyuio', 'joy@gmail.com', '', 'rtyuio'),
(22, 'xcvbn', 'patrick@gmail.com', '', 'ghnjm'),
(23, 'Joy Mwende', 'joy@gmail.com', 'Congratulations', 'Nice work!');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/portfolio', 'yes'),
(2, 'home', 'http://localhost/portfolio', 'yes'),
(3, 'blogname', 'Portfolio', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'joymwendekairi@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:138:{s:54:\"portfolio/.+?/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"portfolio/.+?/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"projects/?$\";s:28:\"index.php?post_type=projects\";s:41:\"projects/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=projects&feed=$matches[1]\";s:36:\"projects/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=projects&feed=$matches[1]\";s:28:\"projects/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=projects&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"portfolio/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"portfolio/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"portfolio/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"portfolio/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"portfolio/(.+?)/embed/?$\";s:46:\"index.php?bws-portfolio=$matches[1]&embed=true\";s:28:\"portfolio/(.+?)/trackback/?$\";s:40:\"index.php?bws-portfolio=$matches[1]&tb=1\";s:36:\"portfolio/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?bws-portfolio=$matches[1]&paged=$matches[2]\";s:43:\"portfolio/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?bws-portfolio=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?bws-portfolio=$matches[1]&page=$matches[2]\";s:57:\"executor_profile/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?portfolio_executor_profile=$matches[1]&feed=$matches[2]\";s:52:\"executor_profile/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?portfolio_executor_profile=$matches[1]&feed=$matches[2]\";s:33:\"executor_profile/([^/]+)/embed/?$\";s:59:\"index.php?portfolio_executor_profile=$matches[1]&embed=true\";s:45:\"executor_profile/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?portfolio_executor_profile=$matches[1]&paged=$matches[2]\";s:27:\"executor_profile/([^/]+)/?$\";s:48:\"index.php?portfolio_executor_profile=$matches[1]\";s:53:\"technologies/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?technologies=$matches[1]&feed=$matches[2]\";s:48:\"technologies/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?technologies=$matches[1]&feed=$matches[2]\";s:29:\"technologies/([^/]+)/embed/?$\";s:45:\"index.php?technologies=$matches[1]&embed=true\";s:41:\"technologies/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?technologies=$matches[1]&paged=$matches[2]\";s:23:\"technologies/([^/]+)/?$\";s:34:\"index.php?technologies=$matches[1]\";s:36:\"projects/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"projects/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"projects/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"projects/([^/]+)/embed/?$\";s:41:\"index.php?projects=$matches[1]&embed=true\";s:29:\"projects/([^/]+)/trackback/?$\";s:35:\"index.php?projects=$matches[1]&tb=1\";s:49:\"projects/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?projects=$matches[1]&feed=$matches[2]\";s:44:\"projects/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?projects=$matches[1]&feed=$matches[2]\";s:37:\"projects/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&paged=$matches[2]\";s:44:\"projects/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&cpage=$matches[2]\";s:33:\"projects/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?projects=$matches[1]&page=$matches[2]\";s:25:\"projects/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"projects/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"projects/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:23:\"portfolio/portfolio.php\";i:1;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Portfolio', 'yes'),
(41, 'stylesheet', 'Portfolio', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1700139793', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:5:{i:1687248197;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1687266197;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687266238;a:4:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687698197;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1684588276;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(128, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687239997;s:7:\"checked\";a:4:{s:9:\"Portfolio\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(135, 'finished_updating_comment_type', '1', 'yes'),
(136, 'current_theme', 'Portfolio', 'yes'),
(137, 'theme_mods_Portfolio', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(139, 'recovery_mode_email_last_sent', '1686814268', 'yes'),
(160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(175, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1687239988;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(176, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"joymwendekairi@gmail.com\";s:7:\"version\";s:5:\"6.2.2\";s:9:\"timestamp\";i:1685008148;}', 'no'),
(179, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":1}', 'yes'),
(235, 'recently_activated', 'a:0:{}', 'yes'),
(238, 'WPLANG', '', 'yes'),
(239, 'new_admin_email', 'joymwendekairi@gmail.com', 'yes'),
(240, 'whl_page', 'joy', 'yes'),
(241, 'whl_redirect_admin', '404', 'yes'),
(289, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(326, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1687418831', 'no'),
(327, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(328, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1687418833', 'no'),
(329, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(350, 'widget_portfolio_technologies_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(351, 'widget_prtfl_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(352, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:\"bws_menu\";a:1:{s:7:\"version\";a:1:{s:23:\"portfolio/portfolio.php\";s:5:\"2.4.2\";}}}', 'yes'),
(354, 'prtfl_options', 'a:34:{s:21:\"plugin_option_version\";s:4:\"2.56\";s:13:\"first_install\";i:1686821554;s:22:\"suggest_feature_banner\";i:1;s:23:\"display_settings_notice\";i:1;s:19:\"display_demo_notice\";i:1;s:16:\"image_size_album\";s:6:\"medium\";s:16:\"image_size_photo\";s:9:\"thumbnail\";s:14:\"custom_size_px\";a:2:{s:15:\"portfolio-thumb\";a:2:{i:0;i:280;i:1;i:300;}s:21:\"portfolio-photo-thumb\";a:2:{i:0;i:240;i:1;i:260;}}s:26:\"page_id_portfolio_template\";s:0:\"\";s:8:\"order_by\";s:4:\"date\";s:5:\"order\";s:4:\"DESC\";s:22:\"custom_image_row_count\";i:3;s:26:\"custom_portfolio_row_count\";i:1;s:21:\"date_additional_field\";i:1;s:21:\"link_additional_field\";i:1;s:31:\"shrdescription_additional_field\";i:1;s:28:\"description_additional_field\";i:1;s:20:\"svn_additional_field\";i:1;s:35:\"svn_additional_field_for_non_logged\";i:1;s:25:\"executor_additional_field\";i:1;s:29:\"technologies_additional_field\";i:1;s:40:\"link_additional_field_for_non_registered\";i:1;s:15:\"date_text_field\";s:19:\"Date of completion:\";s:15:\"link_text_field\";s:13:\"Project, URL:\";s:25:\"shrdescription_text_field\";s:18:\"Short description:\";s:22:\"description_text_field\";s:12:\"Description:\";s:14:\"svn_text_field\";s:18:\"Source Files, URL:\";s:19:\"executor_text_field\";s:9:\"Executor:\";s:21:\"screenshot_text_field\";s:17:\"More screenshots:\";s:23:\"technologies_text_field\";s:13:\"Technologies:\";s:4:\"slug\";s:9:\"portfolio\";s:14:\"post_type_name\";s:13:\"bws-portfolio\";s:14:\"widget_updated\";i:1;s:19:\"flush_rewrite_rules\";i:0;}', 'yes'),
(416, '_site_transient_timeout_theme_roots', '1687241794', 'no'),
(417, '_site_transient_theme_roots', 'a:4:{s:9:\"Portfolio\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(418, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687240000;s:8:\"response\";a:1:{s:23:\"portfolio/portfolio.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/portfolio\";s:4:\"slug\";s:9:\"portfolio\";s:6:\"plugin\";s:23:\"portfolio/portfolio.php\";s:11:\"new_version\";s:4:\"2.56\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/portfolio/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/portfolio.2.56.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/portfolio/assets/icon-256x256.gif?rev=2617109\";s:2:\"1x\";s:62:\"https://ps.w.org/portfolio/assets/icon-128x128.gif?rev=2617109\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/portfolio/assets/banner-1544x500.jpg?rev=2305597\";s:2:\"1x\";s:64:\"https://ps.w.org/portfolio/assets/banner-772x250.jpg?rev=2305597\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.9.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"portfolio/portfolio.php\";s:5:\"1.0.0\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.9.8\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(10, 8, '_edit_lock', '1684589704:1'),
(11, 10, '_edit_lock', '1684589744:1'),
(12, 10, '_wp_page_template', 'page-about.php'),
(13, 12, '_edit_lock', '1686836032:1'),
(14, 12, '_wp_page_template', ''),
(15, 14, '_edit_lock', '1684589788:1'),
(16, 14, '_wp_page_template', 'page-contact.php'),
(17, 16, '_menu_item_type', 'post_type'),
(18, 16, '_menu_item_menu_item_parent', '0'),
(19, 16, '_menu_item_object_id', '14'),
(20, 16, '_menu_item_object', 'page'),
(21, 16, '_menu_item_target', ''),
(22, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 16, '_menu_item_xfn', ''),
(24, 16, '_menu_item_url', ''),
(35, 18, '_menu_item_type', 'post_type'),
(36, 18, '_menu_item_menu_item_parent', '0'),
(37, 18, '_menu_item_object_id', '10'),
(38, 18, '_menu_item_object', 'page'),
(39, 18, '_menu_item_target', ''),
(40, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 18, '_menu_item_xfn', ''),
(42, 18, '_menu_item_url', ''),
(44, 19, '_menu_item_type', 'post_type'),
(45, 19, '_menu_item_menu_item_parent', '0'),
(46, 19, '_menu_item_object_id', '8'),
(47, 19, '_menu_item_object', 'page'),
(48, 19, '_menu_item_target', ''),
(49, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 19, '_menu_item_xfn', ''),
(51, 19, '_menu_item_url', ''),
(53, 20, '_menu_item_type', 'post_type'),
(54, 20, '_menu_item_menu_item_parent', '0'),
(55, 20, '_menu_item_object_id', '14'),
(56, 20, '_menu_item_object', 'page'),
(57, 20, '_menu_item_target', ''),
(58, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 20, '_menu_item_xfn', ''),
(60, 20, '_menu_item_url', ''),
(62, 21, '_menu_item_type', 'post_type'),
(63, 21, '_menu_item_menu_item_parent', '0'),
(64, 21, '_menu_item_object_id', '12'),
(65, 21, '_menu_item_object', 'page'),
(66, 21, '_menu_item_target', ''),
(67, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 21, '_menu_item_xfn', ''),
(69, 21, '_menu_item_url', ''),
(71, 22, '_menu_item_type', 'post_type'),
(72, 22, '_menu_item_menu_item_parent', '0'),
(73, 22, '_menu_item_object_id', '10'),
(74, 22, '_menu_item_object', 'page'),
(75, 22, '_menu_item_target', ''),
(76, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 22, '_menu_item_xfn', ''),
(78, 22, '_menu_item_url', ''),
(80, 23, '_menu_item_type', 'post_type'),
(81, 23, '_menu_item_menu_item_parent', '0'),
(82, 23, '_menu_item_object_id', '8'),
(83, 23, '_menu_item_object', 'page'),
(84, 23, '_menu_item_target', ''),
(85, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 23, '_menu_item_xfn', ''),
(87, 23, '_menu_item_url', ''),
(91, 27, '_wp_trash_meta_status', 'publish'),
(92, 27, '_wp_trash_meta_time', '1685776673'),
(94, 29, '_edit_lock', '1686815192:1'),
(95, 30, '_wp_attached_file', '2023/06/missing-people.png'),
(96, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1345;s:6:\"height\";i:644;s:4:\"file\";s:26:\"2023/06/missing-people.png\";s:8:\"filesize\";i:133803;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 31, '_edit_lock', '1686209498:1'),
(98, 32, '_wp_attached_file', '2023/06/event.png'),
(99, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:640;s:4:\"file\";s:17:\"2023/06/event.png\";s:8:\"filesize\";i:641894;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 33, '_wp_attached_file', '2023/06/help-desk.png'),
(101, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1365;s:6:\"height\";i:635;s:4:\"file\";s:21:\"2023/06/help-desk.png\";s:8:\"filesize\";i:789708;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 35, '_wp_attached_file', '2023/06/sendit.png'),
(105, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:643;s:4:\"file\";s:18:\"2023/06/sendit.png\";s:8:\"filesize\";i:168802;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 36, '_wp_attached_file', '2023/06/shopit.png'),
(107, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1352;s:6:\"height\";i:623;s:4:\"file\";s:18:\"2023/06/shopit.png\";s:8:\"filesize\";i:292147;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 37, '_wp_attached_file', '2023/06/ticket.png'),
(109, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2023/06/ticket.png\";s:8:\"filesize\";i:73525;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 39, '_edit_lock', '1686209236:1'),
(113, 40, '_wp_attached_file', '2023/06/project-1.png'),
(114, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1348;s:6:\"height\";i:633;s:4:\"file\";s:21:\"2023/06/project-1.png\";s:8:\"filesize\";i:81921;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 42, '_edit_lock', '1686209334:1'),
(120, 44, '_edit_lock', '1686209249:1'),
(123, 46, '_edit_lock', '1686209295:1'),
(126, 48, '_edit_lock', '1686209347:1'),
(129, 50, '_edit_lock', '1686209390:1'),
(132, 1, '_wp_trash_meta_status', 'publish'),
(133, 1, '_wp_trash_meta_time', '1686209545'),
(134, 1, '_wp_desired_post_slug', 'hello-world'),
(135, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(140, 31, '_wp_trash_meta_status', 'publish'),
(141, 31, '_wp_trash_meta_time', '1686209646'),
(142, 31, '_wp_desired_post_slug', 'e-find'),
(143, 56, '_edit_last', '1'),
(144, 56, '_edit_lock', '1686820948:1'),
(145, 19, '_wp_old_date', '2023-05-20'),
(146, 18, '_wp_old_date', '2023-05-20'),
(148, 16, '_wp_old_date', '2023-05-20'),
(149, 12, '_wp_trash_meta_status', 'publish'),
(150, 12, '_wp_trash_meta_time', '1686831984'),
(151, 12, '_wp_desired_post_slug', 'projects'),
(152, 60, '_edit_lock', '1686831908:1'),
(153, 60, '_wp_page_template', 'page-projects.php'),
(154, 62, '_menu_item_type', 'post_type'),
(155, 62, '_menu_item_menu_item_parent', '0'),
(156, 62, '_menu_item_object_id', '60'),
(157, 62, '_menu_item_object', 'page'),
(158, 62, '_menu_item_target', ''),
(159, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 62, '_menu_item_xfn', ''),
(161, 62, '_menu_item_url', ''),
(163, 63, '_edit_lock', '1686838274:1'),
(164, 63, '_wp_page_template', 'page-project.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-05-20 13:03:14', '2023-05-20 13:03:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-06-08 07:32:25', '2023-06-08 07:32:25', '', 0, 'http://localhost/portfolio/?p=1', 0, 'post', '', 1),
(8, 1, '2023-05-20 13:37:24', '2023-05-20 13:37:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-05-20 13:37:24', '2023-05-20 13:37:24', '', 0, 'http://localhost/portfolio/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-05-20 13:37:24', '2023-05-20 13:37:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-05-20 13:37:24', '2023-05-20 13:37:24', '', 8, 'http://localhost/portfolio/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-05-20 13:38:05', '2023-05-20 13:38:05', '', 'About Me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2023-05-20 13:38:05', '2023-05-20 13:38:05', '', 0, 'http://localhost/portfolio/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-05-20 13:38:05', '2023-05-20 13:38:05', '', 'About Me', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-20 13:38:05', '2023-05-20 13:38:05', '', 10, 'http://localhost/portfolio/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-05-20 13:38:27', '2023-05-20 13:38:27', '<!-- wp:paragraph -->\n<p>hjhjhjkjk</p>\n<!-- /wp:paragraph -->', 'Projects', '', 'trash', 'closed', 'closed', '', 'projects__trashed', '', '', '2023-06-15 12:26:24', '2023-06-15 12:26:24', '', 0, 'http://localhost/portfolio/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-05-20 13:38:27', '2023-05-20 13:38:27', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-20 13:38:27', '2023-05-20 13:38:27', '', 12, 'http://localhost/portfolio/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-05-20 13:38:47', '2023-05-20 13:38:47', '', 'Contact Me', '', 'publish', 'closed', 'closed', '', 'contact-me', '', '', '2023-05-20 13:38:47', '2023-05-20 13:38:47', '', 0, 'http://localhost/portfolio/?page_id=14', 0, 'page', '', 0),
(15, 1, '2023-05-20 13:38:47', '2023-05-20 13:38:47', '', 'Contact Me', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-05-20 13:38:47', '2023-05-20 13:38:47', '', 14, 'http://localhost/portfolio/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-06-15 12:29:47', '2023-05-20 13:41:47', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2023-06-15 12:29:47', '2023-06-15 12:29:47', '', 0, 'http://localhost/portfolio/?p=16', 3, 'nav_menu_item', '', 0),
(18, 1, '2023-06-15 12:29:47', '2023-05-20 13:41:47', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2023-06-15 12:29:47', '2023-06-15 12:29:47', '', 0, 'http://localhost/portfolio/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2023-06-15 12:29:47', '2023-05-20 13:41:47', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2023-06-15 12:29:47', '2023-06-15 12:29:47', '', 0, 'http://localhost/portfolio/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2023-05-20 13:42:26', '2023-05-20 13:42:26', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2023-05-20 13:42:26', '2023-05-20 13:42:26', '', 0, 'http://localhost/portfolio/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2023-05-20 13:42:26', '2023-05-20 13:42:26', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2023-05-20 13:42:26', '2023-05-20 13:42:26', '', 0, 'http://localhost/portfolio/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2023-05-20 13:42:26', '2023-05-20 13:42:26', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2023-05-20 13:42:26', '2023-05-20 13:42:26', '', 0, 'http://localhost/portfolio/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2023-05-20 13:42:26', '2023-05-20 13:42:26', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2023-05-20 13:42:26', '2023-05-20 13:42:26', '', 0, 'http://localhost/portfolio/?p=23', 1, 'nav_menu_item', '', 0),
(27, 1, '2023-06-03 07:17:53', '2023-06-03 07:17:53', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-03 07:17:53\"\n    },\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-03 07:17:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3fb51c1a-781f-4d8e-a5dc-427fc8541e98', '', '', '2023-06-03 07:17:53', '2023-06-03 07:17:53', '', 0, 'http://localhost/portfolio/index.php/2023/06/03/3fb51c1a-781f-4d8e-a5dc-427fc8541e98/', 0, 'customize_changeset', '', 0),
(29, 1, '2023-06-08 07:32:47', '2023-06-08 07:32:47', '<!-- wp:image {\"id\":30,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/missing-people.png\" alt=\"\" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->', 'Website to Report Missing People', '', 'publish', 'open', 'open', '', 'website-to-report-missing-people', '', '', '2023-06-08 07:33:31', '2023-06-08 07:33:31', '', 0, 'http://localhost/portfolio/?p=29', 0, 'post', '', 0),
(30, 1, '2023-06-08 07:20:24', '2023-06-08 07:20:24', '', 'missing-people', '', 'inherit', 'open', 'closed', '', 'missing-people', '', '', '2023-06-08 07:20:24', '2023-06-08 07:20:24', '', 29, 'http://localhost/portfolio/wp-content/uploads/2023/06/missing-people.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2023-06-08 07:22:30', '2023-06-08 07:22:30', '<!-- wp:image {\"id\":30,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/missing-people.png\" alt=\"\" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->', 'E-Find', '', 'trash', 'open', 'open', '', 'e-find__trashed', '', '', '2023-06-08 07:34:06', '2023-06-08 07:34:06', '', 0, 'http://localhost/portfolio/?p=31', 0, 'post', '', 0),
(32, 1, '2023-06-08 07:21:50', '2023-06-08 07:21:50', '', 'event', '', 'inherit', 'open', 'closed', '', 'event', '', '', '2023-06-08 07:21:50', '2023-06-08 07:21:50', '', 31, 'http://localhost/portfolio/wp-content/uploads/2023/06/event.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2023-06-08 07:21:53', '2023-06-08 07:21:53', '', 'help-desk', '', 'inherit', 'open', 'closed', '', 'help-desk', '', '', '2023-06-08 07:21:53', '2023-06-08 07:21:53', '', 31, 'http://localhost/portfolio/wp-content/uploads/2023/06/help-desk.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2023-06-08 07:21:56', '2023-06-08 07:21:56', '', 'sendit', '', 'inherit', 'open', 'closed', '', 'sendit', '', '', '2023-06-08 07:21:56', '2023-06-08 07:21:56', '', 31, 'http://localhost/portfolio/wp-content/uploads/2023/06/sendit.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2023-06-08 07:21:59', '2023-06-08 07:21:59', '', 'shopit', '', 'inherit', 'open', 'closed', '', 'shopit', '', '', '2023-06-08 07:21:59', '2023-06-08 07:21:59', '', 31, 'http://localhost/portfolio/wp-content/uploads/2023/06/shopit.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2023-06-08 07:22:01', '2023-06-08 07:22:01', '', 'ticket', '', 'inherit', 'open', 'closed', '', 'ticket', '', '', '2023-06-08 07:22:01', '2023-06-08 07:22:01', '', 31, 'http://localhost/portfolio/wp-content/uploads/2023/06/ticket.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2023-06-08 07:22:30', '2023-06-08 07:22:30', '<!-- wp:image {\"id\":30,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/missing-people.png\" alt=\"\" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->', 'E-Find', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-06-08 07:22:30', '2023-06-08 07:22:30', '', 31, 'http://localhost/portfolio/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-06-08 07:27:34', '2023-06-08 07:27:34', '<!-- wp:image {\"id\":35,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/sendit.png\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->', 'SendIT', '', 'publish', 'open', 'open', '', 'sendit', '', '', '2023-06-08 07:27:34', '2023-06-08 07:27:34', '', 0, 'http://localhost/portfolio/?p=39', 0, 'post', '', 0),
(40, 1, '2023-06-08 07:27:05', '2023-06-08 07:27:05', '', 'project', '', 'inherit', 'open', 'closed', '', 'project-2', '', '', '2023-06-08 07:27:05', '2023-06-08 07:27:05', '', 39, 'http://localhost/portfolio/wp-content/uploads/2023/06/project-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2023-06-08 07:27:34', '2023-06-08 07:27:34', '<!-- wp:image {\"id\":35,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/sendit.png\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->', 'SendIT', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2023-06-08 07:27:34', '2023-06-08 07:27:34', '', 39, 'http://localhost/portfolio/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-06-08 07:29:03', '2023-06-08 07:29:03', '<!-- wp:image {\"id\":33,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/help-desk.png\" alt=\"\" class=\"wp-image-33\"/></figure>\n<!-- /wp:image -->', 'Help Desk System to Report Faulty Machines in Nyeri County Referral Hospital', '', 'publish', 'open', 'open', '', 'help-desk-system-to-report-faulty-machines-in-nyeri-county-referral-hospital', '', '', '2023-06-08 07:29:03', '2023-06-08 07:29:03', '', 0, 'http://localhost/portfolio/?p=42', 0, 'post', '', 0),
(43, 1, '2023-06-08 07:29:03', '2023-06-08 07:29:03', '<!-- wp:image {\"id\":33,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/help-desk.png\" alt=\"\" class=\"wp-image-33\"/></figure>\n<!-- /wp:image -->', 'Help Desk System to Report Faulty Machines in Nyeri County Referral Hospital', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-06-08 07:29:03', '2023-06-08 07:29:03', '', 42, 'http://localhost/portfolio/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-06-08 07:29:48', '2023-06-08 07:29:48', '<!-- wp:image {\"id\":36,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/shopit.png\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->', 'ShopIT', '', 'publish', 'open', 'open', '', 'shopit', '', '', '2023-06-08 07:29:48', '2023-06-08 07:29:48', '', 0, 'http://localhost/portfolio/?p=44', 0, 'post', '', 0),
(45, 1, '2023-06-08 07:29:48', '2023-06-08 07:29:48', '<!-- wp:image {\"id\":36,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/shopit.png\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->', 'ShopIT', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-06-08 07:29:48', '2023-06-08 07:29:48', '', 44, 'http://localhost/portfolio/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-06-08 07:30:35', '2023-06-08 07:30:35', '<!-- wp:image {\"id\":32,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/event.png\" alt=\"\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->', 'Event Management System', '', 'publish', 'open', 'open', '', 'event-management-system', '', '', '2023-06-08 07:30:35', '2023-06-08 07:30:35', '', 0, 'http://localhost/portfolio/?p=46', 0, 'post', '', 0),
(47, 1, '2023-06-08 07:30:35', '2023-06-08 07:30:35', '<!-- wp:image {\"id\":32,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/event.png\" alt=\"\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->', 'Event Management System', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-06-08 07:30:35', '2023-06-08 07:30:35', '', 46, 'http://localhost/portfolio/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-06-08 07:31:27', '2023-06-08 07:31:27', '<!-- wp:image {\"id\":40,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/project-1.png\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->', 'Project Management System', '', 'publish', 'open', 'open', '', 'project-management-system', '', '', '2023-06-08 07:31:27', '2023-06-08 07:31:27', '', 0, 'http://localhost/portfolio/?p=48', 0, 'post', '', 0),
(49, 1, '2023-06-08 07:31:27', '2023-06-08 07:31:27', '<!-- wp:image {\"id\":40,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/project-1.png\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->', 'Project Management System', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-06-08 07:31:27', '2023-06-08 07:31:27', '', 48, 'http://localhost/portfolio/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-06-08 07:32:06', '2023-06-08 07:32:06', '<!-- wp:image {\"id\":37,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/ticket.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->', 'Ticketing System', '', 'publish', 'open', 'open', '', 'ticketing-system', '', '', '2023-06-08 07:32:06', '2023-06-08 07:32:06', '', 0, 'http://localhost/portfolio/?p=50', 0, 'post', '', 0),
(51, 1, '2023-06-08 07:32:06', '2023-06-08 07:32:06', '<!-- wp:image {\"id\":37,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/ticket.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->', 'Ticketing System', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-06-08 07:32:06', '2023-06-08 07:32:06', '', 50, 'http://localhost/portfolio/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-06-08 07:32:25', '2023-06-08 07:32:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-08 07:32:25', '2023-06-08 07:32:25', '', 1, 'http://localhost/portfolio/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-06-08 07:32:47', '2023-06-08 07:32:47', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'Website to Report Missing People', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-06-08 07:32:47', '2023-06-08 07:32:47', '', 29, 'http://localhost/portfolio/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-06-08 07:33:31', '2023-06-08 07:33:31', '<!-- wp:image {\"id\":30,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/portfolio/wp-content/uploads/2023/06/missing-people.png\" alt=\"\" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->', 'Website to Report Missing People', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-06-08 07:33:31', '2023-06-08 07:33:31', '', 29, 'http://localhost/portfolio/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-06-15 07:27:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-15 07:27:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/portfolio/?p=55', 0, 'post', '', 0),
(56, 1, '2023-06-15 09:24:22', '2023-06-15 09:24:22', '<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/portfolio/wp-content/uploads/2023/06/missing-people.png\" alt=\"\" width=\"1345\" height=\"644\" />\r\n<p>This is a project to report missing people in globally. The system allowed a user to input details of the missing person such as the name of the person, his or her picture and where the missing person was last seen. The user would also input his contact details in case the person he or she has reported has been found</p>\r\n<p><b>Languages used: </b> </p>', 'E-Find', '', 'publish', 'closed', 'closed', '', 'e-find', '', '', '2023-06-15 09:24:22', '2023-06-15 09:24:22', '', 0, 'http://localhost/portfolio/?post_type=projects&#038;p=56', 0, 'projects', '', 0),
(57, 1, '2023-06-15 09:24:12', '2023-06-15 09:24:12', '<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/portfolio/wp-content/uploads/2023/06/missing-people.png\" alt=\"\" width=\"1345\" height=\"644\" />\r\n<p>This is a project to report missing people in globally. The system allowed a user to input details of the missing person such as the name of the person, his or her picture and where the missing person was last seen. The user would also input his contact details in case the person he or she has reported has been found</p>\r\n<p><b>Languages used: </b> </p>', 'E-Find', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-06-15 09:24:12', '2023-06-15 09:24:12', '', 56, 'http://localhost/portfolio/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-06-15 12:19:49', '2023-06-15 12:19:49', '<!-- wp:paragraph -->\n<p>hjhjhjkjk</p>\n<!-- /wp:paragraph -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-06-15 12:19:49', '2023-06-15 12:19:49', '', 12, 'http://localhost/portfolio/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-06-15 12:23:32', '2023-06-15 12:23:32', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2023-06-15 12:23:32', '2023-06-15 12:23:32', '', 12, 'http://localhost/portfolio/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-06-15 12:27:03', '2023-06-15 12:27:03', '<!-- wp:paragraph -->\n<p>safdfsfgsfg</p>\n<!-- /wp:paragraph -->', 'My Projects', '', 'publish', 'closed', 'closed', '', 'my-projects', '', '', '2023-06-15 12:27:03', '2023-06-15 12:27:03', '', 0, 'http://localhost/portfolio/?page_id=60', 0, 'page', '', 0),
(61, 1, '2023-06-15 12:27:03', '2023-06-15 12:27:03', '<!-- wp:paragraph -->\n<p>safdfsfgsfg</p>\n<!-- /wp:paragraph -->', 'My Projects', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-06-15 12:27:03', '2023-06-15 12:27:03', '', 60, 'http://localhost/portfolio/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-06-15 12:29:47', '2023-06-15 12:28:17', ' ', '', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2023-06-15 12:29:47', '2023-06-15 12:29:47', '', 0, 'http://localhost/portfolio/?p=62', 4, 'nav_menu_item', '', 0),
(63, 1, '2023-06-15 14:07:27', '2023-06-15 14:07:27', '', 'Project', '', 'publish', 'closed', 'closed', '', 'project', '', '', '2023-06-15 14:07:27', '2023-06-15 14:07:27', '', 0, 'http://localhost/portfolio/?page_id=63', 0, 'page', '', 0),
(64, 1, '2023-06-15 14:07:27', '2023-06-15 14:07:27', '', 'Project', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2023-06-15 14:07:27', '2023-06-15 14:07:27', '', 63, 'http://localhost/portfolio/?p=64', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_projects`
--

CREATE TABLE `wp_projects` (
  `ID` int(11) NOT NULL,
  `project_title` text NOT NULL,
  `project_desc` text NOT NULL,
  `technology_used` text NOT NULL,
  `project_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `github_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wp_projects`
--

INSERT INTO `wp_projects` (`ID`, `project_title`, `project_desc`, `technology_used`, `project_image`, `github_link`) VALUES
(4, 'E-Find', 'This is a project to report missing people in Kenya. The system allowed the user to input details of the missing person such as where the person was last seen, his or her image and names. The user would also input his or her contact details where he or she could be contacted through in case the missing person was found', 'HTML, CSS, PHP and MySQL', 'https://i.imgur.com/aQZN14f.png', ''),
(5, 'SendIT', 'This is a system that allows users to send and receive parcels globally.  When the sender sends a parcel the receiver is able to track his or her parcel from when it was until it reaches to the destination point. ', 'React JS Framework, HTML, CSS, Redux, JavaScript, NodeJS and MySQL', 'https://i.imgur.com/UNZmzui.png', 'https://github.com/JoyMwende/SendIT-Project.git'),
(6, 'Help Desk System', 'This is a system that automates the process of reporting faulty machines in the Nyeri County Referral Hospital. It allowed hospital staff to report the presence of a faulty machine at their station of work. When a faulty machine is reported, the biomedical engineer receives an SMS that there is a new case of faulty machine reported and an email containing the details of the faulty machine. He can then login to the system and update the status of the case reported whether he is working on it or or he has resolved the case.', 'React JS Framework, HTML, CSS, Redux, JavaScript, NodeJS and MySQL', 'https://i.imgur.com/wMcQQhy.png', 'https://github.com/JoyMwende/e-ticket.git'),
(7, 'ShopIT', 'This is an e-commerce system that allows users to shop for electrical equipment. An user could view all products, view a single product and add/remove a product from the cart.', 'WordPress and PHP', 'https://i.imgur.com/2gpnfVs.png', 'https://github.com/brianMunyao/ShopIT.git'),
(8, 'Event Management SYstem', 'This is a system that allowed users to view events and buy ticket(s) of the event(s) from the system. The system would tell the user the number of tickets he or she has bought and the total amount of money he or she is supposed to pay.', 'WordPress and PHP', 'https://i.imgur.com/K5CecYB.png', 'https://github.com/1Eve/event-management-system.git'),
(9, 'Project Management System', 'This system involved project manager and employees. A project manager could assign tasks to employees and an employee could not have more than one task at the same time. The employees would see tasks assigned to them and could mark them as read upon completion and this would reflect on the project manager\'s side.', 'WordPress (Utilized custom theme and custom plugin), PHP for backend and Postman to test endpoints', 'https://i.imgur.com/fOl4J7j.png', 'https://github.com/1Eve/jpj-system.git'),
(10, 'Ticket Management System', 'This a system which mostly involved CRUD operations where an employee would be assigned a task. He or she could view the task and mark as read. The assigner would create, read, update and delete a project.', 'WordPress (Utilized custom theme and custom plugin), PHP for backend', 'https://i.imgur.com/wnMD7cL.png', 'https://github.com/JoyMwende/ticket-system.git');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0),
(3, 'Secondary', 'secondary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 3, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(29, 1, 0),
(31, 1, 0),
(39, 1, 0),
(42, 1, 0),
(44, 1, 0),
(46, 1, 0),
(48, 1, 0),
(50, 1, 0),
(62, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 7),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'portfolioadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"a51a477a7fe02259d2a805f4e1bba73a344bab64663e3d57e6f0a17664bc6e26\";a:4:{s:10:\"expiration\";i:1686986827;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1686814027;}s:64:\"5e8e44b07dfc1833eb5251f7cbb6140b672052904d9a8ada698096c4e2fcb6a8\";a:4:{s:10:\"expiration\";i:1687003629;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1686830829;}s:64:\"04c898dd560ced831eecdd9309f41e23e810aff7ffc1c8bfeace2bfa55516390\";a:4:{s:10:\"expiration\";i:1687071296;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1686898496;}s:64:\"e4175849ef6d2ec6c8b2c8229bca1988f1256cd0eb18aea771069737163b7f5d\";a:4:{s:10:\"expiration\";i:1687072634;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1686899834;}s:64:\"26bf64bb155c12858d9746f7fae3f5efd1dbf073d49b0d0662b4d476e2dcd38d\";a:4:{s:10:\"expiration\";i:1687078920;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1686906120;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '55'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'enable_custom_fields', ''),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1686821051'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'portfolioadmin', '$P$BUnb0.7iABRCNS4/3PYu3y2Sv1.0u9/', 'portfolioadmin', 'joymwendekairi@gmail.com', 'http://localhost/portfolio', '2023-05-20 13:03:14', '', 0, 'portfolioadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_contact_form`
--
ALTER TABLE `wp_contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_projects`
--
ALTER TABLE `wp_projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_contact_form`
--
ALTER TABLE `wp_contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `wp_projects`
--
ALTER TABLE `wp_projects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
