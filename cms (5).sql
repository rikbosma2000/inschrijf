-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 10 jan 2019 om 11:19
-- Serverversie: 10.1.21-MariaDB
-- PHP-versie: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Tabelstructuur voor tabel `accomodatie`
--

CREATE TABLE `accomodatie` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) DEFAULT NULL,
  `accomodatieType` varchar(255) DEFAULT NULL,
  `accomodatieKosten` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `accomodatie`
--

INSERT INTO `accomodatie` (`id`, `evenement_id`, `accomodatieType`, `accomodatieKosten`) VALUES
(1, 48, 'hut', '99.99'),
(2, 48, 'huis', '99.99'),
(3, 48, 'tent', '99.99'),
(6, 55, 'hut', '99.99'),
(7, 55, 'huis', '99.99'),
(9, 57, '', '0.00'),
(11, 59, '', '0.00'),
(12, 60, '', '0.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `editie`
--

CREATE TABLE `editie` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `editieType` varchar(255) NOT NULL,
  `editieKosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `editie`
--

INSERT INTO `editie` (`id`, `evenement_id`, `editieType`, `editieKosten`) VALUES
(1, 48, 'zomer', '99.99'),
(2, 48, 'winter', '50.00'),
(5, 55, 'zomer', '99.99'),
(6, 55, 'winter', '50.00'),
(8, 57, '', '0.00'),
(10, 59, '', '0.00'),
(11, 60, '', '0.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `evenementen`
--

CREATE TABLE `evenementen` (
  `id` int(11) NOT NULL,
  `evenement` varchar(255) NOT NULL,
  `datum_begin` varchar(255) NOT NULL,
  `datum_eind` varchar(255) NOT NULL,
  `prijs` int(55) NOT NULL,
  `max_deelnemers` int(55) NOT NULL,
  `extra_inschrijven` int(55) NOT NULL,
  `vegetarisch` varchar(255) NOT NULL,
  `annuleringsverzekering` varchar(255) NOT NULL,
  `text_extra` varchar(255) NOT NULL,
  `text_accomodatie` varchar(255) NOT NULL,
  `text_editie` varchar(255) NOT NULL,
  `text_verhuur` varchar(255) NOT NULL,
  `text_vervoer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `evenementen`
--

INSERT INTO `evenementen` (`id`, `evenement`, `datum_begin`, `datum_eind`, `prijs`, `max_deelnemers`, `extra_inschrijven`, `vegetarisch`, `annuleringsverzekering`, `text_extra`, `text_accomodatie`, `text_editie`, `text_verhuur`, `text_vervoer`, `status`) VALUES
(48, 'Zwemmen in het ijsselmeer', '09-06-2019', '10-06-2019', 1000, 5000, 10, 'ja', 'ja', '', '', '', '', '', ''),
(55, 'Bier drinken in een kroeg in de winter', '03-12-2018', '10-12-2018', 1500, 10000, 0, '', 'ja', '', '', '', '', '', ''),
(57, 'Erik is op school', '10-01-2018', '11-01-2018', 1500, 2000, 5, '', '', 'text', '', '', '', 'text vervoer', ''),
(59, 'Testen op school', '12-12-2019', '13-12-2019', 1500, 100, 10, '', '', 'text testers', '', '', '', 'test vervoer', 'online'),
(60, 'winetrelfstedentocht', '09-06-2019', '10-06-2019', 400, 18, 0, '', '', '', '', 'd-none', '', 'test vervoer', 'online');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `verhuur`
--

CREATE TABLE `verhuur` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `verhuurType` varchar(255) NOT NULL,
  `verhuurKosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `verhuur`
--

INSERT INTO `verhuur` (`id`, `evenement_id`, `verhuurType`, `verhuurKosten`) VALUES
(1, 48, 'fiets', '0.00'),
(2, 48, 'bike', '0.00'),
(3, 48, 'stepfiets', '0.00'),
(6, 55, 'stepfiets', '20.00'),
(7, 55, 'fiets', '10.00'),
(9, 57, '', '0.00'),
(11, 59, '', '0.00'),
(12, 60, '', '0.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vervoer`
--

CREATE TABLE `vervoer` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `vervoerType` varchar(255) NOT NULL,
  `Vervoerkosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `vervoer`
--

INSERT INTO `vervoer` (`id`, `evenement_id`, `vervoerType`, `Vervoerkosten`) VALUES
(1, 48, 'auto', '50.00'),
(2, 48, 'bus', '20.00'),
(16, 55, 'zelf', '20.00'),
(17, 55, 'auto', '0.00'),
(19, 57, 'bus', '5.00'),
(22, 59, 'bus', '20.00'),
(23, 60, 'auto', '99.99'),
(24, 60, 'bus', '99.99');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `accomodatie`
--
ALTER TABLE `accomodatie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_id` (`evenement_id`);

--
-- Indexen voor tabel `editie`
--
ALTER TABLE `editie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_id` (`evenement_id`);

--
-- Indexen voor tabel `evenementen`
--
ALTER TABLE `evenementen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `verhuur`
--
ALTER TABLE `verhuur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_id` (`evenement_id`);

--
-- Indexen voor tabel `vervoer`
--
ALTER TABLE `vervoer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_id` (`evenement_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `accomodatie`
--
ALTER TABLE `accomodatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT voor een tabel `editie`
--
ALTER TABLE `editie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT voor een tabel `evenementen`
--
ALTER TABLE `evenementen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT voor een tabel `verhuur`
--
ALTER TABLE `verhuur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT voor een tabel `vervoer`
--
ALTER TABLE `vervoer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `accomodatie`
--
ALTER TABLE `accomodatie`
  ADD CONSTRAINT `accomodatie_ibfk_1` FOREIGN KEY (`evenement_id`) REFERENCES `evenementen` (`id`);

--
-- Beperkingen voor tabel `editie`
--
ALTER TABLE `editie`
  ADD CONSTRAINT `editie_ibfk_1` FOREIGN KEY (`evenement_id`) REFERENCES `evenementen` (`id`);

--
-- Beperkingen voor tabel `verhuur`
--
ALTER TABLE `verhuur`
  ADD CONSTRAINT `verhuur_ibfk_1` FOREIGN KEY (`evenement_id`) REFERENCES `evenementen` (`id`);

--
-- Beperkingen voor tabel `vervoer`
--
ALTER TABLE `vervoer`
  ADD CONSTRAINT `vervoer_ibfk_1` FOREIGN KEY (`evenement_id`) REFERENCES `evenementen` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
