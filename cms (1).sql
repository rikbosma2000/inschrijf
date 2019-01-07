-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2019 at 12:48 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomodatie`
--

CREATE TABLE `accomodatie` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) DEFAULT NULL,
  `accomodatieType` varchar(255) DEFAULT NULL,
  `accomodatieKosten` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accomodatie`
--

INSERT INTO `accomodatie` (`id`, `evenement_id`, `accomodatieType`, `accomodatieKosten`) VALUES
(4, 49, 'hut', '99.99'),
(5, 49, 'tent', '50.00'),
(7, 51, '', '0.00'),
(10, 55, 'hut', '99.99'),
(11, 56, '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `editie`
--

CREATE TABLE `editie` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `editieType` varchar(255) NOT NULL,
  `editieKosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editie`
--

INSERT INTO `editie` (`id`, `evenement_id`, `editieType`, `editieKosten`) VALUES
(3, 49, 'zomer', '99.99'),
(4, 49, 'winter', '99.99'),
(6, 51, '', '0.00'),
(9, 55, 'zomer', '99.99'),
(10, 56, '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `evenementen`
--

CREATE TABLE `evenementen` (
  `id` int(11) NOT NULL,
  `evenement` varchar(255) NOT NULL,
  `datum_begin` varchar(255) NOT NULL,
  `datum_eind` varchar(255) NOT NULL,
  `prijs` int(55) NOT NULL,
  `max_deelnemers` int(55) NOT NULL,
  `text_extra` varchar(255) NOT NULL,
  `extra_inschrijven` int(55) NOT NULL,
  `vegetarisch` varchar(255) NOT NULL,
  `annuleringsverzekering` varchar(255) NOT NULL,
  `text_accomodatie` varchar(255) NOT NULL,
  `text_editie` varchar(255) NOT NULL,
  `text_verhuur` varchar(255) NOT NULL,
  `text_vervoer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evenementen`
--

INSERT INTO `evenementen` (`id`, `evenement`, `datum_begin`, `datum_eind`, `prijs`, `max_deelnemers`, `text_extra`, `extra_inschrijven`, `vegetarisch`, `annuleringsverzekering`, `text_accomodatie`, `text_editie`, `text_verhuur`, `text_vervoer`, `status`) VALUES
(49, 'Zwemmen in het ijsselmeer', '09-06-2019', '10-06-2019', 1500, 1000, '', 10, 'ja', 'ja', '', '', '', '', 'line-through'),
(51, 'testen op de copmputerr', '17-12-2018', '18-12-2018', 1000, 500, '', 2, '', '', '', '', '', '', 'line-through'),
(55, 'Winterelfstedentoch op rolstoel', '05-08-2018', '12-08-2018', 9999, 2000, 'dit is een test voor extra mensen', 38, 'ja', 'ja', 'test accomodaytuie', 'editie text test', 'test verhuur', 'je moet met de auto', 'online'),
(56, 'bier drinken', '28-04-2019', '05-08-2019', 98, 19, '', 0, '', '', '', '', '', 'je moet met de auto', 'online');

-- --------------------------------------------------------

--
-- Table structure for table `verhuur`
--

CREATE TABLE `verhuur` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `verhuurType` varchar(255) NOT NULL,
  `verhuurKosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verhuur`
--

INSERT INTO `verhuur` (`id`, `evenement_id`, `verhuurType`, `verhuurKosten`) VALUES
(4, 49, 'fiets', '0.00'),
(5, 49, 'stepfiets', '0.00'),
(6, 51, '', '0.00'),
(10, 55, 'fiets', '20.00'),
(11, 56, '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `vervoer`
--

CREATE TABLE `vervoer` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `vervoerType` varchar(255) NOT NULL,
  `vervoerKosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vervoer`
--

INSERT INTO `vervoer` (`id`, `evenement_id`, `vervoerType`, `vervoerKosten`) VALUES
(3, 49, 'auto', '40.00'),
(4, 49, 'bus', '20.00'),
(5, 49, 'fiets', '5.00'),
(9, 51, 'bus', '10.00'),
(10, 51, 'zelf', '0.00'),
(13, 55, 'bus', '10.00'),
(14, 56, 'bus', '0.00'),
(15, 56, 'auto', '10.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomodatie`
--
ALTER TABLE `accomodatie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_id` (`evenement_id`);

--
-- Indexes for table `editie`
--
ALTER TABLE `editie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_id` (`evenement_id`);

--
-- Indexes for table `evenementen`
--
ALTER TABLE `evenementen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verhuur`
--
ALTER TABLE `verhuur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_id` (`evenement_id`);

--
-- Indexes for table `vervoer`
--
ALTER TABLE `vervoer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_id` (`evenement_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomodatie`
--
ALTER TABLE `accomodatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `editie`
--
ALTER TABLE `editie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `evenementen`
--
ALTER TABLE `evenementen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `verhuur`
--
ALTER TABLE `verhuur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vervoer`
--
ALTER TABLE `vervoer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accomodatie`
--
ALTER TABLE `accomodatie`
  ADD CONSTRAINT `accomodatie_ibfk_1` FOREIGN KEY (`evenement_id`) REFERENCES `evenementen` (`id`);

--
-- Constraints for table `editie`
--
ALTER TABLE `editie`
  ADD CONSTRAINT `editie_ibfk_1` FOREIGN KEY (`evenement_id`) REFERENCES `evenementen` (`id`);

--
-- Constraints for table `verhuur`
--
ALTER TABLE `verhuur`
  ADD CONSTRAINT `verhuur_ibfk_1` FOREIGN KEY (`evenement_id`) REFERENCES `evenementen` (`id`);

--
-- Constraints for table `vervoer`
--
ALTER TABLE `vervoer`
  ADD CONSTRAINT `vervoer_ibfk_1` FOREIGN KEY (`evenement_id`) REFERENCES `evenementen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
