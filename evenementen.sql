-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 jan 2019 om 09:24
-- Serverversie: 10.1.21-MariaDB
-- PHP-versie: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evenementen`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `computer`
--

CREATE TABLE `computer` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `extra_inschrijvers` varchar(255) DEFAULT NULL,
  `vervoer` varchar(255) DEFAULT NULL,
  `vegetarisch` varchar(255) DEFAULT NULL,
  `editie` varchar(255) DEFAULT NULL,
  `accomodatie` varchar(255) DEFAULT NULL,
  `annuleringsverzekering` varchar(255) DEFAULT NULL,
  `verhuur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `computer`
--

INSERT INTO `computer` (`id`, `naam`, `email`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `extra_inschrijvers`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`) VALUES
(6, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân', '15', '9047 HH', 'Minnertsga', 'none', 'auto', 'none', 'zomer', 'hut', 'none', 'stepfiets'),
(7, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', 'none', 'b', '', '', '', 'none', ''),
(8, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', 'none', 'a', '', 'zomer', 'blokhut ', 'none', 'stepfiets'),
(9, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', 'none', 'auto', '', 'zomer', 'blokhut ', 'none', 'stepfiets');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `eten_sneeuw`
--

CREATE TABLE `eten_sneeuw` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `extra_inschrijvers` varchar(255) DEFAULT NULL,
  `vervoer` varchar(255) DEFAULT NULL,
  `vegetarisch` varchar(255) DEFAULT NULL,
  `editie` varchar(255) DEFAULT NULL,
  `accomodatie` varchar(255) DEFAULT NULL,
  `annuleringsverzekering` varchar(255) DEFAULT NULL,
  `verhuur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `eten_sneeuw`
--

INSERT INTO `eten_sneeuw` (`id`, `naam`, `email`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `extra_inschrijvers`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`) VALUES
(1, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', 'none', 'bus', 'none', 'zomer', '', 'none', ''),
(2, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', 'none', 'bus', '', 'zomer', '', 'none', ''),
(3, 'Marrit Zijlstra', 'marritaukje@outlook.com', 'Holprijp', '5', '9786 GH', 'Tzum', 'none', 'bus', 'on', 'zomer', '', 'none', ''),
(4, 'Piet', 'piet@outlook.com', 'Douwe Kalmaleane ', '6', '8756 KG', 'Leeuwarden', 'none', 'zelf', 'no', 'zomer', '', 'none', ''),
(5, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân, 15', '6', '9047 HH', 'Minnertsga', 'none', '', 'yes', 'zomer', '', 'none', ''),
(6, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', 'none', '', '', '', '', 'none', ''),
(7, 'Rik Bosma', 'rikbosma@outlook.com', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', 'none', '', '', '', '', 'none', ''),
(8, 'Marrit Zijlstra', 'marritaukje@outlook.com', 'Holprijp', '5', '9786 GH', 'Tzum', 'none', '', '', '', '', 'none', ''),
(9, 'Marrit Zijlstra', 'marritaukje@outlook.com', 'Holprijp', '5', '9786 GH', 'Tzum', 'none', '', '', '', '', 'none', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `open_dag`
--

CREATE TABLE `open_dag` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `extra_inschrijvers` varchar(255) DEFAULT NULL,
  `vervoer` varchar(255) DEFAULT NULL,
  `vegetarisch` varchar(255) DEFAULT NULL,
  `editie` varchar(255) DEFAULT NULL,
  `accomodatie` varchar(255) DEFAULT NULL,
  `annuleringsverzekering` varchar(255) DEFAULT NULL,
  `verhuur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `schaatsen`
--

CREATE TABLE `schaatsen` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `extra_inschrijvers` varchar(255) DEFAULT NULL,
  `vervoer` varchar(255) DEFAULT NULL,
  `vegetarisch` varchar(255) DEFAULT NULL,
  `editie` varchar(255) DEFAULT NULL,
  `accomodatie` varchar(255) DEFAULT NULL,
  `annuleringsverzekering` varchar(255) DEFAULT NULL,
  `verhuur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wesley`
--

CREATE TABLE `wesley` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `extra_inschrijvers` varchar(255) DEFAULT NULL,
  `vervoer` varchar(255) DEFAULT NULL,
  `vegetarisch` varchar(255) DEFAULT NULL,
  `editie` varchar(255) DEFAULT NULL,
  `accomodatie` varchar(255) DEFAULT NULL,
  `annuleringsverzekering` varchar(255) DEFAULT NULL,
  `verhuur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `wesley`
--

INSERT INTO `wesley` (`id`, `naam`, `email`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `extra_inschrijvers`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`) VALUES
(1, 'wesley', 'wesley@outlook.com', 'boerenkutstraat', '5', '5627 GH', 'Boerenkut', 'none', 'auto', 'no', 'zomer', 'hut', 'none', 'fiets');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `eten_sneeuw`
--
ALTER TABLE `eten_sneeuw`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `open_dag`
--
ALTER TABLE `open_dag`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `schaatsen`
--
ALTER TABLE `schaatsen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `wesley`
--
ALTER TABLE `wesley`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `computer`
--
ALTER TABLE `computer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT voor een tabel `eten_sneeuw`
--
ALTER TABLE `eten_sneeuw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT voor een tabel `open_dag`
--
ALTER TABLE `open_dag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `schaatsen`
--
ALTER TABLE `schaatsen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `wesley`
--
ALTER TABLE `wesley`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
