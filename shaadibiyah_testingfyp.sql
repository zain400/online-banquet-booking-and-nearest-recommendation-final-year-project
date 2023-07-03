-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2022 at 02:16 PM
-- Server version: 10.2.44-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shaadibiyah_testingfyp`
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
-- Table structure for table `banquets`
--

CREATE TABLE `banquets` (
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
-- Dumping data for table `banquets`
--

INSERT INTO `banquets` (`Id`, `name`, `location`, `city_id`, `contactnum`, `user_id`, `Image`, `description`, `cost`, `timings`, `area`, `longitude`, `latitude`, `visit_count`) VALUES
(63, 'NorthVista', 'Nazimabad', 0, 334, 0, '', '', 0, '', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(20) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_address` varchar(150) NOT NULL,
  `customer_contact` varchar(50) NOT NULL,
  `total_guest` int(20) NOT NULL,
  `event_type` varchar(20) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `venue_id` int(10) NOT NULL,
  `booking_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) DEFAULT 1,
  `payment_status` varchar(40) NOT NULL DEFAULT 'not done'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `customer_name`, `customer_email`, `customer_address`, `customer_contact`, `total_guest`, `event_type`, `message`, `venue_id`, `booking_date`, `created_at`, `status`, `payment_status`) VALUES
(1, 'ds', 'dsf@gmail.com', '234', '324', 234, '234', '234', 91, '2022-05-26', '2022-05-21 10:30:44', 1, 'not done'),
(2, 'ds', 'dsf@gmail.com', '324234', '3242-3', 234, '23423', '234', 91, '2022-05-25', '2022-05-21 10:49:02', 1, 'not done'),
(3, 'zainass', 'z@gmail.com', 'asdas', '3122-3412241', 132, 'dsa', 'dkdjas', 88, '2022-05-28', '2022-05-22 10:45:35', 1, 'not done'),
(4, 'nida', 'nida123@gmail.com', 'liaqta', '0314-245835', 500, 'barat', 'all your best ', 93, '2022-04-23', '2022-06-08 09:19:08', 1, 'not done'),
(5, 'ayaz', 'ayaz123@gmail.com', 'nazimabad', '0315-2554545', 300, 'mehendi', 'best your wishes', 92, '2022-02-04', '2022-06-08 09:34:43', 1, 'not done'),
(6, 'nasir', 'nasir45@gmail.com', 'sharifabad', '0313-1112455', 300, 'mehendi', 'best wishes your event ', 92, '2022-05-28', '2022-06-08 10:12:40', 1, 'not done'),
(7, 'yasir', 'yasir234@gmail.com', 'sharifabad', '0313-1556798', 300, 'mehendi', 'best wishes your event ', 92, '2022-04-23', '2022-06-08 10:17:43', 1, 'not done'),
(8, 'wasif', 'wasif@gmail.com', 'waterpump', '0331-1212125', 330, 'mehendi', 'your mehni event is best wishes', 100, '2022-01-15', '2022-06-14 09:37:15', 1, 'not done'),
(9, 'kashif', 'kas123@gmail.com', 'nazimabad', '0314-3535443', 499, 'Barat', 'best you wishes in barat event', 105, '2022-05-28', '2022-06-17 08:05:52', 1, 'not done'),
(10, 'wasim', 'wasim@gmail.com', 'waterpump', '0313-1224556', 200, 'barat', '', 106, '2022-05-02', '2022-06-18 12:40:16', 1, 'not done'),
(11, 'adil', 'adil123@gmail.com', 'sharifabad', '0313-1224556', 22, 'mehndi', 'fd', 105, '2021-12-24', '2022-06-19 18:34:48', 1, 'not done'),
(12, 'jawed', 'jawed123@gmail.com', 'nazimabad', '0313-3434545', 300, 'barat', 'best your wishes', 103, '2022-05-28', '2022-06-19 19:13:04', 1, 'not done'),
(13, 'wajid', 'wajid123@gmail.com', 'karimabad', '0313-1224556', 400, 'barat', 'best your wishes', 101, '2022-05-28', '2022-06-19 19:17:15', 1, 'not done'),
(14, 'nadeem ', 'nadeem123@gmail.com', 'gulberg', '0313-1226757', 350, 'Barat', 'all the best', 42, '2022-07-06', '2022-06-20 20:07:15', 1, 'not done'),
(15, 'talha', 'talha65@gmail.com', 'north nazimabad', '0314-5667564', 200, 'barat', 'all the best in mehndhi', 102, '2022-05-28', '2022-06-20 20:11:23', 1, 'not done'),
(16, 'zain', 'zain123@gmail.com', 'sharifabad', '0313-1222453', 300, 'Barat', 'good', 105, '2022-04-23', '2022-06-20 20:59:44', 1, 'not done'),
(17, 'ayan', 'ayan234@gmail.com', 'karimabad', '0300-0324213', 500, 'Barat', 'all best of your event', 42, '2022-07-12', '2022-06-21 06:07:38', 1, 'not done'),
(18, 'samer', 'samer234@gmail.com', 'nazimabad', '0313-1225667', 500, 'Barat', 'best your wishes in weding', 42, '2022-05-28', '2022-06-21 06:32:14', 1, 'not done'),
(19, 'nouman', 'nouman123@gmail.com', 'liaqtabad', '0307-3445012', 500, 'Barat', 'all the best wishes in your event', 42, '2022-05-02', '2022-06-21 06:35:59', 1, 'not done'),
(20, 'ali', 'ali123@gmial.com', 'sharifabad', '0313-1225097', 500, 'Barat', 'all the best wishes ', 42, '2022-01-15', '2022-06-22 01:58:53', 1, 'not done');

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
(1, 'Karachi', 'abc', '03444444444', '', 'karachi.jpg', '67.00561500', '24.94621800');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(240) NOT NULL,
  `venue_id` varchar(240) NOT NULL,
  `account_type` varchar(240) NOT NULL,
  `transaction_amount` varchar(240) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `trans_id`, `venue_id`, `account_type`, `transaction_amount`) VALUES
(1, '2bf0ca9b-3304-b834-0919-36511ffe69fe', '91', 'Account Number', '600000'),
(2, '2bf0ca9b-3304-b834-0919-36511ffe69fe', '91', 'Account Number', '600000'),
(3, '2bf0ca9b-3304-b834-0919-36511ffe69fe', '91', 'Account Number', '600000'),
(4, '2bf0ca9b-3304-b834-0919-36511ffe69fe', '91', 'Account Number', '600000'),
(5, '2bf0ca9b-3304-b834-0919-36511ffe69fe', '91', 'Account Number', '600000'),
(6, '2bf0ca9b-3304-b834-0919-36511ffe69fe', '91', 'Account Number', '600000'),
(7, '2bf0ca9b-3304-b834-0919-36511ffe69fe', '91', 'Account Number', '600000'),
(8, '2bf0ca9b-3304-b834-0919-36511ffe69fe', '91', 'Account Number', '600000'),
(9, '3c8795e5-7c73-b521-2aa2-8bd2ef556ca0', '88', 'Account Number', '75000'),
(10, 'dd1a42ca-fc74-c17e-f9b3-be907eb8111e', '93', 'Wallet Number', '450000'),
(11, '78535f55-2223-0ea0-26b6-f516f1a0f388', '92', 'Account Number', '380000'),
(12, '78535f55-2223-0ea0-26b6-f516f1a0f388', '92', 'Account Number', '380000'),
(13, '86e1cf71-b042-9765-00e6-da0ff758b7a6', '92', 'Account Number', '380000'),
(14, '375a747f-b522-7658-f9eb-b12483093dcd', '100', 'Wallet Number', '460000'),
(15, 'caf47408-37a6-b07a-6fa6-3bc0cb9ca7aa', '105', 'Wallet Number', '300000'),
(16, 'caf47408-37a6-b07a-6fa6-3bc0cb9ca7aa', '105', 'Wallet Number', '300000'),
(17, '23baee2a-87cc-bfe3-5411-e600a47478ec', '42', 'Wallet Number', '150000'),
(18, '67602389-a4f9-97ad-a954-ac31ec478f10', '102', 'Account Number', '65000'),
(19, 'ec120a3b-4bba-1f4f-9882-75f2558caad3', '105', 'Wallet Number', '300000'),
(20, '4e27f31b-68ba-ce08-7bb6-817a248a39ca', '42', 'Account Number', '150000'),
(21, '6f87424a-5e4b-6ac6-556a-7dccff8607e6', '42', 'Account Number', '150000'),
(22, '48d729b7-4951-be27-75b1-b902f0e60ded', '42', 'Account Number', '150000');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `banquet_id` int(11) NOT NULL,
  `name` varchar(240) NOT NULL,
  `email` varchar(240) NOT NULL,
  `message` varchar(240) NOT NULL,
  `rating` varchar(240) NOT NULL,
  `date` varchar(240) NOT NULL,
  `time` varchar(240) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `banquet_id`, `name`, `email`, `message`, `rating`, `date`, `time`) VALUES
(26, 42, 'waqar', 'waqar@gmail.com', 'excellent services', '5', 'Thursday 09-June-2022', '08:05:58'),
(25, 93, 'atif', 'atif123@gmail.com', 'excelent banquet and looking and services is very good', '5', 'Wednesday 08-June-2022', '09:16:51'),
(24, 92, 'nabeel', 'nabeel123@gmail.com', 'this banquet is very good he is features is best ', '3', 'Monday 06-June-2022', '07:59:41'),
(23, 88, 'aliza', 'aliza@gmail.com', 'average and but design not good', '2', 'Saturday 04-June-2022', '02:41:55'),
(22, 88, 'zain', 'zainkhan@gmail.com', 'good', '1', 'Saturday 04-June-2022', '02:40:42'),
(19, 89, 'fahad', 'f@gmail.com', 'Poor', '1', 'Sunday 22-May-2022', '11:42:36'),
(20, 89, 'osaama', 'aaa@gmailc.om', 'cheap', '2', 'Sunday 22-May-2022', '11:43:15'),
(21, 89, 'ajkasd', 'G@gmail.com', 'Good', '1', 'Sunday 22-May-2022', '11:44:00'),
(18, 88, 'dasasj', 'asd', 'poor cheap', '2', 'Sunday 22-May-2022', '10:41:36'),
(17, 88, 'dasdas', 'sds@gmail.com', 'bad', '1', 'Sunday 22-May-2022', '10:38:16'),
(16, 91, 'osama', 'a@gmail.com', 'good', '1', 'Sunday 22-May-2022', '10:14:08'),
(15, 88, 'dsd', 'sd@gmail.com', 'bad', '1', 'Saturday 21-May-2022', '10:54:21'),
(27, 95, 'hafiz', 'hafiz@gmail.com', 'outstanding looking  and design this marque', '5', 'Saturday 11-June-2022', '08:38:17'),
(28, 95, 'hafiz', 'hafiz@gmail.com', 'outstanding looking  and design this marque', '5', 'Saturday 11-June-2022', '08:38:19'),
(29, 96, 'wali', 'wali@gmail.com', 'outsatanding', '1', 'Sunday 12-June-2022', '07:54:35'),
(30, 99, 'nadia', 'nadia@gmail.com', 'excellent ', '3', 'Tuesday 14-June-2022', '08:26:51'),
(31, 100, 'wasif', 'wasif@gmail.com', 'great ', '2', 'Tuesday 14-June-2022', '09:35:40'),
(32, 104, 'hina', 'hina123@gmail.com', 'this design is very good for 5 star ballroom', '2', 'Wednesday 15-June-2022', '08:25:57'),
(33, 105, 'zain', 'zain345@gmail.com', 'outstanding', '5', 'Friday 17-June-2022', '08:04:34'),
(34, 106, 'sana', 'sana@gmail.com', 'marvelous', '1', 'Friday 17-June-2022', '10:35:03'),
(35, 53, 'GAT', 'aqibnawaz015@gmail.com', 'bad day', '1', 'Monday 20-June-2022', '01:54:25'),
(36, 53, 'sdaa', 'aqibnawaz015@gmail.com', 'worse', '2', 'Monday 20-June-2022', '01:54:40'),
(37, 53, 'sdaa', 'aqibnawaz015@gmail.com', 'sad', '4', 'Monday 20-June-2022', '01:55:07'),
(38, 53, 'ass', 'aqibnawaz015@gmail.com', 'guilty', '1', 'Monday 20-June-2022', '01:55:21'),
(39, 53, 'sdaa', 'aqibnawaz015@gmail.com', 'poor', '1', 'Monday 20-June-2022', '01:55:36'),
(40, 105, 'zain', 'zain123@gmail.com', 'execellent', '1', 'Monday 20-June-2022', '08:58:23'),
(41, 42, 'ayan', 'ayan123@gmail.com', 'good services', '5', 'Tuesday 21-June-2022', '06:10:29'),
(42, 42, 'nimra', 'nimra123@gmail.com', 'bad services ', '5', 'Tuesday 21-June-2022', '06:11:09'),
(43, 42, 'wasif', 'wasif123@gmail.com', 'poor', '1', 'Tuesday 21-June-2022', '06:12:25'),
(44, 42, 'ali', 'ali123@gmail.com', 'ok nothing', '2', 'Tuesday 21-June-2022', '06:15:08'),
(45, 42, 'alikhan', 'alikhan234@gmail.com', 'nice room', '1', 'Tuesday 21-June-2022', '06:15:50'),
(46, 42, 'nadia', 'nadia@gmail.com', 'horrible custumer services', '1', 'Tuesday 21-June-2022', '06:18:17'),
(47, 42, 'burair', 'burair123@gmail.com', 'fantastic', '3', 'Tuesday 21-June-2022', '06:19:30'),
(48, 42, 'wasif', 'wasif234@gmail.com', 'average', '2', 'Tuesday 21-June-2022', '06:24:50'),
(49, 42, 'raza', 'raza@gmail.com', 'greate location ', '1', 'Tuesday 21-June-2022', '06:26:17'),
(50, 42, 'samer', 'samer123@gmail.com', 'ok price on venue', '2', 'Tuesday 21-June-2022', '06:27:42'),
(51, 42, 'nouman', 'nouman123@gmail.com', 'fantastic', '3', 'Tuesday 21-June-2022', '06:38:34'),
(52, 42, 'aman', 'aman123@gmail.com', 'ok nothing', '2', 'Tuesday 21-June-2022', '06:39:18'),
(53, 42, 'nadeem', 'nadeem 123@gmail.com', 'not good', '1', 'Tuesday 21-June-2022', '06:47:22'),
(54, 23, 'ajkdhasd', 'klad@gmail.com', 'nothing', '1', 'Wednesday 22-June-2022', '04:49:53'),
(55, 23, 'djkas', 'a@gmail.com', 'hated', '1', 'Wednesday 22-June-2022', '04:51:57'),
(56, 23, 'das', 'sds@gmail.com', 'ok nothing', '2', 'Wednesday 22-June-2022', '04:54:08'),
(57, 23, 'ffgfg', 'g@gmail.com', 'poor', '1', 'Wednesday 22-June-2022', '04:54:51'),
(58, 101, 'jdas', 'sdjka@gmail.com', 'horrible', '1', 'Wednesday 22-June-2022', '04:56:03'),
(59, 101, 'dasjdasjh', 'dfs@gmail.com', 'average', '2', 'Wednesday 22-June-2022', '04:57:21'),
(60, 101, 'sjkjas', 'dfgdfg@gmail.com', 'worst', '1', 'Wednesday 22-June-2022', '04:58:07'),
(61, 101, 'asdjj', 'dfs@gmail.com', 'ok', '2', 'Wednesday 22-June-2022', '04:58:41'),
(62, 23, 'djkas', 'f@gmail.com', 'cheap', '2', 'Wednesday 22-June-2022', '05:08:02'),
(63, 106, 'fasas', 'ds@gmail.com', 'fanstastic', '3', 'Wednesday 22-June-2022', '05:44:20'),
(64, 106, 'da', 'dsah@gmail.com', 'ok nothing', '2', 'Wednesday 22-June-2022', '05:45:03'),
(65, 106, 'fassf', 'fgsdsdfjk@gmail.com', 'cheap', '2', 'Wednesday 22-June-2022', '05:46:41'),
(66, 69, 'dasdas', 'sda@gmail.com', 'cheap', '2', 'Wednesday 22-June-2022', '12:17:36'),
(67, 69, 'dsa', 'dsa@gmail.com', 'excellent', '3', 'Wednesday 22-June-2022', '12:18:06'),
(68, 69, 'fasfas', 'gsd@gmail.com', 'worst', '1', 'Wednesday 22-June-2022', '12:19:29'),
(69, 106, 'hgh', 'ghg', 'negative', '1', 'Saturday 30-July-2022', '11:02:06'),
(70, 106, 'rt', 're', 'happy', '2', 'Saturday 30-July-2022', '11:02:20'),
(71, 106, 'hgh', 'ghg', 'amazing', '2', 'Saturday 30-July-2022', '11:02:39'),
(72, 106, 'hgh', 're', 'wonder full', '1', 'Saturday 30-July-2022', '11:03:00');

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
(26, 'Anas', 'anas@gmail.com', '12312-3123213-1', '202cb962ac59075b964b07152d234b70', 'customer'),
(27, 'zain', 'zain@fyp.com', '42101-9999982-1', 'zain123', 'vendor'),
(28, '', '', '', '', 'customer'),
(29, 'anas', 'ali@yahoo.com', '15151-5151515-1', '123', 'vendor'),
(30, 'MUHAMMAD ZAIN KHAN', 'osama@fyp.com', '42101-6492660-7', '123456', 'vendor'),
(31, 'nasir', 'nasir@123gmail.com', '42101-6492612-3', 'rida123', 'vendor'),
(32, 'Subhan', 'subhan@123gmail.com', '42101-6492611-8', 'subhan123', 'vendor'),
(33, 'Subhan', 'subhan@123gmail.com', '42101-6492611-8', 'subhan123', 'customer'),
(34, 'abc', 'dbjsdh@gm.com', '42101-8978987-8', '12345', 'customer'),
(35, 'Nayer', 'Nayer@gmail.com', '42000-9987982-1', 'nayer123', 'vendor'),
(36, 'shadab', 'shadab@gmail.com', '42101-6777283-1', 'shadab123', 'vendor'),
(37, 'zahid', 'zahid@gmail.com', '42101-1111829-1', 'zahid123', 'vendor'),
(38, 'Subhan', 'subhan@124gmail.com', '42101-6492600-0', 'subhan123', 'vendor'),
(39, 'Subhan', 'subhan@124gmail.com', '42101-6492600-0', 'subhan123', 'vendor'),
(40, 'adil', 'adil@gmail.com', '42100-0121233-1', 'adil123', 'vendor'),
(41, 'Manzar', 'manzar@gmail.com', '42121-1123141-4', 'manzar123', 'vendor'),
(42, 'nasir', 'nasir@gmail.com', '41210-1123433-4', 'nasir123', 'vendor'),
(43, 'faheem', 'faheem@gmail.com', '42122-1127266-6', 'faheem123', 'vendor'),
(44, 'ali', 'ali123@gmail.com', '42101-6492600-2', 'ali123', 'vendor'),
(45, 'imran', 'imrancasablanca@gmail.com', '42101-3453453-3', 'imran123', 'vendor'),
(46, 'sikandar', 'sikander@gmail.com', '42101-2832982-3', 'sikander123', 'vendor'),
(47, 'asad', 'asad123@gmail.com', '42101-9399022-2', 'asad123', 'customer'),
(48, 'zaighamabbas', 'zaighamabbas@gmail.com', '42101-6492661-9', 'zaigham123', 'vendor'),
(49, 'zaighamabbas', 'zaighamabbas@gmail.com', '42101-6492661-9', 'zaigham123', 'vendor'),
(50, 'zaighamabbas', 'zaighamabbas@gmail.com', '42101-6492661-9', 'zaigham123', 'customer'),
(51, 'jaffar', 'jaffar@gmail.com', '42101-649262-8', 'jaffar123', 'vendor'),
(52, 'Raza', 'raza@gmail.com', '42101-6492666-4', 'raza123', 'customer'),
(53, 'Raza', 'raza@gmail.com', '42101-6492666-4', 'raza123', 'vendor'),
(54, 'Raza', 'raza@gmail.com', '42101-6492666-4', 'raza123', 'vendor'),
(55, 'raza', 'raza@gmail.com', '42101-6492666-4', 'raza123', 'vendor'),
(56, 'raza', 'raza@gmail.com', '42101-6492661-2', 'raza1234', 'vendor'),
(57, 'raza', 'raza@gmail.com', '42101-6492661-2', 'raza1234', 'vendor'),
(58, 'raza', 'raza1234@gmail.com', '42101-6492961-2', 'raza1234', 'vendor'),
(59, 'wasim', 'wasim123@gmail.com', '42101-6492662-2', 'wasim123', 'vendor'),
(60, 'azhar', 'azhar123@gmail.com', '42101-6492668-8', 'azhar123', 'vendor'),
(61, 'yasir', 'yasir123@gmail.com', '42101-649277-7', 'yasir123', 'vendor'),
(62, 'usman', 'usman123@gmail.com', '42101-6492663-3', 'usman123', 'vendor'),
(63, 'talha', 'talha123@gmail.com', '42101-6492664-6', 'talha123', 'vendor'),
(64, 'anas', 'anas123@gmail.com', '42101-6492262-2', 'anas123', 'vendor'),
(65, 'wasif', 'wasif123@gmial.com', '42101-6493333-3', 'wasif123', 'vendor'),
(66, 'wasif', 'wasif123@gmial.com', '42101-6493333-3', 'wasif123', 'vendor'),
(67, 'wasif', 'wasif123@gmail.com', '42101-6493333-3', 'wasif123', 'vendor'),
(68, 'rashid', 'rashid123@gmail.com', '42101-6493707-7', 'rashid123', 'vendor'),
(69, 'iqbal', 'iqbal123@gmail.com', '42101-6492660-9', 'iqbal123', 'vendor'),
(70, 'Mian Usman', 'signature@gmail.com', '42102-1912121-2', 'signature', 'vendor'),
(71, 'ibtisam', 'ibtisam@gmail.com', '42124-2323023-2', 'ibtisam', 'customer'),
(72, 'shafiq', 'shafiq@1234.com', '42101-6492661-2', 'shafiq1234', 'customer'),
(73, 'shafiq', 'shafiq@1234.com', '42101-6492661-2', 'shafiq1234', 'customer'),
(74, 'Nasir', 'Nasir@123gmail.com', '42101-6402666-9', 'Nair123', 'vendor'),
(75, 'Nasir', 'Nasir@123gmail.com', '42101-6492661-2', 'nasir123', 'vendor'),
(76, 'freyan', 'freyan@123.com', '42101-6492661-1', 'freyan123', 'vendor'),
(77, 'waqar', 'waqar123@gmail.com', '42101-6492660-4', 'waqar123', 'vendor'),
(78, 'maqbool', 'maqbool123@gmail.com', '42101-6492660-3', 'maqbool123', 'vendor'),
(79, 'sohail', 'sohail123@gmail.com', '42101-6492661-9', 'sohail123', 'vendor'),
(80, 'sohail', 'sohail123@gmail.com', '42101-6492661-9', 'sohail123', 'vendor'),
(81, 'abbas', 'abbas123@gmail.com', '42101-6498661-8', 'abbas123', 'vendor'),
(82, 'rauf', 'rauf123@gmail.com', '42101-6498333-4', 'rauf123', 'vendor'),
(83, 'rauf', 'rauf', '42101-6492666-4', 'rauf123', 'vendor'),
(84, 'salman', 'salman123@gmail.com', '42101-5552661-5', 'salman123', 'vendor'),
(85, 'sharuk', 'sharuk123@gmail.com', '42101-6444333-4', 'sharuk123', 'vendor'),
(86, 'shahid', 'shahid@123gmail.com', '42101-3332661-3', 'shahid123', 'vendor'),
(87, 'Ramiz', 'ramiz123@gmail.com', '42101-6193333-1', 'ramiz123', 'vendor'),
(88, 'Haris', 'haris123@gmail.com', '42101-6496663-6', 'haris123', 'vendor'),
(89, 'sulieman', 'sulieman123@gmail.com', '42101-2222661-2', 'sulieman123', 'vendor'),
(90, 'atif', 'atif123@gmail.com', '42101-8892666-4', 'atif123', 'vendor'),
(91, 'sajid', 'sajid123@gmail.com', '42101-9492666-8', 'sajid123', 'vendor'),
(92, 'imran', 'imran123@gmail.com', '42101-0092666-4', 'imran123', 'vendor'),
(93, 'hammad', 'hamad123@gmail.com', '42101-5552661-9', 'hamad123', 'vendor'),
(94, 'Muzamil', 'muzamil123@gmail.com', '42101-2222661-9', 'muzamil123', 'vendor'),
(95, 'saif', 'saif123@gmail.com', '42101-3392661-2', 'saif123', 'vendor'),
(96, '', '', '78698-6969786-9', '', 'customer'),
(97, '', '', '78698-6969786-9', '', 'customer'),
(98, '', '', '78698-6969786-9', '', 'customer'),
(99, 'wajahat', 'wajahat123@gmail.com', '42101-0002661-2', 'wajahat123', 'vendor'),
(100, 'arsalan', 'arsalan123@gmail.com', '42101-3332661-3', 'arsalan123', 'vendor'),
(101, 'ayaz', 'ayaz123@gmail.com', '42101-8892661-2', 'ayaz123', 'vendor'),
(102, 'hameed', 'hameed123@gmail.com', '42101-6300033-3', 'hameed123', 'vendor'),
(103, 'shaheen', 'shaheen123@gmail.com', '42101-6492661-9', 'shaheen123', 'vendor'),
(104, 'akbar', 'akbar123@gmail.com', '42101-6492331-7', 'akbar123', 'vendor'),
(105, 'rahim', 'rahim123@gmail.com', '42101-6555561-5', 'rahim123', 'vendor'),
(106, 'qadir', 'qadir123@gmail.com', '42101-6992661-4', 'qadir123', 'vendor'),
(107, 'sarfaraz', 'sarfaraz123@gmail.com', '42101-6343661-8', 'sarfaraz123', 'vendor'),
(108, 'syed', 'syed123@gmail.com', '425-6564379-5', 'syed123', 'vendor'),
(109, 'raheel', 'raheel123@gmail.com', '42101-1222666-3', 'raheel123', 'vendor'),
(110, 'nayer', 'nayer123@gmail.com', '42101-6777333-2', 'nayer123', 'vendor'),
(111, 'Rizwan', 'Rizwan123@gmail.com', '4201-5552661-3', 'Rizwan123', 'vendor'),
(112, 'malik', 'malik123@gmail.com', '42101-6492461-2', 'malik123', 'vendor'),
(113, 'faizan', 'faizan123@gmail.com', '42101-3332991-2', 'faizan123', 'vendor'),
(114, 'wajid', 'wajid123@gmail.com', '42101-1222661-5', 'wajid123', 'vendor'),
(115, 'kashif', 'kashif123@gmail.com', '42101-6433336-4', 'kashif123', 'vendor'),
(116, 'qasim', 'qasim123@gmail.com', '42101-7892661-8', 'qasim123', 'vendor'),
(117, 'nouman', 'nouman123@gmail.com', '42101-6492661-6', 'nouman123', 'vendor'),
(118, 'tanvir', 'tanvir123@gmail.com', '42101-6433361-6', 'tanvir123', 'vendor'),
(119, 'fardeen', 'fardeen123@gmail.com', '42101-4442346-4', 'fardeen123', 'vendor'),
(120, 'salman', 'salman456@gmail.com', '42101-6492661-8', 'salman456', 'vendor'),
(121, 'nadeem', 'nadeem234@gmail.com', '42101-6493633-8', 'nadeem123', 'vendor'),
(122, 'alikhan', 'alikhan234@gmail.com', '42101-9867666-8', 'alikhan234', 'vendor'),
(123, 'yaseen', 'yaseen123@gmail.com', '42101-6434333-3', 'yaseen123', 'vendor'),
(124, 'asif', 'asif654@gmail.com', '42101-6493433-3', 'asif654', 'vendor'),
(125, 'faizan', 'faizan345@gmail.com', '42101-6492666-4', 'faizan345', 'vendor'),
(126, 'aariz', 'aariz123@gmail.com', '42101-6422666-4', 'aariz123', 'vendor'),
(127, 'navaid', 'navaid@gmail.com', '42101-6492233-5', 'navaid123', 'vendor'),
(128, 'rehman', 'rehman123@gmail.com', '42101-6492661-2', 'rehman123', 'vendor'),
(129, 'faisal', 'faisal123@gmail.com', '42101-6493561-9', 'faisal123', 'vendor'),
(130, 'aqeel', 'aqeel123@gmail.com', '42101-6492033-3', 'aqeel123', 'vendor'),
(131, 'khalid', 'khalid123@gmial.com', '42101-6223333-6', 'khalid123', 'vendor'),
(132, 'yousuf', 'yousuf123@gmail.com', '42101-6222666-4', 'yousuf123', 'vendor'),
(133, 'hassan', 'hassan123@gmail.com', '42101-6422233-3', 'hassan123', 'vendor'),
(134, 'rafi', 'rafi987@gmail.com', '42101-6492446-4', 'rafi987', 'vendor'),
(135, 'ayan', 'ayan123@gmail.com', '42101-6442661-6', 'ayan123', 'vendor');

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
  `location` varchar(150) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `capacity` int(20) DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `long_desc` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `map_location` text DEFAULT NULL,
  `features` text DEFAULT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(240) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`venue_id`, `user_id`, `venue_type`, `venue_name`, `city_id`, `location`, `price`, `contact`, `capacity`, `short_desc`, `long_desc`, `image`, `video`, `map_location`, `features`, `latitude`, `longitude`, `created_at`, `is_active`) VALUES
(20, 35, 'Banquet', 'Al-Mehmil', 1, 'North Nazimabad', 120000, ' 021-3664-2167', 500, '                                                                                                The karachi Banquet  \"AL-MEHMIL BANQUET\" has the maximum capacity of 500 people.                                                                                                                                                                                ', '                                                                                                                                                                                                The karachi Wedding Venue / Shadi Hall \"AL-MEHMIL BANQUET\" has the maximum capacity of 500 guest, conveniently located D-1,Block-L,North Nazimabad, Near 5 Star Chorangi,karachi,Pakistan. \"AL-MEHMIL BANQUET\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"AL-MEHMIL BANQUET\" is ideal for all types of summer and winter events.                                                                                                                                                                                ', 'al-mehmil4.jpg', '9AS3KAKy7yc', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6851.201919469417!2d-86.11773906635584!3d33.47324776828677!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x888bdb60cc49c571%3A0x40451ca6baf275c7!2s36008+AL-77%2C+Talladega%2C+AL+35160%2C+USA!5e0!3m2!1sbn!2sbd!4v1460452919256\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.9434337621286', '67.0486', '2021-12-16 16:26:18', 1),
(21, 36, 'Banquet', 'Iris ', 1, 'North Nazimabad', 110000, '(021)36633518', 500, 'Newly built Banquet and Wedding Hall in Karachi', 'Newly built Banquet and Wedding Hall Iris banquet in Karachi. We do Wedding, Birthday Parties, Mehndi Parties, Iftar Parties, School and Business Events.', 'iris.jpg', 'PoPWIvQOEBE', NULL, 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', ' 24.953538657427952', '67.0562', '2021-12-17 16:47:24', 1),
(23, 22, 'Banquet', 'AL MASAAD', 1, 'North Nazimabad', 400000, '(021) 36640255', 1200, '                                                The karachi Wedding Venue / Shadi Hall \" Al-Massad Banquet \" has the maximum capacity of 1200 guest                                            ', '                                                Al-Massad Banquet. Address, Block L North Nazimabad Town, Karachi, Karachi City, Sindh, Pakistan.                                            ', 'almassad_banquet.jpg', 'https://fb.watch/9YGofTmFOy/', '', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.944808536065675', '67.0498', '2021-12-17 20:16:09', 1),
(24, 40, 'Marque', 'Rahila', 1, 'Gulberg', 100000, '0330 6800090', 250, '                                                Rahila Marquee offers a perfect space for all your events                                            ', '                                                Rahila Marquee offers a perfect space for all your events. This shadi hall provides best services for your event and is best for all types of event. this shadi venue is located in gulberg town karachi.                                            ', 'rahila_banquet1.jpg', 'lCKQcg5Ug_Y', NULL, 'Generator Backup,Segregation,Velet Parking,Bridal Room,Fresh Flower', '\r\n24.94210356985145', '67.0713', '2021-12-18 12:12:46', 1),
(25, 41, 'Banquet', 'Inaaya', 1, 'Gulberg', 100000, '(021) 36829033', 300, 'We provide full services for all your events', 'Inaaya Banquet provide full services for all your events, Shaadi, Valima, Mayun, Dholki, Mehndi and many more with quality of service and satisfaction, our experts team will manage your event professionally to insure your event successful.', 'Inaaya-Banquet-003.jpg', 'WLNmN14SwoI', NULL, 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.943248924677185', '67.0705', '2021-12-18 13:13:16', 1),
(26, 42, 'Banquet', 'Rida', 1, 'Gulberg', 800000, '0345 8943319', 300, 'Rida Banquet\" has the maximum capacity of approx 300 guest.', 'The karachi Wedding Venue / Shadi Hall \"Rida Banquet\" has the maximum capacity of 450 guest, conveniently located C-49/13, Gulberg, F.B Area. \"Rida Banquet\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Rida Banquet\" is ideal for all types of summer and winter events.', 'ridabqnuet.jpg', 'd41d8cd9', NULL, 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.865968463976024', '67.07946865662785', '2021-12-18 13:47:34', 1),
(27, 22, 'lawn', 'Test', 1, 'test', 5000, '0303-0303030', 50, '                                                                                                dasdas                                                                                        ', '                                                dasdasd                                            ', 'download_(2)3.jpg', 'YBxzwS3dyvg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.25002731807!2d67.0503857!3d24.9469696!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe503df5734802d4a!2sNorth%20Marriage%20Garden!5e0!3m2!1sen!2s!4v1639836001734!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Generator Backup', '', '0', '2021-12-18 14:02:03', 1),
(28, 43, 'Banquet', 'Casamento', 1, 'North Nazimabad', 110000, '03310344281', 500, 'CASAMENTO is a wedding and exhibition venue based on a Roman architectural theme.', 'At CASAMENTO we understand what your celebrations mean to you. We bring you a venue that will make your celebrations extravagant and memorable. Spread over 1300 sq. yards,\r\n\r\nCASAMENTO is a wedding and exhibition venue based on a Roman architectural theme, a huge white stage with golden artwork complement by tall white and gold columns gives your function a grand and royal feeling', 'casamban.jpg', 'XDkSwY30G38', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.48440923177!2d67.0502971!3d24.9449745!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1685cd2fcd5aae95!2sCasamento%20Banquet!5e0!3m2!1sen!2s!4v1641026539743!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.945100947582745', '67.0503', '2021-12-18 14:03:41', 1),
(29, 22, 'lawn', 'Al mirha', 1, 'Clifton', 25000, '03223232323', 300, '                                                dasasdas                                            ', '                                                                                            ', 'download_(2)5.jpg', 'dasda', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.25002731807!2d67.0503857!3d24.9469696!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe503df5734802d4a!2sNorth%20Marriage%20Garden!5e0!3m2!1sen!2s!4v1639836001734!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon', '24.938529524850463', '67.05397836917669', '2021-12-18 15:06:43', 1),
(30, 45, 'Banquet', 'Casablanca', 1, 'North Nazimabad', 230000, '(021)-36721090', 1000, '2000 yards banquet at ideal location of north nazimabad best for your events.', 'Casablanca The Banquet is a perfect venue for your wedding or other events. Elegantly and luxuriously designed and decorated to make your occasions unforgettable with priceless memories, for events as unique as you. Creating your day as the best day ever.', 'casablanca.jpg', 'Vep2-qnCZzA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3617.3697465468754!2d67.05414441495684!3d24.953531784010107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3eb340856cfddc13%3A0xb25dce864ec7bab9!2sCasablanca%20Banquet!5e0!3m2!1sen!2s!4v1641028143225!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.953843057194444', '67.0563330980126', '2022-01-01 09:16:19', 1),
(31, 36, 'BallRoom', 'Sofitel', 1, 'North Nazimabad', 350000, '(021) 36633030', 650, '                                                Sofitel is the luxury banquet perfect for all events.                                            ', '                                                Sofitel is the name next to luxury, and allurement!\r\nSet amidst the city, prime location, unmatched customer service and beautiful in its own unique way, the banquet not only provides huge space for any event but also proudly presents First Ballroom Ever!                                            ', 'sofiel1.jpg', 'PdIrv_HXD-M', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.368542104092!2d67.0496644!3d24.9459608!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8f50ad2ad86a68dd!2sSofitel%20Luxury%20Banquet!5e0!3m2!1sen!2s!4v1641030164433!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.946223436949644', '67.04968585568409', '2022-01-01 09:48:01', 1),
(32, 36, 'Marque', 'Sofitel (B)', 1, 'North Nazimabad', 250000, '(021) 36633030', 500, 'Beautiful designed of marque on first floor best for all events ', 'The great big Marquee is designed and decorated using ultra modern and beautiful furnishings, furniture, lights and everything else from the ceiling to the floor. It\'s a perfect fit for any occasion, a family gathering or a wedding ceremony.', 'sofitelb.jpg', 'PdIrv_HXD-M', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.368542104092!2d67.0496644!3d24.9459608!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8f50ad2ad86a68dd!2sSofitel%20Luxury%20Banquet!5e0!3m2!1sen!2s!4v1641031666862!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.946223436949644', '67.04968585568409', '2022-01-01 10:11:52', 1),
(33, 46, 'Banquet', 'Darbar (A)', 1, 'North Nazimabad', 150000, '03343315135', 550, '                                                darbar banquet has lavish and modern design archiecture ideal for all types of venues.                                            ', '                                                The karachi Wedding Venue \"Darbar Lawn (A)\" has the maximum capacity of 550 guest, conveniently located D-16,Block-N,North Nazimabad, Near Sakhi Hassan, karachi, Pakistan. \"Darbar Banquet(A)\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Darbar Banquet(A)\" is ideal for all types of summer and winter events.                                            ', 'darbar1.jpg', 'F9V1f2iM1hA&t=119s', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3617.39296659394!2d67.05513611473691!3d24.9527413840104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3eb34085248dbcad%3A0xcece2d994c15b9e6!2sDarbar%20Banquet!5e0!3m2!1sen!2s!4v1641034861773!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', ' 24.952984567797756, ', '67.05717459431216', '2022-01-01 11:08:37', 1),
(34, 46, 'Banquet', 'Darbar', 1, 'North Nazimabad ', 70000, '', 200, 'Darbar banquet (B) is best for small parties.', 'The karachi Wedding Venue \"Darbar Lawn (B)\" has the maximum capacity of 200 guest, conveniently located D-16,Block-N,North Nazimabad, Near Sakhi Hassan, karachi, Pakistan. \"Darbar Lawn (B)\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Darbar Lawn (B)\" is ideal for all types of summer and winter events.\r\nMake your special one\'s Birthdays a memorable one.\r\nOur \"B\" portion is perfect for small gatherings.\r\n', 'darbarb.jpg', 'ADa0wnmNnhY', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.571864496844!2d67.0573248!3d24.9527414!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcece2d994c15b9e6!2sDarbar%20Banquet!5e0!3m2!1sen!2s!4v1641048288457!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.952984567797756', '67.05717459431216', '2022-01-01 14:53:46', 1),
(35, 22, 'Banquet', 'Jilani Marriage Point', 1, 'Gulberg', 80000, '03111222723', 300, '300 people capacity banquet and luxury wodden stage and interi sound systemflow light and bubble', ' the Venue of karachi Wedding Venue / Shadi Hall \" Jilani  marriage point \" has the maximum capacity of 300 guest (As per our information) , W3J6+M62, Block 10 Gulberg Town, Karachi, City, Sindh . \"Jilani Marriage point\" is best for weddings, corporate dinners, private dinners and exhibitions.\"Jilani Marriage point\" is ideal for all types of summer and winter events', 'jilani_-_Copy.jpg', 'lCKQcg5Ug_Y', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.051900215109!2d67.0605234!3d24.9316279!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2a0091cbf146b7eb!2sJilani%20M%20Point!5e0!3m2!1sen!2s!4v1641375330648!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', ' 24.93452782599958', '67.0614334239282', '2022-01-05 10:10:49', 1),
(36, 51, 'Banquet', 'Caspia ', 1, 'North Nazimabad', 140000, '0345 6435142', 600, '                                                 Caspia is an ideal event venue. Air-conditioned banquet is an exceptionally sound system flowlight                                                                                 ', '                                                The karachi Wedding Venue / Shadi Hall \"CASPIA \" has the maximum capacity of 600 guest, conveniently located D-8,Block-L,North Nazimabad, Near 5 Star Chorangi,karachi,Pakistan. \"CASPIA \" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"CASPIA\" is ideal for all types of summer and winter events.Luxuriously decorated, climate controlled,weather proofed, self-powered generation and\r\nstrict security measures are a few of the standard                                            ', 'caspia2.jpg', 'RyWysOKmSfw', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.511686664606!2d67.0500474!3d24.9447423!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa0cf510e34ad7b43!2sCaspia%20-%20The%20Banquet%20Hall!5e0!3m2!1sen!2s!4v1641391628946!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.945165703051938', '67.05017813239921', '2022-01-05 14:18:09', 1),
(37, 58, 'Banquet', 'Al Misbah Banquet', 1, 'Gulberg', 500000, '(021) 36344464', 500, 'Al-Misbah banquet is amazingly stylish and an ideal scene for your occasion', '                                                Al Misbah Banquet Our dedicated and detail-oriented venue staff guarantee the success of your special occasion by providing personalized Waitering services that meet and exceed expectations.Wedding Planning services, or customize their own. When you celebrate your special occasion with us, we’ll accommodate all of your Wedding Planning needs, with the entire Al Misbah Banquet team here to serve you.                                            ', 'misbha21.jpg', 'HegtTn39wMY', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.0918212467!2d67.0684354!3d24.9312879!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfde7adec88f29b6!2sAl%20Misbah%20Banquet!5e0!3m2!1sen!2s!4v1641459687132!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.93164785857198', '67.06838175383358', '2022-01-06 09:25:32', 1),
(38, 59, 'Lawn', 'City Lawn', 1, 'North Nazimabad', 250000, '0334 3498045', 700, '                                                                                                We plan your events well the events we cover have a large range from weddings to birthday parties etc.                                                                                        ', '                                                The karachi Wedding Venue / Shadi Hall THE CITY LAWN has the maximum capacity of 700 guest, conveniently located in North Nazimabad near faiz house bus stop. City Lawn is ideal for weddings, corporate dinners, private dinners and exhibitions. City Lawn is air-conditioned and ideal for all types of summer and winter events                                            ', 'city1_-_Copy2.jpg', 'LgMbidJgbb8', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.280420068455!2d67.0501921!3d24.9467109!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4b872f30ecc6afcc!2sCity%20Lawn!5e0!3m2!1sen!2s!4v1641485118648!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.9474854283967', '67.0502285346196', '2022-01-06 15:59:15', 1),
(39, 60, 'Banquet', 'Dream Heaven Banquet', 1, 'F.B.AREA', 65000, '0300-2665619', 500, '                                                The Best Dream Heaven Banquet and Wedding Halls of Karachi City                                             ', '                                                The Karachi Wedding Venue / Shadi Hall \"Dream Heaven\" has the maximum capacity of 500 guest, conveniently located C-7, Block-4,F.B. Area. \"Dream Heaven\" is ideal for weddings, corporate dinners, private dinners and exhibitions. “Dream Heaven\" is ideal for all types of summer and winter events.                                            ', 'dream_11.jpg', '/323994145055432/videos/325130769431236', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.187982743753!2d67.0565734!3d24.9219504!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa7a355173ee2565c!2sDream%20Heaven%20Banquet!5e0!3m2!1sen!2s!4v1641490833542!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.922183898810818', '67.05666995753407', '2022-01-06 18:19:24', 1),
(40, 61, 'Banquet', 'Nighat palace', 1, 'Gulshan-e-Iqbal', 100000, '(021) 34982720', 500, '                                                Nighat Palace  is ideal for weddings, corporate dinners,and exhibition .                                          ', '                                                The karachi Wedding Venue / Shadi Hall \"Nighat Palace (A)\" has the maximum capacity of 500 guest, conveniently located Rashid Minhas Road, Gulshan-e-Iqbal. \"Nighat Palace (A)\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Nighat Palace (A)\" is ideal for all types of summer and winter events.                                            ', 'nn1.jpg', 'nighat+palace+banquet+videos', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.689448606518!2d67.0905521!3d24.9261975!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xeb822b7dbfb9a635!2sNighat%20Palace!5e0!3m2!1sen!2s!4v1641500625584!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.92640180243738', '67.09050918266935', '2022-01-06 20:56:50', 1),
(41, 62, 'Banquet', 'Akacia Banquet', 1, 'Shahra-e-Faisal', 100000, '0306 2280082', 600, '                                                 Akacia banquet is the first choice banquet for elite and luxury style weddings                                            ', '                                                Akacia banquet is the first choice banquet for elite and luxury style weddings. Akacia Banquet is popular for its clean environment, safe and sound atmosphere and vast parking area facility .Address: 97-B, S.M.C، H.S Shahra-e-Faisal Link Rd, Block B Sindhi Muslim CHS (SMCHS), Karachi, Karachi City, Sindh 75400                                            ', 'op.jpg', '8zKeZ6sc1V0', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14480.539168761385!2d67.0567765!3d24.8592455!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xaa6071d2fe45681f!2sAkacia%20Banquet!5e0!3m2!1sen!2s!4v1641504129368!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.859453586975214', '24.859453586975214', '2022-01-06 21:33:42', 1),
(42, 63, 'Banquet', 'Bellagio Banquet', 1, 'Gulberg', 150000, '(021) 36425562', 600, 'Bellagio Banquet is amazingly stylish and an ideal scene for your occasion', 'At Bellagio Banquet Hall and Conference Center, we offer the most elegant venue, luxurious décor, and exquisite cuisine to bring forth an unparalleled client experience. Created by exceptionally skilled designers in Michigan, Bellagio Banquet was built with every detail in mind, carefully pieced together to offer sophisticated and extraordinary designs', 'bilogia_image.jpg', '4g21BCahY94', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.885357321758!2d67.0598562!3d24.9245286!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x85ea1c86650ddee2!2sBellagio%20Banquet!5e0!3m2!1sen!2s!4v1641506344866!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.924713446051456', '67.05987765568386', '2022-01-06 22:18:28', 1),
(43, 64, 'Banquet', 'Royal Mehfooz Banquet', 1, 'F.B.AREA', 95000, '(021) 36800373', 500, 'royal mehfooz is ideal for wedding is amazingly stylish in your occasion', 'Royal Mehfooz Banquet is one of the well-known venues situated at F.b Area Karachi as it is known for giving best and predominant quality administrations. The event that you are searching for a wedding setting that can make your wedding important then you must book Royal Mehfooz Banquet', 'royal_-_Copy.jpg', 'oEZy3Ty8oHQ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.623879513605!2d67.073161!3d24.935273!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3f78f6aa400553fb!2sRoyal%20Mehfooz%20Banquet!5e0!3m2!1sen!2s!4v1641508069740!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.935525931017377', '67.07322537102702', '2022-01-06 22:38:41', 1),
(44, 67, 'Banquet', 'Traditions Banquet', 1, 'North Nazimabad ', 100000, '(021) 36679614', 550, 'Traditions Banquet is ideal for all types of summer and winter events', 'The karachi Wedding Venue / Shadi Hall \"The TRADITIONS\" has the maximum capacity of 550 guest, conveniently located D-5,Block-N,North Nazimabad, Near 5 Star Chorangi,karachi,Pakistan. \"The TRADITIONS\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"The TRADITIONS\" is ideal for all types of summer and winter events.Dressing Room, Standby Generator, Kitchen, Music, Spot Light / Ramp, Time Restricted, Valet Parking', 'tradition.jpg', 'q5ny8dsqWIs', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.837716463377!2d67.0551778!3d24.9504789!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5f45913d3273fb02!2sTraditions%20Banquet!5e0!3m2!1sen!2s!4v1641566089275!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.95079016491305', '67.05508123849071', '2022-01-07 14:49:51', 1),
(45, 68, 'Banquet', 'Orient Banquet', 1, 'Gulistan-e-Johar', 200000, '0330 4630800', 1400, ' he Orient Banquets Having Max Capacity Of The Guest Is 1400  Banquet and he is luxury banqut                               ', '                                                About the Venue The karachi Wedding Venue / Shadi Hall \" Orient Banquet \" has the maximum capacity of 1400 guest (As per our information) , located Block 11 Gulistan-e-Johar, Karachi, Karachi City, Sindh . \"Orient Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.\"Orient Banquet\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk Dressing Room, Standby Generator, Kitchen, Music, Spot Light / Ramp,Time Restricted, Valet Parking                                            ', 'orient_banquet1.jpg', 'UYRczv61Nos&t=87s', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.601753446921!2d67.1369707!3d24.9184249!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7096e61864f55bc9!2sOrient%20Banquet!5e0!3m2!1sen!2s!4v1641567962526!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.918658405488422', '67.13695996917662', '2022-01-07 15:15:20', 1),
(46, 69, 'BallRoom', 'Novotel ballroom', 1, 'North Nazimabad ', 100000, '0345 2812341', 750, 'The karachi Wedding Venue Shadi Hall\"Novotel ballroom has the maximum capacity of 750 guest', 'The karachi Wedding Venue / Shadi Hall \"Novotel ballroom \" has the maximum capacity of 750 guest  \"Novotel ballroom \" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Novotel ballroom \" is ideal for all types of summer and winter events.', 'novatal_image.jpg', 'WGit-KK3H5o', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.279257452474!2d67.0540129!3d24.9382075!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x94d0106a54aac4ac!2sNovotel%20ballroom!5e0!3m2!1sen!2s!4v1641569440606!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', ' 24.938499338953896', '67.05394852499798', '2022-01-07 15:47:01', 1),
(47, 70, 'Marque', 'Signature', 1, 'Share-e-Faisal', 300000, '0330 2808085', 1000, 'Signature present you best area for your events.', 'The karachi Wedding Venue / Shadi Hall \"Signature  Marque\" has the maximum capacity of 1000 guest  is ideal for weddings, corporate dinners, private dinners and exhibitions. \"Signature  Marque \" is ideal for all types of summer and winter events.', 'signature.jpg', 'FUT3zcs2WlE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14475.656274305013!2d67.1084132!3d24.9009126!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5bf3a1126896fab6!2sThe%20Signature%20Banquet!5e0!3m2!1sen!2s!4v1641640235456!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.901749502240015', '67.10890672619679', '2022-01-08 11:32:33', 1),
(48, 22, 'Banquet', 'Swiss Banquet ', 1, 'Gulberg', 90000, ' 0304 2095058', 500, '                                                Welcome to Swiss Park Banquet  A full service event venue providing the kind of meals                                            ', '                                                Welcome to Swiss Park Banquet  A full service event venue providing the kind of meals that make memories. We are the right choice for everything from luxury weddings, to birthday parties, to corporate events                                            ', 'swiss_banquet_image1.jpg', 'AbLkF9nEpXE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.00581109636!2d67.072184!3d24.9405357!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xde57d22e037288bd!2sSwiss%20Banquet%20Hall!5e0!3m2!1sen!2s!4v1648189869849!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.94084699004638', '67.07225909986273', '2022-03-25 06:39:32', 1),
(49, 22, 'Banquet', 'Red Rose Banquet', 1, 'Gulberg', 400000, '0331 4433390', 400, '                                                 Red Rose Banquet Hall  the perfect place for events big or small.                                            ', '                                                Let our highly trained professional staff help you organize a successful event, whether it is a wedding reception, anniversary or even a small birthday party.                                            ', 'red_rose.jpg', 'R8A-ahjgMAw', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.996890546952!2d67.0693164!3d24.9320964!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1da5f4e4a4c8abfe!2sRed%20Rose%20Banquet!5e0!3m2!1sen!2s!4v1648203657480!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '28.66069659675903', '77.36908206922425', '2022-03-25 10:24:48', 1),
(50, 22, 'Banquet', 'Taj Banquet', 1, 'North Nazimabad ', 150000, '(021) 36671734', 900, '                                                                                                                                                Taj Mahal Banquet an event place Biggest Event Venue in Karachi                                                                                                                                    ', '                                                Taj Mahal Banquet an event place Biggest Event Venue in Karachi     Sharah-e-Sher Shah Suri, Block A North Nazimabad Town, Karachi, Karachi City, Sindh 74600, Pakistan Taj banquet is providing lavish and opulent interior with a welcoming ambiance which is perfect for wedding, reception, mehndi sangeet and engagement ceremonies.                                            ', 'taj2.jpg', 'M51H4mX2404', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.405817614666!2d67.0342958!3d24.9286135!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x20e541726366390!2sTaj%20Banquet!5e0!3m2!1sen!2s!4v1648212567475!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', ' 28.660818947269767', '77.36902842494914', '2022-03-25 10:59:36', 1),
(51, 22, 'Banquet', 'Taj Mahal Banquet', 1, 'Gulzar-e-Hijri Madras', 500000, ' 0332 3650948', 900, 'We provide banquet hall reception for your events like wedding and parties ', 'We provide banquet hall reception for your events like wedding and parties with capacity for more than 900 persons at a beautiful location in karachi with all of our extra services in a very reasonable price', 'taj_mahal_waqar.jpg', '3ys5Z7f2haA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14468.85905840376!2d67.1194783!3d24.9588067!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7021a91541b00718!2sTaj%20Mahal%20Banquet!5e0!3m2!1sen!2s!4v1648213499260!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.959030402082117', '67.11938173849099', '2022-03-25 13:18:05', 1),
(52, 22, 'Banquet', 'Maqbool Banquet', 1, 'Gulshan-e-Iqbal', 500000, '(021) 34818080', 1200, '                                                \"Maqbool Banquet\" is best for weddings banquet                                        ', '                                                About the Venue The karachi Wedding Venue / Shadi Hall \" Maqbool Banquet \" has the maximum capacity of 1200 guest (As per our information) , located E 80, Block 4 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh . \"Maqbool Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.\"Maqbool Banquet\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk                                            ', 'ma.jpg', 'yfTFknmHxzc', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.3786726874!2d67.1025371!3d24.937361!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb85f0a13dd532d20!2sMaqbool%20Banquet!5e0!3m2!1sen!2s!4v1648215046208!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.937594469611373', '67.10252636917674', '2022-03-25 13:42:10', 1),
(53, 22, 'Marque', 'The Mansion Marquee', 1, 'Shahra-e-Faisal', 500000, '0313 2226037', 600, 'Nothing fancy just Love! Classic Wedding theme with bold crytals ambiance,', 'Nothing fancy just Love! Classic Wedding theme with bold crytals ambiance, grand majestic chandeliers and a gorgeous stage to welcome you and your loved ones .\r\n\r\nFor more details,please DM us or drop a query on whatsapp,For Bookings – 0335-3504264.', 'the_mansion_marque_images.jpg', 'kfvfa4Thg4M', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14480.199125750816!2d67.0711003!3d24.8621493!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfc5f630142064887!2sThe%20Mansion%20Marquee!5e0!3m2!1sen!2s!4v1648218628378!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.862441318885658', '67.07105738266857', '2022-03-25 14:34:16', 1),
(54, 22, 'Banquet', 'The Victoria Banquet', 1, 'Shahra-e-Faisal', 500000, '(021) 34385021', 800, ' \"The Victoria Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.', 'About the Venue The karachi Wedding Venue / Shadi Hall \" The Victoria Banquet \" has the maximum capacity of 800 guest (As per our information) , located Plot No.50, Block 7/8, Dar-ul-Aman Housing Society, Adj. Baloch Colony Flyover Landing, Main Shahrah-e-Faisal, Umar Colony, Karachi, Karachi City, Sindh . \"The Victoria Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.\"The Victoria Banquet\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk', 'vic_image.jpg', 'fYpf6hWSVYM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14479.739766237331!2d67.0813695!3d24.8660715!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3d3155c23c0b7be0!2sThe%20Victoria%20Banquet!5e0!3m2!1sen!2s!4v1648391820145!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.862363442978', '67.07110029801159', '2022-03-27 14:52:06', 1),
(55, 22, 'Banquet', 'The Gloriosa', 1, 'Gulistan-e-Johar', 500000, '(021) 34660611', 400, '                                                .\"The Gloriosa Banquet\" is ideal for all types of summer and winter events.                                             ', '                                                About the Venue The karachi Wedding Venue / Shadi Hall \" The Gloriosa Banquet \" has the maximum capacity of 400 guest (As per our information) , located Johar Hill Rd, Block 15 Gulistan-e-Johar, Karachi, Karachi City, Sindh . \"The Gloriosa Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.\"The Gloriosa Banquet\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk                                            ', 'glosia1.jpg', 'XN-xP7-I7x4', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.933907070677!2d67.1185333!3d24.924115!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7a96d91423f0b68e!2zVGhlIEdsb3Jpb3NhINiv24wg2q_ZhNmI2LHbjNmI2LPYpw!5e0!3m2!1sen!2s!4v1648393412324!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.9243193058896', '67.11850111150488', '2022-03-27 15:10:15', 1),
(56, 22, 'Banquet', 'North Vista Banquet', 1, 'North Nazimabad ', 320000, '0333 2576924', 600, 'The  \" North vista banquet\" is ideal for all types of summer and winter events.', '    the  north vista banquet is maximum capacity is 600 Address: D 14, Block, 9, Block N North Nazimabad Town, Karachi, Karachi City, Sindh', 'noth_vista_amjad.jpg', 'CXaaETt9GJQ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.634166946493!2d67.056704!3d24.9522112!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x734a5d61d10ab4a3!2sNorth%20Vista%20Banquet!5e0!3m2!1sen!2s!4v1648394963348!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.95234736754451', '67.05654306547633', '2022-03-27 15:57:27', 1),
(57, 22, 'Banquet', 'Amber Banquet', 1, 'North Nazimabad', 170000, '(021) 36630138', 500, 'Amber Banquet in Karachi is a banquet family run banquet hall uniquely designed in classical style', '\r\nAmber Banquet in Karachi is a boutique family run banquet hall uniquely designed in classical style. We specialize in exquisite wedding receptions.\r\nEnjoy the convenience and luxury of our spacious wedding venue perfectly located in Karachi, Pakistan. We can accommodate an intimate wedding ceremony', 'amber_banquet_images.jpg', 'tVeVcboKD_o', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.694294333369!2d67.0548463!3d24.9516995!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6d5232a4b84c3075!2sAmber%20Banquet!5e0!3m2!1sen!2s!4v1648397448919!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.951942669855875', '67.05487848451976', '2022-03-27 16:15:55', 1),
(58, 22, 'Banquet', 'Euphoria Banquet', 1, 'Korangi', 400000, '0313 0019537', 600, '\"Euphoria Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions', 'About the Venue The karachi Wedding Venue / Shadi Hall \" Euphoria Banquet \" has the maximum capacity of 600 guest (As per our information) , located C-37, Dar us Salam Cooperative Society%u060C Main Korangi Rd, Dar Ul Salam Chs (Dchs) Sector 31 F Korangi, Karachi, Karachi City, Sindh 74900 . \"Euphoria Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.\"Euphoria Banquet\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk', 'europhia_korangi.jpg', '2YvwtVnikVE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14485.378442525473!2d67.1103782!3d24.817886!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa04951e1730f6e01!2sEuphoria%20Banquet!5e0!3m2!1sen!2s!4v1648474273513!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.818139171487804', '67.11038892684702', '2022-03-28 13:34:46', 1),
(59, 22, 'Marque', 'PRINCE MARQUEE', 1, 'Gulistan-e-Johar', 80000, '0300 8406300', 500, 'The \" Prince Marquee \" is ideal for all types of summer and winter events.', 'The Prince marque   a view of providing a maintained standard service of marriage functions to the people of karachi and in the heart of the city. Later the range of functions at ha was diversified and exhibitions and marriage also started to be organized at the hall and now every sort of function is being held at the marque', 'prince_marque.jpg', 'OXrC72Qtx2U', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.111525111817!2d67.1314724!3d24.9226018!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbb99759f4a136875!2sPRINCE%20MARQUEE!5e0!3m2!1sen!2s!4v1648475386059!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.922961783939968', '67.13137583849047', '2022-03-28 13:55:52', 1),
(60, 22, 'Banquet', 'Redisson Banquet', 1, 'Defence Housing Authority,', 350000, '(021) 35800780', 600, '\"Redisson Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions', 'Redisson banquet is situated at DHA adjacent to PSO pump at KPT fly over. It can accommodate upto 700 guests at a time. Redisson is well known for its vast parking area and late night availability unlike other banquets and marquee.', 'f.jpg', 'MMDf-08PpnI', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14483.692986173977!2d67.077707!3d24.8322983!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe78c462113175152!2sRedisson%20Banquet!5e0!3m2!1sen!2s!4v1648480824695!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.832483284141524', '67.07770699801134', '2022-03-28 15:31:20', 1),
(61, 22, 'Banquet', 'Hurain Gold Banquet', 1, 'KDA Chowrangi', 700000, '0313 8316960', 400, '                                                Hurain Gold Banquetin Karachi is a banquet family run banquet hall uniquely designed in classical style                                            ', '                                                Hurain Gold Banquetin Karachi is a banquet family run banquet hall uniquely designed in classical style KDA Chowrangi N/N block B F91, Karachi                                            ', 'hurain_banquet.jpg', 'WrXy5XBSkEI', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.205593390847!2d67.0381569!3d24.9303189!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbbe12a818807128!2sHurain%20Gold!5e0!3m2!1sen!2s!4v1648482148182!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.93419498471425', '67.03832040911479', '2022-03-28 15:48:23', 1),
(62, 22, 'Banquet', 'Bella Vista Banquet', 1, 'Gulistan-e-Johar', 250000, '(021) 34029019', 550, '\"Bella Vista Banquet\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Bella Vista Banquet\"', 'The karachi Wedding Venue / Shadi Hall \"Bella Vista Banquet\" has the maximum capacity of 550 guest, conveniently located C-79,Block-14,Gulistan-e-jauhar,Karachi,Pakistan. \"Bella Vista Banquet\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Bella Vista Banquet\" is ideal for all types of summer and winter events.', 'bella_vista_image.jpg', 'bahEsEQgctE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.0703024745!2d67.1309376!3d24.922953!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3456c8195a7a07dc!2sBella%20Vista%20Banquet!5e0!3m2!1sen!2s!4v1648565472388!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.92326433446706', '67.13109853054874', '2022-03-29 14:53:54', 0),
(63, 22, 'Banquet', 'Bella Vista Banquet', 1, 'Gulistan-e-Johar', 250000, '(021) 34029019', 550, '\"Bella Vista Banquet\" is ideal for weddings, private dinners and exhibitions.\"Bella Vista Banquet\"', 'The karachi Wedding Venue / Shadi Hall \"Bella Vista Banquet\" has the maximum capacity of 550 guest, conveniently located C-79,Block-14,Gulistan-e-jauhar,Karachi,Pakistan. \"Bella Vista Banquet\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Bella Vista Banquet\" is ideal for all types of summer and winter events.', 'bella_vista_image1.jpg', 'bahEsEQgctE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.0703024745!2d67.1309376!3d24.922953!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3456c8195a7a07dc!2sBella%20Vista%20Banquet!5e0!3m2!1sen!2s!4v1648565472388!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.92326433446706', '67.13109853054874', '2022-03-29 14:54:52', 1),
(64, 22, 'Banquet', 'Kulsoom Banquet', 1, 'Gulshan-e-Iqbal', 400000, '02134817046', 700, 'Kulsoom Banquet  is ideal for all types of summer and winter events.', 'The karachi Wedding Venue / Shadi Hall \"Kulsoom Banquet\" has the maximum capacity of 700 guest, conveniently located C-7 Block 3 Gulshan Chowrangi Rashid Minhas Road G. \"Kulsoom Banquet\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Kulsoom Banquet\" is ideal for all types of summer and winter events.', 'atif.jpg', 'P3do91MlqJY', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.667531516447!2d67.0903774!3d24.9263842!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa9cf3473f2a26b2d!2sKulsoom%20Banquet!5e0!3m2!1sen!2s!4v1648566575633!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '24.926481478361996', '67.09043104219103', '2022-03-29 15:18:22', 1),
(65, 22, 'Banquet', 'Kulsoom Banquet', 1, 'Gulshan-e-Iqbal', 400000, '02134817046', 700, 'Kulsoom Banquet  is ideal for all types of summer and winter events.', 'The karachi Wedding Venue / Shadi Hall \"Kulsoom Banquet\" has the maximum capacity of 700 guest, conveniently located C-7 Block 3 Gulshan Chowrangi Rashid Minhas Road G. \"Kulsoom Banquet\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Kulsoom Banquet\" is ideal for all types of summer and winter events.', 'atif1.jpg', 'P3do91MlqJY', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.667531516447!2d67.0903774!3d24.9263842!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa9cf3473f2a26b2d!2sKulsoom%20Banquet!5e0!3m2!1sen!2s!4v1648566575633!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.926481478361996', '67.09043104219103', '2022-03-29 15:18:48', 0);
INSERT INTO `venues` (`venue_id`, `user_id`, `venue_type`, `venue_name`, `city_id`, `location`, `price`, `contact`, `capacity`, `short_desc`, `long_desc`, `image`, `video`, `map_location`, `features`, `latitude`, `longitude`, `created_at`, `is_active`) VALUES
(66, 22, 'Banquet', 'Hilton Grand Banquet', 1, 'Gulshan-e-Iqbal', 550000, '(021) 34821100', 780, 'Head table are more luxurious than ever!', 'About the Venue The karachi Wedding Venue / Shadi Hall \" Hilton GRAND banquet \" has the maximum capacity of 600 guest (As per our information) , located Rashid Minhas Rd, Block 10-A Block 10 A Gulshan-e-Iqbal, Karachi, Karachi City, Sindh . \"Hilton GRAND banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.\"Hilton GRAND banquet\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk', 'kk.jpg', 'QpaP4bAUsPk', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14475.083836140426!2d67.1119004!3d24.9057931!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd4712f319a7291ad!2sHilton%20Grand%20Banquet!5e0!3m2!1sen!2s!4v1648567670641!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.9060266294068', '67.11190039801214', '2022-03-29 15:34:09', 1),
(67, 22, 'Banquet', 'Ocean Banquet', 1, 'Gulberg', 80000, '0317 2117356', 600, 'The karachi Wedding Venue / Shadi Hall \" Ocean Banquet \"', 'About the Venue The karachi Wedding Venue / Shadi Hall \" Ocean Banquet \" has the maximum capacity of 600 guest (As per our information) , located Federal B Area Block 12 Gulberg Town, Karachi, Karachi City, Sindh . \"Ocean Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.\"Ocean Banquet\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk', 'ocean_image.jpg', 'em0QXFICodU', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.601611229551!2d67.0688577!3d24.9439768!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x991f871845e70620!2sOcean%20Banquet!5e0!3m2!1sen!2s!4v1648568669206!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.948296678746505', '67.06828718765813', '2022-03-29 15:48:53', 1),
(68, 22, 'Banquet', 'Lalazar Banquet', 1, 'Korangi', 450000, '0300 2817009', 1000, 'lalazar Banquet is ideal for all types of summer and winter events.', 'Lalazar Banquet is located at Lucknow Society Sector 31 E Korangi, Karachi, Karachi City, Sindh, Pakistan.', 'lalazaR.jpg', 'NUEmCWCdWKs', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14484.97567136646!2d67.1243436!3d24.8213308!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xaa8814c9f97e47ed!2sLalazar%20Banquet!5e0!3m2!1sen!2s!4v1648570298242!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.821564489045507', '67.12440797102573', '2022-03-29 16:16:10', 1),
(69, 22, 'Banquet', 'Aroma Banquet', 1, 'Gulistan-e-Johar', 80000, '(021) 34170084', 400, 'The karachi Wedding Venue / Shadi Hall \" Ocean Banquet ', 'Aroma Banquet ; Address, Block 1 Gulistan-e-Johar, Karachi, Karachi City, Sindh, Pakistan ; Phone, +92 333 4170085 ; Hours, 00:00-24:00 ; Categories, Banquet Hall.', 'aroma_image.jpg', 'Wf6H0kPyWhs', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.241309241203!2d67.1171639!3d24.9300147!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xde5edd251c71ecb6!2sAroma%20Banquet!5e0!3m2!1sen!2s!4v1648646037174!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.93117430839143', '67.11760427131512', '2022-03-30 13:23:43', 1),
(70, 22, 'Marque', 'Faysal Marquee', 1, 'Shahra-e-Faisal', 350000, '(021) 34527790', 700, 'The karachi Wedding Venue / Faysal marque \" faysal marque\"', 'Address: Awami Markaz, Shahrah-e-Faisal, Pakistan, near PAF Museum Rd, Darwaish Colony, Karachi, Karachi City, Sindh', 'faysal.jpg', 'jcrXGPcbOFY', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14479.264231559891!2d67.0890993!3d24.8701312!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd21939f6ec9bceb!2sFaysal%20Marquee!5e0!3m2!1sen!2s!4v1648647928642!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.870384264593397', '67.08903492499716', '2022-03-30 13:52:22', 1),
(71, 22, 'Banquet', 'Atlantis Banquet', 1, 'Korangi', 170000, '0336 1835454', 600, 'Air Conditioned Banquet Hall with a capacity to accommodate 600 people.\r\n', 'A Grand Air Conditioned Hall\r\nCapacity to accommodate 600 people\r\nComplimentary Floral Service\r\nAir Conditioned Bridal Room\r\n200 KVA Double Generators\r\nTiled Flooring\r\nModern Theme Lightening Effect along with LCD\'S\r\nBranded and Modern Crockery and Cutlery', 'atlantic_banquet_image.jpg', 'KRQd3aN4Cj8', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14485.252184639578!2d67.1197077!3d24.8189659!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xef1b109ac0eed78a!2sAtlantis%20Banquet!5e0!3m2!1sen!2s!4v1648742046276!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.81935539960215', '67.11972915568255', '2022-03-31 15:57:33', 1),
(72, 22, 'Banquet', 'Samanzar Luxury Banquet', 1, 'North Nazimabad', 600000, '(021) 36674799', 550, '                                                New Samanzar luxury banquet is an ideal event venue.                                            ', '                                                New Samanzar is an ideal event venue.\r\nAir-conditioned Marquee is an exceptionally romantic\r\nsetting for a ‘once in a lifetime’ celebration.\r\nLuxuriously                                            ', 'samanzer_banquet_image1.jpg', 'ym0KfqhoV6k', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.548209922768!2d67.0584665!3d24.9529427!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x827055a295b2cf39!2sSamanzar%20Luxury%20Banquet!5e0!3m2!1sen!2s!4v1648743173569!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.953166412740583', '67.05843431150545', '2022-03-31 16:16:06', 1),
(73, 22, 'Banquet', 'Jhumar Banquet', 1, 'North Nazimabad ', 270000, '0213-6344474', 450, '\r\nJhumar Banquet  as a brand signifying quality and reliable marriage hal\r\n', 'We would like to thank you for associating with us. In This New Year, we wish you luck, prosperity and health. Looking forward to serving you with our quality services.\r\nWe hope to continue this relationship in the forthcoming year with great reverence and respect. Wish you a happy and fulfilling new year!\r\nRegards, \r\nJhumar Banquet.', 'jhumar.png', 'ry4C8a4HghU', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.09861077082!2d67.0455315!3d24.9397456!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x34dac3d3d808184a!2sJhumar%20Banquet!5e0!3m2!1sen!2s!4v1648744605923!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '24.94002770694212', '67.04554222684826', '2022-03-31 16:42:56', 1),
(74, 22, 'Banquet', 'Hill Top Banquet', 1, 'Gulistan-e-Johar', 300000, '021) 34613172', 500, 'At Hilltop Banquet  Lawn we provide all the requirements that make your event truly unique.', 'At Hilltop Banquet & Lawn we provide all the requirements that make your event truly unique. Hilltop provides the highest standards in evening parties. At Hilltop we facilitate customer with the best quality at the best price', 'hiltontop_image.jpg', 'KOg1sGipyUs', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14474.81540324147!2d67.119012!3d24.9080814!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4e40e7bf269c1972!2sHill%20Top%20Banquet!5e0!3m2!1sen!2s!4v1650017968339!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-15 10:29:23', 1),
(75, 22, 'Banquet', 'Roop Banquet', 1, 'North Nazimabad ', 240000, '021 36643319', 1000, 'The venue is ideal for Weddings, Valima and other social gatherings and get together', 'The venue is ideal for Weddings, Valima and other social gatherings and get together!Our spacious garden provides ample space for arrangement of 1000 guests.We keep changing our arrangement to meet the demands of our customers and adapt our arrangement with new trends in demand We understands the importance of your occasion', 'shaeen_roop.JPG', 'V_bMIcnr7tE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.866151006485!2d67.0549431!3d24.9502369!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb6531ba7baef18ad!2sRoop%20Banquet!5e0!3m2!1sen!2s!4v1650019571169!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-15 10:49:51', 0),
(76, 22, 'Banquet', 'Roop Banquet', 1, 'North Nazimabad ', 240000, '021 36643319', 1000, '                                                The venue is ideal for Weddings, Valima and other social gatherings and get together                                            ', '                                                The venue is ideal for Weddings, Valima and other social gatherings and get together!Our spacious garden provides ample space for arrangement of 1000 guests.We keep changing our arrangement to meet the demands of our customers and adapt our arrangement with new trends in demand We understands the importance of your occasion                                            ', 'roop_banquet_shaheen1.jpg', 'V_bMIcnr7tE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.866151006485!2d67.0549431!3d24.9502369!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb6531ba7baef18ad!2sRoop%20Banquet!5e0!3m2!1sen!2s!4v1650019571169!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-15 10:51:31', 1),
(77, 22, 'Banquet', 'Saima Banquet Hall', 1, 'Gulistan-e-Johar', 90000, '0300 2206082', 700, '                                                The karachi Wedding Venue / Shadi Hall \"Saima Banquet Hall\"                                            ', '                                                Saima Shopping Mall, Shaheed Sibghatullah Shah Pagara Rd, opposite Askari IV, Gulistan-e-Johar, Karachi, Karachi City, Sindh                                            ', 'saima_2.jpg', 'dlDX4wFHP3I', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14475.60088241024!2d67.1144308!3d24.9013849!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe1e3ff424a5df097!2sSaima%20Banquet%20Hall!5e0!3m2!1sen!2s!4v1650021514705!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-15 11:22:02', 1),
(78, 22, 'Marque', 'Shahjahan Marquee', 1, 'Gulistan-e-Johar', 350000, ' 0333 3530124', 600, 'The shah jahan is ideal for Weddings, Valima and other social gatherings and get together', 'The shah jahan marque is ideal for Weddings, Valima and other social gatherings and get together W4GG+478, Block 15 Gulistan-e-Johar, Karachi, Karachi City, Sindh', 'shahjahan_marque_rahim.jpg', '6ibeyCoVY4s', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.795310566069!2d67.1257066!3d24.9252957!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcc10ad9d55e3b967!2zU2hhaGphaGFuIE1hcnF1ZWUg2LTYp9uB2Kzbgdin2rog2YXYp9ix2qnbjA!5e0!3m2!1sen!2s!4v1650022489313!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-15 11:42:03', 1),
(79, 22, 'Banquet', 'Mubeen Banquet', 1, 'Gulberg', 70000, '0303 2540707', 400, '                                                At mubeen Banquet Lawn provide all the requirements that make your event truly unique.                                            ', '                                                At mubeen Banquet Lawn provide all the requirements that make your event truly unique.Service Road، Ancholi Block 20 Gulberg Town, Karachi, Karachi City, Sindh                                            ', 'mubeen_image1.jpg', '5OaZmAd3ZLY', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.707990240331!2d67.0829688!3d24.9430712!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2fa533805d36304c!2s..Mubeen..Banquet..!5e0!3m2!1sen!2s!4v1650023498970!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-15 11:55:08', 1),
(80, 22, 'Marque', 'The Knot Marquee', 1, 'CAA Colony airport road', 370000, '0332 2422627', 850, 'the knot marque we provide all the requirements that make your event truly unique.', 'the knot marque we provide all the requirements that make your event truly unique.Airport Road, CAA Colony Faisal Cantonment, Karachi, Karachi City, Sindh', 'the_knot_marque_image.jpg', 'zXoRIcrZ-4M', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14477.155105858!2d67.1584059!3d24.8881296!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2f34a440672b51b5!2sThe%20Knot%20Marquee!5e0!3m2!1sen!2s!4v1650093353317!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-16 07:22:44', 1),
(81, 22, 'Banquet', 'Dolee Banquet', 1, 'Gulistan-e-Johar', 280000, '021 34621441', 550, 'DOLEE BENQUET \" is ideal for weddings, corporate dinners, private dinners and exhibition', 'The karachi Wedding Venue / Shadi Hall \"DOLEE BENQUET \" has the maximum capacity of 550 guest, conveniently located C-41,C-64/1,Block-15,Gulistan-e-jauhar,Karachi,Pakistan. \"DOLEE BENQUET \" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"DOLEE BENQUET \" is ideal for all types of summer and winter events.', 'dolee.jpg', 'Ybr_Bw_0fkg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.922086637918!2d67.1187991!3d24.9242157!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x99036eb7333e1995!2zRG9sZWUgQmFucXVldCDaiNmI2YTbjCDYqNmG2qnZiNim2bk!5e0!3m2!1sen!2s!4v1650094485267!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-16 07:40:57', 1),
(82, 22, 'Banquet', 'North Marriage Garden', 1, 'North Nazimabad ', 800000, '021 36637805', 800, '                                                The karachi Wedding Venue / Shadi Hall \" North Marriage Garden \"                                            ', '                                                About the Venue The karachi Wedding Venue / Shadi Hall \" North Marriage Garden \" has the maximum capacity of 800 guest (As per our information) , located Shahra-e%u060C, Shahrah-e-Sher Shah Suri Rd, Block I North Nazimabad Town, Karachi, Karachi City, Sindh . \"North Marriage Garden\" is best for weddings, corporate dinners, private dinners and exhibitions.\"North Marriage Garden\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk                                            ', 'noth_mariage_garden_image1.jpg', 'YBxzwS3dyvg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.25002731807!2d67.0503857!3d24.9469696!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe503df5734802d4a!2sNorth%20Marriage%20Garden!5e0!3m2!1sen!2s!4v1651300415340!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-30 06:57:59', 1),
(83, 22, 'Banquet', 'Samanzar Luxury Banquet', 1, 'North Nazimabad ', 130000, '0213674799', 450, '\"Samanzar Luxury Banquet\" is best for weddings, corporate dinners', 'the karachi Wedding Venue / Shadi Hall \" Samanzar Luxury Banquet \" has the maximum capacity of 550 guest (As per our information) , located D-52%u060C Block N North Nazimabad Town, Karachi, Karachi City, Sindh . \"Samanzar Luxury Banquet\" is best for weddings, corporate dinners, private dinners and exhibitions.\"Samanzar Luxury Banquet\" is ideal for all types of summer and winter events. You can check other options too on Nikaah.pk', 'samanzer_banquet_image.jpg', 'msc7j8ognk0', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.548209922768!2d67.0584665!3d24.9529427!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x827055a295b2cf39!2sSamanzar%20Luxury%20Banquet!5e0!3m2!1sen!2s!4v1651303263945!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-04-30 07:25:16', 1),
(84, 22, 'Banquet', 'The Signature Banquet', 1, 'Central Government Employees CHS', 420000, '021 34822622', 1000, '                                                The Signature banquet is going all summery and elegant white                                            ', '                                                The Signature banquet is going all summery and elegant white, gold, and a hint of rustic vibe with white drapes and light-hued flowers perfect for an ideal wedding setup.                                            ', 'signature1.png', 'MVbpUou4Yjk', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14475.656274305013!2d67.1084132!3d24.9009126!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5bf3a1126896fab6!2sThe%20Signature%20Banquet!5e0!3m2!1sen!2s!4v1652438631477!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-05-13 11:01:53', 1),
(85, 22, 'Banquet', 'Emerald Banquet', 1, 'North Nazimabad', 70000, '03327310531', 500, 'the emerald banquet we provide all the requirements that make your event truly unique.', 'the emerald banquet we provide all the requirements that make your event truly unique. W3X3+RQV, Block N North Nazimabad Town, Karachi, Karachi City, Sindh', 'emarld_banquet.jpg', '8nJcnu5oxUw', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.939445138476!2d67.0544123!3d24.9496131!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x840300112ff9c76d!2sEmerald%20Banquet!5e0!3m2!1sen!2s!4v1652440723914!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-05-13 11:26:26', 1),
(86, 22, 'Banquet', 'Bella Vista Banquet', 1, 'Gulistan-e-Johar', 250000, '02134029019 ', 550, '                                                                                                New Luxurious look and envoirnment of Bella Vista Banquet                                                                                        ', '                                                The karachi Wedding Venue / Shadi Hall \"Bella Vista Banquet\" has the maximum capacity of 550 guest, conveniently located C-79,Block-14,Gulistan-e-jauhar,Karachi,Pakistan. \"Bella Vista Banquet\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Bella Vista Banquet\"                                            ', 'belavista2.jpg', 'xHfRCaYTV0o', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.0703024745!2d67.1309376!3d24.922953!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3456c8195a7a07dc!2sBella%20Vista%20Banquet!5e0!3m2!1sen!2s!4v1652457582930!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-05-13 16:04:29', 1),
(87, 22, 'Banquet', 'Sadabahar Banquet', 1, 'Shaheed-e-Millat Service Road', 700000, '0300 3500002', 500, '                                                sadabhar banquet \" is ideal for weddings, corporate dinners, private dinners and exhibition                                            ', '                                                sadabhar banquet \" is ideal for weddings, corporate dinners, private dinners and exhibition Tibet House, 227 Shaheed-e-Millat Service Road، Delhi Mercantile Society, Karachi, Karachi City, Sindh                                            ', 'sadabahar1.jpg', 'lAncQHPgKK4', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14478.419716885375!2d67.0695081!3d24.8773394!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x43bcebc612b1d529!2sSadabahar%20Banquet!5e0!3m2!1sen!2s!4v1652459030176!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-05-13 16:36:50', 1),
(88, 22, 'Banquet', 'Excelency Banquet', 1, 'Gulistan-e-Johar', 75000, '0335 2601926', 600, '\" excelency Banquet\" is best for weddings, corporate dinners', '\" excelency Banquet\" is best for weddings, corporate dinners W4F9+93X, Johar Hill Rd, Block 15 Gulistan-e-Johar, Karachi, Karachi City, Sindh', 'exce.jpg', 'eyBuZEhSNZE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.006530734498!2d67.1177235!3d24.9234963!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x23da8476d5f7b1b9!2zRXhjZWxsZW5jeSBCYW5xdWV0INin24zaqdiz24zZhNmG2LPbjCDYqNuM2YbaqdmI24zZuQ!5e0!3m2!1sen!2s!4v1652476145685!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-05-13 21:21:08', 1),
(89, 22, 'Banquet', 'Himalya Banquet', 1, 'Gulshan-e-Iqbal', 51000, '03-2249422405', 250, 'Himalaya Banquet Hall & Family  offers a wide range of services which includes service bridal room', 'Address: E, 81/2 Abul Hasan Isphahani Rd, Block 4 Block 4 A Gulshan-e-Iqbal, Karachi, Karachi City, Sindh Himalaya Banquet Hall & Family Restaurant offers a wide range of services which includes service staff, bridal room, in-house catering services, a multi-cuisine ..', 'himalya_1.jpg', 'ynKfXpxVdpw', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.392577649787!2d67.1025882!3d24.9372426!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x61937e5b7de7b7d3!2sHimalya%20Banquet!5e0!3m2!1sen!2s!4v1652507014842!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-05-14 05:50:42', 1),
(90, 22, 'Banquet', 'The Ritz Banquet', 1, 'Gulistan-e-Johar', 120000, '0321 8437489', 400, 'The karachi Wedding Venue / Shadi Hall \"THE RITZ BANQUET\"', 'The karachi Wedding Venue / Shadi Hall \"THE RITZ BANQUET\" has the maximum capacity of 400 guest, conveniently located C-45,Block-15,Gulistan-e-jauhar,Karachi,Pakistan. \"THE RITZ BANQUET\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"THE RITZ BANQUET\" is ideal for all types of summer and winter events.', 'ritz.jpg', 'gaA646agXCE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.97854728888!2d67.1181631!3d24.9237347!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x105f73c9c349d7e8!2sThe%20Ritz%20Banquet!5e0!3m2!1sen!2s!4v1652509476827!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-05-14 06:27:17', 1),
(91, 22, 'Marque', 'Drive Inn Marquees - Glass', 1, 'Gulistan-e-Johar', 600000, '0316 2000201', 1200, 'Give your auspicious occasion touch of exclusivity and elegance only at Glass Marquee', 'Give your auspicious occasion touch of exclusivity and elegance only at Glass Marquee Address: National Stadium Rd, Gulistan-e-Johar, Karachi, Karachi City, Sindh 75290', 'glass.jpg', 'p3tT4ou29aQ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14475.51043306057!2d67.1119414!3d24.9021561!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc955ebabd413ce00!2sDrive%20Inn%20Marquees%20-%20Glass!5e0!3m2!1sen!2s!4v1652510799671!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-05-14 06:53:47', 1),
(92, 22, 'Banquet', 'Shadi Qila Banquet', 1, 'Gulistan-e-Johar', 380000, '(021) 34612134', 650, '                                                                                                Make your Events Memorable With Us ♥️                                                                                        ', '                                                \"We Don\'t Remember the DAYS,we Remember MOMENTS\"????♥️\r\nWelcome to the \"Shadi Qila Banquet \"\r\nMake your Events Memorable With Us..!\r\nProviding You Quality Service and Beautiful Ambience!\r\nOffering you Special Discounts for the  Month of June !\r\nFor Booking and Queries:\r\nContact: 021-34612134\r\n              0300-8209021                                            ', 'shadi_qila_banquet_imag2.jpg', 'bn-IFG1JKAE', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.971751334846!2d67.1273342!3d24.9323105!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe85b7136c7cb1bf6!2sShadi%20Qila%20Banquet!5e0!3m2!1sen!2s!4v1654501134764!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-06 07:47:43', 1),
(93, 22, 'Banquet', 'Venetian Banquet', 1, 'Gulberg ', 450000, '0334 3311522', 1200, '                                                                                                The Venetian Banquet  is a perfect wedding banquet if you are looking great facilities                                                                                        ', '                                                The Venetian Banquet  is a perfect wedding location if you are looking great facilities, fine cuisine and amazing service for your special day. They have a highly professional team, who aims to meet your highest standards by delivering perfect services catering to your every demand and expectations with perfection and class.C 21, F.B Area Block 6 Block 6 Gulberg Town, Karachi, Karachi City, Sindh                                            ', 'vinetian_21.jpg', 'dKrhB6kKbdM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.926382848047!2d67.0595378!3d24.9241791!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x138ce50355ac044a!2sVenetian%20Banquet!5e0!3m2!1sen!2s!4v1654679676154!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-08 09:08:46', 1),
(94, 22, 'Banquet', 'candles banquet', 1, 'Gulistan-e-Johar', 390000, '0312 2438059', 800, 'Its a very comfortable affordable and luxurious place for wedding and parties', 'Its a very comfortable ,affordable and luxurious place for wedding and parties.\r\nFully Airconditioned , Wedding, Exhibition,& Corporate Event  B 100 Johar Mor Rd Service Ln, Block 20 Block 17 Gulistan-e-Johar, Karachi, Karachi City, Sindh ', 'candle_banquet_images.jpg', 'BiknH62X0Lg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14474.86317221441!2d67.1185654!3d24.9076742!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x19d52aebf2a0fff0!2zQ2FuZGxlcyBCYW5xdWV0INqp24zZhtqI2YTYsiDYqNuM2YbaqdmI24zZuQ!5e0!3m2!1sen!2s!4v1654758911367!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-09 07:22:05', 1),
(95, 22, 'Marque', 'The Imperial Marquees', 1, 'Gulistan-e-Johar', 500000, '(021) 34979797', 500, 'At our wonderful venue, you\'ll find the perfect balance of simplicity & charm', 'At our wonderful venue, you\'ll find the perfect balance of simplicity & charm, well complimented by our reliable services~\r\nWe cordially invite you to host your special events with us at The Imperial Marquees.\r\n-\r\n-\r\nLocation: Dalmia Road, Near Millennium Mall, Karachi \r\nFor Bookings & Details, \r\nInbox us OR Call Now \r\n021-34979797', 'the_emperial.jpg', 'u-ZmzYD_U64', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14475.641872272434!2d67.1088675!3d24.9010354!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc338a9589ff6dbc3!2sThe%20Imperial%20Marquees!5e0!3m2!1sen!2s!4v1654936308902!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-11 08:36:18', 1),
(96, 22, 'Banquet', 'Lavish Banquet', 1, 'North Nazimabad', 78000, '0335 8123474', 500, '                                                lavish Banquet is amazingly stylish and an ideal scene for your occasion                                            ', '                                                lavish Banquet is amazingly stylish and an ideal scene for your occasion  X324+JFV, Shahrah-Sher Shah Suri Service Rd S, Block N North Nazimabad Town, Karachi, Karachi City, Sindh                                            ', 'lavish_2.jpg', 'Xw_4Nkxt45o', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.705915459932!2d67.0561682!3d24.9516006!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbeac66bffbdce693!2sLavish%20Banquet!5e0!3m2!1sen!2s!4v1655020040413!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-12 07:53:39', 1),
(97, 22, 'Banquet', 'King Gold Banquet', 1, 'Nazimabad', 55000, '0335 2601956', 400, 'Mehandi, Mayoon, Engagement, Nikkah etc (Fully Loaded Setup)', 'Air Conditioned Venue, Generators, Fresh Flower Stage, Sofas,  Fresh Flowers on all tables, Entry lights Decoration,Entry Setup Smoke Sound Light, Sound System, Imported Crockery, Aquafina water Dispenser, Vip Waiters, Parking Boy, Sweeper etc.', 'king_gold.jpg', 'YTqhPGrOIUI', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.538309424403!2d67.0310831!3d24.9189655!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3020769f39cbe81c!2sKing%20Gold!5e0!3m2!1sen!2s!4v1655023432303!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-12 08:47:22', 1),
(98, 22, 'Lawn', 'Marine Lawn', 1, 'Saddar', 120000, '0300 2299599', 700, '                                                 Marine Marriage Lawn\" is ideal for weddings, corporate dinners                                            ', '                                                The karachi Wedding Venue / Shadi Hall \"Marine Marriage Lawn\" has the maximum capacity of 700 guest, conveniently located Fleet Club, Lucky Star, Saddar, Karachi, Pakistan. \"Marine Marriage Lawn\" is ideal for weddings, corporate dinners, private dinners and exhibitions.\"Marine Marriage Lawn\" is ideal for all types of summer and winter events.                                            ', 'marine_lawn1.jpg', 'PR06sfFPp-M', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14480.696015379963!2d67.0343959!3d24.857906!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9c6433f62366b3de!2sMarine%20Lawn!5e0!3m2!1sen!2s!4v1655025903948!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-12 09:45:26', 1),
(99, 22, 'Marque', 'The Clifton Marquee', 1, 'Clifton', 500000, '0300 1113797', 800, 'The Clifton Marquee: Wedding Planning Service, Caterers, Floral Designer', ' The Clifton Marquee: Wedding Planning Service, Caterers, Floral Designer Book your Luxury Wedding by the Clifton Marquee All-New Furniture & Style  F-69, Block 4 Block 3 Clifton, Karachi, Karachi City, Sindh 75200', 'clifton_marque.jpg', 'eGOEGcUNZlQ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14486.454214219031!2d67.030411!3d24.808683!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6b16856499bc9712!2sThe%20Clifton%20Marquee!5e0!3m2!1sen!2s!4v1655193643224!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-14 08:25:41', 1),
(100, 22, 'Banquet', 'Majestic Banquet Hall', 1, 'Shahra-e-Faisal', 460000, '0321 2442027', 650, 'At Majestic Banquet we provide you best quality services.', 'At Majestic Banquet we provide you best quality services.  Shahrah-e-Faisal Service Rd N, Mohammad Ali Society Muhammad Ali Chs (Machs), Karachi, Karachi City, Sindh We are committed to provide you the perfect decor,venue and services.', 'majestic.jpg', '00fIFP3jJSw', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14478.970126704284!2d67.0912303!3d24.8726417!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa85303a7fb66f5f1!2sMajestic%20Banquet%20Hall!5e0!3m2!1sen!2s!4v1655198902392!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-14 09:34:34', 1),
(101, 22, 'Marque', 'Marhaba Marquee', 1, 'Nazimabad', 400000, ' (021) 36603088', 800, '                                                 Welcome you and assuring you to make your event a grand and memorable one.                                            ', '                                                And here we open our doors with our new look  Welcome you and assuring you to make your event a grand and memorable one.W29J+PVM, Nawab Siddique Ali Khan Rd, Nazimabad No. 4 Block 4 Nazimabad, Karachi, Karachi City, Sindh 74600                                            ', 'marhaba_2.jpg', 'z7Bgy0E6gCM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.493595049578!2d67.0321601!3d24.9193465!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7f6638dbd9d12004!2sMarhaba%20Banquet!5e0!3m2!1sen!2s!4v1655221904088!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-14 15:54:56', 1),
(102, 22, 'Banquet', 'Jhumar Banquet', 1, 'North Nazimabad', 65000, '0324 2957486', 400, 'Jhumar Banquet has made a name for itself as a brand signifying quality and reliable marriage hall', 'Jhumar Banquet has made a name for itself as a brand signifying quality and reliable marriage hall. This Banquet like no other, This is a place where your dreams come true.  W2QW+V6V, Block H North Nazimabad Town, Karachi, Karachi City, Sindh', 'jhumar.jpg', 'ry4C8a4HghU', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14005.579926372042!2d180!3d28.6478898!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x34dac3d3d808184a!2sJhumar%20Banquet!5e0!3m2!1sen!2s!4v1655275912558!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Condion,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-15 07:02:58', 1),
(103, 22, 'Marque', 'Al-Hamd Marquee', 1, 'Gulistan-e-Johar', 600000, '03134346346', 700, '                                                                                                Al hamd marque we provide you best quality services.                                                                                        ', '                                                Al Hamd Marquee\r\nIs located in the Heart of Karachi, OnVip Block 1 Gulistan-e-Johar. New Rd Service Ln, Karachi, Karachi City, Sindh, Pakistan. We provide Premium Service with excellence and convenience for any and all occasions such as business and or personal events for any size event, big or small. Ready for a new decade with all New Amenities to make your dreams come true. A Must See!\r\nHall Occupancy : 50 - 700\r\nContact us by:\r\nEmail: alhamdmarquee@gmail.com\r\nPakistan # 92 21 34634679                                            ', 'ALHMAD2.jpg', 'zRSpPOk1744', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14472.710755110777!2d67.1136328!3d24.926016!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7717fa37cd1665d8!2sAl-Hamd%20Marquee!5e0!3m2!1sen!2s!4v1655278404769!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-15 07:39:19', 1),
(104, 22, 'BallRoom', '5 STAR BALLROOM', 1, 'North Nazimabad ', 120000, '0312 0003453', 200, '                                                We serve comfortable, lavish and fully equipped environment for parties, events,                                            ', '                                                5 STAR BALLROOM Welcome you and assuring you to make your event a grand and memorable one  Building on Plot No.D-14, First Floor, near Five Star Chowrangi, Karachi, 74600 We serve comfortable, lavish and fully equipped environment for parties, events,.                                            ', '5_star_n1.jpg', '-bAPg1pTcOc', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14470.937815764564!2d67.0467523!3d24.9411146!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd45236944c62ca68!2s5%20STAR%20BALLROOM!5e0!3m2!1sen!2s!4v1655280794394!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-15 08:23:21', 1),
(105, 22, 'BallRoom', 'Prestige Ballroom', 1, 'North Nazimabad', 300000, '0330 8584643', 250, '                                                the prestige ballroom we provide you best quality services.                                            ', '                                                the prestige ballroom we provide you best quality services. the prestige ballroom we provide you best quality services. 3rd floor, B 100, Block H North Nizamabad Town،, Karachi, Karachi City, Sindh                                            ', 'pretige_balroom1.jpg', 'arOfpXyxhLA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14471.303944200175!2d67.0534443!3d24.9379973!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb365f58d5ca40d7c!2sPrestige%20Ballroom!5e0!3m2!1sen!2s!4v1655363441370!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-16 07:21:29', 1),
(106, 22, 'Banquet', 'Al Affan Banquet', 1, 'Gulistan-e-Johar', 300000, '0333 8222462', 360, '                                                Al Affan banquets provides marriage banquets and catering.                                            ', '                                                Al Affan banquets provides marriage banquets and catering.W4CM+H3X, Munawar Chowrangi Rd, Block 14 Gulistan-e-Johar, Karachi, Karachi City, Sindh                                            ', 'al_afan1.jpg', 'hCPpyzBHbHw', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14473.242431550196!2d67.1327445!3d24.9214865!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe4eb498760a9267!2sAl%20Affan%20Banquet!5e0!3m2!1sen!2s!4v1655461499556!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Air Conditon,Generator Backup,Segregation,Velet Parking,Bridal Room,Sound System,Fresh Flower', '', '', '2022-06-17 10:31:44', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banquets`
--
ALTER TABLE `banquets`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- AUTO_INCREMENT for table `banquets`
--
ALTER TABLE `banquets`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `venue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
