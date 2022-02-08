-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Aug 2015 um 08:46
-- Server Version: 5.5.27
-- PHP-Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Datenbank: `autowerkstatt`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestand`
--

DROP TABLE IF EXISTS `bestand`;
CREATE TABLE IF NOT EXISTS `bestand` (
  `ArtNr` int(11) NOT NULL DEFAULT '0',
  `ArtName` varchar(50) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL DEFAULT '',
  `Bestand` smallint(6) NOT NULL DEFAULT '0',
  `Preis` float NOT NULL DEFAULT '0',
  `MinBest` smallint(6) NOT NULL DEFAULT '0',
  `LagerOrt` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`ArtNr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `bestand`
--

INSERT INTO `bestand` (`ArtNr`, `ArtName`, `Bestand`, `Preis`, `MinBest`, `LagerOrt`) VALUES
(100031, 'Sechskantmutter M6', 5972, 0.06, 2400, '100'),
(100065, 'Zyl.Schraube M5', 3472, 0.06, 1400, '100'),
(100106, 'Federring', 1374, 0.03, 2000, '110'),
(100108, 'Dichtring', 766, 1.9, 320, '110'),
(150100, 'Batterie 55Ah', 12, 98.95, 5, '454'),
(150101, 'Batterie 90Ah', 2, 130, 4, '454'),
(151102, 'Batterie 24V 55Ah', 1, 165.3, 2, '454'),
(200001, 'Motorenöl 1.5l-Flasche Castrol GTX3', 12, 26.34, 10, '120'),
(200002, 'Motorenöl 1.5l-Flasche Castrol Synthetic', 16, 28.2, 10, '120'),
(200003, 'Frostschutzmittel CZ500', 6, 27, 10, '120'),
(200327, 'Keilriemen', 233, 6.1, 120, '120'),
(300001, 'Zündkerze M14 Standard', 30, 4.24, 30, '100'),
(300002, 'Zündkerze M14 Bosch', 15, 6.76, 30, '100'),
(300003, 'Glühlampe 21W', 40, 1.25, 20, '100'),
(300004, 'Glühlampe 5W', 40, 0.85, 20, '100'),
(300005, 'Glühlampe 1W', 10, 0.1, 20, '100'),
(300006, 'Blinkgeber 12V', 4, 16.23, 4, '100'),
(300007, 'Blinkgeber 24V', 4, 20.05, 4, '100'),
(450001, 'Reifen Stahlgürtel 13x155', 20, 89.56, 4, '130'),
(450002, 'Reifen Radial 13x155', 16, 56.2, 8, '130'),
(450003, 'Reifen M&S 13x155', 16, 72.33, 8, '130'),
(450004, 'Reifen Stahlgürtel 13x170', 12, 126.78, 4, '130'),
(450005, 'Reifen Pirelli 15x170', 1, 124.99, 4, '130'),
(460001, 'Alu-Felge 6,5Jx15', 16, 65, 8, '110'),
(460002, 'Alu-Felge 7Jx15', 16, 67, 8, '110'),
(460030, 'Radzierblende Design Stratos 13''''', 16, 22.9, 8, '100'),
(460031, 'Radzierblende Design Stratos 14''''', 16, 22.5, 8, '100'),
(460032, 'Radzierblende Design Alfa 14''''', 20, 34.9, 8, '100'),
(460033, 'Radzierblende Design Alfa 15''''', 20, 26.95, 8, '100'),
(500001, 'Gleitschutzkette 13" Skoda', 3, 156.45, 2, '140'),
(500002, 'Gleitschutzkette 14" Fiat', 1, 198.1, 2, '140'),
(500003, 'Gleitschutzkette 13"', 10, 178.2, 4, '140'),
(600100, 'Windschutzscheibe VW Golf II', 1, 119.99, 1, '130'),
(800006, 'Unterbrecher Trabant', 29, 1, 0, '100'),
(999800, 'Große Durchsicht', 0, 35.99, 0, ''),
(999801, 'Kleine Durchsicht', 0, 14.99, 0, ''),
(999888, 'HU (Hauptuntersuchung)', 0, 53.99, 0, ''),
(999889, 'AU (Abgasuntersuchung)', 0, 19.99, 0, ''),
(999996, 'Radwechsel', 0, 4.99, 0, ''),
(999997, 'Räder auswuchten', 0, 6, 0, ''),
(999998, 'Autowäsche', 0, 8.5, 0, ''),
(999999, 'Arbeitszeit', 0, 10.5, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
