-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2018 at 06:15 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nurhome`
--
CREATE DATABASE IF NOT EXISTS `nurhome` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nurhome`;

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `b_id` int(4) NOT NULL,
  `b_type` varchar(15) NOT NULL,
  `b_charge` int(5) DEFAULT NULL,
  `dept_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`b_id`, `b_type`, `b_charge`, `dept_id`) VALUES
(1, 'Executive Suite', 9500, 12),
(2, 'Twin Deluxe', 5500, 25),
(3, 'Respiratory Bed', 5000, 16),
(4, 'Twin Deluxe', 5500, 24),
(5, 'Multi bed', 3000, 10),
(6, 'Executive Suite', 9500, 28),
(7, 'Day Care', 2000, 18),
(8, 'Executive Suite', 9500, 1),
(9, 'HDU', 7000, 2),
(10, 'PICU', 6500, 13),
(11, 'PICU', 6500, 12),
(12, 'ICCU', 8500, 17),
(13, 'Executive Suite', 9500, 28),
(14, 'PICU', 6500, 21),
(15, 'Multi bed', 3000, 19),
(16, 'ICU', 8500, 3),
(17, 'ICCU', 8500, 1),
(18, 'PICU', 6500, 5),
(19, 'Day Care', 2000, 8),
(20, 'SICU', 8500, 15),
(21, 'NICU', 6000, 1),
(22, 'Multi bed', 3000, 22),
(23, 'ICCU', 8500, 2),
(24, 'SICU', 8500, 1),
(25, 'NICU', 6000, 29),
(26, 'Emergency Ward', 4000, 16),
(27, 'Day Care', 2000, 8),
(28, 'Royal Suite', 11000, 28),
(29, 'Royal Suite', 11000, 4),
(30, 'Day Care', 2000, 5),
(31, 'Day Care', 2000, 18),
(32, 'HDU', 7000, 8),
(33, 'HDU', 7000, 22),
(34, 'Royal Suite', 11000, 9),
(35, 'Day Care', 2000, 17),
(36, 'ICU', 8500, 24),
(37, 'Day Care', 2000, 23),
(38, 'ICCU', 8500, 12),
(39, 'NICU', 6000, 6),
(40, 'SICU', 8500, 26),
(41, 'Emergency Ward', 4000, 10),
(42, 'Royal Suite', 11000, 9),
(43, 'PICU', 6500, 18),
(44, 'HDU', 7000, 28),
(45, 'HDU', 7000, 7),
(46, 'ICU', 8500, 19),
(47, 'HDU', 7000, 5),
(48, 'Twin Deluxe', 5500, 15),
(49, 'Royal Suite', 11000, 28),
(50, 'Multi bed', 3000, 26),
(51, 'Executive Suite', 9500, 4),
(52, 'PICU', 6500, 18),
(53, 'NICU', 6000, 8),
(54, 'Executive Suite', 9500, 18),
(55, 'NICU', 6000, 26),
(56, 'ICU', 8500, 27),
(57, 'Day Care', 2000, 7),
(58, 'HDU', 7000, 14),
(59, 'Multi bed', 3000, 16),
(60, 'Executive Suite', 9500, 13),
(61, 'PICU', 6500, 14),
(62, 'Twin Deluxe', 5500, 2),
(63, 'Day Care', 2000, 5),
(64, 'PICU', 6500, 20),
(65, 'Private Deluxe', 7500, 19),
(66, 'Executive Suite', 9500, 5),
(67, 'Royal Suite', 11000, 6),
(68, 'HDU', 7000, 18),
(69, 'ICU', 8500, 20),
(70, 'SICU', 8500, 4),
(71, 'Royal Suite', 11000, 24),
(72, 'Day Care', 2000, 11),
(73, 'HDU', 7000, 21),
(74, 'HDU', 7000, 4),
(75, 'Multi bed', 3000, 27),
(76, 'NICU', 6000, 18),
(77, 'Emergency Ward', 4000, 19),
(78, 'ICCU', 8500, 16),
(79, 'PICU', 6500, 26),
(80, 'Executive Suite', 9500, 7),
(81, 'PICU', 6500, 1),
(82, 'Day Care', 2000, 1),
(83, 'HDU', 7000, 26),
(84, 'PICU', 6500, 5),
(85, 'ICU', 8500, 8),
(86, 'ICU', 8500, 24),
(87, 'Day Care', 2000, 1),
(88, 'ICU', 8500, 21),
(89, 'Private Deluxe', 7500, 29),
(90, 'ICU', 8500, 21),
(91, 'ICU', 8500, 17),
(92, 'Executive Suite', 9500, 5),
(93, 'HDU', 7000, 10),
(94, 'Private Deluxe', 7500, 27),
(95, 'Day Care', 2000, 16),
(96, 'Day Care', 2000, 3),
(97, 'Royal Suite', 11000, 22),
(98, 'HDU', 7000, 9),
(99, 'Day Care', 2000, 9),
(100, 'Executive Suite', 9500, 13),
(101, 'Private Deluxe', 7500, 22),
(102, 'HDU', 7000, 9),
(103, 'Multi bed', 3000, 14),
(104, 'Twin Deluxe', 5500, 26),
(105, 'Royal Suite', 11000, 21),
(106, 'Emergency Ward', 4000, 3),
(107, 'SICU', 8500, 18),
(108, 'Twin Deluxe', 5500, 22),
(109, 'Respiratory Bed', 5000, 24),
(110, 'SICU', 8500, 6),
(111, 'ICCU', 8500, 26),
(112, 'Twin Deluxe', 5500, 14),
(113, 'Emergency Ward', 4000, 18),
(114, 'Respiratory Bed', 5000, 16),
(115, 'ICCU', 8500, 9),
(116, 'ICU', 8500, 11),
(117, 'Private Deluxe', 7500, 27),
(118, 'Twin Deluxe', 5500, 4),
(119, 'ICCU', 8500, 13),
(120, 'PICU', 6500, 7),
(121, 'NICU', 6000, 9),
(122, 'HDU', 7000, 8),
(123, 'ICCU', 8500, 8),
(124, 'NICU', 6000, 29),
(125, 'Twin Deluxe', 5500, 14),
(126, 'ICCU', 8500, 19),
(127, 'Executive Suite', 9500, 19),
(128, 'SICU', 8500, 28),
(129, 'Respiratory Bed', 5000, 1),
(130, 'ICCU', 8500, 9),
(131, 'Private Deluxe', 7500, 18),
(132, 'Private Deluxe', 7500, 26),
(133, 'Twin Deluxe', 5500, 24),
(134, 'Emergency Ward', 4000, 21),
(135, 'Private Deluxe', 7500, 28),
(136, 'Twin Deluxe', 5500, 29),
(137, 'PICU', 6500, 18),
(138, 'PICU', 6500, 25),
(139, 'Respiratory Bed', 5000, 2),
(140, 'Royal Suite', 11000, 4),
(141, 'PICU', 6500, 12),
(142, 'Executive Suite', 9500, 22),
(143, 'Royal Suite', 11000, 18),
(144, 'Multi bed', 3000, 27),
(145, 'Multi bed', 3000, 14),
(146, 'Executive Suite', 9500, 15),
(147, 'NICU', 6000, 10),
(148, 'Respiratory Bed', 5000, 21),
(149, 'NICU', 6000, 24),
(150, 'PICU', 6500, 21),
(151, 'Respiratory Bed', 5000, 12),
(152, 'Day Care', 2000, 1),
(153, 'NICU', 6000, 3),
(154, 'PICU', 6500, 3),
(155, 'NICU', 6000, 28),
(156, 'NICU', 6000, 22),
(157, 'Respiratory Bed', 5000, 3),
(158, 'Respiratory Bed', 5000, 10),
(159, 'Multi bed', 3000, 26),
(160, 'Day Care', 2000, 4),
(161, 'Respiratory Bed', 5000, 19),
(162, 'Respiratory Bed', 5000, 25),
(163, 'PICU', 6500, 25),
(164, 'Multi bed', 3000, 25),
(165, 'Day Care', 2000, 19),
(166, 'ICCU', 8500, 29),
(167, 'Private Deluxe', 7500, 4),
(168, 'Multi bed', 3000, 27),
(169, 'Respiratory Bed', 5000, 28),
(170, 'Private Deluxe', 7500, 15),
(171, 'Royal Suite', 11000, 17),
(172, 'ICU', 8500, 24),
(173, 'PICU', 6500, 21),
(174, 'Private Deluxe', 7500, 14),
(175, 'NICU', 6000, 6),
(176, 'Day Care', 2000, 16),
(177, 'NICU', 6000, 25),
(178, 'Executive Suite', 9500, 9),
(179, 'HDU', 7000, 4),
(180, 'Day Care', 2000, 9),
(181, 'Day Care', 2000, 10),
(182, 'PICU', 6500, 19),
(183, 'Twin Deluxe', 5500, 1),
(184, 'NICU', 6000, 10),
(185, 'ICU', 8500, 9),
(186, 'Executive Suite', 9500, 13),
(187, 'NICU', 6000, 25),
(188, 'NICU', 6000, 24),
(189, 'Royal Suite', 11000, 8),
(190, 'Private Deluxe', 7500, 9),
(191, 'Emergency Ward', 4000, 4),
(192, 'PICU', 6500, 24),
(193, 'HDU', 7000, 8),
(194, 'PICU', 6500, 15),
(195, 'Day Care', 2000, 8),
(196, 'PICU', 6500, 12),
(197, 'PICU', 6500, 14),
(198, 'HDU', 7000, 23),
(199, 'ICCU', 8500, 2),
(200, 'Royal Suite', 11000, 29),
(201, 'Royal Suite', 11000, 10),
(202, 'Multi bed', 3000, 29),
(203, 'Emergency Ward', 4000, 22),
(204, 'ICCU', 8500, 25),
(205, 'Emergency Ward', 4000, 28),
(206, 'Royal Suite', 11000, 5),
(207, 'Executive Suite', 9500, 15),
(208, 'Multi bed', 3000, 24),
(209, 'SICU', 8500, 6),
(210, 'Private Deluxe', 7500, 18),
(211, 'PICU', 6500, 24),
(212, 'Executive Suite', 9500, 24),
(213, 'NICU', 6000, 25),
(214, 'Private Deluxe', 7500, 22),
(215, 'ICCU', 8500, 8),
(216, 'NICU', 6000, 5),
(217, 'PICU', 6500, 7),
(218, 'ICU', 8500, 18),
(219, 'Emergency Ward', 4000, 24),
(220, 'Day Care', 2000, 15),
(221, 'ICU', 8500, 29),
(222, 'PICU', 6500, 6),
(223, 'SICU', 8500, 18),
(224, 'ICCU', 8500, 4),
(225, 'Emergency Ward', 4000, 13),
(226, 'Respiratory Bed', 5000, 23),
(227, 'Emergency Ward', 4000, 7),
(228, 'Emergency Ward', 4000, 7),
(229, 'Respiratory Bed', 5000, 28),
(230, 'ICCU', 8500, 18),
(231, 'ICU', 8500, 26),
(232, 'NICU', 6000, 28),
(233, 'Multi bed', 3000, 13),
(234, 'SICU', 8500, 19),
(235, 'NICU', 6000, 13),
(236, 'Multi bed', 3000, 3),
(237, 'Day Care', 2000, 28),
(238, 'Multi bed', 3000, 22),
(239, 'Day Care', 2000, 5),
(240, 'NICU', 6000, 21),
(241, 'Multi bed', 3000, 16),
(242, 'Executive Suite', 9500, 15),
(243, 'Respiratory Bed', 5000, 14),
(244, 'Multi bed', 3000, 17),
(245, 'Executive Suite', 9500, 5),
(246, 'Twin Deluxe', 5500, 23),
(247, 'Respiratory Bed', 5000, 12),
(248, 'PICU', 6500, 8),
(249, 'Multi bed', 3000, 13),
(250, 'NICU', 6000, 1),
(251, 'HDU', 7000, 17),
(252, 'Day Care', 2000, 22),
(253, 'Twin Deluxe', 5500, 13),
(254, 'SICU', 8500, 18),
(255, 'Respiratory Bed', 5000, 9),
(256, 'Multi bed', 3000, 6),
(257, 'ICCU', 8500, 27),
(258, 'Day Care', 2000, 19),
(259, 'PICU', 6500, 9),
(260, 'Multi bed', 3000, 10),
(261, 'SICU', 8500, 21),
(262, 'Day Care', 2000, 18),
(263, 'HDU', 7000, 25),
(264, 'HDU', 7000, 28),
(265, 'PICU', 6500, 25),
(266, 'Executive Suite', 9500, 15),
(267, 'Twin Deluxe', 5500, 15),
(268, 'PICU', 6500, 8),
(269, 'PICU', 6500, 2),
(270, 'Emergency Ward', 4000, 4),
(271, 'Private Deluxe', 7500, 6),
(272, 'NICU', 6000, 21),
(273, 'ICCU', 8500, 13),
(274, 'Emergency Ward', 4000, 25),
(275, 'PICU', 6500, 5),
(276, 'Emergency Ward', 4000, 1),
(277, 'Executive Suite', 9500, 23),
(278, 'ICCU', 8500, 28),
(279, 'Multi bed', 3000, 15),
(280, 'Multi bed', 3000, 9),
(281, 'PICU', 6500, 6),
(282, 'Emergency Ward', 4000, 13),
(283, 'Executive Suite', 9500, 5),
(284, 'PICU', 6500, 27),
(285, 'ICCU', 8500, 14),
(286, 'Private Deluxe', 7500, 29),
(287, 'Executive Suite', 9500, 26),
(288, 'Executive Suite', 9500, 6),
(289, 'Twin Deluxe', 5500, 1),
(290, 'Royal Suite', 11000, 12),
(291, 'Private Deluxe', 7500, 12),
(292, 'Day Care', 2000, 23),
(293, 'Respiratory Bed', 5000, 19),
(294, 'Multi bed', 3000, 10),
(295, 'ICCU', 8500, 20),
(296, 'Twin Deluxe', 5500, 5),
(297, 'SICU', 8500, 15),
(298, 'Royal Suite', 11000, 27),
(299, 'HDU', 7000, 15),
(300, 'Emergency Ward', 4000, 18);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(3) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `dept_head` int(4) DEFAULT NULL,
  `staff_head` int(4) DEFAULT NULL,
  `d_visit_charge` int(5) DEFAULT NULL,
  `d_consult_charge` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `dept_head`, `staff_head`, `d_visit_charge`, `d_consult_charge`) VALUES
(1, 'General', 2, NULL, 400, 300),
(2, 'Accident & Emergency', 3, NULL, 500, 800),
(3, 'Anaesthetics', 33, NULL, 500, 600),
(4, 'Breast Screening', 24, NULL, 510, 1270),
(5, 'Cardiology', 19, NULL, 800, 1000),
(6, 'Critical Care', 51, NULL, 330, 330),
(7, 'Diagonastic Imaging', 52, NULL, 6240, 8500),
(8, 'Ear Nose & Throat', 22, NULL, 700, 800),
(9, 'Elderly Service', 1, NULL, 800, 1400),
(10, 'Gastroenterology', 102, NULL, 500, 800),
(11, 'General Surgery', 20, NULL, 2900, 2700),
(12, 'Gynaecology', 37, NULL, 1000, 1200),
(13, 'Haematology', 8, NULL, 360, 500),
(14, 'Maternity', 56, NULL, 1500, 2000),
(15, 'Microbiology', 65, NULL, 3270, 5760),
(16, 'Neonatal Unit', 38, NULL, 3990, 5450),
(17, 'Nephrology', 40, NULL, 1200, 2000),
(18, 'Neurology', 36, NULL, 1430, 2080),
(19, 'Nutrition and dietetics', 161, NULL, 1400, 1500),
(20, 'Obstetrics and Gynaecology', 106, NULL, 1200, 1250),
(21, 'Oncology', 34, NULL, 7400, 8000),
(22, 'Ophthalmology', 39, NULL, 1000, 1400),
(23, 'Orthopaedics', 23, NULL, 1200, 1200),
(24, 'Physiotherapy', 21, NULL, 800, 1200),
(25, 'Radiotherapy', 110, NULL, 500, 800),
(26, 'Renal unit', 67, NULL, 1000, 1500),
(27, 'Rheumatology', 118, NULL, 1200, 1500),
(28, 'Genitourinary', 35, NULL, 1200, 1400),
(29, 'Urology', 17, NULL, 2000, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(4) NOT NULL,
  `d_name` varchar(30) NOT NULL,
  `d_gender` varchar(10) NOT NULL,
  `d_dob` date NOT NULL,
  `d_addr` varchar(100) NOT NULL,
  `d_phone` bigint(15) NOT NULL,
  `d_license` varchar(30) NOT NULL,
  `d_qual` varchar(30) NOT NULL,
  `d_type` varchar(10) NOT NULL,
  `d_dept` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `d_name`, `d_gender`, `d_dob`, `d_addr`, `d_phone`, `d_license`, `d_qual`, `d_type`, `d_dept`) VALUES
(1, 'Dr. Oliver Fischer', 'Male', '1970-09-28', 'P.O. Box 224, 2734 Eu Ave', 9828242479, 'HA-682796', 'MBBCh,LRCP', 'Perm', 9),
(2, 'Dr. Petra Hale', 'Male', '1960-02-20', 'P.O. Box 899, 8800 Semper St.', 9867491067, 'XM-624089', 'MBBCh,LRCP', 'Perm', 1),
(3, 'Dr. Ronan Mccullough', 'Male', '1978-06-08', 'Ap #805-7942 Vel, Road', 9871736401, 'CJ-218645', 'MBChB,LRCS ', 'Perm', 2),
(4, 'Dr. Kennan Mcmillan', 'Male', '1983-07-12', 'P.O. Box 122, 942 Nulla St.', 9858354410, 'HO-544308', 'MBChB,LRCS ', 'Perm', 15),
(5, 'Dr. Madeline Caldwell', 'Male', '1978-09-07', '9274 Semper Avenue', 9898828119, 'BG-241797', 'MBBS,LRCP', 'Perm', 22),
(6, 'Dr. Kylee Robertson', 'Female', '1964-07-02', 'P.O. Box 193, 938 Amet St.', 9831839506, 'BM-190985', 'MBBS,LRCP', 'Perm', 15),
(7, 'Dr. Florence Peck', 'Female', '1979-02-06', 'Ap #890-5805 Eu Av.', 9894670954, 'ZZ-088695', 'MBBS,MFFM', 'Perm', 22),
(8, 'Dr. Joseph Reid', 'Female', '1978-09-27', '9153 Iaculis Avenue', 9831647658, 'BI-499259', 'MBBS,MFFM', 'Perm', 13),
(9, 'Dr. Odessa Joyner', 'Female', '1974-06-24', 'Ap #307-2576 Mauris Road', 9862897718, 'QK-165293', 'MBBS,MRCGP', 'Visit', 12),
(10, 'Dr. Chastity Travis', 'Female', '1981-06-24', '1949 At Ave', 9814496628, 'GM-663042', 'MBBS,MRCGP', 'Visit', 14),
(11, 'Dr. Pascale Gay', 'Male', '1968-12-15', '5862 Amet Rd.', 9846166978, 'EE-149247', 'MBBS,MRCOG', 'Visit', 23),
(12, 'Dr. Declan Hartman', 'Male', '1980-05-25', 'Ap #935-4142 Varius Rd.', 9878937486, 'XU-854428', 'MBBS,MRCOG', 'Visit', 4),
(13, 'Dr. Adena Cruz', 'Male', '1972-03-13', 'P.O. Box 750, 247 Turpis. St.', 9883585832, 'AA-443451', 'MBBS,MRCP', 'Visit', 28),
(14, 'Dr. Hashim Peterson', 'Male', '1966-07-15', 'P.O. Box 702, 4715 Nascetur Rd.', 9850419830, 'OC-659989', 'MBBS,MRCP', 'Visit', 28),
(15, 'Dr. Ila Dickerson', 'Male', '1970-04-02', 'Ap #934-3235 Bibendum Street', 9805986639, 'KO-399995', 'MBBS,MRCS', 'Visit', 25),
(16, 'Dr. Amir Washington', 'Female', '1981-01-10', 'P.O. Box 680, 4290 Diam. Ave', 9840778417, 'RO-473960', 'MBBS,MRCS', 'Visit', 24),
(17, 'Dr. Merritt Pierce', 'Female', '1969-03-16', 'Ap #464-4676 Et Rd.', 9831243107, 'LD-353258', 'MBBS,FRCGP', 'Perm', 29),
(18, 'Dr. Ross Macias', 'Female', '1962-04-20', '2892 Suspendisse St.', 9878683366, 'EV-112064', 'MBBS,FRCGP', 'Perm', 19),
(19, 'Dr. Wendy Best', 'Female', '1971-03-13', 'P.O. Box 473, 7087 Quam Av.', 9827999416, 'IZ-637346', 'MBBCh,LRCP', 'Perm', 5),
(20, 'Dr. Hadassah Barrett', 'Female', '1970-07-17', '761-4070 Purus, St.', 9839844958, 'AX-865396', 'MBBCh,LRCP', 'Perm', 1),
(21, 'Dr. Eagan Wilkinson', 'Male', '1964-05-04', '682-5100 Lacus. St.', 9888359795, 'JS-889132', 'MBChB,LRCS ', 'Perm', 24),
(22, 'Dr. Vaughan Hartman', 'Male', '1974-03-19', 'P.O. Box 412, 242 Penatibus Ave', 9816642179, 'ZD-979548', 'MBChB,LRCS ', 'Perm', 8),
(23, 'Dr. Doris Huber', 'Male', '1982-03-19', '148-7168 Nulla. Ave', 9851017165, 'VV-797029', 'MBBS,LRCP', 'Perm', 23),
(24, 'Dr. Sharon Tyler', 'Male', '1972-02-27', '6332 Convallis St.', 9879272548, 'OA-053892', 'MBBS,LRCP', 'Perm', 7),
(25, 'Dr. Renee Head', 'Male', '1981-02-05', 'Ap #114-7722 Nibh Ave', 9897030337, 'AG-623984', 'MBBS,MFFM', 'Visit', 16),
(26, 'Dr. Jamal Montgomery', 'Female', '1978-01-30', 'Ap #243-4617 Enim Av.', 9808475954, 'LE-000658', 'MBBS,MFFM', 'Visit', 23),
(27, 'Dr. Frances Mcneil', 'Female', '1981-02-16', 'Ap #224-4905 Eget Avenue', 9847001608, 'SB-528344', 'MBBS,MRCGP', 'Visit', 9),
(28, 'Dr. Kamal Anderson', 'Female', '1977-06-23', '759-5623 Eu Av.', 9868165117, 'XK-616038', 'MBBS,MRCGP', 'Visit', 16),
(29, 'Dr. Olivia Lopez', 'Female', '1965-12-18', '657-9617 Taciti Av.', 9847328694, 'JA-794578', 'MBBS,MRCOG', 'Visit', 4),
(30, 'Dr. Piper Shaffer', 'Female', '1960-02-19', 'Ap #248-6497 Justo. Rd.', 9882801343, 'JH-789539', 'MBBS,MRCOG', 'Visit', 9),
(31, 'Dr. Tucker Maxwell', 'Male', '1981-01-02', 'Ap #832-2235 Ac St.', 9882575484, 'VW-386068', 'MBBS,MRCP', 'Visit', 12),
(32, 'Dr. Zelenia Wagner', 'Male', '1978-02-17', '438-3640 At Av.', 9852821264, 'MP-444168', 'MBBS,MRCP', 'Visit', 23),
(33, 'Dr. Kylan Riggs', 'Male', '1970-09-05', 'P.O. Box 333, 9303 Porttitor Street', 9871350047, 'LN-151675', 'MBBS,MRCS', 'Perm', 3),
(34, 'Dr. Germaine Dennis', 'Male', '1983-05-13', '5042 Turpis. Road', 9892104861, 'ZU-830166', 'MBBS,MRCS', 'Perm', 21),
(35, 'Dr. Jacob Guerra', 'Male', '1965-05-17', '787-9758 Lacus. Avenue', 9873410579, 'WI-774037', 'MBBS,FRCGP', 'Perm', 28),
(36, 'Dr. Acton Zamora', 'Female', '1977-10-31', '4468 Sit Avenue', 9876797049, 'VF-348746', 'MBBS,FRCGP', 'Perm', 18),
(37, 'Dr. Benjamin Espinoza', 'Female', '1961-01-09', 'Ap #114-4157 Mus. Road', 9889269532, 'XJ-831129', 'MBBCh,LRCP', 'Perm', 12),
(38, 'Dr. Brady Nichols', 'Female', '1979-11-06', 'Ap #976-4030 Eget, Rd.', 9887756716, 'FQ-138345', 'MBBCh,LRCP', 'Perm', 16),
(39, 'Dr. Leilani Key', 'Female', '1965-11-19', 'Ap #770-9692 Turpis. St.', 9820374928, 'UK-453797', 'MBChB,LRCS ', 'Perm', 22),
(40, 'Dr. Prescott Pope', 'Female', '1976-03-21', '8591 Primis Road', 9831075126, 'GV-119008', 'MBChB,LRCS ', 'Perm', 17),
(41, 'Dr. Candace Valenzuela', 'Male', '1977-01-12', '3973 Euismod St.', 9830961729, 'CJ-793094', 'MBBS,LRCP', 'Visit', 17),
(42, 'Dr. Pandora Acosta', 'Male', '1972-01-15', '1521 Laoreet, Ave', 9800149544, 'QS-804582', 'MBBS,LRCP', 'Visit', 3),
(43, 'Dr. Tyler Gibbs', 'Male', '1980-09-23', '359-4982 Venenatis St.', 9823552564, 'YC-326531', 'MBBS,MFFM', 'Visit', 12),
(44, 'Dr. Elmo Koch', 'Male', '1971-11-26', 'Ap #856-7137 Feugiat Avenue', 9866493938, 'QM-438241', 'MBBS,MFFM', 'Visit', 16),
(45, 'Dr. Grady Beard', 'Male', '1975-03-18', 'P.O. Box 285, 2889 Luctus Av.', 9837550426, 'TL-606001', 'MBBS,MRCGP', 'Visit', 18),
(46, 'Dr. Keegan Stanley', 'Female', '1976-08-21', 'P.O. Box 487, 1428 Etiam Ave', 9852348822, 'SU-927067', 'MBBS,MRCGP', 'Visit', 28),
(47, 'Dr. Lani Cameron', 'Female', '1977-11-19', '182-3476 Ut St.', 9810013460, 'EJ-002566', 'MBBS,MRCOG', 'Visit', 20),
(48, 'Dr. Kennedy Bradford', 'Female', '1976-11-08', 'Ap #961-9808 Neque. Street', 9875157104, 'MK-370726', 'MBBS,MRCOG', 'Visit', 16),
(49, 'Dr. Elliott Glover', 'Female', '1977-03-28', '5860 Parturient Rd.', 9800421362, 'VN-066318', 'MBBS,MRCP', 'Perm', 28),
(50, 'Dr. Naida Henson', 'Female', '1975-07-23', 'P.O. Box 999, 6255 Laoreet Av.', 9873871781, 'WL-368240', 'MBBS,MRCP', 'Perm', 5),
(51, 'Dr. Mikayla Fleming', 'Male', '1962-11-28', 'Ap #617-6711 Amet Street', 9852998118, 'NL-710105', 'MBBS,MRCS', 'Perm', 6),
(52, 'Dr. Bruno Wallace', 'Male', '1960-08-19', '1504 Ligula. Av.', 9885215302, 'VU-041413', 'MBBS,MRCS', 'Perm', 4),
(53, 'Dr. Reagan Love', 'Male', '1976-08-06', '1056 Elit, St.', 9873048670, 'RO-411205', 'MBBS,FRCGP', 'Perm', 11),
(54, 'Dr. Lionel Mathis', 'Male', '1980-01-06', 'P.O. Box 586, 9946 Tortor. St.', 9859695822, 'EY-216845', 'MBBS,FRCGP', 'Perm', 16),
(55, 'Dr. Neville Allison', 'Male', '1961-06-23', '554-4554 Facilisis, Rd.', 9820484173, 'UZ-233765', 'MBBCh,LRCP', 'Perm', 9),
(56, 'Dr. Kay Dennis', 'Female', '1981-08-07', '1477 Ante. Rd.', 9868945513, 'LY-506220', 'MBBCh,LRCP', 'Perm', 20),
(57, 'Dr. Hiroko Small', 'Female', '1961-08-14', 'Ap #614-1361 Sem Ave', 9860111715, 'ER-441803', 'MBChB,LRCS ', 'Visit', 27),
(58, 'Dr. Virginia Nixon', 'Female', '1977-06-21', '7599 Egestas. Av.', 9883108815, 'XV-600641', 'MBChB,LRCS ', 'Visit', 19),
(59, 'Dr. Lacy Kirby', 'Female', '1968-01-05', '1164 Nam St.', 9811925746, 'BX-405425', 'MBBS,LRCP', 'Visit', 14),
(60, 'Dr. Lesley Valenzuela', 'Female', '1967-06-27', '5094 Sociis Road', 9823700532, 'KL-566009', 'MBBS,LRCP', 'Visit', 9),
(61, 'Dr. Unity Barron', 'Male', '1966-11-15', 'P.O. Box 594, 7460 Ornare Street', 9879475303, 'YH-326707', 'MBBS,MFFM', 'Visit', 16),
(62, 'Dr. Paloma Kennedy', 'Male', '1960-02-13', 'Ap #623-8247 Elit Ave', 9872154082, 'FO-798969', 'MBBS,MFFM', 'Visit', 22),
(63, 'Dr. Cullen Hurley', 'Male', '1971-11-14', '7431 Nec, St.', 9865979571, 'KO-673695', 'MBBS,MRCGP', 'Visit', 4),
(64, 'Dr. Hasad Guy', 'Male', '1973-05-18', '2216 Fusce Ave', 9869424039, 'QE-032999', 'MBBS,MRCGP', 'Visit', 15),
(65, 'Dr. Brittany Jimenez', 'Male', '1965-03-14', '6204 Suscipit Road', 9892899092, 'MS-980000', 'MBBS,MRCOG', 'Perm', 25),
(66, 'Dr. Wing Vaughn', 'Female', '1961-05-17', '5614 Ipsum. St.', 9874282121, 'SO-245075', 'MBBS,MRCOG', 'Perm', 23),
(67, 'Dr. Barrett Willis', 'Female', '1964-07-09', 'P.O. Box 305, 5874 Sed Av.', 9802406706, 'TM-078096', 'MBBS,MRCP', 'Perm', 17),
(68, 'Dr. Thomas Weber', 'Female', '1983-08-30', 'Ap #804-9027 Sociis Av.', 9835790270, 'PN-028903', 'MBBS,MRCP', 'Perm', 5),
(69, 'Dr. Francesca Clark', 'Female', '1966-12-21', '8753 Metus Street', 9879074293, 'NM-294093', 'MBBS,MRCS', 'Perm', 5),
(70, 'Dr. Gabriel Cherry', 'Female', '1976-08-20', 'Ap #532-1585 A Avenue', 9808345262, 'WV-355781', 'MBBS,MRCS', 'Perm', 22),
(71, 'Dr. Lester Cantu', 'Male', '1967-02-10', 'P.O. Box 710, 3619 Egestas Av.', 9801468135, 'TN-048245', 'MBBS,FRCGP', 'Perm', 3),
(72, 'Dr. Jaden Buck', 'Male', '1960-01-20', '572-6870 Consequat Rd.', 9813547729, 'RO-350091', 'MBBS,FRCGP', 'Perm', 8),
(73, 'Dr. Holmes Farley', 'Male', '1977-08-11', '761-4844 Non, Street', 9824452078, 'UW-632410', 'MBBCh,LRCP', 'Visit', 7),
(74, 'Dr. Christen Mathews', 'Male', '1970-12-01', 'P.O. Box 342, 4729 Blandit Avenue', 9856251834, 'KH-628679', 'MBBCh,LRCP', 'Visit', 28),
(75, 'Dr. Hilary Reynolds', 'Male', '1960-07-23', '814-592 Habitant Rd.', 9897182500, 'FV-683875', 'MBChB,LRCS ', 'Visit', 10),
(76, 'Dr. Michael Hyde', 'Female', '1979-06-19', '166-6291 Purus Rd.', 9853226249, 'LX-926882', 'MBChB,LRCS ', 'Visit', 4),
(77, 'Dr. Austin Carson', 'Female', '1980-12-06', '112-9970 Natoque Street', 9886692434, 'IM-619544', 'MBBS,LRCP', 'Visit', 20),
(78, 'Dr. Colin Schultz', 'Female', '1970-05-09', 'P.O. Box 244, 8735 Pede. Avenue', 9851990243, 'UK-124086', 'MBBS,LRCP', 'Visit', 8),
(79, 'Dr. Noelle Fitzgerald', 'Female', '1980-04-14', 'Ap #702-676 Est, Avenue', 9828537492, 'EM-228684', 'MBBS,MFFM', 'Visit', 1),
(80, 'Dr. Iona Day', 'Female', '1966-01-09', '4024 Velit Rd.', 9885536780, 'NX-453937', 'MBBS,MFFM', 'Visit', 5),
(81, 'Dr. Jane Torres', 'Male', '1969-01-17', '5896 Dui Rd.', 9808353027, 'LY-253115', 'MBBS,MRCGP', 'Perm', 6),
(82, 'Dr. Shelley Talley', 'Male', '1982-09-28', 'P.O. Box 330, 2349 Malesuada Rd.', 9874015280, 'YL-040673', 'MBBS,MRCGP', 'Perm', 7),
(83, 'Dr. Tatyana Horne', 'Male', '1976-11-10', '968-229 Eu, Av.', 9820612661, 'VS-702766', 'MBBS,MRCOG', 'Perm', 22),
(84, 'Dr. George Welch', 'Male', '1962-11-04', '2953 Aenean St.', 9808195857, 'ON-685705', 'MBBS,MRCOG', 'Perm', 26),
(85, 'Dr. Gwendolyn Becker', 'Male', '1963-07-31', 'P.O. Box 846, 291 Vehicula St.', 9867555294, 'AK-542397', 'MBBS,MRCP', 'Perm', 16),
(86, 'Dr. Venus Osborn', 'Female', '1978-12-15', 'Ap #345-1372 Et, Street', 9821862864, 'BY-395013', 'MBBS,MRCP', 'Perm', 7),
(87, 'Dr. Guinevere Thomas', 'Female', '1962-12-18', '398-2062 At Avenue', 9862935450, 'EK-189523', 'MBBS,MRCS', 'Perm', 25),
(88, 'Dr. Berk Cline', 'Female', '1972-11-02', 'P.O. Box 833, 5124 Ullamcorper, Rd.', 9842179543, 'PE-547568', 'MBBS,MRCS', 'Perm', 18),
(89, 'Dr. Mari Bates', 'Female', '1965-07-16', 'P.O. Box 543, 6164 Vel Rd.', 9882798323, 'FW-603002', 'MBBS,FRCGP', 'Visit', 8),
(90, 'Dr. Evelyn Stone', 'Female', '1968-01-28', 'P.O. Box 544, 2352 Lacinia St.', 9849087621, 'CZ-395928', 'MBBS,FRCGP', 'Visit', 18),
(91, 'Dr. Eve Edwards', 'Male', '1980-10-09', 'P.O. Box 226, 7915 Lacinia. Road', 9882636711, 'EJ-862512', 'MBBCh,LRCP', 'Visit', 15),
(92, 'Dr. Galvin Wolf', 'Male', '1970-04-28', '466-3334 Hendrerit Rd.', 9827233366, 'EJ-308200', 'MBBCh,LRCP', 'Visit', 22),
(93, 'Dr. Farrah Banks', 'Male', '1975-11-02', '7368 Ornare, Avenue', 9890496469, 'KG-209076', 'MBChB,LRCS ', 'Visit', 5),
(94, 'Dr. Lars Haynes', 'Male', '1964-08-15', '7355 Fringilla, St.', 9819662389, 'ZM-891274', 'MBChB,LRCS ', 'Visit', 16),
(95, 'Dr. Francesca Calderon', 'Male', '1965-02-03', 'Ap #889-216 Diam Av.', 9840031444, 'XV-901854', 'MBBS,LRCP', 'Visit', 9),
(96, 'Dr. Jordan Shepherd', 'Female', '1963-10-23', 'P.O. Box 745, 8457 Sed Ave', 9833241413, 'LC-961543', 'MBBS,LRCP', 'Visit', 13),
(97, 'Dr. Mollie Shelton', 'Female', '1977-05-12', '5722 Luctus Ave', 9807122664, 'HM-739899', 'MBBS,MFFM', 'Perm', 8),
(98, 'Dr. Talon Clemons', 'Female', '1981-06-07', '360 Quis Av.', 9842843632, 'JG-283611', 'MBBS,MFFM', 'Perm', 2),
(99, 'Dr. Moses Kerr', 'Female', '1963-03-26', '455-6511 Est Rd.', 9817058746, 'TT-617610', 'MBBS,MRCGP', 'Perm', 16),
(100, 'Dr. Rhea Burch', 'Female', '1983-08-05', '7951 Nibh Road', 9807465625, 'WU-119736', 'MBBS,MRCGP', 'Perm', 18),
(101, 'Dr. Teagan Todd', 'Female', '1969-01-06', '1143 Cras Rd.', 9873594626, 'AA-480489', 'DRCOG', 'Perm', 10),
(102, 'Dr. Ahmed Marks', 'Female', '1971-01-22', 'P.O. Box 116, 8880 Ornare, Rd.', 9829489078, 'PT-638637', 'FRCP', 'Perm', 10),
(103, 'Dr. Yvette Mcmillan', 'Male', '1978-08-11', 'Ap #107-4718 Nunc Rd.', 9894337708, 'FR-119259', 'LRCS,DCH', 'Perm', 10),
(104, 'Dr. Curran Olson', 'Female', '1971-12-19', 'P.O. Box 619, 4916 Nullam Road', 9824252431, 'ZE-696923', 'DFFP', 'Perm', 10),
(105, 'Dr. Jennifer Klein', 'Male', '1971-05-21', 'P.O. Box 805, 3270 Ullamcorper Road', 9826096214, 'WJ-661393', 'Dip Rheumatology', 'Perm', 20),
(106, 'Dr. Ralph Gilmore', 'Female', '1972-09-13', '3828 Sed Avenue', 9805083127, 'IU-437590', 'MRCP', 'Perm', 20),
(107, 'Dr. Noble Kirk', 'Female', '1978-11-28', '584-2066 Euismod Av.', 9890166045, 'XN-845498', 'Dip PCR', 'Perm', 20),
(108, 'Dr. Timothy Day', 'Female', '1975-08-24', '194-9598 In Avenue', 9879622055, 'SG-898538', 'FRCP', 'Perm', 20),
(109, 'Dr. Quon Larsen', 'Male', '1965-07-29', '7858 Urna Av.', 9845225670, 'SU-975703', 'MRCS,FRCGP', 'Perm', 25),
(110, 'Dr. Jada Burnett', 'Female', '1971-07-20', '8291 Odio Rd.', 9840844593, 'AP-936695', 'MBChirB,LRCP', 'Perm', 25),
(111, 'Dr. Porter Chambers', 'Female', '1971-04-02', '550-1927 Nulla St.', 9889508482, 'ZP-311205', 'MBBCh', 'Perm', 25),
(112, 'Dr. Tanek Gonzalez', 'Female', '1970-08-12', '473-6352 In Road', 9892450368, 'UG-375661', 'MBChB', 'Perm', 25),
(113, 'Dr. Raya Joyner', 'Male', '1967-08-06', 'Ap #498-3043 Et Avenue', 9897367422, 'JH-844552', 'MBChB', 'Perm', 26),
(114, 'Dr. Mannix Strong', 'Female', '1965-11-09', '505-4036 Porttitor Street', 9850669498, 'XX-539453', 'Dip Rheumatology', 'Perm', 26),
(115, 'Dr. Clark Ayala', 'Female', '1978-05-20', 'P.O. Box 645, 2526 Sem Av.', 9863974499, 'RT-707489', 'LRCS,DCH', 'Perm', 26),
(116, 'Dr. Wang Bentley', 'Female', '1975-12-14', 'P.O. Box 378, 9576 Enim, St.', 9871556586, 'VC-779133', 'DipIMC', 'Perm', 26),
(117, 'Dr. Dylan Britt', 'Female', '1976-12-07', '581-1231 Amet St.', 9815072652, 'NZ-616095', 'MBChB', 'Perm', 27),
(118, 'Dr. Calvin Salas', 'Male', '1977-01-29', '447-8096 Fusce Rd.', 9853306077, 'PZ-102826', 'DFFP', 'Perm', 27),
(119, 'Dr. Yeo Mcgowan', 'Male', '1969-04-09', '773-4527 Odio. Ave', 9864850715, 'BQ-210960', 'Dip Orthopaedic medicine,MFFM', 'Perm', 27),
(120, 'Dr. Chase Pate', 'Male', '1976-07-14', 'Ap #439-8384 Orci Av.', 9815571305, 'WU-939056', 'MBChirB,LRCP', 'Perm', 27),
(121, 'Dr. Jelani Snyder', 'Male', '1975-11-01', 'Ap #125-1620 Montes, Road', 9826041232, 'QX-134954', 'MBBS', 'Perm', 28),
(122, 'Dr. Cailin Thomas', 'Female', '1966-01-14', 'P.O. Box 444, 9426 Faucibus Rd.', 9844774366, 'RP-917126', 'MRCP', 'Perm', 28),
(123, 'Dr. Jonas Ware', 'Female', '1978-07-23', '929-3242 Tellus Avenue', 9880247332, 'LA-662326', 'DFFP', 'Perm', 28),
(124, 'Dr. Brett Walters', 'Male', '1969-08-22', '8987 Mauris. St.', 9860034386, 'ZN-974674', 'Dip Orthopaedic medicine,MFFM', 'Perm', 28),
(125, 'Dr. Sean Melendez', 'Female', '1969-01-19', 'Ap #538-659 Commodo Rd.', 9885602314, 'YA-446056', 'DipIMC', 'Perm', 29),
(126, 'Dr. Brock Good', 'Male', '1966-11-28', '5961 Sem Av.', 9817397350, 'EV-900247', 'DRCOG', 'Perm', 29),
(127, 'Dr. Xena Wood', 'Male', '1973-09-11', '1614 Risus Road', 9866130593, 'FB-480542', 'MBChirB,LRCP', 'Perm', 29),
(128, 'Dr. Troy Tucker', 'Female', '1971-09-30', '9022 Nisi St.', 9869459180, 'JP-995427', 'Dip Rheumatology', 'Perm', 29),
(129, 'Dr. Charissa Nixon', 'Male', '1971-04-14', 'P.O. Box 357, 4847 Volutpat. St.', 9898824721, 'KV-843944', 'LRCS,DCH', 'Perm', 15),
(130, 'Dr. Jonah Osborne', 'Male', '1972-02-23', 'P.O. Box 777, 2486 Eu Avenue', 9826232168, 'BU-430773', 'MBBS', 'Perm', 15),
(131, 'Dr. Phillip Avila', 'Male', '1965-07-05', '7300 Nunc St.', 9887028259, 'UH-700647', 'MBChB', 'Perm', 15),
(132, 'Dr. Shad Bartlett', 'Female', '1977-01-05', 'P.O. Box 204, 6561 Augue Street', 9848431468, 'PL-468736', 'MBBCh', 'Perm', 15),
(133, 'Dr. Coby Myers', 'Male', '1966-02-07', '2059 Eget Road', 9801077034, 'OQ-426527', 'DFFP', 'Perm', 21),
(134, 'Dr. Giselle Spears', 'Male', '1976-10-11', 'P.O. Box 529, 7761 Aptent St.', 9898053883, 'JI-205715', 'MBBS', 'Perm', 21),
(135, 'Dr. Fuller Stanton', 'Male', '1979-10-12', 'P.O. Box 592, 1350 Lorem Rd.', 9893120776, 'BV-253497', 'MRCGP', 'Perm', 21),
(136, 'Dr. Sarah Hernandez', 'Female', '1969-04-30', '242-2069 Massa St.', 9885094889, 'TT-207122', 'DFFP', 'Perm', 21),
(137, 'Dr. Damon Leblanc', 'Female', '1966-11-17', '2531 Ante. St.', 9849766006, 'FP-581669', 'MRCOG', 'Perm', 23),
(138, 'Dr. Preston Crosby', 'Female', '1979-01-12', '8083 Leo. St.', 9864101951, 'BX-825884', 'MRCP', 'Perm', 23),
(139, 'Dr. Kirk Mcpherson', 'Female', '1977-10-02', '346-8276 Euismod Rd.', 9898002185, 'YR-282996', 'MRCP', 'Perm', 23),
(140, 'Dr. Glenna Wooten', 'Male', '1972-01-01', 'P.O. Box 360, 9068 Eros. Av.', 9849814649, 'UF-710955', 'FRCS', 'Perm', 23),
(141, 'Dr. Maggie Dodson', 'Male', '1966-11-07', '183-8441 Ornare, Rd.', 9830599533, 'IE-507679', 'DipIMC', 'Perm', 11),
(142, 'Dr. Jessica Slater', 'Male', '1975-07-14', 'Ap #786-2272 Phasellus Street', 9835822590, 'QR-803341', 'Dip Rheumatology', 'Perm', 11),
(143, 'Dr. Sierra Huffman', 'Female', '1973-06-16', '347-1474 Orci Rd.', 9835824678, 'UZ-254410', 'MRCS,FRCGP', 'Perm', 11),
(144, 'Dr. Macon Randolph', 'Female', '1966-02-22', '303-7570 Nisl St.', 9842498261, 'QG-740987', 'DDerm', 'Perm', 11),
(145, 'Dr. Inez Zimmerman', 'Female', '1965-04-10', '689-7702 Cursus Rd.', 9863960032, 'WV-208100', 'MBChirB,LRCP', 'Perm', 24),
(146, 'Dr. Harding Santos', 'Male', '1967-12-02', 'Ap #668-211 Arcu. Avenue', 9864025516, 'LH-845989', 'MBBS', 'Perm', 24),
(147, 'Dr. Hasad Keith', 'Male', '1974-06-24', 'Ap #598-4688 Sed Road', 9841970242, 'XM-678249', 'LRCS,DCH', 'Perm', 24),
(148, 'Dr. Tad Mcleod', 'Female', '1972-06-21', 'P.O. Box 444, 1356 Cursus Street', 9830790881, 'XC-186972', 'Dip Rheumatology', 'Perm', 24),
(149, 'Dr. Bianca Tanner', 'Female', '1972-02-14', 'Ap #994-8615 Fringilla St.', 9823930039, 'FO-351405', 'DRCOG', 'Perm', 16),
(150, 'Dr. Trevor Mckay', 'Male', '1977-03-01', 'Ap #188-5062 Ut St.', 9843453717, 'JZ-774831', 'Dip Occ Med', 'Perm', 16),
(151, 'Dr. Wesley Hooper', 'Male', '1965-09-03', 'Ap #883-9690 Diam Rd.', 9815801545, 'IJ-325128', 'MRCGP', 'Perm', 16),
(152, 'Dr. Otto Cooley', 'Female', '1975-04-29', '981-7184 Suspendisse Rd.', 9811651202, 'BU-973530', 'Dip Orthopaedic medicine,MFFM', 'Perm', 16),
(153, 'Dr. Chelsea Horn', 'Male', '1973-11-27', '4974 Ipsum Rd.', 9845217644, 'WP-524587', 'DFFP', 'Perm', 17),
(154, 'Dr. Hyatt Freeman', 'Male', '1966-02-18', 'P.O. Box 847, 9602 Diam. Road', 9836728132, 'XN-120943', 'MRCGP', 'Perm', 17),
(155, 'Dr. Stephen Odom', 'Male', '1976-08-10', '645-9410 Placerat St.', 9889524397, 'OU-699253', 'DDerm', 'Perm', 17),
(156, 'Dr. Sydney Mills', 'Male', '1965-06-19', '173 Cursus Rd.', 9868822947, 'WO-732243', 'LRCS,DCH', 'Perm', 17),
(157, 'Dr. Quincy Clements', 'Male', '1970-05-14', '3778 Diam Street', 9868117407, 'RL-903854', 'MBChirB,LRCP', 'Perm', 18),
(158, 'Dr. Nevada Cobb', 'Female', '1966-09-24', '3734 Tellus Ave', 9886127337, 'TP-565839', 'Dip PCR', 'Perm', 18),
(159, 'Dr. Lucian Page', 'Female', '1977-04-09', '3236 Nam Rd.', 9816755240, 'UN-136257', 'Dip Rheumatology', 'Perm', 18),
(160, 'Dr. Tarik Baxter', 'Female', '1976-08-27', '141-7602 Auctor Street', 9806111985, 'XS-242347', 'MRCOG', 'Perm', 18),
(161, 'Dr. Cade Alvarado', 'Male', '1971-08-04', '5903 Eget, Av.', 9895612821, 'KZ-490599', 'FRCP', 'Perm', 19),
(162, 'Dr. Carter Lambert', 'Male', '1965-04-05', 'P.O. Box 178, 8268 Fringilla St.', 9826438242, 'ZF-940177', 'Dip Occ Med', 'Perm', 19),
(163, 'Dr. Rigel Miller', 'Male', '1965-05-03', '967-210 Etiam Rd.', 9883929104, 'JQ-823618', 'MBBCh', 'Perm', 19),
(164, 'Dr. Tyler Delaney', 'Female', '1970-04-25', 'Ap #334-5006 Cum Av.', 9804695315, 'KP-983791', 'FRCP', 'Perm', 19),
(165, 'Dr. Calista Ramsey', 'Male', '1969-05-04', 'P.O. Box 971, 1036 Sed St.', 9815998360, 'LP-266266', 'Dip Occ Med', 'Perm', 5),
(166, 'Dr. India Crawford', 'Female', '1973-03-16', 'Ap #294-4013 Iaculis Av.', 9896991210, 'FV-613847', 'MRCP', 'Perm', 5),
(167, 'Dr. Ingrid Albert', 'Female', '1965-06-23', 'Ap #372-9830 Cursus Road', 9828152120, 'VV-158219', 'MBChirB,LRCP', 'Perm', 5),
(168, 'Dr. Alexis Yates', 'Female', '1979-09-07', '7452 Elementum Ave', 9898061754, 'HN-734385', 'MBChirB,LRCP', 'Perm', 5),
(169, 'Dr. Keegan Mccall', 'Female', '1969-09-11', '1323 Orci. Street', 9836919003, 'XG-758502', 'DipIMC', 'Perm', 6),
(170, 'Dr. Scarlet Best', 'Female', '1968-01-12', 'Ap #310-2387 Lacus. Street', 9867556048, 'TW-166999', 'MBBS', 'Perm', 6),
(171, 'Dr. Desiree Patton', 'Female', '1966-07-10', 'P.O. Box 826, 3185 Elit, Road', 9835096527, 'SH-770935', 'MRCOG', 'Perm', 6),
(172, 'Dr. Valentine Rocha', 'Female', '1970-08-30', 'Ap #133-7701 Lobortis Rd.', 9895532189, 'QW-345277', 'Dip PCR', 'Perm', 6),
(173, 'Dr. Kelly Kirkland', 'Male', '1969-01-24', '2906 Cursus Avenue', 9835505878, 'LP-979617', 'FRCS', 'Perm', 22),
(174, 'Dr. Thomas Armstrong', 'Female', '1970-05-30', '7563 Elit. Street', 9805136554, 'VR-780618', 'DRCOG', 'Perm', 22),
(175, 'Dr. Sawyer Riddle', 'Female', '1969-02-19', '543-4125 Mi Road', 9824571839, 'QJ-206184', 'MBBS', 'Perm', 22),
(176, 'Dr. Amery Nunez', 'Female', '1973-08-21', 'P.O. Box 231, 422 Ante Rd.', 9810025834, 'MV-786244', 'MRCS,FRCGP', 'Disc', 22),
(177, 'Dr. Sierra Mckinney', 'Female', '1971-11-09', 'Ap #140-7522 Ornare, Avenue', 9891536994, 'QK-835463', 'MBBCh', 'Disc', 10),
(178, 'Dr. Amena Castaneda', 'Female', '1973-07-17', '470-6154 Porttitor Ave', 9835184836, 'HI-679800', 'MBBCh', 'Disc', 10),
(179, 'Dr. Amy Giles', 'Female', '1969-03-12', 'Ap #118-5164 A, St.', 9822103024, 'SH-605310', 'MBChirB,LRCP', 'Disc', 10),
(180, 'Dr. Stewart Simon', 'Male', '1973-01-29', '2034 Egestas. St.', 9820899820, 'PR-269695', 'LRCS,DCH', 'Disc', 10),
(181, 'Dr. Camden Cruz', 'Female', '1970-11-30', '879-2665 Aliquet, Rd.', 9803018097, 'JZ-606127', 'MBChB', 'Disc', 20),
(182, 'Dr. Darryl Boone', 'Female', '1975-06-14', 'P.O. Box 656, 8095 Congue, St.', 9893401531, 'WS-162950', 'FRCS', 'Disc', 20),
(183, 'Dr. Reese Miller', 'Female', '1975-06-19', '8227 Tellus. Street', 9884855488, 'KG-143134', 'MBChB', 'Disc', 20),
(184, 'Dr. Joseph Mcintosh', 'Male', '1967-03-10', '782-3308 Porttitor Rd.', 9830847541, 'AI-782841', 'Dip Occ Med', 'Disc', 20),
(185, 'Dr. Colleen Moses', 'Male', '1968-07-13', 'Ap #416-4203 Et Avenue', 9803956419, 'CS-327685', 'FRCP', 'Disc', 25),
(186, 'Dr. Brandon Davis', 'Male', '1980-01-09', 'Ap #843-997 Quis, St.', 9897700705, 'TI-337552', 'FRCP', 'Disc', 25),
(187, 'Dr. Lucian Fitzgerald', 'Female', '1977-11-30', '8814 Nunc Rd.', 9834554797, 'JK-647265', 'Dip PCR', 'Disc', 25),
(188, 'Dr. Ima Sellers', 'Male', '1979-11-21', 'Ap #263-2065 Elit, Rd.', 9857368950, 'YO-183328', 'DRCOG', 'Disc', 25),
(189, 'Dr. Sydnee Fleming', 'Female', '1969-11-01', '1196 Erat Ave', 9878158563, 'GH-449338', 'DipIMC', 'Disc', 26),
(190, 'Dr. Devin Fletcher', 'Male', '1973-10-13', 'Ap #647-265 Feugiat Rd.', 9890753704, 'VI-884059', 'Dip Rheumatology', 'Disc', 26),
(191, 'Dr. Lacy Pena', 'Male', '1979-01-11', 'Ap #573-3394 Ultrices Ave', 9874650175, 'AO-286212', 'DRCOG', 'Disc', 26),
(192, 'Dr. Keane Callahan', 'Female', '1965-07-29', '8896 Tincidunt, St.', 9800371740, 'RW-199896', 'Dip Occ Med', 'Disc', 26),
(193, 'Dr. Leah Mosley', 'Male', '1970-12-23', '822-8129 Vitae Rd.', 9874139718, 'RD-389978', 'DDerm', 'Disc', 27),
(194, 'Dr. Duncan Patterson', 'Female', '1975-01-30', 'P.O. Box 286, 9634 Pede Ave', 9808290509, 'AD-838959', 'MRCP', 'Disc', 27),
(195, 'Dr. Noah Zimmerman', 'Male', '1979-11-10', 'Ap #287-2452 Lorem Rd.', 9808177293, 'VE-980693', 'MBChB', 'Disc', 27),
(196, 'Dr. Nero Beck', 'Female', '1970-06-12', '2459 Aliquet Street', 9849047668, 'WQ-212151', 'DRCOG', 'Disc', 27),
(197, 'Dr. Jesse Puckett', 'Male', '1979-06-19', 'P.O. Box 155, 2566 Tempor Rd.', 9876830452, 'UW-613317', 'DDerm', 'Disc', 28),
(198, 'Dr. Dieter Clements', 'Female', '1977-05-21', 'Ap #645-6549 Amet Ave', 9800877205, 'BD-212900', 'MBBS', 'Disc', 28),
(199, 'Dr. Steel Downs', 'Male', '1972-11-23', 'P.O. Box 370, 508 Sit Avenue', 9886573839, 'NS-106986', 'MBBCh', 'Disc', 28),
(200, 'Dr. Angela England', 'Female', '1970-11-29', '495-8838 Urna. Ave', 9835044833, 'HT-892463', 'MRCS,FRCGP', 'Disc', 28);

-- --------------------------------------------------------

--
-- Table structure for table `d_perm`
--

CREATE TABLE `d_perm` (
  `d_id` int(4) NOT NULL,
  `d_monthly_sal` int(10) NOT NULL,
  `speciality` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_perm`
--

INSERT INTO `d_perm` (`d_id`, `d_monthly_sal`, `speciality`) VALUES
(1, 228000, ' Geriatrician '),
(2, 200000, ' General practitioner '),
(3, 320000, ' Emergency Physician '),
(4, 280000, ' Virologist '),
(5, 320000, ' Ophthalmologist '),
(6, 280000, ' Virologist '),
(7, 320000, ' Ophthalmologist '),
(8, 350000, ' Hematologist '),
(17, 318000, 'Urologist'),
(18, 456000, 'Neurologist'),
(19, 115000, 'Cardiologist'),
(20, 470000, 'General Physician'),
(21, 482000, 'Physiotherapist'),
(22, 430000, 'Ear Nose and Throat Specialist'),
(23, 135000, 'Orthopedic'),
(24, 265000, 'Radiologist'),
(33, 105200, 'Anesthesiologist'),
(34, 365700, 'Oncologist'),
(35, 163400, 'Genitourinary Physician'),
(36, 369000, 'Neurologist'),
(37, 487800, 'Gynaecologist'),
(38, 182600, 'Neonatalogist'),
(39, 199600, 'Opthalmologist'),
(40, 107000, 'Nephrologist'),
(49, 95700, ' Genitourinary Physician'),
(50, 413700, 'Cardiologist'),
(51, 273900, 'Critical Care Specialist'),
(52, 292300, 'Radiologist'),
(53, 811000, 'General Practitioner'),
(54, 102500, 'Neonatologist'),
(55, 250100, 'Geriatrician'),
(56, 245900, 'Gynaecologist'),
(65, 616000, 'Radiotherapist'),
(66, 157300, 'Orthopedic Sugeon'),
(67, 321200, 'Nephrologist'),
(68, 212200, 'Cardiologist'),
(69, 363800, 'Cardiologist'),
(70, 104100, 'Ophthalmologist'),
(71, 581000, 'Anesthesiologist'),
(72, 373800, 'Ear Nose and Throat Specialist'),
(81, 416400, 'Critical Care Specialist'),
(82, 371600, 'Radiologist'),
(83, 889000, 'Opthamologist'),
(84, 497600, 'Nephrologist'),
(85, 248500, 'Neonatalogist'),
(86, 118400, 'Radiologist'),
(87, 425500, 'Radiologist'),
(88, 470500, 'Neurologist'),
(97, 121100, 'Ear Nose and Throat Specialist'),
(98, 429600, 'Emergency Physician'),
(99, 301800, 'Neonatalogist'),
(100, 462000, 'Neurologist'),
(101, 241806, 'Gastroenterologist'),
(102, 243307, 'Gastroenterologist'),
(103, 219450, 'Gastroenterologist'),
(104, 242407, 'Gastroenterologist'),
(105, 97427, 'Obstetrician'),
(106, 152597, 'Obstetrician'),
(107, 275176, 'Obstetrician'),
(108, 96638, 'Obstetrician'),
(109, 112147, 'Radiotherapist'),
(110, 293712, 'Radiotherapist'),
(111, 262218, 'Radiotherapist'),
(112, 207829, 'Radiotherapist'),
(113, 247983, 'Nephrologist'),
(114, 227405, 'Nephrologist'),
(115, 230503, 'Nephrologist'),
(116, 244678, 'Nephrologist'),
(117, 200844, 'Rheumatologist'),
(118, 239307, 'Rheumatologist'),
(119, 211830, 'Rheumatologist'),
(120, 211888, 'Rheumatologist'),
(121, 126250, 'Rheumatologist'),
(122, 196959, 'Rheumatologist'),
(123, 134890, 'Rheumatologist'),
(124, 236978, 'Rheumatologist'),
(125, 247888, 'Genitourinary Physician'),
(126, 150931, 'Genitourinary Physician'),
(127, 273042, 'Genitourinary Physician'),
(128, 265508, 'Genitourinary Physician'),
(129, 156631, 'Urologist'),
(130, 295900, 'Urologist'),
(131, 240136, 'Urologist'),
(132, 163998, 'Urologist'),
(133, 197071, 'Radiotherapist'),
(134, 187868, 'Radiotherapist'),
(135, 262926, 'Radiotherapist'),
(136, 239025, 'Radiotherapist'),
(137, 223473, 'Oncologist'),
(138, 233145, 'Oncologist'),
(139, 189792, 'Oncologist'),
(140, 186421, 'Oncologist'),
(141, 225898, 'Orthopaedic Surgeon'),
(142, 113330, 'Orthopaedic Surgeon'),
(143, 215470, 'Orthopaedic Surgeon'),
(144, 216622, 'Orthopaedic Surgeon'),
(145, 292739, 'General Surgen'),
(146, 215187, 'General Surgen'),
(147, 165335, 'General Surgen'),
(148, 174236, 'General Surgen'),
(149, 234043, 'Physiotherapist'),
(150, 206567, 'Physiotherapist'),
(151, 204533, 'Physiotherapist'),
(152, 283771, 'Physiotherapist'),
(153, 278441, 'Neonatalogist'),
(154, 284736, 'Neonatalogist'),
(155, 271702, 'Neonatalogist'),
(156, 188804, 'Neonatalogist'),
(157, 100557, 'Nephrologist'),
(158, 123741, 'Nephrologist'),
(159, 96168, 'Nephrologist'),
(160, 277535, 'Nephrologist'),
(161, 235056, 'Neurologist'),
(162, 254957, 'Neurologist'),
(163, 107564, 'Neurologist'),
(164, 240204, 'Neurologist'),
(165, 157444, 'Dietician'),
(166, 157386, 'Dietician'),
(167, 198781, 'Dietician'),
(168, 226884, 'Dietician'),
(169, 239742, 'Cardiologist'),
(170, 283545, 'Cardiologist'),
(171, 209841, 'Cardiologist'),
(172, 265062, 'Cardiologist'),
(173, 179842, 'Critial Care Specialist'),
(174, 109045, 'Critial Care Specialist'),
(175, 249592, 'Critial Care Specialist');

-- --------------------------------------------------------

--
-- Table structure for table `d_visit`
--

CREATE TABLE `d_visit` (
  `d_id` int(4) NOT NULL,
  `d_fee_per_visit` int(5) DEFAULT NULL,
  `d_fee_per_consult` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_visit`
--

INSERT INTO `d_visit` (`d_id`, `d_fee_per_visit`, `d_fee_per_consult`) VALUES
(9, 500, 800),
(10, 800, 1200),
(11, 1000, 1400),
(12, 500, 1500),
(13, 600, 900),
(14, 550, 600),
(15, 600, 1000),
(16, 600, 700),
(25, 550, 700),
(26, 800, 1000),
(27, 500, 600),
(28, 400, 500),
(29, 200, 800),
(30, 550, 500),
(31, 350, 500),
(32, 400, 800),
(41, 500, 1000),
(42, 400, 1000),
(43, 500, 700),
(44, 550, 1000),
(45, 450, 800),
(46, 600, 1200),
(47, 400, 600),
(48, 300, 800),
(57, 500, 1000),
(58, 3977, 2713),
(59, 2056, 3544),
(60, 3678, 704),
(61, 1124, 2464),
(62, 2778, 4573),
(63, 4407, 2865),
(64, 4708, 1803),
(73, 4894, 1777),
(74, 4461, 2873),
(75, 1847, 3210),
(76, 3364, 3635),
(77, 1290, 4319),
(78, 660, 862),
(79, 2381, 1298),
(80, 4129, 4914),
(89, 928, 1900),
(90, 2210, 859),
(91, 1709, 2395),
(92, 4467, 3201),
(93, 3193, 1303),
(94, 2323, 2352),
(95, 818, 598),
(96, 2506, 2599);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_bed`
--

CREATE TABLE `nurse_bed` (
  `b_id` int(4) NOT NULL,
  `n_id` int(4) NOT NULL,
  `shift` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(5) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_gender` varchar(10) NOT NULL,
  `p_dob` date NOT NULL,
  `p_address` varchar(100) NOT NULL,
  `p_phone` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_name`, `p_gender`, `p_dob`, `p_address`, `p_phone`) VALUES
(1, 'Mary Galloway', 'Male', '2003-09-23', 'P.O. Box 109, 3993 Aliquet. St.', 9823141938),
(2, 'Rebekah Alston', 'Male', '2007-09-21', 'P.O. Box 408, 1139 Tortor. St.', 9882879810),
(3, 'Griffin Holland', 'Male', '1958-11-06', '352 Ipsum Road', 9836893844),
(4, 'Hu Collier', 'Male', '1988-07-13', '5740 Nascetur Rd.', 9865563446),
(5, 'Bruce Riley', 'Female', '2003-10-22', 'P.O. Box 239, 777 Tortor. Road', 9822292502),
(6, 'Keelie Hines', 'Female', '1983-10-30', '744-2641 Magna. St.', 9818853765),
(7, 'Gil Neal', 'Female', '1966-10-30', 'Ap #786-4762 Amet, St.', 9810860588),
(8, 'Francesca Nieves', 'Female', '1958-06-04', '144-9444 Montes, Rd.', 9863062462),
(9, 'Ramona Anthony', 'Male', '1968-06-29', '589-2827 A, Road', 9843590694),
(10, 'Geoffrey Cardenas', 'Male', '2009-01-21', 'Ap #738-3463 Lorem St.', 9808520000),
(11, 'Isaiah Perkins', 'Male', '1980-10-09', '464-4352 Mi Road', 9802567863),
(12, 'Keefe Monroe', 'Male', '1968-02-29', '1059 Suspendisse Avenue', 9886083558),
(13, 'Amaya Diaz', 'Female', '1991-11-05', '9829 Nonummy St.', 9841408619),
(14, 'Chastity Hickman', 'Female', '1961-02-18', 'Ap #251-8956 Rutrum Av.', 9829542408),
(15, 'Dacey Wilkins', 'Female', '1988-12-12', 'P.O. Box 639, 2554 Neque. Street', 9811938144),
(16, 'Judah Travis', 'Female', '2001-11-19', 'Ap #271-3308 Sapien Road', 9832064616),
(17, 'Gloria Houston', 'Male', '1971-12-01', 'Ap #618-9946 Vestibulum St.', 9827013181),
(18, 'Christian Jacobs', 'Male', '1962-09-04', '872-4761 Donec St.', 9867102300),
(19, 'Camden Rosario', 'Male', '1971-03-04', '6202 Egestas. Rd.', 9802036393),
(20, 'Dana Newman', 'Male', '1962-03-02', '912-7666 Sit Avenue', 9822223024),
(21, 'Matthew Howell', 'Female', '1985-03-16', '8591 Tellus Av.', 9804551331),
(22, 'Austin Howe', 'Female', '1961-05-15', 'Ap #916-2247 Taciti St.', 9889688793),
(23, 'Sonya Doyle', 'Female', '2006-08-27', '3965 Fermentum Road', 9871779164),
(24, 'Acton Mccall', 'Female', '1976-12-10', '7079 Ullamcorper. Street', 9844727132),
(25, 'Indigo Wilcox', 'Male', '1993-12-31', '680-3039 Neque Street', 9808473381),
(26, 'Carl Alvarado', 'Male', '1980-02-04', '5805 Risus Rd.', 9833092725),
(27, 'Nelle Jackson', 'Male', '1962-05-19', '250-3387 Morbi St.', 9887730509),
(28, 'Iona Watson', 'Male', '1985-06-11', '143-2747 Tellus Av.', 9863119646),
(29, 'Melanie Adams', 'Female', '1983-09-04', 'Ap #741-7323 Cursus Rd.', 9803363603),
(30, 'Colorado Maddox', 'Female', '1977-05-17', '291-3735 Consequat, Road', 9868301974),
(31, 'Matthew Foreman', 'Female', '1964-03-02', 'Ap #616-7542 Mauris Rd.', 9808632993),
(32, 'Clementine Buck', 'Female', '2008-04-13', 'Ap #345-6224 Vivamus Road', 9851730228),
(33, 'Cameron Reilly', 'Male', '1959-08-29', 'Ap #451-1037 Molestie St.', 9821462513),
(34, 'Graham Trujillo', 'Male', '2010-03-05', '258-8071 Parturient Avenue', 9850481921),
(35, 'Orlando Holden', 'Male', '1967-09-25', '5955 Adipiscing Rd.', 9815732544),
(36, 'Wing Delgado', 'Male', '1985-10-19', 'P.O. Box 554, 3131 Non, St.', 9831010166),
(37, 'Brooke Brewer', 'Female', '1995-02-09', 'Ap #323-4150 Elit, Ave', 9801109648),
(38, 'Jada Patel', 'Female', '1958-12-25', '7339 Mollis Avenue', 9864390301),
(39, 'Victoria Burris', 'Female', '1983-02-21', '550-5843 Fermentum St.', 9883860393),
(40, 'Heidi Burch', 'Female', '1982-01-09', 'P.O. Box 379, 3512 Ut, Ave', 9806980393),
(41, 'MacKenzie Nguyen', 'Male', '1991-11-14', 'P.O. Box 732, 9055 Placerat St.', 9819106474),
(42, 'Tiger Stanton', 'Male', '1995-05-07', 'Ap #704-6383 Et, Av.', 9859261830),
(43, 'Claire Norris', 'Male', '2003-06-05', '5590 Sit Rd.', 9800862716),
(44, 'Sydnee Moody', 'Male', '1984-03-24', '434-9059 At Rd.', 9842864951),
(45, 'Nero Bullock', 'Female', '2002-10-26', '400-6207 Cursus. Street', 9845047564),
(46, 'Michael Gay', 'Female', '1959-05-17', 'Ap #864-6055 In Ave', 9888641605),
(47, 'James Barnes', 'Female', '1998-02-07', '157-6745 Dolor Av.', 9869238359),
(48, 'Belle Brennan', 'Female', '1971-05-19', 'P.O. Box 216, 2746 Enim. Road', 9863415910),
(49, 'Salvador Ayala', 'Male', '1973-02-24', 'P.O. Box 947, 5672 Dis Road', 9885165360),
(50, 'Inez Jackson', 'Male', '1968-10-22', 'Ap #113-7556 Vel Avenue', 9855469430),
(51, 'Chloe Morgan', 'Male', '1963-07-25', 'P.O. Box 276, 4797 Sit Avenue', 9826562587),
(52, 'Roth Robles', 'Male', '1993-02-05', '459-6925 Augue St.', 9872607491),
(53, 'Murphy Perry', 'Female', '2006-07-30', '253-2743 Libero Ave', 9804583595),
(54, 'Kevin Fulton', 'Female', '1959-09-12', '818-7943 Nullam Rd.', 9818941828),
(55, 'Colby Fitzpatrick', 'Female', '1956-11-07', '676 Blandit. St.', 9809777261),
(56, 'Nina Crawford', 'Female', '1984-09-02', 'Ap #507-9226 Ligula. Avenue', 9815688535),
(57, 'Hadley Forbes', 'Male', '1975-04-02', '743-4220 Consectetuer Ave', 9819715390),
(58, 'Jarrod Garrett', 'Male', '1973-12-05', '8173 Sit Avenue', 9834018081),
(59, 'Brian Obrien', 'Male', '2001-07-26', 'Ap #126-2886 Sed St.', 9880170616),
(60, 'Caleb Ortega', 'Male', '1983-12-20', 'Ap #264-6067 Elit Rd.', 9873786056),
(61, 'Elvis Hays', 'Female', '1961-02-01', 'Ap #891-7820 Mauris. St.', 9889442548),
(62, 'Wang Livingston', 'Female', '1975-04-19', '532-3593 Lacus St.', 9821531188),
(63, 'Jamal Whitney', 'Female', '1979-10-17', 'Ap #117-853 Tempor Rd.', 9817147523),
(64, 'Uma Hawkins', 'Female', '1974-09-29', '547-2371 Lorem Street', 9891544215),
(65, 'Basia Goodman', 'Male', '2001-06-22', '8702 In Road', 9823039616),
(66, 'Avye Kinney', 'Male', '1995-03-24', '900 Dictum Street', 9817184515),
(67, 'Rose Spencer', 'Male', '1971-01-13', 'Ap #648-2749 Tincidunt. Road', 9817881168),
(68, 'Kathleen Delaney', 'Male', '1999-05-06', 'Ap #924-5609 Nec, St.', 9872127662),
(69, 'Belle Chan', 'Female', '1967-06-04', '1620 Sed St.', 9825371966),
(70, 'Tana Mejia', 'Female', '1983-03-08', 'P.O. Box 188, 6448 Laoreet, St.', 9843058853),
(71, 'Omar Carlson', 'Female', '1966-08-20', '2215 Ut Avenue', 9817283096),
(72, 'Helen Bates', 'Female', '1985-12-03', 'P.O. Box 808, 627 Ac, St.', 9828468584),
(73, 'Stephanie Holland', 'Male', '1964-01-28', 'P.O. Box 589, 8970 At, Street', 9887776964),
(74, 'Lenore Nielsen', 'Male', '1996-01-22', 'P.O. Box 350, 8695 Suspendisse Avenue', 9839756113),
(75, 'Hilel Wolf', 'Male', '1990-06-13', '199-9518 Lorem Rd.', 9828915063),
(76, 'Cora Watkins', 'Male', '2010-12-05', '2765 Ante St.', 9822865159),
(77, 'Kenyon Garza', 'Female', '1986-10-12', 'Ap #764-9630 Tristique Av.', 9824584438),
(78, 'Len Raymond', 'Female', '1992-09-11', 'P.O. Box 415, 3179 Consectetuer Avenue', 9819188625),
(79, 'Mark Tyler', 'Female', '1995-12-20', '236-1813 Scelerisque St.', 9866965770),
(80, 'Flynn Horn', 'Female', '1989-11-27', '292-2683 Eu Ave', 9813319157),
(81, 'Cade Fulton', 'Male', '2003-12-26', 'P.O. Box 538, 4428 Dolor. Ave', 9863304739),
(82, 'Jena Leach', 'Male', '1977-04-05', '474-6711 Commodo St.', 9890495221),
(83, 'Thor Hess', 'Male', '2007-12-07', '5135 Vitae Avenue', 9883940181),
(84, 'Orlando Juarez', 'Male', '1955-04-11', 'P.O. Box 293, 4307 Turpis Avenue', 9894342140),
(85, 'Tobias Jennings', 'Female', '2009-06-08', 'Ap #268-8068 Sem, Street', 9885757963),
(86, 'Brandon Farmer', 'Female', '1963-09-25', '124-7299 Ut St.', 9888630862),
(87, 'Kristen Parks', 'Female', '1995-01-06', 'Ap #494-3784 Donec Street', 9820508749),
(88, 'Vance Arnold', 'Female', '1969-04-19', '880-7629 Dis Road', 9805057056),
(89, 'Aurora Townsend', 'Male', '1955-04-01', 'Ap #479-4648 Non, Av.', 9827593636),
(90, 'Hillary Diaz', 'Male', '1984-07-07', 'Ap #557-2147 Odio St.', 9831235476),
(91, 'Ina Trujillo', 'Male', '1998-11-04', 'P.O. Box 514, 6085 Parturient St.', 9886651536),
(92, 'Alea Armstrong', 'Male', '1978-09-18', 'P.O. Box 879, 6497 Nunc St.', 9882260317),
(93, 'Idola Oliver', 'Female', '1963-11-12', 'P.O. Box 923, 2250 Phasellus Street', 9841839152),
(94, 'Cole Melendez', 'Female', '1993-03-05', '8149 Dolor St.', 9843060021),
(95, 'Rose Russell', 'Female', '1986-09-03', '776-4639 Egestas. St.', 9829253009),
(96, 'Guy Vargas', 'Female', '2004-10-21', '473-574 Facilisis Ave', 9832243313),
(97, 'Erin Munoz', 'Male', '1975-09-20', '3359 Amet Avenue', 9897492544),
(98, 'Stuart Combs', 'Male', '1969-12-03', '7713 Adipiscing Av.', 9896627640),
(99, 'Dale Velazquez', 'Male', '2006-05-10', '331-4664 Sem Rd.', 9866445921),
(100, 'Sacha Gallagher', 'Male', '1991-02-05', 'P.O. Box 687, 6871 Enim. Av.', 9812783106),
(101, 'Julian Raymond', 'Male', '1987-03-22', '779-6064 Donec Road', 9854412625),
(102, 'Chelsea Mcdonald', 'Male', '1967-09-12', 'P.O. Box 750, 3582 Cursus. Street', 9891229391),
(103, 'Daryl Norman', 'Male', '1963-12-22', 'Ap #964-8027 Mauris Rd.', 9825551256),
(104, 'Evangeline Bowman', 'Male', '1980-10-25', '4879 Dapibus Rd.', 9809289520),
(105, 'Melyssa Rocha', 'Female', '1965-06-20', 'Ap #314-6288 Eget, Avenue', 9820278403),
(106, 'Jael Lynn', 'Female', '2003-04-24', '484-8539 Commodo Road', 9872064326),
(107, 'Mason Brennan', 'Female', '1964-11-22', '535-9767 Pede St.', 9861173726),
(108, 'Scott Higgins', 'Female', '2006-11-03', 'P.O. Box 453, 4771 Nullam Rd.', 9891125635),
(109, 'Darryl Leonard', 'Male', '1977-08-21', 'Ap #826-7515 Ut St.', 9826633559),
(110, 'Michael Harrison', 'Male', '2001-11-07', '9733 Et Ave', 9880446901),
(111, 'Oprah Young', 'Male', '1965-03-17', '895-6202 Odio. Ave', 9816538218),
(112, 'Ashton Roman', 'Male', '1993-09-09', '434 Arcu. Rd.', 9882621192),
(113, 'Lacota Benjamin', 'Female', '1969-07-07', '3911 Vitae Rd.', 9868044879),
(114, 'Paul Barnett', 'Female', '1989-01-29', 'Ap #765-3687 Et Av.', 9878402478),
(115, 'Sigourney Wall', 'Female', '1992-03-17', '5942 A, Rd.', 9886351490),
(116, 'Kirk Byers', 'Female', '1996-04-25', 'Ap #505-5879 Ipsum. St.', 9842227207),
(117, 'Rebecca Santiago', 'Male', '1973-01-06', '2151 Urna, Av.', 9819102883),
(118, 'Inga Greer', 'Male', '2005-04-27', '9598 Quisque Rd.', 9881545887),
(119, 'Bo Buchanan', 'Male', '1996-10-26', '796-7831 Ullamcorper. Rd.', 9847778201),
(120, 'Constance Clarke', 'Male', '1995-10-25', '4621 Metus. Road', 9873091848),
(121, 'Ira Copeland', 'Female', '1954-03-30', '346-9350 Elit. Rd.', 9809622059),
(122, 'Rigel Martin', 'Female', '2008-04-18', '9345 Gravida Rd.', 9829753341),
(123, 'Renee Rodgers', 'Female', '1955-10-29', 'P.O. Box 979, 9359 Vestibulum Avenue', 9895600281),
(124, 'Nevada Lawrence', 'Female', '1966-10-10', 'P.O. Box 732, 8593 Fusce Street', 9878314082),
(125, 'Roth Lowery', 'Male', '1982-05-05', 'P.O. Box 920, 9903 Vehicula. Av.', 9866364819),
(126, 'Alice Alston', 'Male', '1968-12-15', 'Ap #746-4602 Erat Street', 9852623933),
(127, 'Maisie Holcomb', 'Male', '1985-05-04', 'Ap #987-8050 Ipsum Street', 9834471174),
(128, 'Mark Webster', 'Male', '1982-05-10', 'P.O. Box 788, 7205 Nec Street', 9857341631),
(129, 'Aline Ramirez', 'Female', '1967-02-12', '524-3478 Et Avenue', 9891261765),
(130, 'Gisela Roy', 'Female', '1990-12-10', 'P.O. Box 412, 3103 At Road', 9844108847),
(131, 'Yuri Barlow', 'Female', '2000-04-13', 'Ap #149-7550 Morbi Av.', 9881895396),
(132, 'Cruz Mayo', 'Female', '1959-04-30', '354-1573 Ante. Ave', 9821392033),
(133, 'Alea Huber', 'Male', '1995-03-13', '2712 At, Ave', 9825650057),
(134, 'Beau Hudson', 'Male', '1974-12-02', '7243 Nec, Av.', 9888261547),
(135, 'Haley Mcclain', 'Male', '2006-03-20', '4089 Adipiscing Road', 9874697619),
(136, 'Cheyenne Church', 'Male', '1976-09-16', 'Ap #543-457 Fusce St.', 9839291920),
(137, 'Nigel Michael', 'Female', '1993-09-23', 'P.O. Box 267, 1340 Nec, St.', 9817506330),
(138, 'Yael Bullock', 'Female', '1993-04-16', 'P.O. Box 154, 7339 Bibendum Av.', 9877674418),
(139, 'Sigourney Avery', 'Female', '1978-01-12', 'Ap #248-4630 Sodales. Road', 9826110868),
(140, 'Macey Espinoza', 'Female', '1980-01-24', '875-9112 Neque. Road', 9839636177),
(141, 'Ignacia Hester', 'Male', '1989-06-13', 'P.O. Box 746, 7630 Semper Road', 9836253791),
(142, 'Maya Newman', 'Male', '1990-07-26', '8277 Ultricies Road', 9884760655),
(143, 'Claudia Franklin', 'Male', '1955-11-21', 'P.O. Box 876, 2551 Ornare Avenue', 9868619080),
(144, 'Hoyt Huff', 'Male', '1998-07-20', 'P.O. Box 795, 3161 Iaculis St.', 9800834897),
(145, 'Lester Nixon', 'Female', '2009-05-31', 'P.O. Box 224, 2551 Tristique Rd.', 9859585437),
(146, 'Madonna Oconnor', 'Female', '1989-02-17', '526-6750 Ut Avenue', 9830713786),
(147, 'Macaulay Rollins', 'Female', '1999-08-03', 'Ap #670-1059 Ut Avenue', 9866616186),
(148, 'Isabella Hays', 'Female', '2008-01-31', '5921 Egestas Rd.', 9825787124),
(149, 'Kennan Ingram', 'Male', '2005-01-25', '483-7148 Lacinia Rd.', 9845385898),
(150, 'Clarke Brewer', 'Male', '1979-05-29', '116-6448 Aliquam Avenue', 9833249419),
(151, 'Willa Rose', 'Male', '1972-07-21', '8693 Quisque Av.', 9881504367),
(152, 'Uma Kemp', 'Male', '1979-02-23', '457 Neque. Ave', 9832665286),
(153, 'Erin Faulkner', 'Female', '1969-02-09', 'Ap #738-9901 Blandit Ave', 9854820669),
(154, 'Dexter Vance', 'Female', '1981-02-15', '129-9435 Phasellus Street', 9876140304),
(155, 'Rebecca Gilmore', 'Female', '1997-06-24', '6291 Ipsum St.', 9854566671),
(156, 'Callum Evans', 'Female', '1974-04-11', '234 Consequat Rd.', 9881960811),
(157, 'Aaron Slater', 'Male', '1966-11-26', 'P.O. Box 183, 2049 Lorem, Avenue', 9883254796),
(158, 'Quemby Irwin', 'Male', '1999-05-18', '468-1346 Lobortis Rd.', 9869095282),
(159, 'Eric Ward', 'Male', '1963-08-27', '392-3515 Lobortis Rd.', 9844375047),
(160, 'Bell Orr', 'Male', '1977-01-10', '169-1636 Commodo Ave', 9851462013),
(161, 'Drake Mcclain', 'Female', '2005-11-05', 'Ap #568-8712 Donec St.', 9834458800),
(162, 'Maggy Hickman', 'Female', '1962-07-10', 'Ap #691-9226 Proin Road', 9864429116),
(163, 'Tanner Goodman', 'Female', '1998-08-11', 'Ap #196-3058 Mauris St.', 9813978628),
(164, 'Gil Church', 'Female', '1954-10-27', 'Ap #331-699 Morbi Av.', 9889545039),
(165, 'Hedy Calderon', 'Male', '1965-06-06', '300-5630 Auctor Av.', 9860974720),
(166, 'Zeph White', 'Male', '1959-07-18', '621-7977 Nibh. Ave', 9810056724),
(167, 'Kasper Clements', 'Male', '1966-07-31', '1393 Nec Ave', 9898753262),
(168, 'Hashim Ortiz', 'Male', '1967-01-16', '854-1066 Lorem Avenue', 9850443573),
(169, 'Kelly Good', 'Female', '1970-06-13', 'Ap #647-7851 Tellus. Avenue', 9810511414),
(170, 'Preston Gross', 'Female', '2009-10-31', 'Ap #956-5240 At, Rd.', 9891480686),
(171, 'Mary Wright', 'Female', '1999-02-25', 'P.O. Box 154, 454 Vitae, Road', 9862478015),
(172, 'Deacon Christian', 'Female', '2010-12-12', '477-7676 Sit Avenue', 9828083707),
(173, 'Alika Michael', 'Male', '1983-10-13', '7097 Donec Road', 9819636159),
(174, 'Levi Farmer', 'Male', '1998-08-02', '294-1308 Pede. St.', 9854444111),
(175, 'Keely Bowen', 'Male', '1972-04-14', 'Ap #472-7800 Faucibus Street', 9801204475),
(176, 'Brody Cardenas', 'Male', '1958-11-01', '1667 Est St.', 9870284118),
(177, 'Shannon Stafford', 'Female', '2005-02-19', 'P.O. Box 346, 277 Montes, St.', 9840130501),
(178, 'Jasper Perry', 'Female', '1981-12-21', '454-3859 Elementum Rd.', 9887658610),
(179, 'Hiram Cline', 'Female', '1995-06-09', '960-3721 Vestibulum Rd.', 9827214712),
(180, 'Ima Morton', 'Female', '1957-01-28', 'P.O. Box 816, 9790 Est, St.', 9834010696),
(181, 'Stella Mcdaniel', 'Male', '1984-09-26', 'Ap #279-2791 Sed Ave', 9840895941),
(182, 'Winifred Dale', 'Male', '2004-07-21', 'P.O. Box 294, 2195 Inceptos Ave', 9877295478),
(183, 'Nola Davis', 'Male', '2010-04-10', '6971 Fames Avenue', 9839185451),
(184, 'Piper Ruiz', 'Male', '1960-01-30', 'Ap #995-1165 Dolor. Rd.', 9845955874),
(185, 'Delilah King', 'Female', '1995-10-23', '555-7779 Egestas, Rd.', 9865599068),
(186, 'Berk Marsh', 'Female', '2005-08-02', 'Ap #754-151 Dignissim. Av.', 9898000372),
(187, 'Sage Talley', 'Female', '2004-06-23', 'P.O. Box 131, 781 Dapibus Road', 9875953664),
(188, 'Nevada Strickland', 'Female', '1996-12-18', '9270 Tristique St.', 9874081472),
(189, 'Sybill Franks', 'Male', '1981-04-25', 'Ap #518-6977 Semper St.', 9856216680),
(190, 'Ulysses Beach', 'Male', '1989-03-30', 'P.O. Box 620, 9127 Bibendum. Rd.', 9866600856),
(191, 'Micah Holcomb', 'Male', '2009-08-19', 'P.O. Box 873, 648 Diam Ave', 9850357641),
(192, 'Reese Moran', 'Male', '1969-12-26', '3299 Cursus St.', 9818590974),
(193, 'Forrest Dejesus', 'Female', '1987-08-24', '8403 Facilisis, Ave', 9869398190),
(194, 'Angelica Carlson', 'Female', '1996-05-06', '5176 Lorem, Ave', 9897081436),
(195, 'Reece Rodriguez', 'Female', '1982-04-25', '1617 Lectus Rd.', 9801749754),
(196, 'Carlos Hopkins', 'Female', '1971-11-22', 'P.O. Box 555, 2269 Amet, Ave', 9850541004),
(197, 'Sybil Walker', 'Male', '1977-03-01', 'P.O. Box 523, 3238 Auctor Av.', 9854030952),
(198, 'Zena Nolan', 'Male', '1983-02-05', 'P.O. Box 899, 8527 Luctus Avenue', 9869107647),
(199, 'Kenyon Watkins', 'Male', '1970-01-03', '775-684 Sed Ave', 9898243929),
(200, 'Jeremy Dotson', 'Male', '1964-10-03', '102-8305 Magna, Av.', 9846836423),
(201, 'Lila Foster', 'Male', '1995-05-02', '9483 Id Ave', 9868500340),
(202, 'Katell Wilcox', 'Male', '1973-07-14', '6717 Natoque Rd.', 9843663466),
(203, 'Melyssa Vega', 'Male', '1978-02-25', 'Ap #803-8182 Bibendum St.', 9834873778),
(204, 'Dylan Atkins', 'Male', '1993-09-29', 'P.O. Box 548, 6651 Porttitor Ave', 9852684934),
(205, 'Aaron Higgins', 'Female', '2000-10-31', '4876 Tristique Street', 9828606937),
(206, 'Tamara Romero', 'Female', '2007-05-19', 'P.O. Box 661, 2675 Nec, St.', 9835842314),
(207, 'Yvonne Ryan', 'Female', '2000-06-09', '630-1348 Penatibus Street', 9874910771),
(208, 'Melissa Holder', 'Female', '1992-09-21', '3400 Cras Road', 9814365359),
(209, 'Levi Cohen', 'Male', '1984-10-27', '5104 Luctus St.', 9856240135),
(210, 'Kylan Mcmillan', 'Male', '1969-02-13', 'Ap #639-4727 Ut Rd.', 9827347182),
(211, 'Branden Salinas', 'Male', '2003-12-12', '313-1633 Quisque Rd.', 9840453357),
(212, 'Sylvia Bright', 'Male', '2009-10-07', '2910 Odio Av.', 9853262105),
(213, 'Katell Serrano', 'Female', '1998-12-04', '363 At, St.', 9843304724),
(214, 'Ruth Harvey', 'Female', '1964-09-05', '779 Risus. Avenue', 9802694814),
(215, 'Haley Bishop', 'Female', '1969-03-13', 'P.O. Box 348, 5086 Aptent Rd.', 9814005136),
(216, 'Pearl Richardson', 'Female', '1998-09-16', '282-238 Egestas. Rd.', 9874977643),
(217, 'Barry David', 'Male', '2002-03-11', '5409 Enim. Ave', 9895249221),
(218, 'Kareem Park', 'Male', '1964-03-27', 'P.O. Box 787, 1190 Velit Rd.', 9850443110),
(219, 'Ciara Cleveland', 'Male', '1995-11-25', 'P.O. Box 199, 8478 Laoreet Avenue', 9830449001),
(220, 'Jolene Terrell', 'Male', '1992-01-02', 'P.O. Box 277, 1376 Felis Ave', 9808655729),
(221, 'Velma Cote', 'Female', '2002-05-31', '1240 Eu, Rd.', 9889292461),
(222, 'Declan Mayo', 'Female', '1994-01-05', '174 Non Street', 9898901351),
(223, 'Hayden Cooper', 'Female', '1993-08-19', 'P.O. Box 838, 1509 Nulla Avenue', 9894683245),
(224, 'Donna Rivers', 'Female', '1980-08-12', 'P.O. Box 533, 4914 Aliquam Avenue', 9859751774),
(225, 'Inga Fowler', 'Male', '2008-12-12', 'P.O. Box 881, 9482 Tortor. Street', 9809706010),
(226, 'Willa Ramirez', 'Male', '1974-05-25', 'P.O. Box 650, 5731 A Avenue', 9851946934),
(227, 'Armando Ayala', 'Male', '1976-01-10', '4451 Aliquam St.', 9809230488),
(228, 'Zenaida Browning', 'Male', '2010-03-03', '414-6326 Tincidunt, Av.', 9843250747),
(229, 'Yuli Lancaster', 'Female', '2001-10-07', 'Ap #485-5926 Fusce Rd.', 9895152917),
(230, 'Cole Franklin', 'Female', '1979-09-14', 'P.O. Box 906, 5968 Metus. Av.', 9808841039),
(231, 'Diana Beck', 'Female', '1967-12-21', 'Ap #893-2670 Scelerisque Street', 9816169628),
(232, 'Hayes Lowery', 'Female', '2010-07-22', '3419 Consectetuer Road', 9892886651),
(233, 'Audra Logan', 'Male', '1971-04-25', 'Ap #242-7104 Et Rd.', 9898951651),
(234, 'Indigo Whitney', 'Male', '1988-01-05', '612-2482 A Avenue', 9808710284),
(235, 'Virginia Cameron', 'Male', '2002-09-09', '5100 Praesent Rd.', 9818005739),
(236, 'Kamal Ruiz', 'Male', '1981-10-21', '670-5438 Odio. St.', 9897360788),
(237, 'Erica Holland', 'Female', '1963-10-20', '458-8701 Natoque Av.', 9841035765),
(238, 'Austin Douglas', 'Female', '1996-08-28', 'P.O. Box 878, 363 Malesuada St.', 9826496364),
(239, 'Reagan Macias', 'Female', '2007-07-10', 'Ap #500-246 Commodo Ave', 9849090461),
(240, 'Inga Rollins', 'Female', '1991-08-14', 'P.O. Box 670, 5762 Sit Ave', 9818459147),
(241, 'Megan Ward', 'Male', '2007-03-12', 'Ap #495-118 Sapien, Av.', 9850099620),
(242, 'Asher Stephenson', 'Male', '1973-07-16', 'Ap #172-1256 Sed Road', 9848551080),
(243, 'David Wolfe', 'Male', '1982-05-22', 'Ap #332-1780 Sociis Av.', 9823338648),
(244, 'Constance Dotson', 'Male', '1990-02-05', '6797 Feugiat St.', 9803305355),
(245, 'Sebastian Giles', 'Female', '1959-10-08', 'Ap #951-1258 Nam Av.', 9804455780),
(246, 'Galena Mcintyre', 'Female', '1962-11-12', 'Ap #432-6610 Quam. Rd.', 9874866819),
(247, 'Isaac Velazquez', 'Female', '1960-07-03', 'P.O. Box 363, 1404 Sed Road', 9819443508),
(248, 'Xander Fisher', 'Female', '1963-07-26', 'Ap #448-2608 Libero Road', 9888272814),
(249, 'Anjolie Marsh', 'Male', '1992-01-12', 'P.O. Box 612, 2711 Porttitor Avenue', 9831207464),
(250, 'Inez Stevenson', 'Male', '1987-03-10', '895-4825 Interdum Rd.', 9846312975),
(251, 'Maxine White', 'Male', '1977-12-26', '168-783 Laoreet, Av.', 9865414392),
(252, 'Cassidy Davis', 'Male', '1963-11-15', 'P.O. Box 625, 1992 Lectus. Street', 9853304456),
(253, 'Abbot Willis', 'Female', '1995-11-29', 'Ap #333-6123 Fusce Rd.', 9882393209),
(254, 'Teegan Burt', 'Female', '1972-06-11', 'P.O. Box 702, 3530 Vulputate Road', 9850331476),
(255, 'Orson Flynn', 'Female', '1969-11-03', 'Ap #117-3752 Ultrices. Avenue', 9851251386),
(256, 'Noelle Gibson', 'Female', '1955-10-09', 'P.O. Box 275, 8570 Nam Rd.', 9807033032),
(257, 'Michael Ramos', 'Male', '1984-09-28', 'Ap #104-9423 Ac St.', 9850015444),
(258, 'Rose Schroeder', 'Male', '2009-04-15', '9000 Nisl. Av.', 9812219301),
(259, 'Dora Anderson', 'Male', '1997-08-27', '8907 Consequat Rd.', 9815074390),
(260, 'Amanda Simpson', 'Male', '2004-05-20', 'P.O. Box 444, 8088 Montes, St.', 9825452949),
(261, 'Azalia Miles', 'Female', '1974-05-07', 'Ap #624-9626 Vestibulum, St.', 9826948403),
(262, 'Hakeem Mejia', 'Female', '2002-03-10', 'P.O. Box 789, 6701 Cras St.', 9832205526),
(263, 'Hiram Crosby', 'Female', '2007-04-24', 'Ap #836-5566 Quisque Av.', 9817716931),
(264, 'Breanna Bolton', 'Female', '2001-05-21', '8142 Et Ave', 9854179634),
(265, 'Chandler Sutton', 'Male', '1996-01-18', 'Ap #431-2823 Et Avenue', 9813595014),
(266, 'Kenyon Morton', 'Male', '2001-01-01', 'Ap #617-3246 Fringilla Av.', 9869033295),
(267, 'Ryan Cantrell', 'Male', '1967-06-07', 'Ap #592-624 Vitae, Rd.', 9800844319),
(268, 'Regina Kennedy', 'Male', '1969-03-03', '8325 Egestas Avenue', 9801899891),
(269, 'Kylee Vega', 'Female', '1987-10-24', 'P.O. Box 557, 3665 Aliquam Street', 9864130931),
(270, 'Hyatt George', 'Female', '1981-10-16', 'P.O. Box 252, 7017 Adipiscing Street', 9850475733),
(271, 'Arthur Farrell', 'Female', '1990-08-25', 'Ap #853-6443 Curabitur Av.', 9822524767),
(272, 'Colton Garcia', 'Female', '1999-06-28', 'P.O. Box 919, 707 Ligula Street', 9891060962),
(273, 'Jonah Horn', 'Male', '1991-03-31', 'Ap #589-9047 Sem Rd.', 9853248770),
(274, 'Brent Key', 'Male', '1981-08-06', '401-2603 Ultrices. Av.', 9878394102),
(275, 'Beck Burks', 'Male', '1985-03-13', '621-8063 Pede Rd.', 9801481175),
(276, 'Ulric Conway', 'Male', '1961-04-23', 'Ap #793-1168 Sed Ave', 9855816872),
(277, 'Mara Wong', 'Female', '1956-12-29', 'Ap #145-4415 Egestas St.', 9871933059),
(278, 'Teegan Valenzuela', 'Female', '2008-02-21', '7106 Sit St.', 9869459721),
(279, 'Hayley Wilkinson', 'Female', '2005-07-21', '681-6632 Erat Street', 9817289826),
(280, 'Rahim Donaldson', 'Female', '1983-02-18', 'P.O. Box 552, 1214 Torquent Av.', 9857714409),
(281, 'Thomas Stevenson', 'Male', '1986-08-28', 'Ap #992-9321 Velit. Rd.', 9802260207),
(282, 'Linus Wooten', 'Male', '1987-07-10', '3970 In Street', 9831141175),
(283, 'Lois Duncan', 'Male', '2005-09-01', '919-6105 Egestas. Avenue', 9883253704),
(284, 'Karly Johns', 'Male', '1965-07-01', 'Ap #791-4989 Feugiat. St.', 9885390344),
(285, 'Ronan Hendricks', 'Female', '1969-09-05', 'Ap #213-6995 Sed Ave', 9838298589),
(286, 'Macaulay Velazquez', 'Female', '1995-07-06', '3301 Nulla. Av.', 9821406925),
(287, 'Shaine Garrison', 'Female', '2000-05-10', 'P.O. Box 670, 1164 At Avenue', 9845635688),
(288, 'Phelan Dillard', 'Female', '2010-07-05', 'P.O. Box 976, 2980 Mus. Ave', 9847260832),
(289, 'Dahlia Quinn', 'Male', '2010-11-20', '264-5861 Vel, Rd.', 9861845039),
(290, 'Armand Vang', 'Male', '1966-02-08', 'Ap #533-7329 Vivamus Road', 9823377902),
(291, 'Hiram Fischer', 'Male', '1954-02-09', '102 Non Rd.', 9882244675),
(292, 'Kuame Davenport', 'Male', '1967-04-07', 'P.O. Box 672, 6303 A, Avenue', 9851820900),
(293, 'Hope Talley', 'Female', '1973-10-02', 'P.O. Box 316, 436 Eget Rd.', 9849360024),
(294, 'Hamilton Lott', 'Female', '1965-10-19', '568-3228 Fringilla Rd.', 9827102932),
(295, 'Suki Sanchez', 'Female', '1965-06-12', '966-6225 Arcu Road', 9833783543),
(296, 'Kessie Goodwin', 'Female', '1971-06-08', '630-3730 Nulla Street', 9865947736),
(297, 'Aretha Hebert', 'Male', '1968-02-05', 'P.O. Box 564, 365 Augue St.', 9855061769),
(298, 'Marvin Clemons', 'Male', '1965-06-23', '341-5521 Vitae, Av.', 9813429811),
(299, 'Orlando Patrick', 'Male', '1990-03-09', '6497 Lorem Av.', 9896394249),
(300, 'Inga Hahn', 'Male', '1972-08-01', 'P.O. Box 100, 4706 Lorem St.', 9831398882),
(301, 'Mikayla Cooper', 'Male', '1967-04-16', 'P.O. Box 879, 8388 Mauris St.', 9842412847),
(302, 'Orson Taylor', 'Male', '1989-06-04', '772-7933 Nam Road', 9848817379),
(303, 'Kenyon Fuentes', 'Male', '1981-11-16', '1527 Phasellus Rd.', 9845939016),
(304, 'Alika Brock', 'Male', '1981-02-12', '952-306 Vel, Rd.', 9809712306),
(305, 'Sylvester Little', 'Female', '1989-12-17', '410-2197 Tincidunt. Road', 9834441477),
(306, 'Sierra Bradshaw', 'Female', '1956-03-21', 'P.O. Box 115, 692 Et Ave', 9866212039),
(307, 'Blaine Burton', 'Female', '1989-10-27', 'Ap #419-8728 In Road', 9866224745),
(308, 'Xyla Hull', 'Female', '1998-12-10', '6237 Enim, Ave', 9882983473),
(309, 'Nash Hatfield', 'Male', '2009-04-12', 'Ap #363-7198 Imperdiet Ave', 9807795522),
(310, 'Dakota Crawford', 'Male', '1994-04-26', '811-537 Non Rd.', 9869814541),
(311, 'Yen Ellison', 'Male', '1990-10-16', '953 Mauris Road', 9843106641),
(312, 'Ivan Maldonado', 'Male', '1957-08-07', '217-5418 Est. Rd.', 9869266262),
(313, 'Lyle Massey', 'Female', '1970-02-27', 'Ap #706-956 Egestas St.', 9828549241),
(314, 'Marcia Rogers', 'Female', '1988-03-12', '7797 Primis Avenue', 9819564792),
(315, 'Skyler Tucker', 'Female', '1964-04-16', '9801 Congue Rd.', 9813517540),
(316, 'Vernon Rivas', 'Female', '1975-04-17', '542-5395 Ligula. Avenue', 9824445934),
(317, 'Amela Hoover', 'Male', '1968-11-27', 'P.O. Box 585, 3997 Tellus Street', 9801217749),
(318, 'Sade Witt', 'Male', '1988-11-19', '3436 Cras Rd.', 9846254690),
(319, 'Cara Bowers', 'Male', '1988-06-11', 'P.O. Box 909, 9087 Proin St.', 9828303404),
(320, 'Rebekah Wilson', 'Male', '2010-12-03', 'Ap #659-5677 Mauris Avenue', 9804498104),
(321, 'Peter Ballard', 'Female', '1974-05-13', 'P.O. Box 508, 4758 Dui. Avenue', 9863170345),
(322, 'Reed Baird', 'Female', '1966-11-25', 'P.O. Box 309, 2057 Nascetur Ave', 9828884298),
(323, 'Armando Moss', 'Female', '1979-03-08', '670-6378 Nascetur Av.', 9839914764),
(324, 'Yolanda Stark', 'Female', '1957-07-09', '550-6888 Sodales. Rd.', 9883600937),
(325, 'Stone Velazquez', 'Male', '1979-08-03', '7571 Ullamcorper Rd.', 9844474656),
(326, 'Farrah Stone', 'Male', '1979-06-22', '489-1089 Torquent Ave', 9892421086),
(327, 'Evan Garrett', 'Male', '1992-11-05', 'P.O. Box 578, 9650 Integer Street', 9870627334),
(328, 'Nichole Finch', 'Male', '1977-10-16', 'Ap #569-8862 Vestibulum. Street', 9832354768),
(329, 'Marvin Hanson', 'Female', '2005-06-14', '387-5450 Interdum. Rd.', 9858791898),
(330, 'Molly Blackburn', 'Female', '2008-06-07', '3971 Amet Rd.', 9861734264),
(331, 'Cameron Hester', 'Female', '1974-12-19', '676-1253 Nullam Rd.', 9879864993),
(332, 'Lael Sampson', 'Female', '1959-10-17', 'Ap #302-6797 Et, Rd.', 9818532238),
(333, 'Vivien Herman', 'Male', '1964-02-18', '701-3596 In Street', 9892627615),
(334, 'Shannon Woods', 'Male', '1971-12-03', '141-5756 Vitae, Av.', 9879491105),
(335, 'Ray Watson', 'Male', '1965-01-16', 'P.O. Box 832, 4378 Non Av.', 9841731029),
(336, 'Amir Fernandez', 'Male', '1991-07-14', 'P.O. Box 571, 7048 Quisque St.', 9882297282),
(337, 'David Cotton', 'Female', '1990-04-24', 'Ap #720-2326 Montes, Av.', 9809865038),
(338, 'Owen Cox', 'Female', '1957-03-11', '9192 Nascetur Rd.', 9818940258),
(339, 'Tatyana Estes', 'Female', '1983-05-03', 'Ap #772-6769 Porta Road', 9881348274),
(340, 'Price Long', 'Female', '2008-03-04', '356-8495 Eros St.', 9898986179),
(341, 'Mara Prince', 'Male', '1976-05-16', 'Ap #572-2761 Penatibus Av.', 9891592909),
(342, 'Stewart Baker', 'Male', '1974-12-01', '212-2995 At Street', 9876643617),
(343, 'Macaulay Nash', 'Male', '1986-02-12', 'P.O. Box 962, 8114 Orci Ave', 9865037528),
(344, 'Hillary Lindsey', 'Male', '2007-03-29', 'P.O. Box 255, 2647 Ante Rd.', 9801854354),
(345, 'Acton Joyner', 'Female', '1997-05-19', 'P.O. Box 880, 520 Nisi Street', 9822518535),
(346, 'Myra Allen', 'Female', '1999-05-08', '3152 Mollis Rd.', 9863022199),
(347, 'Thane Francis', 'Female', '1983-05-13', 'P.O. Box 186, 4986 Rhoncus. Av.', 9881580182),
(348, 'Norman Briggs', 'Female', '1970-07-16', '306-724 Congue Road', 9875113519),
(349, 'Calista Rogers', 'Male', '1994-01-20', 'Ap #582-6039 Magnis St.', 9807810108),
(350, 'Joshua Oneil', 'Male', '1954-09-08', '5329 Non Avenue', 9880210629),
(351, 'Blair Bond', 'Male', '2007-11-12', '716-865 Arcu Rd.', 9845044862),
(352, 'Vera Callahan', 'Male', '1993-02-20', 'P.O. Box 388, 1466 Molestie Street', 9873034092),
(353, 'Travis Townsend', 'Female', '1964-06-21', '8084 Orci Street', 9846487235),
(354, 'Delilah England', 'Female', '1970-07-13', 'Ap #201-3347 Magna Avenue', 9891577685),
(355, 'Mannix Casey', 'Female', '1989-12-21', '4771 Arcu Street', 9813246671),
(356, 'Aiko Velasquez', 'Female', '1958-11-27', 'P.O. Box 779, 6227 Ante Rd.', 9807270396),
(357, 'Uriel Camacho', 'Male', '1999-12-12', '734-130 Aenean Ave', 9874567171),
(358, 'Candice Terrell', 'Male', '1985-12-15', '340-7983 Ipsum. St.', 9839783450),
(359, 'Roanna Rhodes', 'Male', '1983-02-13', 'P.O. Box 797, 7334 Egestas Ave', 9891267189),
(360, 'Len Osborn', 'Male', '1988-03-23', '830-4304 Integer Av.', 9803969182),
(361, 'Petra Britt', 'Female', '1981-06-19', 'Ap #626-9494 Mauris Road', 9856989270),
(362, 'Gary Rodriquez', 'Female', '2002-12-08', 'Ap #525-5885 Erat Rd.', 9872677022),
(363, 'Rinah Lloyd', 'Female', '1980-09-04', '692-6751 Quam Rd.', 9828425853),
(364, 'Grady Padilla', 'Female', '1962-09-12', '786-533 Lorem Rd.', 9848767173),
(365, 'Roth Hall', 'Male', '2011-06-20', '788-9298 Massa. Road', 9820498879),
(366, 'Bo Carey', 'Male', '1960-07-31', '9962 In Road', 9870725428),
(367, 'Nora Garner', 'Male', '1989-11-24', 'Ap #992-3528 Enim. Av.', 9803079579),
(368, 'Ivor Pollard', 'Male', '1957-03-25', 'Ap #539-1317 Ligula. St.', 9809304015),
(369, 'Dean Todd', 'Female', '1971-07-30', 'P.O. Box 814, 8994 Ipsum Street', 9820139904),
(370, 'Jaden Dudley', 'Female', '2001-11-01', '9759 Ipsum Av.', 9888767372),
(371, 'Carter Curtis', 'Female', '1982-04-17', 'Ap #647-7431 Interdum Av.', 9832359853),
(372, 'Chava Newton', 'Female', '2002-08-10', '762 A St.', 9853978988),
(373, 'Troy Rich', 'Male', '1978-03-01', 'P.O. Box 400, 9836 Consectetuer St.', 9822196248),
(374, 'Joseph Pierce', 'Male', '1990-07-08', 'Ap #683-7519 Pellentesque Street', 9847566253),
(375, 'Mara Wilkinson', 'Male', '1992-07-21', '640-3057 Massa. St.', 9891094688),
(376, 'Kelsey Case', 'Male', '1984-01-29', 'Ap #358-3938 Accumsan Avenue', 9895149382),
(377, 'Uriah Gillespie', 'Female', '1958-12-03', 'Ap #869-4202 Dictum Road', 9896386254),
(378, 'Ferris Rowland', 'Female', '1996-12-29', '6003 Arcu Rd.', 9807555435),
(379, 'Keane Delgado', 'Female', '1959-08-10', '7591 Felis. Rd.', 9813446400),
(380, 'Malachi Fletcher', 'Female', '1989-03-13', '9402 Dictum Ave', 9839726952),
(381, 'Dante Head', 'Male', '1983-06-20', '397 Sem Rd.', 9878767674),
(382, 'Brendan Todd', 'Male', '1979-07-26', 'Ap #154-547 A Rd.', 9878517254),
(383, 'Mallory Hogan', 'Male', '1998-09-02', '951-1279 Libero Street', 9880112671),
(384, 'Lisandra Sanchez', 'Male', '1960-07-17', '7091 Lacus Street', 9879402624),
(385, 'Michelle Sanchez', 'Female', '1975-12-20', 'P.O. Box 205, 4801 Fringilla Street', 9805746784),
(386, 'Tad Poole', 'Female', '1989-01-29', 'P.O. Box 744, 3965 Turpis. Ave', 9858092933),
(387, 'Dieter Greer', 'Female', '1971-07-24', 'Ap #709-4821 Nulla. Ave', 9837070151),
(388, 'Stuart Good', 'Female', '1984-02-25', '973-7011 Feugiat Road', 9808685981),
(389, 'Odysseus Stafford', 'Male', '1991-10-09', 'Ap #264-7752 Vel, St.', 9815804082),
(390, 'Clio Greer', 'Male', '1967-12-21', 'P.O. Box 300, 5824 Nibh. Av.', 9806857018),
(391, 'Carissa Callahan', 'Male', '1978-02-11', '400-1940 Sed St.', 9857754010),
(392, 'Amir Mason', 'Male', '1960-10-19', '3962 At St.', 9892370604),
(393, 'Clark Tran', 'Female', '1978-07-05', 'P.O. Box 494, 752 At Rd.', 9825714888),
(394, 'Phillip Mayer', 'Female', '2002-10-01', 'Ap #313-5499 Duis Rd.', 9837343394),
(395, 'Odette Mcdaniel', 'Female', '1969-09-10', '406-2051 Adipiscing Road', 9873462485),
(396, 'Kirsten Gilbert', 'Female', '1971-12-16', '7078 Fringilla Rd.', 9841421552),
(397, 'Hedy Leach', 'Male', '1995-08-03', '224-8362 Urna Ave', 9885549802),
(398, 'Nero Vega', 'Male', '2004-07-14', 'P.O. Box 605, 9020 Magna. St.', 9836618921),
(399, 'Yoshio Sims', 'Male', '1991-12-14', '7312 Auctor, Rd.', 9856472564),
(400, 'Katell Mcfarland', 'Male', '1996-12-19', '244 Suspendisse Road', 9809515031);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `s_id` int(4) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `s_gender` varchar(10) NOT NULL,
  `s_dob` date NOT NULL,
  `s_addr` varchar(100) NOT NULL,
  `s_phone` bigint(15) DEFAULT NULL,
  `s_sal` int(5) NOT NULL,
  `s_type` varchar(15) NOT NULL,
  `shift` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`s_id`, `s_name`, `s_gender`, `s_dob`, `s_addr`, `s_phone`, `s_sal`, `s_type`, `shift`) VALUES
(1, 'Salvador Padilla', 'Female', '1967-09-15', '546-5151 Semper Rd.', 9888705960, 19500, 'Nurse', 'Day'),
(2, 'Palmer Aguirre', 'Male', '1967-12-20', '9599 Quis Avenue', 9801534209, 19500, 'Nurse', 'Evening'),
(3, 'Colton Osborn', 'Male', '1974-06-11', 'Ap #205-5376 Nascetur Street', 9867432761, 19500, 'Nurse', 'Night'),
(4, 'Bo Britt', 'Male', '1983-06-05', '501-9908 Semper Street', 9820449725, 19500, 'Nurse', 'Day'),
(5, 'Timon Sandoval', 'Female', '1978-01-19', 'Ap #722-8547 Consectetuer St.', 9865741331, 19500, 'Nurse', 'Evening'),
(6, 'Mia Pickett', 'Female', '1972-11-09', 'Ap #764-5332 Sed Rd.', 9846445357, 19000, 'Nurse', 'Night'),
(7, 'Neil Lott', 'Female', '1981-01-22', '4079 Morbi St.', 9828509853, 19000, 'Nurse', 'Day'),
(8, 'Ulla Rutledge', 'Female', '1982-10-18', 'Ap #219-1206 Auctor Av.', 9828663344, 19000, 'Nurse', 'Evening'),
(9, 'Ruby Schneider', 'Male', '1992-02-02', 'P.O. Box 207, 5359 Suspendisse St.', 9802807767, 19000, 'Nurse', 'Night'),
(10, 'Margaret Hebert', 'Male', '1974-03-04', '1955 Quam St.', 9888009810, 19000, 'Nurse', 'Day'),
(11, 'Quynn Mathis', 'Female', '1991-01-28', 'P.O. Box 568, 9171 Dictum Street', 9803658997, 18500, 'Nurse', 'Evening'),
(12, 'Chelsea Macdonald', 'Female', '1996-08-20', 'Ap #844-6280 Lectus St.', 9864969172, 18500, 'Nurse', 'Night'),
(13, 'Barbara Bernard', 'Male', '1992-05-24', 'P.O. Box 916, 2745 Tempus St.', 9834024872, 18500, 'Nurse', 'Day'),
(14, 'Erich Parks', 'Male', '1994-08-13', 'P.O. Box 761, 5462 Lobortis. Rd.', 9852599580, 18500, 'Nurse', 'Evening'),
(15, 'Kermit Mcknight', 'Male', '1978-01-13', '738-4043 Metus Ave', 9852062045, 18500, 'Nurse', 'Night'),
(16, 'Colt Stafford', 'Female', '1984-10-19', 'Ap #811-1936 Commodo Av.', 9849512279, 18000, 'Nurse', 'Day'),
(17, 'Matthew Buck', 'Female', '1996-07-21', '346-4680 Curae; Avenue', 9836939865, 18000, 'Nurse', 'Evening'),
(18, 'Orli Jefferson', 'Female', '1988-09-11', 'Ap #633-835 Quis Rd.', 9868624907, 18000, 'Nurse', 'Night'),
(19, 'Gannon Witt', 'Male', '1977-04-30', 'Ap #643-3811 Sit Av.', 9809100009, 18000, 'Nurse', 'Day'),
(20, 'Geoffrey Lawrence', 'Female', '1984-04-03', '495-1573 Ultrices. Ave', 9810421613, 18000, 'Nurse', 'Evening'),
(21, 'Rachel Vazquez', 'Male', '1971-06-11', 'Ap #649-3673 Aenean Avenue', 9882782775, 17500, 'Nurse', 'Night'),
(22, 'Porter Sosa', 'Male', '1980-11-15', '220-3316 Pede Ave', 9828373336, 17500, 'Nurse', 'Day'),
(23, 'Zeus Huff', 'Male', '1977-06-07', '1798 Ligula St.', 9836146474, 17500, 'Nurse', 'Evening'),
(24, 'William Carlson', 'Male', '1969-07-29', 'P.O. Box 594, 7183 Ut Street', 9845965291, 17500, 'Nurse', 'Night'),
(25, 'Austin Bailey', 'Female', '1977-05-13', 'Ap #754-2265 Ac, Rd.', 9850898612, 17500, 'Nurse', 'Day'),
(26, 'Mercedes Gillespie', 'Female', '1981-04-08', 'Ap #131-9974 Condimentum Rd.', 9828637221, 17000, 'Nurse', 'Evening'),
(27, 'Nasim Gamble', 'Male', '1982-01-01', 'P.O. Box 957, 1172 Dui. Avenue', 9805134868, 17000, 'Nurse', 'Night'),
(28, 'Risa Hart', 'Male', '1996-01-10', '266-8852 Sed Street', 9815695893, 17000, 'Nurse', 'Day'),
(29, 'Selma Hall', 'Female', '1973-11-13', '751-2960 Libero. Rd.', 9871861551, 17000, 'Nurse', 'Evening'),
(30, 'Gage Dillon', 'Male', '1979-07-11', '576-7935 Iaculis St.', 9894588022, 17000, 'Nurse', 'Night'),
(31, 'Joelle Mcintosh', 'Female', '1969-03-19', 'P.O. Box 691, 3006 Fusce Rd.', 9883026394, 16500, 'Nurse', 'Day'),
(32, 'Cairo Villarreal', 'Male', '1989-09-08', '7046 Id, St.', 9853193258, 16500, 'Nurse', 'Evening'),
(33, 'Sandra Mcconnell', 'Female', '1969-07-06', '8399 Odio. Avenue', 9890860626, 16500, 'Nurse', 'Night'),
(34, 'Chelsea Terry', 'Male', '1982-04-04', 'Ap #274-4618 Dui Road', 9816192427, 16500, 'Nurse', 'Day'),
(35, 'Marvin Duke', 'Female', '1994-10-26', '5668 Dui. Street', 9818284478, 16500, 'Nurse', 'Evening'),
(36, 'Alyssa Nieves', 'Male', '1981-11-28', 'Ap #138-8936 Magna Rd.', 9802162711, 16000, 'Nurse', 'Night'),
(37, 'Akeem Grant', 'Female', '1991-07-09', 'Ap #410-4536 Viverra. Av.', 9858551100, 16000, 'Nurse', 'Day'),
(38, 'Abigail Riley', 'Male', '1969-02-20', '415-309 Duis St.', 9841437152, 16000, 'Nurse', 'Evening'),
(39, 'Steel Bridges', 'Male', '1976-10-05', '966-3284 Eu Street', 9869631005, 16000, 'Nurse', 'Night'),
(40, 'Martina Spence', 'Male', '1971-03-31', '129 Duis Street', 9827850237, 16000, 'Nurse', 'Day'),
(41, 'Ariel Stafford', 'Female', '1989-11-14', 'Ap #354-7084 Fermentum Ave', 9891970591, 15500, 'Nurse', 'Evening'),
(42, 'Rama Blevins', 'Male', '1996-07-15', '169-1896 Nunc Street', 9814818378, 15500, 'Nurse', 'Night'),
(43, 'Astra Ewing', 'Female', '1980-09-15', '2284 Enim Rd.', 9885125059, 15500, 'Nurse', 'Day'),
(44, 'Brenna Schroeder', 'Male', '1983-12-12', 'Ap #837-3890 Turpis. Avenue', 9881803809, 15500, 'Nurse', 'Evening'),
(45, 'Odysseus Leon', 'Female', '1984-11-20', 'Ap #743-8607 Malesuada Road', 9843759659, 15500, 'Nurse', 'Night'),
(46, 'Jessamine Weber', 'Male', '1972-05-10', '7196 Interdum. St.', 9885091319, 15000, 'Nurse', 'Day'),
(47, 'Elvis Carlson', 'Female', '1976-11-12', '3298 Odio St.', 9811921929, 15000, 'Nurse', 'Evening'),
(48, 'Rebecca Nelson', 'Male', '1991-03-12', 'P.O. Box 661, 5567 Cum Avenue', 9808146790, 15000, 'Nurse', 'Night'),
(49, 'Christopher Bond', 'Female', '1988-07-08', '3625 Sed Rd.', 9871091542, 15000, 'Nurse', 'Day'),
(50, 'Delilah Melendez', 'Male', '1978-11-09', '4159 Urna, Avenue', 9826008742, 15000, 'Nurse', 'Evening'),
(51, 'Sara Rush', 'Female', '1983-03-29', '3928 Sed Av.', 9825220701, 14500, 'Nurse', 'Night'),
(52, 'Zia Moses', 'Male', '1994-06-23', '754-9296 Aliquam Rd.', 9875364886, 14500, 'Nurse', 'Day'),
(53, 'Elijah Fitzpatrick', 'Male', '1992-03-26', 'P.O. Box 657, 9919 Non Av.', 9876764878, 14500, 'Nurse', 'Evening'),
(54, 'Dennis Dickson', 'Female', '1991-04-13', 'P.O. Box 650, 5708 Vehicula Avenue', 9896772898, 14500, 'Nurse', 'Night'),
(55, 'Aurora Roberts', 'Male', '1989-04-07', '310-9957 Eros. Avenue', 9865460842, 14500, 'Nurse', 'Day'),
(56, 'Lester Simmons', 'Male', '1983-01-29', '4747 Molestie Street', 9841689601, 14000, 'Nurse', 'Evening'),
(57, 'Martena Santiago', 'Male', '1972-10-26', '1420 Rhoncus Street', 9891644633, 14000, 'Nurse', 'Night'),
(58, 'Alexandra Merrill', 'Female', '1982-03-03', 'Ap #211-6566 Lobortis Road', 9830443671, 14000, 'Nurse', 'Day'),
(59, 'Zia Harris', 'Male', '1987-07-15', 'P.O. Box 566, 2588 Sit Rd.', 9823470365, 14000, 'Nurse', 'Evening'),
(60, 'Zenaida Hernandez', 'Male', '1984-09-26', 'Ap #508-7371 Diam. Av.', 9820399277, 14000, 'Nurse', 'Night'),
(61, 'Leonard Palmer', 'Male', '1979-09-21', 'Ap #845-1843 Tortor Rd.', 9893937228, 13500, 'Ward Boy', 'Day'),
(62, 'Lynn Lyons', 'Male', '1973-07-10', '339-584 Vel, Av.', 9827874872, 13500, 'Ward Boy', 'Evening'),
(63, 'Chester Dillon', 'Female', '1978-01-25', '962-1760 Varius Road', 9873093517, 13500, 'Ward Boy', 'Night'),
(64, 'Melinda Tanner', 'Female', '1985-11-22', '5813 Molestie St.', 9806121072, 13500, 'Ward Boy', 'Day'),
(65, 'Martin Romero', 'Male', '1972-11-12', '8137 Diam Av.', 9837604696, 13500, 'Ward Boy', 'Evening'),
(66, 'Kaye Carson', 'Male', '1978-03-23', 'P.O. Box 426, 3408 Risus. Rd.', 9859427873, 13000, 'Ward Boy', 'Night'),
(67, 'Athena Armstrong', 'Male', '1978-09-29', '297-1780 Tincidunt Street', 9813810611, 13000, 'Ward Boy', 'Day'),
(68, 'Tashya Doyle', 'Male', '1979-07-23', '236-3076 Duis Avenue', 9888042759, 13000, 'Ward Boy', 'Evening'),
(69, 'September Peck', 'Male', '1981-09-24', 'P.O. Box 442, 2941 Nulla Rd.', 9868909628, 13000, 'Ward Boy', 'Night'),
(70, 'Hadassah Weaver', 'Male', '1988-09-28', 'P.O. Box 714, 895 Dui, Road', 9861921246, 13000, 'Ward Boy', 'Day'),
(71, 'Igor Henson', 'Male', '1985-03-28', 'P.O. Box 717, 3280 Aliquam Ave', 9876415733, 12500, 'Ward Boy', 'Evening'),
(72, 'Xenos Osborn', 'Male', '1985-07-01', '488-9474 Diam Av.', 9874876831, 12500, 'Ward Boy', 'Night'),
(73, 'Sylvester Kaufman', 'Male', '1993-06-02', 'P.O. Box 432, 5603 Mauris St.', 9884155541, 12500, 'Ward Boy', 'Day'),
(74, 'Amal Fitzpatrick', 'Male', '1977-07-11', '347-1999 Ac, Rd.', 9879665025, 12500, 'Ward Boy', 'Evening'),
(75, 'Caesar Glenn', 'Male', '1977-10-26', 'Ap #398-6531 Quam. Ave', 9819102876, 12500, 'Ward Boy', 'Night'),
(76, 'Ria Beard', 'Female', '1982-04-03', '949-9809 Augue St.', 9881376269, 12000, 'Ward Boy', 'Day'),
(77, 'Graiden Ware', 'Male', '1977-01-23', '159-661 Pede. Street', 9888383119, 12000, 'Ward Boy', 'Evening'),
(78, 'Keane Dominguez', 'Male', '1980-10-31', '291-3383 Lacus. St.', 9822944445, 12000, 'Ward Boy', 'Night'),
(79, 'Derek Nixon', 'Male', '1996-02-22', '341 Pellentesque Av.', 9813130135, 12000, 'Ward Boy', 'Day'),
(80, 'Elmo Jordan', 'Male', '1995-01-31', '243-4864 Ipsum Avenue', 9827928358, 12000, 'Ward Boy', 'Evening'),
(81, 'Elliott Salas', 'Male', '1984-11-26', '271 Facilisi. St.', 9845362341, 11500, 'Ward Boy', 'Night'),
(82, 'Mannix Benton', 'Female', '1976-09-12', 'P.O. Box 675, 7652 Vivamus St.', 9850671568, 11500, 'Ward Boy', 'Day'),
(83, 'Yael Ferguson', 'Female', '1977-08-24', '859-5550 Accumsan St.', 9837170077, 11500, 'Ward Boy', 'Evening'),
(84, 'Yetta Mckee', 'Male', '1984-02-22', 'Ap #393-6253 Consectetuer Rd.', 9852843949, 11500, 'Ward Boy', 'Night'),
(85, 'Keaton Mcclain', 'Female', '1979-07-27', '563-1870 Felis Rd.', 9873734390, 11500, 'Ward Boy', 'Day'),
(86, 'Dominic Brennan', 'Female', '1967-10-28', '2066 Non Street', 9854289280, 10500, 'Ward Boy', 'Evening'),
(87, 'Inez Ramsey', 'Male', '1971-07-31', 'Ap #572-2191 Id Ave', 9897704352, 10500, 'Ward Boy', 'Night'),
(88, 'Neil Gilmore', 'Male', '1986-04-20', '636-4200 Eleifend, Rd.', 9825589926, 10500, 'Ward Boy', 'Day'),
(89, 'Shaeleigh Erickson', 'Female', '1972-12-30', 'Ap #553-1676 Mollis. Ave', 9819043529, 10500, 'Ward Boy', 'Evening'),
(90, 'Donovan Mccarty', 'Female', '1976-05-02', '1386 Fusce Avenue', 9892851200, 10500, 'Ward Boy', 'Night'),
(91, 'Noelani Dillon', 'Male', '1996-05-03', '505-7512 Semper St.', 9880463166, 10000, 'Ward Boy', 'Day'),
(92, 'Leonard Acevedo', 'Female', '1994-02-21', 'Ap #174-2648 Laoreet St.', 9855817332, 10000, 'Ward Boy', 'Evening'),
(93, 'Maggie Rasmussen', 'Female', '1977-08-03', '5996 Congue Rd.', 9873919869, 10000, 'Ward Boy', 'Night'),
(94, 'Orson Norton', 'Male', '1994-02-26', '8030 Donec St.', 9873562135, 10000, 'Ward Boy', 'Day'),
(95, 'Amaya Jefferson', 'Male', '1981-01-04', '819-416 Bibendum. Rd.', 9832508690, 10000, 'Ward Boy', 'Evening'),
(96, 'Stone Wyatt', 'Male', '1982-04-01', 'Ap #309-6443 Mauris Rd.', 9849604598, 9500, 'Ward Boy', 'Night'),
(97, 'Aimee Gilbert', 'Male', '1983-07-05', '2814 Nulla Av.', 9884893972, 9500, 'Ward Boy', 'Day'),
(98, 'Rhea Kennedy', 'Female', '1971-07-04', '6909 A, Rd.', 9830668529, 9500, 'Ward Boy', 'Evening'),
(99, 'Chiquita Baldwin', 'Female', '1972-11-19', '1202 Eget Rd.', 9848142408, 9500, 'Ward Boy', 'Night'),
(100, 'August Foley', 'Female', '1988-09-24', '6097 Quis, Ave', 9898619827, 9500, 'Ward Boy', 'Day');

-- --------------------------------------------------------

--
-- Table structure for table `s_nurse`
--

CREATE TABLE `s_nurse` (
  `s_id` int(4) NOT NULL,
  `qual` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_nurse`
--

INSERT INTO `s_nurse` (`s_id`, `qual`) VALUES
(1, 'CNA'),
(2, 'CNA'),
(3, 'CNA'),
(4, 'CNA'),
(5, 'CNA'),
(6, 'CNA'),
(7, 'CNA'),
(8, 'CNA'),
(9, 'CNA'),
(10, 'CNA'),
(11, 'CNA'),
(12, 'CNA'),
(13, 'CNA'),
(14, 'CNA'),
(15, 'CNA'),
(16, 'LPN'),
(17, 'LPN'),
(18, 'LPN'),
(19, 'LPN'),
(20, 'LPN'),
(21, 'LPN'),
(22, 'LPN'),
(23, 'LPN'),
(24, 'LPN'),
(25, 'LPN'),
(26, 'LPN'),
(27, 'LPN'),
(28, 'LPN'),
(29, 'LPN'),
(30, 'LPN'),
(31, 'RN'),
(32, 'RN'),
(33, 'RN'),
(34, 'RN'),
(35, 'RN'),
(36, 'RN'),
(37, 'RN'),
(38, 'RN'),
(39, 'RN'),
(40, 'RN'),
(41, 'RN'),
(42, 'RN'),
(43, 'RN'),
(44, 'RN'),
(45, 'RN'),
(46, 'High School Diploma'),
(47, 'High School Diploma'),
(48, 'High School Diploma'),
(49, 'High School Diploma'),
(50, 'High School Diploma'),
(51, 'High School Diploma'),
(52, 'High School Diploma'),
(53, 'High School Diploma'),
(54, 'High School Diploma'),
(55, 'High School Diploma'),
(56, 'High School Diploma'),
(57, 'High School Diploma'),
(58, 'High School Diploma'),
(59, 'High School Diploma'),
(60, 'High School Diploma');

-- --------------------------------------------------------

--
-- Table structure for table `s_wardboy`
--

CREATE TABLE `s_wardboy` (
  `s_id` int(4) NOT NULL,
  `dept_id` int(3) NOT NULL,
  `duty` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_wardboy`
--

INSERT INTO `s_wardboy` (`s_id`, `dept_id`, `duty`) VALUES
(61, 1, 'Daily Living,Basic Masurement'),
(62, 2, 'Daily Living,Basic Masurement'),
(63, 3, 'Daily Living,Basic Masurement'),
(64, 4, 'Personal Hygiene'),
(65, 5, 'Personal Hygiene'),
(66, 6, 'Daily Living,Basic Masurement'),
(67, 7, 'Personal Hygiene'),
(68, 8, 'Daily Living,Basic Masurement'),
(69, 9, 'Daily Living,Basic Masurement'),
(70, 10, 'Personal Hygiene'),
(71, 11, 'Personal Hygiene'),
(72, 12, 'Daily Living,Basic Masurement'),
(73, 13, 'Personal Hygiene'),
(74, 14, 'Daily Living,Basic Masurement'),
(75, 15, 'Personal Hygiene'),
(76, 16, 'Daily Living,Basic Masurement'),
(77, 17, 'Daily Living,Basic Masurement'),
(78, 18, 'Daily Living,Basic Masurement'),
(79, 19, 'Personal Hygiene'),
(80, 20, 'Personal Hygiene'),
(81, 21, 'Personal Hygiene'),
(82, 22, 'Daily Living,Basic Masurement'),
(83, 23, 'Daily Living,Basic Masurement'),
(84, 24, 'Personal Hygiene'),
(85, 25, 'Daily Living,Basic Masurement'),
(86, 26, 'Personal Hygiene'),
(87, 27, 'Daily Living,Basic Masurement'),
(88, 28, 'Daily Living,Basic Masurement'),
(89, 29, 'Daily Living,Basic Masurement'),
(90, 1, 'Personal Hygiene'),
(91, 2, 'Personal Hygiene'),
(92, 3, 'Daily Living,Basic Masurement'),
(93, 4, 'Personal Hygiene'),
(94, 5, 'Daily Living,Basic Masurement'),
(95, 6, 'Daily Living,Basic Masurement'),
(96, 7, 'Personal Hygiene'),
(97, 8, 'Daily Living,Basic Masurement'),
(98, 9, 'Personal Hygiene'),
(99, 10, 'Personal Hygiene'),
(100, 11, 'Personal Hygiene');

-- --------------------------------------------------------

--
-- Table structure for table `t_admit`
--

CREATE TABLE `t_admit` (
  `a_id` int(10) NOT NULL,
  `p_id` int(5) NOT NULL,
  `d_id` int(4) NOT NULL,
  `b_id` int(4) DEFAULT NULL,
  `admit_date` date NOT NULL,
  `disc_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admit`
--

INSERT INTO `t_admit` (`a_id`, `p_id`, `d_id`, `b_id`, `admit_date`, `disc_date`) VALUES
(1, 284, 36, 212, '2017-07-22', '2017-08-03'),
(2, 43, 64, 16, '2018-01-11', '2018-02-07'),
(3, 285, 51, 243, '2017-08-20', '2017-10-11'),
(4, 143, 92, 127, '2017-04-14', '2017-11-15'),
(5, 318, 120, 194, '2017-05-04', '2017-05-28'),
(6, 244, 135, 47, '2017-08-25', '2017-10-05'),
(7, 13, 117, 125, '2017-02-19', NULL),
(8, 380, 118, 147, '2017-06-04', '2017-07-21'),
(9, 248, 95, 206, '2018-01-13', NULL),
(10, 293, 84, 224, '2017-09-01', '2017-09-05'),
(11, 389, 36, 68, '2017-10-03', '2017-10-20'),
(12, 370, 58, 169, '2017-02-22', '2017-05-22'),
(13, 203, 86, 195, '2017-08-04', '2017-08-06'),
(14, 238, 135, 175, '2017-04-02', '2017-06-10'),
(15, 372, 113, 81, '2017-03-30', '2017-04-10'),
(16, 152, 150, 164, '2017-11-10', '2017-12-01'),
(17, 3, 42, 63, '2017-11-12', '2017-11-15'),
(18, 353, 96, 149, '2017-02-17', '2017-06-11'),
(19, 362, 159, 170, '2017-07-08', '2017-07-21'),
(20, 128, 78, 139, '2018-01-31', '2018-02-05'),
(21, 87, 96, 161, '2017-11-12', '2017-11-14'),
(22, 22, 53, 208, '2017-11-27', '2017-12-02'),
(23, 178, 98, 170, '2017-02-20', '2017-06-26'),
(24, 372, 38, 72, '2017-06-06', '2017-06-16'),
(25, 149, 162, 169, '2017-07-11', '2017-08-14'),
(26, 177, 98, 100, '2017-12-15', '2017-12-30'),
(27, 132, 143, 236, '2017-11-25', '2017-11-27'),
(28, 81, 77, 249, '2017-05-27', '2017-06-10'),
(29, 206, 152, 46, '2017-07-14', '2018-01-03'),
(30, 194, 22, 226, '2017-10-01', '2017-10-20'),
(31, 348, 72, 162, '2017-10-20', '2017-10-28'),
(32, 171, 21, 11, '2017-12-18', '2017-12-25'),
(33, 170, 69, 154, '2017-06-06', '2017-06-26'),
(34, 33, 61, 240, '2017-02-27', '2017-05-03'),
(35, 95, 119, 138, '2017-11-05', '2017-11-07'),
(36, 232, 115, 12, '2017-08-17', '2018-01-04'),
(37, 381, 18, 255, '2017-11-12', '2017-11-24'),
(38, 300, 161, 148, '2017-08-13', '2017-08-24'),
(39, 49, 59, 214, '2017-06-04', '2017-08-28'),
(40, 367, 55, 254, '2017-06-21', '2017-09-11'),
(41, 360, 22, 124, '2017-05-06', '2017-09-20'),
(42, 57, 2, 193, '2017-12-13', '2017-12-26'),
(43, 334, 158, 77, '2017-05-10', '2017-12-04'),
(44, 34, 131, 52, '2017-06-08', '2017-11-29'),
(45, 150, 165, 24, '2017-10-27', '2017-11-03'),
(46, 279, 21, 157, '2017-12-29', '2018-01-08'),
(47, 273, 55, 109, '2017-04-05', '2018-01-05'),
(48, 210, 81, 184, '2017-10-26', '2017-10-29'),
(49, 203, 83, 249, '2017-04-29', '2017-05-26'),
(50, 349, 147, 81, '2017-05-13', '2017-09-19'),
(51, 42, 100, 3, '2017-10-08', '2018-10-28'),
(52, 67, 99, 1, '2018-01-19', '2018-01-27'),
(53, 225, 94, 76, '2017-10-31', '2017-11-08'),
(54, 255, 158, 176, '2018-01-06', '2018-01-30'),
(55, 354, 69, 227, '2017-10-08', '2017-10-09'),
(56, 192, 93, 19, '2017-04-04', '2017-04-24'),
(57, 191, 67, 121, '2017-12-02', '2017-12-22'),
(58, 238, 88, 71, '2017-09-24', '2017-09-28'),
(59, 203, 126, 209, '2018-01-03', NULL),
(60, 181, 97, 190, '2017-05-21', '2017-12-29'),
(61, 207, 54, 88, '2017-06-02', '2017-07-26'),
(62, 338, 58, 240, '2017-05-04', '2017-06-22'),
(63, 57, 70, 35, '2017-08-09', '2017-08-25'),
(64, 121, 125, 180, '2017-11-27', '2017-11-29'),
(65, 278, 95, 23, '2017-12-06', '2017-12-28'),
(66, 128, 90, 69, '2017-10-26', '2017-11-26'),
(67, 387, 28, 133, '2017-10-09', '2017-10-25'),
(68, 23, 87, 163, '2017-12-06', '2018-01-15'),
(69, 237, 34, 189, '2017-08-23', '2018-01-22'),
(70, 19, 12, 251, '2018-01-20', '2018-01-26'),
(71, 195, 13, 193, '2018-01-05', '2018-01-25'),
(72, 39, 78, 168, '2017-05-23', '2018-01-25'),
(73, 285, 120, 143, '2017-03-31', '2017-10-05'),
(74, 10, 1, 204, '2017-08-31', '2017-09-12'),
(75, 362, 89, 112, '2017-12-11', '2017-12-26'),
(76, 197, 14, 245, '2017-08-26', '2017-10-01'),
(77, 56, 135, 63, '2017-04-19', '2017-08-06'),
(78, 121, 164, 26, '2018-01-21', '2018-01-28'),
(79, 254, 140, 27, '2017-07-24', '2018-01-27'),
(80, 142, 119, 170, '2018-01-27', '2018-02-15'),
(81, 249, 144, 121, '2017-05-18', '2017-05-23'),
(82, 350, 65, 19, '2017-06-27', '2017-09-24'),
(83, 320, 145, 184, '2017-04-27', '2017-04-30'),
(84, 106, 23, 138, '2017-04-05', '2017-05-05'),
(85, 2, 77, 85, '2017-06-08', '2017-08-05'),
(86, 103, 91, 184, '2017-05-01', '2017-09-24'),
(87, 106, 95, 110, '2017-12-27', '2018-01-10'),
(88, 2, 100, 49, '2017-10-04', '2017-10-24'),
(89, 216, 44, 141, '2017-10-07', '2017-10-27'),
(90, 207, 145, 121, '2017-05-24', '2017-05-28'),
(91, 246, 80, 224, '2017-02-28', '2017-08-28'),
(92, 127, 8, 171, '2018-01-08', '2018-01-22'),
(93, 80, 132, 56, '2017-10-09', '2018-01-04'),
(94, 234, 75, 78, '2017-10-22', '2017-10-29'),
(95, 383, 90, 163, '2017-03-11', '2017-08-12'),
(96, 111, 74, 34, '2017-05-21', '2017-10-30'),
(97, 358, 136, 212, '2017-08-05', '2017-08-15'),
(98, 226, 78, 146, '2017-03-07', '2017-07-25'),
(99, 209, 8, 67, '2017-08-29', '2017-09-20'),
(100, 253, 91, 34, '2017-11-23', '2017-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `t_bill`
--

CREATE TABLE `t_bill` (
  `p_id` int(5) NOT NULL,
  `t_id` int(10) NOT NULL,
  `t_type` varchar(1) NOT NULL,
  `charge` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_bill`
--

INSERT INTO `t_bill` (`p_id`, `t_id`, `t_type`, `charge`, `status`) VALUES
(284, 1, 'A', 123500, 0),
(253, 1, 'C', 800, 0),
(2, 1, 'V', 1200, 0),
(43, 2, 'A', 238000, 0),
(13, 2, 'C', 1500, 0),
(2, 2, 'V', 1430, 0),
(285, 3, 'A', 265000, 0),
(194, 3, 'C', 800, 0),
(3, 3, 'V', 500, 0),
(143, 4, 'A', 2052000, 0),
(249, 4, 'C', 300, 0),
(10, 4, 'V', 800, 0),
(318, 5, 'A', 162500, 0),
(238, 5, 'C', 2080, 0),
(13, 5, 'V', 1200, 1),
(244, 6, 'A', 294000, 0),
(22, 6, 'C', 300, 0),
(19, 6, 'V', 510, 0),
(81, 7, 'C', 1250, 0),
(22, 7, 'V', 2900, 0),
(380, 8, 'A', 288000, 0),
(349, 8, 'C', 1200, 0),
(23, 8, 'V', 500, 0),
(19, 9, 'C', 8500, 0),
(33, 9, 'V', 3990, 0),
(293, 10, 'A', 42500, 0),
(19, 10, 'C', 8500, 0),
(34, 10, 'V', 3270, 0),
(389, 11, 'A', 126000, 0),
(33, 11, 'C', 5450, 0),
(39, 11, 'V', 700, 0),
(370, 12, 'A', 450000, 0),
(358, 12, 'C', 8000, 0),
(42, 12, 'V', 1430, 0),
(203, 13, 'A', 6000, 0),
(372, 13, 'C', 2000, 0),
(43, 13, 'V', 3270, 0),
(238, 14, 'A', 420000, 0),
(372, 14, 'C', 5450, 0),
(43, 14, 'V', 3270, 0),
(372, 15, 'A', 78000, 0),
(43, 15, 'C', 800, 0),
(49, 15, 'V', 1500, 0),
(152, 16, 'A', 66000, 0),
(150, 16, 'C', 1000, 0),
(56, 16, 'V', 7400, 0),
(3, 17, 'A', 8000, 0),
(143, 17, 'C', 1400, 0),
(57, 17, 'V', 400, 1),
(353, 18, 'A', 690000, 0),
(244, 18, 'C', 8000, 0),
(57, 18, 'V', 1000, 0),
(362, 19, 'A', 105000, 0),
(132, 19, 'C', 300, 0),
(67, 19, 'V', 3990, 1),
(128, 20, 'A', 30000, 0),
(381, 20, 'C', 1500, 0),
(80, 20, 'V', 3270, 1),
(87, 21, 'A', 15000, 0),
(103, 21, 'C', 800, 0),
(81, 21, 'V', 1200, 1),
(22, 22, 'A', 18000, 0),
(354, 22, 'C', 1000, 0),
(87, 22, 'V', 360, 0),
(178, 23, 'A', 952500, 0),
(387, 23, 'C', 5450, 0),
(95, 23, 'V', 1200, 0),
(372, 24, 'A', 22000, 0),
(237, 24, 'C', 8000, 0),
(103, 24, 'V', 3270, 0),
(149, 25, 'A', 175000, 0),
(80, 25, 'C', 5760, 0),
(106, 25, 'V', 1200, 1),
(177, 26, 'A', 152000, 0),
(246, 26, 'C', 1000, 0),
(106, 26, 'V', 800, 0),
(132, 27, 'A', 9000, 0),
(362, 27, 'C', 800, 0),
(111, 27, 'V', 1200, 0),
(81, 28, 'A', 45000, 0),
(362, 28, 'C', 2080, 0),
(121, 28, 'V', 1400, 1),
(206, 29, 'A', 1479000, 0),
(362, 29, 'C', 800, 0),
(121, 29, 'V', 2000, 1),
(194, 30, 'A', 100000, 0),
(10, 30, 'C', 1400, 0),
(127, 30, 'V', 360, 1),
(348, 31, 'A', 45000, 0),
(34, 31, 'C', 5760, 0),
(128, 31, 'V', 1430, 0),
(171, 32, 'A', 52000, 0),
(3, 32, 'C', 600, 0),
(128, 32, 'V', 700, 1),
(170, 33, 'A', 136500, 0),
(57, 33, 'C', 300, 0),
(132, 33, 'V', 2900, 1),
(33, 34, 'A', 396000, 0),
(232, 34, 'C', 1500, 0),
(142, 34, 'V', 1200, 1),
(95, 35, 'A', 19500, 0),
(279, 35, 'C', 1200, 0),
(143, 35, 'V', 1000, 1),
(232, 36, 'A', 1198500, 0),
(293, 36, 'C', 1500, 0),
(149, 36, 'V', 1400, 1),
(381, 37, 'A', 65000, 0),
(234, 37, 'C', 800, 0),
(150, 37, 'V', 800, 1),
(300, 38, 'A', 60000, 0),
(234, 38, 'C', 800, 0),
(152, 38, 'V', 3990, 1),
(49, 39, 'A', 645000, 0),
(225, 39, 'C', 5450, 0),
(170, 39, 'V', 800, 0),
(367, 40, 'A', 705500, 0),
(300, 40, 'C', 1500, 0),
(170, 40, 'V', 800, 0),
(360, 41, 'A', 828000, 0),
(121, 41, 'C', 2500, 0),
(171, 41, 'V', 800, 1),
(57, 42, 'A', 98000, 0),
(121, 42, 'C', 1500, 0),
(177, 42, 'V', 500, 1),
(334, 43, 'A', 836000, 0),
(370, 43, 'C', 1500, 0),
(178, 43, 'V', 500, 1),
(34, 44, 'A', 1137500, 0),
(106, 44, 'C', 1200, 0),
(181, 44, 'V', 700, 1),
(150, 45, 'A', 68000, 0),
(106, 45, 'C', 1400, 0),
(191, 45, 'V', 1200, 1),
(279, 46, 'A', 55000, 0),
(178, 46, 'C', 800, 0),
(194, 46, 'V', 700, 1),
(273, 47, 'A', 1380000, 0),
(273, 47, 'C', 1400, 0),
(195, 47, 'V', 1200, 0),
(210, 48, 'A', 24000, 0),
(350, 48, 'C', 800, 0),
(197, 48, 'V', 1200, 0),
(203, 49, 'A', 84000, 0),
(284, 49, 'C', 2080, 0),
(203, 49, 'V', 1000, 0),
(349, 50, 'A', 845000, 0),
(149, 50, 'C', 1500, 0),
(203, 50, 'V', 2000, 0),
(42, 51, 'A', 105000, 0),
(87, 51, 'C', 500, 0),
(203, 51, 'V', 6240, 0),
(67, 52, 'A', 85500, 0),
(210, 52, 'C', 330, 0),
(206, 52, 'V', 3990, 0),
(225, 53, 'A', 54000, 0),
(360, 53, 'C', 800, 0),
(207, 53, 'V', 3990, 0),
(255, 54, 'A', 50000, 0),
(380, 54, 'C', 1500, 0),
(207, 54, 'V', 800, 0),
(354, 55, 'A', 0, 0),
(383, 55, 'C', 2080, 0),
(209, 55, 'V', 360, 0),
(192, 56, 'A', 42000, 0),
(128, 56, 'C', 800, 0),
(210, 56, 'V', 330, 0),
(191, 57, 'A', 126000, 0),
(128, 57, 'C', 2080, 0),
(216, 57, 'V', 3990, 0),
(238, 58, 'A', 55000, 0),
(171, 58, 'C', 1200, 0),
(225, 58, 'V', 3990, 1),
(142, 59, 'C', 1500, 0),
(226, 59, 'V', 700, 0),
(181, 60, 'A', 1672500, 0),
(142, 60, 'C', 1500, 0),
(232, 60, 'V', 1000, 0),
(207, 61, 'A', 467500, 0),
(203, 61, 'C', 1400, 0),
(234, 61, 'V', 500, 0),
(338, 62, 'A', 300000, 0),
(203, 62, 'C', 1400, 0),
(237, 62, 'V', 7400, 1),
(57, 63, 'A', 34000, 0),
(203, 63, 'C', 2500, 0),
(238, 63, 'V', 7400, 0),
(121, 64, 'A', 6000, 0),
(191, 64, 'C', 2000, 0),
(238, 64, 'V', 1430, 1),
(278, 65, 'A', 195500, 0),
(56, 65, 'C', 8000, 0),
(244, 65, 'V', 7400, 1),
(128, 66, 'A', 272000, 0),
(367, 66, 'C', 1400, 0),
(246, 66, 'V', 800, 0),
(387, 67, 'A', 93500, 0),
(348, 67, 'C', 800, 0),
(248, 67, 'V', 800, 1),
(23, 68, 'A', 266500, 0),
(389, 68, 'C', 2080, 0),
(249, 68, 'V', 2900, 0),
(237, 69, 'A', 1683000, 0),
(111, 69, 'C', 1400, 0),
(253, 69, 'V', 3270, 1),
(19, 70, 'A', 49000, 0),
(255, 70, 'C', 2080, 0),
(254, 70, 'V', 1200, 0),
(195, 71, 'A', 147000, 0),
(338, 71, 'C', 1500, 0),
(255, 71, 'V', 1430, 0),
(39, 72, 'A', 744000, 0),
(216, 72, 'C', 5450, 0),
(273, 72, 'V', 800, 0),
(285, 73, 'A', 2079000, 0),
(170, 73, 'C', 1000, 0),
(278, 73, 'V', 800, 0),
(10, 74, 'A', 110500, 0),
(2, 74, 'C', 1250, 0),
(279, 74, 'V', 800, 0),
(362, 75, 'A', 88000, 0),
(2, 75, 'C', 2080, 0),
(284, 75, 'V', 1430, 0),
(197, 76, 'A', 351500, 0),
(195, 76, 'C', 1400, 0),
(285, 76, 'V', 1200, 1),
(56, 77, 'A', 220000, 0),
(285, 77, 'C', 330, 0),
(285, 77, 'V', 330, 0),
(121, 78, 'A', 32000, 0),
(285, 78, 'C', 1500, 0),
(293, 78, 'V', 1000, 0),
(254, 79, 'A', 376000, 0),
(95, 79, 'C', 1500, 0),
(300, 79, 'V', 1400, 0),
(142, 80, 'A', 150000, 0),
(67, 80, 'C', 5450, 0),
(318, 80, 'V', 1200, 0),
(249, 81, 'A', 36000, 0),
(318, 81, 'C', 1500, 0),
(320, 81, 'V', 800, 0),
(350, 82, 'A', 180000, 0),
(49, 82, 'C', 1400, 0),
(334, 82, 'V', 1430, 0),
(320, 83, 'A', 24000, 0),
(177, 83, 'C', 800, 0),
(338, 83, 'V', 1400, 1),
(106, 84, 'A', 201500, 0),
(334, 84, 'C', 2080, 0),
(348, 84, 'V', 700, 1),
(2, 85, 'A', 501500, 0),
(23, 85, 'C', 800, 0),
(349, 85, 'V', 800, 0),
(103, 86, 'A', 882000, 0),
(181, 86, 'C', 800, 0),
(350, 86, 'V', 500, 0),
(106, 87, 'A', 127500, 0),
(206, 87, 'C', 5450, 0),
(353, 87, 'V', 360, 0),
(2, 88, 'A', 231000, 0),
(152, 88, 'C', 5450, 0),
(354, 88, 'V', 800, 1),
(216, 89, 'A', 136500, 0),
(152, 89, 'C', 1400, 0),
(358, 89, 'V', 7400, 0),
(207, 90, 'A', 30000, 0),
(248, 90, 'C', 1400, 0),
(360, 90, 'V', 700, 1),
(246, 91, 'A', 1547000, 0),
(362, 91, 'V', 1430, 1),
(127, 92, 'A', 165000, 0),
(362, 92, 'V', 700, 1),
(80, 93, 'A', 748000, 0),
(367, 93, 'V', 800, 0),
(234, 94, 'A', 68000, 0),
(370, 94, 'V', 1400, 1),
(383, 95, 'A', 1007500, 0),
(372, 95, 'V', 1000, 1),
(111, 96, 'A', 1793000, 0),
(372, 96, 'V', 3990, 1),
(358, 97, 'A', 104500, 0),
(380, 97, 'V', 1200, 0),
(226, 98, 'A', 1339500, 0),
(380, 98, 'V', 1200, 0),
(209, 99, 'A', 253000, 0),
(381, 99, 'V', 1400, 0),
(253, 100, 'A', 143000, 0),
(383, 100, 'V', 1430, 0),
(387, 101, 'V', 3990, 1),
(389, 102, 'V', 1430, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_consult`
--

CREATE TABLE `t_consult` (
  `c_id` int(10) NOT NULL,
  `a_id` int(10) NOT NULL,
  `d_id` int(4) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `charge` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_consult`
--

INSERT INTO `t_consult` (`c_id`, `a_id`, `d_id`, `date`, `time`, `comment`, `charge`) VALUES
(1, 100, 65, '2017-11-25', '17:25:00', '', 800),
(2, 7, 118, '2017-02-24', '12:45:00', '', 1500),
(3, 30, 72, '2017-10-05', '13:25:00', '', 800),
(4, 81, 20, '2017-05-25', '07:15:00', '', 300),
(5, 58, 36, '2017-09-28', '16:25:00', '', 2080),
(6, 22, 20, '2017-12-02', '08:10:00', '', 300),
(7, 28, 106, '2017-05-30', '09:00:00', '', 1250),
(8, 50, 21, '2017-05-18', '07:55:00', '', 1200),
(9, 70, 24, '2018-01-25', '11:47:00', '', 8500),
(10, 70, 24, '2018-01-24', '06:00:00', '', 8500),
(11, 34, 38, '2017-03-10', '09:15:00', '', 5450),
(12, 97, 34, '2017-08-18', '15:00:00', '', 8000),
(13, 15, 67, '2017-04-20', '08:00:00', '', 2000),
(14, 24, 28, '2017-06-23', '08:00:00', '', 5450),
(15, 2, 65, '2018-01-25', '18:00:00', '', 800),
(16, 45, 19, '2017-10-31', '09:30:00', '', 1000),
(17, 4, 39, '2017-04-22', '09:25:00', '', 1400),
(18, 6, 133, '2017-08-31', '14:00:00', '', 8000),
(19, 27, 2, '2017-11-30', '08:30:00', '', 300),
(20, 37, 161, '2017-11-24', '08:45:00', '', 1500),
(21, 86, 65, '2017-05-14', '10:00:00', '', 800),
(22, 55, 68, '2017-10-19', '09:00:00', '', 1000),
(23, 67, 38, '2017-10-27', '09:15:00', '', 5450),
(24, 69, 135, '2017-08-30', '08:10:00', '', 8000),
(25, 93, 131, '2017-10-20', '08:45:00', '', 5760),
(26, 91, 19, '2017-03-03', '09:00:00', '', 1000),
(27, 75, 78, '2017-12-22', '10:20:00', '', 800),
(28, 19, 157, '2017-07-28', '09:00:00', '', 2080),
(29, 75, 178, '2017-12-14', '08:50:00', '', 800),
(30, 74, 27, '2017-09-14', '06:50:00', '', 1400),
(31, 44, 130, '2017-06-23', '23:00:00', '', 5760),
(32, 17, 33, '2017-11-23', '02:45:00', '', 600),
(33, 42, 20, '2017-12-23', '06:45:00', '', 300),
(34, 36, 114, '2017-08-27', '07:55:00', '', 1500),
(35, 46, 16, '2018-01-14', '11:15:00', '', 1200),
(36, 10, 113, '2017-09-15', '15:10:00', '', 1500),
(37, 94, 102, '2017-10-26', '12:00:00', '', 800),
(38, 94, 104, '2017-10-27', '16:45:00', '', 800),
(39, 53, 85, '2017-11-17', '12:00:00', '', 5450),
(40, 38, 162, '2017-08-19', '07:45:00', '', 1500),
(41, 64, 128, '2017-11-30', '09:45:00', '', 2500),
(42, 78, 162, '2018-01-23', '16:00:00', '', 1500),
(43, 12, 161, '2017-02-28', '15:00:00', '', 1500),
(44, 84, 32, '2017-04-25', '08:50:00', '', 1200),
(45, 87, 1, '2017-12-31', '09:10:00', '', 1400),
(46, 23, 3, '2017-02-25', '09:30:00', '', 800),
(47, 47, 60, '2017-04-15', '10:55:00', '', 1400),
(48, 82, 87, '2017-06-29', '11:05:00', '', 800),
(49, 1, 45, '2017-07-26', '18:00:00', '', 2080),
(50, 25, 163, '2017-07-12', '15:00:00', '', 1500),
(51, 21, 96, '2017-11-15', '08:45:00', '', 500),
(52, 48, 51, '2017-10-30', '12:30:00', '', 330),
(53, 41, 72, '2017-05-10', '15:05:00', '', 800),
(54, 8, 119, '2018-01-10', '17:20:00', '', 1500),
(55, 95, 88, '2017-03-13', '20:00:00', '', 2080),
(56, 20, 97, '2018-02-05', '15:25:00', '', 800),
(57, 66, 100, '2017-10-29', '18:00:00', '', 2080),
(58, 32, 146, '2017-12-21', '14:55:00', '', 1200),
(59, 80, 117, '2018-01-29', '20:00:00', '', 1500),
(60, 80, 117, '2018-01-29', '20:00:00', '', 1500),
(61, 49, 173, '2017-05-05', '11:00:00', '', 1400),
(62, 49, 173, '2017-05-05', '11:00:00', '', 1400),
(63, 59, 127, '2018-01-14', '11:30:00', '', 2500),
(64, 57, 40, '2017-12-07', '17:00:00', '', 2000),
(65, 77, 134, '2017-04-25', '10:15:00', '', 8000),
(66, 40, 60, '2017-06-25', '18:00:00', '', 1400),
(67, 31, 22, '2017-10-25', '09:45:00', '', 800),
(68, 11, 45, '2017-10-05', '17:00:00', '', 2080),
(69, 96, 35, '2017-05-25', '12:00:00', '', 1400),
(70, 54, 159, '2018-01-16', '08:30:00', '', 2080),
(71, 62, 161, '2017-05-14', '08:45:00', '', 1500),
(72, 89, 38, '2017-10-12', '11:30:00', '', 5450),
(73, 33, 68, '2017-06-12', '09:15:00', '', 1000),
(74, 85, 106, '2017-06-12', '10:45:00', '', 1250),
(75, 88, 90, '2017-10-07', '09:10:00', '', 2080),
(76, 71, 35, '2018-01-07', '15:00:00', '', 1400),
(77, 3, 81, '2017-08-25', '12:00:00', '', 330),
(78, 73, 117, '2017-04-02', '16:00:00', '', 1500),
(79, 35, 120, '2017-11-08', '15:00:00', '', 1500),
(80, 52, 94, '2018-01-22', '15:30:00', '', 5450),
(81, 5, 118, '2017-05-06', '20:00:00', '', 1500),
(82, 39, 176, '2017-06-06', '18:00:00', '', 1400),
(83, 26, 3, '2017-12-18', '15:00:00', '', 800),
(84, 43, 160, '2017-05-15', '12:00:00', '', 2080),
(85, 68, 111, '2017-12-12', '10:10:00', '', 800),
(86, 60, 78, '2017-05-24', '17:00:00', '', 800),
(87, 29, 151, '2017-07-20', '07:00:00', '', 5450),
(88, 16, 149, '2017-11-15', '18:00:00', '', 5450),
(89, 16, 13, '2017-11-18', '17:00:00', '', 1400),
(90, 9, 1, '2018-01-19', '08:00:00', '', 1400);

-- --------------------------------------------------------

--
-- Table structure for table `t_visit`
--

CREATE TABLE `t_visit` (
  `v_id` int(10) NOT NULL,
  `p_id` int(5) NOT NULL,
  `d_id` int(4) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `charge` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_visit`
--

INSERT INTO `t_visit` (`v_id`, `p_id`, `d_id`, `date`, `time`, `comment`, `charge`) VALUES
(1, 2, 77, '2017-06-08', '10:00:00', '', 1200),
(2, 2, 100, '2017-10-01', '10:30:00', '', 1430),
(3, 3, 42, '2017-11-06', '08:30:00', '', 500),
(4, 10, 1, '2017-08-31', '11:10:00', '', 800),
(5, 13, 117, '2017-02-10', '00:00:00', '', 1200),
(6, 19, 12, '2018-01-19', '12:00:00', '', 510),
(7, 22, 53, '2017-11-27', '08:45:00', '', 2900),
(8, 23, 87, '2017-12-06', '11:05:00', '', 500),
(9, 33, 61, '2017-02-25', '08:55:00', '', 3990),
(10, 34, 131, '2017-06-07', '09:25:00', '', 3270),
(11, 39, 78, '2017-05-23', '09:10:00', '', 700),
(12, 42, 100, '2017-10-08', '09:55:00', '', 1430),
(13, 43, 64, '2018-01-11', '09:16:00', '', 3270),
(14, 49, 59, '0017-02-03', '16:00:00', '', 1500),
(15, 56, 135, '2017-04-14', '18:00:00', '', 7400),
(16, 57, 2, '2017-12-03', '19:25:00', '', 400),
(17, 57, 70, '2017-08-09', '10:00:00', '', 1000),
(18, 67, 99, '2018-01-09', '18:45:00', '', 3990),
(19, 80, 132, '2017-09-30', '18:00:00', '', 3270),
(20, 81, 77, '2017-05-07', '09:50:00', '', 1200),
(21, 87, 96, '2017-11-12', '10:00:00', '', 360),
(22, 95, 119, '2017-11-03', '10:45:00', '', 1200),
(23, 103, 91, '2017-05-01', '19:00:00', '', 3270),
(24, 106, 23, '2017-04-01', '09:18:00', '', 1200),
(26, 106, 95, '2017-12-27', '09:58:00', '', 800),
(27, 111, 74, '2017-05-21', '11:15:00', '', 1200),
(28, 121, 164, '2018-01-16', '09:55:00', '', 1400),
(29, 121, 125, '2017-11-17', '10:10:00', '', 2000),
(30, 127, 8, '2018-01-06', '11:00:00', '', 360),
(31, 128, 90, '2017-10-26', '10:50:00', '', 1430),
(32, 128, 78, '2018-01-25', '10:10:00', '', 700),
(33, 132, 143, '2017-11-15', '10:05:00', '', 2900),
(34, 142, 119, '2018-01-14', '09:55:00', '', 1200),
(35, 143, 92, '0017-04-04', '08:55:00', '', 1000),
(36, 149, 162, '2017-07-06', '10:35:00', '', 1400),
(37, 150, 165, '2017-10-17', '09:45:00', '', 800),
(38, 152, 150, '2017-11-10', '10:25:00', '', 3990),
(39, 170, 69, '2017-06-06', '10:10:00', '', 800),
(40, 170, 69, '2017-06-06', '10:10:00', '', 800),
(41, 171, 21, '2017-12-08', '18:00:00', '', 800),
(42, 177, 98, '2017-12-05', '10:25:00', '', 500),
(43, 178, 98, '2017-02-14', '08:55:00', '', 500),
(44, 181, 97, '2017-05-18', '08:50:00', '', 700),
(45, 191, 67, '2017-11-25', '11:35:00', '', 1200),
(46, 194, 22, '2017-12-25', '19:45:00', '', 700),
(47, 195, 13, '2018-01-05', '10:45:00', '', 1200),
(48, 197, 14, '2017-08-26', '09:45:00', '', 1200),
(49, 203, 83, '2017-04-29', '09:45:00', '', 1000),
(50, 203, 126, '2018-01-03', '08:55:00', '', 2000),
(51, 203, 86, '2017-08-04', '09:18:00', '', 6240),
(52, 206, 152, '2017-07-12', '09:08:00', '', 3990),
(53, 207, 54, '2017-06-05', '12:00:00', '', 3990),
(54, 207, 145, '2017-05-24', '09:50:00', '', 800),
(55, 209, 8, '2017-08-28', '09:10:00', '', 360),
(56, 210, 81, '2017-10-25', '12:00:00', '', 330),
(57, 216, 44, '2017-10-06', '18:00:00', '', 3990),
(58, 225, 94, '2017-10-05', '11:45:00', '', 3990),
(59, 226, 78, '2017-03-01', '10:05:00', '', 700),
(60, 232, 115, '2017-08-16', '17:25:00', '', 1000),
(61, 234, 75, '2017-10-21', '10:25:00', '', 500),
(62, 237, 34, '2017-08-13', '10:15:00', '', 7400),
(63, 238, 135, '2017-04-02', '17:56:00', '', 7400),
(64, 238, 88, '2017-09-14', '09:10:00', '', 1430),
(65, 244, 135, '2017-08-15', '18:56:00', '', 7400),
(66, 246, 80, '2017-02-28', '10:45:00', '', 800),
(67, 248, 95, '2018-01-10', '09:45:00', '', 800),
(68, 249, 144, '2017-05-18', '10:45:00', '', 2900),
(69, 253, 91, '2017-11-20', '10:25:00', '', 3270),
(70, 254, 140, '2017-07-24', '18:06:00', '', 1200),
(71, 255, 158, '2018-01-04', '07:56:00', '', 1430),
(72, 273, 55, '2017-04-05', '10:25:00', '', 800),
(73, 278, 95, '2017-02-06', '12:05:00', '', 800),
(74, 279, 21, '2017-12-29', '10:15:00', '', 800),
(75, 284, 36, '2017-07-21', '18:56:00', '', 1430),
(76, 285, 120, '2017-02-24', '10:05:00', '', 1200),
(77, 285, 51, '2017-08-20', '15:30:00', '', 330),
(78, 293, 84, '2017-09-01', '16:50:00', '', 1000),
(79, 300, 161, '2017-08-13', '10:15:00', '', 1400),
(80, 318, 120, '2017-05-04', '19:00:00', '', 1200),
(81, 320, 145, '2017-04-27', '10:05:00', '', 800),
(82, 334, 158, '2017-05-05', '16:25:00', '', 1430),
(83, 338, 58, '2017-05-02', '10:05:00', '', 1400),
(84, 348, 72, '2017-10-10', '18:56:00', '', 700),
(85, 349, 147, '2017-05-13', '10:05:00', '', 800),
(86, 350, 65, '2017-06-27', '07:45:00', '', 500),
(87, 353, 96, '2017-02-15', '12:00:00', '', 360),
(88, 354, 69, '2017-10-02', '18:45:00', '', 800),
(89, 358, 136, '2017-08-05', '10:15:00', '', 7400),
(90, 360, 22, '2017-05-01', '10:05:00', '', 700),
(91, 362, 159, '2017-07-04', '19:00:00', '', 1430),
(92, 362, 89, '2017-12-01', '18:26:00', '', 700),
(93, 367, 55, '2017-06-21', '10:25:00', '', 800),
(94, 370, 58, '2017-02-12', '11:05:00', '', 1400),
(95, 372, 113, '2017-03-16', '10:45:00', '', 1000),
(96, 372, 38, '2017-06-01', '18:45:00', '', 3990),
(97, 380, 118, '2017-06-04', '10:15:00', '', 1200),
(98, 381, 18, '2017-11-12', '07:58:00', '', 1400),
(99, 383, 90, '2017-03-10', '11:30:00', '', 1430),
(100, 387, 28, '2017-10-04', '12:15:00', '', 3990),
(102, 389, 36, '2017-10-03', '10:14:00', '', 1430);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `dept_head` (`dept_head`),
  ADD KEY `staff_head` (`staff_head`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `d_dept` (`d_dept`);

--
-- Indexes for table `d_perm`
--
ALTER TABLE `d_perm`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `d_visit`
--
ALTER TABLE `d_visit`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `nurse_bed`
--
ALTER TABLE `nurse_bed`
  ADD PRIMARY KEY (`b_id`,`shift`) USING BTREE,
  ADD KEY `b_id` (`b_id`),
  ADD KEY `n_id` (`n_id`) USING BTREE;

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `s_nurse`
--
ALTER TABLE `s_nurse`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `s_wardboy`
--
ALTER TABLE `s_wardboy`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `t_admit`
--
ALTER TABLE `t_admit`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `d_id` (`d_id`),
  ADD KEY `b_id` (`b_id`);

--
-- Indexes for table `t_bill`
--
ALTER TABLE `t_bill`
  ADD PRIMARY KEY (`t_id`,`t_type`) USING BTREE,
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `t_consult`
--
ALTER TABLE `t_consult`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `t_visit`
--
ALTER TABLE `t_visit`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `d_id` (`d_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `s_nurse`
--
ALTER TABLE `s_nurse`
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `s_wardboy`
--
ALTER TABLE `s_wardboy`
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `t_admit`
--
ALTER TABLE `t_admit`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `t_consult`
--
ALTER TABLE `t_consult`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `t_visit`
--
ALTER TABLE `t_visit`
  MODIFY `v_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bed`
--
ALTER TABLE `bed`
  ADD CONSTRAINT `fk_beddept` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_dept_doc_head` FOREIGN KEY (`dept_head`) REFERENCES `doctor` (`d_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dept_staff_head` FOREIGN KEY (`staff_head`) REFERENCES `staff` (`s_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `fk_doc_dept` FOREIGN KEY (`d_dept`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `d_perm`
--
ALTER TABLE `d_perm`
  ADD CONSTRAINT `fk_perm_doc` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `d_visit`
--
ALTER TABLE `d_visit`
  ADD CONSTRAINT `fk_visit_doc` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nurse_bed`
--
ALTER TABLE `nurse_bed`
  ADD CONSTRAINT `fk_bed_nurse` FOREIGN KEY (`b_id`) REFERENCES `bed` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nurse_bed` FOREIGN KEY (`n_id`) REFERENCES `s_nurse` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_nurse`
--
ALTER TABLE `s_nurse`
  ADD CONSTRAINT `fk_nurse_staff` FOREIGN KEY (`s_id`) REFERENCES `staff` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_wardboy`
--
ALTER TABLE `s_wardboy`
  ADD CONSTRAINT `fk_boy_dept` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  ADD CONSTRAINT `fk_boy_staff` FOREIGN KEY (`s_id`) REFERENCES `staff` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_admit`
--
ALTER TABLE `t_admit`
  ADD CONSTRAINT `fk_admit_b` FOREIGN KEY (`b_id`) REFERENCES `bed` (`b_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_admit_d` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_admit_p` FOREIGN KEY (`p_id`) REFERENCES `patient` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_bill`
--
ALTER TABLE `t_bill`
  ADD CONSTRAINT `fk_bill_pid` FOREIGN KEY (`p_id`) REFERENCES `patient` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_consult`
--
ALTER TABLE `t_consult`
  ADD CONSTRAINT `fk_consult_a` FOREIGN KEY (`a_id`) REFERENCES `t_admit` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_consult_d` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`d_id`) ON UPDATE CASCADE;

--
-- Constraints for table `t_visit`
--
ALTER TABLE `t_visit`
  ADD CONSTRAINT `fk_visit_d` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_visit_p` FOREIGN KEY (`p_id`) REFERENCES `patient` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
