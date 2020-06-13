-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 13, 2020 at 09:41 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paypage2`
--

-- --------------------------------------------------------

--
-- Table structure for table `costumers`
--

DROP TABLE IF EXISTS `costumers`;
CREATE TABLE IF NOT EXISTS `costumers` (
  `id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costumers`
--

INSERT INTO `costumers` (`id`, `first_name`, `last_name`, `email`, `created_at`) VALUES
('cus_HSQZqlOxRMOTs7', 'john ', 'due', 'jon@doe.com', '2020-06-13 11:31:52'),
('cus_HSQaDD52RRIBmL', 'john ', 'due', 'jon@doe.com', '2020-06-13 11:32:51'),
('cus_HSQbFmGWdkx5By', 'john ', 'due', 'jon@doe.com', '2020-06-13 11:33:27'),
('cus_HSQcWZMWvGZcgh', 'john', 'die', 'jon@die.com', '2020-06-13 11:34:31'),
('cus_HSQeoYMvI9bRLr', 'jon', 'due', 'jon@due.com', '2020-06-13 11:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` varchar(255) NOT NULL,
  `costumer_id` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `costumer_id`, `product`, `amount`, `currency`, `status`, `created_at`) VALUES
('cus_HSQeoYMvI9bRLr', 'cus_HSQeoYMvI9bRLr', 'Intro To Angular Course', '5000', 'usd', 'succeeded', '2020-06-13 11:36:46');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
