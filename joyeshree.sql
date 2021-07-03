-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 05:37 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joyeshree`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `ID` int(11) NOT NULL,
  `Title` varchar(10) NOT NULL,
  `Size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`ID`, `Title`, `Size`) VALUES
(1, 'table', '4.5 feet'),
(2, 'Box Khat', '6'),
(3, 'Reading Ta', '4.4 feet');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ID` int(11) NOT NULL,
  `pay_id` varchar(200) NOT NULL,
  `Title` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL,
  `pay_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `pay_id`, `Title`, `address`, `pay_by`) VALUES
(2, 'js1122', 'Box Khat', '', 'Rocket');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `ID` int(11) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Size` varchar(10) DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `configaration` varchar(50) DEFAULT NULL,
  `Available` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`ID`, `Title`, `Size`, `Price`, `configaration`, `Available`) VALUES
(7, 'Box Khat', '5', 16000, 'Real wood', '02'),
(9, 'Computer Table', '2.5 feet*3', 3500, 'Partex ', '07'),
(10, 'Reading Table', '4 feet * 4', 7500, 'Partex Hevvey', '05'),
(11, 'Office Table', '4.5 feet *', 9000, 'Partex Hevvey', '03'),
(12, 'Meeting Table', '7 feet*6 f', 15500, 'Malaysian wood with good furnished good', 'Booke'),
(13, 'Book self ', '2 feet * 7', 7500, 'Real wood', 'sold'),
(14, 'Semi Double Khat', '5 feet *4 ', 27000, 'Real wood(segun)', '04'),
(15, 'Ware Drop', '2.5 feet*2', 22500, 'Real wood', '02(5%');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `ID` int(11) NOT NULL,
  `pay_id` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL,
  `name` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID`, `pay_id`, `address`, `name`, `phone`) VALUES
(6, 'sj1122', '', 'saiful Islam', '0465132132'),
(7, 'aj1133', 'Rampura,Wapda road', 'Sreeja Dey', '01545558555'),
(8, 'sj1123', 'Basabo Taltola bridge', 'samin', '013555665456'),
(9, 'aj 1134', 'Farmgate,India road', 'Nadim', '01865362563'),
(10, 'aj1135', 'Khilgaon tatola market', 'Supti saha', '01458545543'),
(11, 'sj1125', 'mogbazar,modhubag bridge', 'Shaon', '017554652635');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `ID` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`ID`, `phone`, `address`) VALUES
(2, '01605155156', 'Basundhara R/A ,Near NSU ,Dhak'),
(3, '01758545655', 'Rampura bazar'),
(4, '0158653565', 'Banosree'),
(5, '017569865268', 'Nikunjo'),
(6, '0175653635', 'Bimanbandar');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `name`, `phone`, `email`, `pass`) VALUES
(1, '', 0, '', 'saif'),
(2, 'Md.Saiful Islam', 1759698269, 'saifulislambappi85@gmail.com', '11223344'),
(3, 'Md.Saiful Islam', 1759698269, 'saifulislambappi85@gmail.com', '11223344'),
(4, 'Saiful', 15425, 'ssdfds@gmail.com', '1234565');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
