-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 06:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_discription` text NOT NULL,
  `CreateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_discription`, `CreateTime`) VALUES
(1, 'php', 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group. PHP was ori', '2024-06-17 21:55:24'),
(2, 'c', 'C is a commonly used computer programming language. It was developed by Dennis Ritchie ', '2024-06-17 21:56:01'),
(3, 'abc', 'fsjhfhdifhrg', '2024-06-18 19:27:40'),
(4, 'c#', 'C# is a general-purpose high-level programming language supporting multiple paradigms. C# encompasses static typing, strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming ', '2024-06-30 21:22:12'),
(5, 'html', 'HyperText Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser. It defines the content and structure of web content. It is often assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript', '2024-06-30 21:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_content` text NOT NULL,
  `threads_id` int(11) NOT NULL,
  `comment_by` text NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `threads_id`, `comment_by`, `comment_time`) VALUES
(1, 'this is a comment', 1, '1', '2024-06-18 22:41:11'),
(2, 'jv', 1, '2', '2024-06-18 22:48:28'),
(3, 'dsgsdds', 1, '3', '2024-06-18 22:48:36'),
(4, 'dsgsdds', 1, '6', '2024-06-18 22:57:46'),
(5, 'dsgsdds', 1, '4', '2024-06-18 23:00:41'),
(6, 'dhrupal', 2, '5', '2024-06-22 14:33:54'),
(7, 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group. PHP was originally an abbreviation of Personal\r\n', 1, '8', '2024-06-22 14:51:24'),
(8, 'dffs\r\n', 14, '0', '2024-06-25 22:57:46'),
(9, 'sdffa', 14, '0', '2024-06-25 22:57:52'),
(10, 'dhrfkiskajnfsm', 15, '9', '2024-06-25 23:31:37'),
(11, 'dhrfkiskajnfsm', 15, '9', '2024-06-25 23:35:36'),
(12, 'this is comment in php threads\r\n', 17, '11', '2024-06-26 00:03:24'),
(13, 'this is comment in php threads\r\n', 17, '11', '2024-06-26 00:12:24'),
(14, 'this is comment in php threads\r\n', 17, '11', '2024-06-26 00:13:40'),
(15, 'this is comment in php threads\r\n', 17, '11', '2024-06-26 00:14:06'),
(16, 'this is comment in php threads\r\n', 17, '11', '2024-06-26 00:14:32'),
(17, 'this is comment in php threads\r\n', 17, '11', '2024-06-26 00:15:08'),
(18, 'this is comment in dhrupal007u id ', 20, '9', '2024-06-26 08:48:26'),
(19, 'vicky bod is 22/09/2005', 21, '14', '2024-06-30 21:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `threads_id` int(7) NOT NULL,
  `threads_tital` varchar(255) NOT NULL,
  `threads_desc` text NOT NULL,
  `threads_cat_id` int(7) NOT NULL,
  `threads_user_id` int(7) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`threads_id`, `threads_tital`, `threads_desc`, `threads_cat_id`, `threads_user_id`, `time`) VALUES
(1, 'dhrupal', 'my full name is chabhadiya dhrupal kishor bhai', 1, 2, '2024-06-18 15:02:05'),
(2, 'esfljfn', 't;uhrijk', 1, 3, '2024-06-18 19:29:04'),
(3, 'dgsd', 'wtet', 2, 5, '2024-06-18 20:36:53'),
(4, 'dgsd', 'wtet', 2, 2, '2024-06-18 20:50:35'),
(5, 'srgrthtrhhtr', 'trhrth', 2, 3, '2024-06-18 20:50:58'),
(6, 'srgrthtrhhtr', 'trhrth', 2, 6, '2024-06-18 20:51:37'),
(7, 'srgrthtrhhtr', 'trhrth', 2, 4, '2024-06-18 20:51:47'),
(8, 'srgrthtrhhtr', 'trhrth', 2, 8, '2024-06-18 20:53:39'),
(9, 'dfsfwe', 'q3rwet', 2, 7, '2024-06-18 21:37:58'),
(10, 'dfsfwe', 'q3rwet', 2, 5, '2024-06-18 22:14:02'),
(11, 'dsjgheri90ey', 'wetneeyye', 2, 3, '2024-06-19 07:39:50'),
(12, 'as', 'as devloper\r\n', 2, 1, '2024-06-22 14:33:30'),
(13, 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group. PHP was ori', 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group. PHP was originally an abbreviation of Personal', 1, 6, '2024-06-22 14:51:44'),
(14, 'php portfolio', 'my question  is very simple is this code in  bug', 1, 1, '2024-06-25 22:56:53'),
(15, 'my name is dhrupal007u', 'password is dhrupal', 1, 9, '2024-06-25 23:30:56'),
(16, 'this is a c ', 'language', 2, 9, '2024-06-25 23:36:18'),
(17, 'my name is dhrupal', 'this is php\r\n', 1, 11, '2024-06-26 00:02:54'),
(18, 'utsav', 'patel', 2, 12, '2024-06-26 00:16:14'),
(19, 'this is my main problem ', 'can no  login in idicuss web page in log in', 2, 9, '2024-06-26 08:45:35'),
(20, 'this is my main problem ', 'can no  login in idicuss web page in log in', 2, 9, '2024-06-26 08:46:47'),
(21, 'vicky', 'he is my best friend and is childhood friend ', 1, 14, '2024-06-30 21:00:34'),
(22, 'vicky', 'he is my best friend and is childhood friend ', 1, 14, '2024-06-30 21:01:15'),
(23, 'vicky', 'he is my best friend and is childhood friend ', 1, 14, '2024-06-30 21:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `time`) VALUES
(1, 'chabhadiyadhrupal99@gmail.com', '$2y$10$AXklICuQ4vH2j.WsRwN.6e9kIk4Y7gH2gnDCMHiqcK.DmBVhRFbZS', '2024-06-22 16:43:57'),
(2, 'chabhadiyadhrupl99@gmail.com', '$2y$10$/qAu5G3ENj2VARFH5uUC9.0V6scbKFNqD9EsRu4iOOT3snjxbU8va', '2024-06-22 16:51:50'),
(3, 'utsavchabhadiya31@gmail.com', '$2y$10$FtEOJKiK8/LZKWZwD92hs.rh81yyHWdWgYevhYRrIpAeswedqMBcW', '2024-06-22 16:55:37'),
(4, 'patel@gmail.com', '$2y$10$2HKDQfZ1AgdLR2RweWc1TuCvWrC4uCGUu7yeBEcYAo83vpabk8bse', '2024-06-22 16:58:24'),
(5, 'sd@gmail.com', '$2y$10$QGS0nxU.ZfHwmbvaMY14p.qxCIzyFYtWfC8F608RMjo5RuRAbfk7e', '2024-06-24 18:36:14'),
(6, '123@123.com', '$2y$10$xudRc1AIA62ln.R6L8IUHOkCKGbaLwdPxmWLGX8RsJELKi3aTfT4a', '2024-06-24 19:18:27'),
(7, 'dhrupal@g.com', '$2y$10$2kOkbkGYnDm0Ic99fcng/u5.Y26P68ZpB2V6u0yYODK4eaIoSk7Eq', '2024-06-24 19:46:10'),
(8, 'abc@gmail.com', '$2y$10$.O90i.F/IJ8ffEAeigZY5e.OXAsjiEK83DZi9vOrT3GzRkdS980L6', '2024-06-25 20:29:40'),
(9, 'dhrupal007u@gmail.com', '$2y$10$hvDRqvindw87AifuEv/wR.nDjJ5eiXPUiLneZOqvQnr1J5.ShFcDm', '2024-06-25 20:45:35'),
(10, 'dkpatel@gmail.com', '$2y$10$ty23.Ep852HsJlFcHHoNaOEU5WSQxud8y47w3nbIZ1ry4XfcwwWIa', '2024-06-25 22:55:17'),
(11, 'dhrupal', '$2y$10$YQ1i6vi03JagOnNu.zn28O.ZlPBbN.4ieGUbUcZ4vRY7P0A4Akv1a', '2024-06-26 00:02:14'),
(12, 'utsav', '$2y$10$DA9u6uYt.udKEaDUEC5TRens6Xr/6HmzQVmCXWvs35UwPG/e4LEj2', '2024-06-26 00:15:48'),
(13, 'vicky', '$2y$10$4BqEnSY5Ej9dPlH80VT./OJfIxa0UV2t8HMBU1yGa7QzrNGLiiUq6', '2024-06-29 07:18:53'),
(14, 'dhrupalchabhadiya99@gmail.com', '$2y$10$FrNk.kwbo038hqlQD7pqiuh6Y1s8woMQvHu.y0Vh2qs.CVMDahD36', '2024-06-30 20:57:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`threads_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `threads_tital` (`threads_tital`,`threads_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `threads_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
