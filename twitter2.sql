-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2018 at 03:47 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter2`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tweet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gif_comment` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `tweet_id`, `user_id`, `message`, `created_at`, `updated_at`, `gif_comment`) VALUES
(25, 14, 2, 'I guess so They didn\'t need him tho!', '2018-08-12 05:52:26', '2018-08-12 05:52:26', 0),
(24, 17, 19, 'Comment on this post have been limited.', '2018-08-11 03:17:57', '2018-08-11 03:17:57', 0),
(23, 15, 2, 'STOP TRYING BE GOD🙏🙏🙏', '2018-08-11 00:04:45', '2018-08-11 00:04:45', 0),
(22, 12, 2, 'Yooo Is that you kane how did you find me here?', '2018-08-10 23:49:56', '2018-08-10 23:49:56', 0),
(21, 16, 2, 'HA HA HA HA HA HA LAMO 🤣🤣🤣', '2018-08-10 23:05:45', '2018-08-11 02:29:41', 0),
(20, 17, 2, 'You have a what a micro d***k 😂😂😂😂', '2018-08-10 23:03:51', '2018-08-10 23:49:12', 0),
(19, 12, 18, 'Hey Man', '2018-08-10 22:40:25', '2018-08-10 22:40:25', 0),
(26, 18, 15, 'Ikr Quavo keeps making dope bangers', '2018-08-12 05:58:10', '2018-08-12 05:58:10', 0),
(27, 14, 17, 'Yeah you are right', '2018-08-13 11:45:09', '2018-08-13 11:45:25', 0),
(28, 17, 20, 'Ha I can still comment here I guess I hacked Birdy 😆', '2018-08-13 11:53:00', '2018-08-13 12:07:34', 0),
(29, 18, 20, 'Facts 💯', '2018-08-13 11:53:41', '2018-08-13 11:53:41', 0),
(30, 15, 20, 'True💯', '2018-08-13 11:54:04', '2018-08-13 11:54:04', 0),
(31, 16, 20, '😆😒', '2018-08-13 11:57:58', '2018-08-13 11:57:58', 0),
(32, 21, 2, 'That game a shooting game?', '2018-08-13 13:42:54', '2018-08-13 13:42:54', 0),
(35, 16, 19, 'He\'s my Homie!', '2018-08-13 21:11:47', '2018-08-13 21:11:47', 0),
(34, 23, 21, '☝☝☝☝', '2018-08-13 20:41:44', '2018-08-13 20:41:44', 0),
(36, 19, 2, '🐱‍👓🐱‍👓🐱‍👓', '2018-08-23 22:20:55', '2018-08-23 22:21:36', 0),
(37, 16, 2, 'https://media2.giphy.com/media/Av1HXvxs7KTss/200.gif', '2018-09-13 02:11:07', '2018-09-13 02:11:07', 1),
(77, 29, 2, 'https://media0.giphy.com/media/YJBNjrvG5Ctmo/200.gif', '2018-09-13 23:54:02', '2018-09-13 23:54:02', 1),
(39, 16, 2, 'https://media3.giphy.com/media/F6I9NoTZQps40/200.gif', '2018-09-13 02:21:49', '2018-09-13 02:21:49', 1),
(40, 16, 2, 'https://media3.giphy.com/media/rdLnPn9O4QTVS/200.gif', '2018-09-13 02:22:17', '2018-09-13 02:22:17', 1),
(41, 16, 2, 'https://media0.giphy.com/media/lArQw5Z7Ejb0c/200.gif', '2018-09-13 02:23:04', '2018-09-13 02:23:04', 1),
(42, 16, 2, 'testing', '2018-09-13 02:23:16', '2018-09-13 02:23:16', 0),
(43, 16, 2, 'https://media3.giphy.com/media/b7lp44pNiRqsU/200.gif', '2018-09-13 02:35:54', '2018-09-13 02:35:54', 1),
(47, 15, 2, 'https://media0.giphy.com/media/MZi92gxHBeA2Q/200.gif', '2018-09-13 20:40:32', '2018-09-13 20:40:32', 1),
(48, 18, 2, 'https://media3.giphy.com/media/8zT0D36Myf9C0/200.gif', '2018-09-13 20:44:14', '2018-09-13 20:44:14', 1),
(49, 28, 16, 'https://media1.giphy.com/media/l46C93LNM33JJ1SMw/200.gif', '2018-09-13 20:58:15', '2018-09-13 20:59:01', 1),
(50, 28, 17, 'Same It sucks a waste of a 1,000 bucks!!!', '2018-09-13 21:02:05', '2018-09-13 21:02:05', 0),
(51, 28, 17, 'https://media3.giphy.com/media/LgJST7I2HlWo0/200.gif', '2018-09-13 21:02:58', '2018-09-13 21:02:58', 1),
(54, 28, 17, 'https://media1.giphy.com/media/3oEdvbpl0X32bXD2Vi/200.gif', '2018-09-13 22:24:55', '2018-09-13 22:24:55', 1),
(56, 28, 17, 'https://media0.giphy.com/media/ScxQx1dyHh2lW/200.gif', '2018-09-13 23:19:18', '2018-09-13 23:19:18', 1),
(57, 28, 17, 'https://media2.giphy.com/media/hmzAcor7gBsbK/200.gif', '2018-09-13 23:21:22', '2018-09-13 23:21:22', 1),
(58, 14, 17, 'https://media3.giphy.com/media/PjorQDxFRB7O0/200.gif', '2018-09-13 23:22:20', '2018-09-13 23:22:20', 1),
(59, 14, 17, 'DAAAAAMN RIGHT HE IS!!!!!!!', '2018-09-13 23:22:39', '2018-09-13 23:22:39', 0),
(60, 14, 17, 'I change my mind 😁😁😁😁', '2018-09-13 23:23:09', '2018-09-13 23:23:09', 0),
(61, 28, 17, '📱📱📱', '2018-09-13 23:23:54', '2018-09-13 23:23:54', 0),
(62, 14, 2, 'https://media0.giphy.com/media/xUySTVGpfLk3svTfSU/200.gif', '2018-09-13 23:31:23', '2018-09-13 23:31:23', 1),
(63, 17, 2, 'https://media3.giphy.com/media/1TSUKOv4k56aIryKAP/200.gif', '2018-09-13 23:32:31', '2018-09-13 23:32:31', 1),
(64, 17, 2, 'there you go he has a micro d**ck', '2018-09-13 23:32:50', '2018-09-13 23:32:50', 0),
(65, 17, 2, 'https://media2.giphy.com/media/Y3hQv0HD7X3ag/200.gif', '2018-09-13 23:33:48', '2018-09-13 23:33:48', 1),
(66, 27, 2, 'https://media2.giphy.com/media/21TxhVnmtiuEIHGxfY/200.gif', '2018-09-13 23:34:47', '2018-09-13 23:34:47', 1),
(68, 18, 2, 'https://media1.giphy.com/media/tkX8cvF2o9RD2/200.gif', '2018-09-13 23:40:11', '2018-09-13 23:40:11', 1),
(69, 18, 2, 'https://media1.giphy.com/media/l3JDD0RekTNTMLAt2/200.gif', '2018-09-13 23:43:21', '2018-09-13 23:43:21', 1),
(71, 18, 2, 'https://media2.giphy.com/media/11pOf2WpNoRSKc/200.gif', '2018-09-13 23:45:30', '2018-09-13 23:45:30', 1),
(72, 19, 2, 'https://media3.giphy.com/media/YejMerkCSyi2I/200.gif', '2018-09-13 23:48:45', '2018-09-13 23:48:45', 1),
(73, 26, 2, 'https://media3.giphy.com/media/7oasXWyB9VHb2/200.gif', '2018-09-13 23:49:14', '2018-09-13 23:49:14', 1),
(74, 21, 2, 'https://media0.giphy.com/media/YQitE4YNQNahy/200.gif', '2018-09-13 23:49:51', '2018-09-13 23:49:51', 1),
(76, 25, 2, 'https://media1.giphy.com/media/xT0GqIsBdw6mkKbq0g/200.gif', '2018-09-13 23:51:44', '2018-09-13 23:51:44', 1),
(78, 27, 2, 'https://media3.giphy.com/media/10bdAP4IOmoN7G/200.gif', '2018-09-14 00:22:35', '2018-09-14 00:22:35', 1),
(80, 15, 2, 'https://media1.giphy.com/media/14iyoeOMRKn89G/200.gif', '2018-09-14 00:27:17', '2018-09-14 00:27:17', 1),
(81, 28, 2, 'https://media2.giphy.com/media/26tPplGWjN0xLybiU/200.gif', '2018-09-14 01:10:57', '2018-09-14 01:10:57', 1),
(83, 25, 2, 'https://media3.giphy.com/media/wPkWlsnohtn7a/200.gif', '2018-09-14 01:31:40', '2018-09-14 01:31:40', 1),
(84, 16, 2, 'https://media0.giphy.com/media/5jSZKytefeAE22vnnf/200.gif', '2018-09-14 20:53:17', '2018-09-14 20:53:17', 1),
(86, 14, 2, 'https://media1.giphy.com/media/ZSYJsoMBJArew/200.gif', '2018-09-14 21:32:17', '2018-09-14 21:32:17', 1),
(87, 15, 2, 'https://media1.giphy.com/media/tHdg0XMcCaije/200.gif', '2018-09-14 21:58:53', '2018-09-14 21:58:53', 1),
(88, 15, 2, 'https://media2.giphy.com/media/jEVS3mtVP08PS/200.gif', '2018-09-14 22:00:26', '2018-09-14 22:00:26', 1),
(89, 12, 2, 'https://media3.giphy.com/media/fedryX7dMGMe6lgqDm/200.gif', '2018-09-14 22:03:03', '2018-09-14 22:03:03', 1),
(91, 14, 2, 'https://media3.giphy.com/media/l3vR1U2kYYSM0vEo8/200.gif', '2018-09-14 23:19:29', '2018-09-14 23:19:29', 1),
(92, 12, 2, 'howdy', '2018-09-18 21:19:40', '2018-09-18 21:19:40', 0),
(93, 12, 2, 'https://media2.giphy.com/media/26ybwyb5dKBiKsZJC/200.gif', '2018-09-18 21:37:10', '2018-09-18 21:37:10', 1),
(96, 12, 2, 'https://media2.giphy.com/media/5hvW1VfJe6l74Q6YUR/200.gif', '2018-09-18 21:52:57', '2018-09-18 21:52:57', 1),
(97, 12, 2, 'https://media0.giphy.com/media/l0MYAuUkuPPjrbDBS/200.gif', '2018-09-18 22:11:39', '2018-09-18 22:11:39', 1),
(98, 12, 2, 'https://media1.giphy.com/media/l2SpPgYMDCBFEptfi/200.gif', '2018-09-18 22:17:25', '2018-09-18 22:17:25', 1),
(99, 12, 2, 'https://media0.giphy.com/media/l0HlUxcWRsqROFYuk/200.gif', '2018-09-18 22:18:39', '2018-09-18 22:18:39', 1),
(100, 12, 2, 'https://media0.giphy.com/media/7Jw6n7Nf0WBsiqdU7e/200.gif', '2018-09-18 22:19:43', '2018-09-18 22:19:43', 1),
(101, 12, 2, 'https://media0.giphy.com/media/26BRvn49TZO5JRQje/200.gif', '2018-09-18 22:21:15', '2018-09-18 22:21:15', 1),
(102, 12, 2, 'https://media2.giphy.com/media/xT0xeADNkaq35EqfoA/200.gif', '2018-09-18 22:42:11', '2018-09-18 22:42:11', 1),
(103, 12, 2, 'https://media2.giphy.com/media/tLypHgDbyHW80/200.gif', '2018-09-18 22:44:57', '2018-09-18 22:44:57', 1),
(104, 12, 2, 'that\'s right', '2018-09-18 22:59:41', '2018-09-18 22:59:41', 0),
(106, 15, 2, 'https://media1.giphy.com/media/J0SFVNJm95fyw/200.gif', '2018-09-19 01:51:12', '2018-09-19 01:51:12', 1),
(107, 14, 2, 'https://media3.giphy.com/media/26BRCF1aU8315Vc6Q/200.gif', '2018-09-19 02:38:53', '2018-09-19 02:38:53', 1),
(108, 26, 2, 'Bake em', '2018-09-19 02:46:05', '2018-09-19 02:46:05', 0),
(109, 26, 2, 'https://media0.giphy.com/media/6Nt5hRfsh3g4g/200.gif', '2018-09-19 02:47:24', '2018-09-19 02:47:24', 1),
(111, 31, 2, 'sucker', '2018-09-19 23:14:01', '2018-09-19 23:14:01', 0),
(112, 35, 2, 'https://media1.giphy.com/media/xUNd9MCPxGX5g498d2/200.gif', '2018-09-19 23:36:03', '2018-09-19 23:36:03', 1),
(113, 36, 2, 'https://media3.giphy.com/media/l2Sq6A5gOvS6dh0D6/200.gif', '2018-09-20 22:26:06', '2018-09-20 22:26:06', 1),
(114, 29, 2, '🙌🙌🙌', '2018-09-20 22:44:01', '2018-09-20 22:44:01', 0),
(115, 16, 2, 'https://media0.giphy.com/media/l3fQc3aCV0HqpzWcU/200.gif', '2018-09-21 21:58:49', '2018-09-21 21:58:49', 1),
(116, 33, 2, 'https://media1.giphy.com/media/xUA7bjoUNhwWVCfTR6/200.gif', '2018-09-25 21:33:41', '2018-09-25 21:33:41', 1),
(117, 33, 2, 'https://media2.giphy.com/media/ptDRdwFkFVAkg/200.gif', '2018-09-25 21:34:53', '2018-09-25 21:34:53', 1),
(118, 33, 2, 'https://media2.giphy.com/media/26uflFzANm3yyJCKc/200.gif', '2018-09-25 21:36:11', '2018-09-25 21:36:11', 1),
(119, 33, 2, 'https://media0.giphy.com/media/3o85g0FdIHjEJzNzkk/200.gif', '2018-09-25 21:36:54', '2018-09-25 21:36:54', 1),
(120, 21, 2, 'yes 😒😒😒', '2018-09-25 23:56:46', '2018-09-25 23:57:07', 0),
(121, 15, 2, 'LAMOO  😂😂😂', '2018-09-27 22:51:50', '2018-09-27 22:51:50', 0),
(122, 15, 2, 'https://media3.giphy.com/media/26FPzgftlRfgwkEw0/200.gif', '2018-09-27 22:52:32', '2018-09-27 22:52:32', 1),
(123, 39, 16, 'show it', '2018-09-27 22:57:52', '2018-09-27 22:57:52', 0),
(124, 39, 17, 'https://media0.giphy.com/media/SJW6gSuMpvE6bvHK3X/200.gif', '2018-09-27 22:59:35', '2018-09-27 22:59:35', 1),
(125, 39, 17, '😂😂😂', '2018-09-27 22:59:44', '2018-09-27 22:59:44', 0),
(126, 39, 17, 'I got another too', '2018-09-27 22:59:57', '2018-09-27 22:59:57', 0),
(127, 39, 17, 'https://media1.giphy.com/media/l3E6x6mtJ6awnKj96/200.gif', '2018-09-27 23:00:12', '2018-09-27 23:00:12', 1),
(128, 39, 16, '😂😂😂', '2018-09-27 23:01:00', '2018-09-27 23:01:00', 0),
(129, 39, 16, 'Burh 🤣🤣🤣', '2018-09-27 23:01:12', '2018-09-27 23:01:12', 0),
(130, 39, 20, 'The first one tho 😂🤣😂🤣', '2018-09-27 23:03:16', '2018-09-27 23:03:16', 0),
(131, 40, 17, 'Do you mean their launch party or something why would they celebrate their Anniversary cuz the app just launched lol', '2018-09-27 23:08:08', '2018-09-27 23:08:08', 0),
(132, 40, 22, 'Hi, Yes It Is our Anniversary come on in have some fun smoke weed get high asf. Pizza , Burger ,sweets karaoke too. Bring your friends & family. Don\'t forget to bring your parents as well they don\'t want to miss out on the fun cuz you don\'t wanna get grounded😉😉😉Sincerely Birdy Team', '2018-09-27 23:17:00', '2018-09-27 23:17:43', 0),
(133, 25, 22, 'Hi User I see you are user a here at Birdy because Twitter kicked you out & banned you well..... here you will get the same treatment so enjoy while you are here for some \"LITTLE\" time ✌✌✌', '2018-09-27 23:21:08', '2018-09-27 23:21:42', 0),
(134, 25, 19, 'HUUUUUUUUUUUUUUUUUUUUUUUUUUUUGEEEEEEEEEEEEEEEEE', '2018-09-27 23:22:35', '2018-09-27 23:22:35', 0),
(135, 25, 19, 'https://media1.giphy.com/media/26BRBhmnSxHCrSpBC/200.gif', '2018-09-27 23:23:19', '2018-09-27 23:23:19', 1),
(136, 25, 22, 'You have a what??? a huge ass pretty much it\'s fake just like all the rappers have. SMH', '2018-09-27 23:28:37', '2018-09-27 23:28:37', 0),
(137, 41, 22, 'https://media0.giphy.com/media/eFzNLEFY1bfyrHK7OE/200.gif', '2018-09-28 00:16:10', '2018-09-28 00:16:10', 1),
(138, 33, 22, '🤣🤣🤣', '2018-09-28 00:18:34', '2018-09-28 00:18:34', 0),
(139, 18, 22, 'https://media3.giphy.com/media/l4FGnZ5NlHuvHfthm/200.gif', '2018-09-28 01:06:31', '2018-09-28 01:06:31', 1),
(140, 27, 22, 'https://media1.giphy.com/media/l46CbZ7KWEhN1oci4/200.gif', '2018-09-28 02:34:48', '2018-09-28 02:34:48', 1),
(141, 27, 22, 'https://media1.giphy.com/media/26tn33aiTi1jkl6H6/200.gif', '2018-09-28 02:35:55', '2018-09-28 02:35:55', 1),
(142, 27, 22, 'https://media1.giphy.com/media/3o7buf8yUjROVpqEYU/200.gif', '2018-09-28 02:47:55', '2018-09-28 02:47:55', 1),
(143, 16, 2, 'https://media1.giphy.com/media/l2R07QDhtsqwGIZu8/200.gif', '2018-09-28 05:37:12', '2018-09-28 05:37:12', 1),
(144, 16, 2, 'https://media2.giphy.com/media/3ov9jMu4gzKmXaIca4/200.gif', '2018-09-28 06:23:00', '2018-09-28 06:23:00', 1),
(145, 16, 2, 'https://media0.giphy.com/media/l39765g6zcASQXGMg/200.gif', '2018-09-28 12:07:51', '2018-09-28 12:07:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
CREATE TABLE IF NOT EXISTS `followers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `followee_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `followee_id`, `created_at`, `updated_at`) VALUES
(24, 2, 2, '2018-09-28 11:38:18', '2018-09-28 11:38:18'),
(22, 21, 2, '2018-08-13 20:40:21', '2018-08-13 20:40:21'),
(16, 15, 15, '2018-08-12 06:48:43', '2018-08-12 06:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `like` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `tweet_id`, `created_at`, `updated_at`, `like`) VALUES
(1, 15, 14, '2018-08-10 21:49:58', '2018-08-10 21:49:58', 0),
(2, 2, 2, '2018-08-12 05:48:35', '2018-08-12 05:48:35', 0),
(3, 2, 2, '2018-08-12 05:48:37', '2018-08-12 05:48:37', 0),
(4, 2, 2, '2018-08-12 05:48:40', '2018-08-12 05:48:40', 0),
(5, 2, 2, '2018-08-12 05:55:57', '2018-08-12 05:55:57', 0),
(6, 2, 2, '2018-08-12 05:56:00', '2018-08-12 05:56:00', 0),
(7, 2, 2, '2018-08-12 05:56:02', '2018-08-12 05:56:02', 0),
(8, 15, 15, '2018-08-12 06:48:16', '2018-08-12 06:48:16', 0),
(116, 23, 44, '2018-09-28 21:08:49', '2018-09-28 21:08:49', 1),
(114, 23, 43, '2018-09-28 21:08:38', '2018-09-28 21:08:38', 1),
(113, 23, 17, '2018-09-28 21:08:27', '2018-09-28 21:08:27', 1),
(112, 19, 41, '2018-09-28 21:07:17', '2018-09-28 21:07:17', 1),
(111, 19, 40, '2018-09-28 21:07:15', '2018-09-28 21:07:15', 1),
(18, 20, 20, '2018-08-13 12:07:02', '2018-08-13 12:07:02', 0),
(19, 20, 20, '2018-08-13 12:10:19', '2018-08-13 12:10:19', 0),
(110, 19, 37, '2018-09-28 21:07:12', '2018-09-28 21:07:12', 1),
(21, 19, 19, '2018-08-13 20:22:27', '2018-08-13 20:22:27', 0),
(106, 19, 39, '2018-09-28 21:06:42', '2018-09-28 21:06:42', 1),
(23, 19, 19, '2018-08-13 21:11:28', '2018-08-13 21:11:28', 0),
(105, 19, 29, '2018-09-28 21:06:33', '2018-09-28 21:06:33', 1),
(104, 19, 26, '2018-09-28 21:06:20', '2018-09-28 21:06:20', 1),
(26, 2, 2, '2018-09-11 23:19:49', '2018-09-11 23:19:49', 0),
(100, 16, 16, '2018-09-28 21:01:56', '2018-09-28 21:01:56', 1),
(28, 2, 2, '2018-09-13 23:29:56', '2018-09-13 23:29:56', 0),
(29, 2, 2, '2018-09-17 23:58:26', '2018-09-17 23:58:26', 0),
(30, 2, 2, '2018-09-17 23:58:27', '2018-09-17 23:58:27', 0),
(31, 2, 2, '2018-09-23 03:33:01', '2018-09-23 03:33:01', 0),
(40, 2, 14, '2018-09-27 22:21:08', '2018-09-27 22:21:08', 1),
(33, 2, 28, '2018-09-27 04:43:41', '2018-09-27 04:43:41', 1),
(35, 2, 12, '2018-09-27 04:43:54', '2018-09-27 04:43:54', 1),
(36, 2, 18, '2018-09-27 04:43:57', '2018-09-27 04:43:57', 1),
(37, 2, 21, '2018-09-27 04:51:29', '2018-09-27 04:51:29', 1),
(38, 2, 19, '2018-09-27 04:51:36', '2018-09-27 04:51:36', 1),
(41, 2, 15, '2018-09-27 22:21:46', '2018-09-27 22:21:46', 1),
(43, 16, 25, '2018-09-27 22:57:26', '2018-09-27 22:57:26', 1),
(44, 16, 27, '2018-09-27 22:57:29', '2018-09-27 22:57:29', 1),
(90, 2, 42, '2018-09-28 11:39:12', '2018-09-28 11:39:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_31_152127_create_tweets_table', 2),
(4, '2018_08_03_165803_create_comments_table', 3),
(5, '2018_08_08_164853_create_profiles_table', 4),
(6, '2018_08_09_182409_create_followers_table', 5),
(7, '2018_08_10_213719_create_likes_table', 6),
(9, '2018_09_12_201318_add_gif_comment_to_comments', 7),
(10, '2018_09_25_183652_add_like_to_like_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `birthday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `birthday`, `bio`, `created_at`, `updated_at`) VALUES
(2, 2, 'August 25 1994', 'Olympian, Filmmaker, Travel Junkie, Founder of People, Improv improv instructor. Is this water dry?.', '2018-08-08 21:34:18', '2018-09-23 05:20:06'),
(4, 15, '6/24/1988', 'I was really tired yesterday.', '2018-08-10 22:10:53', '2018-08-10 22:19:37'),
(5, 16, '7/7/1910', 'Dreamer, Alcoholic, Ultimate Piggie, Meditation Practioner, All purpose plastic wrapper. Never swallow watermelon seeds, they grow inside you.', '2018-08-10 22:21:29', '2018-09-23 07:21:50'),
(6, 17, '4/19/1926', '👌👌👌', '2018-08-10 22:32:32', '2018-08-10 22:38:08'),
(7, 18, NULL, NULL, '2018-08-10 22:39:34', '2018-08-10 22:39:34'),
(8, 19, '6/26/1925', 'I\'m the worst 45th president in the American history  and a partime stripper. Say shiz about me I will steal your oil!', '2018-08-10 23:00:51', '2018-08-13 20:34:14'),
(9, 20, '4/30/1950', 'Passionate explorer. Amateur bacon ninja. Friend of animals everywhere. Unable to type with boxing gloves on. Beer buff.', '2018-08-13 11:47:06', '2018-08-13 11:55:32'),
(10, 21, NULL, NULL, '2018-08-13 20:37:22', '2018-08-13 20:37:22'),
(11, 22, NULL, NULL, '2018-09-27 23:12:36', '2018-09-27 23:12:36'),
(12, 23, '8/7/1902', NULL, '2018-09-28 21:08:01', '2018-09-28 21:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(16, 17, 'Suckers iffy, uh, blicky got the stiffy, uh\r\nGot the blicky, uh, drum it holds fifty, uh 🌈🌈🌈', '2018-08-10 22:34:35', '2018-08-10 22:35:00'),
(15, 16, 'TRAVIS SCOTT BACK AT IT AGAIN THIS SHIZ LITT FAM !!!🔥🔥🔥🔥', '2018-08-10 22:25:23', '2018-08-10 22:25:52'),
(14, 15, 'Thibaut Courtois a good signing by Real Madrid?', '2018-08-10 22:13:58', '2018-08-10 22:13:58'),
(12, 2, 'Hello World!', '2018-08-10 15:52:53', '2018-08-10 15:52:53'),
(17, 19, 'As You All know: CHINA CHINA CHINA CHINA 🀇🀇🀇', '2018-08-10 23:02:10', '2018-08-11 00:29:15'),
(18, 2, 'Lamb Talk 🔥🔥🔥', '2018-08-12 05:55:32', '2018-08-12 05:55:32'),
(19, 20, 'Rain Rain Go Away 🌧🌧🌧', '2018-08-13 11:54:29', '2018-08-13 12:11:05'),
(28, 2, 'The new iphone is same old same old what do you think?', '2018-09-13 20:55:09', '2018-09-13 20:55:09'),
(21, 18, 'So many hackers In Modern Combat 5 all they use Is the Grinder smh, they should nerf that gun I know they won\'t 😒😒😒', '2018-08-13 12:27:21', '2018-08-13 12:27:59'),
(26, 2, 'Cookie 🍪', '2018-08-23 22:22:15', '2018-08-23 22:22:15'),
(27, 2, 'Ruby On Rails 💎💎💎', '2018-09-11 23:19:02', '2018-09-11 23:19:36'),
(25, 19, 'Someone give me their oil if you don\'t we aren\'t friends no more 🛢🛢🛢', '2018-08-13 20:28:15', '2018-08-13 20:28:15'),
(29, 2, 'MY GIF SEARCH COMPONENT WORKS YASSSSS!!!', '2018-09-13 23:53:30', '2018-09-13 23:53:30'),
(33, 2, 'yasssssss', '2018-09-19 23:21:31', '2018-09-19 23:21:31'),
(36, 2, 'Marketing Page bi***ch', '2018-09-20 22:25:33', '2018-09-20 22:25:33'),
(37, 2, 'I know my comment won\'t reach out to you but I\'m a 22 year old rapper from Florida if you can check my latest music on soundcloud and Youtube that would be great 🙏🙏🙏', '2018-09-26 00:29:58', '2018-09-26 21:32:38'),
(38, 2, 'Hey You Yeah You Welcome To Birdy I made this app It\'s free and waaaaaaaaaaay better than twitter ,Facebook,Instagram Is a little better than the two but Birdy can do waaaaaaaaaaay much more than any other app can. Enjoy this app free for charge!', '2018-09-27 00:23:25', '2018-09-27 21:02:21'),
(39, 17, 'Does Someone Wanna See My the shoot dance 😂😂😂❓', '2018-09-27 22:56:39', '2018-09-27 22:56:39'),
(40, 20, 'Is anyone going to the Anniversary of Birdy I know It was just launched  anyone interested?', '2018-09-27 23:05:22', '2018-09-27 23:05:22'),
(41, 22, 'SIIIIIIIIIIIIIIIIIIIIIII', '2018-09-28 00:15:17', '2018-09-28 00:16:20'),
(42, 22, 'Google', '2018-09-28 03:41:53', '2018-09-28 03:41:53'),
(43, 22, 'google', '2018-09-28 03:45:06', '2018-09-28 03:45:06'),
(44, 22, 'google', '2018-09-28 03:48:07', '2018-09-28 03:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Tom', 'tom@gmail.com', '$2y$10$8UJjfWvomouZxII6jdfE/.hbl1VnsJOTGFThBYw2jqifNZsuUmTSa', 'QlsQSQYFPU3FPdkYYrdLyLNIfs0HUesCzH45AIjcZJfNNXEbeJb3XrJYKFsO', '2018-07-31 15:33:44', '2018-08-13 00:18:49'),
(17, 'Billy', 'billy@gmail.com', '$2y$10$.3G9Fv/ZxAWJvGrDFeHdLuCBfquM8fzgnUq6u8DK2CKbotZzpLRiW', '8oaMRixLbJkmze6SrzZ0jrU7K3Kri9tILU718csqxNibyTgj24wRi9VAAXEh', '2018-08-10 22:32:32', '2018-08-10 22:32:32'),
(16, 'Bob', 'bob@gmail.com', '$2y$10$UBstbD8VKtMy1km3CwUhouht/XiUUz410RFWBrfwdlVvBFtELG0aG', 'optOuCL1D9LvGXcsgRWp1fZlhxDria0eCGTpopqdA9vFTlm1DfYh2EgS6Kvm', '2018-08-10 22:21:29', '2018-08-10 22:21:29'),
(18, 'Kane', 'kane@gmail.com', '$2y$10$zN1HMkYKyas3dWaumVU7vew.SO0py3zKS.P1ZYry/zarDwAGyndGa', 'EI5g1AKC3UrNa4bMeUzquCUNscEmgWAohEuHn0QHg1MUbZ4SMR3T0ec73MJJ', '2018-08-10 22:39:34', '2018-08-10 22:39:34'),
(19, 'Real Donald Trump', 'trump@gmail.com', '$2y$10$SP2Ufb4/JIIi04uGrjxvQ.LF/n3uThuioLSeyzpYovYVzKrnjus2m', 'bAv96El5cMHDspKAM0aBkkR1407p0qxsAwSxfNmijAR5vfprfi0sB0uKBDlz', '2018-08-10 23:00:51', '2018-08-10 23:00:51'),
(15, 'Billy', 'billyb@gmail.com', '$2y$10$.3G9Fv/ZxAWJvGrDFeHdLuCBfquM8fzgnUq6u8DK2CKbotZzpLRiW', 'DLnODr6Ttq5fxY2TGQm7L9HeC0is4pAlP7LBc89ZMOC2WrjY24pJuV3pwPYU', '2018-08-10 22:32:32', '2018-08-12 06:48:27'),
(20, 'Kate', 'kate@gmail.com', '$2y$10$Qw5oTtqXrMoiGEOFMgAv1eZQf4CASV2SQQeHo5is35VDdDloX/1.S', 'PjjWl1d8Cl2OfemxqC8qOBgqBKIomIEkbh3DvEvf9LNS4oeTYloMR5G4R4hY', '2018-08-13 11:47:06', '2018-08-13 11:47:06'),
(21, 'Blake', 'blake@gmail.com', '$2y$10$bgrh1Ed40jCnwCvW9/NemO5LjORTxvf8s.EgWOMrygRhidbkI1CpG', NULL, '2018-08-13 20:37:22', '2018-08-13 20:37:22'),
(22, 'Birdy Admin', 'birdy@gmail.com', '$2y$10$5POqaG40iaVxYhCSPBdJn.qmoatagsNzxudARYFFInGAN9Uu9H1Fm', 'Jc3YrV21FNMWm2Jxg9sR6AeHbKmlKHCnRJzbMojzZFBsI4V9slgezxg5hrz1', '2018-09-27 23:12:36', '2018-09-27 23:12:36'),
(23, 'Obama', 'obama@gmail.com', '$2y$10$dNQbe1EG4X..lR.WUklFHu50TSATIEtUTY5Je1DwZNmUT5AdoB1YS', 'ZkpepWMx03TG5CtKRZWbhO4LLl0xUQEHvvwa65YrXWqWrCugOCq6Drajb6oN', '2018-09-28 21:08:01', '2018-09-28 21:08:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
