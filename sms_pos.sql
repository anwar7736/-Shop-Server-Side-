-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2021 at 01:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) NOT NULL,
  `product_unit_price` bigint(20) NOT NULL,
  `product_total_price` bigint(20) NOT NULL,
  `seller_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `cat_name`, `cat_code`, `cat_icon`) VALUES
(1, 'Mobile', '1621873359', 'http://localhost:8000/storage/LFVuwAkuxkNg3FDZJSHuRBQfEY1ioJejnqclL5OJ.jpg'),
(2, 'TV', '1621873368', 'http://localhost:8000/storage/Wib0ksVVljx66bZkFCRyHkxlBNipPEwtdzJZOkyh.jpg'),
(3, 'Laptop', '1621873376', 'http://localhost:8000/storage/pUrT3QSclvJh8mgTKR0W76xOYR42GaXlt9H4lXrb.jpg'),
(4, 'Monitor', '1621873388', 'http://localhost:8000/storage/tuvHHVvtVbwJ5OqBt8rzJ2CXXujyLoPjjoSTaepu.jpg'),
(6, 'Refrigerator', '1622040197', 'http://localhost:8000/storage/HlghjzK2GxQcz3iOwdPz1TEZsGuknNEkechwvspG.jpg'),
(7, 'Desktop PC', '1622040245', 'http://localhost:8000/storage/XVpN2yKHfsrlZnNcA9dYHqAaalxOAiSbI3uqQVsp.jpg'),
(8, 'Printer', '1622040256', 'http://localhost:8000/storage/xXsrQcfJKEV6XlvegwzWC8OIA8CXIR5TQJi7PaO5.jpg'),
(14, 'Electronics', '1625434617', 'http://localhost:8000/storage/xDqAze7CfLoKNa1G0VHKNdzpAhp63Hi1Un2MhxsC.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `current_stock`
--

CREATE TABLE `current_stock` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(200) NOT NULL,
  `product_qty` int(200) NOT NULL,
  `total_price` int(200) NOT NULL,
  `product_remarks` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_stock`
--

INSERT INTO `current_stock` (`id`, `product_name`, `product_code`, `product_icon`, `product_category`, `product_price`, `product_qty`, `total_price`, `product_remarks`) VALUES
(1, 'Vivo ZX Pro', '1621873441', 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg', 'Mobile', 15000, 31, 465000, 'Good things'),
(2, 'Vivo Y11', '1621873482', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg', 'Mobile', 12999, 85, 1104915, 'Good things'),
(3, 'Walton TV', '1621873511', 'http://localhost:8000/storage/YyELUPV2C0SnRcG6lSnY8ZZYcYgJd1rSj64D1HTS.jpg', 'TV', 9000, 97, 873000, 'Good things'),
(4, 'HP Laptop', '1621873536', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg', 'Laptop', 45000, 10, 450000, 'Good things'),
(6, 'Remax Original', '1621873607', 'http://localhost:8000/storage/6zRY5K9R0i3huCVV8eWpcbUQiKddZ64gE5jQmHTo.jpg', 'Headphone', 250, 44, 11000, 'Good things'),
(29, 'Samsung LED Monitor', '1625512610', 'http://localhost:8000/storage/FPAXTXsuQtk3LmcO9chfRZgXeBzDzOjgn6eC2wCH.jpg', 'Monitor', 10000, 19, 190000, '152222');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2021_04_09_164209_category_list_table', 1),
(15, '2021_04_09_164313_product_list_table', 1),
(18, '2021_05_24_154451_create_current_stock_table', 1),
(23, '2021_05_27_175946_create_stock_received_table', 2),
(24, '2021_05_27_180621_create_stock_decrease_table', 2),
(25, '2021_04_11_153758_cart_table', 3),
(27, '2021_04_09_164119_user_list_table', 5),
(28, '2021_04_11_133721_transaction_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_remarks` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `product_name`, `product_code`, `product_icon`, `product_price`, `product_category`, `product_remarks`) VALUES
(1, 'Vivo ZX Pro', '1621873441', 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg', '15000', 'Mobile', 'Good things'),
(2, 'Vivo Y11', '1621873482', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg', '12999', 'Mobile', 'Good things'),
(3, 'Walton TV', '1621873511', 'http://localhost:8000/storage/YyELUPV2C0SnRcG6lSnY8ZZYcYgJd1rSj64D1HTS.jpg', '9000', 'TV', 'Good things'),
(4, 'HP Laptop', '1621873536', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg', '45000', 'Laptop', 'Good things'),
(6, 'Remax Original', '1621873607', 'http://localhost:8000/storage/6zRY5K9R0i3huCVV8eWpcbUQiKddZ64gE5jQmHTo.jpg', '250', 'Headphone', 'Good things'),
(30, 'Samsung LED Monitor', '1625512610', 'http://localhost:8000/storage/FPAXTXsuQtk3LmcO9chfRZgXeBzDzOjgn6eC2wCH.jpg', '10000', 'Monitor', '152222');

-- --------------------------------------------------------

--
-- Table structure for table `stock_decrease`
--

CREATE TABLE `stock_decrease` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `decrease_reason` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decrease_date` date NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` bigint(20) NOT NULL,
  `product_unit_price` bigint(20) NOT NULL,
  `product_total_price` bigint(20) NOT NULL,
  `product_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_decrease`
--

INSERT INTO `stock_decrease` (`id`, `decrease_reason`, `decrease_date`, `product_name`, `product_code`, `product_category`, `product_qty`, `product_unit_price`, `product_total_price`, `product_icon`) VALUES
(8, 'Stock Adjustment', '2021-05-28', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(9, 'Stock Adjustment', '2021-05-20', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(10, 'Stock Adjustment', '2021-05-21', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(11, 'Stock Adjustment', '2021-05-18', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(12, 'Stock Adjustment', '2021-07-04', 'HP Laptop', '1621873536', 'Laptop', 4, 45000, 180000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(13, 'Stock Adjustment', '2021-07-04', 'Walton TV', '1621873511', 'TV', 2, 9000, 18000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(14, 'Stock Adjustment', '2021-07-06', 'Walton TV', '1621873511', 'TV', 1, 9000, 9000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(15, 'Stock Adjustment', '2021-07-06', 'Samsung LED Monitor', '1621873579', 'Monitor', 1, 8000, 8000, 'public/JNBhaevkScGeqlZrGwM0cpQGI2uwrecuMm5JgznS.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stock_received`
--

CREATE TABLE `stock_received` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `received_date` date NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` bigint(20) NOT NULL,
  `product_unit_price` bigint(20) NOT NULL,
  `product_total_price` bigint(20) NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_received`
--

INSERT INTO `stock_received` (`id`, `invoice_no`, `received_date`, `product_name`, `product_code`, `product_category`, `product_qty`, `product_unit_price`, `product_total_price`, `product_icon`) VALUES
(20, 'INV28052021', '2021-05-28', 'Vivo ZX Pro', '1621873441', 'Mobile', 48, 15000, 720000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(21, 'INV28052021', '2021-05-20', 'Vivo ZX Pro', '1621873441', 'Mobile', 48, 15000, 720000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(22, 'INV28052021', '2021-05-21', 'Vivo ZX Pro', '1621873441', 'Mobile', 48, 15000, 720000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(23, 'INV28052021', '2021-05-25', 'Vivo ZX Pro', '1621873441', 'Mobile', 48, 15000, 720000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(24, 'INV202043', '2021-07-04', 'Vivo Y11', '1621873482', 'Mobile', 6, 12999, 77994, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(25, 'INV202041', '2021-07-04', 'Walton TV', '1621873511', 'TV', 9, 9000, 81000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(26, 'INV202045', '2021-07-05', 'Vivo ZX Pro', '1621873441', 'Mobile', 48, 15000, 720000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(27, 'INV202047', '2021-07-05', 'Walton TV', '1621873511', 'TV', 9, 9000, 81000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(28, 'INV202043', '2021-07-05', 'HP Laptop', '1621873536', 'Laptop', 6, 45000, 270000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(29, 'INV202043', '2021-07-06', 'Vivo Y11', '1621873482', 'Mobile', 6, 12999, 77994, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(30, 'INV202043', '2021-07-06', 'Vivo ZX Pro', '1621873441', 'Mobile', 48, 15000, 720000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(31, 'INV202043', '2021-07-06', 'Walton TV', '1621873511', 'TV', 9, 9000, 81000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(32, 'INV202041', '2021-07-06', 'HP Laptop', '1621873536', 'Laptop', 6, 45000, 270000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(33, 'INV202047', '2021-07-06', 'Samsung LED Monitor', '1621873579', 'Monitor', 4, 8000, 32000, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(34, 'INV202045', '2021-07-06', 'INV202022', '1625434653', 'Desktop PC', 3, 145, 435, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(35, 'INV202022', '2021-07-06', 'Boiler Egg', '1625499740', 'Meat & Fish', 5, 1520, 7600, 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(36, 'INV20343430', '2021-07-06', 'Samsung LED Monitor', '1625512610', 'Monitor', 1, 10000, 10000, 'http://localhost:8000/storage/FPAXTXsuQtk3LmcO9chfRZgXeBzDzOjgn6eC2wCH.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_list`
--

CREATE TABLE `transaction_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `memo_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` bigint(20) NOT NULL,
  `product_unit_price` bigint(20) NOT NULL,
  `product_total_price` bigint(20) NOT NULL,
  `seller_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_list`
--

INSERT INTO `transaction_list` (`id`, `memo_no`, `invoice_no`, `invoice_date`, `product_code`, `product_name`, `product_qty`, `product_unit_price`, `product_total_price`, `seller_name`, `product_icon`) VALUES
(8, '1010', '93182654', '2021-07-06', '1621873441', 'Vivo ZX Pro', 1, 15000, 15000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(9, '1010', '90692538', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(10, '1010', '63601843', '2021-07-06', '1621873511', 'Walton TV', 1, 9000, 9000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(11, '1010', '19211756', '2021-07-06', '1621873536', 'HP Laptop', 3, 45000, 135000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(12, '1010', '42368585', '2021-07-06', '1621873579', 'Samsung LED Monitor', 1, 8000, 8000, 'Md Anwar Hossain', 'public/JNBhaevkScGeqlZrGwM0cpQGI2uwrecuMm5JgznS.jpg'),
(13, '1010', '75874770', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/OzJOxpDAxgQqENGlCi3RF8SStT9VxOK0yTQaDegh.jpg'),
(14, '1011', '81601551', '2021-07-06', '1621873441', 'Vivo ZX Pro', 2, 15000, 30000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(15, '1011', '49739553', '2021-07-06', '1621873482', 'Vivo Y11', 2, 12999, 25998, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(16, '1012', '49160983', '2021-07-06', '1621873579', 'Samsung LED Monitor', 1, 8000, 8000, 'Md Anwar Hossain', 'public/JNBhaevkScGeqlZrGwM0cpQGI2uwrecuMm5JgznS.jpg'),
(17, '1013', '33479962', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(18, '1013', '34369626', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/OzJOxpDAxgQqENGlCi3RF8SStT9VxOK0yTQaDegh.jpg'),
(19, '1014', '33479962', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(20, '1014', '34369626', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/OzJOxpDAxgQqENGlCi3RF8SStT9VxOK0yTQaDegh.jpg'),
(21, '1015', '33479962', '2021-07-06', '1621873536', 'HP Laptop', 2, 45000, 90000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(22, '1015', '34369626', '2021-07-06', '1621873607', 'Remax Original', 2, 250, 500, 'Md Anwar Hossain', 'http://localhost:8000/storage/OzJOxpDAxgQqENGlCi3RF8SStT9VxOK0yTQaDegh.jpg'),
(23, '1016', '17132692', '2021-07-06', '1621873441', 'Vivo ZX Pro', 1, 15000, 15000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(24, '1016', '36790034', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(25, '1016', '80990382', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/OzJOxpDAxgQqENGlCi3RF8SStT9VxOK0yTQaDegh.jpg'),
(26, '1017', '80990382', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/OzJOxpDAxgQqENGlCi3RF8SStT9VxOK0yTQaDegh.jpg'),
(27, '1018', '80990382', '2021-07-06', '1621873607', 'Remax Original', 2, 250, 500, 'Md Anwar Hossain', 'http://localhost:8000/storage/OzJOxpDAxgQqENGlCi3RF8SStT9VxOK0yTQaDegh.jpg'),
(28, '1019', '48434751', '2021-07-06', '1621873511', 'Walton TV', 1, 9000, 9000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(29, '1020', '83436851', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(30, '1020', '48434751', '2021-07-06', '1621873511', 'Walton TV', 1, 9000, 9000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(31, '1021', '83436851', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(32, '1021', '48434751', '2021-07-06', '1621873511', 'Walton TV', 1, 9000, 9000, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(33, '1022', '83436851', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(34, '1023', '83436851', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(35, '1024', '93969407', '2021-07-06', '1621873441', 'Vivo ZX Pro', 1, 15000, 15000, 'Md Anwar Hossain', 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(36, '1024', '45974686', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(37, '1025', '93969407', '2021-07-06', '1621873441', 'Vivo ZX Pro', 1, 15000, 15000, 'Md Anwar Hossain', 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(38, '1025', '45974686', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(39, '1026', '93969407', '2021-07-06', '1621873441', 'Vivo ZX Pro', 2, 15000, 30000, 'Md Anwar Hossain', 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(40, '1026', '45974686', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(41, '1027', '93969407', '2021-07-06', '1621873441', 'Vivo ZX Pro', 2, 15000, 30000, 'Md Anwar Hossain', 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(42, '1027', '45974686', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(43, '1028', '88329092', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(44, '1028', '32811290', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg'),
(45, '1028', '38684374', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/6zRY5K9R0i3huCVV8eWpcbUQiKddZ64gE5jQmHTo.jpg'),
(46, '1029', '88329092', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(47, '1029', '32811290', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg'),
(48, '1029', '38684374', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/6zRY5K9R0i3huCVV8eWpcbUQiKddZ64gE5jQmHTo.jpg'),
(49, '1030', '88329092', '2021-07-06', '1621873482', 'Vivo Y11', 2, 12999, 25998, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(50, '1030', '32811290', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg'),
(51, '1030', '38684374', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/6zRY5K9R0i3huCVV8eWpcbUQiKddZ64gE5jQmHTo.jpg'),
(52, '1031', '88329092', '2021-07-06', '1621873482', 'Vivo Y11', 2, 12999, 25998, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(53, '1032', '88329092', '2021-07-06', '1621873482', 'Vivo Y11', 2, 12999, 25998, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(54, '1033', '50331170', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(55, '1033', '19454497', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg'),
(56, '1034', '50331170', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(57, '1034', '19454497', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg'),
(58, '1035', '46263952', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(59, '1035', '44352225', '2021-07-06', '1621873511', 'Walton TV', 1, 9000, 9000, 'Md Anwar Hossain', 'http://localhost:8000/storage/YyELUPV2C0SnRcG6lSnY8ZZYcYgJd1rSj64D1HTS.jpg'),
(60, '1035', '95563448', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg'),
(61, '1036', '43430750', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(62, '1036', '99774924', '2021-07-06', '1621873511', 'Walton TV', 1, 9000, 9000, 'Md Anwar Hossain', 'http://localhost:8000/storage/YyELUPV2C0SnRcG6lSnY8ZZYcYgJd1rSj64D1HTS.jpg'),
(63, '1036', '17203598', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/6zRY5K9R0i3huCVV8eWpcbUQiKddZ64gE5jQmHTo.jpg'),
(64, '1037', '49701191', '2021-07-06', '1621873441', 'Vivo ZX Pro', 1, 15000, 15000, 'Md Anwar Hossain', 'http://localhost:8000/storage/VO3zvJJo642ETzTarEtCv2MWMpMwhkBhOoRmtg7K.jpg'),
(65, '1037', '84677881', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(66, '1037', '51126799', '2021-07-06', '1621873536', 'HP Laptop', 2, 45000, 90000, 'Md Anwar Hossain', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg'),
(67, '1037', '67727591', '2021-07-06', '1625512610', 'Samsung LED Monitor', 1, 10000, 10000, 'Md Anwar Hossain', 'public/BI22p1SPzroRQXc8UWslhS6zMpTVT7PGt0U2sa8i.jpg'),
(68, '1038', '90991227', '2021-07-06', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', 'http://localhost:8000/storage/lBLUlK89O4vMRWyzwEL24VLDYuuMqURO4CxyV9lG.jpg'),
(69, '1038', '75342064', '2021-07-06', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', 'http://localhost:8000/storage/6zRY5K9R0i3huCVV8eWpcbUQiKddZ64gE5jQmHTo.jpg'),
(70, '1039', '65016761', '2021-07-06', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', 'http://localhost:8000/storage/8TlcKN9sjXJKw1EkxTkZRJyALf19qE6vfrW3z2At.jpg'),
(71, '1039', '52856037', '2021-07-06', '1621873511', 'Walton TV', 1, 9000, 9000, 'Md Anwar Hossain', 'http://localhost:8000/storage/YyELUPV2C0SnRcG6lSnY8ZZYcYgJd1rSj64D1HTS.jpg'),
(72, '1039', '85812594', '2021-07-06', '1625512610', 'Samsung LED Monitor', 1, 10000, 10000, 'Md Anwar Hossain', 'public/BI22p1SPzroRQXc8UWslhS6zMpTVT7PGt0U2sa8i.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`id`, `fullname`, `username`, `email`, `roll`, `password`) VALUES
(4, 'Md Anwar Hossain', 'anwar', 'anwarhossain7736@gmail.com', 'Admin', '$2y$10$w82X1cULnZmViV4kxoBoLOk8NWQVi9gzoKFr79i0hzVN/eHvHjmR.'),
(5, 'Md Sujon Hossain', 'sujon', 'sujon23@gmail.com', 'Worker', '$2y$10$N2OjK0c/Ffk.3Fpsj.cDg.HwRxmG.uKA2umNnnsI77U.F0Djpcfou');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_stock`
--
ALTER TABLE `current_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_decrease`
--
ALTER TABLE `stock_decrease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_received`
--
ALTER TABLE `stock_received`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `current_stock`
--
ALTER TABLE `current_stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stock_decrease`
--
ALTER TABLE `stock_decrease`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stock_received`
--
ALTER TABLE `stock_received`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
