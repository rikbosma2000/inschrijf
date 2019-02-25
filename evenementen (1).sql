-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 25 feb 2019 om 11:24
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
  `prijs` int(11) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) NOT NULL,
  `type_inschrijving` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `alle_inschrijvers`
--

INSERT INTO `alle_inschrijvers` (`id`, `number`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `extra_inschrijvers`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `table_name`, `type_inschrijving`) VALUES
(22, 'd0819346635959932bbdf93f562466c1', 'Piet', 'piet@outlook.com', '0645327856', 'Pallasweg, 14', '14', '9046 KG', 'Leeuwarden', NULL, '', '', '', '', 'none', '', 900, 'd0819346635959932bbdf93f562466c1', 'opstapbusminnertsga ', 'inschrijver'),
(23, '28e5948930b7ca4697302b430b53dcbc', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 400, '28e5948930b7ca4697302b430b53dcbc', 'zwemmeninhetijsselmeer ', 'inschrijver'),
(24, '6f86f1277d502412a8092969843e67e9', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 400, '6f86f1277d502412a8092969843e67e9', 'zwemmeninhetijsselmeer ', 'inschrijver'),
(25, '65ed85850863255a21d445daad12d1e0', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 900, '65ed85850863255a21d445daad12d1e0', 'opstapbusgroningen ', 'inschrijver'),
(26, 'f1d2929d27bc4893dbe5ffa21b2a6688', 'Aap', 'aap@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 400, 'f1d2929d27bc4893dbe5ffa21b2a6688', 'zwemmeninhetijsselmeer ', 'inschrijver'),
(27, '7dd37fff2a3a33bcb2b0599d808381ef', 'Aap', 'aap@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 900, '7dd37fff2a3a33bcb2b0599d808381ef', 'opstapbusgroningen ', 'inschrijver'),
(28, '9806729817abdbcbf37c8237327ccabf', 'Bier', 'Bier@outlook.com', '0645328967', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '9806729817abdbcbf37c8237327ccabf', 'opstapbusminnertsga ', 'inschrijver'),
(29, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675353526', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9806729817abdbcbf37c8237327ccabf', 'opstapbusminnertsga ', 'deelnemer'),
(30, NULL, 'wesley', 'wesely@outlook.com', '0645326745', 'paalweg', '5', '9046 FD', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9806729817abdbcbf37c8237327ccabf', 'opstapbusminnertsga ', 'deelnemer'),
(31, '31a27d6d550fbff85889b0fa30316afb', 'Bier', 'Bier@outlook.com', '0645328967', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '31a27d6d550fbff85889b0fa30316afb', 'opstapbusgroningen ', 'inschrijver'),
(32, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675353526', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '31a27d6d550fbff85889b0fa30316afb', 'opstapbusgroningen ', 'deelnemer'),
(33, NULL, 'wesley', 'wesely@outlook.com', '0645326745', 'paalweg', '5', '9046 FD', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '31a27d6d550fbff85889b0fa30316afb', 'opstapbusgroningen ', 'deelnemer'),
(34, '0077c53f80700a08a7cadb446b57c078', 'Bier', 'Bier@outlook.com', '0645328967', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '0077c53f80700a08a7cadb446b57c078', 'opstapbusminnertsga ', 'inschrijver'),
(35, NULL, 'Piet', 'piet@outlook.com', '0654327654', 'Pallasweg, 14, 14', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0077c53f80700a08a7cadb446b57c078', 'opstapbusminnertsga ', 'deelnemer'),
(36, NULL, 'Karin Pitstra', 'karinpitstra@live.nl', '0643110697', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0077c53f80700a08a7cadb446b57c078', 'opstapbusminnertsga ', 'deelnemer'),
(37, '04beec06269f5face94b4d8aba1ce429', 'Bier', 'Bier@outlook.com', '0645328967', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '04beec06269f5face94b4d8aba1ce429', 'opstapbusgroningen ', 'inschrijver'),
(38, NULL, 'Piet', 'piet@outlook.com', '0654327654', 'Pallasweg, 14, 14', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04beec06269f5face94b4d8aba1ce429', 'opstapbusgroningen ', 'deelnemer'),
(39, NULL, 'Karin Pitstra', 'karinpitstra@live.nl', '0643110697', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04beec06269f5face94b4d8aba1ce429', 'opstapbusgroningen ', 'deelnemer'),
(40, '370fa0a9220fb1ca5dfc06cee76fa61c', 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat, 5', '5', '5627 GH', 'Boerenkut', NULL, '', '', '', '', 'none', '', 800, '370fa0a9220fb1ca5dfc06cee76fa61c', 'zwemmeninhetijsselmeer ', 'inschrijver'),
(41, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645326745', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '370fa0a9220fb1ca5dfc06cee76fa61c', 'zwemmeninhetijsselmeer ', 'deelnemer'),
(42, 'bb4b90201e39e55c4a9ccfec8436cfb8', 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat, 5', '5', '5627 GH', 'Boerenkut', NULL, '', '', '', '', 'none', '', 1800, 'bb4b90201e39e55c4a9ccfec8436cfb8', 'opstapbusgroningen ', 'inschrijver'),
(43, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645326745', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bb4b90201e39e55c4a9ccfec8436cfb8', 'opstapbusgroningen ', 'deelnemer'),
(44, '9f78a8188ff87a3d3ecb46853fd7d36f', 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat, 5', '5', '5627 GH', 'Boerenkut', NULL, '', '', '', '', 'none', '', 800, '9f78a8188ff87a3d3ecb46853fd7d36f', 'zwemmeninhetijsselmeer ', 'inschrijver'),
(45, '5fb7b1c3ad82bdffb5304361e21ee1a8', 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat, 5', '5', '5627 GH', 'Boerenkut', NULL, '', '', '', '', 'none', '', 800, '5fb7b1c3ad82bdffb5304361e21ee1a8', 'zwemmeninhetijsselmeer ', 'inschrijver'),
(46, 'c7f409723f7655153ec02c23b87b31a9', 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat, 5', '5', '5627 GH', 'Boerenkut', NULL, '', '', '', '', 'none', '', 1800, 'c7f409723f7655153ec02c23b87b31a9', 'opstapbusgroningen ', 'inschrijver'),
(47, 'dc822d0d7d5f24ebb7468f8563873e13', 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat, 5', '5', '5627 GH', 'Boerenkut', NULL, '', '', '', '', 'none', '', 1800, 'dc822d0d7d5f24ebb7468f8563873e13', 'opstapbusgroningen ', 'inschrijver'),
(48, 'ddafa4f20bbfc075390ecc3e7a972008', 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat, 5', '5', '5627 GH', 'Boerenkut', NULL, '', '', '', '', 'none', '', 1800, 'ddafa4f20bbfc075390ecc3e7a972008', 'opstapbusgroningen ', 'inschrijver'),
(49, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645326745', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ddafa4f20bbfc075390ecc3e7a972008', 'opstapbusgroningen ', 'deelnemer'),
(50, '3602e5f48e3ede784842c65220f25881', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 400, '3602e5f48e3ede784842c65220f25881', 'zwemmeninhetijsselmeer ', 'inschrijver'),
(51, '6f4b882a90ac9b6dfeba750913da33d2', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 900, '6f4b882a90ac9b6dfeba750913da33d2', 'opstapbusgroningen ', 'inschrijver'),
(52, '3eac2af739c13dc0d8846fae3bf3b369', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 900, '3eac2af739c13dc0d8846fae3bf3b369', 'opstapbusgroningen ', 'inschrijver'),
(53, '17810cdd2172addfc62ec4b6e7bc343e', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 400, '17810cdd2172addfc62ec4b6e7bc343e', 'zwemmeninhetijsselmeer ', 'inschrijver'),
(54, '8953e6f6ca8ebb38bbf4429c1787d7ed', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 900, '8953e6f6ca8ebb38bbf4429c1787d7ed', 'opstapbusgroningen ', 'inschrijver'),
(55, '9ab5d8d13876687bf222f41dee7fd8dd', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '9ab5d8d13876687bf222f41dee7fd8dd', 'opstapbusgroningen ', 'inschrijver'),
(56, '080ae9be3a5f63691b250cafd8a8e424', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '080ae9be3a5f63691b250cafd8a8e424', 'opstapbusgoutum ', 'inschrijver'),
(57, '1425ffac1f2eef546f8cf65291be4df2', 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '1425ffac1f2eef546f8cf65291be4df2', 'opstapbusgroningen ', 'inschrijver'),
(58, 'b65fc938c39eb029932502c695465739', 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'b65fc938c39eb029932502c695465739', 'opstapbusgoutum ', 'inschrijver'),
(59, 'bb997d580d9b9d97167966b8591917fb', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'bb997d580d9b9d97167966b8591917fb', 'opstapbusgoutum ', 'inschrijver'),
(60, '43d1df512e00811e6b6032f7e607963b', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '43d1df512e00811e6b6032f7e607963b', 'bryanisongekend ', 'inschrijver'),
(61, 'afe98243c85964874842de162f9c54d5', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, 'afe98243c85964874842de162f9c54d5', 'opstapbusgoutum ', 'inschrijver'),
(62, 'e56cebef86a230d3ee8750303062c26a', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'e56cebef86a230d3ee8750303062c26a', 'opstapbusgoutum ', 'inschrijver'),
(63, 'b46338541e2cdce28687c89c029cfc7a', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'b46338541e2cdce28687c89c029cfc7a', 'bryanisongekend ', 'inschrijver'),
(64, '943e505a14cac6db18256a527d74756c', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '943e505a14cac6db18256a527d74756c', 'opstapbusgoutum ', 'inschrijver'),
(65, '44150025065225a02ea8e5598773470c', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '44150025065225a02ea8e5598773470c', 'opstapbusgoutum ', 'inschrijver'),
(66, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '44150025065225a02ea8e5598773470c', 'opstapbusgoutum ', 'deelnemer'),
(67, NULL, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '44150025065225a02ea8e5598773470c', 'opstapbusgoutum ', 'deelnemer'),
(68, '2079122ff6f4709f703ae7ae856aaa9f', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '2079122ff6f4709f703ae7ae856aaa9f', 'bryanisongekend ', 'inschrijver'),
(69, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2079122ff6f4709f703ae7ae856aaa9f', 'bryanisongekend ', 'deelnemer'),
(70, NULL, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2079122ff6f4709f703ae7ae856aaa9f', 'bryanisongekend ', 'deelnemer'),
(71, 'cf25b4c689f6a01cda4b8633686d43a0', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, 'cf25b4c689f6a01cda4b8633686d43a0', 'opstapbusgoutum ', 'inschrijver'),
(90, '880e0542417e705c762a7e75acf685fa', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '880e0542417e705c762a7e75acf685fa', 'opstapbusgoutum ', 'inschrijver'),
(91, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '880e0542417e705c762a7e75acf685fa', 'opstapbusgoutum ', 'deelnemer'),
(92, NULL, 'Wesley', 'weslkey@outlook.ocm', '0645237856', 'Paalsweg', '14', '9046 HG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '880e0542417e705c762a7e75acf685fa', 'opstapbusgoutum ', 'deelnemer'),
(93, '6a164b1a217698b0e7d6f720f4d20a73', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 2700, '6a164b1a217698b0e7d6f720f4d20a73', 'bryanisongekend ', 'inschrijver'),
(94, NULL, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6a164b1a217698b0e7d6f720f4d20a73', 'bryanisongekend ', 'deelnemer'),
(95, NULL, 'Wesley', 'weslkey@outlook.ocm', '0645237856', 'Paalsweg', '14', '9046 HG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6a164b1a217698b0e7d6f720f4d20a73', 'bryanisongekend ', 'deelnemer'),
(96, '4faf5e40e35756acc9d77a93cce32d96', 'Rik Bosma5464', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '4faf5e40e35756acc9d77a93cce32d96', 'opstapbusgoutum ', 'inschrijver'),
(97, '84dece908d21b91cb9d3f876035487ef', 'Rik Bosma5464', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '84dece908d21b91cb9d3f876035487ef', 'bryanisongekend ', 'inschrijver'),
(98, '35f951cedb6a2ca08d93c2e37528f6a9', 'Rik Bosma111111', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15, 15, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '35f951cedb6a2ca08d93c2e37528f6a9', 'bryanisongekend ', 'inschrijver'),
(99, '5fd0ef49ac460e7ca2a1b7e64653ffba', 'Rik Bosma111111', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15, 15, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '5fd0ef49ac460e7ca2a1b7e64653ffba', 'oefenenopdecomputer ', 'inschrijver'),
(100, 'ed98bd69668cb7257007b88fd12210ae', 'Rik Bosma111111', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15, 15, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'ed98bd69668cb7257007b88fd12210ae', 'bryanisongekend ', 'inschrijver'),
(101, 'b6cc9194289276d9f7b4b493cdefd9a4', 'Rik Bosma111111', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15, 15, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'b6cc9194289276d9f7b4b493cdefd9a4', 'oefenenopdecomputer ', 'inschrijver'),
(102, '0344631ebdd405b0db23bed1d27fcb0e', 'Rik Bosma111111', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15, 15, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '0344631ebdd405b0db23bed1d27fcb0e', 'bryanisongekend ', 'inschrijver'),
(104, '0da7cf75df12071b1cde882ec297de9b', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '0da7cf75df12071b1cde882ec297de9b', 'opstapbusgoutum ', 'inschrijver'),
(105, 'cf322a700d6b4b04501848a208b687b4', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'cf322a700d6b4b04501848a208b687b4', 'bryanisongekend ', 'inschrijver'),
(106, '7228d1f9282c510e8117cdaa5cc31f10', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '7228d1f9282c510e8117cdaa5cc31f10', 'oefenenopdecomputer ', 'inschrijver'),
(107, '5d82b305b4656f8b8979e31bc8ad250a', 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1000, '5d82b305b4656f8b8979e31bc8ad250a', 'opstapbustzummarum ', 'inschrijver'),
(108, 'fccd1c50a7eac8049e83a78375e28103', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'fccd1c50a7eac8049e83a78375e28103', 'oefenenopdecomputer ', 'inschrijver'),
(110, '4df1703d18b1dc55c9f25259127e1979', 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '4df1703d18b1dc55c9f25259127e1979', 'bryanisongekend ', 'inschrijver'),
(111, '7a021eb9123b0652c6ce6ae0b6e24f53', 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '7a021eb9123b0652c6ce6ae0b6e24f53', 'oefenenopdecomputer ', 'inschrijver'),
(112, '43cd2f1d9d6c789e0417f1c8ec280d5e', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', 'yes', '', '', 'none', '', 1000, '43cd2f1d9d6c789e0417f1c8ec280d5e', 'opstapbustzummarum ', 'inschrijver'),
(113, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '43cd2f1d9d6c789e0417f1c8ec280d5e', 'opstapbustzummarum ', 'deelnemer'),
(114, 'ebdf6ce01a389cbe5fcd01a948078669', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', 'yes', '', '', 'none', '', 3000, 'ebdf6ce01a389cbe5fcd01a948078669', 'opstapbusgroningen ', 'inschrijver'),
(115, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ebdf6ce01a389cbe5fcd01a948078669', 'opstapbusgroningen ', 'deelnemer'),
(116, 'f591bdf730dca2f1c3c318d7901433d9', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', 'no', '', '', 'none', '', 900, 'f591bdf730dca2f1c3c318d7901433d9', 'bryanisongekend ', 'inschrijver'),
(117, '1a3badc716397628f2e0c2709efaa5b2', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, '', 'no', '', '', 'none', '', 1500, '1a3badc716397628f2e0c2709efaa5b2', 'opstapbusgroningen ', 'inschrijver'),
(118, '75ae99c9d6cb723411d3079df49a9602', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 900, '75ae99c9d6cb723411d3079df49a9602', 'opstapbusgoutum ', 'inschrijver'),
(119, '7dce2a1503d11885952a15bfe1637247', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 500, '7dce2a1503d11885952a15bfe1637247', 'opstapbustzummarum ', 'inschrijver'),
(120, '650b6932efe733add50db3288e6a55c5', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 1800, '650b6932efe733add50db3288e6a55c5', 'opstapbusgoutum ', 'inschrijver'),
(121, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '650b6932efe733add50db3288e6a55c5', 'opstapbusgoutum ', 'deelnemer'),
(122, '4ea5cfd4f53b5064886e02d700bdba9f', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 1000, '4ea5cfd4f53b5064886e02d700bdba9f', 'opstapbustzummarum ', 'inschrijver'),
(123, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4ea5cfd4f53b5064886e02d700bdba9f', 'opstapbustzummarum ', 'deelnemer'),
(124, '515176f63d8a57d20904a0e1daa25ac7', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 1800, '515176f63d8a57d20904a0e1daa25ac7', 'opstapbusgoutum ', 'inschrijver'),
(125, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '515176f63d8a57d20904a0e1daa25ac7', 'opstapbusgoutum ', 'deelnemer'),
(126, 'a5216988ec642f1c00f0dfb42884c5af', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 1000, 'a5216988ec642f1c00f0dfb42884c5af', 'opstapbustzummarum ', 'inschrijver'),
(127, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a5216988ec642f1c00f0dfb42884c5af', 'opstapbustzummarum ', 'deelnemer'),
(128, 'beafcc0704ce0467fe2f9b10c1a314c3', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'beafcc0704ce0467fe2f9b10c1a314c3', 'opstapbusgoutum ', 'inschrijver'),
(129, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'beafcc0704ce0467fe2f9b10c1a314c3', 'opstapbusgoutum ', 'deelnemer'),
(130, 'a4bd885d0da7b6489d030613e8e781c8', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'a4bd885d0da7b6489d030613e8e781c8', 'opstapbusgoutum ', 'inschrijver'),
(131, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a4bd885d0da7b6489d030613e8e781c8', 'opstapbusgoutum ', 'deelnemer'),
(132, '32c230e951650afaba3d7a70f5e3e7a9', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '32c230e951650afaba3d7a70f5e3e7a9', 'opstapbusgoutum ', 'inschrijver'),
(133, 'a4f878ebf2d195e29c1febf5068a97a7', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'a4f878ebf2d195e29c1febf5068a97a7', 'opstapbusgoutum ', 'inschrijver'),
(134, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a4f878ebf2d195e29c1febf5068a97a7', 'opstapbusgoutum ', 'deelnemer'),
(135, 'c8405b2bd5dc55d31e85de549831a430', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'c8405b2bd5dc55d31e85de549831a430', 'opstapbusgoutum ', 'inschrijver'),
(136, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c8405b2bd5dc55d31e85de549831a430', 'opstapbusgoutum ', 'deelnemer'),
(137, '5ec5ed2597b86691dc70aae1a34c9a60', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '5ec5ed2597b86691dc70aae1a34c9a60', 'opstapbusgoutum ', 'inschrijver'),
(138, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5ec5ed2597b86691dc70aae1a34c9a60', 'opstapbusgoutum ', 'deelnemer'),
(139, 'ced27c316b1ff446715ef01cfb3dba20', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'ced27c316b1ff446715ef01cfb3dba20', 'opstapbusgoutum ', 'inschrijver'),
(140, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ced27c316b1ff446715ef01cfb3dba20', 'opstapbusgoutum ', 'deelnemer'),
(141, 'eb4baa2ee8f612ea4c8a2ea6ba85b053', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'eb4baa2ee8f612ea4c8a2ea6ba85b053', 'opstapbusgoutum ', 'inschrijver'),
(142, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eb4baa2ee8f612ea4c8a2ea6ba85b053', 'opstapbusgoutum ', 'deelnemer'),
(143, 'c0bc361bf561c0c8da792ca2a25e3c4b', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'c0bc361bf561c0c8da792ca2a25e3c4b', 'opstapbusgoutum ', 'inschrijver'),
(144, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c0bc361bf561c0c8da792ca2a25e3c4b', 'opstapbusgoutum ', 'deelnemer'),
(145, '85455a6bf034314c353545af0b142147', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '85455a6bf034314c353545af0b142147', 'opstapbusgoutum ', 'inschrijver'),
(146, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85455a6bf034314c353545af0b142147', 'opstapbusgoutum ', 'deelnemer'),
(147, '0b28208887b9066f4f6239d1709b6967', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '0b28208887b9066f4f6239d1709b6967', 'opstapbusgoutum ', 'inschrijver'),
(148, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0b28208887b9066f4f6239d1709b6967', 'opstapbusgoutum ', 'deelnemer'),
(149, 'e1da4ae5522020bfa8c542fd77ca4121', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'e1da4ae5522020bfa8c542fd77ca4121', 'opstapbusgoutum ', 'inschrijver'),
(150, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e1da4ae5522020bfa8c542fd77ca4121', 'opstapbusgoutum ', 'deelnemer'),
(151, '484153fc6f8bb8b9eb4c00ae29b3abca', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '484153fc6f8bb8b9eb4c00ae29b3abca', 'opstapbusgoutum ', 'inschrijver'),
(152, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '484153fc6f8bb8b9eb4c00ae29b3abca', 'opstapbusgoutum ', 'deelnemer'),
(153, '09d840763f0e32b164c3ce346ecdba1c', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '09d840763f0e32b164c3ce346ecdba1c', 'opstapbusgoutum ', 'inschrijver'),
(154, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09d840763f0e32b164c3ce346ecdba1c', 'opstapbusgoutum ', 'deelnemer'),
(155, '69df9c41f734789787a2a042e1e64d8c', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '69df9c41f734789787a2a042e1e64d8c', 'opstapbusgoutum ', 'inschrijver'),
(156, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '69df9c41f734789787a2a042e1e64d8c', 'opstapbusgoutum ', 'deelnemer'),
(157, '7d47ed905966874ae46d1bfc00b25989', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '7d47ed905966874ae46d1bfc00b25989', 'opstapbusgoutum ', 'inschrijver'),
(158, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7d47ed905966874ae46d1bfc00b25989', 'opstapbusgoutum ', 'deelnemer'),
(159, 'd01ac0d4a5cbcf4e951b63b8b1fc3f8d', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'd01ac0d4a5cbcf4e951b63b8b1fc3f8d', 'opstapbusgoutum ', 'inschrijver'),
(160, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd01ac0d4a5cbcf4e951b63b8b1fc3f8d', 'opstapbusgoutum ', 'deelnemer'),
(161, '3643fe779e4b23d7005b150fe490dac2', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '3643fe779e4b23d7005b150fe490dac2', 'opstapbusgoutum ', 'inschrijver'),
(162, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3643fe779e4b23d7005b150fe490dac2', 'opstapbusgoutum ', 'deelnemer'),
(163, 'd67f5d1085e33201e925913eab001077', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'd67f5d1085e33201e925913eab001077', 'opstapbusgoutum ', 'inschrijver'),
(164, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd67f5d1085e33201e925913eab001077', 'opstapbusgoutum ', 'deelnemer'),
(165, '83d8be72f731a9977c2ac9e41807ac0d', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '83d8be72f731a9977c2ac9e41807ac0d', 'opstapbusgoutum ', 'inschrijver'),
(166, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '83d8be72f731a9977c2ac9e41807ac0d', 'opstapbusgoutum ', 'deelnemer'),
(167, '94bf5d3fceb523f221c983724fb01693', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, '94bf5d3fceb523f221c983724fb01693', 'opstapbusgoutum ', 'inschrijver'),
(168, NULL, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94bf5d3fceb523f221c983724fb01693', 'opstapbusgoutum ', 'deelnemer'),
(169, '0cfd995b8c4cfa34d4618dd81448306b', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, '0cfd995b8c4cfa34d4618dd81448306b', 'bryanisongekend ', 'inschrijver'),
(170, 'd043c9f20182612a9cca498e547496d5', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 900, 'd043c9f20182612a9cca498e547496d5', 'oefenenopdecomputer ', 'inschrijver'),
(171, 'daa7a8eba6bb5f984749620023488563', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'daa7a8eba6bb5f984749620023488563', 'bryanisongekend ', 'inschrijver'),
(172, NULL, 'wesley', 'wesely@outlook.com', '0645213456', 'paalweg, 5', '5', '9046 FD', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'daa7a8eba6bb5f984749620023488563', 'bryanisongekend ', 'deelnemer'),
(173, 'd599943d568e2326d5cb834e2a393467', 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', NULL, '', '', '', '', 'none', '', 1800, 'd599943d568e2326d5cb834e2a393467', 'oefenenopdecomputer ', 'inschrijver'),
(174, NULL, 'wesley', 'wesely@outlook.com', '0645213456', 'paalweg, 5', '5', '9046 FD', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd599943d568e2326d5cb834e2a393467', 'oefenenopdecomputer ', 'deelnemer'),
(175, '3e5ff4f1851ee54a4ca6976fb699bb37', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 1800, '3e5ff4f1851ee54a4ca6976fb699bb37', 'opstapbusgoutum ', 'inschrijver'),
(176, 'e9cce15bddae428c79dcf69bd8dc9e97', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 1800, 'e9cce15bddae428c79dcf69bd8dc9e97', 'bryanisongekend ', 'inschrijver'),
(177, 'cd838ba09fbd4ab8f27842785e01b5e8', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 1800, 'cd838ba09fbd4ab8f27842785e01b5e8', 'opstapbusgoutum ', 'inschrijver'),
(178, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cd838ba09fbd4ab8f27842785e01b5e8', 'opstapbusgoutum ', 'deelnemer'),
(179, '3301f21735f0b5ca019418d7686dd831', 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, '', '', '', '', 'none', '', 1800, '3301f21735f0b5ca019418d7686dd831', 'bryanisongekend ', 'inschrijver'),
(180, NULL, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3301f21735f0b5ca019418d7686dd831', 'bryanisongekend ', 'deelnemer');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bryanisongekend`
--

CREATE TABLE `bryanisongekend` (
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
  `prijs` int(11) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `type_inschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `bryanisongekend`
--

INSERT INTO `bryanisongekend` (`id`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `type_inschrijving`) VALUES
(1, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '43d1df512e00811e6b6032f7e607963b', 'inschrijver'),
(2, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, 'b46338541e2cdce28687c89c029cfc7a', 'inschrijver'),
(3, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '2079122ff6f4709f703ae7ae856aaa9f', 'inschrijver'),
(4, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2079122ff6f4709f703ae7ae856aaa9f', 'deelnemer'),
(5, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2079122ff6f4709f703ae7ae856aaa9f', 'deelnemer'),
(6, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, 'fc1671e392a4646fdc594a1e58ac635c', 'inschrijver'),
(7, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fc1671e392a4646fdc594a1e58ac635c', 'deelnemer'),
(8, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fc1671e392a4646fdc594a1e58ac635c', 'deelnemer'),
(9, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '14e2abdc4ae6841eb8d25a77dfc7bfa8', 'inschrijver'),
(10, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14e2abdc4ae6841eb8d25a77dfc7bfa8', 'deelnemer'),
(11, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14e2abdc4ae6841eb8d25a77dfc7bfa8', 'deelnemer'),
(12, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, 'e296dba13e25528c13e4c8cb81de3aa8', 'inschrijver'),
(13, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e296dba13e25528c13e4c8cb81de3aa8', 'deelnemer'),
(14, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e296dba13e25528c13e4c8cb81de3aa8', 'deelnemer'),
(15, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '6a164b1a217698b0e7d6f720f4d20a73', 'inschrijver'),
(16, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6a164b1a217698b0e7d6f720f4d20a73', 'deelnemer'),
(17, 'Wesley', 'weslkey@outlook.ocm', '0645237856', 'Paalsweg', '14', '9046 HG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6a164b1a217698b0e7d6f720f4d20a73', 'deelnemer'),
(18, 'Rik Bosma5464', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '84dece908d21b91cb9d3f876035487ef', 'inschrijver'),
(19, 'Rik Bosma111111', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15, 15, 15, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '0344631ebdd405b0db23bed1d27fcb0e', 'inschrijver'),
(20, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, 'cf322a700d6b4b04501848a208b687b4', 'inschrijver'),
(21, 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '4df1703d18b1dc55c9f25259127e1979', 'inschrijver'),
(22, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', 'no', '', '', 'none', '', 900, 'f591bdf730dca2f1c3c318d7901433d9', 'inschrijver'),
(23, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '0cfd995b8c4cfa34d4618dd81448306b', 'inschrijver'),
(24, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'daa7a8eba6bb5f984749620023488563', 'inschrijver'),
(25, 'wesley', 'wesely@outlook.com', '0645213456', 'paalweg, 5', '5', '9046 FD', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'daa7a8eba6bb5f984749620023488563', 'deelnemer'),
(26, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 1800, 'e9cce15bddae428c79dcf69bd8dc9e97', 'inschrijver'),
(27, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 1800, '3301f21735f0b5ca019418d7686dd831', 'inschrijver'),
(28, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3301f21735f0b5ca019418d7686dd831', 'deelnemer');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `oefenenopdecomputer`
--

CREATE TABLE `oefenenopdecomputer` (
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
  `prijs` int(11) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `type_inschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `oefenenopdecomputer`
--

INSERT INTO `oefenenopdecomputer` (`id`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `type_inschrijving`) VALUES
(2, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '7228d1f9282c510e8117cdaa5cc31f10', 'inschrijver'),
(3, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, 'fccd1c50a7eac8049e83a78375e28103', 'inschrijver'),
(4, 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '7a021eb9123b0652c6ce6ae0b6e24f53', 'inschrijver'),
(5, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, 'd043c9f20182612a9cca498e547496d5', 'inschrijver'),
(6, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'd599943d568e2326d5cb834e2a393467', 'inschrijver'),
(7, 'wesley', 'wesely@outlook.com', '0645213456', 'paalweg, 5', '5', '9046 FD', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd599943d568e2326d5cb834e2a393467', 'deelnemer');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opstapbusgoutum`
--

CREATE TABLE `opstapbusgoutum` (
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
  `prijs` int(11) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `type_inschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `opstapbusgoutum`
--

INSERT INTO `opstapbusgoutum` (`id`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `type_inschrijving`) VALUES
(1, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '080ae9be3a5f63691b250cafd8a8e424', 'inschrijver'),
(2, 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, 'b65fc938c39eb029932502c695465739', 'inschrijver'),
(3, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, 'bb997d580d9b9d97167966b8591917fb', 'inschrijver'),
(4, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, 'afe98243c85964874842de162f9c54d5', 'inschrijver'),
(5, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, 'e56cebef86a230d3ee8750303062c26a', 'inschrijver'),
(6, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '943e505a14cac6db18256a527d74756c', 'inschrijver'),
(7, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '44150025065225a02ea8e5598773470c', 'inschrijver'),
(8, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '44150025065225a02ea8e5598773470c', 'deelnemer'),
(9, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '44150025065225a02ea8e5598773470c', 'deelnemer'),
(10, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, 'cf25b4c689f6a01cda4b8633686d43a0', 'inschrijver'),
(11, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cf25b4c689f6a01cda4b8633686d43a0', 'deelnemer'),
(12, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cf25b4c689f6a01cda4b8633686d43a0', 'deelnemer'),
(13, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '49cf2fba3447bf6eec99d3af93217ccc', 'inschrijver'),
(14, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '49cf2fba3447bf6eec99d3af93217ccc', 'deelnemer'),
(15, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, 'af55c94e1164257b22983aced1393664', 'inschrijver'),
(16, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'af55c94e1164257b22983aced1393664', 'deelnemer'),
(17, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'af55c94e1164257b22983aced1393664', 'deelnemer'),
(18, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '7512dd422ef11babf9e9f5965d01a4eb', 'inschrijver'),
(19, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp, 5, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7512dd422ef11babf9e9f5965d01a4eb', 'deelnemer'),
(20, 'Wesley', 'wesley@outlook.com', '0645236745', 'pallasweg', '14', '9046 KG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7512dd422ef11babf9e9f5965d01a4eb', 'deelnemer'),
(21, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '880e0542417e705c762a7e75acf685fa', 'inschrijver'),
(22, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645237654', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '880e0542417e705c762a7e75acf685fa', 'deelnemer'),
(23, 'Wesley', 'weslkey@outlook.ocm', '0645237856', 'Paalsweg', '14', '9046 HG', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '880e0542417e705c762a7e75acf685fa', 'deelnemer'),
(24, 'Rik Bosma5464', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '4faf5e40e35756acc9d77a93cce32d96', 'inschrijver'),
(25, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 900, '0da7cf75df12071b1cde882ec297de9b', 'inschrijver'),
(26, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 900, '75ae99c9d6cb723411d3079df49a9602', 'inschrijver'),
(27, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 1800, '650b6932efe733add50db3288e6a55c5', 'inschrijver'),
(28, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '650b6932efe733add50db3288e6a55c5', 'deelnemer'),
(29, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 1800, '515176f63d8a57d20904a0e1daa25ac7', 'inschrijver'),
(30, 'Marrit Zijlstra', '[]', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '515176f63d8a57d20904a0e1daa25ac7', 'deelnemer'),
(31, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'beafcc0704ce0467fe2f9b10c1a314c3', 'inschrijver'),
(32, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'beafcc0704ce0467fe2f9b10c1a314c3', 'deelnemer'),
(33, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'a4bd885d0da7b6489d030613e8e781c8', 'inschrijver'),
(34, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a4bd885d0da7b6489d030613e8e781c8', 'deelnemer'),
(35, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '32c230e951650afaba3d7a70f5e3e7a9', 'inschrijver'),
(36, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'a4f878ebf2d195e29c1febf5068a97a7', 'inschrijver'),
(37, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a4f878ebf2d195e29c1febf5068a97a7', 'deelnemer'),
(38, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'c8405b2bd5dc55d31e85de549831a430', 'inschrijver'),
(39, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c8405b2bd5dc55d31e85de549831a430', 'deelnemer'),
(40, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '5ec5ed2597b86691dc70aae1a34c9a60', 'inschrijver'),
(41, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5ec5ed2597b86691dc70aae1a34c9a60', 'deelnemer'),
(42, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'ced27c316b1ff446715ef01cfb3dba20', 'inschrijver'),
(43, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ced27c316b1ff446715ef01cfb3dba20', 'deelnemer'),
(44, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'eb4baa2ee8f612ea4c8a2ea6ba85b053', 'inschrijver'),
(45, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eb4baa2ee8f612ea4c8a2ea6ba85b053', 'deelnemer'),
(46, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'c0bc361bf561c0c8da792ca2a25e3c4b', 'inschrijver'),
(47, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'c0bc361bf561c0c8da792ca2a25e3c4b', 'deelnemer'),
(48, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '85455a6bf034314c353545af0b142147', 'inschrijver'),
(49, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85455a6bf034314c353545af0b142147', 'deelnemer'),
(50, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '0b28208887b9066f4f6239d1709b6967', 'inschrijver'),
(51, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0b28208887b9066f4f6239d1709b6967', 'deelnemer'),
(52, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'e1da4ae5522020bfa8c542fd77ca4121', 'inschrijver'),
(53, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e1da4ae5522020bfa8c542fd77ca4121', 'deelnemer'),
(54, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '484153fc6f8bb8b9eb4c00ae29b3abca', 'inschrijver'),
(55, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '484153fc6f8bb8b9eb4c00ae29b3abca', 'deelnemer'),
(56, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '09d840763f0e32b164c3ce346ecdba1c', 'inschrijver'),
(57, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09d840763f0e32b164c3ce346ecdba1c', 'deelnemer'),
(58, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '69df9c41f734789787a2a042e1e64d8c', 'inschrijver'),
(59, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '69df9c41f734789787a2a042e1e64d8c', 'deelnemer'),
(60, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '7d47ed905966874ae46d1bfc00b25989', 'inschrijver'),
(61, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7d47ed905966874ae46d1bfc00b25989', 'deelnemer'),
(62, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'd01ac0d4a5cbcf4e951b63b8b1fc3f8d', 'inschrijver'),
(63, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd01ac0d4a5cbcf4e951b63b8b1fc3f8d', 'deelnemer'),
(64, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '3643fe779e4b23d7005b150fe490dac2', 'inschrijver'),
(65, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3643fe779e4b23d7005b150fe490dac2', 'deelnemer'),
(66, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, 'd67f5d1085e33201e925913eab001077', 'inschrijver'),
(67, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'd67f5d1085e33201e925913eab001077', 'deelnemer'),
(68, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '83d8be72f731a9977c2ac9e41807ac0d', 'inschrijver'),
(69, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '83d8be72f731a9977c2ac9e41807ac0d', 'deelnemer'),
(70, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '94bf5d3fceb523f221c983724fb01693', 'inschrijver'),
(71, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94bf5d3fceb523f221c983724fb01693', 'deelnemer'),
(72, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 1800, '3e5ff4f1851ee54a4ca6976fb699bb37', 'inschrijver'),
(73, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 1800, 'cd838ba09fbd4ab8f27842785e01b5e8', 'inschrijver'),
(74, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cd838ba09fbd4ab8f27842785e01b5e8', 'deelnemer');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opstapbusgroningen`
--

CREATE TABLE `opstapbusgroningen` (
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
  `prijs` int(11) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `type_inschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `opstapbusgroningen`
--

INSERT INTO `opstapbusgroningen` (`id`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `type_inschrijving`) VALUES
(1, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', 'yes', '', '', 'none', '', 3000, 'ebdf6ce01a389cbe5fcd01a948078669', 'inschrijver'),
(2, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ebdf6ce01a389cbe5fcd01a948078669', 'deelnemer'),
(3, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', 'no', '', '', 'none', '', 1500, '1a3badc716397628f2e0c2709efaa5b2', 'inschrijver');

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
  `prijs` int(11) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `type_inschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `opstapbusminnertsga`
--

INSERT INTO `opstapbusminnertsga` (`id`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `type_inschrijving`) VALUES
(6, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '1f54615e40b6bf08369f6da7769f9f13', 'inschrijver'),
(7, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0655432432', 'Holprijp', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1f54615e40b6bf08369f6da7769f9f13', 'deelnemer'),
(9, 'wesley', 'wesley@outlook.com', '0654873624', 'boerenkutstraat', '5', '5627 GH', 'Drachten', '', '', '', '', 'none', '', 1800, '4f9b1c71d80688bb938073867ef941be', 'inschrijver'),
(10, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4f9b1c71d80688bb938073867ef941be', 'deelnemer'),
(11, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1800, '3d928258c4682216574bbd478ea5ad1b', 'inschrijver'),
(12, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0645327654', 'Holprijp', '5', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3d928258c4682216574bbd478ea5ad1b', 'deelnemer'),
(13, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân,, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 0, '52a412bf72feee5f6c8ce78a03c9475c', 'inschrijver'),
(14, 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 0, '561091ef0872cd72db9b48bb46d2a926', 'inschrijver'),
(15, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 0, '04b0e8992f042b79fd03038118452a94', 'inschrijver'),
(16, 'Rik Bosma', 'rikbosma@outlook.com', '0675483721', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 0, '6ea94bca67aad6851ad38501c0b01989', 'inschrijver'),
(17, 'Piet', 'piet@outlook.com', '0645327856', 'Pallasweg, 14', '14', '9046 KG', 'Leeuwarden', '', '', '', '', 'none', '', 0, 'a12a47ab8e7f15df3d38e1db6785edf8', 'inschrijver'),
(18, 'Piet', 'piet@outlook.com', '0645327856', 'Pallasweg, 14', '14', '9046 KG', 'Leeuwarden', '', '', '', '', 'none', '', 0, 'abd3832db9a22ebaaaf0b3fa1bdca5cf', 'inschrijver'),
(19, 'Piet', 'piet@outlook.com', '0645327856', 'Pallasweg, 14', '14', '9046 KG', 'Leeuwarden', '', '', '', '', 'none', '', 900, '732905f76a1423b04bc3ae8c528f76a4', 'inschrijver'),
(20, 'Piet', 'piet@outlook.com', '0645327856', 'Pallasweg, 14', '14', '9046 KG', 'Leeuwarden', '', '', '', '', 'none', '', 900, 'd0819346635959932bbdf93f562466c1', 'inschrijver'),
(21, 'Bier', 'Bier@outlook.com', '0645328967', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '9806729817abdbcbf37c8237327ccabf', 'inschrijver'),
(22, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675353526', 'Holprijp, 5', '5', '9786 GH', 'Tzum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9806729817abdbcbf37c8237327ccabf', 'deelnemer'),
(23, 'wesley', 'wesely@outlook.com', '0645326745', 'paalweg', '5', '9046 FD', 'Leeuwarden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9806729817abdbcbf37c8237327ccabf', 'deelnemer'),
(24, 'Bier', 'Bier@outlook.com', '0645328967', 'stinzelân, 15', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 2700, '0077c53f80700a08a7cadb446b57c078', 'inschrijver');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opstapbustzummarum`
--

CREATE TABLE `opstapbustzummarum` (
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
  `prijs` int(11) DEFAULT NULL,
  `inschrijver` varchar(255) DEFAULT NULL,
  `type_inschrijving` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `opstapbustzummarum`
--

INSERT INTO `opstapbustzummarum` (`id`, `naam`, `email`, `telefoonnummer`, `straat`, `huisnummer`, `postcode`, `woonplaats`, `vervoer`, `vegetarisch`, `editie`, `accomodatie`, `annuleringsverzekering`, `verhuur`, `prijs`, `inschrijver`, `type_inschrijving`) VALUES
(1, 'Karin Pitstra', 'karinpitstra@live.nl', '0631777472', 'stinzelân', '15', '9047 HH', 'Minnertsga', '', '', '', '', 'none', '', 1000, '5d82b305b4656f8b8979e31bc8ad250a', 'inschrijver'),
(3, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', 'yes', '', '', 'none', '', 1000, '43cd2f1d9d6c789e0417f1c8ec280d5e', 'inschrijver'),
(4, 'Rik Bosma', 'rikbosma@outlook.com', '0643110697', 'stinzelân', '15', '9047 HH', 'Minnertsga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '43cd2f1d9d6c789e0417f1c8ec280d5e', 'deelnemer'),
(5, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 500, '7dce2a1503d11885952a15bfe1637247', 'inschrijver'),
(6, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 1000, '4ea5cfd4f53b5064886e02d700bdba9f', 'inschrijver'),
(7, 'Marrit Zijlstra', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4ea5cfd4f53b5064886e02d700bdba9f', 'deelnemer'),
(8, 'Marrit Zijlstra', 'marritaukje@outlook.com', '0675483721', 'Holprijp', '5', '9786 GH', 'Tzum', '', '', '', '', 'none', '', 1000, 'a5216988ec642f1c00f0dfb42884c5af', 'inschrijver'),
(9, 'Marrit Zijlstra', '[]', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a5216988ec642f1c00f0dfb42884c5af', 'deelnemer');

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
-- Indexen voor tabel `bryanisongekend`
--
ALTER TABLE `bryanisongekend`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `oefenenopdecomputer`
--
ALTER TABLE `oefenenopdecomputer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `opstapbusgoutum`
--
ALTER TABLE `opstapbusgoutum`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `opstapbusgroningen`
--
ALTER TABLE `opstapbusgroningen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `opstapbusminnertsga`
--
ALTER TABLE `opstapbusminnertsga`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `opstapbustzummarum`
--
ALTER TABLE `opstapbustzummarum`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `alle_inschrijvers`
--
ALTER TABLE `alle_inschrijvers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT voor een tabel `bryanisongekend`
--
ALTER TABLE `bryanisongekend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT voor een tabel `oefenenopdecomputer`
--
ALTER TABLE `oefenenopdecomputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `opstapbusgoutum`
--
ALTER TABLE `opstapbusgoutum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT voor een tabel `opstapbusgroningen`
--
ALTER TABLE `opstapbusgroningen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `opstapbusminnertsga`
--
ALTER TABLE `opstapbusminnertsga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT voor een tabel `opstapbustzummarum`
--
ALTER TABLE `opstapbustzummarum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
