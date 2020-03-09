-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： rm-2zew3g96vzbn5648cqo.mysql.rds.aliyuncs.com
-- 生成日期： 2020-03-09 07:14:00
-- 服务器版本： 5.7.26-log
-- PHP 版本： 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `pscdb`
--
CREATE DATABASE IF NOT EXISTS `pscdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pscdb`;

-- --------------------------------------------------------

--
-- 表的结构 `b_occi`
--

DROP TABLE IF EXISTS `b_occi`;
CREATE TABLE `b_occi` (
  `occi_id` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `ship_imo_number` varchar(255) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `callsign` varchar(255) DEFAULT NULL,
  `mmsi` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `ship_type` varchar(255) DEFAULT NULL,
  `deficiencies` varchar(255) DEFAULT NULL,
  `detention` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `lnspection_type` varchar(255) DEFAULT NULL,
  `classification_society` varchar(255) DEFAULT NULL,
  `srpattoi` varchar(255) DEFAULT NULL,
  `date_keel_laid` varchar(255) DEFAULT NULL,
  `deadweight` varchar(255) DEFAULT NULL,
  `tonnage` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_imo_number` varchar(255) DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `registered` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `ground_for_detention` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `b_occi_detail`
--

DROP TABLE IF EXISTS `b_occi_detail`;
CREATE TABLE `b_occi_detail` (
  `occi_id` varchar(255) NOT NULL,
  `occi_detail_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `ground_for_detention` varchar(255) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `b_occi`
--
ALTER TABLE `b_occi`
  ADD PRIMARY KEY (`occi_id`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`);

--
-- 表的索引 `b_occi_detail`
--
ALTER TABLE `b_occi_detail`
  ADD PRIMARY KEY (`occi_id`,`occi_detail_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `b_occi`
--
ALTER TABLE `b_occi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `b_occi_detail`
--
ALTER TABLE `b_occi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
