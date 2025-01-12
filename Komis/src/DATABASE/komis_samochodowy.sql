-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 11:59 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komis_samochodowy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czesci_magazyn`
--

CREATE TABLE `czesci_magazyn` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(11) DEFAULT NULL,
  `nazwa` varchar(40) DEFAULT NULL,
  `marka` varchar(40) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `rok_produkcji` int(11) DEFAULT NULL,
  `stan_czesci` varchar(40) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `data_zakupu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czesci_oferta`
--

CREATE TABLE `czesci_oferta` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(40) DEFAULT NULL,
  `marka` varchar(40) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `rok_produkcji` int(11) DEFAULT NULL,
  `stan_czesci` varchar(40) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czesci_sprzedane`
--

CREATE TABLE `czesci_sprzedane` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody_magazyn`
--

CREATE TABLE `samochody_magazyn` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(11) DEFAULT NULL,
  `marka` varchar(40) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `rok_produkcji` int(11) DEFAULT NULL,
  `przebieg` int(11) DEFAULT NULL,
  `stan_pojazdu` varchar(40) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `data_zakupu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody_oferta`
--

CREATE TABLE `samochody_oferta` (
  `id` int(11) NOT NULL,
  `marka` varchar(40) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `rok_produkcji` int(11) DEFAULT NULL,
  `przebieg` int(11) DEFAULT NULL,
  `stan_pojazdu` varchar(40) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody_sprzedane`
--

CREATE TABLE `samochody_sprzedane` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `imie` varchar(40) DEFAULT NULL,
  `nazwisko` varchar(40) DEFAULT NULL,
  `login` varchar(40) DEFAULT NULL,
  `haslo` varchar(40) DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL,
  `rodzaj_konta` varchar(40) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `czesci_magazyn`
--
ALTER TABLE `czesci_magazyn`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `czesci_oferta`
--
ALTER TABLE `czesci_oferta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `czesci_sprzedane`
--
ALTER TABLE `czesci_sprzedane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody_magazyn`
--
ALTER TABLE `samochody_magazyn`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody_oferta`
--
ALTER TABLE `samochody_oferta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody_sprzedane`
--
ALTER TABLE `samochody_sprzedane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
