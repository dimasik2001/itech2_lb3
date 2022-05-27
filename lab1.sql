-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 19 2022 г., 12:08
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE `game` (
  `ID_GAME` int(10) NOT NULL,
  `date` date NOT NULL,
  `place` text NOT NULL,
  `score` text NOT NULL,
  `FID_TEAM1` int(10) NOT NULL,
  `FID_TEAM2` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`ID_GAME`, `date`, `place`, `score`, `FID_TEAM1`, `FID_TEAM2`) VALUES
(1, '2022-05-10', 'Kharkiv', '2-0', 1, 2),
(2, '2022-05-12', 'Kyiv', '2-0', 3, 6),
(3, '2022-05-12', 'Lviv', '0-0', 5, 2),
(4, '2022-05-13', 'Lutsk', '2-2', 7, 8),
(5, '2022-05-13', 'Dnipro', '1-1', 1, 4),
(6, '2022-05-14', 'Kharkiv', '1-0', 2, 3),
(7, '2022-05-14', 'Kyiv', '0-1', 5, 3),
(8, '2022-05-17', 'Dnipro', '0-1', 6, 8),
(9, '2022-05-16', 'Poltava', '0-3', 5, 7),
(10, '2022-05-15', 'Chernihiv', '4-1', 1, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `player`
--

CREATE TABLE `player` (
  `ID_PLAYER` int(10) NOT NULL,
  `name` text NOT NULL,
  `FID_TEAM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `player`
--

INSERT INTO `player` (`ID_PLAYER`, `name`, `FID_TEAM`) VALUES
(1, 'Raphael Patterson', 1),
(2, 'Xerxes Perry', 1),
(3, 'Antonio Wright', 1),
(4, 'Ozzy Young', 1),
(5, 'Immanuel Jenkins', 1),
(6, 'Ulrich Roberts', 1),
(7, 'Raul Perry', 1),
(8, 'Jace Perry', 2),
(9, 'Orlando Jenkins', 2),
(10, 'Troy Sanchez', 2),
(11, 'Yash Cox', 2),
(12, 'Trenton Bell', 2),
(13, 'Killian Torres', 2),
(14, 'Xathieur Jones', 3),
(15, 'Lewis Stewart', 3),
(16, 'Jace Green', 3),
(17, 'Umar Campbell', 3),
(18, 'Uthman Lewis', 3),
(19, 'Ulysses Smith', 3),
(20, 'Ronan Mitchell', 4),
(21, 'Wilder Thomas', 4),
(22, 'Eduardo Clark', 4),
(23, 'Alan Patterson', 4),
(24, 'Xenophon Hayes', 4),
(25, 'Adriel Clark', 5),
(26, 'Roberto Baker', 5),
(27, 'Jack Perez', 5),
(28, 'Isaak Moore', 5),
(29, 'Braden Edwards', 5),
(30, 'Zeke Ross', 5),
(31, 'Warren Morris', 6),
(32, 'Yehuda Green', 6),
(33, 'Patton Evans', 6),
(34, 'Malik Rodriguez', 6),
(35, 'Westley Ward', 6),
(36, 'Immanuel Young', 6),
(37, 'Zain White', 7),
(38, 'Ryland Simmons', 7),
(39, 'Wyatt Bennett', 7),
(40, 'Jesus Carter', 7),
(41, 'Shepherd Johnson', 7),
(42, 'Iver Martinez', 7),
(43, 'Jose Lee', 8),
(44, 'Patricio Foster', 8),
(45, 'Floyd Brown', 8),
(46, 'Ace Cox', 8),
(47, 'Kian Clark', 8),
(48, 'Gunnar Bailey', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `ID_TEAM` int(10) NOT NULL,
  `name` text NOT NULL,
  `LEAGUE` text NOT NULL,
  `coach` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`ID_TEAM`, `name`, `LEAGUE`, `coach`) VALUES
(1, 'Avangard', 'Premier League', 'Zeppelin Brooks'),
(2, 'Adoms', 'Sky Bet Championship', 'Zephaniah Morris'),
(3, 'Arsenal', 'Sky Bet League', 'Watson Moore'),
(4, 'Barsa', 'Premier League', 'Patrick Clark'),
(5, 'Veres', 'Sky Bet Championship', 'Dominick Griffin'),
(6, 'Volin', 'Sky Bet League', 'Zander Hughes'),
(7, 'Metalist', 'Premier League', 'Harper Baker'),
(8, 'Dinamo', 'Premier League', 'Vicente Barnes');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID_GAME`);

--
-- Индексы таблицы `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`ID_PLAYER`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`ID_TEAM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
