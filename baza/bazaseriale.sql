-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2021, 09:34
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bazaseriale`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktorzy`
--

CREATE TABLE `aktorzy` (
  `idAktorzy` int(11) NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `zdjecie` varchar(45) DEFAULT NULL,
  `data_urodzenia` datetime DEFAULT NULL,
  `ocena aktora` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odcinki`
--

CREATE TABLE `odcinki` (
  `idOdcinki` int(11) NOT NULL,
  `Sezony_idSezony` int(11) NOT NULL,
  `Sezony_Seriale_idSeriale` int(11) NOT NULL,
  `Sezony_Seriale_Uzytkownik_idUzytkownik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinie`
--

CREATE TABLE `opinie` (
  `idOpinie` int(11) NOT NULL,
  `ocena` int(2) DEFAULT NULL,
  `Uzytkownik_idUzytkownik` int(11) NOT NULL,
  `Seriale_idSeriale` int(11) NOT NULL,
  `Seriale_Uzytkownik_idUzytkownik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `seriale`
--

CREATE TABLE `seriale` (
  `idSeriale` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `sezony` int(2) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `zdjecie` varchar(45) DEFAULT NULL,
  `srednia_ocen` float DEFAULT NULL,
  `gatunek` varchar(45) DEFAULT NULL,
  `Uzytkownik_idUzytkownik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `seriale`
--

INSERT INTO `seriale` (`idSeriale`, `nazwa`, `sezony`, `data`, `zdjecie`, `srednia_ocen`, `gatunek`, `Uzytkownik_idUzytkownik`) VALUES
(1, 'Gra o tron', 8, '2019-05-19 09:11:41', 'graotron.jpg', 8.9, 'Fantasy', 0),
(2, 'Breaking Bad', 5, '2013-09-29 09:17:22', 'BreakingBad.jpg', 8.6, 'Dramat', 1),
(3, 'Detektyw', 3, '2014-03-09 09:20:34', 'Detektyw.jpg', 9, 'Dramat', 1),
(4, 'Czarne lustro', 5, '2021-12-01 09:21:38', 'Czarnelustro.jpg', 8, 'Dramat', 1),
(5, 'Peaky Blinders', 6, '2019-09-22 09:22:52', 'PeakyBlinders.jpg', 8.2, 'Kryminał', 1),
(6, 'Wikingowie', 6, '2019-12-17 09:24:50', 'Wikingowie.jpg', 7.3, 'Dramat', 1),
(7, 'Dark', 3, '2020-08-11 09:26:15', 'Dark.jpg', 7.7, 'Sci-Fi', 1),
(8, 'Wiedźmin', 2, '2021-12-17 09:27:43', 'Wiedźmin.jpg', 6.9, 'Fantasy', 1),
(9, 'Mindhunter', 2, '2019-08-16 09:29:06', 'Mindhunter.jpg', 7.9, 'Kryminał', 1),
(10, 'Ślepnąc od świateł', 1, '2018-10-24 09:30:12', 'Ślepnącodświateł.jpg', 7.2, 'Thriller', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `seriale_has_aktorzy`
--

CREATE TABLE `seriale_has_aktorzy` (
  `Seriale_idSeriale` int(11) NOT NULL,
  `Aktorzy_idAktorzy` int(11) NOT NULL,
  `postac` varchar(45) DEFAULT NULL,
  `ocena_roli` float DEFAULT NULL,
  `Opinie_idOpinie` int(11) NOT NULL,
  `Opinie_Uzytkownik_idUzytkownik` int(11) NOT NULL,
  `Opinie_Seriale_idSeriale` int(11) NOT NULL,
  `Opinie_Seriale_Uzytkownik_idUzytkownik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sezony`
--

CREATE TABLE `sezony` (
  `idSezony` int(11) NOT NULL,
  `ilosc_odcinkow` int(11) DEFAULT NULL,
  `Seriale_idSeriale` int(11) NOT NULL,
  `Seriale_Uzytkownik_idUzytkownik` int(11) NOT NULL,
  `ocena_sezonu` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `idUzytkownik` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `haslo` varchar(45) DEFAULT NULL,
  `plec` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`idUzytkownik`, `login`, `haslo`, `plec`) VALUES
(1, 'adam', 'dec', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD PRIMARY KEY (`idAktorzy`);

--
-- Indeksy dla tabeli `odcinki`
--
ALTER TABLE `odcinki`
  ADD PRIMARY KEY (`idOdcinki`,`Sezony_idSezony`,`Sezony_Seriale_idSeriale`,`Sezony_Seriale_Uzytkownik_idUzytkownik`),
  ADD KEY `fk_Odcinki_Sezony1_idx` (`Sezony_idSezony`,`Sezony_Seriale_idSeriale`,`Sezony_Seriale_Uzytkownik_idUzytkownik`);

--
-- Indeksy dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD PRIMARY KEY (`idOpinie`,`Uzytkownik_idUzytkownik`,`Seriale_idSeriale`,`Seriale_Uzytkownik_idUzytkownik`),
  ADD KEY `fk_Opinie_Uzytkownik1_idx` (`Uzytkownik_idUzytkownik`),
  ADD KEY `fk_Opinie_Seriale1_idx` (`Seriale_idSeriale`,`Seriale_Uzytkownik_idUzytkownik`);

--
-- Indeksy dla tabeli `seriale`
--
ALTER TABLE `seriale`
  ADD PRIMARY KEY (`idSeriale`,`Uzytkownik_idUzytkownik`);

--
-- Indeksy dla tabeli `seriale_has_aktorzy`
--
ALTER TABLE `seriale_has_aktorzy`
  ADD PRIMARY KEY (`Seriale_idSeriale`,`Aktorzy_idAktorzy`,`Opinie_idOpinie`,`Opinie_Uzytkownik_idUzytkownik`,`Opinie_Seriale_idSeriale`,`Opinie_Seriale_Uzytkownik_idUzytkownik`),
  ADD KEY `fk_Seriale_has_Aktorzy_Aktorzy1_idx` (`Aktorzy_idAktorzy`),
  ADD KEY `fk_Seriale_has_Aktorzy_Seriale_idx` (`Seriale_idSeriale`),
  ADD KEY `fk_Seriale_has_Aktorzy_Opinie1_idx` (`Opinie_idOpinie`,`Opinie_Uzytkownik_idUzytkownik`,`Opinie_Seriale_idSeriale`,`Opinie_Seriale_Uzytkownik_idUzytkownik`);

--
-- Indeksy dla tabeli `sezony`
--
ALTER TABLE `sezony`
  ADD PRIMARY KEY (`idSezony`,`Seriale_idSeriale`,`Seriale_Uzytkownik_idUzytkownik`),
  ADD KEY `fk_Sezony_Seriale1_idx` (`Seriale_idSeriale`,`Seriale_Uzytkownik_idUzytkownik`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`idUzytkownik`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `odcinki`
--
ALTER TABLE `odcinki`
  ADD CONSTRAINT `fk_Odcinki_Sezony1` FOREIGN KEY (`Sezony_idSezony`,`Sezony_Seriale_idSeriale`,`Sezony_Seriale_Uzytkownik_idUzytkownik`) REFERENCES `sezony` (`idSezony`, `Seriale_idSeriale`, `Seriale_Uzytkownik_idUzytkownik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD CONSTRAINT `fk_Opinie_Seriale1` FOREIGN KEY (`Seriale_idSeriale`,`Seriale_Uzytkownik_idUzytkownik`) REFERENCES `seriale` (`idSeriale`, `Uzytkownik_idUzytkownik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Opinie_Uzytkownik1` FOREIGN KEY (`Uzytkownik_idUzytkownik`) REFERENCES `uzytkownik` (`idUzytkownik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `seriale_has_aktorzy`
--
ALTER TABLE `seriale_has_aktorzy`
  ADD CONSTRAINT `fk_Seriale_has_Aktorzy_Aktorzy1` FOREIGN KEY (`Aktorzy_idAktorzy`) REFERENCES `aktorzy` (`idAktorzy`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Seriale_has_Aktorzy_Opinie1` FOREIGN KEY (`Opinie_idOpinie`,`Opinie_Uzytkownik_idUzytkownik`,`Opinie_Seriale_idSeriale`,`Opinie_Seriale_Uzytkownik_idUzytkownik`) REFERENCES `opinie` (`idOpinie`, `Uzytkownik_idUzytkownik`, `Seriale_idSeriale`, `Seriale_Uzytkownik_idUzytkownik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Seriale_has_Aktorzy_Seriale` FOREIGN KEY (`Seriale_idSeriale`) REFERENCES `seriale` (`idSeriale`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `sezony`
--
ALTER TABLE `sezony`
  ADD CONSTRAINT `fk_Sezony_Seriale1` FOREIGN KEY (`Seriale_idSeriale`,`Seriale_Uzytkownik_idUzytkownik`) REFERENCES `seriale` (`idSeriale`, `Uzytkownik_idUzytkownik`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
