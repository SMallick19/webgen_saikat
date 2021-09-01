-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2021 at 08:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phase2`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `add_by_user` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `quantity`, `price`, `description`, `add_by_user`, `created_at`, `updated_at`) VALUES
(1, 'undefined', '1', 100, 'abc', 'saikat', '2021-09-01 23:31:52', '2021-09-01 23:32:15'),
(2, 'undefined', '2', 100, 'abc', 'saikat', '2021-09-01 23:31:52', '2021-09-01 23:32:15'),
(3, 'undefined', '1', 100, 'abc', 'saikat', '2021-09-01 23:31:52', '2021-09-01 23:32:15'),
(4, 'undefined', '1', 100, 'abc', 'saikat', '2021-09-01 23:35:05', '2021-09-01 23:35:05'),
(5, 'undefined', '1', 100, 'abc', 'saikat', '2021-09-01 23:35:25', '2021-09-01 23:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`) VALUES
(1, 'Saikat Mallick', '', ''),
(2, '', '', 'Saikat Mallick'),
(3, '', '', 'Saikat Mallick'),
(4, 'ijk@gmail.com', '12', 'Saikat Mallick'),
(5, 'ijk@gmail.com', '12', 'Saikat Mallick'),
(6, 'ijk@gmail.com', '12', 'Saikat Mallick'),
(7, 'ijk@gmail.com', '12', 'Saikat Mallick'),
(8, 'ijk@gmail.com', 'qw', 'Saikat Mallick'),
(9, 'ijk@gmail.com', '12', 'Saikat Mallick'),
(10, 'ijk@gmail.com', '12', 'Saikat Mallick'),
(11, 'ijk@gmail.com', '123', 'Saikat Mallick');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
