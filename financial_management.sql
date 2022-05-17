-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-05-17 19:23:21
-- 伺服器版本： 10.4.13-MariaDB
-- PHP 版本： 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `financial_management`
--

-- --------------------------------------------------------

--
-- 資料表結構 `icome`
--

CREATE TABLE `icome` (
  `UID` int(255) NOT NULL,
  `input_time` datetime NOT NULL,
  `work_name` varchar(64) NOT NULL,
  `work_time` date NOT NULL,
  `salary` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `item_pro`
--

CREATE TABLE `item_pro` (
  `Item_id` int(255) NOT NULL,
  `properties_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `living`
--

CREATE TABLE `living` (
  `UID` int(255) NOT NULL,
  `input_time` datetime NOT NULL,
  `Item_id` int(255) NOT NULL,
  `item_name` varchar(32) NOT NULL,
  `cost` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `user_info`
--

CREATE TABLE `user_info` (
  `UID` int(255) NOT NULL,
  `account` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `user_info`
--

INSERT INTO `user_info` (`UID`, `account`, `password`, `email`) VALUES
(0, 'james', 'apple', 'james@gmail');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `icome`
--
ALTER TABLE `icome`
  ADD PRIMARY KEY (`UID`,`input_time`);

--
-- 資料表索引 `item_pro`
--
ALTER TABLE `item_pro`
  ADD PRIMARY KEY (`Item_id`);

--
-- 資料表索引 `living`
--
ALTER TABLE `living`
  ADD PRIMARY KEY (`UID`,`input_time`),
  ADD KEY `living_ibfk_2` (`Item_id`);

--
-- 資料表索引 `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`UID`,`account`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `icome`
--
ALTER TABLE `icome`
  ADD CONSTRAINT `icome_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `user_info` (`UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `living`
--
ALTER TABLE `living`
  ADD CONSTRAINT `living_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `user_info` (`UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `living_ibfk_2` FOREIGN KEY (`Item_id`) REFERENCES `item_pro` (`Item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
