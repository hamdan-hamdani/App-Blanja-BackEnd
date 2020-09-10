-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 04:11 AM
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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(2, 'Wrist watch', ''),
(3, 'T-shirt', ''),
(4, 'Shorts', ''),
(5, 'Jacket', ''),
(6, 'Pants', ''),
(7, 'Handbag', ''),
(8, 'Bagback', ''),
(9, 'Socks', ''),
(10, 'Glasses', ''),
(11, 'Cap', ''),
(12, 'Tie', ''),
(13, 'Dress', ''),
(14, 'Formal suit', ''),
(15, 'Accessoris', ''),
(16, 'High Heels', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `id_category` int NOT NULL,
  `nameProduct` varchar(64) NOT NULL,
  `nameBrand` varchar(64) NOT NULL,
  `price` int NOT NULL,
  `color` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phoneNumber` varchar(64) NOT NULL,
  `storeName` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `roleId` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `email`, `phoneNumber`, `storeName`, `password`, `roleId`) VALUES
(1, 'dadan', 'dadan@gmail.com', '089111222333', 'dadanCloth', '$2a$10$QobHjTnMys7PznNmwjsOruloJfoD0jK3QHrImhj4GNExuOnn9He7a', 'seller');

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
(1, 'hamdan', 'hamdan230598@gmail.com', '$2a$10$CiG2lI3RD2Juj3l.RaW4GeTWWqbU90E07MsHzLyAvy2HTt9kXEsCu', 'customer'),
(2, 'hamdan', 'mysite..1234@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer'),
(3, 'hamdan', 'mysite..12346@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer'),
(4, 'hamdan', 'mysite..123467@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer'),
(5, 'hamdan', 'mysite123@gmail.b', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer'),
(6, 'hamdan', 'mysite1234@gmail.b', '$2a$10$fjhp8hDUjgfjD6RQ5/M6XeqimYRyyt/dgWWbr3ENPF9bd/G5Flz4m', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
