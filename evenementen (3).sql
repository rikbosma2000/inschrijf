-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 mrt 2019 om 12:02
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
-- Tabelstructuur voor tabel `alle_inschrijvers`
--

CREATE TABLE `alle_inschrijvers` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefoonnummer` varchar(255) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `extra_inschrijvers` int(11) DEFAULT NULL,
  `vervoer` varchar(255) DEFAULT NULL,
  `vegetarisch` varchar(255) DEFAULT NULL,
  `editie` varchar(255) DEFAULT NULL,
  `accomodatie` varchar(255) DEFAULT NULL,
  `annuleringsverzekering` varchar(255) DEFAULT NULL,
  `verhuur` varchar(255) DEFAULT NULL,
  `prijs` decimal(19,2) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) NOT NULL,
  `type_inschrijving` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `alle_inschrijvers`
--

INSERT INTO `alle_inschrijvers` (`id`, `number`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `extra_inschrijvers`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `table_name`, `type_inschrijving`) VALUES
(2, '849c3998f6425f2b04bfdaf2ea41ce45', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', '900.00', '849c3998f6425f2b04bfdaf2ea41ce45', 'bryanisongekend ', 'inschrijver'),
(3, '09429e4e9867f6327b57a61dae12b5e4', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', '900.00', '09429e4e9867f6327b57a61dae12b5e4', 'bryanisongekend ', 'inschrijver'),
(4, '82c430bea9d1b4c699d5055d057cf595', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '1800.00', '82c430bea9d1b4c699d5055d057cf595', 'bryanisongekend ', 'inschrijver'),
(5, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237856', 'Holprijp', '6', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82c430bea9d1b4c699d5055d057cf595', 'bryanisongekend ', 'deelnemer'),
(6, '3755a5ac3a56282bc023f8a58cf25022', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '7500.00', '3755a5ac3a56282bc023f8a58cf25022', 'OpstapbusGroningen ', 'inschrijver'),
(7, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645896745', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3755a5ac3a56282bc023f8a58cf25022', 'OpstapbusGroningen ', 'deelnemer'),
(8, NULL, 'Wesley', 'wesley@outlook.com', '0645237856', 'Pallasweg', '14', '9036 GF', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3755a5ac3a56282bc023f8a58cf25022', 'OpstapbusGroningen ', 'deelnemer'),
(9, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645231234', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3755a5ac3a56282bc023f8a58cf25022', 'OpstapbusGroningen ', 'deelnemer'),
(10, NULL, 'Wesley', 'wesley@outlook.com', '0645237856', 'Pallasweg', '14', '9046 FD', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3755a5ac3a56282bc023f8a58cf25022', 'OpstapbusGroningen ', 'deelnemer'),
(11, 'b8f3d300fa28f762ad3f84d63aaaeaac', 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '440.00', 'b8f3d300fa28f762ad3f84d63aaaeaac', 'Zwemmeninhetijsselmeer ', 'inschrijver'),
(12, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0645237856', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b8f3d300fa28f762ad3f84d63aaaeaac', 'Zwemmeninhetijsselmeer ', 'deelnemer'),
(13, NULL, 'Erik', 'erik@outlook.com', '0646426781', 'Stinzelân', '15', '9047 HH', 'Minnertsgq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b8f3d300fa28f762ad3f84d63aaaeaac', 'Zwemmeninhetijsselmeer ', 'deelnemer'),
(14, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237856', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b8f3d300fa28f762ad3f84d63aaaeaac', 'Zwemmeninhetijsselmeer ', 'deelnemer'),
(15, NULL, 'Erik', 'erik@outlook.com', '0646426781', 'Stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b8f3d300fa28f762ad3f84d63aaaeaac', 'Zwemmeninhetijsselmeer ', 'deelnemer'),
(16, '8e525421feb5cedecb5dec4e5e6590dc', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '264.00', '8e525421feb5cedecb5dec4e5e6590dc', 'Zwemmeninhetijsselmeer ', 'inschrijver'),
(17, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8e525421feb5cedecb5dec4e5e6590dc', 'Zwemmeninhetijsselmeer ', 'deelnemer'),
(18, NULL, 'wesley', 'wesley@outlook.com', '0645326745', 'Paalsweg', '13', '9047 HH', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8e525421feb5cedecb5dec4e5e6590dc', 'Zwemmeninhetijsselmeer ', 'deelnemer'),
(19, 'f766914d54d42b0c1f2b24fbabb9d67b', 'Piet', 'piet@outlook.com', '0645327856', 'Douwe Kalmaleane, 1, 1', '1', '8756 KG', 'Leeuwarden', NULL, '', '', '', '', 'none', '', '2700.00', 'f766914d54d42b0c1f2b24fbabb9d67b', 'bryanisongekend ', 'inschrijver'),
(20, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân ', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f766914d54d42b0c1f2b24fbabb9d67b', 'bryanisongekend ', 'deelnemer'),
(21, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237856', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f766914d54d42b0c1f2b24fbabb9d67b', 'bryanisongekend ', 'deelnemer'),
(22, 'e5b87097a8e65fe45a8303ddb09e206b', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', '2700.00', 'e5b87097a8e65fe45a8303ddb09e206b', 'bryanisongekend ', 'inschrijver'),
(23, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '06452367423', 'stinzelân, 15, 15, 15, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e5b87097a8e65fe45a8303ddb09e206b', 'bryanisongekend ', 'deelnemer'),
(24, NULL, 'Piet', 'piet@outlook.com', '0654236745', 'Pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e5b87097a8e65fe45a8303ddb09e206b', 'bryanisongekend ', 'deelnemer'),
(25, 'd671451b7e288402aa6fead56bd35234', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '1800.00', 'd671451b7e288402aa6fead56bd35234', 'bryanisongekend ', 'inschrijver'),
(26, NULL, 'Piet', 'piet@outlook.com', '0645237856', 'Douwe Kalmaleane', '1', '8756 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd671451b7e288402aa6fead56bd35234', 'bryanisongekend ', 'deelnemer'),
(27, '252e88063337ad752177a14f256b0021', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', '1800.00', '252e88063337ad752177a14f256b0021', 'OpstapbusGoutum ', 'inschrijver'),
(28, NULL, 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '252e88063337ad752177a14f256b0021', 'OpstapbusGoutum ', 'deelnemer'),
(29, 'b6be56ff384f200de03e613e77e10e34', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '1800.00', 'b6be56ff384f200de03e613e77e10e34', 'OpstapbusGoutum ', 'inschrijver'),
(30, NULL, 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b6be56ff384f200de03e613e77e10e34', 'OpstapbusGoutum ', 'deelnemer'),
(31, 'c2e05efb6725a0ef7bd85a0ae77f5221', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '1800.00', 'c2e05efb6725a0ef7bd85a0ae77f5221', 'OpstapbusGoutum ', 'inschrijver'),
(32, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645236745', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c2e05efb6725a0ef7bd85a0ae77f5221', 'OpstapbusGoutum ', 'deelnemer'),
(33, '9335d16265dd8b1b1ce16d7f70aeb941', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', '900.00', '9335d16265dd8b1b1ce16d7f70aeb941', 'OpstapbusGoutum ', 'inschrijver'),
(34, 'ff1b048ab19136114aca34c9347979cb', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', '900.00', 'ff1b048ab19136114aca34c9347979cb', 'OpstapbusGoutum ', 'inschrijver'),
(35, '92c9bef6eff47fcdf44ecd1e6f142682', 'Piet', 'piet@outlook.com', '0645327856', 'Douwe Kalmaleane', '1', '8756 KG', 'Leeuwarden', NULL, '', '', '', '', 'none', '', '900.00', '92c9bef6eff47fcdf44ecd1e6f142682', 'OpstapbusGoutum ', 'inschrijver'),
(36, '94e6da682256d3c2a5a78025a1dcfa74', 'Piet', 'piet@outlook.com', '0645327856', 'Douwe Kalmaleane', '1', '8756 KG', 'Leeuwarden', NULL, '', '', '', '', 'none', '', '1800.00', '94e6da682256d3c2a5a78025a1dcfa74', 'OpstapbusGoutum ', 'inschrijver'),
(37, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94e6da682256d3c2a5a78025a1dcfa74', 'OpstapbusGoutum ', 'deelnemer'),
(38, '6540f6ffc2838caab9e0eba4c30ad7d8', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '900.00', '6540f6ffc2838caab9e0eba4c30ad7d8', 'OpstapbusGoutum ', 'inschrijver'),
(39, 'df62a0ec5558467c98ee8e2186a504ae', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '900.00', 'df62a0ec5558467c98ee8e2186a504ae', 'OpstapbusGoutum ', 'inschrijver'),
(40, '256a691661cf5a9a270dcc00eb98bd4a', 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '1800.00', '256a691661cf5a9a270dcc00eb98bd4a', 'bryanisongekend ', 'inschrijver'),
(41, NULL, 'wesley', 'wesley@outlook.com', '0645674523', 'pallaweg', '5', '5627 GH', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '256a691661cf5a9a270dcc00eb98bd4a', 'bryanisongekend ', 'deelnemer'),
(42, '01254b843b5c32501651f5fa289deed2', 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '1800.00', '01254b843b5c32501651f5fa289deed2', 'bryanisongekend ', 'inschrijver'),
(43, NULL, 'Karin Pitstra', 'karinpitstra@live.nl', '0645237856', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01254b843b5c32501651f5fa289deed2', 'bryanisongekend ', 'deelnemer'),
(44, 'ff0b4f3d73e514388c5cc8534ebb84aa', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', '1500.00', 'ff0b4f3d73e514388c5cc8534ebb84aa', 'Zwemmeninhetijsselmeer ', 'inschrijver'),
(45, '05ca4505a69780fabc086595979086ec', 'Piet', 'piet@outlook.com', '0645327856', 'Douwe Kalmaleane', '1', '8756 KG', 'Leeuwarden', NULL, '', '', '', '', 'none', '', '900.00', '05ca4505a69780fabc086595979086ec', 'OpstapbusGoutum ', 'inschrijver'),
(46, 'dc63342c69362e455db91f5ff2361e44', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '900.00', 'dc63342c69362e455db91f5ff2361e44', 'Opstapbustest2 ', 'inschrijver'),
(47, '1be84256c2a8a044bf000a54d17cf7b5', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '900.00', '1be84256c2a8a044bf000a54d17cf7b5', 'OpstapbusGoutum ', 'inschrijver'),
(48, 'e334cd211c166adf0dd627906a98411a', 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat', '5', '5627 GH', 'Boerenkut', NULL, '', '', '', '', 'none', '', '1800.00', 'e334cd211c166adf0dd627906a98411a', 'bryanisongekend ', 'inschrijver'),
(49, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237856', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e334cd211c166adf0dd627906a98411a', 'bryanisongekend ', 'deelnemer'),
(50, '946b93ae226bb35a2fd5ce5ec91d2f7c', 'wesley', 'wesley@outlook.com', '0654873624', 'Pallasweg', '4', '5627 GH', 'Drachten', NULL, '', '', '', '', 'none', '', '900.00', '946b93ae226bb35a2fd5ce5ec91d2f7c', 'bryanisongekend ', 'Contactpersoon'),
(51, '750e757033d1721091c838af45afea53', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '1500.00', '750e757033d1721091c838af45afea53', 'Zwemmeninhetijsselmeer ', 'Contactpersoon'),
(52, '17259596c728bd3eb275fe6b68bc2dc0', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '900.00', '17259596c728bd3eb275fe6b68bc2dc0', 'bryanisongekend ', 'Contactpersoon'),
(53, 'bf733cd11248d1bd93337bc4bf1acd55', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '2700.00', 'bf733cd11248d1bd93337bc4bf1acd55', 'bryanisongekend ', 'Contactpersoon'),
(54, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237856', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bf733cd11248d1bd93337bc4bf1acd55', 'bryanisongekend ', 'Deelnemer'),
(55, NULL, 'Piet', 'piet@outlook.com', '0645237856', 'Pallasweg', '14', '9046 GF', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bf733cd11248d1bd93337bc4bf1acd55', 'bryanisongekend ', 'Deelnemer'),
(56, 'd081a35ef5082b90a66be08fbe018e79', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '900.00', 'd081a35ef5082b90a66be08fbe018e79', 'bryanisongekend ', 'Contactpersoon'),
(57, '05c4948e5564e69bd0a112de4456a841', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '3000.00', '05c4948e5564e69bd0a112de4456a841', 'Zwemmeninhetijsselmeer ', 'Contactpersoon'),
(58, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237856', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05c4948e5564e69bd0a112de4456a841', 'Zwemmeninhetijsselmeer ', 'Deelnemer'),
(59, '16a19d25790f7480c90c092558a8a63e', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '2700.00', '16a19d25790f7480c90c092558a8a63e', 'bryanisongekend ', 'Contactpersoon'),
(60, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0645237856', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16a19d25790f7480c90c092558a8a63e', 'bryanisongekend ', 'Deelnemer'),
(61, NULL, 'maeeitr', 'marrit@outlook.com', '0645236745', 'Pallasweg ', '5', '9046 GF', 'Leeuwraden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16a19d25790f7480c90c092558a8a63e', 'bryanisongekend ', 'Deelnemer'),
(62, '3bc11905975b987dcfefc6677e314508', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '1500.00', '3bc11905975b987dcfefc6677e314508', 'Zwemmeninhetijsselmeer ', 'Contactpersoon'),
(63, 'e7a52a414bde965349408ed25c236c6d', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', '1500.00', 'e7a52a414bde965349408ed25c236c6d', 'Zwemmeninhetijsselmeer ', 'Contactpersoon'),
(64, '0422dbb13912f83dafa4b2d35f72030e', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', '900.00', '0422dbb13912f83dafa4b2d35f72030e', 'bryanisongekend ', 'Contactpersoon'),
(65, '5f664f54755c8bd578f2d92a9ec1e19c', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'geen', '', '240.00', '5f664f54755c8bd578f2d92a9ec1e19c', 'OpstapbusBlauweGolf ', 'Contactpersoon'),
(66, '82b58d315997fec820abd0f69d6b3954', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'gewoon', '', '240.00', '82b58d315997fec820abd0f69d6b3954', 'OpstapbusBlauweGolf ', 'Contactpersoon'),
(67, '05ae48adeb0c6eee6d2010eb7e396f8d', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '0.00', '05ae48adeb0c6eee6d2010eb7e396f8d', 'Opstapbusdierentuin ', 'Contactpersoon'),
(68, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645896723', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05ae48adeb0c6eee6d2010eb7e396f8d', 'Opstapbusdierentuin ', 'Deelnemer'),
(69, '417200c8072a9c7c1252387eceaf2dae', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '218.00', '417200c8072a9c7c1252387eceaf2dae', 'Opstapbusdierentuin ', 'Contactpersoon'),
(70, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237865', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '417200c8072a9c7c1252387eceaf2dae', 'Opstapbusdierentuin ', 'Deelnemer'),
(71, '2e89ecd4de576b03ab14c8520f4f775c', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '111.00', '2e89ecd4de576b03ab14c8520f4f775c', 'Opstapbusdierentuin ', 'Contactpersoon'),
(72, '5e2ecd73f76a6debd478d9517b27e1f1', 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '111.00', '5e2ecd73f76a6debd478d9517b27e1f1', 'Opstapbusdierentuin ', 'Contactpersoon'),
(73, '8fb29beeb5fbe5f2bb188d3e31171568', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5, 5, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'gewoon', '', '111.00', '8fb29beeb5fbe5f2bb188d3e31171568', 'Opstapbusdierentuin ', 'Contactpersoon'),
(74, 'e614fbe6657ad8e5b896c375a05cf9ac', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '260.00', 'e614fbe6657ad8e5b896c375a05cf9ac', 'OpstapbusBlauweGolf ', 'Contactpersoon'),
(75, 'e06a7086e09a0823e2a41ba05be3e0b7', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '29.00', 'e06a7086e09a0823e2a41ba05be3e0b7', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(76, '0b12ed6306725e866c31a11d814b6e62', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '29.00', '0b12ed6306725e866c31a11d814b6e62', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(77, '33209b20aec2e236cab459fd43c73a3b', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '0.00', '33209b20aec2e236cab459fd43c73a3b', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(78, '4cb1ae92d1ace87f1c91882302fc95c3', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '28.77', '4cb1ae92d1ace87f1c91882302fc95c3', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(79, 'a0ec9cf381e15798615feb8bd7ed891a', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'geen', '', '23.00', 'a0ec9cf381e15798615feb8bd7ed891a', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(80, 'b9fb2b86111462458e2697c374b26be1', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'geen', '', '0.00', 'b9fb2b86111462458e2697c374b26be1', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(81, '6ea70f42cbd1f1fb1c28b8db183ed46a', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '28.77', '6ea70f42cbd1f1fb1c28b8db183ed46a', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(82, 'dfe36206f0576ed6063190d233b6d07a', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'geen', '', '23.00', 'dfe36206f0576ed6063190d233b6d07a', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(83, '32edd349622adf1b88a58ac41f59bafb', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'geen', '', '23.00', '32edd349622adf1b88a58ac41f59bafb', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(84, '9246fdc4e9a04bbe8d24c84d2ccd5f27', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'geen', '', '23.00', '9246fdc4e9a04bbe8d24c84d2ccd5f27', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(85, 'ada0e325f2a133aa007391dbfeeedb2f', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '53.30', 'ada0e325f2a133aa007391dbfeeedb2f', 'OpstapbusMinnertsga ', 'Contactpersoon'),
(86, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237856', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ada0e325f2a133aa007391dbfeeedb2f', 'OpstapbusMinnertsga ', 'Deelnemer'),
(87, '69afde01550feb9b462213fbd8bba1b7', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'gewoon', '', '964.13', '69afde01550feb9b462213fbd8bba1b7', 'OpstapbusTele2 ', 'Contactpersoon'),
(88, 'c119c1ff19c6c3924eee2943a7676655', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'geen', '', '900.00', 'c119c1ff19c6c3924eee2943a7676655', 'OpstapbusTele2 ', 'Contactpersoon');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opstapbusminnertsga`
--

CREATE TABLE `opstapbusminnertsga` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefoonnummer` varchar(255) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `vervoer` varchar(255) DEFAULT NULL,
  `vegetarisch` varchar(255) DEFAULT NULL,
  `editie` varchar(255) DEFAULT NULL,
  `accomodatie` varchar(255) DEFAULT NULL,
  `annuleringsverzekering` varchar(255) DEFAULT NULL,
  `verhuur` varchar(255) DEFAULT NULL,
  `prijs` decimal(19,2) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `type_inschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `opstapbusminnertsga`
--

INSERT INTO `opstapbusminnertsga` (`id`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `type_inschrijving`) VALUES
(1, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'gewoon', '', '28.77', 'e06a7086e09a0823e2a41ba05be3e0b7', 'Contactpersoon'),
(2, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'gewoon', '', '28.77', '0b12ed6306725e866c31a11d814b6e62', 'Contactpersoon'),
(3, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'gewoon', '', '0.00', '33209b20aec2e236cab459fd43c73a3b', 'Contactpersoon'),
(4, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'gewoon', '', '28.77', '4cb1ae92d1ace87f1c91882302fc95c3', 'Contactpersoon'),
(5, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'geen', '', '23.00', 'a0ec9cf381e15798615feb8bd7ed891a', 'Contactpersoon'),
(6, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân ', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'geen', '', '0.00', 'b9fb2b86111462458e2697c374b26be1', 'Contactpersoon'),
(7, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'gewoon', '', '28.77', '6ea70f42cbd1f1fb1c28b8db183ed46a', 'Contactpersoon'),
(8, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'geen', '', '23.00', 'dfe36206f0576ed6063190d233b6d07a', 'Contactpersoon'),
(9, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'geen', '', '23.00', '32edd349622adf1b88a58ac41f59bafb', 'Contactpersoon'),
(10, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'geen', '', '23.00', '9246fdc4e9a04bbe8d24c84d2ccd5f27', 'Contactpersoon'),
(11, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'gewoon', '', '53.30', 'ada0e325f2a133aa007391dbfeeedb2f', 'Contactpersoon'),
(12, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237856', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ada0e325f2a133aa007391dbfeeedb2f', 'Deelnemer');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opstapbustele2`
--

CREATE TABLE `opstapbustele2` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefoonnummer` varchar(255) DEFAULT NULL,
  `straat` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `vervoer` varchar(255) DEFAULT NULL,
  `vegetarisch` varchar(255) DEFAULT NULL,
  `editie` varchar(255) DEFAULT NULL,
  `accomodatie` varchar(255) DEFAULT NULL,
  `annuleringsverzekering` varchar(255) DEFAULT NULL,
  `verhuur` varchar(255) DEFAULT NULL,
  `prijs` decimal(19,2) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `type_inschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `opstapbustele2`
--

INSERT INTO `opstapbustele2` (`id`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `type_inschrijving`) VALUES
(1, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'gewoon', '', '964.13', '69afde01550feb9b462213fbd8bba1b7', 'Contactpersoon'),
(2, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'geen', '', '900.00', 'c119c1ff19c6c3924eee2943a7676655', 'Contactpersoon');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `alle_inschrijvers`
--
ALTER TABLE `alle_inschrijvers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexen voor tabel `opstapbusminnertsga`
--
ALTER TABLE `opstapbusminnertsga`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `opstapbustele2`
--
ALTER TABLE `opstapbustele2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `alle_inschrijvers`
--
ALTER TABLE `alle_inschrijvers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT voor een tabel `opstapbusminnertsga`
--
ALTER TABLE `opstapbusminnertsga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT voor een tabel `opstapbustele2`
--
ALTER TABLE `opstapbustele2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
