-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 28, 2020 at 08:49 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gameshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `title`, `description`, `keywords`) VALUES
(1, 0, 'Категория 1', 'Описание категории 1', 'Ключевое слово к1'),
(2, 0, 'Категория 2', 'Описание категории 2', 'Ключевое слово к2');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` tinyint(3) UNSIGNED NOT NULL,
  `total` decimal(6,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `qty`, `total`, `status`, `name`, `email`, `phone`, `address`, `note`) VALUES
(4, '2020-07-27 19:38:24', '2020-07-28 08:05:59', 3, '136.00', 1, 'Yurij', 'nabor_2008@mail.ru', '89898989', 'Пушкина 22', 'Игра\r\nИгра 2\r\nBuhf 3'),
(5, '2020-07-27 19:43:17', '2020-07-27 19:43:17', 2, '80.00', 0, 'Yurij', 'nabor_2008@mail.ru', '4444', 'Пушкина 22', 'фыва'),
(6, '2020-07-27 19:46:30', '2020-07-27 19:46:30', 1, '44.00', 0, 'лоло', 'nabor_2008@mail.ru', '9909090', 'Пушкина 22', 'ололол'),
(7, '2020-07-27 20:20:27', '2020-07-27 20:20:27', 2, '86.00', 0, 'Yurij', 'nabor_2008@mail.ru', '89898989', 'Москва', 'фыва');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `qty` tinyint(4) NOT NULL,
  `total` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `title`, `price`, `qty`, `total`) VALUES
(1, 4, 1, 'Game 1', '44.00', 1, '44.00'),
(2, 4, 4, 'Game 4', '36.00', 1, '36.00'),
(3, 4, 2, 'Game 2', '56.00', 1, '56.00'),
(4, 5, 1, 'Game 1', '44.00', 1, '44.00'),
(5, 5, 4, 'Game 4', '36.00', 1, '36.00'),
(6, 6, 1, 'Game 1', '44.00', 1, '44.00'),
(7, 7, 8, 'Game 8', '67.00', 1, '67.00'),
(8, 7, 9, 'Game 9', '19.00', 1, '19.00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `old_price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-image.png',
  `is_offer` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `content`, `price`, `old_price`, `description`, `keywords`, `img`, `is_offer`) VALUES
(1, 1, 'Game 1', 'asdf', '44.00', '44.00', 'asdfasdfasdf', 'asdf', '3.jpg', 0),
(2, 1, 'Game 2', 'asdf', '56.00', '44.00', 'asdfasdfasdf', 'asdf', '4.jpg', 0),
(3, 2, 'Game 3', 'asdf', '34.00', '44.00', 'asdfasdfasdf', 'asdf', '5.jpg', 0),
(4, 1, 'Game 4', 'asdf', '36.00', '44.00', 'asdfasdfasdf', 'asdf', '6.jpg', 0),
(5, 2, 'Game 5', 'asdf', '23.00', '44.00', 'asdfasdfasdf', 'asdf', '7.jpg', 0),
(6, 1, 'Game 6', 'asdf', '38.00', '44.00', 'asdfasdfasdf', 'asdf', '8.jpg', 0),
(7, 2, 'Game 7', 'asdf', '55.00', '44.00', 'asdfasdfasdf', 'asdf', '9.jpg', 0),
(8, 1, 'Game 8', 'asdf', '67.00', '44.00', 'asdfasdfasdf', 'asdf', '10.jpg', 0),
(9, 1, 'Game 9', 'asdf', '19.00', '44.00', 'asdfasdfasdf', 'asdf', '11.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$5G1tiVz3tlOK2x8wKG/LueBDsHRSW0oW51SJWigRqMS.xk7awDul2', 'a84FUk5lle13mFb-6srLyYU5nC8jxX-n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
