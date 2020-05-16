-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2020 at 09:03 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h2m`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection_name`
--

CREATE TABLE `collection_name` (
  `id` int(11) NOT NULL,
  `collection_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `critical_high_m`
--

CREATE TABLE `critical_high_m` (
  `id` int(11) NOT NULL,
  `test_name` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `from_ch` text NOT NULL,
  `age_in_1` varchar(30) NOT NULL,
  `to_ch` text NOT NULL,
  `age_in_2` varchar(30) NOT NULL,
  `equal` text NOT NULL,
  `add_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `critical_high_m`
--

INSERT INTO `critical_high_m` (`id`, `test_name`, `gender`, `from_ch`, `age_in_1`, `to_ch`, `age_in_2`, `equal`, `add_by`) VALUES
(3, 'CBC in', '', '', 'days', 'AGE\'<0.153', 'days', ':50,', ''),
(4, 'CBC in2', '', '', 'days', 'AGE\'<0.153', 'days', ':50,', ''),
(5, 'CBC in2', '', 'AGE<0.123', 'days', 'AGE\'<0.153', 'days', ':50,', ''),
(6, 'CBC', '', 'AGE<0.123', 'days', 'AGE\'<0.153', 'days', ':50,', ''),
(8, 'MFGH TSH', 'SEX=\"M\"', 'AGE\'<0.123', 'days', 'AGE<1.074', 'weeks', ':100,', ''),
(9, 'MFGH TSH', 'SEX=\"F\"', 'AGE\'<3.699', 'months', 'AGE<56', 'years', ':100,', ''),
(10, 'ALT', 'SEX=\"M\"', 'AGE\'<0.123', 'days', 'AGE<0.153', 'days', ':100,', ''),
(11, 'ALT', 'SEX=\"F\"', 'AGE\'<0.863', 'weeks', 'AGE<1.074', 'weeks', ':100,', '');

-- --------------------------------------------------------

--
-- Table structure for table `critical_low_m`
--

CREATE TABLE `critical_low_m` (
  `id` int(11) NOT NULL,
  `test_name` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `from_cl` text NOT NULL,
  `age_in_1` varchar(30) NOT NULL,
  `to_cl` text NOT NULL,
  `age_in_2` varchar(30) NOT NULL,
  `equal` text NOT NULL,
  `add_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `critical_low_m`
--

INSERT INTO `critical_low_m` (`id`, `test_name`, `gender`, `from_cl`, `age_in_1`, `to_cl`, `age_in_2`, `equal`, `add_by`) VALUES
(1, 'ALT', 'SEX=\"M\"', 'AGE<0.027', 'days', 'AGE\'<0.033', 'days', ':50,', ''),
(2, 'ALT', 'SEX=\"F\"', 'AGE<0.027', 'days', 'AGE\'<0.033', 'days', ':50,', ''),
(3, 'CBC in', '', 'AGE<0.027', 'days', 'AGE\'<0.033', 'days', ':50,', ''),
(4, 'CBC in2', '', '', 'days', 'AGE\'<0.033', 'days', ':50,', ''),
(9, 'MFGH TSH', 'SEX=\"M\"', 'AGE\'<0.027', 'days', 'AGE<0.23', 'weeks', ':100,', ''),
(10, 'MFGH TSH', 'SEX=\"F\"', 'AGE\'<0.822', 'months', 'AGE<12', 'years', ':100,', '');

-- --------------------------------------------------------

--
-- Table structure for table `ref_high_m`
--

CREATE TABLE `ref_high_m` (
  `id` int(11) NOT NULL,
  `test_name` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `from_rh` text NOT NULL,
  `age_in_1` varchar(30) NOT NULL,
  `to_rh` text NOT NULL,
  `age_in_2` varchar(30) NOT NULL,
  `equal` text NOT NULL,
  `add_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_high_m`
--

INSERT INTO `ref_high_m` (`id`, `test_name`, `gender`, `from_rh`, `age_in_1`, `to_rh`, `age_in_2`, `equal`, `add_by`) VALUES
(8, 'ALT', '', 'AGE<0.041', 'days', 'AGE\'<0.077', 'days', ':50,', ''),
(15, 'MFGH TSH', 'SEX=\"M\"', 'AGE\'<0.041', 'days', 'AGE<0.23', 'weeks', ':100,', ''),
(16, 'MFGH TSH', '', 'AGE\'<1.233', 'months', 'AGE<12', 'years', ':100,', ''),
(17, 'PRH BETA HCG', 'SEX=\"M\"', '', 'days', '', 'days', ':2,', ''),
(18, 'PRH BETA HCG', 'SEX=\"F\"', '', 'days', '', 'days', ':1,', ''),
(19, 'PRH CALCIUM 24hr URI', '', '', 'days', 'AGE<4', 'years', ':0.15,', ''),
(20, 'PRH CALCIUM 24hr URI', '', 'AGE\'<4', 'years', '', 'days', ':2.5,', ''),
(21, 'PRH URIC ACID', 'SEX=\"F\"', '', 'days', '', 'days', ':340,', ''),
(22, 'PRH URIC ACID', 'SEX=\"M\"', '', 'years', 'AGE<65', 'years', ':420,', ''),
(23, 'PRH URIC ACID', 'SEX=\"M\"', 'AGE\'<65', 'years', '', 'days', ':500,', ''),
(24, 'PRH ALKALINE PHOSPHA', '', '', 'days', 'AGE<0.005', 'days', ':250,', ''),
(25, 'PRH ALKALINE PHOSPHA', '', 'AGE\'<0.005', 'days', 'AGE<0.014', 'days', ':230,', ''),
(26, 'PRH ALKALINE PHOSPHA', '', 'AGE\'<0.014', 'days', 'AGE<0.493', 'months', ':449,', ''),
(27, 'PRH ALKALINE PHOSPHA', '', 'AGE\'<0.493', 'months', 'AGE<1', 'years', ':462,', ''),
(28, 'PRH ALKALINE PHOSPHA', '', 'AGE\'<1', 'years', 'AGE<3', 'years', ':281,', ''),
(29, 'PRH ALKALINE PHOSPHA', '', 'AGE\'<3', 'years', 'AGE<6', 'years', ':269,', ''),
(30, 'PRH ALKALINE PHOSPHA', 'SEX=\"F\"', 'AGE\'<6', 'years', 'AGE<12', 'years', ':187,', ''),
(31, 'PRH ALKALINE PHOSPHA', 'SEX=\"M\"', 'AGE\'<12', 'years', 'AGE<17', 'years', ':390,', ''),
(32, 'PRH ALKALINE PHOSPHA', 'SEX=\"M\"', 'AGE\'<12', 'years', '', 'days', ':40,', ''),
(33, 'PRH ALKALINE PHOSPHA', 'SEX=\"F\"', 'AGE\'<17', 'years', '', 'days', ':35,', ''),
(34, 'ZZ TEST', '', '', 'days', 'AGE<0.033', 'days', ':10,', ''),
(35, 'ZZ TEST', '', 'AGE\'<0.033', 'days', 'AGE<0.082', 'months', ':20,', ''),
(36, 'ZZ TEST', '', 'AGE\'<0.082', 'months', '', 'days', ':30,', '');

-- --------------------------------------------------------

--
-- Table structure for table `ref_low`
--

CREATE TABLE `ref_low` (
  `id` int(11) NOT NULL,
  `test_name` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `from_rl` text NOT NULL,
  `age_in_1` varchar(30) NOT NULL,
  `to_rl` text NOT NULL,
  `age_in_2` varchar(30) NOT NULL,
  `equal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_low`
--

INSERT INTO `ref_low` (`id`, `test_name`, `gender`, `from_rl`, `age_in_1`, `to_rl`, `age_in_2`, `equal`) VALUES
(57, 'CBC', 'M', '10', 'days', '20', 'days', ''),
(58, 'CBC in', 'M', '0', 'days', '0', 'days', ' : 15'),
(59, 'CBC in', 'M', 'and age <10', 'days', 'and age >=30', 'days', ' : 15'),
(60, 'CBC in', 'M', 'and age <10', 'days', 'and age >=30', 'days', ' : 15'),
(61, 'CBC in', 'MALE', 'and age <10', 'days', 'and age >=10', 'days', ' : 50'),
(62, 'CBC in2', 'MALE', 'and age <10', 'days', 'and age >=20', 'days', ' : 15'),
(63, 'CBC in2', 'MALE', 'and age <20', 'days', 'and age >=30', 'days', ' : 25'),
(64, 'CBC in2', 'MALE', 'age <10', 'days', 'and age >=20', 'days', ' : 15'),
(65, 'CBC in2', 'MALE', 'age <20', 'days', 'and age >=30', 'days', ' : 25'),
(66, 'CBC in2', 'MALE', '0.027397260273973', 'days', 'and age >=20', 'days', ' : 15'),
(67, 'CBC in2', 'MALE', '0.054794520547945', 'days', 'and age >=30', 'days', ' : 25'),
(68, 'CBC in2', 'MALE', '0.027', 'days', 'and age >=20', 'days', ' : 15'),
(69, 'CBC in2', 'MALE', '0.055', 'days', 'and age >=30', 'days', ' : 25'),
(70, 'CBC in2', 'MALE', '10', 'days', '20', 'days', '15'),
(71, 'CBC in2', 'MALE', '20', 'days', '30', 'days', '25'),
(72, 'CBC in2', '', '10', 'days', '10', 'days', '50'),
(73, 'CBC in2', '', '10', 'days', '10', 'days', '50');

-- --------------------------------------------------------

--
-- Table structure for table `ref_low_m`
--

CREATE TABLE `ref_low_m` (
  `id` int(11) NOT NULL,
  `test_name` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `from_rl` text NOT NULL,
  `age_in_1` varchar(30) NOT NULL,
  `to_rl` text NOT NULL,
  `age_in_2` varchar(30) NOT NULL,
  `equal` text NOT NULL,
  `add_by` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_low_m`
--

INSERT INTO `ref_low_m` (`id`, `test_name`, `gender`, `from_rl`, `age_in_1`, `to_rl`, `age_in_2`, `equal`, `add_by`) VALUES
(144, 'ALT', 'SEX=\"M\"', 'AGE<0.027', 'days', 'AGE\'<0.082', 'days', ':50,', ''),
(183, 'CBC in2', 'SEX=\"M\"', 'AGE\'<0.027', 'days', '&(AGE<0.027', 'days', ':50,', ''),
(235, 'CBC', 'SEX=\"M\"', '', 'days', 'AGE<0.008', 'days', ':0.7,', ''),
(236, 'CBC', 'SEX=\"M\"', 'AGE\'<0.008', 'days', 'AGE<0.082', 'months', ':0.72,', ''),
(237, 'CBC', 'SEX=\"M\"', 'AGE\'<0.082', 'months', 'AGE<1', 'years', ':0.73,', ''),
(238, 'CBC', 'SEX=\"M\"', 'AGE\'<1', 'years', 'AGE<5', 'years', ':0.7,', ''),
(239, 'CBC', 'SEX=\"M\"', 'AGE\'<5', 'years', 'AGE<10', 'years', ':0.6,', ''),
(240, 'CBC', 'SEX=\"M\"', 'AGE\'<10', 'years', 'AGE<15', 'years', ':0.58,', ''),
(241, 'CBC', 'SEX=\"M\"', 'AGE\'<15', 'years', 'AGE<18', 'years', ':0.51,', ''),
(242, 'CBC', 'SEX=\"M\"', 'AGE\'<18', 'years', '', 'days', ':0.27,', ''),
(243, 'CBC', 'SEX=\"F\"', '', 'days', 'AGE<0.008', 'days', ':0.6,', ''),
(244, 'CBC', 'SEX=\"F\"', 'AGE\'<0.008', 'days', 'AGE<0.082', 'months', ':0.58,', ''),
(245, 'CBC', 'SEX=\"F\"', 'AGE\'<0.082', 'months', 'AGE<1', 'years', ':0.59,', ''),
(246, 'CBC', 'SEX=\"F\"', 'AGE\'<1', 'years', 'AGE<10', 'years', ':0.6,', ''),
(247, 'CBC', 'SEX=\"F\"', 'AGE\'<10', 'years', 'AGE<15', 'years', ':0.52,', ''),
(248, 'CBC', 'SEX=\"F\"', 'AGE\'<15', 'years', 'AGE<18', 'years', ':0.5,', ''),
(249, 'CBC', 'SEX=\"F\"', 'AGE\'<18', 'years', '', 'days', ':0.27,', ''),
(256, 'MFGH TSH', 'SEX=\"M\"', 'AGE\'<0.027', 'days', 'AGE<0.192', 'weeks', ':100,', ''),
(257, 'MFGH TSH', 'SEX=\"F\"', 'AGE\'<0.822', 'months', 'AGE<10', 'years', ':100,', ''),
(258, 'PRH WBC', '', '', 'days', 'AGE<0.003', 'days', ':9,', ''),
(259, 'PRH WBC', '', 'AGE\'<0.003', 'days', 'AGE<0.082', 'months', ':9.4,', ''),
(260, 'PRH WBC', '', 'AGE\'<0.082', 'months', 'AGE<1', 'years', ':5,', ''),
(261, 'PRH WBC', '', 'AGE\'<1', 'years', 'AGE<3', 'years', ':6,', ''),
(262, 'PRH WBC', '', 'AGE\'<3', 'years', 'AGE<7', 'years', ':5.5,', ''),
(263, 'PRH WBC', '', 'AGE\'<7', 'years', 'AGE<13', 'years', ':4.5,', ''),
(264, 'PRH WBC', '', 'AGE\'<0.036', 'days', '', 'days', ':4.5,', ''),
(265, 'PRH RBC', '', '', 'days', 'AGE<0.003', 'days', ':3.9,', ''),
(266, 'PRH RBC', '', 'AGE\'<0.003', 'days', 'AGE<0.008', 'days', ':4,', ''),
(267, 'PRH RBC', '', 'AGE\'<0.008', 'days', 'AGE<0.019', 'weeks', ':3.9,', ''),
(268, 'PRH RBC', '', 'AGE\'<0.019', 'weeks', 'AGE<0.038', 'weeks', ':3.6,', ''),
(269, 'PRH RBC', '', 'AGE\'<0.038', 'weeks', 'AGE<0.082', 'months', ':3,', ''),
(270, 'PRH RBC', '', 'AGE\'<0.082', 'months', 'AGE<0.164', 'months', ':2.7,', ''),
(271, 'PRH RBC', '', 'AGE\'<0.164', 'months', 'AGE<0.493', 'months', ':3.1,', ''),
(272, 'PRH RBC', '', 'AGE\'<0.493', 'months', 'AGE<2', 'years', ':3.7,', ''),
(273, 'PRH RBC', '', 'AGE\'<2', 'years', 'AGE<6', 'years', ':3.9,', ''),
(274, 'PRH RBC', '', 'AGE\'<6', 'years', 'AGE<12', 'years', ':4,', ''),
(275, 'PRH RBC', 'SEX=\"M\"', 'AGE\'<0.033', 'days', 'AGE<18', 'years', ':4.5,', ''),
(276, 'PRH RBC', 'SEX=\"F\"', 'AGE\'<12', 'years', 'AGE<18', 'years', ':4.1,', ''),
(277, 'PRH RBC', 'SEX=\"M\"', 'AGE\'<18', 'years', '', 'days', ':4.5,', ''),
(278, 'PRH RBC', 'SEX=\"F\"', 'AGE\'<18', 'years', '', 'days', ':4,', ''),
(279, 'PRH Hb', '', '', 'days', 'AGE<0.008', 'days', ':14.5,', ''),
(280, 'PRH Hb', '', 'AGE\'<0.008', 'days', 'AGE<6', 'years', ':9,', ''),
(281, 'PRH Hb', '', 'AGE\'<6', 'years', 'AGE<12', 'years', ':11.5,', ''),
(282, 'PRH Hb', 'SEX=\"M\"', 'AGE\'<12', 'years', 'AGE<18', 'years', ':13,', ''),
(283, 'PRH Hb', 'SEX=\"F\"', 'AGE\'<12', 'years', 'AGE<18', 'years', ':12,', ''),
(284, 'PRH Hb', 'SEX=\"M\"', 'AGE\'<18', 'years', '', 'days', ':13.5,', ''),
(285, 'PRH Hb', 'SEX=\"F\"', 'AGE\'<18', 'years', '', 'days', ':12,', ''),
(286, 'PRH HCT', '', '', 'days', 'AGE<0.003', 'days', ':48,', ''),
(287, 'PRH HCT', '', 'AGE\'<0.003', 'days', 'AGE<0.005', 'days', ':48,', ''),
(288, 'PRH HCT', '', 'AGE\'<0.005', 'days', 'AGE<0.008', 'days', ':44,', ''),
(289, 'PRH HCT', '', 'AGE\'<0.008', 'days', 'AGE<6', 'years', ':28,', ''),
(290, 'PRH HCT', '', 'AGE\'<6', 'years', 'AGE<12', 'years', ':35,', ''),
(291, 'PRH HCT', 'SEX=\"M\"', 'AGE\'<12', 'years', 'AGE<18', 'years', ':37,', ''),
(292, 'PRH HCT', 'SEX=\"F\"', 'AGE\'<12', 'years', 'AGE<18', 'years', ':36,', ''),
(293, 'PRH HCT', 'SEX=\"M\"', 'AGE\'<18', 'years', '', 'years', ':41,', ''),
(294, 'PRH HCT', 'SEX=\"F\"', 'AGE\'<18', 'years', '', 'years', ':36,', ''),
(295, 'PRH MCV', '', '', 'days', 'AGE<0.493', 'months', ':95,', ''),
(296, 'PRH MCV', '', 'AGE\'<0.493', 'months', 'AGE<6', 'years', ':70,', ''),
(297, 'PRH MCV', '', 'AGE\'<6', 'years', 'AGE<12', 'years', ':77,', ''),
(298, 'PRH MCV', 'SEX=\"M\"', 'AGE\'<12', 'years', 'AGE<18', 'years', ':78,', ''),
(299, 'PRH MCV', 'SEX=\"F\"', 'AGE\'<12', 'years', 'AGE<18', 'years', ':78,', ''),
(300, 'PRH MCV', 'SEX=\"M\"', 'AGE\'<18', 'years', '', 'days', ':80,', ''),
(301, 'PRH MCV', 'SEX=\"F\"', 'AGE\'<18', 'years', '', 'days', ':80,', ''),
(302, 'PRH MCHC', '', '', 'days', 'AGE<0.003', 'days', ':31,', ''),
(303, 'PRH MCHC', '', 'AGE\'<0.003', 'days', 'AGE<0.019', 'weeks', ':31,', ''),
(304, 'PRH MCHC', '', 'AGE\'<0.019', 'weeks', 'AGE<0.082', 'months', ':28,', ''),
(305, 'PRH MCHC', '', 'AGE\'<0.082', 'months', 'AGE<0.247', 'months', ':26,', ''),
(306, 'PRH MCHC', '', 'AGE\'<0.247', 'months', 'AGE<0.493', 'months', ':25,', ''),
(307, 'PRH MCHC', '', 'AGE\'<0.493', 'months', 'AGE<2', 'years', ':23,', ''),
(308, 'PRH MCHC', '', 'AGE\'<2', 'years', 'AGE<6', 'years', ':24,', ''),
(309, 'PRH MCHC', '', 'AGE\'<6', 'years', 'AGE<12', 'years', ':25,', ''),
(310, 'PRH MCHC', 'SEX=\"M\"', 'AGE\'<12', 'years', '', 'days', ':25,', ''),
(311, 'PRH MCHC', 'SEX=\"F\"', 'AGE\'<12', 'years', '', 'days', ':26,', ''),
(312, 'PRH MCH', '', '', 'days', 'AGE<0.003', 'days', ':30,', ''),
(313, 'PRH MCH', '', 'AGE\'<0.003', 'days', 'AGE<0.019', 'weeks', ':29,', ''),
(314, 'PRH MCH', '', 'AGE\'<0.019', 'weeks', 'AGE<0.082', 'months', ':28,', ''),
(315, 'PRH MCH', '', 'AGE\'<0.082', 'months', 'AGE<0.247', 'months', ':29,', ''),
(316, 'PRH MCH', '', 'AGE\'<0.247', 'months', 'AGE<12', 'years', ':30,', ''),
(317, 'PRH MCH', '', 'AGE\'<12', 'years', 'AGE<18', 'years', ':31,', ''),
(318, 'PRH MCH', '', 'AGE\'<18', 'years', '', 'days', ':31,', ''),
(319, 'PRH NEUTROPHIL', '', '', 'days', 'AGE<6', 'years', ':5,', ''),
(320, 'PRH NEUTROPHIL', '', 'AGE\'<6', 'years', 'AGE<13', 'years', ':5.5,', ''),
(321, 'PRH NEUTROPHIL', '', 'AGE\'<13', 'years', '', 'years', ':1.5,', ''),
(322, 'PRH LYMPHOCYT', '', '', 'days', 'AGE<6', 'years', ':3.5,', ''),
(323, 'PRH LYMPHOCYT', '', 'AGE\'<6', 'years', 'AGE<13', 'years', ':5.5,', ''),
(324, 'PRH LYMPHOCYT', '', 'AGE\'<13', 'years', '', 'days', ':1.5,', ''),
(325, 'PRH MONOCYTE', '', '', 'days', 'AGE<6', 'years', ':0.5,', ''),
(326, 'PRH MONOCYTE', '', 'AGE\'<6', 'years', 'AGE<13', 'years', ':5.5,', ''),
(327, 'PRH MONOCYTE', '', 'AGE\'<13', 'years', '', 'days', ':0.2,', ''),
(328, 'PRH EOSINOPHIL', '', '', 'days', 'AGE<6', 'years', ':0.01,', ''),
(329, 'PRH EOSINOPHIL', '', 'AGE\'<6', 'years', 'AGE<13', 'years', ':0.3,', ''),
(330, 'PRH EOSINOPHIL', '', 'AGE\'<13', 'years', '', 'days', ':0.04,', ''),
(331, 'PRH BASOPHILE', '', '', 'days', 'AGE<6', 'years', ':0.01,', ''),
(332, 'PRH BASOPHILE', '', 'AGE\'<6', 'years', 'AGE<13', 'years', ':0.3,', ''),
(333, 'PRH BASOPHILE', '', 'AGE\'<13', 'years', '', 'days', ':0.01,', ''),
(334, 'PRH PLATELET', '', '', 'days', 'AGE<0.164', 'months', ':84,', ''),
(335, 'PRH PLATELET', '', 'AGE\'<0.164', 'months', '', 'days', ':150,', ''),
(336, 'PRH ESR', '', '', 'days', 'AGE<4', 'years', ':0,', ''),
(337, 'PRH ESR', 'SEX=\"M\"', 'AGE\'<4', 'years', '', 'days', ':0,', ''),
(338, 'PRH ESR', 'SEX=\"F\"', 'AGE\'<4', 'years', '', 'days', ':0,', ''),
(339, 'PRH RETICULOCYTE', '', '', 'days', 'AGE<0.003', 'days', ':0.4,', ''),
(340, 'PRH RETICULOCYTE', '', 'AGE\'<0.003', 'days', 'AGE<0.019', 'weeks', ':0.1,', ''),
(341, 'PRH RETICULOCYTE', '', 'AGE\'<0.019', 'weeks', 'AGE<0.077', 'weeks', ':1,', ''),
(342, 'PRH RETICULOCYTE', '', 'AGE\'<0.077', 'weeks', 'AGE<0.115', 'weeks', ':0.1,', ''),
(343, 'PRH RETICULOCYTE', '', 'AGE\'<0.115', 'weeks', 'AGE<0.153', 'weeks', ':0.1,', ''),
(344, 'PRH RETICULOCYTE', '', 'AGE\'<0.153', 'weeks', 'AGE<0.033', 'days', ':0.1,', ''),
(345, 'PRH RETICULOCYTE', '', 'AGE\'<0.23', 'weeks', '', 'days', ':0.5,', ''),
(347, 'PRH BETA HCG', 'SEX=\"M\"', '', 'days', '', 'days', ':0,', ''),
(348, 'PRH BETA HCG', 'SEX=\"F\"', '', 'days', '', 'days', ':0,', ''),
(349, 'PRH FERRITIN', 'SEX=\"M\"', '', 'days', '', 'days', ':30,', ''),
(350, 'PRH FERRITIN', 'SEX=\"F\"', '', 'days', '', 'days', ':13,', ''),
(351, 'PRH UREA SERUM', '', '', 'days', 'AGE<1', 'years', ':1.4,', ''),
(352, 'PRH UREA SERUM', '', 'AGE\'<1', 'years', 'AGE<4', 'years', ':1.8,', ''),
(353, 'PRH UREA SERUM', '', 'AGE\'<4', 'years', 'AGE<65', 'years', ':8.3,', ''),
(354, 'PRH UREA SERUM', '', 'AGE\'<65', 'years', '', 'days', ':11.9,', ''),
(355, 'PRH CREATININE SERUM', '', '', 'days', 'AGE<1', 'years', ':15,', ''),
(356, 'PRH CREATININE SERUM', '', 'AGE\'<1', 'years', 'AGE<3', 'years', ':21,', ''),
(357, 'PRH CREATININE SERUM', '', 'AGE\'<3', 'years', 'AGE<5', 'years', ':27,', ''),
(358, 'PRH CREATININE SERUM', '', 'AGE\'<5', 'years', 'AGE<7', 'years', ':28,', ''),
(359, 'PRH CREATININE SERUM', '', 'AGE\'<7', 'years', 'AGE<9', 'years', ':35,', ''),
(360, 'PRH CREATININE SERUM', '', 'AGE\'<9', 'years', 'AGE<11', 'years', ':34,', ''),
(361, 'PRH CREATININE SERUM', '', 'AGE\'<11', 'years', 'AGE<13', 'years', ':46,', ''),
(362, 'PRH CREATININE SERUM', '', 'AGE\'<13', 'years', 'AGE<15', 'years', ':50,', ''),
(363, 'PRH CREATININE SERUM', 'SEX=\"F\"', 'AGE\'<15', 'years', '', 'years', ':44,', ''),
(364, 'PRH CREATININE SERUM', 'SEX=\"M\"', 'AGE\'<15', 'years', '', 'years', ':62,', ''),
(365, 'PRH CREAT 1st MORNIN', 'SEX=\"F\"', '', 'days', '', 'days', ':2.55,', ''),
(366, 'PRH CREAT 1st MORNIN', 'SEX=\"M\"', '', 'days', '', 'days', ':3.54,', ''),
(367, 'PRH GLUCOSE SERUM', '', '', 'days', 'AGE<0.003', 'days', ':2.22,', ''),
(368, 'PRH GLUCOSE SERUM', '', 'AGE\'<0.003', 'days', 'AGE<4', 'years', ':2.78,', ''),
(369, 'PRH GLUCOSE SERUM', '', 'AGE\'<4', 'years', 'AGE<60', 'years', ':3.33,', ''),
(370, 'PRH GLUCOSE SERUM', '', 'AGE\'<60', 'years', 'AGE<90', 'years', ':4.56,', ''),
(371, 'PRH GLUCOSE SERUM', '', 'AGE\'<90', 'years', '', 'days', ':4.16,', ''),
(372, 'PRH GLUCOSE CSF', '', '', 'days', 'AGE<4', 'years', ':3.33,', ''),
(373, 'PRH GLUCOSE CSF', '', 'AGE\'<4', 'years', '', 'days', ':2.22,', ''),
(374, 'PRH CALCIUM SERUM', '', '', 'days', 'AGE<0.164', 'months', ':1.9,', ''),
(375, 'PRH CALCIUM SERUM', '', 'AGE\'<0.164', 'months', 'AGE<1', 'years', ':2.1,', ''),
(376, 'PRH CALCIUM SERUM', '', 'AGE\'<1', 'years', 'AGE<4', 'years', ':2.1,', ''),
(377, 'PRH CALCIUM SERUM', '', 'AGE\'<4', 'years', 'AGE<20', 'years', ':2.3,', ''),
(378, 'PRH CALCIUM SERUM', '', 'AGE\'<20', 'years', 'AGE<50', 'years', ':2.2,', ''),
(379, 'PRH CALCIUM SERUM', '', 'AGE\'<50', 'years', '', 'days', ':2.1,', ''),
(380, 'PRH PHOSPHORUS SERUM', '', '', 'days', 'AGE<0.164', 'months', ':1.32,', ''),
(381, 'PRH PHOSPHORUS SERUM', '', 'AGE\'<0.164', 'months', 'AGE<1', 'years', ':1.6,', ''),
(382, 'PRH PHOSPHORUS SERUM', '', 'AGE\'<1', 'years', '', 'days', ':1.1,', ''),
(383, 'PRH MAGNESIUM SERUM', '', '', 'days', 'AGE<4', 'years', ':0.57,', ''),
(384, 'PRH MAGNESIUM SERUM', '', 'AGE\'<4', 'years', 'AGE<18', 'years', ':0.7,', ''),
(385, 'PRH MAGNESIUM SERUM', '', 'AGE\'<18', 'years', '', 'days', ':0.7,', ''),
(386, 'PRH TOTAL PROTEIN SE', '', '', 'days', 'AGE<0.019', 'weeks', ':46,', ''),
(387, 'PRH TOTAL PROTEIN SE', '', 'AGE\'<0.019', 'weeks', 'AGE<1', 'years', ':44,', ''),
(388, 'PRH TOTAL PROTEIN SE', '', 'AGE\'<1', 'years', 'AGE<2', 'years', ':56,', ''),
(389, 'PRH TOTAL PROTEIN SE', '', 'AGE\'<2', 'years', 'AGE<18', 'years', ':66,', ''),
(390, 'PRH TOTAL PROTEIN SE', '', 'AGE\'<18', 'years', '', 'days', ':66,', ''),
(391, 'PRH ALBUMIN', '', '', 'days', 'AGE<0.011', 'days', ':28,', ''),
(392, 'PRH ALBUMIN', '', 'AGE\'<0.011', 'days', 'AGE<14', 'years', ':38,', ''),
(393, 'PRH ALBUMIN', '', 'AGE\'<14', 'years', 'AGE<18', 'years', ':32,', ''),
(394, 'PRH ALBUMIN', '', 'AGE\'<18', 'years', '', 'days', ':34,', ''),
(395, 'PRH LDH', '', '', 'days', 'AGE<0.055', 'days', ':225,', ''),
(396, 'PRH LDH', '', 'AGE\'<0.055', 'days', 'AGE<15', 'years', ':120,', ''),
(397, 'PRH LDH', 'SEX=\"M\"', 'AGE\'<15', 'years', '', 'days', ':135,', ''),
(398, 'PRH LDH', 'SEX=\"F\"', 'AGE\'<15', 'years', '', 'days', ':135,', ''),
(399, 'PRH CPK', 'SEX=\"M\"', '', 'days', '', 'days', ':26,', ''),
(400, 'PRH CPK', 'SEX=\"F\"', '', 'days', '', 'days', ':39,', ''),
(401, 'PRH AST', 'SEX=\"F\"', '', 'days', '', 'days', ':10,', ''),
(402, 'PRH AST', 'SEX=\"M\"', '', 'days', '', 'days', ':10,', ''),
(403, 'PRH PROLACTIN', '', '', 'days', 'AGE<14', 'years', ':\"NA\",', ''),
(404, 'PRH PROLACTIN', 'SEX=\"F\"', 'AGE\'<14', 'years', '', 'days', ':4.8,', ''),
(405, 'PRH PROLACTIN', 'SEX=\"M\"', 'AGE\'<14', 'years', '', 'days', ':4.0,', ''),
(406, 'PRH TESTOSTERONE', '', '', 'days', 'AGE<17', 'years', ':0.28,', ''),
(407, 'PRH TESTOSTERONE', 'SEX=\"M\"', 'AGE\'<0.047', 'days', '', 'days', ':2.8,', ''),
(408, 'PRH TESTOSTERONE', 'SEX=\"F\"', 'AGE\'<0.047', 'days', '', 'days', ':0.06,', '');

-- --------------------------------------------------------

--
-- Table structure for table `sample_type`
--

CREATE TABLE `sample_type` (
  `id` int(11) NOT NULL,
  `sample_name` varchar(30) NOT NULL,
  `collection_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_list`
--

CREATE TABLE `test_list` (
  `id` int(11) NOT NULL,
  `test_name` varchar(40) NOT NULL,
  `sample_type` varchar(20) NOT NULL,
  `ref_low` text NOT NULL,
  `ref_high` text NOT NULL,
  `ref_low_m` text NOT NULL,
  `ref_high_m` text NOT NULL,
  `critical_low` text NOT NULL,
  `critical_high` text NOT NULL,
  `critical_low_m` text NOT NULL,
  `critical_high_m` text NOT NULL,
  `test_unit` varchar(10) NOT NULL,
  `add_by` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_list`
--

INSERT INTO `test_list` (`id`, `test_name`, `sample_type`, `ref_low`, `ref_high`, `ref_low_m`, `ref_high_m`, `critical_low`, `critical_high`, `critical_low_m`, `critical_high_m`, `test_unit`, `add_by`, `date`) VALUES
(7, 'PRH WBC', 'BLOOD', '', '', '$S(AGE<0.003:9,AGE\'<0.003&(AGE<0.082):9.4,AGE\'<0.082&(AGE<1):5,AGE\'<1&(AGE<3):6,AGE\'<3&(AGE<7):5.5,AGE\'<7&(AGE<13):4.5,AGE\'<13:4.5)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(8, 'PRH RBC', 'BLOOD', '', '', '$S(AGE<0.003:3.9,AGE\'<0.003&(AGE<0.008):4,AGE\'<0.008&(AGE<0.019):3.9,AGE\'<0.019&(AGE<0.038):3.6,AGE\'<0.038&(AGE<0.082):3,AGE\'<0.082&(AGE<0.164):2.7,AGE\'<0.164&(AGE<0.493):3.1,AGE\'<0.493&(AGE<2):3.7,AGE\'<2&(AGE<6):3.9,AGE\'<6&(AGE<12):4,SEX=\"M\"&(AGE\'<12&(AGE<18)):4.5,SEX=\"F\"&(AGE\'<12&(AGE<18)):4.1,SEX=\"M\"&(AGE\'<18):4.5,SEX=\"F\"&(AGE\'<18):4)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(9, 'PRH Hb', 'BLOOD', '', '', '$S(AGE<0.008:14.5,AGE\'<0.008&(AGE<6):9,AGE\'<6&(AGE<12):11.5,SEX=\"M\"&(AGE\'<12&(AGE<18)):13,SEX=\"F\"&(AGE\'<12&(AGE<18)):12,SEX=\"M\"&(AGE\'<18):13.5,SEX=\"F\"&(AGE\'<18):12)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(10, 'PRH HCT', 'BLOOD', '', '', '$S(AGE<0.003:48,AGE\'<0.003&(AGE<0.005):48,AGE\'<0.005&(AGE<0.008):44,AGE\'<0.008&(AGE<6):28,AGE\'<6&(AGE<12):35,SEX=\"M\"&(AGE\'<12&(AGE<18)):37,SEX=\"F\"&(AGE\'<12&(AGE<18)):36,SEX=\"M\"&(AGE\'<18):41,SEX=\"F\"&(AGE\'<18):36)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(11, 'PRH MCV', 'BLOOD', '', '', '$S(AGE<0.493:95,AGE\'<0.493&(AGE<6):70,AGE\'<6&(AGE<12):77,SEX=\"M\"&(AGE\'<12&(AGE<18)):78,SEX=\"F\"&(AGE\'<12&(AGE<18)):78,SEX=\"M\"&(AGE\'<18):80,SEX=\"F\"&(AGE\'<18):80)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(12, 'PRH MCHC', 'BLOOD', '', '', '$S(AGE<0.003:31,AGE\'<0.003&(AGE<0.019):31,AGE\'<0.019&(AGE<0.082):28,AGE\'<0.082&(AGE<0.247):26,AGE\'<0.247&(AGE<0.493):25,AGE\'<0.493&(AGE<2):23,AGE\'<2&(AGE<6):24,AGE\'<6&(AGE<12):25,SEX=\"M\"&(AGE\'<12):25,SEX=\"F\"&(AGE\'<12):26)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(13, 'PRH MCH', 'BLOOD', '', '', '$S(AGE<0.003:30,AGE\'<0.003&(AGE<0.019):29,AGE\'<0.019&(AGE<0.082):28,AGE\'<0.082&(AGE<0.247):29,AGE\'<0.247&(AGE<12):30,AGE\'<12&(AGE<18):31,AGE\'<18:31)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(15, 'PRH NEUTROPHIL', 'BLOOD', '', '', '$S(AGE<6:5,AGE\'<6&(AGE<13):5.5,AGE\'<13:1.5)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(16, 'PRH LYMPHOCYT', 'BLOOD', '', '', '$S(AGE<6:3.5,AGE\'<6&(AGE<13):5.5,AGE\'<13:1.5)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(17, 'PRH MONOCYTE', 'BLOOD', '', '', '$S(AGE<6:0.5,AGE\'<6&(AGE<13):5.5,AGE\'<13:0.2)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(18, 'PRH EOSINOPHIL', 'BLOOD', '', '', '$S(AGE<6:0.01,AGE\'<6&(AGE<13):0.3,AGE\'<13:0.04)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(19, 'PRH BASOPHILE', 'BLOOD', '', '', '$S(AGE<6:0.01,AGE\'<6&(AGE<13):0.3,AGE\'<13:0.01)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(20, 'PRH PLATELET', 'BLOOD', '', '', '$S(AGE<0.164:84,AGE\'<0.164:150)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(21, 'PRH ESR', 'BLOOD', '', '', '$S(AGE<4:0,SEX=\"M\"&(AGE\'<4):0,SEX=\"F\"&(AGE\'<4):0)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(22, 'PRH RETICULOCYTE', 'BLOOD', '', '', '$S(AGE<0.003:0.4,AGE\'<0.003&(AGE<0.019):0.1,AGE\'<0.019&(AGE<0.077):1,AGE\'<0.077&(AGE<0.115):0.1,AGE\'<0.115&(AGE<0.153):0.1,AGE\'<0.153&(AGE<0.033):0.1,AGE\'<0.23:0.5)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(23, 'PRH BETA HCG', 'BLOOD', '', '', '$S(SEX=\"M\":0,SEX=\"F\":0)', '$S(SEX=\"M\":2,SEX=\"F\":1)', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(24, 'PRH FERRITIN', 'BLOOD', '', '', '$S(SEX=\"M\":30,SEX=\"F\":13)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(25, 'PRH UREA SERUM', 'BLOOD', '', '', '$S(AGE<1:1.4,AGE\'<1&(AGE<4):1.8,AGE\'<4&(AGE<65):8.3,AGE\'<65:11.9)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(26, 'PRH CREATININE SERUM', 'BLOOD', '', '', '$S(AGE<1:15,AGE\'<1&(AGE<3):21,AGE\'<3&(AGE<5):27,AGE\'<5&(AGE<7):28,AGE\'<7&(AGE<9):35,AGE\'<9&(AGE<11):34,AGE\'<11&(AGE<13):46,AGE\'<13&(AGE<15):50,SEX=\"F\"&(AGE\'<15):44,SEX=\"M\"&(AGE\'<15):62)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(27, 'PRH CREAT 1st MORNIN', 'BLOOD', '', '', '$S(SEX=\"F\":2.55,SEX=\"M\":3.54)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(28, 'PRH GLUCOSE SERUM', 'BLOOD', '', '', '$S(AGE<0.003:2.22,AGE\'<0.003&(AGE<4):2.78,AGE\'<4&(AGE<60):3.33,AGE\'<60&(AGE<90):4.56,AGE\'<90:4.16)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(29, 'PRH GLUCOSE CSF', 'BLOOD', '', '', '$S(AGE<4:3.33,AGE\'<4:2.22)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(30, 'PRH CALCIUM SERUM', 'BLOOD', '', '', '$S(AGE<0.164:1.9,AGE\'<0.164&(AGE<1):2.1,AGE\'<1&(AGE<4):2.1,AGE\'<4&(AGE<20):2.3,AGE\'<20&(AGE<50):2.2,AGE\'<50:2.1)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(31, 'PRH CALCIUM 24hr URI', 'BLOOD', '', '', '', '$S(AGE<4:0.15,AGE\'<4:2.5)', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(32, 'PRH PHOSPHORUS SERUM', 'BLOOD', '', '', '$S(AGE<0.164:1.32,AGE\'<0.164&(AGE<1):1.6,AGE\'<1:1.1)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(33, 'PRH MAGNESIUM SERUM', 'BLOOD', '', '', '$S(AGE<4:0.57,AGE\'<4&(AGE<18):0.7,AGE\'<18:0.7)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(34, 'PRH URIC ACID', 'BLOOD', '', '', '', '$S(SEX=\"F\":340,SEX=\"M\"&(AGE<65):420,SEX=\"M\"&(AGE\'<65):500)', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(35, 'PRH TOTAL PROTEIN SE', 'BLOOD', '', '', '$S(AGE<0.019:46,AGE\'<0.019&(AGE<1):44,AGE\'<1&(AGE<2):56,AGE\'<2&(AGE<18):66,AGE\'<18:66)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(36, 'PRH ALBUMIN', 'BLOOD', '', '', '$S(AGE<0.011:28,AGE\'<0.011&(AGE<14):38,AGE\'<14&(AGE<18):32,AGE\'<18:34)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(37, 'PRH BILIRUBIN TOTAL', 'BLOOD', '', '', '', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(38, 'PRH ALKALINE PHOSPHA', 'BLOOD', '', '', '', '$S(AGE<0.005:250,AGE\'<0.005&(AGE<0.014):230,AGE\'<0.014&(AGE<0.493):449,AGE\'<0.493&(AGE<1):462,AGE\'<1&(AGE<3):281,AGE\'<3&(AGE<6):269,SEX=\"F\"&(AGE\'<6&(AGE<12)):187,SEX=\"M\"&(AGE\'<12&(AGE<17)):390,SEX=\"M\"&(AGE\'<12):40,SEX=\"F\"&(AGE\'<17):35)', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(39, 'PRH LDH', 'BLOOD', '', '', '$S(AGE<0.055:225,AGE\'<0.055&(AGE<15):120,SEX=\"M\"&(AGE\'<15):135,SEX=\"F\"&(AGE\'<15):135)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(40, 'PRH CPK', 'BLOOD', '', '', '$S(SEX=\"M\":26,SEX=\"F\":39)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(41, 'PRH LDL', 'BLOOD', '', '', '', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(42, 'PRH AST', 'BLOOD', '', '', '$S(SEX=\"F\":10,SEX=\"M\":10)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(43, 'PRH PROLACTIN', 'BLOOD', '', '', '$S(AGE<14:\"NA\",SEX=\"F\"&(AGE\'<14):4.8,SEX=\"M\"&(AGE\'<14):4.0)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(44, 'PRH TESTOSTERONE', 'BLOOD', '', '', '$S(AGE<17:0.28,SEX=\"M\"&(AGE\'<0.047):2.8,SEX=\"F\"&(AGE\'<0.047):0.06)', '', '', '', '', '', '10^9/L', 'admin', '2020-01-27'),
(45, 'ZZ TEST', 'BLOOD', '', '', '', '$S(AGE<0.033:10,AGE\'<0.033&(AGE<0.082):20,AGE\'<0.082:30)', '', '', '', '', '10^9/L', 'admin', '2020-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection_name`
--
ALTER TABLE `collection_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `critical_high_m`
--
ALTER TABLE `critical_high_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `critical_low_m`
--
ALTER TABLE `critical_low_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_high_m`
--
ALTER TABLE `ref_high_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_low`
--
ALTER TABLE `ref_low`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_low_m`
--
ALTER TABLE `ref_low_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sample_type`
--
ALTER TABLE `sample_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_list`
--
ALTER TABLE `test_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection_name`
--
ALTER TABLE `collection_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `critical_high_m`
--
ALTER TABLE `critical_high_m`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `critical_low_m`
--
ALTER TABLE `critical_low_m`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ref_high_m`
--
ALTER TABLE `ref_high_m`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ref_low`
--
ALTER TABLE `ref_low`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `ref_low_m`
--
ALTER TABLE `ref_low_m`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `sample_type`
--
ALTER TABLE `sample_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_list`
--
ALTER TABLE `test_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
