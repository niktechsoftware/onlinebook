-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2019 at 04:14 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gfincuct_onlinebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_info`
--

CREATE TABLE `bill_info` (
  `product_quantity` int(10) NOT NULL,
  `tpcostin` decimal(10,2) NOT NULL,
  `vatper` int(4) NOT NULL,
  `satper` int(4) NOT NULL,
  `round_off` decimal(10,2) NOT NULL,
  `freight` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total_prize` decimal(10,2) NOT NULL,
  `dealar_mobile1` varchar(12) NOT NULL,
  `dealar_mobile2` varchar(12) NOT NULL,
  `dealer_email` varchar(50) NOT NULL,
  `dealer_address` varchar(50) NOT NULL,
  `product_company_name` varchar(60) NOT NULL,
  `reff_bil_num` varchar(30) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `pay_mode` varchar(10) NOT NULL,
  `discription` varchar(50) NOT NULL,
  `date1` date NOT NULL,
  `tin_no` varchar(20) NOT NULL,
  `time1` time NOT NULL,
  `clinic_id` varchar(15) NOT NULL,
  `Gst` varchar(50) NOT NULL,
  `statecode` varchar(10) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `hsn_sac` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_info`
--

INSERT INTO `bill_info` (`product_quantity`, `tpcostin`, `vatper`, `satper`, `round_off`, `freight`, `discount`, `total_prize`, `dealar_mobile1`, `dealar_mobile2`, `dealer_email`, `dealer_address`, `product_company_name`, `reff_bil_num`, `amount_paid`, `balance`, `pay_mode`, `discription`, `date1`, `tin_no`, `time1`, `clinic_id`, `Gst`, `statecode`, `emailid`, `hsn_sac`) VALUES
(12, '0.00', 0, 0, '0.50', '0.00', '0.00', '41303.00', '9415973867', '9415263445', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '762', '15000.00', '26303.00', 'cash', '0', '2019-02-07', '0', '00:00:00', '10001', 'GZP01', '233001', 'shivam@123', '0'),
(1, '0.00', 0, 0, '0.00', '0.00', '0.00', '45.00', '9415973867', '9415973867', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '002', '45.00', '0.00', 'cash', '0', '2019-02-13', '0', '00:00:00', '10001', 'GZP01', '233001', 'shivam@123', '0'),
(5, '0.00', 0, 0, '0.00', '0.00', '0.00', '137.60', '9415973867', '9415973867', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '001', '137.60', '0.00', 'cash', '0', '2019-02-14', '0', '00:00:00', '10001', 'GZP01', '233001', 'shivam@123', '0'),
(2, '0.00', 0, 0, '0.00', '0.00', '0.00', '1500.00', '9415973867', '9415973867', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '003', '1500.00', '0.00', 'cash', '0', '2019-02-14', '0', '00:00:00', '10001', 'GZP01', '233001', 'shivam@123', '0'),
(5, '0.00', 0, 0, '0.00', '0.00', '0.00', '53540.00', '9415973867', '9415973867', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '836', '0.00', '53540.00', 'cash', '0', '2019-02-25', '0', '00:00:00', '10001', 'GZP01', '233001', 'shivam@123', '0'),
(37, '0.00', 0, 0, '0.00', '0.00', '0.00', '185700.00', '9415973867', '9415973867', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '835', '0.00', '185700.00', 'cash', '0', '2019-02-25', '0', '00:00:00', '10001', 'GZP01', '233001', 'shivam@123', '0'),
(1, '0.00', 0, 0, '0.00', '0.00', '0.00', '6119.75', '9415973867', '9415973867', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '0836', '0.00', '6119.75', 'cash', '0', '2019-02-25', '0', '00:00:00', '10001', 'GZP01', '233001', 'SHIVAM@GMAIL.COM', '0'),
(22, '0.00', 0, 0, '0.00', '0.00', '0.00', '125665.00', '9415973867', '9415973867', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '00835', '0.00', '125665.00', 'cash', '0', '2019-02-25', '0', '00:00:00', '10001', 'gzp01', '233001', 'shivam@123', '0'),
(37, '0.00', 0, 0, '0.00', '0.00', '0.00', '247445.00', '9415973867', '9415973867', '', 'SAKLENABAD GHAZIPUR', 'SHIVAM TRADERS', '0835', '0.00', '247445.00', 'cash', '0', '2019-02-25', '0', '00:00:00', '10001', 'gzp01', '233001', 'shivam@123', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bookclass`
--

CREATE TABLE `bookclass` (
  `id` int(3) NOT NULL,
  `class` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookclass`
--

INSERT INTO `bookclass` (`id`, `class`) VALUES
(1, 'class1'),
(2, 'class2'),
(3, 'class 3'),
(4, 'class 4'),
(5, 'class 5'),
(6, 'class 6'),
(7, 'class 7'),
(8, 'class 8'),
(9, 'class 9'),
(10, 'class 10'),
(11, 'class 11'),
(12, 'class 12'),
(13, 'PG'),
(14, 'LKG'),
(15, 'UKG'),
(21, 'COPY '),
(27, 'REGISTER COPY');

-- --------------------------------------------------------

--
-- Table structure for table `booksubject`
--

CREATE TABLE `booksubject` (
  `id` int(3) NOT NULL,
  `bookclass_id` int(3) NOT NULL,
  `booksubject` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booksubject`
--

INSERT INTO `booksubject` (`id`, `bookclass_id`, `booksubject`) VALUES
(155, 7, 'HONEYCOMB WORKBOOK-7'),
(156, 7, 'VASANT-7'),
(157, 7, 'BAL MAHABHARAT KATHA-7'),
(158, 7, 'BHASHA ADHIGAM AVM VYAKAR'),
(159, 7, 'VASANT WORKBOOK-7'),
(160, 7, 'EXEMPLAR MATH-7'),
(161, 7, 'MATHEMATICS-7'),
(162, 7, 'LAB MANUAL MATHS-7'),
(163, 7, 'EXEMPLAR SCIENCE-7'),
(164, 7, 'EASY TO LEARN SCIENCE-7'),
(165, 7, 'LAB MANUAL SCIENCE-7'),
(166, 7, 'OUR PAST HISTORY-7'),
(167, 7, 'SOCIAL&POLITICAL LIFE-7'),
(168, 7, 'OUR ENVIRONMENT GEO-7'),
(169, 7, 'S.ST WORKSHEETS-7'),
(170, 7, 'MAP EXPERT GEO & HIS-7'),
(171, 7, 'KNOWLEDGE OLYMPIAD-7'),
(172, 7, 'TODAY COMPUTER-7'),
(173, 7, 'RUCHIRA-7'),
(174, 7, 'ART & CRAFT-7'),
(175, 8, 'HONEYDEW-8'),
(176, 8, 'SO HAPPENED-8'),
(177, 8, 'ENG GRAMMAR&COMPO-8'),
(178, 8, 'HONEYDEW WORKBOOK-8'),
(179, 8, 'VASANT-8'),
(180, 8, 'BHARAT KI KHOJ-8'),
(181, 8, 'BHASHA ADHIGAM VYAKARAN-8'),
(182, 8, 'VASANT WORKBOOK-8'),
(183, 8, 'EXEMPLAR MATHS-8'),
(184, 8, 'MATHS R.S AGRAWAL-8'),
(185, 8, 'LAB MANUAL MATHS-8'),
(186, 8, 'EXEMPLAR SCIENCE -8'),
(187, 8, 'LAB MANUAL SCIENCE-8'),
(188, 8, 'OUR PASTS HISTORY-8-1'),
(189, 8, 'OUR PASTS HISTORY-8-2'),
(190, 8, 'SOCIAL &POLITICAL LIFE-8'),
(191, 8, 'RESOURCES&DEVELOP. GEO-8'),
(192, 8, 'S.S.T WORKSHEET-8'),
(193, 8, 'MAP EXPERT GEO&HIS-8'),
(194, 8, 'KNOWLEDGE OLYMPIAD-8'),
(195, 8, 'TODAYS COMPUTER-8'),
(196, 8, 'RUCHIRA-8'),
(198, 9, 'BEEHIVE-9'),
(199, 9, 'MOMENTS-9'),
(200, 9, 'ENG GRAMMAR&COMP-9'),
(201, 9, 'KSHITIJ-9'),
(202, 9, 'KANAK HINDI VYAKARAN-9'),
(203, 9, 'SCIENCE-9'),
(204, 9, 'SUPLIMENTARY HINDI-9'),
(205, 9, 'MATHEMATICS  (RSA)-9'),
(206, 9, 'LAB MANUAL MATHS-9'),
(207, 9, 'PHYSICS-9'),
(208, 9, 'CHEMISTRY-9'),
(209, 9, 'BIOLOGY-9'),
(210, 9, 'LAB MANUAL SCIENCE-9'),
(211, 9, 'HISTORY-9'),
(212, 9, 'DEMOCRATIC POLITICS-9'),
(213, 9, 'CONTEMPORARY INDIA GEO-9'),
(214, 9, 'ECONOMICS-9'),
(215, 9, 'LAB MANUAL SST-9'),
(216, 9, 'MAP HISTORY-9'),
(217, 9, 'MAP GEOGRAPHY-9'),
(218, 9, 'KRITIKA (SUPPLE HINDI)'),
(219, 10, 'FIRST FLIGHT(ENG MAIN BOO'),
(220, 10, 'FOOTPRINTS WITHOUT FEET-1'),
(221, 10, 'GRAMMAR-10'),
(222, 10, 'KRITIJ HINDI-10'),
(223, 10, 'KRITIKA (SUPPLE HINDI)-10'),
(224, 10, 'VYAKARAN-10'),
(225, 10, 'MATHEMATICS-10'),
(226, 10, 'MATHEMATICS  (RSA)-10'),
(227, 10, 'LAB MANUAL MATHS-10'),
(228, 10, 'SCIENCE-10'),
(229, 10, 'PHYSICS-10'),
(230, 10, 'CHEMISTRY-10'),
(231, 10, 'BIOLOGY-10'),
(232, 10, 'LAB MANUAL SCIENCE-10'),
(233, 10, 'HISTORY-10'),
(234, 10, 'CONTEMPORARY INDIA GEOGRA'),
(235, 10, 'U. DEVELOPMENT ECONOMICS-'),
(236, 10, 'LAB MANUAL SCIENCE-10'),
(237, 10, 'LAB MANUAL SST-10'),
(238, 10, 'MAP HISTORY-10'),
(239, 10, 'MAP GEOGRAPHY-10'),
(240, 10, 'DEMOCRATIC POLITICS-10'),
(241, 27, 'COPY HINDI'),
(242, 27, 'COPY SCIENCE'),
(243, 1, 'N L C ENGLISH - 1 '),
(244, 1, 'ENGLISH GRAMMAR & COMPO-1'),
(245, 1, 'BUSY BEES HINDI SULEKH-1'),
(246, 1, 'MEDHA - 1'),
(247, 1, 'BHASHA ADHIGAM VYAKARAN-1'),
(248, 1, 'BUSY BEES CURSIVE STORKE-'),
(249, 1, 'NEW COMPOSITE MATH-1'),
(250, 1, 'MY WORLD - 1'),
(251, 1, 'BRAIN BOOSTER PLUS-1'),
(252, 1, 'LET\'S SPEAK WELL-1'),
(253, 1, 'CREATIVE CHAMPS-1'),
(254, 2, 'N L W C ENGLISH-2'),
(255, 2, 'ENG GRAMMAR & COMPO-2'),
(256, 2, 'BUSY BEES HINDI SULEKH-2'),
(257, 2, 'MEDHA-2'),
(258, 2, 'BHASHA ADHIGAM VYAKARAN-2'),
(259, 2, 'BUSY BEES CURSIVE STORKE-'),
(260, 2, 'NEW COMPOSITE MATH-2'),
(261, 2, 'MY WORLD-2'),
(262, 2, 'BRAIN BOOSTER PLUS-2'),
(263, 2, 'LET\'S SPEAK WELL-2'),
(264, 2, 'CREATIVE CHAMPS-2'),
(265, 3, 'NLWC ENGLISH-3'),
(266, 3, 'ENG GRAMMAR & COMPO-3'),
(267, 3, 'BUSY BEES HINDI SULEKH-3'),
(268, 3, 'MEDHA-3'),
(269, 3, 'BHASHA ADHIGAM VYAKARAN-3'),
(270, 3, 'BUSY BEES CURSIVE STORKE-'),
(271, 3, 'NEW COMPOSITE MATH-3'),
(272, 3, 'MY WORLD - 3'),
(273, 3, 'TODAYS COMPUTER-3'),
(274, 3, 'BRAIN BOOSTER PLUS-3'),
(275, 3, 'BRAIN BOOSTER PLUS-3'),
(276, 3, 'LET\'S SPEAK WELL-3'),
(277, 3, 'CREATIVE CHAMPS-3'),
(278, 4, 'NLWC ENGLISH-4'),
(279, 4, 'ENG GRAMMAR & COMPO-4'),
(280, 4, 'BUSY BEES HINDI SULEKH-4'),
(281, 4, 'MEDHA - 4'),
(282, 4, 'BHASHA ADHIGAM VYAKARAN-4'),
(283, 4, 'BUSY BEES CURSIVE STORKE-'),
(284, 4, 'NEW COMPOSITE MATH-4'),
(285, 4, 'MY WORLD - 4'),
(286, 4, 'TODAYS COMPUTER-4'),
(287, 4, 'BRAIN BOOSTER PLUS-4'),
(288, 4, 'LET\'S SPEAK WELL-4'),
(289, 4, 'CREATIVE CHAMPS-4'),
(290, 5, 'NLWC ENGLISH-5'),
(291, 5, 'ENG GRAMMAR & COMPO-5'),
(292, 5, 'BUSY BEES HINDI SULEKH-5'),
(293, 5, 'MEDHA - 5'),
(294, 5, 'BHASHA ADHIGAM VYAKARAN-5'),
(295, 5, 'BUSY BEES CURSIVE STORKE-'),
(296, 5, 'NEW COMPOSITE MATH-5'),
(297, 5, 'MY WORLD - 5'),
(298, 5, 'TODAYS COMPUTER-5'),
(299, 5, 'BRAIN BOOSTER PLUS-5'),
(300, 5, 'LET\'S SPEAK WELL-5'),
(301, 5, 'CREATIVE CHAMPS-5'),
(302, 6, 'HONEYSUCKLE-6'),
(303, 6, 'A PACT WITH SUN-6'),
(304, 6, 'ENG GRAMMAR & COMPO-6'),
(305, 6, 'VASANT - 6'),
(306, 6, 'RAMKATHA-6'),
(307, 6, 'BHASHA ADHIGAM VYAKARAN-6'),
(308, 6, 'VASANT WORKBOOK-6'),
(309, 6, 'EXEMPLAR MATH-6'),
(310, 6, 'MATHEMATICS  (RSA)-6'),
(311, 6, 'LAB MANUAL MATHS-6'),
(312, 6, 'EXEMPLAR SCIENCE -6'),
(313, 6, 'EASY TO LEARN SCIENCE-6'),
(314, 6, 'LAB MANUAL SCIENCE-6'),
(315, 6, 'OUR PASTS HISTORY-6'),
(316, 6, 'SOCIAL AND POLITICAL LIFE'),
(317, 6, 'THE EARTH OUR HABITAT-6'),
(318, 6, 'SOCIAL SCIENCE WORKSHEETS'),
(319, 6, 'MAP EXPERT GEO&HIS-6'),
(320, 6, 'KNOELEDGE OLYMPIAD-6'),
(321, 6, 'TODAYS COMPUTER-6'),
(322, 6, 'RUCHIRA-6'),
(323, 6, 'ART&CRAFT-6'),
(324, 7, 'HONEYCOMB-7'),
(325, 7, 'ALIEN HAND-7'),
(326, 7, 'ENG GRAMMAR&COMPO-7'),
(329, 8, 'EASY TO LEARN SCIENCE-8'),
(330, 8, 'ART & CRAFT-8'),
(332, 9, 'MATHEMATICS-9'),
(333, 21, 'diary 3-10'),
(334, 21, 'HINDI'),
(335, 21, 'ENGLISH'),
(336, 21, 'MIX COPY'),
(337, 21, 'MATH COPY'),
(338, 21, 'REGISTER HINDI'),
(339, 21, 'REGISTER SCIENCE'),
(340, 10, 'HEALTH AND PHYSICAL EDU-1'),
(341, 9, 'HEALTH AND PHYSICAL EDU-9');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `clinic_id` varchar(10) NOT NULL,
  `is_login` tinyint(1) NOT NULL,
  `chat_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `clinic_id`, `is_login`, `chat_id`) VALUES
(1, '10001', 1, 'PCVGFINCH1326');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
