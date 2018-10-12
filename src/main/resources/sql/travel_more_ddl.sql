SET GLOBAL time_zone = '+01:00';

--
-- Database: `travelmore`
--
CREATE DATABASE IF NOT EXISTS `travelmore` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `travelmore`;

-- --------------------------------------------------------

--
-- Drop table if exists
--

DROP TABLE IF EXISTS klant;

--
-- Table structure for table `klant`
--

CREATE TABLE klant (
  id                INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  voornaam          VARCHAR(255) NOT NULL,
  achternaam        VARCHAR(255) NOT NULL,
  email             VARCHAR(255) NOT NULL,
  wachtwoord        VARCHAR(255) NOT NULL
);

--
-- Startdata for table `klant`
--

INSERT INTO `klant` (`id`, `voornaam`, `achternaam`, `email`, `wachtwoord`) VALUES
  (1, 'Alexander', 'V', 'alexander.v@gmail.com', 'test1'),
  (2, 'Marie', 'B', 'marie.b@gmail.com', 'test2'),
  (3, 'Stef', 'DC', 'stef.dc@gmail.com', 'test3'),
  (4, 'Yannick', 'P', 'yannick.p@gmail.com', 'test4'),
  (5, 'Rob', 'W', 'rob.w@gmail.com', 'test5');

-- --------------------------------------------------------

--
-- Drop table if exists
--

DROP TABLE IF EXISTS boeking;

--
-- Table structure for table `boeking`
--

CREATE TABLE boeking (
  id                INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  klantId           INT NOT NULL,
  prijs             DOUBLE NOT NULL,
  isBetaald         BOOLEAN NOT NULL,
  heenReisId        INT NOT NULL,
  terugReisId       INT NOT NULL
);

--
-- Startdata for table `boeking`
--

INSERT INTO `boeking` (`id`, `klantId`, `prijs`, `isBetaald`, `heenReisId`, `terugReisId`) VALUES
  (1, 1, 567.89, TRUE, 1, 2),
  (2, 2, 123.45, FALSE, 2, 3),
  (3, 3, 500.59, TRUE, 3, 4),
  (4, 4, 567.8, FALSE, 4, 5),
  (5, 5, 420.69, FALSE, 5, 1);

-- --------------------------------------------------------

--
-- Drop table if exists
--

DROP TABLE IF EXISTS reis;

--
-- Table structure for table `reis`
--

CREATE TABLE reis (
  id                    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vertrekLocatieId      INT NOT NULL,
  bestemmingLocatieId   INT NOT NULL,
  prijs                 DOUBLE NOT NULL,
  transportmiddelId     INT NOT NULL,
  vertrekDatum          DATE NOT NULL,
  vertrekUur            TIME NOT NULL
);

--
-- Startdata for table `reis`
--

INSERT INTO `reis` (`id`, `vertrekLocatieId`, `bestemmingLocatieId`, `prijs`, `transportmiddelId`, `vertrekDatum`, `vertrekUur`) VALUES
  (1, 1, 2, 870.12, 1, '2018-12-01', '08:30:00'),
  (2, 2, 3, 890.4, 1, '2018-12-02', '09:30:00'),
  (3, 3, 4, 910.1, 1, '2018-12-03', '10:30:00'),
  (4, 4, 5, 1000.150, 1, '2018-12-04', '11:30:00'),
  (5, 5, 1, 1432.16, 1, '2018-12-05', '12:30:00');

-- --------------------------------------------------------

--
-- Drop table if exists
--

DROP TABLE IF EXISTS transportmiddel;

--
-- Table structure for table `transportmiddel`
--

CREATE TABLE transportmiddel (
  id                INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  naam              VARCHAR(255) NOT NULL,
  maxPlaatsen       INT NOT NULL
);

--
-- Startdata for table `transportmiddel`
--

INSERT INTO `transportmiddel` (`id`, `naam`, `maxPlaatsen`) VALUES
  (1, 'Bus', 60),
  (2, 'Vliegtuig', 250),
  (3, 'Trein', 200),
  (4, 'Andere bus', 80),
  (5, 'waggie', 30);

-- --------------------------------------------------------

--
-- Drop table if exists
--

DROP TABLE IF EXISTS locatie;

--
-- Table structure for table `locatie`
--

CREATE TABLE locatie (
  id                INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  naam              VARCHAR(255) NOT NULL,
  code              VARCHAR(255) NOT NULL
);

--
-- Startdata for table `locatie`
--

INSERT INTO `locatie` (`id`, `naam`, `code`) VALUES
  (1, 'Verenigd Koninkrijk', 'VK153-6'),
  (2, 'Andorra', 'AD-4'),
  (3, 'Kamping Kitsch', 'MARG1N44-L'),
  (4, 'Turkije', 'TK-87'),
  (5, 'De zee. Spannend.', 'ZEEKE');

-- --------------------------------------------------------

--
-- FKs for table `boeking`
--

ALTER TABLE `boeking`
  ADD KEY `klantId` (`klantId`),
  ADD KEY `terugReisId` (`terugReisId`),
  ADD KEY `heenReisId` (`heenReisId`);

--
-- FKs for table `reis`
--

ALTER TABLE `reis`
  ADD KEY `vertrekLocatieId` (`vertrekLocatieId`),
  ADD KEY `bestemmingLocatieId` (`bestemmingLocatieId`),
  ADD KEY `transportmiddelId` (`transportmiddelId`);