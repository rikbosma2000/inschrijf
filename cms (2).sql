-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 10 dec 2018 om 11:42
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
  `type` varchar(255) DEFAULT NULL,
  `kosten` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `accomodatie`
--

INSERT INTO `accomodatie` (`id`, `evenement_id`, `type`, `kosten`) VALUES
(1, 48, 'hut', '99.99'),
(2, 48, 'huis', '99.99'),
(3, 48, 'tent', '99.99'),
(4, 49, 'hut', '99.99'),
(5, 49, 'tent', '50.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `editie`
--

CREATE TABLE `editie` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `kosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `editie`
--

INSERT INTO `editie` (`id`, `evenement_id`, `type`, `kosten`) VALUES
(1, 48, 'zomer', '99.99'),
(2, 48, 'winter', '50.00'),
(3, 49, 'zomer', '99.99'),
(4, 49, 'winter', '99.99');

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
  `verhuur` varchar(255) NOT NULL,
  `verhuur_costs` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `evenementen`
--

INSERT INTO `evenementen` (`id`, `evenement`, `datum_begin`, `datum_eind`, `prijs`, `max_deelnemers`, `extra_inschrijven`, `vegetarisch`, `annuleringsverzekering`, `verhuur`, `verhuur_costs`) VALUES
(48, 'Zwemmen in het ijsselmeer', '09-06-2019', '10-06-2019', 1000, 5000, 10, 'ja', 'ja', '', 0),
(49, 'Zwemmen in het ijsselmeer', '09-06-2019', '10-06-2019', 1500, 1000, 10, 'ja', 'ja', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `verhuur`
--

CREATE TABLE `verhuur` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `kosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `verhuur`
--

INSERT INTO `verhuur` (`id`, `evenement_id`, `type`, `kosten`) VALUES
(1, 48, 'fiets', '0.00'),
(2, 48, 'bike', '0.00'),
(3, 48, 'stepfiets', '0.00'),
(4, 49, 'fiets', '0.00'),
(5, 49, 'stepfiets', '0.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vervoer`
--

CREATE TABLE `vervoer` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `kosten` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `vervoer`
--

INSERT INTO `vervoer` (`id`, `evenement_id`, `type`, `kosten`) VALUES
(1, 48, 'auto', '50.00'),
(2, 48, 'bus', '20.00'),
(3, 49, 'auto', '40.00'),
(4, 49, 'bus', '20.00'),
(5, 49, 'fiets', '5.00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `editie`
--
ALTER TABLE `editie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `evenementen`
--
ALTER TABLE `evenementen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT voor een tabel `verhuur`
--
ALTER TABLE `verhuur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `vervoer`
--
ALTER TABLE `vervoer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
