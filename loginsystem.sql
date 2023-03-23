-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 06:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `fiba3`
--

CREATE TABLE `fiba3` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fiba3`
--

INSERT INTO `fiba3` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Gurbaz(wk)', 'c Mutubami b Ngarava', 9, 8, '112.50', 5, 0, 0, 2, 0, 193, 5, 20),
(2, 'Usman Ghani', 'c Muzarabani b Tiripano', 49, 34, '144.12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Karim Janat', 'b Ryan Burl', 53, 38, '139.47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Najibullah', 'c Ryan Buri  b Muzarabani', 12, 15, '80.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Nabi', 'c Musakanda b Muzarabani', 40, 15, '266.67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Asghar Afghan', 'not out', 14, 7, '200.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Rashid Khan', 'not out', 9, 5, '180.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Shahidi', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Amir Hamza', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Naveen-Ul-Haq', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Fareed Malik', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fibat1131`
--

CREATE TABLE `fibat1131` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibat1131`
--

INSERT INTO `fibat1131` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Shikhar Dhawan', 'b Wood', 4, 14, '28.57', 5, 10, 1, 0, 0, 164, 6, '20.0'),
(2, 'KL Rahul', 'b Archer', 1, 4, '25.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Virat Kohli(c)', 'c Jordan b Rashid', 0, 5, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Rishabh Pant', 'c Bairstow b Stokes', 21, 23, '91.30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Shreyas Iyer', 'c Malan b Jordan', 67, 48, '139.58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Hardik Pandya', 'c Jordan b Archer', 19, 21, '90.48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Shardul Thakur', 'c Malan b Archer', 0, 1, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Washington Sundar', 'not out', 3, 3, '100.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Axar Patel', 'not out', 7, 3, '233.33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Bhuvnesh Kumar', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Yuzvendra Chahal', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fibat1132`
--

CREATE TABLE `fibat1132` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibat1132`
--

INSERT INTO `fibat1132` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Jason Roy', 'c Kumar b Sundar', 46, 35, '131.43', 5, 10, 1, 0, 0, 164, 6, '20.0'),
(2, 'Jos Buttler(wk)', 'lbw b Kumar', 0, 1, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Dawid Malan', 'lbw b Chahal', 24, 23, '104.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Jonny Bairstow', 'c Yadav b Sundar', 20, 15, '133.33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Eoin Morgan(c)', 'c Pant b Thakur', 28, 20, '140.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Ben Stokes', 'c H Pandya b Thakur', 24, 21, '114.29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Sam Curran', 'not out', 6, 5, '120.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Chris Jordan', 'not out', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Jofra Archer', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Tom Curran', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Adil Rashid', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fibat1133`
--

CREATE TABLE `fibat1133` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibat1133`
--

INSERT INTO `fibat1133` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Rohit Sharma', 'c Archer b Wood', 15, 17, '88.24', 3, 5, 1, 0, 0, 156, 6, '20.0'),
(2, 'KL Rahul', 'b Wood', 0, 4, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Ishan Kishan', 'c Buttler b Jordan', 4, 9, '44.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Virat Kohli(c)', 'not out', 77, 46, '167.39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Rishabh Pant(wk)', 'runout(Buttler/Curran)', 25, 20, '125.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Shreyas Iyer', 'c Malan b Wood', 9, 9, '100.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Hardik Pandya', 'c Archer b Jordan', 17, 15, '113.33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Washington Sundar', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Shardul Thakur', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Bhuvneshor Kumar', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Yuzvendra Chahal', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fibat1135`
--

CREATE TABLE `fibat1135` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibat1135`
--

INSERT INTO `fibat1135` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Rohit Sharma', 'c&b Archer', 12, 12, '100.00', 4, 5, 0, 0, 0, 185, 8, '20.0'),
(2, 'KL Rahul', 'c Archer b Stokes', 14, 17, '82.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Suryakumar Yadav', 'c Malan b Curran', 57, 31, '183.87', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Virat Kohli(c)', 'st Buttler b Rashid', 1, 5, '20.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Rishabh Pant(wk)', 'b Archer', 30, 23, '130.43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Shreyas Iyer', 'c Malan b Archer', 37, 18, '205.56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Hardik Pandya', 'c Stokes b Wood', 11, 8, '137.50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Shardul Thakur', 'not out', 10, 4, '250.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Washington Sundar', 'c Rashid b Archer', 4, 2, '200.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Bhuvneshwar Kumar', 'not out', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Rahul Chahar', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fibo3`
--

CREATE TABLE `fibo3` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibo3`
--

INSERT INTO `fibo3` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Raza', '3.0', 0, 26, 0),
(2, 'Ngarava', '4.0', 0, 31, 1),
(3, 'Muzarabani', '4.0', 0, 44, 2),
(4, 'Brandon Mavuta', '3.0', 0, 42, 0),
(5, 'Tiripano', '2.0', 0, 30, 1),
(6, 'Sean Williams', '2.0', 0, 13, 0),
(7, 'Byan Burl', '2.0', 0, 7, 1),
(8, '', '0.0', 0, 0, 0),
(9, '', '0.0', 0, 0, 0),
(10, '', '0.0', 0, 0, 0),
(11, '', '0.0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fibot1131`
--

CREATE TABLE `fibot1131` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibot1131`
--

INSERT INTO `fibot1131` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Adil Rashid', '3.0', 0, 14, 1),
(2, 'Jofra Archer', '4.0', 1, 23, 3),
(3, 'Mark Wood', '4.0', 0, 20, 1),
(4, 'Chris Jordan', '4.0', 0, 27, 1),
(5, 'Ben Stokes', '3.0', 0, 25, 1),
(6, 'Sam Curran', '2.0', 0, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fibot1132`
--

CREATE TABLE `fibot1132` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibot1132`
--

INSERT INTO `fibot1132` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Bhuvneshwar Kumar', '4.0', 0, 28, 1),
(2, 'Washington Sundar', '4.0', 0, 29, 2),
(3, 'Shardul Thakur', '4.0', 0, 29, 2),
(4, 'Hardik Pandya', '4.0', 0, 33, 0),
(5, 'Yuzvendra Chahal', '4.0', 0, 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fibot1133`
--

CREATE TABLE `fibot1133` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibot1133`
--

INSERT INTO `fibot1133` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Adil Rashid', '4.0', 0, 26, 0),
(2, 'Jofra Archer', '4.0', 0, 32, 0),
(3, 'Mark Wood', '4.0', 0, 31, 3),
(4, 'Chris Jordan', '4.0', 1, 35, 2),
(5, 'Ben Stokes', '2.0', 0, 12, 0),
(6, 'Sam Curran', '2.0', 0, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fibot1135`
--

CREATE TABLE `fibot1135` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fibot1135`
--

INSERT INTO `fibot1135` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Adil Rashid', '4.0', 1, 39, 1),
(2, 'Jofra Archer', '4.0', 0, 33, 4),
(3, 'Mark Wood', '4.0', 1, 25, 1),
(4, 'Chris Jordan', '4.0', 0, 41, 0),
(5, 'Ben Stokes', '3.0', 0, 26, 1),
(6, 'Sam Curran', '1.0', 0, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `Matchno` varchar(255) NOT NULL,
  `Home` varchar(345) NOT NULL,
  `Away` varchar(345) NOT NULL,
  `Venue` varchar(345) NOT NULL,
  `Toss` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`Matchno`, `Home`, `Away`, `Venue`, `Toss`, `Date`) VALUES
('3', 'Afganistan', 'Zimbabwe', 'Sheikh Zayed Stadium, Abu Dhabi', 'Afghanistan won and opt to bat', '2021-03-19'),
('t1131', 'India', 'England', 'Narendra Modi Stadium, Ahemdabad', 'England,elected to field first', '2021-03-12'),
('t1132', 'India', 'England', 'Narendra Modi Stadium, Ahemdabad', 'India,elected to field', '2021-03-14'),
('t1133', 'India', 'England', 'Narendra Modi Stadium, Ahemdabad', 'England,elected to field', '2021-03-16'),
('T1135', 'India', 'England', 'Narendra Modi Stadium, Ahemdabad', 'England,elected to field first', '2021-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `siba3`
--

CREATE TABLE `siba3` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siba3`
--

INSERT INTO `siba3` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Tinashe', 'lbw b Naveen-ul-Haq', 0, 1, '0.00', 5, 1, 4, 0, 0, 148, 10, 17),
(2, 'Tarisai', 'c Najibullah b Amir Hamza', 22, 15, '146.67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Sean Williams', 'b Nabi', 9, 4, '225.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Wesley Madhevere', 'c Usman Ghani b Naveen-ul-Haq', 7, 4, '175.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Sikandar Raza', 'c Amir Hamza b Fareed Malik', 15, 13, '115.38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Richmond Mutumbani', 'lbw b Nabi', 21, 21, '100.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Ryan Burl', 'c Usman Ghani b Rashid Khan', 40, 29, '137.93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Donald Tiripano', 'b Rashid Khan', 24, 14, '171.43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Brandon Mavuta', 'c Naveen-ul-Haq b Rashid Khan', 0, 1, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Blessing Muzarabani', 'b Karim Janat', 0, 1, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Richard Ngarava', 'not out', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sibat1131`
--

CREATE TABLE `sibat1131` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibat1131`
--

INSERT INTO `sibat1131` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Jason Roy', 'lbw b Washington Sundar', 49, 32, '153.13', 3, 0, 0, 0, 0, 130, 2, '15.3'),
(2, 'Jos Buttler', 'lbw b Chahal', 28, 24, '116.67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Dawid Malan', 'not out', 24, 20, '120.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Jonny Bairstow', 'not out', 26, 17, '152.94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Eoin Morgan', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Ben Stokes', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Sam Curran', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Jofra Archer', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Chris Jordan', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Adil Rashid', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Mark Wood', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sibat1132`
--

CREATE TABLE `sibat1132` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibat1132`
--

INSERT INTO `sibat1132` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'KL Rahul', 'c Buttler b S Curran', 0, 6, '0.00', 1, 1, 0, 1, 0, 166, 3, '17.5'),
(2, 'Ishan Kishan', 'lbw Rashid', 56, 32, '175.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Virat Kohli(c)', 'not out', 73, 49, '148.98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Rishabh Pant(wk)', 'c Bairstow b Jordan', 26, 13, '200.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Shreyas Iyer', 'not out', 8, 8, '100.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Suryakumar Yadav', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Hardik Pandya', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Shardul Thakur', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Washington Sundar', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Bhuvneshwar Kumar', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Yuzvendra Chahal', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sibat1133`
--

CREATE TABLE `sibat1133` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibat1133`
--

INSERT INTO `sibat1133` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Jason Roy', 'c Sharma b Chahal', 9, 13, '69.23', 2, 2, 4, 0, 0, 158, 2, '18.2'),
(2, 'Jos Buttler(wk)', 'not out', 83, 52, '159.62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Dawid Malan', 'st Pant b Washington Sundar', 18, 17, '105.88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Jonny Bairstow', 'not out', 40, 28, '142.86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Eoin Morgan(c)', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Ben Stokes', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Sam Curran', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Jofra Archer', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Chris Jordan', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Adil Rashid', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Mark Wood', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sibat1135`
--

CREATE TABLE `sibat1135` (
  `SN` int(11) NOT NULL,
  `Batsman` varchar(200) DEFAULT NULL,
  `Descriptions` varchar(200) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Balls` int(11) DEFAULT NULL,
  `Strike_Rate` decimal(10,2) DEFAULT NULL,
  `Wide` int(11) DEFAULT NULL,
  `LegByes` int(11) DEFAULT NULL,
  `Byes` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `Penalty` int(11) DEFAULT NULL,
  `TotalRuns` int(11) DEFAULT NULL,
  `TotalWickets` int(11) DEFAULT NULL,
  `TotalOvers` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibat1135`
--

INSERT INTO `sibat1135` (`SN`, `Batsman`, `Descriptions`, `Runs`, `Balls`, `Strike_Rate`, `Wide`, `LegByes`, `Byes`, `NB`, `Penalty`, `TotalRuns`, `TotalWickets`, `TotalOvers`) VALUES
(1, 'Jason Roy', 'c S Yadav b H Pandya', 40, 27, '148.15', 4, 2, 0, 0, 0, 177, 8, '20.0'),
(2, 'Jos Buttler(wk)', 'c Rahul b Kumar', 9, 6, '150.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Dawid Malan', 'b Chahar', 14, 17, '82.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Jonny Bairstow', 'c W Sundar b R Chahar', 25, 19, '131.58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Ben Stokes', 'c Yadav b Thakur', 46, 23, '200.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Eoin Morgan(c)', 'c W Sundar b Thakur', 4, 6, '66.67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Sam Curran', 'b H Pandya', 3, 5, '60.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Chris Jordan', 'c H Pandya b Thakur', 12, 9, '133.33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Jofra Archer', 'not out', 18, 8, '225.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Adil Rashid', 'not out', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Mark Wood', 'DNB', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sibo3`
--

CREATE TABLE `sibo3` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibo3`
--

INSERT INTO `sibo3` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Naveen-ul-Haq', '3.0', 0, 28, 2),
(2, 'Mohammad Nabi', '3.0', 0, 20, 2),
(3, 'Amir Hamza', '2.0', 0, 17, 1),
(4, 'Fareed Malik', '3.0', 0, 21, 1),
(5, 'Karim Janat', '3.1', 0, 27, 1),
(6, 'Rashid Khan', '3.0', 0, 30, 3),
(7, '', '0.0', 0, 0, 0),
(8, '', '0.0', 0, 0, 0),
(9, '', '0.0', 0, 0, 0),
(10, '', '0.0', 0, 0, 0),
(11, '', '0.0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sibot1131`
--

CREATE TABLE `sibot1131` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibot1131`
--

INSERT INTO `sibot1131` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Axar Patel', '3.0', 0, 24, 0),
(2, 'Bhuvneshwar Kumar', '2.0', 0, 15, 0),
(3, 'Yuzvendra Chahal', '4.0', 0, 44, 1),
(4, 'Shadrul Thakur', '2.0', 0, 16, 0),
(5, 'Hardik Pandya', '2.0', 0, 13, 0),
(6, 'Washington Sundar', '2.3', 0, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sibot1132`
--

CREATE TABLE `sibot1132` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibot1132`
--

INSERT INTO `sibot1132` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Sam Curran', '4.0', 1, 22, 1),
(2, 'Jofra Archer', '4.0', 0, 24, 0),
(3, 'Chris Jordan', '2.5', 0, 38, 1),
(4, 'Tom Curran', '2.0', 0, 26, 0),
(5, 'Ben Stokes', '1.0', 0, 17, 0),
(6, 'Adil Rashid', '4.0', 0, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sibot1133`
--

CREATE TABLE `sibot1133` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibot1133`
--

INSERT INTO `sibot1133` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Bhuvneshwar Kumar', '4.0', 0, 27, 0),
(2, 'Shardul Thakur', '3.2', 0, 36, 0),
(3, 'Yuzvendra Chahal', '4.0', 0, 41, 1),
(4, 'Hardik Pandya', '3.0', 0, 22, 0),
(5, 'Washington Sundar', '4.0', 0, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sibot1135`
--

CREATE TABLE `sibot1135` (
  `SN` int(11) NOT NULL,
  `Bowler` varchar(200) DEFAULT NULL,
  `Overs` decimal(10,1) DEFAULT NULL,
  `Maiden` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sibot1135`
--

INSERT INTO `sibot1135` (`SN`, `Bowler`, `Overs`, `Maiden`, `Runs`, `Wickets`) VALUES
(1, 'Bhuvneshwar Kumar', '4.0', 1, 30, 1),
(2, 'Hardik Pandya', '4.0', 0, 16, 2),
(3, 'Shardul Thakur', '4.0', 0, 42, 3),
(4, 'Washington Sundar', '4.0', 0, 52, 0),
(5, 'Rahul Chahar', '4.0', 0, 35, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tmid`
--

CREATE TABLE `tmid` (
  `sn` int(11) NOT NULL,
  `temid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tmid`
--

INSERT INTO `tmid` (`sn`, `temid`) VALUES
(1, 'T1135');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_uid` varchar(345) NOT NULL,
  `user_pwd` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_uid`, `user_pwd`) VALUES
(1, 'Lambu23', 'Lambu23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fiba3`
--
ALTER TABLE `fiba3`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibat1131`
--
ALTER TABLE `fibat1131`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibat1132`
--
ALTER TABLE `fibat1132`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibat1133`
--
ALTER TABLE `fibat1133`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibat1135`
--
ALTER TABLE `fibat1135`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibo3`
--
ALTER TABLE `fibo3`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibot1131`
--
ALTER TABLE `fibot1131`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibot1132`
--
ALTER TABLE `fibot1132`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibot1133`
--
ALTER TABLE `fibot1133`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `fibot1135`
--
ALTER TABLE `fibot1135`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`Matchno`);

--
-- Indexes for table `siba3`
--
ALTER TABLE `siba3`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibat1131`
--
ALTER TABLE `sibat1131`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibat1132`
--
ALTER TABLE `sibat1132`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibat1133`
--
ALTER TABLE `sibat1133`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibat1135`
--
ALTER TABLE `sibat1135`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibo3`
--
ALTER TABLE `sibo3`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibot1131`
--
ALTER TABLE `sibot1131`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibot1132`
--
ALTER TABLE `sibot1132`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibot1133`
--
ALTER TABLE `sibot1133`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `sibot1135`
--
ALTER TABLE `sibot1135`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `tmid`
--
ALTER TABLE `tmid`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fiba3`
--
ALTER TABLE `fiba3`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fibat1131`
--
ALTER TABLE `fibat1131`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fibat1132`
--
ALTER TABLE `fibat1132`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fibat1133`
--
ALTER TABLE `fibat1133`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fibat1135`
--
ALTER TABLE `fibat1135`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fibo3`
--
ALTER TABLE `fibo3`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fibot1131`
--
ALTER TABLE `fibot1131`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `fibot1132`
--
ALTER TABLE `fibot1132`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fibot1133`
--
ALTER TABLE `fibot1133`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fibot1135`
--
ALTER TABLE `fibot1135`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `siba3`
--
ALTER TABLE `siba3`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sibat1131`
--
ALTER TABLE `sibat1131`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sibat1132`
--
ALTER TABLE `sibat1132`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sibat1133`
--
ALTER TABLE `sibat1133`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sibat1135`
--
ALTER TABLE `sibat1135`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sibo3`
--
ALTER TABLE `sibo3`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sibot1131`
--
ALTER TABLE `sibot1131`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sibot1132`
--
ALTER TABLE `sibot1132`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sibot1133`
--
ALTER TABLE `sibot1133`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sibot1135`
--
ALTER TABLE `sibot1135`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
