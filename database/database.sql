-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2021 at 02:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `bd_id` int(11) NOT NULL,
  `bd_name` varchar(99) DEFAULT NULL,
  `bd_sex` varchar(99) DEFAULT NULL,
  `bd_age` int(11) DEFAULT NULL,
  `bd_group` varchar(99) DEFAULT NULL,
  `bd_reg_date` datetime DEFAULT current_timestamp(),
  `bd_phno` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`bd_id`, `bd_name`, `bd_sex`, `bd_age`, `bd_group`, `bd_reg_date`, `bd_phno`) VALUES
(1, 'Phung Viet Duc', 'nam', 20, 'O', '2021-10-21 07:45:03', '03573573'),
(2, 'Nguyen Van A', 'nam', 18, 'A', '2021-10-21 07:45:03', '0102030405');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`bd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `bd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
