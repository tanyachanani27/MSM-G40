-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 07:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` varchar(20) NOT NULL,
  `c_name` varchar(40) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `f_med` varchar(30) NOT NULL,
  `p_date` date NOT NULL DEFAULT current_timestamp(),
  `quant_pur` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `phoneNo`, `emailid`, `f_med`, `p_date`, `quant_pur`) VALUES
('1001', 'Pranjal Markan', '7974845335', 'pranjal.markan3113@g', 'paracetamol', '2023-03-23', 15),
('1002', 'Palak Chaudhari', '7067129901', 'palak.chaudhari127@g', 'dolo 650', '2023-03-23', 15),
('1003', 'Tanya Chanani', '9648475100', 'tanya.chanani274@gma', 'vicks', '2023-03-23', 15),
('1004', 'Rashi', '7896541230', 'rashi@gmail.com', 'vicks', '2023-04-11', 23),
('1005', 'Richa', '7896554123', 'richa432@gmail.com', 'dolo 650', '2023-04-11', 12),
('1006', 'rahul', '7895412300', 'rahul8672@gmail.com', 'paracetamol', '2023-04-11', 1),
('1007', 'palak', '7894561230', 'palak213@gmail.com', 'vicks', '2023-04-11', 1),
('1008', 'reena', '8965412307', 'reena543@gmail.com', 'dolo 650', '2023-04-11', 3),
('1009', 'tanu', '7896541230', 'tanu234@gmail.com', 'dolo 650', '2023-04-11', 1),
('1010', 'Deep', '7896541230', 'deep987@gmail.com', 'paracetamol', '2023-04-11', 1),
('1011', 'Priyal', '9856732140', 'priyal876@gmail.com', 'paracetamol', '2023-04-11', 1),
('1012', 'Tina', '9874563210', 'tina564@gmail.com', 'paracetamol', '2023-04-11', 2),
('1013', 'Kanak', '7896541230', 'kanak546@gmail.com', 'paracetamol', '2023-04-11', 8),
('1014', 'geet', '9874563210', 'geet543@gmail.com', 'vicks', '2023-04-12', 2);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `m_id` varchar(20) NOT NULL,
  `m_name` varchar(40) NOT NULL,
  `m_desc` varchar(200) NOT NULL,
  `availability` varchar(25) NOT NULL,
  `m_quantity` int(4) NOT NULL,
  `price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`m_id`, `m_name`, `m_desc`, `availability`, `m_quantity`, `price`) VALUES
('1001', 'Paracetamol', 'uses: relieve mild or moderate pain, such as headaches, toothache or sprains, and reduce fevers caused by illnesses such as colds and flu.\r\nside effects: an allergic reaction, which can cause a rash a', 'available', 370, 2),
('1002', 'Temponim-fast', 'uses: to relieve pain from arthritis in certain joints such as those of the knees, ankles, feet, elbows, wrists, and hands.\r\nside effects: itching or rash at application site.', 'available', 30, 86),
('1003', 'Dolo 650', 'uses: to relieve symptoms of fever, nerve pain, and pain during periods, backache, toothache, sore throat, muscle aches, strains and sprains, common colds, migraine, long-term mild to moderate pain\r\ns', 'available', 80, 2),
('1004', 'Dipgenta', 'uses: to treats bacterial skin infections by killing and preventing the growth of bacteria.\r\nside effects: burning, redness or swelling at the site of application', 'available', 10, 105),
('1006', 'vicks', 'uses: temporarily relieves cough due to minor throat and bronchial irritation associated with the common cold.\r\n\r\nside effects: ', 'available', -50, 15);

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeper`
--

CREATE TABLE `shopkeeper` (
  `s_name` varchar(40) NOT NULL,
  `loginId` varchar(30) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopkeeper`
--

INSERT INTO `shopkeeper` (`s_name`, `loginId`, `pwd`) VALUES
('Tanya Chanani', 'tanya@27', 'tanya@27'),
('[value-1]', '[value-2]', '[value-3]'),
('admin', 'm', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `v_id` varchar(20) NOT NULL,
  `v_name` varchar(40) NOT NULL,
  `v_phone` varchar(10) NOT NULL,
  `m_quantity` int(5) NOT NULL,
  `m_supplied` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`v_id`, `v_name`, `v_phone`, `m_quantity`, `m_supplied`) VALUES
('1101', 'Palak chaudhari', '7067129901', 40, 'paracetamol'),
('1102', 'Tanya Chanani', '9648475100', 65, 'dolo 650'),
('1103', 'Pranjal Markan', '7974845335', 50, 'Crosin'),
('1104', 'Lakshita pareek', '3698521470', 52, 'Avil');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
