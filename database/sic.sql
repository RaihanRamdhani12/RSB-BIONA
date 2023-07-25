-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2023 at 08:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sic`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`email`, `username`, `password`) VALUES
('', 'LegionXHero', '$2y$10$4Gv.QyDwoLV4tZRRY5bV0.l6wq9.NXsVLInnhU0Q.ZKZG3p30e9oi'),
('', 'LegionXHero', '$2y$10$M4cXP7XHMq7NTCbXaEO8me9tpdjN0HVjaKX8B8HxnjH5YFSW83TuS'),
('', 'mekdi128', '$2y$10$JNHebXjB4oOu1TmlptaFwuMJHJ0RjFYrE0ff.rPvToLIFYxbObei.'),
('', 'rrqadit01', '$2y$10$kaOYYTa72IxCks1PMirSJeM0d76qh4uvj7SF2Wa.hvb5SO6kCBqyK'),
('', '', '$2y$10$dVagDGfb9GOS3IVtwJttfuAs1UyKQKPbGOoA4Yg.LgdAbbf979VRO'),
('', '', '$2y$10$u9Ek1g7TSCc9KQ8hJNuYxexh/AP/887me/aXzv4616lgeNrheECCq'),
('', '', '$2y$10$PV1S/IIWFToCYME1vC7sAedpni1XRtJr0YHw7WlMv02OJWzsL3kba'),
('', '', '$2y$10$PdXmLRkX3oIvVK.G5vX38u2ARKn90387sR7f4t4Mk8uUxfxxVV4q2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
