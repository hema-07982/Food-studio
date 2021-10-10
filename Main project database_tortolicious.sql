-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 08:16 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tortilicious`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedsection`
--

CREATE TABLE `feedsection` (
  `Id` int(255) NOT NULL,
  `urser_id` int(255) NOT NULL,
  `image` blob NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile_images`
--

CREATE TABLE `profile_images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile_images`
--

INSERT INTO `profile_images` (`id`, `file_name`, `uploaded_on`, `status`, `description`) VALUES
(19, '22.jpg', '2021-09-30 16:37:44', '1', ''),
(20, 'fod 3.jpg', '2021-09-30 16:37:58', '1', ''),
(21, '11.jfif', '2021-09-30 16:38:09', '1', ''),
(23, 'fod2.jfif', '2021-10-06 22:06:09', '1', ''),
(24, 'fod 3.jpg', '2021-10-06 22:47:00', '1', 'zeel');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `Id` int(255) NOT NULL,
  `Username` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `Query_group` enum('Uploding recipies','Searching recipies','While watching the Studio','In doing chat with the other user') CHARACTER SET utf8mb4 NOT NULL,
  `Query_text` text NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Id`, `Username`, `email`, `mobile`, `Query_group`, `Query_text`, `token`, `status`) VALUES
(1, 'Zeel', 'jananizeel2321@gmail.com', '8347063168', 'Uploding recipies', 'i am not able to upload query', '', 'inactive'),
(4, 'Zeel', 'jananizeel2321@gmail.com', '8347063168', 'Uploding recipies', 'i am not able to upload query', '', 'inactive'),
(5, 'Zeel', 'jananizeel2321@gmail.com', '8347063168', 'Uploding recipies', 'i am not able to upload query', '', 'inactive'),
(8, 'Zeel', 'jananizeel2321@gmail.com', '8347063168', 'Searching recipies', 'i am not able to upload query', '', 'inactive'),
(9, 'Zeel', 'jananizeel2321@gmail.com', '8347063168', 'Searching recipies', 'i am not able to upload query', '', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Id` int(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `Age_group` enum('10-20','20-30','30-40','40-50','50-60','60-70') NOT NULL,
  `Password_new` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Id`, `Username`, `email`, `mobile`, `Age_group`, `Password_new`, `cpassword`, `token`, `status`) VALUES
(4, 'meeta', 'zeel.janani107893@marwadiuniversity.ac.in', '8347063168', '30-40', '$2y$10$kwEBT49U9VbuTBzvUKJ0qeNOzVkeSBPXSDza2sl.dorMqWvxBVQXi', '$2y$10$JqMnA.TbtWmIUXQqp16UtO1c./iD0eNbx2Gx59TC5q/GfhKHNJzkm', '0b2877ccbefa4fff5866a9d1172670', 'inactive'),
(6, 'hema', 'hemapaun07@gmail.com', '8347063168', '40-50', '$2y$10$WONtw2VaQhKigBFSV6.gyO.8D5EHK.mqiJ7S./VV7fvR0IRFxL1mO', '$2y$10$Di8hqeXWDHlAH9kY2M1tnOQgmTdutk2EhrKU4oNgWp2V762Ghr0Ni', 'aef7658c1334a168e64c6003ae457e', 'inactive'),
(9, 'tanish', 'tanishj3154@gmail.com', '7777927267', '20-30', '$2y$10$7GL22f6dDjFl4jIjoeKL7eDR1HdkABruGDGg/k3rj0c1fbrKtHH86', '$2y$10$/3k2AnYqpXfmXl57hE/sV.Qa8d1TD/gKowkTkJLMlizmxVgCwS0TO', '331e3afaf281b4483e51fb386aba9d', 'inactive'),
(12, 'Zeel', 'zeeljanani1001@gmail.com', '8347063168', '20-30', '$2y$10$dhHqYkqVyIH5MWugVWdJFO6pXgx9xtotWefpfW/.eId3QPF8HkkYi', '$2y$10$1R8wts/5.2xr2bjCJe3I9Of.uH3z/FwvgZZYJv0ORVx6aa5/cyw2K', '7604707c9b2f19ec03b38c90cd0655', 'inactive'),
(16, 'vidhi', 'vidhijanani11@gmail.com', '9726517266', '20-30', '$2y$10$lyUEEY9Fjaw5Pke6UTaKieLt0cx8TpenYrUkbfocDcwJ45kKP1Z.m', '$2y$10$pdpoJWB549.iBkoLdHkhmuSFPLDiD0PcYGhrZsV97P.d0CIab2BbK', '331d16067cafacd52a9789120ee687', 'inactive'),
(18, 'Avyan', 'hemapaun105@gmail.com', '7777927267', '20-30', '$2y$10$YFgoUFIQ9wMhX8CW5M94iO31YyfJvvfnA8hr79ZUfFXt8/d2STeiO', '$2y$10$AJ1M9k9eUpTovWTZQ/BSnOm1ucoDiZy.BNoGDe8QHMSBuB8.RTPgi', '2ffecc3ab746dc04b75c6bd2a84062', 'inactive'),
(19, 'Heze_Ghia', 'jananizeel2321@gmail.com', '8347063168', '10-20', '$2y$10$WTt.yHvAEC/dNACSUaWJOOA8Xnjv3Fo1cZZpV4B3gIUi5dSJ4AEzq', '$2y$10$DzoL0E7IKw58EAYN9vlz1.kKwWu73lb9QX5n6raM1Nh6coVamRFyW', '9098edbc04cc8053f8e2cbf27a1917', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedsection`
--
ALTER TABLE `feedsection`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedsection`
--
ALTER TABLE `feedsection`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
