-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Aug 2015 um 08:43
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
-- Tabellenstruktur für Tabelle `auftrag`
--

DROP TABLE IF EXISTS `auftrag`;
CREATE TABLE IF NOT EXISTS `auftrag` (
  `AuftrNr` int(11) NOT NULL DEFAULT '0',
  `Fahrzeug` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `Kennzeichen` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `KuNr` int(11) NOT NULL DEFAULT '0',
  `AuftrDat` date NOT NULL DEFAULT '0000-00-00',
  `Bezahlt` enum('nein','ja') COLLATE latin1_german2_ci NOT NULL DEFAULT 'nein',
  `RechBetrag` float DEFAULT NULL,
  PRIMARY KEY (`AuftrNr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `auftrag`
--

INSERT INTO `auftrag` (`AuftrNr`, `Fahrzeug`, `Kennzeichen`, `KuNr`, `AuftrDat`, `Bezahlt`, `RechBetrag`) VALUES
(1999001, 'Ford Mondeo', 'DZ-YZ 23', 1999011, '1999-02-13', 'ja', 1000),
(1999002, 'Opel Astra', 'DZ-ZC 67', 1999006, '1999-03-14', 'ja', 20.99),
(1999003, 'VW Golf', 'EB 12-45', 1999002, '1999-08-13', 'ja', 10.11),
(1999004, 'Audi 80', 'LVM27-90', 1999004, '1999-09-09', 'ja', 0.11),
(1999005, 'Audi 80', 'LVM27-90', 1999004, '1999-10-11', 'ja', 189.68),
(1999006, 'Ford Mondeo', 'DZ-YZ 23', 1999011, '1999-11-17', 'ja', 423.12),
(1999007, 'Opel Astra', 'DZ-ZC 67', 1999006, '1999-12-14', 'ja', 475.34),
(2000001, 'Opel Omega', 'LVA23-35', 1999002, '2000-10-29', '', 0),
(2000002, 'VW Golf III', 'DZ-IG 29', 1999001, '2000-11-01', '', 0),
(2000003, 'VW Passat', 'LVM56-12', 2000010, '2000-10-29', '', 0),
(2000004, 'Audi 80', 'LVM27-90', 1999004, '2000-01-01', '', 0),
(2000005, 'Audi 100', 'LVM99-12', 2000008, '2000-11-01', '', 0),
(2000006, 'VW Golf II', 'LVA12-10', 1999004, '2000-10-01', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
