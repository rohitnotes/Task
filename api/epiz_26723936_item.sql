-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql200.epizy.com
-- Generation Time: Sep 13, 2020 at 03:16 PM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_26723936_item`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `image`) VALUES
(1, 'Salad', 'http://backend.freecluster.eu/image/cat_image/salad_cat.jpg'),
(2, 'Roti', 'http://backend.freecluster.eu/image/cat_image/roti_cat.jpg'),
(3, 'Ice Cream', 'http://backend.freecluster.eu/image/cat_image/icecream_cat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `rate` varchar(250) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `category_id`, `name`, `rate`, `image`) VALUES
(1, 1, 'Tropical Salmon Salad', '185', 'http://backend.freecluster.eu/image/item_image/tropical_salmon_salad.png'),
(2, 1, 'Fruity Pasta Salad', '160', 'http://backend.freecluster.eu/image/item_image/fruity_pasta_salad.png'),
(3, 1, 'Garlicky Tomato Salad', '180', 'http://backend.freecluster.eu/image/item_image/garlicky_tomato_salad.png'),
(4, 1, 'Green Goddess Chicken Salad', '255', 'http://backend.freecluster.eu/image/item_image/green_goddess_chicken_salad.png'),
(5, 1, 'Israeli Salad', '350', 'http://backend.freecluster.eu/image/item_image/israeli_salad.png'),
(6, 1, 'Lobster Salad', '500', 'http://backend.freecluster.eu/image/item_image/lobster_salad.png'),
(7, 1, 'New Potato Salads', '199', 'http://backend.freecluster.eu/image/item_image/new_potato_salads.png'),
(8, 1, 'Orange Zest Summer Salad', '99', 'http://backend.freecluster.eu/image/item_image/orange_zest_summer_salad.png'),
(9, 1, 'Crunchy Nut Coleslaw', '444', 'http://backend.freecluster.eu/image/item_image/crunchy_nut_coleslaw.png'),
(10, 1, 'Classic Greek Salad', '135', 'http://backend.freecluster.eu/image/item_image/classic_greek_salad.png'),
(11, 1, 'Broccoli Salad', '45', 'http://backend.freecluster.eu/image/item_image/broccoli_salad.png'),
(12, 1, 'Asian Chicken Salad', '130', 'http://backend.freecluster.eu/image/item_image/asian_chicken_salad.png'),
(13, 1, 'Apple and Sprout Salad', '145', 'http://backend.freecluster.eu/image/item_image/apple_and_sprout_salad.png'),
(14, 2, 'Tandoori Roti', '10', 'http://backend.freecluster.eu/image/item_image/tandoori_roti.jpg'),
(15, 2, 'Rumali Roti', '16', 'http://backend.freecluster.eu/image/item_image/rumali_roti.jpg'),
(16, 2, 'Missi Roti', '12', 'http://backend.freecluster.eu/image/item_image/missi_roti.jpg'),
(17, 2, 'Makki Di Roti', '15', 'http://backend.freecluster.eu/image/item_image/makki_di_roti.jpg'),
(18, 2, 'Jolada Roti', '18', 'http://backend.freecluster.eu/image/item_image/jolada_roti.jpg'),
(19, 2, 'Chapati Roti', '20', 'http://backend.freecluster.eu/image/item_image/chapati_roti.jpg'),
(20, 2, 'Akki Roti', '22', 'http://backend.freecluster.eu/image/item_image/akki_roti.jpg'),
(22, 3, 'Vanilla Ice Cream', '80', 'http://backend.freecluster.eu/image/item_image/vanilla_ice_cream.jpg'),
(23, 3, 'Strawberry Ice Cream', '40', 'http://backend.freecluster.eu/image/item_image/strawberry_ice_cream.jpg'),
(24, 3, 'Red Velvet Ice Cream', '30', 'http://backend.freecluster.eu/image/item_image/red_velvet_ice_cream.jpg'),
(25, 3, 'Mango Ice Cream', '60', 'http://backend.freecluster.eu/image/item_image/mango_ice_cream.jpg'),
(26, 3, 'Cookies And Cream Ice Cream', '88', 'http://backend.freecluster.eu/image/item_image/cookies_and_cream_ice_cream.jpg'),
(27, 0, '', '', 'http://backend.freecluster.eu/image/item_image/coffee_ice_cream.jpg'),
(28, 0, '', '', 'http://backend.freecluster.eu/image/item_image/bubble_gum_ice_cream.jpg'),
(29, 0, '', '', 'http://backend.freecluster.eu/image/item_image/black_cherry_ice_cream.jpg'),
(30, 0, '', '', 'http://backend.freecluster.eu/image/item_image/birthday_cake_ice_cream.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
