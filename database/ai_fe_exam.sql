-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2022 at 12:29 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_fe_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `researcher` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `editor` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `category` int(11) NOT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `for_editing` tinyint(1) DEFAULT NULL,
  `media_date` datetime DEFAULT NULL,
  `source_date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `researcher`, `writer`, `editor`, `rating`, `category`, `published`, `for_editing`, `media_date`, `source_date`, `createdAt`, `updatedAt`) VALUES
(1, 'Wing DCT a Good Long-Distance Tourer', 'Lim Datahan', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 1, 0, 1, '2021-12-21 14:23:55', '2022-02-01 14:22:07', '2022-02-11 06:07:45', '2022-02-11 06:07:45'),
(2, 'Case IH Unvells Tier 5-Compliant Puma Tractors', 'Sofia Gulle', 'Spencer Macabudbud', 'Marc Pangan', 3, 2, 0, 1, '2022-01-17 14:23:53', '2022-02-01 14:22:12', '2022-02-11 06:11:51', '2022-02-11 06:11:51'),
(3, 'Kawasaki to Expand Boonville Production Facility to Meet Increased Demand', 'Neil Lim', 'Spencer Macabudbud', 'Dencel John Itable', 4, 3, 0, 1, '2022-02-02 14:23:51', '2022-02-01 14:22:17', '2022-02-11 06:13:19', '2022-02-11 06:13:19'),
(4, 'Specialty Equipment Market Association Names Finalists For 2021 SEMA Awards', 'Sofia Gulle', 'Marc Pangan', '', 3, 1, 0, 1, '2022-01-31 14:23:48', '2022-02-01 14:22:20', '2022-02-11 06:14:34', '2022-02-11 06:14:34'),
(5, 'Volvo launches New Electric Heavy-Duty Equipment', 'Sofia Gulle', 'Marc Pangan', '', 3, 2, 0, 1, '2022-01-30 14:23:46', '2022-02-01 14:22:23', '2022-02-11 06:15:22', '2022-02-11 06:15:22'),
(6, 'VIDEO: Kawasaki Confirms Z650 RS.Z900 RS SE for Canada', 'Sofia Gulle', 'Dencel Itable', '', 3, 1, 0, 1, '2022-01-16 14:23:44', '2022-02-01 14:22:24', '2022-02-11 06:16:23', '2022-02-11 06:16:23'),
(7, 'Bosch, BorgWarner Support VDI Congress Dritev', 'Sofia Gulle', 'Dencel Itable', 'Carolyn Toston', 3, 1, 0, 1, '2022-01-24 14:23:42', '2022-02-01 14:22:26', '2022-02-11 06:17:12', '2022-02-11 06:17:12'),
(8, 'CFO Bob Hickson Departs Oregon Tool', 'Sofia Gulle', 'Dencel Itable', 'Rosellers Bojosers', 3, 2, 0, 1, '2022-01-22 14:23:40', '2022-02-01 14:22:28', '2022-02-11 06:18:03', '2022-02-11 06:18:03'),
(9, 'Deeside Golf Club bolsters Toro fleet', 'Sofia Gulle', '', '', 3, 1, 0, 1, '2022-01-08 14:23:38', '2022-02-01 14:22:30', '2022-02-11 06:18:56', '2022-02-11 06:18:56'),
(10, 'Deeside Golf Club bolsters Toro fleet 1', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 1, 0, 1, '2022-01-04 14:23:36', '2022-02-01 14:22:32', '2022-02-11 06:19:23', '2022-02-11 06:19:23'),
(11, 'Deeside Golf Club bolsters Toro fleet 2', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 3, 0, 1, '2022-01-12 14:23:34', '2022-02-01 14:22:33', '2022-02-11 06:19:25', '2022-02-11 06:19:25'),
(12, 'Deeside Golf Club bolsters Toro fleet 3', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 2, 0, 1, '2022-01-20 14:23:31', '2022-02-01 14:22:35', '2022-02-11 06:19:27', '2022-02-11 06:19:27'),
(13, 'Deeside Golf Club bolsters Toro fleet 4', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 3, 0, 1, '2022-01-13 14:23:29', '2022-02-01 14:22:36', '2022-02-11 06:19:29', '2022-02-11 06:19:29'),
(14, 'Deeside Golf Club bolsters Toro fleet 5', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 2, 0, 1, '2022-01-18 14:23:26', '2022-02-01 14:22:38', '2022-02-11 06:19:31', '2022-02-11 06:19:31'),
(15, 'Deeside Golf Club bolsters Toro fleet 6', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 1, 0, 1, '2022-01-19 14:23:24', '2022-02-01 14:22:40', '2022-02-11 06:19:34', '2022-02-11 06:19:34'),
(16, 'Deeside Golf Club bolsters Toro fleet 7', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 2, 0, 1, '2022-01-19 14:23:22', '2022-02-01 14:22:42', '2022-02-11 06:19:37', '2022-02-11 06:19:37'),
(17, 'Deeside Golf Club bolsters Toro fleet 8', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 4, 0, 1, '2022-01-12 14:23:20', '2022-02-01 14:22:43', '2022-02-11 06:19:40', '2022-02-11 06:19:40'),
(18, 'Deeside Golf Club bolsters Toro fleet 9', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 1, 0, 1, '2022-01-20 14:23:18', '2022-02-01 14:22:45', '2022-02-11 06:19:43', '2022-02-11 06:19:43'),
(19, 'Deeside Golf Club bolsters Toro fleet 10', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 2, 0, 1, '2022-01-12 14:23:16', '2022-02-01 14:22:46', '2022-02-11 06:19:46', '2022-02-11 06:19:46'),
(20, 'Deeside Golf Club bolsters Toro fleet 11', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 3, 0, 1, '2022-01-12 14:23:13', '2022-02-01 14:22:48', '2022-02-11 06:19:49', '2022-02-11 06:19:49'),
(21, 'Deeside Golf Club bolsters Toro fleet 12', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 3, 0, 1, '2022-01-13 14:23:10', '2022-02-02 14:22:50', '2022-02-11 06:19:51', '2022-02-11 06:19:51'),
(22, 'Deeside Golf Club bolsters Toro fleet 13', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 2, 0, 1, '2022-01-13 14:23:08', '2022-02-03 14:22:51', '2022-02-11 06:19:54', '2022-02-11 06:19:54'),
(23, 'Deeside Golf Club bolsters Toro fleet 14', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 2, 0, 1, '2022-01-06 14:23:06', '2022-02-04 14:22:53', '2022-02-11 06:19:57', '2022-02-11 06:19:57'),
(24, 'Deeside Golf Club bolsters Toro fleet 15', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 4, 0, 1, '2022-01-05 14:23:01', '2022-02-01 14:22:55', '2022-02-11 06:19:59', '2022-02-11 06:19:59'),
(25, 'Deeside Golf Club bolsters Toro fleet 16', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 4, 0, 1, '2022-02-03 14:22:58', '2022-02-02 14:22:56', '2022-02-11 06:20:02', '2022-02-11 06:20:02'),
(26, 'Deeside Golf Club bolsters Toro fleet 17', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 3, 1, 0, NULL, NULL, NULL, '2022-02-11 06:20:05', '2022-02-11 06:20:05'),
(27, 'Deeside Golf Club bolsters Toro fleet 18', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 4, 1, 0, NULL, NULL, NULL, '2022-02-11 06:20:10', '2022-02-11 06:20:10'),
(28, 'Deeside Golf Club bolsters Toro fleet 19', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 2, 1, 0, NULL, NULL, NULL, '2022-02-11 06:20:15', '2022-02-11 06:20:15'),
(29, 'Deeside Golf Club bolsters Toro fleet 20', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 5, 1, 0, NULL, NULL, NULL, '2022-02-11 06:20:21', '2022-02-11 06:20:21'),
(30, 'Deeside Golf Club bolsters Toro fleet 20', 'Sofia Gulle', 'Spencer Macabudbud', 'Rosellers Bojosers', 5, 1, 0, NULL, NULL, NULL, '2022-02-11 07:40:46', '2022-02-11 07:40:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
