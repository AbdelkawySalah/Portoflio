-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 05:07 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proflioproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proflio`
--

CREATE TABLE `proflio` (
  `id` int(11) NOT NULL,
  `img` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proflio`
--

INSERT INTO `proflio` (`id`, `img`, `description`, `user_id`) VALUES
(8, 'images (24).jpeg', '<p><b style=\"background-color: rgb(255, 156, 0);\">eeeeeeeeeeeeeeeeeeeeeee rrrrttt</b></p>', 1),
(10, 'images (1).png', '<p><b><span style=\"font-family: Tahoma;\">snsnd dhdh dhdhd hdddh</span></b></p>', 1),
(11, 'images (24).jpeg', '<p>xncbdjdjdj</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `title` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `userprotflio`
-- (See below for the actual view)
--
CREATE TABLE `userprotflio` (
`id` int(11)
,`img` varchar(300)
,`description` text
,`sname` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `sname`, `email`, `password`) VALUES
(1, 'ahmed', 'ahmed@yahoo.com', '123'),
(2, 'waled', 'waled@yahoo.com', '1373'),
(3, 'abdelkawy', 'abdou@yahoo.com', '3631373'),
(4, 'abdelkawy', 'abdou@yahoo.com', '3631373'),
(5, 'samir', 'sasoo@yahoo.com', '3333333'),
(52, 'ahmed@yahoo.com', 'aaaaa@aa', '123'),
(53, 'ahmed@yahoo.com', 'aaaa@yahoo.com', '123'),
(54, 'ahmed@yahoo.com', 'aaaaaa@yahhhhhhhh', '123'),
(55, 'ahmed@yahoo.com', 'aaaaaddddff@yahoo.com', '123');

-- --------------------------------------------------------

--
-- Structure for view `userprotflio`
--
DROP TABLE IF EXISTS `userprotflio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userprotflio`  AS  select `proflio`.`id` AS `id`,`proflio`.`img` AS `img`,`proflio`.`description` AS `description`,`users`.`sname` AS `sname` from (`proflio` join `users` on((`proflio`.`user_id` = `users`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proflio`
--
ALTER TABLE `proflio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proflio`
--
ALTER TABLE `proflio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `proflio`
--
ALTER TABLE `proflio`
  ADD CONSTRAINT `proflio_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
