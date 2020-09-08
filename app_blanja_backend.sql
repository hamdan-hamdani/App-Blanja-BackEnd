-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 01:06 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_blanja_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `roleId` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `roleId`) VALUES
(1, 'hamdan', 'hamdan230598@gmail.com', '$2a$10$Wk/exu6XUkMAhZOjOVto0esVyMaYcak7962nNdfSd2Pk9FrSaTr3i', '2'),
(2, 'hamdan', 'mysite..1234@yahoo.com', '$2a$10$aWfIDKqLx1kSOZIfBJxuMe2VFZhgTIsq0xfFRnRco403N51DrlGCG', '2'),
(3, 'hamdan', 'mysite..12346@yahoo.com', '$2a$10$jsmmUsrCz4ZsycWRe/IfT.jXm8UGhyAULLudrTaSSbU1tJmZJSsNy', '2'),
(4, 'hamdan', 'mysite..123467@yahoo.com', '$2a$10$sEgT1GsShzIa0n2/yKc1A..crckoHGG/gr.8pZMSQGSjils.mgMIW', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
