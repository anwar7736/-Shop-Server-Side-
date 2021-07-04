-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 11:39 PM
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
(1, 'Mobile', '1621873359', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(2, 'TV', '1621873368', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(3, 'Laptop', '1621873376', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(4, 'Monitor', '1621873388', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(5, 'Headphone', '1621873401', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(6, 'Refrigerator', '1622040197', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(7, 'Desktop PC', '1622040245', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(8, 'Printer', '1622040256', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(9, 'Harware Accessories', '1622040276', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(14, 'Electronics', '1625434617', 'http://localhost:8000/storage/gEVCxDWC4I3wFaZ8F2ee5EHp0WHLQMMG2B0lsOMU.jpg');

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
(1, 'Vivo ZX Pro', '1621873441', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', 'Mobile', 15000, 11, 165000, 'Good things'),
(2, 'Vivo Y11', '1621873482', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', 'Mobile', 12999, 8, 103992, 'Good things'),
(3, 'Walton TV', '1621873511', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', 'TV', 9000, 2, 18000, 'Good things'),
(4, 'HP Laptop', '1621873536', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', 'Laptop', 45000, 1, 45000, 'Good things'),
(5, 'Samsung LED Montor', '1621873579', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', 'Monitor', 8000, 0, 0, 'Good things'),
(6, 'Remax Original', '1621873607', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', 'Headphone', 250, 12, 3000, 'Good things'),
(27, 'asdfds', '1625434653', 'public/mARbWO3ED93wg58Zi44PoAwxmBW1GZ0Ewp1j50zx.jpg', 'Desktop PC', 145, 0, 0, '25');

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
(26, '2021_04_11_133721_transaction_table', 4),
(27, '2021_04_09_164119_user_list_table', 5);

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
(1, 'Vivo ZX Pro', '1621873441', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', '15000', 'Mobile', 'Good things'),
(2, 'Vivo Y11', '1621873482', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', '12999', 'Mobile', 'Good things'),
(3, 'Walton TV', '1621873511', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', '9000', 'TV', 'Good things'),
(4, 'HP Laptop', '1621873536', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', '45000', 'Laptop', 'Good things'),
(5, 'Samsung LED Monitor', '1621873579', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', '8000', 'Monitor', 'Good things'),
(6, 'Remax Original', '1621873607', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg', '250', 'Headphone', 'Good things');

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
(13, 'sdafa', '2021-07-04', 'Walton TV', '1621873511', 'TV', 2, 9000, 18000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg');

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
(20, 'INV28052021', '2021-05-28', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(21, 'INV28052021', '2021-05-20', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(22, 'INV28052021', '2021-05-21', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(23, 'INV28052021', '2021-05-25', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(24, 'ff', '2021-07-04', 'Vivo Y11', '1621873482', 'Mobile', 1, 12999, 12999, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(25, 'sdff', '2021-07-04', 'Walton TV', '1621873511', 'TV', 7, 9000, 63000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(26, 'sdfgf', '2021-07-05', 'Vivo ZX Pro', '1621873441', 'Mobile', 1, 15000, 15000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(27, 'sdfgf', '2021-07-05', 'Walton TV', '1621873511', 'TV', 1, 9000, 9000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(28, 'sdfgf', '2021-07-05', 'HP Laptop', '1621873536', 'Laptop', 1, 45000, 45000, 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_list`
--

CREATE TABLE `transaction_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` bigint(20) NOT NULL,
  `product_unit_price` bigint(20) NOT NULL,
  `product_total_price` bigint(20) NOT NULL,
  `seller_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_list`
--

INSERT INTO `transaction_list` (`id`, `invoice_no`, `invoice_date`, `product_code`, `product_name`, `product_qty`, `product_unit_price`, `product_total_price`, `seller_name`, `order_id`, `product_icon`) VALUES
(1, '27895838', '2021-07-04', '1621873511', 'Walton TV', 2, 9000, 18000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(2, '27445343', '2021-07-04', '1621873441', 'Vivo ZX Pro', 1, 15000, 15000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(3, '47345220', '2021-07-04', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(4, '85567063', '2021-07-04', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(5, '49431767', '2021-07-04', '1621873579', 'Samsung LED Montor', 1, 8000, 8000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(6, '71811808', '2021-07-04', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(7, '11722555', '2021-07-04', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(8, '87231095', '2021-07-04', '1621873441', 'Vivo ZX Pro', 1, 15000, 15000, 'Md Anwar Hossain', '2', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(9, '25586270', '2021-07-04', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', '2', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(10, '71056786', '2021-07-04', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', '3', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(11, '46949747', '2021-07-04', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', '4', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(12, '44514200', '2021-07-04', '1621873579', 'Samsung LED Montor', 3, 8000, 24000, 'Md Anwar Hossain', '4', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(13, '58763392', '2021-07-04', '1621873441', 'Vivo ZX Pro', 1, 15000, 15000, 'Md Anwar Hossain', '5', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(14, '11475461', '2021-07-04', '1621873482', 'Vivo Y11', 1, 12999, 12999, 'Md Anwar Hossain', '5', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(15, '16645684', '2021-07-04', '1621873511', 'Walton TV', 1, 9000, 9000, 'Md Anwar Hossain', '5', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(16, '32903116', '2021-07-04', '1621873536', 'HP Laptop', 2, 45000, 90000, 'Md Anwar Hossain', '6', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(17, '50683618', '2021-07-04', '1621873536', 'HP Laptop', 8, 45000, 360000, 'Md Anwar Hossain', '7', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(18, '79685240', '2021-07-04', '1621873579', 'Samsung LED Montor', 1, 8000, 8000, 'Md Anwar Hossain', '7', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(19, '65978691', '2021-07-04', '1621873607', 'Remax Original', 2, 250, 500, 'Md Anwar Hossain', '7', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(20, '28056344', '2021-07-04', '1621873536', 'HP Laptop', 1, 45000, 45000, 'Md Anwar Hossain', '8', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(21, '89541092', '2021-07-05', '1621873579', 'Samsung LED Montor', 1, 8000, 8000, 'Md Anwar Hossain', '9', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(22, '19649397', '2021-07-05', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', '10', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg'),
(23, '33034538', '2021-07-05', '1621873607', 'Remax Original', 1, 250, 250, 'Md Anwar Hossain', '11', 'http://localhost:8000/storage/0k9UnVgRrzJOZvD1DCDYpQNvTZl6H7DF69w9V9ij.jpg');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `current_stock`
--
ALTER TABLE `current_stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `stock_decrease`
--
ALTER TABLE `stock_decrease`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stock_received`
--
ALTER TABLE `stock_received`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
