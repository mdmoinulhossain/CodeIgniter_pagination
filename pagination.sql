-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2021 at 09:51 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES
(1, 'Brielle', 'O\'Hara', 'alexandre67@example.com', '1974-05-21', '1999-09-17 13:17:28'),
(2, 'Flavio', 'Lehner', 'mafalda85@example.net', '1971-10-14', '1998-09-08 18:25:06'),
(3, 'Elmira', 'Johns', 'wellington52@example.org', '1983-11-28', '2015-02-07 09:56:43'),
(4, 'Elza', 'Mitchell', 'marisol46@example.org', '1989-03-08', '1992-08-20 18:21:39'),
(5, 'Viva', 'Greenfelder', 'era94@example.com', '1995-04-17', '2017-04-29 23:55:39'),
(6, 'Maxwell', 'VonRueden', 'mcassin@example.net', '1994-07-01', '1996-05-08 17:30:14'),
(7, 'Deontae', 'Becker', 'rory.kub@example.org', '1992-02-19', '2017-07-22 05:49:15'),
(8, 'Sylvester', 'Christiansen', 'erohan@example.org', '1990-09-03', '2004-05-08 02:15:37'),
(9, 'Torrey', 'Strosin', 'adams.luciano@example.net', '1999-10-09', '2009-08-30 15:30:44'),
(10, 'Kelli', 'Smitham', 'daniel.catalina@example.com', '2012-11-07', '1986-01-22 14:52:57'),
(11, 'Abigale', 'Schuppe', 'andreanne.hayes@example.net', '2018-02-18', '1994-05-07 00:26:36'),
(12, 'Letha', 'Gleason', 'eldridge.heaney@example.net', '2009-02-06', '1998-05-24 22:37:54'),
(13, 'Sienna', 'Upton', 'monique57@example.org', '2017-08-17', '2009-08-08 13:08:10'),
(14, 'Harley', 'Gutkowski', 'breilly@example.net', '1987-11-30', '1998-07-31 05:08:01'),
(15, 'Lois', 'Bednar', 'hpouros@example.net', '2002-02-11', '2001-07-26 09:04:16'),
(16, 'Gail', 'McDermott', 'reina.kerluke@example.com', '1987-03-30', '2004-12-15 14:38:29'),
(17, 'Sydney', 'Strosin', 'dweber@example.net', '1985-04-29', '2010-08-07 02:50:35'),
(18, 'Anne', 'Cremin', 'fritz.schmitt@example.com', '1976-02-15', '1980-03-24 23:29:41'),
(19, 'Norberto', 'Bergnaum', 'franecki.javon@example.net', '1971-03-11', '1993-03-20 17:36:25'),
(20, 'Arvid', 'Johns', 'pschultz@example.org', '2016-01-03', '1995-04-30 11:07:15'),
(21, 'Bernita', 'Fay', 'arne96@example.org', '1983-12-26', '1987-02-23 10:55:28'),
(22, 'Gonzalo', 'Gorczany', 'velma.huels@example.com', '1987-10-19', '2016-10-18 13:25:46'),
(23, 'Jackie', 'Klein', 'gretchen.howe@example.com', '1971-01-20', '2010-11-15 20:58:05'),
(24, 'Andrew', 'Kessler', 'collins.faye@example.org', '1984-08-07', '1971-12-15 02:46:42'),
(25, 'Claire', 'Hudson', 'madalyn.wunsch@example.org', '1984-12-19', '1991-07-04 08:35:53'),
(26, 'Prudence', 'Runte', 'koch.laurie@example.net', '2008-12-27', '1985-09-29 22:57:55'),
(27, 'Destinee', 'Romaguera', 'tromp.tiffany@example.com', '1978-11-09', '1997-11-09 13:58:08'),
(28, 'Marianna', 'Harvey', 'clovis.schuppe@example.com', '2013-08-28', '1990-08-06 13:29:19'),
(29, 'Eloy', 'Lakin', 'wmorissette@example.net', '1989-12-08', '1974-03-15 21:21:16'),
(30, 'Rubie', 'McClure', 'haley.louisa@example.net', '1987-09-12', '1998-07-02 04:45:36'),
(31, 'Marisa', 'Stracke', 'zachary76@example.org', '1975-05-28', '1975-03-18 18:57:35'),
(32, 'Jacey', 'Beatty', 'dahlia.hermann@example.org', '1979-12-17', '1971-01-21 10:50:58'),
(33, 'Idella', 'Ruecker', 'elda.reichert@example.com', '2009-09-15', '1996-04-19 16:27:31'),
(34, 'Dimitri', 'Bednar', 'freida.parker@example.org', '1998-12-02', '2008-12-30 17:29:57'),
(35, 'Elfrieda', 'Smitham', 'padberg.rex@example.org', '2018-07-23', '1972-04-01 01:52:25'),
(36, 'Dwight', 'Walter', 'gmosciski@example.org', '2016-08-15', '1994-07-02 05:06:55'),
(37, 'Macie', 'Fay', 'uschuppe@example.net', '1976-01-29', '2005-12-13 12:44:46'),
(38, 'Lori', 'Kshlerin', 'mhansen@example.net', '1983-04-08', '1986-01-18 10:03:52'),
(39, 'Jeffry', 'Paucek', 'alisha35@example.net', '2002-10-02', '2004-03-29 01:06:03'),
(40, 'Yvonne', 'Bernhard', 'jaqueline21@example.net', '2017-11-04', '1986-12-15 17:55:23'),
(41, 'Ludwig', 'Heathcote', 'marcelino.kirlin@example.org', '1981-02-09', '2000-08-02 14:45:48'),
(42, 'Jadyn', 'Wiegand', 'georgianna.swift@example.net', '1982-06-16', '1980-12-05 07:09:37'),
(43, 'Ferne', 'Smitham', 'melany22@example.com', '1996-12-17', '1984-11-18 13:26:27'),
(44, 'Meta', 'Corkery', 'xharber@example.com', '1972-03-31', '2007-01-19 18:07:31'),
(45, 'Toni', 'Wolf', 'wyman.crystal@example.org', '2012-04-15', '1973-06-22 06:14:37'),
(46, 'Zack', 'Luettgen', 'deion.konopelski@example.org', '2003-05-29', '2018-11-18 23:03:21'),
(47, 'Kameron', 'Dietrich', 'ronaldo.torphy@example.com', '1973-05-20', '1974-09-16 14:27:17'),
(48, 'Zetta', 'Lebsack', 'timmothy.vandervort@example.com', '1996-11-04', '2001-03-05 19:33:01'),
(49, 'Benny', 'Hane', 'leone.lueilwitz@example.net', '2008-02-02', '2006-01-27 16:12:39'),
(50, 'Evans', 'Gleason', 'ccummerata@example.org', '1999-09-09', '1990-09-26 11:50:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
