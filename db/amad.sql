-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 08:12 PM
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
-- Database: `amad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `image`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Fred', 'fredvuni809@gmail.com', '$2y$10$mRAh35dNWC87hGAhRhTd1embX3NMLzQqCxueQcJ.ggfsdSck9Li46', '541ba0d74f8aee9041df501ea48682fa.jpg', 1, 1, '2020-03-23 19:58:02'),
(2, 'Fred', 'fredvuni809@yahoo.com', '$2y$10$9dlVwh7qXaBoNa9v0AE6JOH8CV8SHIaev2AnWshG33WTaOK2TADeS', 'default-image.jpg', 1, 0, '2020-03-27 21:19:29'),
(3, 'Hassan', 'info@askmeaboutdubai.com', '$2y$10$1LztQaolfKNe9aUjnju7A.o9zy/gQokbljQlV165DMV7nKF3hRefO', 'default-image.jpg', 1, 0, '2020-05-06 18:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `amenity_id` int(11) NOT NULL,
  `amenity` varchar(150) NOT NULL,
  `image` varchar(120) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`amenity_id`, `amenity`, `image`, `slug`, `date_created`) VALUES
(1, 'Shopping Malls', 'dd7cbcffd1d02ae5f610722925ca44d1.jpg', 'shopping-malls', '2020-04-15 20:02:01'),
(2, 'Dubai Beaches', '3c29a9562bdf3926d2242a033e96c47b.jpg', 'dubai-beaches', '2020-05-01 02:13:00'),
(3, 'Hotels', '47071270d93c5d94cce84df77c5010f9.jpeg', 'hotels', '2020-05-01 02:13:26'),
(4, 'Cinemas', '6c899ef46ac3ef66b7a31765bde66fb3.jpg', 'cinemas', '2020-05-01 02:14:01'),
(5, 'Theme Parks', '570624a2597e1b3970fc3484101921b3.jpg', 'theme-parks', '2020-05-01 02:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `amenity_details`
--

CREATE TABLE `amenity_details` (
  `id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(120) NOT NULL,
  `open_day` varchar(50) NOT NULL,
  `close_day` varchar(50) NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `close_time` varchar(50) NOT NULL,
  `saturday_open` varchar(50) NOT NULL,
  `saturday_close` varchar(50) NOT NULL,
  `sunday_open` varchar(50) NOT NULL,
  `sunday_close` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `slug` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand`, `url`, `slug`, `image`, `date_created`) VALUES
(1, 'Burjman Mall', 'www.Burjman.com', 'burjman-mall', 'ef570f8c78b680f056ffffd9564c8b1a.jpg', '2020-04-13 23:08:49'),
(2, 'City Centre', 'www.city.com', 'city-centre', '6ecc15afd9651e7e7c794e87a7f33c70.png', '2020-05-05 21:40:49'),
(3, 'Dubai Festival City', 'www.dubai.com', 'dubai-festival-city', 'a44ea60b8c4a51057a3aafc560779925.png', '2020-05-05 21:42:22'),
(4, 'Dubai Mall', 'www.mall.com', 'dubai-mall', 'a2aaf1170eefbdc93b133c759af4db2e.png', '2020-05-05 21:42:56'),
(5, 'Ibn Battuta Mall', 'www.ibn.com', 'ibn-battuta-mall', '3abf0c8f634ce284b40c6a57aac97db1.png', '2020-05-05 21:43:52'),
(6, 'Mall of the Emirates', 'www.emirates.com', 'mall-of-the-emirates', 'abd5f4e11142e41d30c8222b869e8648.png', '2020-05-05 21:44:21'),
(7, 'Nakheel Mall', 'www.nakheel.com', 'nakheel-mall', 'a1e1b845fa465fca81abb386c9cd5082.png', '2020-05-05 21:44:49'),
(8, 'Outlet Village', 'www.outlet.com', 'outlet-village', 'cbae81e774c03bc339d761546dadc136.png', '2020-05-05 21:45:19'),
(9, 'Wafi Mall', 'www.wafi.com', 'wafi-mall', '9db395892bc6264d0cb81bdd886d4967.png', '2020-05-05 21:45:54'),
(10, 'City Walk', 'www.walk.com', 'city-walk', '1d033fe3fa0cf4b50be1be53b1c5389f.png', '2020-05-05 21:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catid` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `details` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catid`, `category`, `icon`, `image`, `slug`, `details`, `date_created`) VALUES
(1, 'Electronics', 'icon-laptop', 'd34c9182c1545a5fbb580050c2366521.jpg', 'electronics', 'Lorem Ipsum is simply dummy text of the printing and type setting industry. ', '2020-03-28 17:30:50'),
(2, 'Fashion', 'icon-t-shirt', 'd9c3885717567612f88f2d26e9b44b38.jpg', 'fashion', 'Fashion', '2020-04-25 04:24:10'),
(3, 'Furniture', 'icon-bed', '824d5931787d4a56955b1f2141199bc6.jpg', 'furniture', 'Furniture', '2020-05-05 21:28:23'),
(4, 'Family Store', 'icon-shopping-cart', '93bd97b6658e7d1d0e427276f13cf103.jpg', 'family-store', 'Family Store', '2020-05-05 21:29:43'),
(5, 'Food and Drinks', 'icon-food', 'a7b8fd7bcf4a722e8a7505a50e28a1d1.jpg', 'food-and-drinks', 'Food and Drinks', '2020-05-05 21:30:31'),
(6, 'Health and Beauty', 'icon-barbell', '06d1b5365dac9f3e6765f6e26e5d2884.jpg', 'health-and-beauty', 'Health and Beauty', '2020-05-05 21:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event` varchar(180) NOT NULL,
  `location` varchar(180) NOT NULL,
  `timefrom` varchar(80) NOT NULL,
  `timeto` varchar(80) NOT NULL,
  `date` varchar(20) NOT NULL,
  `access` varchar(80) NOT NULL,
  `rsvp-ticket-url` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `image` varchar(120) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event`, `location`, `timefrom`, `timeto`, `date`, `access`, `rsvp-ticket-url`, `url`, `image`, `slug`, `date_created`) VALUES
(1, 'Inventore voluptates velit totam ipsa', 'New York', '8:00Am', '11:00Pm', '8 MAY 2025', 'private', 'www.buyticket.com', 'www.company.com', '88ed2c2be93076501aa3a5096ff26abe.jpg', 'inventore-voluptates-velit-totam-ipsa', '2020-04-25 21:23:21'),
(2, 'Nemo quaerat nam beatae iusto', 'Dubai', '8:00Am', '11:00Pm', '16 Apr 2020', 'public', 'www.buyticket.com', 'www.buyticket.com', 'bf9fc8873c9ffbe25323d470bbfd614b.jpg', 'nemo-quaerat-nam-beatae-iusto', '2020-05-05 21:56:44'),
(3, 'Ducimus ipsam error fugiat harum', 'Dubai', '8:00Am', '11:00Pm', '24 Apr 2020', 'private', 'www.buyticket.com', 'www.buyticket.com', '5c75d1b5904572c1c446306e9d8bbf76.jpg', 'ducimus-ipsam-error-fugiat-harum', '2020-05-05 21:58:53'),
(4, 'Nisi officia adipisci molestiae aliquam', 'Dubai', '8:00Am', '11:00Pm', '13 Apr 2020', 'public', 'www.buytickets.com', 'www.buytickets.com', 'd6dbf7d64f45114fe2905f8a6e9acc6d.jpg', 'nisi-officia-adipisci-molestiae-aliquam', '2020-05-05 22:00:11'),
(5, 'Nisi officia adipisci molestiae aliqua', 'Dubai', '8:00Am', '12:00Am', '20 Jun 2020', 'private', 'www.buytickets.com', 'www.buytickets.com', '278f6776f7ff1ee503aca9149cb46d0e.jpg', 'nisi-officia-adipisci-molestiae-aliqua', '2020-05-05 22:01:26'),
(6, 'Inventore voluptates velit totam ips', 'Dubai', '8:00Am', '11:00Pm', '11 Apr 2020', 'public', 'www.buytickets.com', 'www.buytickets.com', '40f9befb7cb2d1554002f5b839fc5fc6.jpg', 'inventore-voluptates-velit-totam-ips', '2020-05-05 22:03:59'),
(7, 'Another Event', 'Dubai', '4:00Am', '4:00Pm', '20 Aug 2020', 'private', 'www.buytickets.com', 'www.buytickets.com', 'cb94c75b17d59dfa6816d0227fd45fc0.jpg', 'another-event', '2020-05-05 22:04:56'),
(8, 'New party', 'Dubai', '7:00Am', '6:00Pm', '20 Jul 2020', 'private', 'www.buytickets.com', 'www.buytickets.com', '24bed3a1de5a741675478edb3d11a45c.jpg', 'new-party', '2020-05-05 22:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `icon_id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon`, `slug`, `date_created`) VALUES
(1, 'icon-laptop', 'icon-laptop', '2020-04-24 22:36:21'),
(2, 'icon-t-shirt', 'icon-t-shirt', '2020-05-05 21:22:38'),
(3, 'icon-bed', 'icon-bed', '2020-05-05 21:22:51'),
(4, 'icon-shopping-cart', 'icon-shopping-cart', '2020-05-05 21:23:03'),
(5, 'icon-food', 'icon-food', '2020-05-05 21:23:14'),
(6, 'icon-barbell', 'icon-barbell', '2020-05-05 21:23:25'),
(7, 'icon-book-open', 'icon-book-open', '2020-05-05 21:23:44'),
(8, 'icon-hospital-symbol', 'icon-hospital-symbol', '2020-05-05 21:24:16'),
(9, 'icon-plane1', 'icon-plane1', '2020-05-05 21:24:27'),
(10, 'icon-car', 'icon-car', '2020-05-05 21:24:39'),
(11, 'icon-line-stack', 'icon-line-stack', '2020-05-05 21:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `partner_id` int(11) NOT NULL,
  `partner` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`partner_id`, `partner`, `url`, `slug`, `image`, `date_created`) VALUES
(1, 'Sharaf DG', 'www.sharaf.com', 'sharaf-dg', '67a3790ed6694ee716f3228f1b81c0fa.png', '2020-04-13 23:23:12'),
(2, 'Jumeirah', 'www.Jumeirah.com', 'jumeirah', '3d5dab085f660ef6f41dd012806daba6.png', '2020-05-05 21:49:24'),
(3, 'Carrefour', 'www.Carrefour.com', 'carrefour', '9ed6dc4ae91f315f357ee57d759d351f.png', '2020-05-05 21:49:49'),
(4, 'Amazon', 'www.amazon.com', 'amazon', '64d7aa4e21052bb909800d419622fbf6.png', '2020-05-05 21:50:11'),
(5, 'Expo2020', 'www.expo.com', 'expo2020', '429abf1847d7d3e71f32bf2393f32153.png', '2020-05-05 21:50:41'),
(6, 'Etislat', 'www.etislat.com', 'etislat', '953dc2369a91f11ecce62ee747179d3a.png', '2020-05-05 21:51:10'),
(7, 'DDF', 'www.ddf.com', 'ddf', '960a6820ddd806520d8ac090d1143783.png', '2020-05-05 21:51:37'),
(8, 'Emirates', 'www.emirates.com', 'emirates', '29fd12abe279539a7d2207b0a1eee720.png', '2020-05-05 21:52:04'),
(9, 'Al Madina', 'www.almadina.com', 'al-madina', '157603a09c76073e934c1612b2a6340a.png', '2020-05-05 21:52:32'),
(10, 'Lulu', 'www.lulu.com', 'lulu', '622f7a8211179dfed220822987ffdd41.png', '2020-05-05 21:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `salesoffer`
--

CREATE TABLE `salesoffer` (
  `id` int(11) NOT NULL,
  `brand` varchar(150) NOT NULL,
  `headline` varchar(100) NOT NULL,
  `sale_date` varchar(150) NOT NULL,
  `locations` text NOT NULL,
  `contact` varchar(35) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `catalogue_pdf` varchar(150) NOT NULL,
  `catalogue_url` varchar(200) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `sid` int(11) NOT NULL,
  `service` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`sid`, `service`, `icon`, `image`, `slug`, `details`, `date_created`) VALUES
(1, 'Academics', 'icon-book-open', 'e39a7c611cf0101095ad1ef87d44fc10.jpg', 'academics', 'Academics', '2020-04-25 02:10:53'),
(2, 'Fitness', 'icon-barbell', 'b55d75e3b4f10e7349ebe6e50a285aa4.jpg', 'fitness', 'Fitness', '2020-05-05 21:33:58'),
(3, 'Health', 'icon-hospital-symbol', 'cabd286ba95cdf75ac1218873dc71010.jpg', 'health', 'Health', '2020-05-05 21:34:24'),
(4, 'Adventure and Travel', 'icon-plane1', 'f189aa7e827c2b9d26486673ed42ee64.jpg', 'adventure-and-travel', 'Adventure and Travel', '2020-05-05 21:35:12'),
(5, 'Automobile', 'icon-car', '210bb58339f2dd24df40b7d4f35fcaa7.jpg', 'automobile', 'Automobile', '2020-05-05 21:35:38'),
(6, 'Housing Facilities', 'icon-line-stack', '2ea989bb63a325b7071cfad6a1338297.jpg', 'housing-facilities', 'Housing Facilities', '2020-05-05 21:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `subid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `verify` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `verify`, `date_created`) VALUES
(1, 'fredvuni809@gmail.com', 0, '2020-04-25 17:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `token` varchar(150) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'fredvuni809@yahoo.com', 'MzI2Mzc2ODAz', 1585343969),
(2, 'earlvunifred@gmail.com', 'OTY1MTU4MjY=', 1588783367),
(3, 'earlvunifred@gmail.com', 'MjEyNjA4NDkzNQ==', 1588784032),
(4, 'earlvunifred@gmail.com', 'Mzk1MjQyODMw', 1588784764),
(5, 'earlvunifred@gmail.com', 'MzE1MDY5Njc1', 1588785181),
(6, 'earlvunifred@gmail.com', 'MzE2MzI2NDEy', 1588785891),
(7, 'earlvunifred@gmail.com', 'NTA4MTA0ODE4', 1588786167),
(8, 'earlvunifred@gmail.com', 'MjEzMjEyMDY3Ng==', 1588786513),
(9, 'earlvunifred@gmail.com', 'NjUxODQ1Njgy', 1588786856),
(10, 'earlvunifred@gmail.com', 'MTE2ODc3MTI5MA==', 1588787715),
(11, 'earlvunifred@gmail.com', 'MTQ1ODU1MDU2Mg==', 1588788073),
(12, 'earlvunifred@gmail.com', 'MzczNzA0OTg0', 1588788270),
(13, 'info@askmeaboutdubai.com', 'MTM1NjI0ODk1Nw==', 1588788707);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`amenity_id`);

--
-- Indexes for table `amenity_details`
--
ALTER TABLE `amenity_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`partner_id`);

--
-- Indexes for table `salesoffer`
--
ALTER TABLE `salesoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `amenity_details`
--
ALTER TABLE `amenity_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `salesoffer`
--
ALTER TABLE `salesoffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
