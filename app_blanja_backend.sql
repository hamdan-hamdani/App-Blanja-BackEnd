-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 01:06 PM
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
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int NOT NULL,
  `addressAs` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nameRecipient` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(255) NOT NULL,
  `noRecipient` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `codePos` varchar(64) NOT NULL,
  `idSeller` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `addressAs`, `nameRecipient`, `address`, `city`, `noRecipient`, `codePos`, `idSeller`) VALUES
(1, 'Kantor', 'Gungun', 'Palawija no 56 Coblong', 'Bandung', '2331433222', '34211', 2),
(2, 'Rumah', 'gugun', 'Kp.Janari rt 09 rw3 Desa Cibaligo Kec Kalongwetan', 'kab bandung barat', '087654345211', '98788', 2),
(3, 'Kantor', 'Bintang', 'Palawija no 56 Coblong', 'Bandung', '08765566543', '34211', 3);

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
(1, 'Wrist watch', 'http://localhost:3000/uploads/writswatch.png'),
(2, 'T-shirt', 'http://localhost:3000/uploads/T-shirt.png'),
(3, 'Shorts', 'http://localhost:3000/uploads/shorts.png'),
(4, 'Jacket', 'http://localhost:3000/uploads/jacket.png'),
(5, 'Pants', 'http://localhost:3000/uploads/pants.png'),
(6, 'Handbag', 'http://localhost:3000/uploads/handbag.png'),
(7, 'Bagback', 'http://localhost:3000/uploads/backbag.png'),
(8, 'Socks', 'http://localhost:3000/uploads/socks.png'),
(9, 'Glasses', 'http://localhost:3000/uploads/glasses.png'),
(10, 'Cap', 'http://localhost:3000/uploads/cap.png'),
(11, 'Tie', 'http://localhost:3000/uploads/tie.png'),
(12, 'Dress', 'http://localhost:3000/uploads/dress.png'),
(13, 'Formal suit', 'http://localhost:3000/uploads/formal suit.png'),
(14, 'Accessoris', 'http://localhost:3000/uploads/accessoris.png'),
(15, 'High Heels', 'http://localhost:3000/uploads/high heels.png');

-- --------------------------------------------------------

--
-- Table structure for table `imageproduct`
--

CREATE TABLE `imageproduct` (
  `id` int NOT NULL,
  `image` varchar(256) NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `imageproduct`
--

INSERT INTO `imageproduct` (`id`, `image`, `id_product`) VALUES
(23, 'http://localhost:3000/uploads/10/images-15998717014621203444_8f884c13_04e0_444f_8da2_ea432bad470c_1500_1138.jpg', 20),
(24, 'http://localhost:3000/uploads/10/images-159987170147921425609_fd828fc1-9eac-4610-9e98-dc163b782cfb_640_640.jpg', 20),
(25, 'http://localhost:3000/uploads/10/images-1599871701496Oakley_Hat_Golf_Classic_Original___Topi_Golf_Pria_Original_B.jpg', 20),
(26, 'http://localhost:3000/uploads/11/images-159990463576551WO3wo5MtL._AC_UY580_.jpg', 21),
(27, 'http://localhost:3000/uploads/11/images-1599904635771487-4c3d629422cf1e3fa8e23c6f898ab370.jpg', 21),
(28, 'http://localhost:3000/uploads/11/images-1599904635795106232425_00da8cdd-bf05-4600-b88a-e0f6b25e1d00_1280_1280.jpg', 21),
(29, 'http://localhost:3000/uploads/11/images-1599904635800406187650_1_720x928.jpg', 21),
(30, 'http://localhost:3000/uploads/1/images-159990655390223172450_B.jpg', 21),
(31, 'http://localhost:3000/uploads/1/images-1599906553921d2cb376d27296d781ae61e29e29fc293.jpg', 21),
(32, 'http://localhost:3000/uploads/1/images-1599906553929Jam_Tangan_Pria_Murah_Berkualitas__Casual_Jam_Tangan_Quicksi.jpg', 21),
(33, 'http://localhost:3000/uploads/1/images-1599906553949Jam_Tangan_QUIKSILVER_PRIA_DIGITAL_TALI_KARET_BULAT.jpg', 21);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `nameCategory` int NOT NULL,
  `nameProduct` varchar(64) NOT NULL,
  `nameBrand` varchar(64) NOT NULL,
  `price` int NOT NULL,
  `color` varchar(64) NOT NULL,
  `condition` varchar(64) NOT NULL,
  `description` varchar(256) NOT NULL,
  `stock` int NOT NULL,
  `idSeller` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nameCategory`, `nameProduct`, `nameBrand`, `price`, `color`, `condition`, `description`, `stock`, `idSeller`) VALUES
(20, 10, 'Oakley Hat Golf Classic Original', 'Oakley', 150000, 'black', 'new', 'Oakley Hat Golf Classic Original BRAND NEW FULL TAGSize : ALL SIZE*100% ORIGINAL*ORIGINAL PICTURE', 20, 2),
(21, 11, 'Berkner Aqua Tie', 'ties', 150000, 'black', 'new', 'The Berkner tie in aqua is just the accessory you\'ve been looking for if you\'re going for a clean, simple look that is easy to style', 20, 3),
(22, 1, 'Jam Tangan Pria Quiksilver Rantai Chrono Aktif Premium', 'quicksilver', 350000, 'black', 'new', 'Kualitas Premium, Diameter 4,5cm, Chrono aktif, Tanggal Aktif, Rantai Stainless, Kaca Blue Shapire, Termasuk box Kancing, Bonus baterai cadangan', 20, 3);

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
  `roleId` varchar(64) NOT NULL,
  `gender` varchar(256) DEFAULT NULL,
  `tglLahir` date DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `id_store` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `email`, `phoneNumber`, `storeName`, `password`, `roleId`, `gender`, `tglLahir`, `image`, `id_store`, `description`) VALUES
(1, 'Dadan', 'dadan@gmail.com', '111111222333', 'dadanCloth', '$2a$10$8w7RLKWsLk35wT9rq/uvT.6wVuAPxF9PU5rSNv2rypOPYmZ3XKmLq', 'seller', 'L', '1990-05-25', 'http://localhost:3000/uploads/imgUser/seller/image-1599885139489Penguins.jpg', 1, ''),
(2, 'Gungun Wi', 'gugun@gmail.com', '111444222333', 'gungunCloth', '$2a$10$jG9qLjCj6be/tn1YrfYXEOwysbdCosPSxImuxKV4u5KJ7mc2fz2jW', 'seller', 'L', '1990-05-25', 'http://localhost:3000/uploads/imgUser/seller/image-1599888687893Penguins.jpg', 2, ''),
(3, 'Bintang Wi', 'bintang@gmail.com', '082112211443', 'bintangClothing', '$2a$10$e8aHdhD.gOshvH5XBhRWPeVNi/QV9/hNWY14nkaJRqCZAo7DoyaMe', 'seller', 'L', '1990-05-25', 'http://localhost:3000/uploads/imgUser/seller/image-1599899628943Lighthouse.jpg', NULL, 'lorem ipsum doler amet');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `idStore` int NOT NULL,
  `nameStore` varchar(50) NOT NULL,
  `descriptionStore` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`idStore`, `nameStore`, `descriptionStore`) VALUES
(1, 'dadanCloth', 'lorem '),
(2, 'gungunCloth', 'lorem dorem ipsum');

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
(1, 'hamdan', 'hamdan230598@gmail.com', '$2a$10$z8rIgTyiw3h4J98OvNXcd.Wgy62nZ09yCklgP1Xk7QMhlG1UcrsAK', 'customer'),
(2, 'hamdan', 'mysite..1234@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer'),
(3, 'hamdan', 'mysite..12346@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer'),
(4, 'hamdan', 'mysite..123467@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer'),
(5, 'hamdan', 'mysite123@gmail.b', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer'),
(6, 'hamdan', 'mysite1234@gmail.b', '$2a$10$fjhp8hDUjgfjD6RQ5/M6XeqimYRyyt/dgWWbr3ENPF9bd/G5Flz4m', 'customer'),
(7, 'Dodi', 'dodi1234@gmail.com', '$2a$10$.V9lf/u.5BoBGYOjJDDEpeazdYrTW0yQ1A/kgkTKOcWbnei1UHPsi', 'customer'),
(8, 'Sani', 'sani1234@gmail.com', '$2a$10$Ch6jHkFdnBf7pUoEwVgEB.ux3ZGuSJXasvl4WETzjUdFR4sAXJjqG', 'customer'),
(9, 'Sani2', 'sani123@gmail.com', '$2a$10$Gcofc4wYaZqgt/OQ7234zebyTNi0.CmJdm35Do0UsZ8cDQLpuzGa.', 'customer'),
(10, 'Sani3', 'sani12345@gmail.com', '$2a$10$XKbEBtzwE4U9Vo5ski4x5.2iTWRuxX9i4NOd6U8wpw2VSQoe5WiYO', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSeller` (`idSeller`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nameCategory` (`nameCategory`),
  ADD KEY `id_seller` (`idSeller`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_store` (`id_store`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`idStore`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `idStore` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`idSeller`) REFERENCES `seller` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD CONSTRAINT `imageproduct_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`nameCategory`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idSeller`) REFERENCES `seller` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`id_store`) REFERENCES `store` (`idStore`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
