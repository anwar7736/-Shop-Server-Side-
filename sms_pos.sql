-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 04:41 PM
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
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Mobile', '1621436966', 'public/MQuhKFQLkZ0VRNA8PkjWfwZJpTqea5BulrF0oIg1.jpg'),
(4, 'LED TV', '1621437449', 'public/fLc4sJ9bT0UvTQndTUXiOhzjRgNWWFKeLx71G8Zi.jpg'),
(5, 'Laptop', '1621437463', 'public/Y4u26lsagpyWLOFY81qZvFDjPHyPxnxS0ep0Is85.jpg'),
(9, 'Air Conditioner', '1621438659', 'public/6UbpPJQHyWBDABKxhQcMW8cxeHrUCp7LwL8TMByq.jpg'),
(10, 'Mobile', '1621436966', 'public/MQuhKFQLkZ0VRNA8PkjWfwZJpTqea5BulrF0oIg1.jpg'),
(11, 'LED TV', '1621437449', 'public/fLc4sJ9bT0UvTQndTUXiOhzjRgNWWFKeLx71G8Zi.jpg'),
(12, 'Laptop', '1621437463', 'public/Y4u26lsagpyWLOFY81qZvFDjPHyPxnxS0ep0Is85.jpg'),
(13, 'Air Conditioner', '1621438659', 'public/6UbpPJQHyWBDABKxhQcMW8cxeHrUCp7LwL8TMByq.jpg'),
(14, 'Mobile', '1621436966', 'public/MQuhKFQLkZ0VRNA8PkjWfwZJpTqea5BulrF0oIg1.jpg'),
(15, 'LED TV', '1621437449', 'public/fLc4sJ9bT0UvTQndTUXiOhzjRgNWWFKeLx71G8Zi.jpg'),
(16, 'Laptop', '1621437463', 'public/Y4u26lsagpyWLOFY81qZvFDjPHyPxnxS0ep0Is85.jpg');

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
(1, '2021_04_09_164119_user_list_table', 1),
(2, '2021_04_09_164209_category_list_table', 1),
(3, '2021_04_09_164313_product_list_table', 1),
(4, '2021_04_11_133721_transaction_table', 1),
(5, '2021_04_11_153758_cart_table', 1);

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
(1, 'Xiaomi Redmi Note 7 Pro', '1621532589', 'localhost:8000/public/UZN8hQyPyyiAxrg2EJGmZcdjQWJ4EeVq2NQmd97d.jpg', '17500', 'Mobile', 'Best Mobile Phone'),
(2, 'Xiaomi Redmi Note 8 Pro', '1621532631', 'public/AOLT7vaCM1KMXGVCn0TrMz4tguVgvyztse4ZS8sV.jpg', '19500', 'Mobile', 'Best Mobile Phone'),
(3, 'Xiaomi Redmi Note 9 Pro', '1621532854', 'public/8gR4pPBW8VHfFCZxWFjWsmgJoK2CSCYW65YWuHS7.jpg', '21000', 'Mobile', 'Best Mobile Phone'),
(7, 'Walton Laptop', '1621533154', 'public/F2AuDtF7ufETmg7hCRHGbHOHs9ntHoE2A13NxhE9.jpg', '30000', 'Laptop', 'Best Mobile Phone'),
(8, 'HP Laptop', '1621533168', 'public/0UfXS9I7PsGazoaEKriZ7Gv9Cl55Nkpa2VP0faTR.jpg', '30000', 'Laptop', 'Best Mobile Phone'),
(9, 'SONY LED TV', '1621533205', 'public/BhbfDhRlQB6UOwKPsQTJUz6Ie1qmYLfEiJh0OzXg.jpg', '11000', 'TV', 'Best Mobile Phone'),
(10, 'Xiaomi Redmi Note 7 Pro', '1621532589', 'public/UZN8hQyPyyiAxrg2EJGmZcdjQWJ4EeVq2NQmd97d.jpg', '17500', 'Mobile', 'Best Mobile Phone'),
(11, 'Xiaomi Redmi Note 8 Pro', '1621532631', 'public/AOLT7vaCM1KMXGVCn0TrMz4tguVgvyztse4ZS8sV.jpg', '19500', 'Mobile', 'Best Mobile Phone'),
(12, 'Xiaomi Redmi Note 9 Pro', '1621532854', 'public/8gR4pPBW8VHfFCZxWFjWsmgJoK2CSCYW65YWuHS7.jpg', '21000', 'Mobile', 'Best Mobile Phone'),
(13, 'Walton Laptop', '1621533154', 'public/F2AuDtF7ufETmg7hCRHGbHOHs9ntHoE2A13NxhE9.jpg', '30000', 'Laptop', 'Best Mobile Phone'),
(16, 'Xiaomi Redmi Note 7 Pro', '1621532589', 'public/UZN8hQyPyyiAxrg2EJGmZcdjQWJ4EeVq2NQmd97d.jpg', '17500', 'Mobile', 'Best Mobile Phone'),
(17, 'Xiaomi Redmi Note 8 Pro', '1621532631', 'public/AOLT7vaCM1KMXGVCn0TrMz4tguVgvyztse4ZS8sV.jpg', '19500', 'Mobile', 'Best Mobile Phone'),
(18, 'Xiaomi Redmi Note 9 Pro', '1621532854', 'public/8gR4pPBW8VHfFCZxWFjWsmgJoK2CSCYW65YWuHS7.jpg', '21000', 'Mobile', 'Best Mobile Phone'),
(19, 'Walton Laptop', '1621533154', 'public/F2AuDtF7ufETmg7hCRHGbHOHs9ntHoE2A13NxhE9.jpg', '30000', 'Laptop', 'Best Mobile Phone'),
(20, 'HP Laptop', '1621533168', 'public/0UfXS9I7PsGazoaEKriZ7Gv9Cl55Nkpa2VP0faTR.jpg', '30000', 'Laptop', 'Best Mobile Phone'),
(21, 'SONY LED TV', '1621533205', 'public/BhbfDhRlQB6UOwKPsQTJUz6Ie1qmYLfEiJh0OzXg.jpg', '11000', 'TV', 'Best Mobile Phone'),
(22, 'Xiaomi Redmi Note 7 Pro', '1621532589', 'public/UZN8hQyPyyiAxrg2EJGmZcdjQWJ4EeVq2NQmd97d.jpg', '17500', 'Mobile', 'Best Mobile Phone');

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
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_list`
--

INSERT INTO `transaction_list` (`id`, `invoice_no`, `invoice_date`, `product_name`, `product_qty`, `product_unit_price`, `product_total_price`, `seller_name`, `user_name`, `product_icon`) VALUES
(75, '65277720', '2021-05-21', 'Xiaomi Redmi Note 6 Pro', '1', '17000', '17000', 'Hossain', 'Md Anwar Khan', 'public/CRxdVtipStaPHefMu1D41ZGqeiRJREQrz09fw8Wk.jpg'),
(76, '48527598', '2021-05-03', 'Xiaomi Redmi Note 11 Pro', '3', '18000', '54000', 'Hossain', 'Md Anwar Khan', 'public/Enxiv27Z7XV9IN9nVUc1ZbElq2xhJ0TpqRiypWPH.jpg'),
(77, '39052564', '2021-05-02', 'Xiaomi Redmi Note 12 Pro', '2', '18000', '36000', 'Hossain', 'Md Anwar Khan', 'public/WxFud9l86v1t3Slf0QxhNClJGnJGbYCQ126J3IN0.jpg'),
(78, '41651821', '2021-05-01', 'Xiaomi Redmi Note 10 Pro', '2', '18000', '36000', 'Hossain', 'Md Anwar Khan', 'public/YxPJ1IAsXprdUuHaa4JTvH98qvTBbfNmOlsp4xVQ.jpg'),
(79, '84518226', '2021-05-19', 'Xiaomi Redmi Note 11 Pro', '2', '18000', '36000', 'Hossain', 'Md Anwar Khan', 'public/AJAyITxGHkiseFs0P27KDVICWRoLkOsHXuNNHOL2.jpg'),
(80, '62813611', '2021-05-08', 'Xiaomi Redmi Note 8 Pro', '6', '18000', '108000', 'Hossain', 'Md Sujon Mollah', 'public/ZPe5hIUHmP8n4QU90SIXGFta5ySkPS1LuI3J3tTa.jpg'),
(81, '65277710', '2021-05-05', 'Xiaomi Redmi Note 7 Pro', '1', '17000', '17000', 'Hossain', 'Md Sujon Mollah', 'public/CRxdVtipStaPHefMu1D41ZGqeiRJREQrz09fw8Wk.jpg'),
(82, '74600839', '2021-05-11', 'Xiaomi Redmi Note 5 Pro', '3', '18000', '54000', 'Hossain', 'Md Sujon Mollah', 'public/leT23SEA8aqxacboHopbHBQ4zN37L1v49XhgIvVr.jpg'),
(83, '62813618', '2021-05-13', 'Xiaomi Redmi Note 8 Pro', '1', '18000', '18000', 'Hossain', 'Md Sujon Mollah', 'public/ZPe5hIUHmP8n4QU90SIXGFta5ySkPS1LuI3J3tTa.jpg'),
(84, '65277758', '2021-05-11', 'Xiaomi Redmi Note 7 Pro', '1', '17000', '17000', 'Hossain', 'Md Sujon Mollah', 'public/CRxdVtipStaPHefMu1D41ZGqeiRJREQrz09fw8Wk.jpg'),
(85, '65277720', '2021-05-10', 'Xiaomi Redmi Note 6 Pro', '1', '17000', '17000', 'Hossain', 'Md Anwar Khan', 'public/CRxdVtipStaPHefMu1D41ZGqeiRJREQrz09fw8Wk.jpg'),
(86, '48527598', '2021-05-17', 'Xiaomi Redmi Note 11 Pro', '3', '18000', '54000', 'Hossain', 'Md Anwar Khan', 'public/Enxiv27Z7XV9IN9nVUc1ZbElq2xhJ0TpqRiypWPH.jpg'),
(87, '39052564', '2021-05-10', 'Xiaomi Redmi Note 12 Pro', '2', '18000', '36000', 'Hossain', 'Md Anwar Khan', 'public/WxFud9l86v1t3Slf0QxhNClJGnJGbYCQ126J3IN0.jpg'),
(88, '41651821', '2021-05-21', 'Xiaomi Redmi Note 10 Pro', '2', '18000', '36000', 'Hossain', 'Md Anwar Khan', 'public/YxPJ1IAsXprdUuHaa4JTvH98qvTBbfNmOlsp4xVQ.jpg'),
(95, '70735796', '2021-05-22', 'Xiaomi Redmi Note 7 Pro', '1', '17000', '17000', 'Anwar Hossain', 'Md Anwar Hossain', 'public/EZubiRArps9Ck9QK3sSLmkmz13M9SofytnJp6pG4.jpg');

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
(1, 'Md Anwar Hossain', 'anwar', 'Admin', 'No Activity', '$2y$10$zRQtLaQNdSuu19jx/NJbi.6C5OPBZwvtDYusLCV9HJuFh4Pav7Aay'),
(5, 'Md Anwar Hossain', 'hossain', 'Worker', 'No Activity', '$2y$10$LpxxZpOCbJcTuGgLR9uAmOnbt/Xjf4ZIFS3xh6G9ooFS3lQSLueUC'),
(9, 'Md Anwar Hossain', 'hossain', 'Worker', 'No Activity', '$2y$10$IjBXiIJ5v35nYlPoXil1BOvNc8rHU6tUAi5ye5cTliCwEW12KaOCa'),
(10, 'Md Anwar Hossain', 'hossain', 'Worker', 'No Activity', '$2y$10$IjBXiIJ5v35nYlPoXil1BOvNc8rHU6tUAi5ye5cTliCwEW12KaOCa'),
(19, 'Md Abdul Aziz', 'aziz', 'Worker', 'No Activity', '$2y$10$mW/NNhiwUQtfg.gKxLkIDOWTGhi5T6WPdkD2BNaDDBR9z1GKAsDpi'),
(20, 'Md Abdul Aziz', 'aziz1', 'Admin', 'No Activity', '$2y$10$E/EtotGx6bfMJLkg52S8VuhqY5/Xpb5.er1Ga1Ex8G80cVmsjMS6.'),
(21, 'asdf', 'anwar12', 'Worker', 'No Activity', '$2y$10$T6mvS4Mc/FN7YciDl0ELPuo5L4wioTlaDJDGFj0ZTrO5E35fNAHhq'),
(22, 'adsf', 'adsf', 'Admin', 'No Activity', '$2y$10$U3rp342G3cGuKAnp0JTgfeKRqlJoGbyUqxCM05UtXW4RjtqfyIDZq'),
(25, 'asdf', 'asdfsadssda', 'Admin', 'No Activity', '$2y$10$lrsrZ8yz9qghCvZgq8NGLeESbmdomBwRO5z/71ozHC6WR92H84QQe'),
(26, 'asdf', 'asdfasdfsdaf', 'Admin', 'No Activity', '$2y$10$ZYopVPXSI23jA45pIrdc3uDDYJndk4OUdowzwGIH2qt3cLNXoylpG'),
(27, 'asdf', 'asdf', 'Worker', 'No Activity', '$2y$10$AJKs2m09mtxPDHXXcv6Nj.uVoJHs4zRTk9ow6hMvmo2cUPPDRIr96'),
(28, 'asdf', 'asdfasddsa', 'Worker', 'No Activity', '$2y$10$RGdf99yOM/.vguuM.8RtZ.FqmO75ib2vVT8hPOOOpWueAXrcH/eEO'),
(29, 'asdf', 'asdfasdf', 'Admin', 'No Activity', '$2y$10$jXaaVYjhGBZOFL74nZMRku9VqkdBEYTDRdUu3mg/gH0jJzP8uVtna'),
(30, 'asdfa', 'sadsdfssfd', 'Worker', 'No Activity', '$2y$10$Za7La6PJPvg89HD30VH5CeWSX/mqSEw7VhxEOArK8m7xtriBBPVpK'),
(31, 'asdf', 'asdfadsfsadf', 'Worker', 'No Activity', '$2y$10$oHbawH.cArtVb0TnN98ef.5j0uWn4Tls/hrXlVGHy6Gbi99u59uaW'),
(34, 'Md Anwar Hossain', 'anwarffff', 'Admin', 'No Activity', '$2y$10$Vg3S54DgIpTW833yfUq3SO8XlmQOXfCI5ljbsnY.9Tt0aT5.O8EMS'),
(35, 'asdfadfsadfs', 'adsfads', 'Admin', 'No Activity', '$2y$10$cmPmYSRJ1ByYVM.MbtJf/.x6ko1X6O4B.XeqGy7JSrYRoV9pp/2uu'),
(36, 'adsasdf', 'asdffdsfd', 'Worker', 'No Activity', '$2y$10$4sWt25tQY9MuMDlVYzWCU.7Vv1yeTGyFmu/yEIl8IFIKAxgD0QKXu');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
