-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 10:16 AM
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
(2, 'Wrist watch', 'http://localhost:3000/uploads/writswatch.png'),
(3, 'T-shirt', 'http://localhost:3000/uploads/T-shirt.png'),
(4, 'Shorts', 'http://localhost:3000/uploads/shorts.png'),
(5, 'Jacket', 'http://localhost:3000/uploads/jacket.png'),
(6, 'Pants', 'http://localhost:3000/uploads/pants.png'),
(7, 'Handbag', 'http://localhost:3000/uploads/handbag.png'),
(8, 'Bagback', 'http://localhost:3000/uploads/backbag.png'),
(9, 'Socks', 'http://localhost:3000/uploads/socks.png'),
(10, 'Glasses', 'http://localhost:3000/uploads/glasses.png'),
(11, 'Cap', 'http://localhost:3000/uploads/cap.png'),
(12, 'Tie', 'http://localhost:3000/uploads/tie.png'),
(13, 'Dress', 'http://localhost:3000/uploads/dress.png'),
(14, 'Formal suit', 'http://localhost:3000/uploads/formal suit.png'),
(15, 'Accessoris', 'http://localhost:3000/uploads/accessoris.png'),
(16, 'High Heels', 'http://localhost:3000/uploads/high heels.png'),
(18, 'shoes', 'http://localhost:3000/uploads/image-1599721166971shoes.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `nameCategory` varchar(64) NOT NULL,
  `nameProduct` varchar(64) NOT NULL,
  `nameBrand` varchar(64) NOT NULL,
  `price` int NOT NULL,
  `color` varchar(64) NOT NULL,
  `condition` varchar(64) NOT NULL,
  `description` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
