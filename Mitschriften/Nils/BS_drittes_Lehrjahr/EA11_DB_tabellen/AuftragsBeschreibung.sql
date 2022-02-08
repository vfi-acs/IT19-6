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
-- Tabellenstruktur für Tabelle `auftragsbeschreibung`
--

DROP TABLE IF EXISTS `auftragsbeschreibung`;
CREATE TABLE IF NOT EXISTS `auftragsbeschreibung` (
  `AuftrNr` int(11) NOT NULL DEFAULT '0',
  `Beschreibung` text CHARACTER SET latin1 COLLATE latin1_german1_ci,
  PRIMARY KEY (`AuftrNr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `auftragsbeschreibung`
--

INSERT INTO `auftragsbeschreibung` (`AuftrNr`, `Beschreibung`) VALUES
(1999001, '- Große Durchsicht\r\n- Festziehen aller Schrauben\r\n- Kühler verliert Wasser'),
(1999002, '- Keilriemen spannen\r\n- Ölwechsel\r\n- Motorwäsche'),
(1999003, '- Batterie prüfen\r\n- Zünkerzen tauschen'),
(1999004, '- neue Scheibenwischerblätter\r\n- Auspuff wechseln'),
(1999005, '- Große Durchsicht\r\n- TÜV\r\n- ASU\r\n'),
(1999006, '- Autowäsche\r\n- Radwechsel\r\n'),
(1999007, '- Radwechsel\r\n- 4 neue Winterreifen\r\n'),
(2000001, '- waschen und polieren\r\n- Beule an rechtem Kotflügel beseitigen'),
(2000002, '- Winterreifen anbauen und Sommerreifen einlagern'),
(2000003, '- TÜV\r\n- ASU\r\n- Kleine Durchsicht\r\n'),
(2000004, '- Unfallschaden begutachten und \r\n- Angebot für Reparatur machen'),
(2000005, '- Reifen auswuchten\r\n- neuen Ersatzreifen montieren'),
(2000006, '- Windschutzscheibe tauschen (Versicherungsleistung)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
