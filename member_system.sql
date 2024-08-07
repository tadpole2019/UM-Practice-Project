-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024 年 07 月 08 日 02:37
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `member_system`
--

-- --------------------------------------------------------

--
-- 資料表結構 `member_data`
--

CREATE TABLE `member_data` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `pwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_data`
--

INSERT INTO `member_data` (`id`, `name`, `email`, `uid`, `pwd`) VALUES
(1, 'jack', 'gyuigyuig@abc.com', 'jackjack', '$2y$10$KZfkLHwqQKWeRuGVg5kI..zu6ccgJ2UmJ5BIhRoMRcP/3oH/dWr1C'),
(2, 'wojack', 'wojack@abc.gmail', 'wojackjack', '$2y$10$51tTDloD4ivaOCPOX90VwO9GVgcakes9W97FbcjjKRD1A0YkEzIzm'),
(3, 'test', 'test@abc.com', 'testtest', '$2y$10$iJku6AcVrpfDtN.KjkOoe.tgXbOdrC1azXt.zvyFCGUSRyjc6uiZu'),
(4, 'sam', 'sam@abc.com', 'samsam', '$2y$10$KOlapMjiv2E2IYzFFqqqUeVmK4F9jDuUCqE1MmonSoUd2X5nm337e'),
(5, 'abc', 'abc@abc.com', 'abcabc', '$2y$10$gjKL0VTBISsygHv7Fl4jyOUxY6meK479he56dALgF0SMBrammRPCu'),
(6, 'SUMSUNG', 'sumsung@abc.com', 'samsung', '$2y$10$u8QfRXHDEnJ6pxpMo7hoGuR5.xfbGr4k.fZ0E0V9PJM9ugAxfaBh6'),
(7, 'kevin', 'kevin@abc.com', 'kevinkevi', '$2y$10$s4QT1Vqv/rFSMDTiKBQuk.lylLs0aDcWfSIHGfg5BZt6.kufrP1vy'),
(8, 'annie', 'annie@abc.com', 'annieannie', '$2y$10$LL7Tx0y01WJwFG4NUQ9BweGnt6T.R.42VhlHfLMWzS5WhH0nrpzce'),
(9, 'joe', 'joejoe@abc.com', 'jeojeo', '$2y$10$/JO6QidiJGhYJrAfG31gTeoQqGFZG8le.6wLH2DM/qWVZSiFr9lie'),
(10, 'chiba@abc.com', 'chiba', 'ChibaChiba8787', '$2y$10$3tzbaVd2j7Oml8tx6WiYIu9Jvbx83HAw/cVT/IOeSTe6SYqylUYiu'),
(11, 'chiba', 'ChibaChiba8787', 'chiba@abc.com', '$2y$10$j3IocuYuID6d9IP3HsXaOeUNe35/rOKJDZZuNlDPVNbNJ1fvEqzDu'),
(12, 'chibaba', 'chibaba@abc.com', 'chibachiba', '$2y$10$86CmilaOh49DAW1E2/Kbmuw4piHoXUWTcfOC0iGBniSPhgDZyvhkm'),
(13, 'kk', 'kk@kk.com', 'kkkk', '$2y$10$hUnDtymKcg8xFBHBKSZEi.Py1Q6aRjvvUmHeTEStmYxygc/H8xUqK'),
(14, 'jhan', 'eletronicphysic0907@gmail.com', 'jhanjhan', '$2y$10$C.VTxDaQeKHu7V8aOg01G.veingEeZ5Zh5tAnVs5OhUXk9AHlVjVC');

-- --------------------------------------------------------

--
-- 資料表結構 `member_profiles`
--

CREATE TABLE `member_profiles` (
  `profiles_id` int(11) NOT NULL,
  `profiles_about` text NOT NULL,
  `profiles_introtitle` text NOT NULL,
  `profiles_introtext` text NOT NULL,
  `users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member_profiles`
--

INSERT INTO `member_profiles` (`profiles_id`, `profiles_about`, `profiles_introtitle`, `profiles_introtext`, `users_id`) VALUES
(1, '學生', '一名工程師', 'hjkbgfdh', NULL),
(5, '中學生', '準備大考', '$%#^%#$%&$%^&$%^&', 2),
(24, '學生', '一名網路工程師', ' s  zc ', 13),
(25, '中學生', '準備大考', 'dfgdgh', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `pwd_reset`
--

CREATE TABLE `pwd_reset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` text NOT NULL,
  `pwd_reset_selector` text NOT NULL,
  `pwd_reset_token` longtext NOT NULL,
  `pwd_reset_expires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pwd_reset`
--

INSERT INTO `pwd_reset` (`pwd_reset_id`, `pwd_reset_email`, `pwd_reset_selector`, `pwd_reset_token`, `pwd_reset_expires`) VALUES
(7, 'eletronicphysic0907@gmail.com', 'e1e583958048d162', '$2y$10$gB07QwVa6BDSQvizm9N02.ZzGM0v.kgIXk2Vjbrw8WIDvg/bBUF4W', '1720374849');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `member_data`
--
ALTER TABLE `member_data`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `member_profiles`
--
ALTER TABLE `member_profiles`
  ADD PRIMARY KEY (`profiles_id`),
  ADD KEY `users_id` (`users_id`);

--
-- 資料表索引 `pwd_reset`
--
ALTER TABLE `pwd_reset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_data`
--
ALTER TABLE `member_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member_profiles`
--
ALTER TABLE `member_profiles`
  MODIFY `profiles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pwd_reset`
--
ALTER TABLE `pwd_reset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `member_profiles`
--
ALTER TABLE `member_profiles`
  ADD CONSTRAINT `member_profiles_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `member_data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
