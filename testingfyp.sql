-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 09:43 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testingfyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `phone` text NOT NULL,
  `location` text NOT NULL,
  `Image` text NOT NULL,
  `longitude` decimal(10,8) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `description`, `phone`, `location`, `Image`, `longitude`, `latitude`) VALUES
(1, 'Karachi', 'abc', '03444444444', '', 'karachi.jpg', '67.00561500', '24.94621800'),
(2, 'Islamabad', 'sdadca', 'asda', 'dad', 'islamabad.jpg', '73.04790000', '33.68440000'),
(3, 'Lahore', 'sdadca', 'asda', 'dad', 'lahore.jpg', '99.99999999', '31.52040000');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `Id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL,
  `city_id` int(11) NOT NULL,
  `contactnum` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cost` int(11) NOT NULL,
  `timings` varchar(10) NOT NULL,
  `area` text NOT NULL,
  `longitude` decimal(10,8) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `visit_count` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`Id`, `name`, `location`, `city_id`, `contactnum`, `user_id`, `Image`, `description`, `cost`, `timings`, `area`, `longitude`, `latitude`, `visit_count`) VALUES
(46, 'Avari Tower', '', 1, 0, 0, '2.jpg', 'Sleek rooms offer floor-to-ceiling windows and marble bathrooms, plus free Wi-Fi, flat-screen TVs, and tea and coffeemaking facilities. Upgraded suites add sofas and 24/7 butler service', 100, '', '', NULL, NULL, 2),
(47, 'Pearl Continental', '', 1, 0, 0, '3.jpg', 'Refined rooms come with free Wi-Fi and flat-screen TVs, as well as minibars and safes. Upgraded rooms include 24-hour butler service, while suites add separate lounges, guest bathrooms and complimentary breakfast. Room service is available 24/7. Kids age 11 and under stay free with their parents.', 1000, '', '', NULL, NULL, 6),
(48, 'Marriot', '', 1, 0, 0, '4.jpg', 'Casual rooms have marble bathrooms, free Wi-Fi, flat-screen TVs and minifridges. Suites add balconies, living rooms and/or dining areas. Club rooms provide access to a lounge that includes snacks and beverages. There’s 24/7 room service.', 100, '', '', NULL, NULL, 27),
(49, 'Heritage Luxury Suit', '', 3, 111222333, 0, '9.jpg', 'Guests can enjoy a complimentary breakfast each morning. Wireless Internet access is complimentary. A roundtrip airport shuttle is complimentary to guests (available 24 hours). This business-friendly hotel also offers a 24-hour fitness center, a terrace, and laundry facilities. ', 200, '', '', NULL, NULL, 1),
(50, 'Intellectual Inn', '', 2, 0, 0, '102.jpg', 'Plot No33? Bahria Expy, Bahria Town, Rawalpindi, Islamabad Capital Territory 78601', 2000, '', '', NULL, NULL, 3),
(51, 'grand Islamabad Hotel', '', 2, 51, 0, '15.png', '                                                Street#1? MPCHS E 11/1 E-11, Islamabad, Islamabad Capital Territory testing                                                            ', 1000, '', '', NULL, NULL, 11),
(53, 'Sareena Hotels', '', 2, 0, 0, '124.jpg', 'The elegant rooms and suites include free Wi-Fi and flat-screen TVs. Suites add separate sitting areas; some feature balconies. Room service is on available 24/7.', 0, '', '', NULL, NULL, 19),
(54, 'Burger corner', 'karachi', 0, 0, 0, '', '', 0, '', '', NULL, NULL, 10),
(55, 'green', 'karachi', 0, 990, 0, '', '', 0, '', '', NULL, NULL, 1),
(56, 'aaa', 'aaaaaa', 0, 900, 0, '', '', 0, '', '', NULL, NULL, 1),
(57, 'pizza', 'islamabad', 0, 0, 0, '', '', 0, '', '', NULL, NULL, 1),
(58, 'adsf', '', 1, 143123413, 0, 'k_(1)3.png', 'dasfsdf', 1234111, '', '', NULL, NULL, 1),
(59, 'test', '', 1, 123445, 2, 'bachaaparty5.jpg', '', 0, '', '', NULL, NULL, 1),
(60, 'fsdfdsf', '', 1, 123445, 24, 'bachaaparty6.jpg', 'rwerewrwerewrwer', 123, '', '', NULL, NULL, 1),
(61, 'fsdfdsf', '', 1, 123445, 24, 'bachaaparty7.jpg', 'rwerewrwerewrwer', 123, '', '', NULL, NULL, 1),
(62, '', '', 0, 4324, 0, '', '', 0, '', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `Id` int(11) NOT NULL,
  `Review` text NOT NULL,
  `Pos_Neg` int(11) NOT NULL,
  `City` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`Id`, `Review`, `Pos_Neg`, `City`) VALUES
(4, 'As my friend is White and we are both females we are unsure as to how safe it is to travel around the places you have visited as two unaccompanied British women. Do you have any thoughts about our safety and in addition we are worried about permits etc that may be needed to enter into some of the areas.', -1, '2'),
(5, 'It was a very good time in karachi with our driver  tour guide Mr. Maqool. Pakistan Tourism Services, served us five star services every where in karachi and around it. We highly recommend their services all over Pakistan.', 2, '1'),
(14, 'As my friend is White and we are both females we are unsure as to how safe it is to travel around the places you have visited as two unaccompanied British women. Do you have any thoughts about our safety and in addition we are worried about permits etc that may be needed to enter into some of the areas.', -1, '2'),
(21, 'location is good, staff is really friendly. it is really clean as well.', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `review_allhotel`
--

CREATE TABLE `review_allhotel` (
  `id` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `cityName` text NOT NULL,
  `customerId` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `customerType` text NOT NULL,
  `comment` text NOT NULL,
  `Pos_Negative` int(100) NOT NULL,
  `rating` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `RecommendationValue` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_allhotel`
--

INSERT INTO `review_allhotel` (`id`, `cityId`, `cityName`, `customerId`, `name`, `email`, `customerType`, `comment`, `Pos_Negative`, `rating`, `created_at`, `modified_at`, `RecommendationValue`) VALUES
(1, 1, 'Karachi', 23, 'bilal', 'ali@yahoo.com', 'customer', 'aaaaa vbbbbbbbbb', 0, 4, '2019-09-21 15:31:08', '2019-09-21 15:31:08', 4),
(2, 2, 'Islamabad', 4, 'saad', 'saadi.siddiqui@hotmail.com', 'customer', 'Its a memorable visit ', 1, 3, '2019-09-21 16:09:03', '2019-09-21 16:09:03', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cnic` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customerType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `name`, `email`, `cnic`, `password`, `customerType`) VALUES
(3, 'omer', 'osama@yahoo.com', '41212121212', '12', 'admin'),
(22, 'osama', 'osama@fyp.com', '42101-4556677-9', '12345', 'vendor'),
(23, 'bilal', 'ali@yahoo.com', '41234-1234123-4', '111', 'customer'),
(26, 'Anas', 'anas@gmail.com', '12312-3123213-1', '202cb962ac59075b964b07152d234b70', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `venue_id` int(10) NOT NULL,
  `user_id` int(20) NOT NULL,
  `venue_type` varchar(240) DEFAULT NULL,
  `venue_name` varchar(240) DEFAULT NULL,
  `city_id` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `capacity` int(20) DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `long_desc` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`venue_id`, `user_id`, `venue_type`, `venue_name`, `city_id`, `price`, `contact`, `capacity`, `short_desc`, `long_desc`, `image`, `created_at`, `is_active`) VALUES
(1, 1, 'Banquet', 'Darbar', 1, 85000, '03121234567', 500, 'This is dummy description', 'This is dummy description', 'Country_Inn.jpg', '2021-11-14 18:50:22', 1),
(2, 22, 'Ball Room', 'Al mirha', 2, 20000, '1233214455', 150, '          wtertwert                                                                                  ', '                                       twretrewtw                                                     ', 'download_(1)1.jpg', '2021-11-14 21:17:44', NULL),
(14, 22, 'lawn', 'Sadabahar', 3, 65000, '32323232112', 750, 'test content', 'test content', 'abby-savage-zNsSwsuyP3A-unsplash.jpg', '2021-11-15 20:43:26', NULL),
(15, 22, 'Marque', 'Royal', 1, 125000, '03212356897', 600, '                                                Testing content                                             ', '                                                testing content                                            ', 'luxury-elegant-wedding-reception-table-260nw-3768906193.jpg', '2021-11-17 20:25:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `review_allhotel`
--
ALTER TABLE `review_allhotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `review_allhotel`
--
ALTER TABLE `review_allhotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `venue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
