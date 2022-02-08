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
-- Tabellenstruktur für Tabelle `kunden`
--

DROP TABLE IF EXISTS `kunden`;
CREATE TABLE IF NOT EXISTS `kunden` (
  `KuNr` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Vorname` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `PLZ` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `WohnOrt` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Strasse` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Tel` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`KuNr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Daten für Tabelle `kunden`
--

INSERT INTO `kunden` (`KuNr`, `Name`, `Vorname`, `PLZ`, `WohnOrt`, `Strasse`, `Tel`) VALUES
(1999001, 'Fleischer', 'Karl', '04838', 'Eilenburg', 'Windmühlenstr. 3', '03423 78923'),
(1999002, 'Heinze', 'Max', '04838', 'Eilenburg', 'Torgauer Str. 50', '03423 52345'),
(1999003, 'Lehmann', 'Kurt', '04838', 'Sprotta-Siedlung', 'Windmühlenweg 16', ''),
(1999004, 'Meister', 'Jana', '04107', 'Leipzig', 'Mahlmannstr. 12', ''),
(1999005, 'Schmidt', 'Kurt', '04509', 'Delitzsch', 'Windmühlenstraße 32', ''),
(1999006, 'Braun', 'Max', '04107', 'Leipzig', 'Ahornweg 23', ''),
(1999007, 'Müller', 'Johanna', '04808', 'Wurzen', 'Roitzscher Weg 7', '03425 56465'),
(1999008, 'Müller', 'Gerd', '04808', 'Wurzen', 'Oschatzer Str. 24', ''),
(1999009, 'Meier', 'Otto', '04668', 'Grimma', 'Wurzener Str. 109', '03437 24889'),
(1999010, 'Lindner', 'Martha', '04107', 'Leipzig', 'Arndtstr. 34', '0341  56434'),
(1999011, 'Kaiser', 'Anke', '04808', 'Wurzen', 'Leipziger Str. 11', '0177/2534121'),
(1999012, 'Hoffmann', 'Mirko', '04808', 'Wurzen', 'Leipziger Str. 78', ''),
(1999013, 'Maurer', 'Alfred', '04827', 'Machern', 'Hauptstr. 25', ''),
(1999014, 'Aalemann', 'Max', '04828', 'Altenbach', 'Eilenburger Str. 12', ''),
(2000001, 'Lüdenscheidt', 'Frank', '04289', 'Leipzig', 'Chemnitzer Str.', ''),
(2000002, 'Marks', 'Jürgen', '04105', 'Leipzig', 'Färberstr. 12', ''),
(2000003, 'Moser', 'Heinz', '04177', 'Leipzig', 'Dreilindenstr. 25', ''),
(2000004, 'Münch', 'Holger', '04277', 'Leipzig', 'Brandstr.', ''),
(2000005, 'Maibach', 'Sabine', '04177', 'Leipzig', 'Hähnelstr. 89', ''),
(2000006, 'Foto Werner', '', '04668', 'Grimma', 'Am Holzwinkel', '03437 91001'),
(2000007, 'Goldschmiede Theinert', '', '04109', 'Leipzig', 'Aachener Str. 2', '      967123'),
(2000008, 'Abschleppdienst Birnbaum', '', '04668', 'Grimma', 'Trebsener Str. 4', '03437 17070'),
(2000009, 'Clemenz', 'Mark', '04838', 'Wedelwitz', 'Dorfstr. 5', '03423 923456'),
(2000010, 'Döhler', 'Horst', '04821', 'Brandis', 'Hauptstr. 56', '0342921001'),
(2000011, 'Meier', 'Franz', '04107', 'Leipzig', 'Beethovenstr. 100', '      25678'),
(2000012, 'Müller', 'Horst', '04451', 'Borsdorf', 'Gartenstr. 65', ''),
(2000013, 'Mayer', 'Angelika', '04416', 'Markkleeberg', 'Am Bahnhof 25', '0178/342174'),
(2000014, 'Kaiser', 'Otto', '04451', 'Panitzsch', 'Wasserwerkstr. 2', ''),
(2000015, 'Müller', 'Barbara', '04357', 'Leipzig', 'Kieler Str. 2', '0341/5436741'),
(2000016, 'Keiser', 'Robert', '04109', 'Leipzig', 'Schillerstr. 3', '0341/2334164'),
(2000017, 'Lehmann', 'Richard', '04668', 'Grimma', 'Südstr. 54', '03437/674532'),
(2000018, 'Müller', 'Anton', '04463', 'Großpösna', 'Am Sportplatz 2', ''),
(2000019, 'MZ-Club', '', '04416', 'Markkleeberg', 'Ahornweg 4', '0341/4356678'),
(2000020, 'Maier', 'Brigitte', '04299', 'Leipzig', 'Wachauer Str. 47', '0341/5432345'),
(2000021, 'Dening', 'Grit', '04451', 'Borsdorf', 'Am Park 2', ''),
(2000022, 'Gärtner', 'Rita', '04824', 'Beucha', 'Dorfring 15', ''),
(2000023, 'Müller', 'Detlef', '04824', 'Beucha', 'Sperlingsweg 4', ''),
(2000024, 'Mayer', 'Conrad', '06120', 'Halle/Saale', 'Leipziger Str. 76', '0345/3322467'),
(2001001, 'Zeppelin', 'Manfred', '04107', 'Leipzig', 'Mahlmannstr. 5', ''),
(2001002, 'Müller', 'Moni', '04279', 'Leipzig', 'Gorbitzer Str. 25', '0177234509'),
(2001003, 'Müller', 'Max', '04109', 'Leipzig', 'Mahlmannstr. 1', '0341  256789'),
(2001004, 'Müller', 'Ursula', '04808', 'Bennewitz', 'Hauptstr. 12', '03425 237812'),
(2001005, 'Herrfeld', 'Thomas', '04279', 'Leipzig', 'Goethesteig 34', ''),
(2001006, 'Fritzsche', 'Gerfried', '04457', 'Leipzig', 'Stötteritzer Str 100', '0177  23789012'),
(2001007, 'Marx', 'Susi', '04430', 'Leipzig', 'Merseburger Landstr. 23', ''),
(2001008, 'Meyer', 'Johannes', '04838', 'Doberschütz', 'Hauptstr. 24', ''),
(2001009, 'Schmitt', 'Bernd', '04425', 'Taucha', 'Drewitzer Berg 24', ''),
(2001010, 'May', 'Horst', '04683', 'Fuchshain', 'Leipziger Str. 4', ''),
(2001011, 'Deutschmann', 'Helmut', '04808', 'Kühren', 'Dorfstr. 98', ''),
(2001012, 'Grube', 'Peter', '04109', 'Leipzig', 'Kolonnadenstr. 8', '0341/2114567'),
(2001013, 'Müller', 'Andreas', '04105', 'Leipzig', 'Inselstr. 3', '0341/3425559'),
(2001014, 'Lehmann', 'Claus', '04435', 'Schkeuditz', 'Ackerweg 15', '03404/234564'),
(2001015, 'Pfeiffer', 'Daniel', '04451', 'Panitzsch', 'Sommerfelder Str. 23', '03419/675420'),
(2001016, 'Maier', 'Ralf', '04177', 'Leipzig', 'Friedensstr. 18', '0341/2356671'),
(2001017, 'Kaiser', 'Peter', '04425', 'Taucha', 'An der Mühle 7', '03432/997649'),
(2001018, 'Krebs', 'Wolfgang', '04477', 'Leipzig', 'Lützner Str. 78', '0172/3456632'),
(2001019, 'Winter', 'Heidemarie', '04420', 'Markranstädt', 'Ahornweg 23', '0161/3422119'),
(2001020, 'Meier', 'Kay', '04279', 'Leipzig', 'Kantstr. 12', '0341/4453208'),
(2001021, 'Kahl', 'Brigitte', '04109', 'Leipzig', 'Lange Str. 4', '0341/2118995'),
(2001022, 'Mayer', 'Frank', '04808', 'Wurzen', 'Leipziger Str. 19', '03446/234006'),
(2001023, 'Jentsch', 'Olaf', '06667', 'Weißenfels', 'Naumburger Str. 25', '03632/22269'),
(2001024, 'Meier', 'Christian', '06108', 'Halle/Saale', 'An der Moritzkirche 3', '0345/5278543'),
(2001025, 'Jäger', 'Ilse', '04175', 'Leipzig', 'Platz der Einheit 1', '0341/7658832'),
(2001026, 'Müller', 'Jens', '04665', 'Kleinbardau', 'Dorfstr. 61', '034372/44211'),
(2001027, 'Keiser', 'Falk', '04317', 'Leipzig', 'Breitkopfstr. 23', '0341/5433319'),
(2001028, 'Hoffmann', 'Dirk', '06666', 'Naumburg', 'Waldstr. 29', '03623/442117'),
(2001029, 'Meyer', 'Gisela', '04824', 'Beucha', 'Ringstr. 19', '03433/32176'),
(2001030, 'Müller', 'Walter', '04463', 'Großpösna', 'Amselweg 54', '03435/453211'),
(2001031, 'Raad', 'Dora', '04189', 'Leipzig', 'Saalfelder Str. 32', '0341/4756887'),
(2001032, 'Schatz', 'Monika', '04347', 'Leipzig', 'Hermann-Liebmann-Str. 26', '0177/2322178'),
(2001033, 'Heilmann', 'Uschi', '04109', 'Leipzig', 'Hainstr. 1', '0341/2134521'),
(2001034, 'Keyser', 'Anna', '04435', 'Schkeuditz', 'Kastanienweg 7', ''),
(2001035, 'Kluge', 'Ute', '06666', 'Osterfeld', 'Holunderweg 13', '034425/3224'),
(2001036, 'Müller', 'Max', '04425', 'Taucha', 'Poststr. 25', ''),
(2001037, 'Lehmann', 'Matthias', '04435', 'Schkeuditz', 'Lindenthaler Str. 34', ''),
(2001038, 'Kaiser', 'Anke', '04420', 'Markranstädt', 'Schönauer Str. 26', ''),
(2002002, 'Netzer', 'Peter', '04509', 'Delitzsch', 'Eilenburger Str. 5', '034202 756545'),
(2002003, 'Niemann', 'Joachim', '04827', 'Machern', 'Hauptstr. 27', '034292 753424'),
(2002004, 'Schneider', 'Annerose', '04828', 'Püchau', 'Dorfstr. 12', '03425 123456'),
(2003001, 'Ott', 'Philipp', '04509', 'Krostitz', 'Brauereistraße 13', '034295 242424'),
(2003002, 'Oberst', 'Dieter', '04509', 'Krostitz', 'Dübener Str 5', NULL),
(2004002, 'Quark', 'Manfred', '04509', 'Zschortau', 'An den Höfen 12', '034202 119912'),
(2004003, 'Paulmann', 'Heike', '04509', 'Zschortau', 'An den Höfen 11', '034202 119911'),
(2004004, 'Nadelöhr', 'Schneidermeister', '04442', 'Zwenkau', 'Leipziger Str 23', '034203 471122'),
(2004009, 'Maler', 'Otto', '04668', 'Grimma', 'Rochlitzer Str. 19', '03437 24123'),
(2013001, 'Mayr', 'Maximilian', '80796', 'München', 'Schwabenstr. 12', NULL),
(2013002, 'Mogler', 'Moni', '04838', 'Eilenburg', 'Torgauer Str. 15', NULL),
(2013003, 'Maaster', 'Ulrike', '04808', 'Wurzen', 'Postplatz 12', NULL),
(2013004, 'Miesner', 'Frank', '04808', 'Kühren', 'Dorfstraße 54', NULL),
(2013005, 'Leitmeier', 'Toni', '10115', 'Berlin', 'Mittelstr. 123', NULL),
(2013006, 'Autohaus Eieiermann', '', '04838', 'Wedelwitz', 'Am Mühlbach 12', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
