-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： rm-2zew3g96vzbn5648cqo.mysql.rds.aliyuncs.com
-- 生成日期： 2019-08-29 11:11:08
-- 服务器版本： 5.7.25-log
-- PHP 版本： 7.2.19

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

-- --------------------------------------------------------

--
-- 表的结构 `b_occi`
--

CREATE TABLE `b_occi` (
  `occi_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `imo_number` varchar(255) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `callsign` varchar(255) DEFAULT NULL,
  `mmsi` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `deficiencies` varchar(255) DEFAULT NULL,
  `detention` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `classification_society` varchar(255) DEFAULT NULL,
  `srpattoi` varchar(255) DEFAULT NULL,
  `date_keel_laid` varchar(255) DEFAULT NULL,
  `deadweight` varchar(255) DEFAULT NULL,
  `tonnage` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `registered` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `ground_for_detention` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `b_occi`
--

INSERT INTO `b_occi` (`occi_id`, `date`, `place`, `imo_number`, `ship_name`, `callsign`, `mmsi`, `flag`, `deficiencies`, `detention`, `authority`, `port`, `type`, `classification_society`, `srpattoi`, `date_keel_laid`, `deadweight`, `tonnage`, `name`, `residence`, `registered`, `phone`, `fax`, `email`, `code`, `nature`, `ground_for_detention`) VALUES
('00096D89-6748-4735-96BD-A695F059FC01', '2028-08-20', './img/flags/AU.png', '9658989', 'FEDERAL TAKASE', 'V7NJ9', '538006467', 'Marshall Islands', '0', 'no', NULL, NULL, './img/flags/MH.png', NULL, 'Low Risk Ship', 'Bulk carrier', '55178', '31584', 'ANGLO-EASTERN SHIP MANAGEMENT LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('00D517B5-4BCD-4FF5-BDEE-17A6F4F554B8', '2028-08-20', './img/flags/CL.png', '9595357', 'STORM RIDER', '5BKG3', '212712000', 'Cyprus', '6', 'yes', NULL, NULL, './img/flags/CY.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '34154', '22413', 'Grecomar Shipping Agency Ltd', 'Greece', 'Greece', '+30 210 898 6160', '+30 210 898 6162', 'info@grecomar.com.gr', NULL, NULL, NULL),
('0322D0DF-DFAB-4AD4-9F62-2CAE41057EEB', '2028-08-20', './img/flags/CN.png', '9422574', 'FAR EAST GRACE', 'VRCM5', '477656100', 'Hong Kong, China', '3', 'no', NULL, NULL, './img/flags/HK.png', NULL, 'High Risk Ship', 'Container ship', '7814', '6253', 'Hongxin Ship Management Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('039771A5-A2B5-484D-9110-AAFF3A4C9A7F', '2028-08-20', './img/flags/CN.png', '9403085', 'CARINA OCEAN', '9V7850', '566928000', 'Singapore', '8', 'no', NULL, NULL, './img/flags/SG.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '58765', '32379', 'Laurel Ship Management Pte Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('03F2B063-E765-4F36-BE3F-D20AB98B9384', '2028-08-20', './img/flags/CN.png', '9659751', 'BUNUN ELEGANCE', 'VRNW9', '477127400', 'Hong Kong, China', '4', 'no', NULL, NULL, './img/flags/HK.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '45556', '27440', 'WISDOM MARINE INTERNATIONAL INC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0511E493-C8A9-4418-AFEB-FCAD09BEA0A5', '2028-08-20', './img/flags/SG.png', '9280811', 'SILVIA', 'V7FW8', '538090118', 'Marshall Islands', '2', 'no', NULL, NULL, './img/flags/MH.png', NULL, 'High Risk Ship', 'Container ship', '55497', '40952', 'Herm Dauelsberg GmbH & Co KG', 'Germany', 'Germany', '+49 421 309 3367', '+49 421 309 3437', 'hdcharter@dauelsberg.de', NULL, NULL, NULL),
('06B77581-5B89-4ACC-9DA1-035D650CC998', '2028-08-20', './img/flags/JP.png', '9102356', 'ACE SAMBU', 'DSNM2', '441394000', 'Korea, Republic of', '0', 'no', NULL, NULL, './img/flags/KR.png', NULL, 'Standard Risk Ship', 'Chemical tanker', '2689', '1688', 'Sambu Shipping Co Ltd', NULL, NULL, '+82 51 465 6501', '+82 51 464 0525', 'sbsp@sbsp.co.kr', NULL, NULL, NULL),
('0702C8A9-501E-418F-8332-3D164310D9A5', '2028-08-20', './img/flags/RU.png', '9524815', 'BABUZA WISDOM', '3EXX5', '370749000', 'Panama', '6', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '18969', '11666', 'Well Shipmanagement & Maritime Consultant Co Ltd', NULL, NULL, '+886 2 2700 1158', '+886 2 2700 1322', 'wsm@wellship.com.tw', NULL, NULL, NULL),
('0CB5852F-4BAF-4846-B608-9E536C2483A3', '2028-08-20', './img/flags/CN.png', '9713947', 'SSI TRIUMPH', 'V7TH6', '538006967', 'Marshall Islands', '4', 'no', NULL, NULL, './img/flags/MH.png', NULL, NULL, 'Bulk carrier', '61236', '34773', 'Atlantis Gemi Isletmeciligi Denizcilik  ve Teknik Danismanlik AS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0FD521C9-E73D-4380-A1CA-64585584FB42', '2028-08-20', './img/flags/KR.png', '9355238', 'GRAND DAHLIA', '3FRA8', '355222000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Low Risk Ship', 'Vehicle carrier', NULL, '59217', 'CIDO SHIPPING(KOREA) CO.& #44; LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1', '2019-08-06', './img/flags/CN.png', '9363421', '1', '111', '353261000', '1', '1', 'no', '1', '1', '1', '1', '', '1', '1', '1', '', '1', '1', '', '1', '1', '1', '1', '1'),
('1111', '2019-08-15', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '123', '', '123', '123', '123', '', '123', '123', '', '123', '123', '123', '123', '123'),
('12718512-9ED1-49C7-AEA8-92618810ABE8', '2028-08-20', './img/flags/JP.png', '9342578', 'CHANG DA', 'V3UU9', '312750000', 'Belize', '3', 'no', NULL, NULL, './img/flags/BZ.png', NULL, NULL, 'Bulk carrier', '2835', '1970', 'Weihai Jiayang International Shipping Management Co Ltd', 'China', 'China', '+86 631 567 0959', '+86 631 567 0979', 'seajoy2008@sina.com', NULL, NULL, NULL),
('16D9FF3C-43DF-4E3D-901D-F7C8DD4F1D0C', '2028-08-20', './img/flags/JP.png', '9363326', 'TIAN CONG', 'BBHD', '412328030', 'China', '3', 'no', NULL, NULL, './img/flags/CN.png', NULL, NULL, 'General cargo/multipurpose', NULL, '1972', 'Shandong Oumei Marine Shipping Co Ltd', 'China', 'China', '+86 535 622 7109', '+86 535 622 8109', NULL, NULL, NULL, NULL),
('1B58BE7B-A996-4675-B587-B8C152BFCEA3', '2028-08-20', './img/flags/JP.png', '9363326', 'TIAN CONG', 'BBHD', '412328030', 'China', '2', 'no', NULL, NULL, './img/flags/CN.png', NULL, 'High Risk Ship', 'General cargo/multipurpose', NULL, '1972', 'Shandong Oumei Marine Shipping Co Ltd', 'China', 'China', '+86 535 622 7109', '+86 535 622 8109', NULL, NULL, NULL, NULL),
('1E97D730-192F-43CD-A3DE-9AB86895E78C', '2028-08-20', './img/flags/RU.png', '9517628', 'NAGOYA TRADER', 'D8TG', '440516000', 'Korea, Republic of', '1', 'no', NULL, NULL, './img/flags/KR.png', NULL, 'High Risk Ship', 'Container ship', '12550', '9524', 'Sinokor Ship Management Co Ltd', NULL, NULL, '+82 2 6496 7253', '+82 2 6496 7259', 'smt@sinokor.co.kr', NULL, NULL, NULL),
('2', '2019-08-06', './img/flags/CN.png', '9461422', '2', '2', '218441000', '2', '2', 'no', '2', '2', '2', '2', '', '2', '2', '2', '', '2', '2', '', '2', '2', '2', '2', '2'),
('205A83DD-6C97-49C2-8E19-29E21F619A78', '2028-08-20', './img/flags/AU.png', '9461295', 'SUNNY SKY', '3EPC5', '370624000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Low Risk Ship', 'Bulk carrier', '179797', '94145', 'Qingdao Winning International Ships Management Co Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('284D5C2E-59BE-43CE-9D85-F57B743BCC90', '2028-08-20', './img/flags/RU.png', '8653085', 'RICH LAND 58', '3FFW', '373456000', 'Panama', '5', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'High Risk Ship', 'Bulk carrier', '16552', '9785', 'Hong Kong Chenglu International Ship  Management Co Ltd', NULL, NULL, NULL, NULL, 'hkclsm@vip.163.com', NULL, NULL, NULL),
('292DE59B-737B-4782-A427-D01D8002AEBE', '2028-08-20', './img/flags/CN.png', '9615107', 'SEA SMILE', 'D5BT2', '636015598', 'Liberia', '5', 'no', NULL, NULL, './img/flags/LR.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '38109', '23273', 'SANTOKU SENPAKU CO LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2D8348DB-70BD-4881-8784-EBBC1E54D70D', '2028-08-20', './img/flags/CN.png', '9403853', 'HYPERION', 'C6WS5', '309947000', 'Bahamas', '3', 'no', NULL, NULL, './img/flags/BS.png', NULL, NULL, 'Container ship', '12469', '9971', 'Kotoku Kaiun Co Ltd (Kotoku Kaiun KK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2E69F9BF-C08D-4132-96EA-3DCC96B0F2FE', '2028-08-20', './img/flags/JP.png', '9565558', 'CAPE TOWN HIGHWAY', '3FOK4', '372031000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Low Risk Ship', 'Vehicle carrier', NULL, '58535', '\'K\' Line RoRo Bulk Ship Management Co Ltd', 'Japan', 'Japan', '+81 78 334 9700', '+81 78 334 9719', NULL, NULL, NULL, NULL),
('3', '2019-08-06', './img/flags/CN.png', '9622069', '3', '3', '256657000', '3', '3', 'no', '3', '3', '3', '3', '', '3', '3', '3', '', '3', '3', '', '3', '3', '3', '3', '3'),
('30924D6B-B11A-45F1-BFE7-16F815592E91', '2028-08-20', './img/flags/HK.png', '9563940', 'INDUS VICTORY', '9V8465', '566805000', 'Singapore', '3', 'no', NULL, NULL, './img/flags/SG.png', NULL, NULL, 'Bulk carrier', '92870', '51238', 'V SHIPS ASIA GROUP PTE LTD', 'Singapore', 'Singapore', '+65 6885 0610', '+65 6324 0977', 'vssinopstech@vships.com', NULL, NULL, NULL),
('318C8C61-A129-43A7-88CF-1F9CF2E922E0', '2028-08-20', './img/flags/AU.png', '9182277', 'CASSIOPEIA LEADER', '7JZI', '431013000', 'Japan', '0', 'no', NULL, NULL, './img/flags/JP.png', NULL, 'Low Risk Ship', 'Vehicle carrier', '21547', '57484', 'NYK SHIPMANAGEMENT PTE LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('31F01237-2629-4718-9E69-A0EB14ABEBF6', '2028-08-20', './img/flags/CN.png', '9232163', 'EVNIA', '5BJG3', '209279000', 'Cyprus', '4', 'no', NULL, NULL, './img/flags/CY.png', NULL, NULL, 'Bulk carrier', '53806', '31167', 'Blue Planet Shipping Ltd', 'Greece', 'Liberia', '+30 210 459 9010', '+30 210 451 8857', 'info@blueplanetshipping.gr', NULL, NULL, NULL),
('363FCEB7-B82D-4D0E-BDF2-0797EA4C3DB8', '2028-08-20', './img/flags/HK.png', '9256391', 'X-PRESS COTOPAXI', '9V8333', '563056700', 'Singapore', '8', 'no', NULL, NULL, './img/flags/SG.png', NULL, 'High Risk Ship', 'Container ship', NULL, '18334', 'Sea Consortium Pte Ltd (X-Press Feeders)', 'Singapore', 'Singapore', '+65 6223 9033', '+65 6225 7496', 'admin@x-pressfeeders.com', NULL, NULL, NULL),
('36620400-84D5-4FC8-84F7-EF339CEA714E', '2028-08-20', './img/flags/JP.png', '9104653', 'CHANG SHENG', 'V3PK', '312161000', 'Belize', '8', 'no', NULL, NULL, './img/flags/BZ.png', NULL, NULL, 'General cargo/multipurpose', NULL, '2102', 'Weihai Jiayang International Shipping Management Co Ltd', 'China', 'China', '+86 631 567 0959', '+86 631 567 0979', 'seajoy2008@sina.com', NULL, NULL, NULL),
('3753D162-6D42-48A7-A379-71571B419BC1', '2028-08-20', './img/flags/CN.png', '9222974', 'E. R. KOBE', 'A8AW2', '636018272', 'Liberia', '1', 'no', NULL, NULL, './img/flags/LR.png', NULL, NULL, 'Container ship', '68196', '66058', 'ZEABORN Ship Management GmbH & Cie KG', 'Germany', 'Germany', '+49 40 3008 1100', '+49 40 3008 1000', 'info@zea-ship.com', NULL, NULL, NULL),
('38EDF741-EDA3-493D-A909-76A4DB888F78', '2028-08-20', './img/flags/JP.png', '9426386', 'MARGUERITE ACE', '3EQH', '372158000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Low Risk Ship', 'Vehicle carrier', NULL, '60067', 'Osaka Fleet Co Ltd', 'Japan', 'Japan', '+81 6 6443 2823', '+81 6 6643 7203', 'fleet@osakafleet.co.jp', NULL, NULL, NULL),
('3B8FB1BF-4C1E-41B5-9773-32564C5317BB', '2028-08-20', './img/flags/CN.png', '9812767', 'NEW SHI DAO PEARL', 'D7TG', '441877000', 'Korea, Republic of', '2', 'no', NULL, NULL, './img/flags/KR.png', NULL, NULL, 'Ro-Ro passenger ship', '7592', '19988', 'SHIDAO INTERNATIONAL FERRY CO.& amp; #44;LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('3C082A5D-F0A4-4175-B555-ECB283E47A07', '2028-08-20', './img/flags/JP.png', '9104653', 'CHANG SHENG', 'V3PK', '312161000', 'Belize', '1', 'no', NULL, NULL, './img/flags/BZ.png', NULL, 'High Risk Ship', 'General cargo/multipurpose', NULL, '2102', 'Weihai Jiayang International Shipping Management Co Ltd', 'China', 'China', '+86 631 567 0959', '+86 631 567 0979', 'seajoy2008@sina.com', NULL, NULL, NULL),
('3C27D3F5-24BB-4F7F-9482-DA52E4691E9E', '2028-08-20', './img/flags/MY.png', '8690863', 'INDAH LAUT 2201', 'YDA3652', '0', 'Indonesia', '4', 'no', NULL, NULL, './img/flags/ID.png', NULL, NULL, 'Tugboat', '350', '148', 'PT Pelayaran Mata Laut', 'Indonesia', 'Indonesia', NULL, NULL, NULL, NULL, NULL, NULL),
('3FDB85D6-B032-4725-9014-B0E476D5DD76', '2028-08-20', './img/flags/CN.png', '9496654', 'BUNGO PRINCESS', '3FXV8', '355091000', 'Panama', '5', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'High Risk Ship', 'General cargo/multipurpose', '10034', '6736', 'DOJIMA MARINE CO LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4420DF84-442B-4E29-9809-EDDB5E480641', '2028-08-20', './img/flags/CN.png', '9622617', 'OOCL FRANCE', 'VRLQ4', '477222700', 'Hong Kong, China', '3', 'no', NULL, NULL, './img/flags/HK.png', NULL, 'Low Risk Ship', 'Container ship', '144044', '141003', 'ORIENT OVERSEAS CONTAINER LINE LTD (OOCL)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('44DFA1E3-4485-46C1-AC0B-CA6E68A4C11E', '2028-08-20', './img/flags/JP.png', '9320697', 'OSAKA EXPRESS', 'DDVK2', '218042000', 'Germany', '3', 'no', NULL, NULL, './img/flags/DE.png', NULL, NULL, 'Container ship', '103681', '93750', 'Hapag-Lloyd AG', 'Germany', 'Germany', '+49 40 30010', '+49 40 330053', 'chartering@hlag.com', NULL, NULL, NULL),
('46B5B4B6-F1CB-4F45-96D9-60CB3409EAB2', '2028-08-20', './img/flags/CN.png', '9378943', 'PACIFIC CARRIER', 'D5QP7', '636018630', 'Liberia', '17', 'no', NULL, NULL, './img/flags/LR.png', NULL, 'Standard Risk Ship', 'Container ship', '13760', '9940', 'OSM SHIP MANAGEMENT PTE LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4B148A88-3F79-4A27-A7D2-FCD11A609A12', '2028-08-20', './img/flags/RU.png', '9008081', 'MARIA', '5VDP9', '671645000', 'Togo', '4', 'no', NULL, NULL, './img/flags/TG.png', NULL, NULL, 'General cargo/multipurpose', '6280', '4944', '\'Vis\' Co Ltd', NULL, NULL, '+7 423 669 8611', '+7 423 669 8611', NULL, NULL, NULL, NULL),
('4D3199A8-93E3-4068-A835-E212F0625EF7', '2028-08-20', './img/flags/CN.png', '9449510', 'PAN GLORIS', 'V7TH8', '538003809', 'Marshall Islands', '10', 'no', NULL, NULL, './img/flags/MH.png', NULL, NULL, 'Bulk carrier', '32975', '20762', 'POS SM CO LTD', 'Korea, Republic of', 'Korea, Republic of', '+82 51 461 1574', '+82 51 461 2069', NULL, NULL, NULL, NULL),
('4F1AFB53-113F-4410-AF82-263699F73283', '2028-08-20', './img/flags/JP.png', '9395771', 'KS SUNRISE', 'DSQZ6', '441765000', 'Korea, Republic of', '1', 'no', NULL, NULL, './img/flags/KR.png', NULL, 'Standard Risk Ship', 'General cargo/multipurpose', NULL, '1972', 'HR Shipping Co Ltd', NULL, NULL, '+82 51 464 1245', '+82 51 464 1246', 'hrship@hrship.co.kr', NULL, NULL, NULL),
('54D95A0B-5095-4F0A-8860-0AB4BDC6CDA0', '2028-08-20', './img/flags/CN.png', '9189500', 'IAN H', 'D5IR9', '636016980', 'Liberia', '3', 'no', NULL, NULL, './img/flags/LR.png', NULL, NULL, 'Container ship', '67712', '66526', 'Technomar Shg Ltd', 'Greece', 'Greece', '+30 210 623 3670', '+30 210 808 4224', 'safety@technomar.gr', NULL, NULL, NULL),
('57400CC9-DE7D-4193-98E6-F647E98E7988', '2028-08-20', './img/flags/CN.png', '9496654', 'BUNGO PRINCESS', '3FXV8', '355091000', 'Panama', '1', 'no', NULL, NULL, './img/flags/PA.png', NULL, NULL, 'General cargo/multipurpose', '10034', '6736', 'DOJIMA MARINE CO LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('57CA3ACF-4FE2-4F5B-A09E-3E5141C59B63', '2028-08-20', './img/flags/JP.png', '9342578', 'CHANG DA', 'V3UU9', '312750000', 'Belize', '9', 'no', NULL, NULL, './img/flags/BZ.png', NULL, 'High Risk Ship', 'Bulk carrier', NULL, '1970', 'Weihai Jiayang International Shipping Management Co Ltd', 'China', 'China', '+86 631 567 0959', '+86 631 567 0979', 'seajoy2008@sina.com', NULL, NULL, NULL),
('5A31F400-C494-4815-9DE0-E4D86B9420C2', '2028-08-20', './img/flags/RU.png', '9641912', 'GLOBAL INNOVATOR', '3EUZ4', '357907000', 'Panama', '5', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Low Risk Ship', 'Bulk carrier', '28222', '17019', 'Rainbow Maritime Co Ltd', 'Japan', 'Japan', '+81 78 321 0134', '+81 78 321 2397', 'rbwtake@oak.ocn.ne.jp', NULL, NULL, NULL),
('5B906644-3F27-44EB-B06D-2C77F0511BB9', '2028-08-20', './img/flags/MY.png', '9179610', 'MERLION M', 'E5U2923', '518975000', 'Cook Islands', '0', 'no', NULL, NULL, './img/flags/CK.png', NULL, 'Standard Risk Ship', 'Oil tanker', '308571', '159187', 'MGM Ship Management Pte Ltd', 'Singapore', 'Singapore', NULL, NULL, NULL, NULL, NULL, NULL),
('5C8EEC3A-454A-45C2-89E3-0FD14372711C', '2028-08-20', './img/flags/AU.png', '9728485', 'AFRICAN GOSHAWK', 'C6BT7', '311000361', 'Bahamas', '2', 'no', NULL, NULL, './img/flags/BS.png', NULL, 'Low Risk Ship', 'Bulk carrier', '34370', '21521', 'DOCKENDALE SHIP MANAGEMENT DMC CO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('5DB90BF0-CDAA-4366-AB8E-20FE9012E062', '2028-08-20', './img/flags/RU.png', '9402110', 'STRAITS BREEZE', 'V7RJ5', '538003520', 'Marshall Islands', '0', 'no', NULL, NULL, './img/flags/MH.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '31612', '19800', 'Tamar Ship Management Ltd', NULL, NULL, '+852 3766 1900', '+852 2891 6773', 'sid@tamarshipman.com', NULL, NULL, NULL),
('5F89BC26-F48D-451F-B15A-EDE197F567E2', '2028-08-20', './img/flags/JP.png', '9634438', 'MISATO K', '3FLD9', '354550000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'High Risk Ship', 'Bulk carrier', '56048', '31754', 'Dojima Marine Co Ltd', 'Japan', 'Japan', '+81 6 6346 1701', '+81 6 6346 5220', 'manager@dojimamarine.com', NULL, NULL, NULL),
('61FF9B3B-A116-4213-8558-6FBED8C73FF9', '2028-08-20', './img/flags/JP.png', '9514963', 'HAKUYO', '3FSP4', '357412000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Low Risk Ship', 'Bulk carrier', NULL, '50888', 'Usui Kaiun KK (Usui Kaiun Co Ltd)', 'Japan', 'Japan', '+81 22 266 0322', '+81 22 365 5154', 'usuikaiun@ae.auone-net.jp', NULL, NULL, NULL),
('6635357A-5103-429F-A6B2-F02ADE491C9B', '2028-08-20', './img/flags/AU.png', '9386512', 'ROBUSTO', '9HA2121', '248005000', 'Malta', '0', 'no', NULL, NULL, './img/flags/MT.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '173949', '88930', 'TMS Dry Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('694F1AA3-4C01-42BD-8756-1830EB562305', '2028-08-20', './img/flags/CN.png', '9061904', 'CRYSTAL AMAZONIA', 'UBRR7', '273433140', 'Russian Federation', '13', 'no', NULL, NULL, './img/flags/RU.png', NULL, 'High Risk Ship', 'Refrigerated cargo', NULL, '7307', 'FAR EAST FLEET LLC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6984B3E7-3A79-47CF-8A7A-D9945AF7621A', '2028-08-20', './img/flags/CN.png', '9249269', 'GOOD LUCK I', 'D5HN3', '636016734', 'Liberia', '1', 'no', NULL, NULL, './img/flags/LR.png', NULL, NULL, 'Bulk carrier', '51097', '28665', 'Drastirios Ship Management Inc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6CC70092-53E7-4C14-8FC5-B7680BB8A0FD', '2028-08-20', './img/flags/CN.png', '9615107', 'SEA SMILE', 'D5BT2', '636015598', 'Liberia', '1', 'no', NULL, NULL, './img/flags/LR.png', NULL, NULL, 'Bulk carrier', '38109', '23273', 'SANTOKU SENPAKU CO LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6E3D1FDF-12EE-4B3E-A2B4-95A6C56E1D82', '2028-08-20', './img/flags/AU.png', '9280639', 'CMA CGM ROSSINI', 'FZQU', '226327000', 'France', '1', 'no', NULL, NULL, './img/flags/FR.png', NULL, NULL, 'Container ship', '73235', '65730', 'CMA SHIPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('70FA20EB-D44A-4292-A5A4-DA5823B41A0F', '2028-08-20', './img/flags/JP.png', '9446439', 'CAPE LAUREL', '3FOK5', '353251000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Standard Risk Ship', 'Bulk carrier', NULL, '90111', 'Daiwa Kisen KK (Daiwa Kisen Co Ltd)', 'Japan', 'Japan', '+81 92 472 0494', '+81 92 472 0496', 'company@daiwakisen.co.jp', NULL, NULL, NULL),
('7D6B31E2-6B6D-4FB2-8C0C-C9E2E705C585', '2028-08-20', './img/flags/CN.png', '9403853', 'HYPERION', 'C6WS5', '309947000', 'Bahamas', '3', 'no', NULL, NULL, './img/flags/BS.png', NULL, 'High Risk Ship', 'Container ship', '12469', '9971', 'Kotoku Kaiun Co Ltd (Kotoku Kaiun KK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('85F77730-F16F-49AA-BF76-2709B72F4000', '2028-08-20', './img/flags/MY.png', '9187801', 'BANGPAKAEW', 'HSB5106', '567506000', 'Thailand', '2', 'no', NULL, NULL, './img/flags/TH.png', NULL, NULL, 'General cargo/multipurpose', '7430', '4796', 'Wong Samut Navigation Co Ltd', 'Thailand', 'Thailand', '+66 2 222 5889', '+66 2 226 3659', 'wsngroup@bblife.com', NULL, NULL, NULL),
('8ABD53B9-71FD-4EF3-B01A-3FE8D34E299B', '2028-08-20', './img/flags/NZ.png', '9293868', 'PORT ALFRED', 'VRLZ7', '477832100', 'Hong Kong, China', '0', 'no', NULL, NULL, './img/flags/HK.png', NULL, 'Low Risk Ship', 'Bulk carrier', '29678', '17979', 'Pacific Basin Shipping (HK) Ltd', NULL, NULL, '+852 2233 7000', '+852 2865 2810', 'technical@pacificbasin.com', NULL, NULL, NULL),
('8DEFD928-0490-4F5A-93A2-EE757C904127', '2028-08-20', './img/flags/JP.png', '9320697', 'OSAKA EXPRESS', 'DDVK2', '218042000', 'Germany', '0', 'no', NULL, NULL, './img/flags/DE.png', NULL, 'Low Risk Ship', 'Container ship', NULL, '93750', 'Hapag-Lloyd AG', 'Germany', 'Germany', '+49 40 30010', '+49 40 330053', 'chartering@hlag.com', NULL, NULL, NULL),
('8F32183D-ADA9-4E05-B6BA-07454F119E6A', '2028-08-20', './img/flags/AU.png', '9378618', 'LR2 PIONEER', 'VREE7', '477114400', 'Hong Kong, China', '3', 'no', NULL, NULL, './img/flags/HK.png', NULL, NULL, 'Oil tanker', '115273', '59172', 'EXECUTIVE SHIP MANAGEMENT PTE LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('9239C115-F9A1-4C9C-9C80-21BC790D089E', '2028-08-20', './img/flags/CN.png', '9624251', 'EL GRASSO', 'ONIR', '205699000', 'Belgium', '1', 'no', NULL, NULL, './img/flags/BE.png', NULL, 'High Risk Ship', 'Bulk carrier', '181365', '92758', 'Seavie Pvt Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('929D6681-3E09-4F74-805E-656A1FCDFF2C', '2028-08-20', './img/flags/JP.png', '9356804', 'HF LUCKY', 'HPMT', '355771000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'High Risk Ship', 'Container ship', NULL, '9610', 'SITC Shipping Management (Shanghai) Co  Ltd', 'China', 'China', '+86 21 3896 9101', '+86 21 3896 9199', 'sitcsm@sitc.com', NULL, NULL, NULL),
('944A651A-AAC4-4D35-BDA7-F92432F9615F', '2028-08-20', './img/flags/SG.png', '9801512', 'MAKHA BHUM', 'HSB7244', '567589000', 'Thailand', '1', 'no', NULL, NULL, './img/flags/TH.png', NULL, 'Standard Risk Ship', 'Container ship', '19823', '18341', 'RCL Shipmanagement Pte Ltd', 'Singapore', 'Singapore', '+65 6221 7488', '+65 6221 9727', 'sinrsm@rclgroup.com', NULL, NULL, NULL),
('9BFC5D47-F50F-46D8-AC05-27B44BB42800', '2028-08-20', './img/flags/MY.png', '9418858', 'BOA THALASSA', 'ZCXX6', '319016000', 'Cayman Islands (GB)', '3', 'no', NULL, NULL, './img/flags/KY.png', NULL, NULL, 'Other special activities', '3000', '5061', 'Boa Management AS', 'Norway', 'Norway', '+47 73 99 11 99', '+47 73 99 11 98', 'office@boa.no', NULL, NULL, NULL),
('9D96B254-D9F6-4661-9AA4-6BA42768A52B', '2028-08-20', './img/flags/HK.png', '9563940', 'INDUS VICTORY', '9V8465', '566805000', 'Singapore', '3', 'no', NULL, NULL, './img/flags/SG.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '92870', '51238', 'V Ships Asia Group Pte Ltd', 'Singapore', 'Singapore', '+65 6885 0610', '+65 6324 0977', 'vssinopstech@vships.com', NULL, NULL, NULL),
('9DA6A436-FA3E-4246-BAA9-CD41D8F08339', '2028-08-20', './img/flags/CN.png', '9278569', 'AQUAGLORY', 'SYBL', '240119000', 'Greece', '2', 'no', NULL, NULL, './img/flags/GR.png', NULL, NULL, 'Bulk carrier', '171015', '87597', 'Carras (Hellas) SA', 'Greece', 'Panama', '+30 210 458 7000', '+30 210 458 7001', 'qhses@carras.gr', NULL, NULL, NULL),
('9E171A55-8A6F-48D5-BE57-226B5427D336', '2028-08-20', './img/flags/CN.png', '9215749', 'EVERSHINE', 'A8OV8', '636013718', 'Liberia', '7', 'no', NULL, NULL, './img/flags/LR.png', NULL, NULL, 'Bulk carrier', '75933', '39126', 'Xiamen Xinqihui International Ship  Management Co Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('9FDBD9A0-1A3A-4C82-B051-59AB56AA3A30', '2028-08-20', './img/flags/RU.png', '9693941', 'HEUNG-A XIAMEN', 'V7HY4', '538005897', 'Marshall Islands', '2', 'no', NULL, NULL, './img/flags/MH.png', NULL, NULL, 'Container ship', '12442', '9960', 'HAS Management Co Ltd', NULL, NULL, '+82 51 460 5040', '+82 51 460 5088', 'safety@has-m.co.kr', NULL, NULL, NULL),
('A00D62A5-4C8C-47E3-8B6B-7D80043D72CB', '2028-08-20', './img/flags/PE.png', '9192155', 'MANANTIAL', 'HC6228', '735059780', 'Ecuador', '16', 'no', NULL, NULL, './img/flags/EC.png', NULL, NULL, 'General cargo/multipurpose', '5218', '3821', 'Marboni Shipping CIA Ltda', 'Ecuador', 'Ecuador', '+593 43 727970', NULL, 'info@marboni.com', NULL, NULL, NULL),
('A32D7D72-FB43-4956-9AC8-7AE5BFF88B5F', '2028-08-20', './img/flags/CL.png', '9549592', 'BBC PERU', 'V2QM5', '305933000', 'Antigua and Barbuda', '0', 'no', NULL, NULL, './img/flags/AG.png', NULL, 'Standard Risk Ship', 'General cargo/multipurpose', '13537', '9963', 'HS Bereederungs GmbH & Co KG', 'Germany', 'Germany', '+49 5932 50420', '+49 5932 504228', 'info@hs-schiffahrt.de', NULL, NULL, NULL),
('A5B4E28A-26F0-41BC-9EF9-5F0647B0CD37', '2028-08-20', './img/flags/TH.png', '9700938', 'SITC FUJIAN', 'VRNQ5', '477967300', 'Hong Kong, China', '0', 'no', NULL, NULL, './img/flags/HK.png', NULL, 'Low Risk Ship', 'Container ship', '21196', '17360', 'SITC Shipping Management (Shanghai) Co  Ltd', 'China', 'China', '+86 21 3896 9101', '+86 21 3896 9199', 'sitcsm@sitc.com', NULL, NULL, NULL),
('B0978CA9-51D5-4BC6-9E32-88ECEAF9F8EF', '2028-08-20', './img/flags/VN.png', '9007831', 'MSC REUNION', 'A8YT4', '636015128', 'Liberia', '0', 'no', NULL, NULL, './img/flags/LR.png', NULL, 'High Risk Ship', 'Container ship', '31829', '23953', 'V Ships Greece Ltd', 'Greece', NULL, '+30 210 410 2210', '+30 210 429 4340', 'hellas@vships.com', NULL, NULL, NULL),
('B1AF2795-8A0A-4A9A-98B8-B60BD2DCFF16', '2028-08-20', './img/flags/JP.png', '9395771', 'KS SUNRISE', 'DSQZ6', '441765000', 'Korea, Republic of', '3', 'no', NULL, NULL, './img/flags/KR.png', NULL, NULL, 'General cargo/multipurpose', '3349', '1572', 'HR Shipping Co Ltd', NULL, NULL, '+82 51 464 1245', '+82 51 464 1246', 'hrship@hrship.co.kr', NULL, NULL, NULL),
('B5672A96-6156-4B95-B6C4-C6997829E44B', '2028-08-20', './img/flags/CN.png', '9624031', 'GDF SUEZ NORTH SEA', 'HPSQ', '373341000', 'Panama', '2', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '55848', '31541', 'Santoku Senpaku Co Ltd', 'Japan', 'Japan', '+81 6 6574 1222', '+81 6 6576 2666', 'santoku@santokuship.co.jp', NULL, NULL, NULL),
('B6513CA6-CC26-4920-BCC3-2994E8D86682', '2028-08-20', './img/flags/JP.png', '9140619', 'TAI JIA', '9LU2549', '667001746', 'Sierra Leone', '8', 'no', NULL, NULL, './img/flags/SL.png', NULL, 'High Risk Ship', 'General cargo/multipurpose', NULL, '1495', 'Yantai Runhai International Shipping  Management Co Ltd', 'China', 'China', NULL, NULL, NULL, NULL, NULL, NULL),
('BA245D27-75AF-40CA-828B-058716E7AD38', '2028-08-20', './img/flags/CN.png', '9304370', 'TAI HONESTY', '3EJF9', '372506000', 'Panama', '2', 'no', NULL, NULL, './img/flags/PA.png', NULL, NULL, 'Bulk carrier', '55418', '30669', 'Taiwan Navigation Co Ltd', 'Taiwan, Province of China', 'Panama', '+886 2 2394 2769', '+886 2 2392 7177', 'bulk@taiwanline.com.tw', NULL, NULL, NULL),
('BFD79698-5C81-4345-BB25-566F574AD507', '2028-08-20', './img/flags/VN.png', '9228758', 'CAIYUNHE', 'H3MN', '355474000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'High Risk Ship', 'Container ship', '24259', '16738', 'Shanghai Ocean Shipping Co Ltd', 'China', 'China', '+86 21 6570 1888', '+86 21 6519 0946', NULL, NULL, NULL, NULL),
('C1305BBF-D476-479A-9CF3-F5836D354058', '2028-08-20', './img/flags/CL.png', '9463035', 'MSC NATASHA', 'D5PL3', '636018385', 'Liberia', '0', 'no', NULL, NULL, './img/flags/LR.png', NULL, 'Standard Risk Ship', 'Container ship', '141398', '141649', 'MSC Shipmanagement Ltd', 'Cyprus', 'Cyprus', '+357 2584 4800', '+357 2584 4707', 'safety@mscsmcy.com', NULL, NULL, NULL),
('C55FA8F8-DA77-4404-AB60-56500886E879', '2028-08-20', './img/flags/CN.png', '9419462', 'BAO FU', '3FUP5', '352945000', 'Panama', '2', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Standard Risk Ship', 'Bulk carrier', NULL, '132537', 'Fukujin Kisen KK (Fukujin Kisen Co Ltd)', 'Japan', 'Japan', '+81 89 8347 711', '+81 89 8347 733', 'gyoumu@fjline.co.jp', NULL, NULL, NULL),
('C9C69338-1BF6-4965-89A5-F5DEE1C23D84', '2028-08-20', './img/flags/MY.png', '0', 'YTC 52', 'N/A', '0', 'Mongolia', '2', 'no', NULL, NULL, './img/flags/MN.png', NULL, NULL, 'Heavy load', '100', '902', 'YTC Marine Services Pte Ltd', 'Singapore', 'Singapore', '+65 6268 8888', '+65 6265 9534', 'info@yengtong.com', NULL, NULL, NULL),
('CB4CD47C-8337-4E32-866C-7CE6B84285A1', '2028-08-20', './img/flags/MY.png', '9418858', 'BOA THALASSA', 'ZCXX6', '319016000', 'Cayman Islands (GB)', '0', 'no', NULL, NULL, './img/flags/KY.png', NULL, 'Standard Risk Ship', 'Other special activities', '3000', '5061', 'Boa Management AS', 'Norway', 'Norway', '+47 73 99 11 99', '+47 73 99 11 98', 'office@boa.no', NULL, NULL, NULL),
('CCF832B3-18A5-40E1-8D0F-A50518070926', '2028-08-20', './img/flags/AU.png', '9428982', 'SKS DOURO', 'LAIW7', '257664000', 'Norway', '2', 'no', NULL, NULL, './img/flags/NO.png', NULL, 'High Risk Ship', 'Oil tanker', '119456', '65830', 'KGJ OBO & TANKERS FLEET MANAGEMENT AS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('CF86C6A1-431E-480F-AB2F-3BCD802C16E2', '2028-08-20', './img/flags/CN.png', '9719068', 'KAIMANA HILA', 'WDJ3199', '369209000', 'United States', '3', 'no', NULL, NULL, './img/flags/US.png', NULL, 'High Risk Ship', 'Container ship', '51400', '48409', 'MATSON NAVIGATION CO INC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D0BB4907-B013-449A-AEFD-D0B7C0D46442', '2028-08-20', './img/flags/CN.png', '9467811', 'HAFNIA AFRICA', '9V3328', '566242000', 'Singapore', '2', 'no', NULL, NULL, './img/flags/SG.png', NULL, 'Standard Risk Ship', 'Oil tanker', '64999', '42392', 'Donnelly Tanker Management Ltd', 'Greece', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('D2D0214D-E7CC-4D81-A294-EA2C077CFB54', '2028-08-20', './img/flags/CN.png', '9036363', 'EIWA MARU 7', 'DSPH7', '441001000', 'Korea, Republic of', '4', 'no', NULL, NULL, './img/flags/KR.png', NULL, 'High Risk Ship', 'Chemical tanker', '1148', '739', 'KEOYOUNG SHIPPING CO.& #44; LTD', 'Korea, Republic of', 'Korea, Republic of', '+82 51 468 4376', '+82 51 468 4378', 'kysmt@keoyoungship.co.kr', NULL, NULL, NULL),
('DB78BBCC-C430-4E8C-BF64-76C0B432802A', '2028-08-20', './img/flags/MY.png', '9053440', 'ANTONIA', 'DUJ2389', '548061400', 'Philippines', '3', 'no', NULL, NULL, './img/flags/PH.png', NULL, 'Standard Risk Ship', 'Ro-Ro passenger ship', '2242', '3471', 'Aleson Shipping Lines Inc', 'Philippines', 'Philippines', '+63 62 991 2687', '+63 62 991 2099', 'alesonzam@yahoo.com', NULL, NULL, NULL),
('DC034BA7-0313-4CB5-99FB-0C2AD42ECED3', '2028-08-20', './img/flags/CN.png', '9308479', 'DAPENG SUN', 'VRDJ3', '477985700', 'Hong Kong, China', '0', 'no', NULL, NULL, './img/flags/HK.png', NULL, 'Low Risk Ship', 'Gas carrier', '83050', '97871', 'CHINA LNG SHIPPING (INTERNATIONAL) CO LTD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('E12632B5-6EF4-402C-BDDF-F88272C986E6', '2028-08-20', './img/flags/MY.png', '0', 'YTC 63', 'N/A', '0', 'Singapore', '2', 'no', NULL, NULL, './img/flags/SG.png', NULL, NULL, 'Other special activities', NULL, '516', 'YTC Marine Services Pte Ltd', 'Singapore', 'Singapore', '+65 6268 8888', '+65 6265 9534', 'info@yengtong.com', NULL, NULL, NULL),
('E5439EBD-65CB-48D0-8310-4E9EBA231969', '2028-08-20', './img/flags/CN.png', '9407495', 'ELEEN ARMONIA', '3ERA5', '354514000', 'Panama', '5', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Standard Risk Ship', 'Bulk carrier', NULL, '30816', 'METEOR MANAGEMENT BULGARIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('E86DBDC6-3A69-4AC9-94F1-F1101447CD3D', '2028-08-20', './img/flags/CN.png', '9240811', 'CHANG MIN', '3FTV8', '357723000', 'Panama', '1', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '52514', '29369', 'FAN STONE MARINE LTD', 'China', 'Liberia', NULL, '+86 21 5696 1759', 'fanstonemarine@163.com', NULL, NULL, NULL),
('E8A115F1-7B41-4862-BAD9-4A07C864A958', '2028-08-20', './img/flags/PH.png', '9578878', 'NO. 7 SJ GAS', 'D7MW', '440207000', 'Korea, Republic of', '0', 'no', NULL, NULL, './img/flags/KR.png', NULL, 'Standard Risk Ship', 'Gas carrier', '2983', '2993', 'SJ Tanker Co Ltd', NULL, NULL, '+82 51 469 1105', '+82 51 465 3567', 'sjtanker@sjtanker.com', NULL, NULL, NULL),
('EEBF37D0-499C-4121-A277-13D3A7B047E7', '2028-08-20', './img/flags/MY.png', '9550436', 'GLOBAL AQUARIUS', '3FEA2', '370386000', 'Panama', '0', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '28328', '17021', 'Misuga Kaiun Co Ltd', 'Japan', 'Japan', '+81 3 3261 6725', '+81 3 3261 7194', 'misuga-ship@misuga-kaiun.co.jp', NULL, NULL, NULL),
('F20AFFB7-0C45-4FC5-BB3B-9FD834D290B8', '2028-08-20', './img/flags/MY.png', '9165932', 'GLOBAL M', '9V2618', '564418000', 'Singapore', '0', 'no', NULL, NULL, './img/flags/SG.png', NULL, 'Low Risk Ship', 'Oil tanker', '298982', '156397', 'MGM Ship Management Pte Ltd', 'Singapore', 'Singapore', NULL, NULL, NULL, NULL, NULL, NULL),
('F2AD4EF0-7AA8-421E-A81A-6271CF7CB38A', '2028-08-20', './img/flags/CN.png', '9326158', 'MITOSE', '3EOL2', '356744000', 'Panama', '5', 'no', NULL, NULL, './img/flags/PA.png', NULL, 'Standard Risk Ship', 'Bulk carrier', '77376', '40028', 'KK Kyowa Sansho (Kyowa Sansho Co Ltd)', 'Japan', 'Japan', '+81 823 213551', '+81 823 217513', 'telex@kyowasansho.co.jp', NULL, NULL, NULL),
('F7799AD5-4F21-4C6E-8F53-14C448B2E7F6', '2028-08-20', './img/flags/MY.png', '9187801', 'BANGPAKAEW', 'HSB5106', '567506000', 'Thailand', '2', 'no', NULL, NULL, './img/flags/TH.png', NULL, 'High Risk Ship', 'General cargo/multipurpose', '7430', '4796', 'Wong Samut Navigation Co Ltd', 'Thailand', 'Thailand', '+66 2 222 5889', '+66 2 226 3659', 'wsngroup@bblife.com', NULL, NULL, NULL),
('FAA3A6A1-34ED-4E58-8BC9-211D2CDD7948', '2028-08-20', './img/flags/RU.png', '9641912', 'GLOBAL INNOVATOR', '3EUZ4', '357907000', 'Panama', '1', 'no', NULL, NULL, './img/flags/PA.png', NULL, NULL, 'Bulk carrier', '28222', '17019', 'Rainbow Maritime Co Ltd', 'Japan', 'Japan', '+81 78 321 0134', '+81 78 321 2397', 'rbwtake@oak.ocn.ne.jp', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `b_occi_detail`
--

CREATE TABLE `b_occi_detail` (
  `occi_id` varchar(255) NOT NULL,
  `ground_for_detention` varchar(255) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `b_occi_detail`
--

INSERT INTO `b_occi_detail` (`occi_id`, `ground_for_detention`, `nature`) VALUES
('1', 'No', 'POLLUTION PREVENTION - MARPOL ANNEX IV\\n    (Sewage treatment plant)\\n   (28.02.2019)'),
('3', 'No', 'EMERGENCY SYSTEMS\\n    (Abandon ship drills)\\n  '),
('3', 'No', 'LIFE SAVING APPLIANCES\\n    (Lifeboats)\\n  ');

--
-- 转储表的索引
--

--
-- 表的索引 `b_occi`
--
ALTER TABLE `b_occi`
  ADD PRIMARY KEY (`occi_id`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
