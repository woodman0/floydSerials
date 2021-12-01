-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2021, 09:32
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
(1, 'Gra o tron', 8, '2019-05-19 09:11:41', 'graotron.jpg', 8.9, 'Fantasy', 1),
(2, 'Breaking Bad', 5, '2013-09-29 09:17:22', 'BreakingBad.jpg', 8.6, 'Dramat', 1),
(3, 'Detektyw', 3, '2014-03-09 09:20:34', 'Detektyw.jpg', 9, 'Dramat', 1),
(4, 'Czarne lustro', 5, '2021-12-01 09:21:38', 'Czarnelustro.jpg', 8, 'Dramat', 1),
(5, 'Peaky Blinders', 6, '2019-09-22 09:22:52', 'PeakyBlinders.jpg', 8.2, 'Kryminał', 1),
(6, 'Wikingowie', 6, '2019-12-17 09:24:50', 'Wikingowie.jpg', 7.3, 'Dramat', 1),
(7, 'Dark', 3, '2020-08-11 09:26:15', 'Dark.jpg', 7.7, 'Sci-Fi', 1),
(8, 'Wiedźmin', 2, '2021-12-17 09:27:43', 'Wiedźmin.jpg', 6.9, 'Fantasy', 1),
(9, 'Mindhunter', 2, '2019-08-16 09:29:06', 'Mindhunter.jpg', 7.9, 'Kryminał', 1),
(10, 'Ślepnąc od świateł', 1, '2018-10-24 09:30:12', 'Ślepnącodświateł.jpg', 7.2, 'Thriller', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `seriale`
--
ALTER TABLE `seriale`
  ADD PRIMARY KEY (`idSeriale`,`Uzytkownik_idUzytkownik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
