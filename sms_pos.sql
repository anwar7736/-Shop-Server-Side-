-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 06:56 PM
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

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `invoice_no`, `invoice_date`, `product_code`, `product_name`, `qty`, `product_unit_price`, `product_total_price`, `seller_name`, `user_id`, `product_icon`) VALUES
(9, '73798837', '2021-07-09', '12412131', 'Suzuki GSX R150', 1, 500000, 500000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/wOYNFhdI6oKSqRwdZeHaUEQHiTLftefObfqSpKdr.png'),
(10, '82526009', '2021-07-09', '12412117', 'HP 15s-du1068TU Celeron N4020 15.6\" HD Laptop', 1, 33000, 33000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/FVhxFTECj2SxKFqmRbHxCcYbhDX95TA6Wd1nsewj.jpg'),
(11, '68660031', '2021-07-09', '12412110', 'Singer Green Inverter-sb 3', 1, 45000, 45000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/XUAxqsylnOOOpCniis0r96snSNqXzQUDlVPUvRgj.jpg'),
(12, '60334141', '2021-07-09', '12412125', 'Singer Microwave Oven 25 Ltr', 1, 10000, 10000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/9ZfGFkScOIUHzvXg6638Q3DGgVOzvIeD2FSitxse.jpg'),
(13, '87342104', '2021-07-09', '12412137', 'Singer Ref1235', 1, 25000, 25000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/02umlGwW7uHDRnkxQQS3qFm4Js1oB6IcavS1V9NO.jpg'),
(14, '55956063', '2021-07-09', '12412145', 'Samsung-Galaxy-Note20-Ultra', 1, 35000, 35000, 'Md Anwar Hossain', '1', 'http://localhost:8000/storage/tW0HG2K2dgN56HJr7ThUi58sBgKBgHPk8dnwRyRc.jpg');

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
(1, 'Laptop', '1625771523', 'http://localhost:8000/storage/0LdKCYbwY6Dm57JsoiUHL5eL7kylNzw66JFVFyqz.jpg'),
(2, 'Smart Phone', '1625771570', 'http://localhost:8000/storage/hie8pYxOj21pGlsITsWaXgypGPdNm4tVWH0CzOkb.jpg'),
(3, 'Refrigerator', '1625771587', 'http://localhost:8000/storage/Gg35rK8wuN3Rc0OXail4IchO6mC1x8K34PEaChWa.jpg'),
(4, 'Air Conditioner', '1625771605', 'http://localhost:8000/storage/QPiYPP4cOESTZAIY51z4i5tdwYtWYlk0eivxZbDk.jpg'),
(5, 'Microwave Oven', '1625771626', 'http://localhost:8000/storage/7OQGyFVMqkJ8SoVYPuphgiC3Jp0ladMD8KXSKef6.jpg'),
(6, 'Motor Bike', '1625771641', 'http://localhost:8000/storage/UgunBNdVrGxjV1MjCUzK0eAs5cFmMgo8fNzYgQAl.png'),
(7, 'Television', '1625771655', 'http://localhost:8000/storage/LHTmJ7IuQb8ghSeUpOES44khEQjbeSAv4NMUfDCN.png');

-- --------------------------------------------------------

--
-- Table structure for table `current_stock`
--

CREATE TABLE `current_stock` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_qty` bigint(20) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `product_remarks` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_stock`
--

INSERT INTO `current_stock` (`id`, `product_name`, `product_code`, `cat_code`, `product_icon`, `product_category`, `product_price`, `product_qty`, `total_price`, `product_remarks`) VALUES
(1, 'Singer Green Inverter-sb 3', '12412110', '1625771605', 'http://localhost:8000/storage/XUAxqsylnOOOpCniis0r96snSNqXzQUDlVPUvRgj.jpg', 'Air Conditioner', 45000, 4, 180000, 'Singer'),
(2, 'Singer Low_Voltage-sb_2', '12412111', '1625771605', 'http://localhost:8000/storage/2UEHQ8CmEnQNvCX8EUUaGVkbN2x2slgVF62Yyhsb.jpg', 'Air Conditioner', 39000, 7, 273000, 'Singer'),
(3, 'Turbo Cool WSI-RIVERINE-12A', '12412112', '1625771605', 'http://localhost:8000/storage/FkdDVVjfnXOFF3x4j9zno9tshP0vBzRoGk9AKMRd.png', 'Air Conditioner', 41500, 6, 249000, 'Turbo Cool'),
(4, 'Singer Wi-Fi Inverter', '12412113', '1625771605', 'http://localhost:8000/storage/3bhfmnhRqmODi6syI6lRDLBnuhzTrHGU0vVJ2xUi.jpg', 'Air Conditioner', 43000, 0, 0, 'Singer'),
(5, 'Ionizer WSN-DIAMOND-12A', '12412114', '1625771605', 'http://localhost:8000/storage/huvNM1lxEz6U0hmR0HcfFfPG8ahIaXB6SNCoZmBo.png', 'Air Conditioner', 45000, 0, 0, 'Ionizer'),
(6, 'Dell Latitude 15 3510 Core i3 10th Gen 15.6\" HD Laptop', '12412115', '1625771523', 'http://localhost:8000/storage/NAh6hMblBuZSPJ7ZC03cRitojWbH85V6f89zYw3N.jpg', 'Laptop', 49000, 0, 0, 'DELL'),
(7, 'Asus TUF Gaming F15 FX506LH Core i5 GTX 1650 4GB Graphics 15.6\" FHD Gaming Laptop', '12412116', '1625771523', 'http://localhost:8000/storage/LJQxjS41qPBodZqZkCG9tFK87sZeN7eOHzeymDH4.jpg', 'Laptop', 83000, 0, 0, 'Asus'),
(8, 'HP 15s-du1068TU Celeron N4020 15.6\" HD Laptop', '12412117', '1625771523', 'http://localhost:8000/storage/FVhxFTECj2SxKFqmRbHxCcYbhDX95TA6Wd1nsewj.jpg', 'Laptop', 33000, 0, 0, 'HP'),
(9, 'Lenovo IdeaPad Slim 3i 11th Gen Core i5 15.6\" FHD Laptop', '12412118', '1625771523', 'http://localhost:8000/storage/j8Ldk1b3EE5pJbyev0Hd8af2WIVjlXzpIfMBhnHR.jpg', 'Laptop', 65000, 0, 0, 'Lenovo'),
(10, 'Dell Latitude 5410 Core i5 10th Gen 14\" HD Laptop', '12412119', '1625771523', 'http://localhost:8000/storage/nSlVlxHPW8foBXJLQvvcV7jvWQXuTSGKcMyXBsJT.jpg', 'Laptop', 69000, 0, 0, 'Dell'),
(11, 'Walton Passion BX5800 Core i5 8th Gen 14\" HD Laptop', '12412120', '1625771523', 'http://localhost:8000/storage/MK2pEl3tW73GX16zdwwXdrYi6nN7G9NpqJ6yDejL.jpg', 'Laptop', 51000, 0, 0, 'Walton'),
(12, 'HP 15s-du1068TU Celeron N4020 14\" HD Laptop', '12412121', '1625771523', 'http://localhost:8000/storage/btJiSRm5hGaGcKODpr5EbreTYEHvWTZ8Az7RUSos.jpg', 'Laptop', 33000, 0, 0, 'HP'),
(13, 'Asus VivoBook S15 M533UA Ryzen 5 5500U 15.6\" FHD Laptop', '12412122', '1625771523', 'http://localhost:8000/storage/cFTCEA05dQ62cJwev78qexQjw4RCWq0YYZJRahdr.jpg', 'Laptop', 70000, 0, 0, 'Asus'),
(14, 'Lenovo ThinkPad E14 Core i3 10th Gen 14\" FHD Laptop', '12412123', '1625771523', 'http://localhost:8000/storage/0yhI1kqpJwaw9R7AlWINoBkXsrrYQC6caAb2bYws.jpg', 'Laptop', 55000, 0, 0, 'Lenovo'),
(15, 'Walton PASSION BX3700A Core i3 7th Gen 14\" HD Laptop', '12412124', '1625771523', 'http://localhost:8000/storage/Pxn8zJTnGRQ068h7DrIm399aK1JIX7bVf2cFUgx1.webp', 'Laptop', 38000, 0, 0, 'Walton'),
(16, 'Singer Microwave Oven 25 Ltr', '12412125', '1625771626', 'http://localhost:8000/storage/9ZfGFkScOIUHzvXg6638Q3DGgVOzvIeD2FSitxse.jpg', 'Microwave Oven', 10000, 0, 0, 'Singer'),
(17, 'Singer Microwave Oven 30 Ltr', '12412126', '1625771626', 'http://localhost:8000/storage/LxU0ztTmkCpiiFoGU8sALEHz38Cd6D7cFVUPbEyH.jpg', 'Microwave Oven', 16300, 0, 0, 'Singer'),
(18, 'Walton Microwave Over WG23 CGD', '12412127', '1625771626', 'http://localhost:8000/storage/VnD72JG8leNErXnmDFt09NRn9fgPg3bDaB142pXz.png', 'Microwave Oven', 12000, 0, 0, 'Walton'),
(19, 'Walton Microwave Over WMWO-M23AKV', '12412128', '1625771626', 'http://localhost:8000/storage/3sjr1I5qtenHNp1Lb1vgR9UQURuUeul5L0aGe0nD.png', 'Microwave Oven', 11000, 0, 0, 'Walton'),
(20, 'Suzuki Gixxer SF 250, 2021 Price Review Specification', '12412129', '1625771641', 'http://localhost:8000/storage/q6vqZZxJM4N9d88R6Ki3CkmkdLH8Uad3LxypXC0P.png', 'Motor Bike', 200000, 0, 0, 'Suzuki'),
(21, 'Suzuki Gixxer 250 Price Statement Review Availability', '12412130', '1625771641', 'http://localhost:8000/storage/FXwuOgkbM9b701IjELkGmnlpnJqDZy6zjfpukrAh.png', 'Motor Bike', 210000, 0, 0, 'Suzuki'),
(22, 'Suzuki GSX R150', '12412131', '1625771641', 'http://localhost:8000/storage/wOYNFhdI6oKSqRwdZeHaUEQHiTLftefObfqSpKdr.png', 'Motor Bike', 500000, 0, 0, 'Suzuki'),
(23, 'Yamaha R3', '12412132', '1625771641', 'http://localhost:8000/storage/rmYBd5ECKwkpprTokuHBZZKgkdpTNvjj5eQJ7ovy.png', 'Motor Bike', 220000, 0, 0, 'Yamaha'),
(24, 'Yamaha R15 v3', '12412133', '1625771641', 'http://localhost:8000/storage/jxsAsZke8ljTZjNa20AjNBSEhPuFwGp9W50PJttT.png', 'Motor Bike', 250000, 0, 0, 'Yamaha'),
(25, 'TVS Apache RR 310', '12412134', '1625771641', 'http://localhost:8000/storage/bcb8HL0jR6Bw6HO1aT73382H3JhEEGwamQkxF8S5.png', 'Motor Bike', 260000, 0, 0, 'TVS'),
(26, 'Bajaj Pulsar RS', '12412135', '1625771641', 'http://localhost:8000/storage/9TEdusDg2kcgJQSheIIamxXND7iDlZw7sngtyRfx.png', 'Motor Bike', 280000, 0, 0, 'Bajaj'),
(27, 'Honda CBR300R', '12412136', '1625771641', 'http://localhost:8000/storage/Cc3k7uhaiCDe4mvp45fRuVvQJT2SfQ8smUOBlrMa.png', 'Motor Bike', 180000, 0, 0, 'Honda'),
(28, 'Singer Ref1235', '12412137', '1625771587', 'http://localhost:8000/storage/02umlGwW7uHDRnkxQQS3qFm4Js1oB6IcavS1V9NO.jpg', 'Refrigerator', 25000, 0, 0, 'Singer'),
(29, 'Singer Ref121455', '12412138', '1625771587', 'http://localhost:8000/storage/tejZZVidbB1fTVXNcOQed0a35IVUPlOyRlxNrz9t.jpg', 'Refrigerator', 22000, 0, 0, 'Singer'),
(30, 'Singer Ref1235 VIP', '12412139', '1625771587', 'http://localhost:8000/storage/mDoUsMDkApwsXF20zlKu1gzCNQnI1VuQkPsUkD9l.jpg', 'Refrigerator', 28000, 0, 0, 'Singer'),
(31, 'Walton NANO WFB-2A8-GDXX-XX', '12412140', '1625771587', 'http://localhost:8000/storage/MX5KspDLjkU8MDoMlMdvRT9wQkRDzze6bgwRrwUP.png', 'Refrigerator', 21000, 0, 0, 'Walton'),
(32, 'Walton WFC 2A8-GDXX-XX', '12412141', '1625771587', 'http://localhost:8000/storage/mruSOWQPaN4Bxok37dNTFY95OwguKa7155VVqCFG.png', 'Refrigerator', 21500, 0, 0, 'Walton'),
(33, 'Oppo-A92-new-black', '12412142', '1625771570', 'http://localhost:8000/storage/X12GIhwCLo6QYkukkbrys2fPGVsFCs0rLr0kSe4A.jpg', 'Smart Phone', 17000, 0, 0, 'Oppo'),
(34, 'Oppo-F17-Pro-blue', '12412143', '1625771570', 'http://localhost:8000/storage/3TiNyWS1fITwmfOkff2JCfO73aGR1VgKSiQvtdsH.jpg', 'Smart Phone', 18000, 0, 0, 'Oppo'),
(35, 'Samsung-Galaxy-Note-20', '12412144', '1625771570', 'http://localhost:8000/storage/3ryAgbvpvITAXTMnDSOEZP1ZvKacJGQU7oiujsQX.jpg', 'Smart Phone', 33000, 0, 0, 'Samsung'),
(36, 'Samsung-Galaxy-Note20-Ultra', '12412145', '1625771570', 'http://localhost:8000/storage/tW0HG2K2dgN56HJr7ThUi58sBgKBgHPk8dnwRyRc.jpg', 'Smart Phone', 35000, 0, 0, 'Samsung'),
(37, 'Vivo-V21e', '12412146', '1625771570', 'http://localhost:8000/storage/arJNZ0g2NS78EuRBo3gi6W1fjjMzHyEznHLJVvKr.jpg', 'Smart Phone', 18000, 0, 0, 'Vivo'),
(38, 'Vivo-Y50', '12412147', '1625771570', 'http://localhost:8000/storage/bEoIYNWXSe38xFeldJX9ZdxJ0gSAoEJtwPQJdmrr.jpg', 'Smart Phone', 22000, 0, 0, 'Vivo'),
(39, 'Xiaomi-Mi-11X-image', '12412148', '1625771570', 'http://localhost:8000/storage/uVCOxZ8MsqKCsw6bW3GZ0xEXcaGTWK2JkU1hXbWd.jpg', 'Smart Phone', 22000, 0, 0, 'Xiaomi'),
(40, 'Xiaomi-Redmi-Note-10S', '12412149', '1625771570', 'http://localhost:8000/storage/afWoPiti2o6YX5ICJGw6s7Sbs2FkclDKq5Bp3sjk.jpg', 'Smart Phone', 25000, 0, 0, 'Xiaomi'),
(41, 'My One 19-inch LED TV', '12412150', '1625771655', 'http://localhost:8000/storage/Fwp8ToF2Iagt64IIqNsBrzWTo2m5zOzPqWKgfmYh.jpg', 'Television', 18500, 0, 0, 'My One'),
(42, 'My One 22-inch', '12412151', '1625771655', 'http://localhost:8000/storage/qEuGRGHbJXtojPzdczNSRiCXyR3ohBGa9ZU7I8Sk.jpg', 'Television', 21000, 0, 0, 'My One'),
(43, 'My One 24-inch', '12412152', '1625771655', 'http://localhost:8000/storage/FbzmXk6zZxDtVMNeYicmIz3R7LlGkhsfTUEwxrpf.jpg', 'Television', 22300, 0, 0, 'My One'),
(44, 'Sony Bravia-55a8h-01-500x500', '12412153', '1625771655', 'http://localhost:8000/storage/KpsngqaYi5kafyfyZddkTawesXvzqEVcuAENZtoz.jpg', 'Television', 25000, 0, 0, 'Sony'),
(45, 'Walton - W32F110 (813mm)', '12412154', '1625771655', 'http://localhost:8000/storage/GQyenMdKmIF0hPPSCai2cttFFzABFqU0qRnOeuEn.png', 'Television', 15000, 0, 0, 'Walton'),
(46, 'Walton - WD1-TS43-FV100 (1 09m)', '12412155', '1625771655', 'http://localhost:8000/storage/68FndqcPOAjFT4PD9PbmQ6ciODXMHdCXAgyNTy6G.png', 'Television', 17500, 0, 0, 'Walton'),
(47, 'Walton - W32Q20 (813mm)', '12412156', '1625771655', 'http://localhost:8000/storage/9f11W3cICwEoIn4yzOufDPU6RAL4opb7KIfhErq7.png', 'Television', 15000, 0, 0, 'Walton'),
(48, 'Sony-w660g-500x500', '12412157', '1625771655', 'http://localhost:8000/storage/7F0KUI5nVYFPVmixMWDJQa1EBpdZ8qAo5gs8NmUB.jpg', 'Television', 23500, 0, 0, 'Sony'),
(49, 'Crystal UHD TV', '12412158', '1625771655', 'http://localhost:8000/storage/DYNbZJpX8HGlPDV1K1RjjChADXkXGFO7fIsBjZBm.jpg', 'Television', 24500, 0, 0, 'Crystal'),
(50, 'Sony w800f-500x500', '12412159', '1625771655', 'http://localhost:8000/storage/d1V22aI63Op1vR7k62xAxYMov9ZN07MWAK5HdvGW.jpg', 'Television', 23500, 0, 0, 'Sony');

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
(51, '2021_04_09_164119_user_list_table', 1),
(52, '2021_04_09_164209_category_list_table', 1),
(53, '2021_04_09_164313_product_list_table', 1),
(54, '2021_04_11_133721_transaction_table', 1),
(55, '2021_04_11_153758_cart_table', 1),
(56, '2021_05_24_154451_create_current_stock_table', 1),
(57, '2021_05_27_175946_create_stock_received_table', 1),
(58, '2021_05_27_180621_create_stock_decrease_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_remarks` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `product_name`, `product_code`, `cat_code`, `product_icon`, `product_price`, `product_category`, `product_remarks`) VALUES
(1, 'Singer Green Inverter-sb 3', '12412110', '1625771605', 'http://localhost:8000/storage/XUAxqsylnOOOpCniis0r96snSNqXzQUDlVPUvRgj.jpg', 45000, 'Air Conditioner', 'Singer'),
(2, 'Singer Low_Voltage-sb_2', '12412111', '1625771605', 'http://localhost:8000/storage/2UEHQ8CmEnQNvCX8EUUaGVkbN2x2slgVF62Yyhsb.jpg', 39000, 'Air Conditioner', 'Singer'),
(3, 'Turbo Cool WSI-RIVERINE-12A', '12412112', '1625771605', 'http://localhost:8000/storage/FkdDVVjfnXOFF3x4j9zno9tshP0vBzRoGk9AKMRd.png', 41500, 'Air Conditioner', 'Turbo Cool'),
(4, 'Singer Wi-Fi Inverter', '12412113', '1625771605', 'http://localhost:8000/storage/3bhfmnhRqmODi6syI6lRDLBnuhzTrHGU0vVJ2xUi.jpg', 43000, 'Air Conditioner', 'Singer'),
(5, 'Ionizer WSN-DIAMOND-12A', '12412114', '1625771605', 'http://localhost:8000/storage/huvNM1lxEz6U0hmR0HcfFfPG8ahIaXB6SNCoZmBo.png', 45000, 'Air Conditioner', 'Ionizer'),
(6, 'Dell Latitude 15 3510 Core i3 10th Gen 15.6\" HD Laptop', '12412115', '1625771523', 'http://localhost:8000/storage/NAh6hMblBuZSPJ7ZC03cRitojWbH85V6f89zYw3N.jpg', 49000, 'Laptop', 'DELL'),
(7, 'Asus TUF Gaming F15 FX506LH Core i5 GTX 1650 4GB Graphics 15.6\" FHD Gaming Laptop', '12412116', '1625771523', 'http://localhost:8000/storage/LJQxjS41qPBodZqZkCG9tFK87sZeN7eOHzeymDH4.jpg', 83000, 'Laptop', 'Asus'),
(8, 'HP 15s-du1068TU Celeron N4020 15.6\" HD Laptop', '12412117', '1625771523', 'http://localhost:8000/storage/FVhxFTECj2SxKFqmRbHxCcYbhDX95TA6Wd1nsewj.jpg', 33000, 'Laptop', 'HP'),
(9, 'Lenovo IdeaPad Slim 3i 11th Gen Core i5 15.6\" FHD Laptop', '12412118', '1625771523', 'http://localhost:8000/storage/j8Ldk1b3EE5pJbyev0Hd8af2WIVjlXzpIfMBhnHR.jpg', 65000, 'Laptop', 'Lenovo'),
(10, 'Dell Latitude 5410 Core i5 10th Gen 14\" HD Laptop', '12412119', '1625771523', 'http://localhost:8000/storage/nSlVlxHPW8foBXJLQvvcV7jvWQXuTSGKcMyXBsJT.jpg', 69000, 'Laptop', 'Dell'),
(11, 'Walton Passion BX5800 Core i5 8th Gen 14\" HD Laptop', '12412120', '1625771523', 'http://localhost:8000/storage/MK2pEl3tW73GX16zdwwXdrYi6nN7G9NpqJ6yDejL.jpg', 51000, 'Laptop', 'Walton'),
(12, 'HP 15s-du1068TU Celeron N4020 14\" HD Laptop', '12412121', '1625771523', 'http://localhost:8000/storage/btJiSRm5hGaGcKODpr5EbreTYEHvWTZ8Az7RUSos.jpg', 33000, 'Laptop', 'HP'),
(13, 'Asus VivoBook S15 M533UA Ryzen 5 5500U 15.6\" FHD Laptop', '12412122', '1625771523', 'http://localhost:8000/storage/cFTCEA05dQ62cJwev78qexQjw4RCWq0YYZJRahdr.jpg', 70000, 'Laptop', 'Asus'),
(14, 'Lenovo ThinkPad E14 Core i3 10th Gen 14\" FHD Laptop', '12412123', '1625771523', 'http://localhost:8000/storage/0yhI1kqpJwaw9R7AlWINoBkXsrrYQC6caAb2bYws.jpg', 55000, 'Laptop', 'Lenovo'),
(15, 'Walton PASSION BX3700A Core i3 7th Gen 14\" HD Laptop', '12412124', '1625771523', 'http://localhost:8000/storage/Pxn8zJTnGRQ068h7DrIm399aK1JIX7bVf2cFUgx1.webp', 38000, 'Laptop', 'Walton'),
(16, 'Singer Microwave Oven 25 Ltr', '12412125', '1625771626', 'http://localhost:8000/storage/9ZfGFkScOIUHzvXg6638Q3DGgVOzvIeD2FSitxse.jpg', 10000, 'Microwave Oven', 'Singer'),
(17, 'Singer Microwave Oven 30 Ltr', '12412126', '1625771626', 'http://localhost:8000/storage/LxU0ztTmkCpiiFoGU8sALEHz38Cd6D7cFVUPbEyH.jpg', 16300, 'Microwave Oven', 'Singer'),
(18, 'Walton Microwave Over WG23 CGD', '12412127', '1625771626', 'http://localhost:8000/storage/VnD72JG8leNErXnmDFt09NRn9fgPg3bDaB142pXz.png', 12000, 'Microwave Oven', 'Walton'),
(19, 'Walton Microwave Over WMWO-M23AKV', '12412128', '1625771626', 'http://localhost:8000/storage/3sjr1I5qtenHNp1Lb1vgR9UQURuUeul5L0aGe0nD.png', 11000, 'Microwave Oven', 'Walton'),
(20, 'Suzuki Gixxer SF 250, 2021 Price Review Specification', '12412129', '1625771641', 'http://localhost:8000/storage/q6vqZZxJM4N9d88R6Ki3CkmkdLH8Uad3LxypXC0P.png', 200000, 'Motor Bike', 'Suzuki'),
(21, 'Suzuki Gixxer 250 Price Statement Review Availability', '12412130', '1625771641', 'http://localhost:8000/storage/FXwuOgkbM9b701IjELkGmnlpnJqDZy6zjfpukrAh.png', 210000, 'Motor Bike', 'Suzuki'),
(22, 'Suzuki GSX R150', '12412131', '1625771641', 'http://localhost:8000/storage/wOYNFhdI6oKSqRwdZeHaUEQHiTLftefObfqSpKdr.png', 500000, 'Motor Bike', 'Suzuki'),
(23, 'Yamaha R3', '12412132', '1625771641', 'http://localhost:8000/storage/rmYBd5ECKwkpprTokuHBZZKgkdpTNvjj5eQJ7ovy.png', 220000, 'Motor Bike', 'Yamaha'),
(24, 'Yamaha R15 v3', '12412133', '1625771641', 'http://localhost:8000/storage/jxsAsZke8ljTZjNa20AjNBSEhPuFwGp9W50PJttT.png', 250000, 'Motor Bike', 'Yamaha'),
(25, 'TVS Apache RR 310', '12412134', '1625771641', 'http://localhost:8000/storage/bcb8HL0jR6Bw6HO1aT73382H3JhEEGwamQkxF8S5.png', 260000, 'Motor Bike', 'TVS'),
(26, 'Bajaj Pulsar RS', '12412135', '1625771641', 'http://localhost:8000/storage/9TEdusDg2kcgJQSheIIamxXND7iDlZw7sngtyRfx.png', 280000, 'Motor Bike', 'Bajaj'),
(27, 'Honda CBR300R', '12412136', '1625771641', 'http://localhost:8000/storage/Cc3k7uhaiCDe4mvp45fRuVvQJT2SfQ8smUOBlrMa.png', 180000, 'Motor Bike', 'Honda'),
(28, 'Singer Ref1235', '12412137', '1625771587', 'http://localhost:8000/storage/02umlGwW7uHDRnkxQQS3qFm4Js1oB6IcavS1V9NO.jpg', 25000, 'Refrigerator', 'Singer'),
(29, 'Singer Ref121455', '12412138', '1625771587', 'http://localhost:8000/storage/tejZZVidbB1fTVXNcOQed0a35IVUPlOyRlxNrz9t.jpg', 22000, 'Refrigerator', 'Singer'),
(30, 'Singer Ref1235 VIP', '12412139', '1625771587', 'http://localhost:8000/storage/mDoUsMDkApwsXF20zlKu1gzCNQnI1VuQkPsUkD9l.jpg', 28000, 'Refrigerator', 'Singer'),
(31, 'Walton NANO WFB-2A8-GDXX-XX', '12412140', '1625771587', 'http://localhost:8000/storage/MX5KspDLjkU8MDoMlMdvRT9wQkRDzze6bgwRrwUP.png', 21000, 'Refrigerator', 'Walton'),
(32, 'Walton WFC 2A8-GDXX-XX', '12412141', '1625771587', 'http://localhost:8000/storage/mruSOWQPaN4Bxok37dNTFY95OwguKa7155VVqCFG.png', 21500, 'Refrigerator', 'Walton'),
(33, 'Oppo-A92-new-black', '12412142', '1625771570', 'http://localhost:8000/storage/X12GIhwCLo6QYkukkbrys2fPGVsFCs0rLr0kSe4A.jpg', 17000, 'Smart Phone', 'Oppo'),
(34, 'Oppo-F17-Pro-blue', '12412143', '1625771570', 'http://localhost:8000/storage/3TiNyWS1fITwmfOkff2JCfO73aGR1VgKSiQvtdsH.jpg', 18000, 'Smart Phone', 'Oppo'),
(35, 'Samsung-Galaxy-Note-20', '12412144', '1625771570', 'http://localhost:8000/storage/3ryAgbvpvITAXTMnDSOEZP1ZvKacJGQU7oiujsQX.jpg', 33000, 'Smart Phone', 'Samsung'),
(36, 'Samsung-Galaxy-Note20-Ultra', '12412145', '1625771570', 'http://localhost:8000/storage/tW0HG2K2dgN56HJr7ThUi58sBgKBgHPk8dnwRyRc.jpg', 35000, 'Smart Phone', 'Samsung'),
(37, 'Vivo-V21e', '12412146', '1625771570', 'http://localhost:8000/storage/arJNZ0g2NS78EuRBo3gi6W1fjjMzHyEznHLJVvKr.jpg', 18000, 'Smart Phone', 'Vivo'),
(38, 'Vivo-Y50', '12412147', '1625771570', 'http://localhost:8000/storage/bEoIYNWXSe38xFeldJX9ZdxJ0gSAoEJtwPQJdmrr.jpg', 22000, 'Smart Phone', 'Vivo'),
(39, 'Xiaomi-Mi-11X-image', '12412148', '1625771570', 'http://localhost:8000/storage/uVCOxZ8MsqKCsw6bW3GZ0xEXcaGTWK2JkU1hXbWd.jpg', 22000, 'Smart Phone', 'Xiaomi'),
(40, 'Xiaomi-Redmi-Note-10S', '12412149', '1625771570', 'http://localhost:8000/storage/afWoPiti2o6YX5ICJGw6s7Sbs2FkclDKq5Bp3sjk.jpg', 25000, 'Smart Phone', 'Xiaomi'),
(41, 'My One 19-inch LED TV', '12412150', '1625771655', 'http://localhost:8000/storage/Fwp8ToF2Iagt64IIqNsBrzWTo2m5zOzPqWKgfmYh.jpg', 18500, 'Television', 'My One'),
(42, 'My One 22-inch', '12412151', '1625771655', 'http://localhost:8000/storage/qEuGRGHbJXtojPzdczNSRiCXyR3ohBGa9ZU7I8Sk.jpg', 21000, 'Television', 'My One'),
(43, 'My One 24-inch', '12412152', '1625771655', 'http://localhost:8000/storage/FbzmXk6zZxDtVMNeYicmIz3R7LlGkhsfTUEwxrpf.jpg', 22300, 'Television', 'My One'),
(44, 'Sony Bravia-55a8h-01-500x500', '12412153', '1625771655', 'http://localhost:8000/storage/KpsngqaYi5kafyfyZddkTawesXvzqEVcuAENZtoz.jpg', 25000, 'Television', 'Sony'),
(45, 'Walton - W32F110 (813mm)', '12412154', '1625771655', 'http://localhost:8000/storage/GQyenMdKmIF0hPPSCai2cttFFzABFqU0qRnOeuEn.png', 15000, 'Television', 'Walton'),
(46, 'Walton - WD1-TS43-FV100 (1 09m)', '12412155', '1625771655', 'http://localhost:8000/storage/68FndqcPOAjFT4PD9PbmQ6ciODXMHdCXAgyNTy6G.png', 17500, 'Television', 'Walton'),
(47, 'Walton - W32Q20 (813mm)', '12412156', '1625771655', 'http://localhost:8000/storage/9f11W3cICwEoIn4yzOufDPU6RAL4opb7KIfhErq7.png', 15000, 'Television', 'Walton'),
(48, 'Sony-w660g-500x500', '12412157', '1625771655', 'http://localhost:8000/storage/7F0KUI5nVYFPVmixMWDJQa1EBpdZ8qAo5gs8NmUB.jpg', 23500, 'Television', 'Sony'),
(49, 'Crystal UHD TV', '12412158', '1625771655', 'http://localhost:8000/storage/DYNbZJpX8HGlPDV1K1RjjChADXkXGFO7fIsBjZBm.jpg', 24500, 'Television', 'Crystal'),
(50, 'Sony w800f-500x500', '12412159', '1625771655', 'http://localhost:8000/storage/d1V22aI63Op1vR7k62xAxYMov9ZN07MWAK5HdvGW.jpg', 23500, 'Television', 'Sony');

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
  `cat_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` bigint(20) NOT NULL,
  `product_unit_price` bigint(20) NOT NULL,
  `product_total_price` bigint(20) NOT NULL,
  `product_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_decrease`
--

INSERT INTO `stock_decrease` (`id`, `decrease_reason`, `decrease_date`, `product_name`, `product_code`, `cat_code`, `product_category`, `product_qty`, `product_unit_price`, `product_total_price`, `product_icon`) VALUES
(1, 'Stock Adjustment', '2021-07-09', 'Singer Green Inverter-sb 3', '12412110', '1625771605', 'Air Conditioner', 2, 45000, 90000, 'http://localhost:8000/storage/XUAxqsylnOOOpCniis0r96snSNqXzQUDlVPUvRgj.jpg'),
(2, 'Stock Adjustment', '2021-07-09', 'Turbo Cool WSI-RIVERINE-12A', '12412112', '1625771605', 'Air Conditioner', 1, 41500, 41500, 'http://localhost:8000/storage/FkdDVVjfnXOFF3x4j9zno9tshP0vBzRoGk9AKMRd.png'),
(3, 'Stock Adjustment', '2021-07-09', 'Singer Low_Voltage-sb_2', '12412111', '1625771605', 'Air Conditioner', 1, 39000, 39000, 'http://localhost:8000/storage/2UEHQ8CmEnQNvCX8EUUaGVkbN2x2slgVF62Yyhsb.jpg');

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
  `cat_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` bigint(20) NOT NULL,
  `product_unit_price` bigint(20) NOT NULL,
  `product_total_price` bigint(20) NOT NULL,
  `product_icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_received`
--

INSERT INTO `stock_received` (`id`, `invoice_no`, `received_date`, `product_name`, `product_code`, `cat_code`, `product_category`, `product_qty`, `product_unit_price`, `product_total_price`, `product_icon`) VALUES
(1, 'INV09072021', '2021-07-09', 'Walton LED TV', '12412110', '1625771655', 'Television', 10, 8000, 80000, 'http://localhost:8000/storage/J4zhxK5MvWrjNJtc8ObskmkBffBJdPlGTi04BadS.jpg'),
(2, 'INV09072021', '2021-07-09', 'Sony Smart TV', '12412111', '1625771655', 'Television', 10, 12000, 120000, 'http://localhost:8000/storage/iEtKZYWuhJNkZqg3eOe50Y6nukq4auHYxC4auaT0.jpg'),
(3, 'INV09072021', '2021-07-09', 'HP Pavilion Laptop', '12412112', '1625771523', 'Laptop', 10, 35000, 350000, 'http://localhost:8000/storage/7vsufg4Vwf8BPNtUbns47KdPL0g9odGjzZUBOquY.jpg');

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
(1, '1010', '64063523', '2021-07-09', '12412110', 'Walton LED TV', 2, 8000, 16000, 'Md Anwar Hossain', 'http://localhost:8000/storage/J4zhxK5MvWrjNJtc8ObskmkBffBJdPlGTi04BadS.jpg'),
(2, '1010', '50032008', '2021-07-09', '12412111', 'Sony Smart TV', 1, 12000, 12000, 'Md Anwar Hossain', 'http://localhost:8000/storage/iEtKZYWuhJNkZqg3eOe50Y6nukq4auHYxC4auaT0.jpg'),
(3, '1010', '34958940', '2021-07-09', '12412112', 'HP Pavilion Laptop', 1, 35000, 35000, 'Md Anwar Hossain', 'http://localhost:8000/storage/7vsufg4Vwf8BPNtUbns47KdPL0g9odGjzZUBOquY.jpg'),
(4, '1011', '25739040', '2021-07-09', '12412110', 'Walton LED TV', 1, 8000, 8000, 'Md Anwar Hossain', 'http://localhost:8000/storage/J4zhxK5MvWrjNJtc8ObskmkBffBJdPlGTi04BadS.jpg'),
(5, '1011', '38583787', '2021-07-09', '12412111', 'Sony Smart TV', 1, 12000, 12000, 'Md Anwar Hossain', 'http://localhost:8000/storage/iEtKZYWuhJNkZqg3eOe50Y6nukq4auHYxC4auaT0.jpg'),
(6, '1011', '59046698', '2021-07-09', '12412112', 'HP Pavilion Laptop', 1, 35000, 35000, 'Md Anwar Hossain', 'http://localhost:8000/storage/7vsufg4Vwf8BPNtUbns47KdPL0g9odGjzZUBOquY.jpg'),
(7, '1012', '52817903', '2021-07-09', '12412110', 'Walton LED TV', 1, 8000, 8000, 'Md Anwar Hossain', 'http://localhost:8000/storage/J4zhxK5MvWrjNJtc8ObskmkBffBJdPlGTi04BadS.jpg'),
(8, '1012', '93533463', '2021-07-09', '12412112', 'HP Pavilion Laptop', 1, 35000, 35000, 'Md Anwar Hossain', 'http://localhost:8000/storage/7vsufg4Vwf8BPNtUbns47KdPL0g9odGjzZUBOquY.jpg');

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
(1, 'Md Anwar Hossain', 'anwar7736', 'anwarhossain7736@gmail.com', 'Admin', '$2y$10$Y9dJh8wXnWlnJIoCFsDHaexUHAQKLrePcYHiJhWoZmVrSgIE14Ga6'),
(2, 'Md Sujon Mollah', 'sujon1234', 'sujon1234@gmail.com', 'Worker', '$2y$10$aNtJ6c8pejBigIRZusBUXuPde0S5BsszK9vIDbg9GFD4pWNp/kVQW');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `current_stock`
--
ALTER TABLE `current_stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `stock_decrease`
--
ALTER TABLE `stock_decrease`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stock_received`
--
ALTER TABLE `stock_received`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
