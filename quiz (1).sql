-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2026 at 12:04 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gracze`
--

CREATE TABLE `gracze` (
  `Imię` varchar(255) NOT NULL,
  `Wynik` varchar(20) DEFAULT NULL,
  `Data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gracze`
--

INSERT INTO `gracze` (`Imię`, `Wynik`, `Data`) VALUES
('wff', '10/10', '2026-03-25 19:56:47'),
('w', '10/10', '2026-03-25 19:57:58'),
('test', '10/10', '2026-03-25 19:58:46'),
('WQWWW2', '10/10', '2026-03-25 20:03:19'),
('2', '0/10', '2026-03-25 20:08:59'),
('4', '0/10', '2026-03-25 20:10:01'),
('27', '7/10', '2026-03-26 20:16:00'),
('w', '0/10', '2026-03-26 20:30:57'),
('Gracz 1ovc3', '3/10', '2026-03-26 20:40:56'),
('Gracz c46oi', '0/10', '2026-03-08 12:08:42'),
('Gracz ghp6f', '4/10', '2026-03-27 12:41:02'),
('Gracz q08wn', '0/10', '2026-03-30 14:56:18'),
('Gracz l9u50', '0/10', '2026-03-30 14:58:26'),
('Gracz sdb43', '5/10', '2026-03-30 15:12:41'),
('Gracz jmyac', '10/10', '2026-03-30 15:13:50'),
('Gracz g9po4', '0/10', '2026-03-30 15:21:36'),
('Gracz dgq2x', '10/10', '2026-03-30 15:22:38'),
('Gracz smikg', '10/10', '2026-03-30 15:25:36'),
('w', '10/10', '2026-03-31 11:50:28'),
('w', '10/10', '2026-03-31 11:53:11'),
('Gracz mhde0', '10/10', '2026-03-31 11:54:27'),
('Gracz 0dbh2', '0/10', '2026-03-31 11:55:07'),
('Gracz uk5bn', '1/10', '2026-03-31 11:55:18'),
('Gracz 6ldxc', '10/10', '2026-03-31 11:55:49');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odpowiedzi`
--

CREATE TABLE `odpowiedzi` (
  `id_pytania` int(11) NOT NULL,
  `a` varchar(200) DEFAULT NULL,
  `b` varchar(200) DEFAULT NULL,
  `c` varchar(200) DEFAULT NULL,
  `d` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `odpowiedzi`
--

INSERT INTO `odpowiedzi` (`id_pytania`, `a`, `b`, `c`, `d`) VALUES
(1, 'Barry Nelson', 'Sean Connery', 'Sean Connery', 'George Lazenby'),
(2, 'Moses Hightower', 'Carey Mahoney', 'Eugene Tackleberry', 'Larvell Jones'),
(3, 'Black Pearl', 'Millennium Falcon', 'Imperial I-class star destroyer', 'Bismarck'),
(4, 'Obi-Wan Kenobi', 'OLD LADY', 'Yoda', 'Kesuke Miyagi'),
(5, 'Predator', 'Alien', 'Lord Of The Ring Two Tower', 'Jurassic Park'),
(6, 'Profesora', 'Doctora', '	\r\nMagistra', 'Inżynier'),
(7, 'Były prezydent Stanów Zjednoczonych', 'Abraham Lincoln', 'Nikt z nich', 'Winston Churchill'),
(8, 'King Kong', 'Godzila', 'Król Julian', 'Ciekawski Dzordz'),
(9, 'Super Man', 'Bruce Lee', 'Nietoperek', 'Batman'),
(10, 'Peter Cushing', 'Peter Mayhew', 'Alec Guinness', 'David Prowse'),
(11, 'Sci-Fi', 'Horror', 'Fantazy', 'przygodowy'),
(12, 'Dzięń Świra', 'Nie lubie poniedziałku', 'Killer', 'Chłopaki nie płaczą'),
(13, 'Lawer', 'Mother', 'Ghostbuster', 'Humanbuster'),
(14, 'ksiązce', 'histori', 'grze', 'propagandzie'),
(15, 'od WTC', 'Od dwóch agenci w wierzach', 'OD Wwieży Saurona i Sarumana', 'nie wiem'),
(16, 'Sylvester Stallone', 'Arnold Schwarzenegger ', 'Jean-Claude van Damme', 'Roger Moore'),
(17, 'Psy', 'Pitbull', 'Chłopaki nie płaczą', 'Vabank'),
(18, 'Bronisław Kaper', 'Krzysztof Komeda', 'Jan A.P. Kaczmarek', 'Wojciech Kilar'),
(19, 'Kanał', 'W ciemności', 'Seksmisja', 'Heweliusz'),
(20, 'Star Wars', 'Terminator', 'Matrix', '2012'),
(21, 'Pół żartem, pół serio', 'Szklana pułapka', 'Superman', 'Wonder woman'),
(22, 'Duńczyk', 'Fin', 'Norweg', 'Szwed'),
(23, 'Sean Connery', 'Roger Moore', 'Daniel Craig', 'Desmond Llewelyn'),
(24, 'Federico Fellini', 'Pier Paolo Pasolini', 'Carlo Ponti', 'Luchino Visconti'),
(25, 'Roberto Benigni', 'Marcello Mastroianni', 'Alberto Sordi', 'Franco Nero'),
(26, 'Franco Zeffirelli', 'Sergio Leone', 'Bernardo Bertolucci', 'Giuseppe Tornatore'),
(27, 'Anouk Aime', 'Brigitte Bardot', 'Claudia Cardinale', 'Danielle Darrieux');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poprawna_odpowiedz`
--

CREATE TABLE `poprawna_odpowiedz` (
  `id_pytania` int(11) NOT NULL,
  `poprawna` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poprawna_odpowiedz`
--

INSERT INTO `poprawna_odpowiedz` (`id_pytania`, `poprawna`) VALUES
(1, 'A'),
(2, 'C'),
(3, 'A'),
(4, 'D'),
(5, 'A'),
(7, 'C'),
(6, 'B'),
(8, 'A'),
(9, 'D'),
(10, 'D'),
(11, 'B'),
(12, 'B'),
(13, 'C'),
(14, 'B'),
(15, 'C'),
(16, 'B'),
(17, 'C'),
(18, 'A'),
(19, 'C'),
(20, 'B'),
(21, 'A'),
(22, 'A'),
(23, 'D'),
(24, 'C'),
(25, 'A'),
(26, 'B'),
(27, 'B');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `ID` int(11) NOT NULL,
  `Treść_Pytania` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pytania`
--

INSERT INTO `pytania` (`ID`, `Treść_Pytania`) VALUES
(1, 'Kto grał pierszy James Bonda w filmach?'),
(2, 'Policjant, który znał się na broni ma na imię...'),
(3, 'Słynny statek, który prowadził Capitan J. S.'),
(4, '\"Porażka z przeciwnikiem jest w porządku, nie wolno ulec strachowi!\" kto to powiedział?'),
(5, '\"Jeśli krwawi, możemy to zabić.\" z jakiego to filmu?'),
(6, 'Hannibal Lecter miał tytuł...'),
(7, 'Aktor, który zagrał w filmie i był potem dwa razy prezydentem to...'),
(8, 'Wielka Małpa ma imię.'),
(9, '\"I am Vengeance! I am the Night! I am...\"'),
(10, 'Kto grał Dartha Vadera w oryginalnej trylogii?'),
(11, 'Freddy Krueger to postać z filmów typu'),
(12, '\"Kurka Wodna\" z jakiego POLSKIEGO filmu jest to znane?'),
(13, '\"Who You Gonna Call?\"'),
(14, 'Titanic jest oparty na'),
(15, 'Skąd nazwa dwie wieże?'),
(16, 'Który aktor jako pierwszy wcielił się w rolę Terminatora?'),
(17, 'W jakim polskim filmie powiedziano:  „Nie chce mi się z tobą gadać”.'),
(18, 'Który polski kompozytor dostał jako pierwszy Oscara za muzykę do filmu'),
(19, 'W jakim polskim filmie powiedziano:  „Ciemność, widzę ciemność!\"'),
(20, 'W jakim zagranicznym filmie powiedziano:  „I,ll be back”'),
(21, 'W jakim zagranicznym filmie powiedziano:  „Nikt nie jest doskonały\"'),
(22, 'Jakiej narodowości był Egon Olsen:'),
(23, 'Kto grał w największej ilości filmów z Jamesem Bondem:'),
(24, 'Który włoski reżyser jest mężem Sofii Loren:'),
(25, 'Który włoski aktor zdobył Oscara:'),
(26, 'Kto był reżyserem tzw. spagetti westernów:'),
(27, 'Największa gwiazda filmu francuskiego:');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  ADD KEY `id_pytania` (`id_pytania`);

--
-- Indeksy dla tabeli `poprawna_odpowiedz`
--
ALTER TABLE `poprawna_odpowiedz`
  ADD KEY `id_pytania` (`id_pytania`);

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pytania`
--
ALTER TABLE `pytania`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  ADD CONSTRAINT `odpowiedzi_ibfk_1` FOREIGN KEY (`id_pytania`) REFERENCES `pytania` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `poprawna_odpowiedz`
--
ALTER TABLE `poprawna_odpowiedz`
  ADD CONSTRAINT `poprawna_odpowiedz_ibfk_1` FOREIGN KEY (`id_pytania`) REFERENCES `pytania` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
