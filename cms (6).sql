-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 25 feb 2019 om 11:23
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
  `accomodatieKosten` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `accomodatie`
--

INSERT INTO `accomodatie` (`id`, `evenement_id`, `accomodatieType`, `accomodatieKosten`) VALUES
(74, 109, '', ''),
(79, 113, '', ''),
(80, 114, '', ''),
(81, 115, '', ''),
(82, 116, '', ''),
(83, 117, '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `editie`
--

CREATE TABLE `editie` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `editieType` varchar(255) NOT NULL,
  `editieKosten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `editie`
--

INSERT INTO `editie` (`id`, `evenement_id`, `editieType`, `editieKosten`) VALUES
(76, 109, '', ''),
(81, 113, '', ''),
(82, 114, '', ''),
(83, 115, '', ''),
(84, 116, '', ''),
(85, 117, '', '');

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
  `vegetarisch` varchar(255) NOT NULL,
  `annuleringsverzekering` varchar(255) NOT NULL,
  `text_extra` varchar(255) NOT NULL,
  `text_accomodatie` varchar(255) NOT NULL,
  `text_editie` varchar(255) NOT NULL,
  `text_verhuur` varchar(255) NOT NULL,
  `text_vervoer` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `evenementen`
--

INSERT INTO `evenementen` (`id`, `evenement`, `datum_begin`, `datum_eind`, `prijs`, `max_deelnemers`, `vegetarisch`, `annuleringsverzekering`, `text_extra`, `text_accomodatie`, `text_editie`, `text_verhuur`, `text_vervoer`, `status`, `table_name`) VALUES
(109, 'Opstapbus Minnertsga', '04-02-2019', '04-02-2019', 900, 24, 'd-none', 'd-none', 'text extra mensen', 'd-none', 'd-none', 'd-none', 'd-none', 'disabled', 'OpstapbusMinnertsga'),
(113, 'Opstapbus Goutum', '01-01-2019', '01-01-2019', 900, 100, 'd-none', 'd-none', 'Wilt u voor extra mensen inschrijven?', 'd-none', 'd-none', 'd-none', 'd-none', 'online', 'OpstapbusGoutum'),
(114, 'bryan is ongekend', '01-01-2019', '02-01-2019', 900, 90, 'd-none', 'd-none', 'text extra mensen', 'd-none', 'd-none', 'd-none', 'd-none', 'online', 'bryanisongekend'),
(115, 'Oefenen op de computer', '01-01-2019', '02-01-2019', 900, 10, 'd-none', 'd-none', 'text extra mensen', 'd-none', 'd-none', 'd-none', 'd-none', 'online', 'Oefenenopdecomputer'),
(116, 'Opstapbus Tzummarum', '07-02-2019', '07-02-2019', 500, 10, 'd-none', 'd-none', 'Wilt u voor extra mensen inschrijven?', 'd-none', 'd-none', 'd-none', 'd-none', 'online', 'OpstapbusTzummarum'),
(117, 'Opstapbus Groningen', '01-01-2019', '01-01-2019', 1500, 10, 'ja', 'd-none', 'Wilt u voor extra mensen inschrijven?', 'd-none', 'd-none', 'd-none', 'd-none', 'online', 'OpstapbusGroningen');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `verhuur`
--

CREATE TABLE `verhuur` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `verhuurType` varchar(255) NOT NULL,
  `verhuurKosten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `verhuur`
--

INSERT INTO `verhuur` (`id`, `evenement_id`, `verhuurType`, `verhuurKosten`) VALUES
(73, 109, '', ''),
(80, 113, '', ''),
(81, 114, '', ''),
(82, 115, '', ''),
(83, 116, '', ''),
(84, 117, '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vervoer`
--

CREATE TABLE `vervoer` (
  `id` int(11) NOT NULL,
  `evenement_id` int(11) NOT NULL,
  `vervoerType` varchar(255) NOT NULL,
  `vervoerKosten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `vervoer`
--

INSERT INTO `vervoer` (`id`, `evenement_id`, `vervoerType`, `vervoerKosten`) VALUES
(100, 109, '', ''),
(106, 113, '', ''),
(107, 114, '', ''),
(108, 115, '', ''),
(109, 116, '', ''),
(110, 117, '', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT voor een tabel `editie`
--
ALTER TABLE `editie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT voor een tabel `evenementen`
--
ALTER TABLE `evenementen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT voor een tabel `verhuur`
--
ALTER TABLE `verhuur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT voor een tabel `vervoer`
--
ALTER TABLE `vervoer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
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
