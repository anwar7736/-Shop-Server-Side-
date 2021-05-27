-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 11:47 PM
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
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_total_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `invoice_no`, `invoice_date`, `product_name`, `product_qty`, `product_unit_price`, `product_total_price`, `seller_name`, `user_id`, `product_icon`) VALUES
(1, '67233596', '2021-05-26', 'Vivo Y11', '5', '12999', '64995', 'Md Anwar Hossain', '1', 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg'),
(2, '32662086', '2021-05-26', 'Vivo ZX Pro', '3', '15000', '45000', 'Md Anwar Hossain', '1', 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg'),
(3, '13132545', '2021-05-26', 'Remax Original', '5', '250', '1250', 'Md Anwar Hossain', '1', 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg'),
(4, '44168963', '2021-05-26', 'Walton TV 21\"', '3', '9000', '27000', 'Md Anwar Hossain', '1', 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg'),
(9, '69168254', '2021-05-27', 'Samsung LED Montor', '1', '8000', '8000', 'Md Anwar Hossain', '1', 'public/avzu1idq8aXtgNxFuA7OYWoI1BS9mW7VX6nDGehC.jpg'),
(11, '49801196', '2021-05-28', 'HP Laptop', '3', '45000', '135000', 'Md Anwar Hossain', '1', 'public/jpap6eZN07bhiuxE2ILa46oeV5rJBCePtcRffMmQ.jpg');

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
(1, 'Mobile', '1621873359', 'public/W3aEijfnVyuWA4DOFgKEOXCPCx4fkKuRodft4XSX.jpg'),
(2, 'TV', '1621873368', 'public/Klo4Jtggx9dTYidYQI9nPPvsul97sZHYYr5VZpF7.jpg'),
(3, 'Laptop', '1621873376', 'public/83fnY8CErO9FOVtpg3njRvjhpTsJkU1JxtC6qDVU.jpg'),
(4, 'Monitor', '1621873388', 'public/RexfIsb8FeUkjhDnkFfvN94BtsatW04hIaU2Kuey.jpg'),
(5, 'Headphone', '1621873401', 'public/YxRehg12kNHeAn2OjLRJVPUy47lYarLxgyiWnYHH.jpg'),
(6, 'Refrigerator', '1622040197', 'public/iJSSFPK0dR3NSaNwW8BTCFV1OYRDONBO3UXrvRph.jpg'),
(7, 'Desktop PC', '1622040245', 'public/7BDcg5DjuJWPrlLj7RGrumKjvZFkQx6Dy8MGsu7A.jpg'),
(8, 'Printer', '1622040256', 'public/wpsXLGXaB0QIaBLsCxLdJ3fQEy5VDI4ppICBm4ac.jpg'),
(9, 'Harware Accessories', '1622040276', 'public/RFsPVMePaVbiM7LpXDOXbdFTbkrCXcwPD5RTr7pI.jpg');

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
(1, 'Vivo ZX Pro', '1621873441', 'public/uJDdtoUI7VhYztgGhbjzfKQVSQfbDBbqNodISROi.jpg', 'Mobile', 15000, 4, 60000, 'Good things'),
(2, 'Vivo Y11', '1621873482', 'public/2fnU4QJVCeu29OKfF74w8J3xPtmYGrfW2UQWfjJe.jpg', 'Mobile', 12999, 9, 116991, 'Good things'),
(3, 'Walton TV 21', '1621873511', 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg', 'TV', 9000, 3, 27000, 'Good things'),
(4, 'HP Laptop', '1621873536', 'public/jpap6eZN07bhiuxE2ILa46oeV5rJBCePtcRffMmQ.jpg', 'Laptop', 45000, 4, 180000, 'Good things'),
(5, 'Samsung LED Montor', '1621873579', 'public/avzu1idq8aXtgNxFuA7OYWoI1BS9mW7VX6nDGehC.jpg', 'Monitor', 8000, 6, 48000, 'Good things'),
(6, 'Remax Original', '1621873607', 'public/XbdyIO6nKFST9j7joe1Ce7k9aT9P6FkOMVAuzI9p.jpg', 'Headphone', 250, 18, 4500, 'Good things');

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
(13, '2021_04_09_164119_user_list_table', 1),
(14, '2021_04_09_164209_category_list_table', 1),
(15, '2021_04_09_164313_product_list_table', 1),
(16, '2021_04_11_133721_transaction_table', 1),
(17, '2021_04_11_153758_cart_table', 1),
(18, '2021_05_24_154451_create_current_stock_table', 1),
(23, '2021_05_27_175946_create_stock_received_table', 2),
(24, '2021_05_27_180621_create_stock_decrease_table', 2);

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
(1, 'Vivo ZX Pro', '1621873441', 'public/uJDdtoUI7VhYztgGhbjzfKQVSQfbDBbqNodISROi.jpg', '15000', 'Mobile', 'Good things'),
(2, 'Vivo Y11', '1621873482', 'public/2fnU4QJVCeu29OKfF74w8J3xPtmYGrfW2UQWfjJe.jpg', '12999', 'Mobile', 'Good things'),
(3, 'Walton TV 21\"', '1621873511', 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg', '9000', 'TV', 'Good things'),
(4, 'HP Laptop', '1621873536', 'public/jpap6eZN07bhiuxE2ILa46oeV5rJBCePtcRffMmQ.jpg', '45000', 'Laptop', 'Good things'),
(5, 'Samsung LED Montor', '1621873579', 'public/avzu1idq8aXtgNxFuA7OYWoI1BS9mW7VX6nDGehC.jpg', '8000', 'Monitor', 'Good things'),
(6, 'Remax Original', '1621873607', 'public/XbdyIO6nKFST9j7joe1Ce7k9aT9P6FkOMVAuzI9p.jpg', '250', 'Headphone', 'Good things');

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
(1, 'Stock Adjustment', '2021-05-20', 'Walton TV 21', '1621873511', 'TV', 2, 9000, 18000, 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg'),
(2, 'Stock Adjustment', '2021-05-22', 'Vivo ZX Pro', '1621873441', 'Mobile', 2, 15000, 30000, 'public/uJDdtoUI7VhYztgGhbjzfKQVSQfbDBbqNodISROi.jpg'),
(3, 'Stock Adjustment', '2021-05-24', 'Vivo Y11', '1621873482', 'Mobile', 1, 12999, 12999, 'public/2fnU4QJVCeu29OKfF74w8J3xPtmYGrfW2UQWfjJe.jpg'),
(5, 'Stock Adjustment', '2021-05-25', 'HP Laptop', '1621873536', 'Laptop', 1, 45000, 45000, 'public/jpap6eZN07bhiuxE2ILa46oeV5rJBCePtcRffMmQ.jpg'),
(6, 'Stock Adjustment', '2021-05-27', 'Samsung LED Montor', '1621873579', 'Monitor', 2, 8000, 16000, 'public/avzu1idq8aXtgNxFuA7OYWoI1BS9mW7VX6nDGehC.jpg'),
(7, 'Stock Adjustment', '2021-05-28', 'Remax Original', '1621873607', 'Headphone', 2, 250, 500, 'public/XbdyIO6nKFST9j7joe1Ce7k9aT9P6FkOMVAuzI9p.jpg');

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
(13, 'INV12455148', '2021-05-27', 'Vivo ZX Pro', '1621873557', 'Mobile', 7, 15000, 105000, 'public/uJDdtoUI7VhYztgGhbjzfKQVSQfbDBbqNodISROi.jpg'),
(14, 'INV11424545', '2021-05-28', 'Walton TV 21', '1621873547', 'TV', 2, 9000, 18000, 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg'),
(16, 'INV12452224', '2021-05-20', 'Walton TV 21', '1621873574', 'TV', 5, 9000, 45000, 'public/9Z96Srq8riZ7KOjbJj3eLFk2cgkETj4xjuhoCtOb.jpg'),
(17, 'INV25456647', '2021-05-28', 'HP Laptop', '1621873572', 'Laptop', 2, 45000, 90000, 'public/jpap6eZN07bhiuxE2ILa46oeV5rJBCePtcRffMmQ.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_list`
--

CREATE TABLE `transaction_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_total_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastactivity` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`id`, `fullname`, `username`, `roll`, `lastactivity`, `password`) VALUES
(1, 'Md Anwar Hossain', 'anwar', 'Admin', 'No Activity', '$2y$10$qUOVzxl8N.XRkC02I6JwAeEwAcD3FC5xSMtKhuwnhXXTXEpnjGMZa'),
(2, 'Md Shajahan Shek', 'shajahan', 'Sub Admin', 'No Activity', '$2y$10$ZNo0UDtmdlFg189u75XBZekvutJRzC2V37Zz5Lyqa.OMRc1Eu3kz.');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `current_stock`
--
ALTER TABLE `current_stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `stock_decrease`
--
ALTER TABLE `stock_decrease`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stock_received`
--
ALTER TABLE `stock_received`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
