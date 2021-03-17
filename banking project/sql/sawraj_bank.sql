-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 07:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sawraj_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(255) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'rani', '', 721, '2021-02-15 12:41:42'),
(2, 'pradip', '', 721, '2021-02-15 12:52:43'),
(3, 'sonali ', 'sonali ', 5000, '2021-02-15 13:02:38'),
(4, 'komal', 'komal ', 5000, '2021-02-15 13:03:50'),
(5, 'pravin', 'pravin', 10000, '2021-02-15 13:08:50'),
(6, 'rani ', 'rani ', 30000, '2021-02-15 13:14:02'),
(7, 'rani', '', 2000, '2021-02-15 13:21:46'),
(8, 'rani', '', 400, '2021-02-15 13:31:51'),
(9, 'rani', '', 400, '2021-02-15 13:34:39'),
(10, 'rani', '', 20, '2021-02-15 13:35:07'),
(11, 'yogeshwari', '', 3000, '2021-02-15 20:46:17'),
(12, 'ram', '', 10000, '2021-02-19 10:26:20'),
(13, 'yogeshwari', '', 1000, '2021-02-19 10:44:48'),
(14, 'ram', '', 5000, '2021-02-19 10:46:11'),
(15, 'pradip', 'komal ', 10000, '2021-02-19 11:01:00'),
(16, 'pradip', 'rani ', 99999, '2021-02-19 11:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Pratiksha', 'pratiksha.india@gmail.com', 13232),
(2, 'sonali', 'sonali@gmail.vom', 85279),
(3, 'pradip', 'pradip.india@gmail.com', 87800),
(4, 'rani ', 'Rani@com', 15900),
(5, 'komal', 'komal@email.com', 80000),
(6, 'yogeshwari', 'yogeshwari@email.com', 10000),
(7, 'ram', 'ram@email.com', 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
