-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 01 2023 г., 18:52
-- Версия сервера: 10.4.26-MariaDB-log
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u1279356_DeltaTestTask`
--
CREATE DATABASE IF NOT EXISTS `u1279356_DeltaTestTask` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `u1279356_DeltaTestTask`;

-- --------------------------------------------------------

--
-- Структура таблицы `average_check`
--

CREATE TABLE `average_check` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `average_check`
--

INSERT INTO `average_check` (`id`, `date`, `price`) VALUES
(84, '2023-07-20', 5000),
(85, '2023-07-21', 6300),
(86, '2023-07-22', 4500),
(87, '2023-07-23', 5200),
(88, '2023-07-24', 5100),
(89, '2023-07-25', 5400),
(90, '2023-07-26', 6000),
(91, '2023-07-27', 4900),
(92, '2023-07-28', 5400),
(93, '2023-07-29', 5100),
(94, '2023-07-30', 6100),
(95, '2023-07-31', 5000),
(96, '2023-08-01', 5000);

-- --------------------------------------------------------

--
-- Структура таблицы `count_check`
--

CREATE TABLE `count_check` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `count_check`
--

INSERT INTO `count_check` (`id`, `date`, `price`) VALUES
(83, '2023-07-20', 100),
(84, '2023-07-21', 95),
(85, '2023-07-22', 98),
(86, '2023-07-23', 98),
(88, '2023-07-24', 95),
(89, '2023-07-25', 100),
(90, '2023-07-26', 97),
(91, '2023-07-27', 103),
(92, '2023-07-28', 100),
(93, '2023-07-29', 110),
(94, '2023-07-30', 101),
(95, '2023-07-31', 96),
(97, '2023-08-01', 102);

-- --------------------------------------------------------

--
-- Структура таблицы `revenue`
--

CREATE TABLE `revenue` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `revenue`
--

INSERT INTO `revenue` (`id`, `date`, `price`) VALUES
(52, '2023-07-22', 220000),
(53, '2023-07-23', 230000),
(54, '2023-07-24', 210000),
(57, '2023-07-25', 200000),
(58, '2023-07-26', 180000),
(59, '2023-07-27', 215000),
(60, '2023-07-28', 220000),
(61, '2023-07-29', 220000),
(62, '2023-07-30', 230000),
(63, '2023-07-31', 230000),
(64, '2023-08-01', 220000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `average_check`
--
ALTER TABLE `average_check`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date` (`date`);

--
-- Индексы таблицы `count_check`
--
ALTER TABLE `count_check`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date` (`date`);

--
-- Индексы таблицы `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date` (`date`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `average_check`
--
ALTER TABLE `average_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT для таблицы `count_check`
--
ALTER TABLE `count_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT для таблицы `revenue`
--
ALTER TABLE `revenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
