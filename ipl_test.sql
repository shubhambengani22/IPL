-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 05:00 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipl_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `season_2018`
--

CREATE TABLE `season_2018` (
  `team1` varchar(50) NOT NULL,
  `team2` varchar(50) NOT NULL,
  `predicted_winner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season_2018`
--

INSERT INTO `season_2018` (`team1`, `team2`, `predicted_winner`) VALUES
('Mumbai Indians', 'Chennai Super Kings', 'Mumbai Indians'),
('Delhi Daredevils', 'Kings XI Punjab', 'Kings XI Punjab'),
('Royal Challengers Bangalore', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Rajasthan Royals', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Kolkata Knight Riders', 'Chennai Super Kings', 'Chennai Super Kings'),
('Rajasthan Royals', 'Delhi Daredevils', 'Rajasthan Royals'),
('Mumbai Indians', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Kings XI Punjab', 'Royal Challengers Bangalore', 'Kings XI Punjab'),
('Mumbai Indians', 'Delhi Daredevils', 'Mumbai Indians'),
('Kolkata Knight Riders', 'Sunrisers Hyderabad', 'Kolkata Knight Riders'),
('Rajasthan Royals', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Kings XI Punjab', 'Chennai Super Kings', 'Kings XI Punjab'),
('Kolkata Knight Riders', 'Delhi Daredevils', 'Kolkata Knight Riders'),
('Mumbai Indians', 'Royal Challengers Bangalore', 'Mumbai Indians'),
('Rajasthan Royals', 'Kolkata Knight Riders', 'Rajasthan Royals'),
('Kings XI Punjab', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Chennai Super Kings', 'Rajasthan Royals', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Kings XI Punjab', 'Kolkata Knight Riders'),
('Delhi Daredevils', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Chennai Super Kings', 'Sunrisers Hyderabad', 'Chennai Super Kings'),
('Mumbai Indians', 'Rajasthan Royals', 'Mumbai Indians'),
('Kings XI Punjab', 'Delhi Daredevils', 'Delhi Daredevils'),
('Sunrisers Hyderabad', 'Mumbai Indians', 'Mumbai Indians'),
('Royal Challengers Bangalore', 'Chennai Super Kings', 'Chennai Super Kings'),
('Sunrisers Hyderabad', 'Kings XI Punjab', 'Sunrisers Hyderabad'),
('Delhi Daredevils', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Chennai Super Kings', 'Mumbai Indians', 'Chennai Super Kings'),
('Sunrisers Hyderabad', 'Rajasthan Royals', 'Rajasthan Royals'),
('Royal Challengers Bangalore', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Chennai Super Kings', 'Delhi Daredevils', 'Chennai Super Kings'),
('Royal Challengers Bangalore', 'Mumbai Indians', 'Mumbai Indians'),
('Delhi Daredevils', 'Rajasthan Royals', 'Rajasthan Royals'),
('Chennai Super Kings', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Kings XI Punjab', 'Mumbai Indians', 'Kings XI Punjab'),
('Royal Challengers Bangalore', 'Chennai Super Kings', 'Chennai Super Kings'),
('Delhi Daredevils', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Mumbai Indians', 'Kolkata Knight Riders', 'Mumbai Indians'),
('Rajasthan Royals', 'Kings XI Punjab', 'Rajasthan Royals'),
('Sunrisers Hyderabad', 'Royal Challengers Bangalore', 'Sunrisers Hyderabad'),
('Rajasthan Royals', 'Kings XI Punjab', 'Rajasthan Royals'),
('Mumbai Indians', 'Kolkata Knight Riders', 'Mumbai Indians'),
('Delhi Daredevils', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Chennai Super Kings', 'Rajasthan Royals', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Kings XI Punjab', 'Kolkata Knight Riders'),
('Delhi Daredevils', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Sunrisers Hyderabad', 'Chennai Super Kings', 'Chennai Super Kings'),
('Mumbai Indians', 'Rajasthan Royals', 'Mumbai Indians'),
('Kings XI Punjab', 'Royal Challengers Bangalore', 'Kings XI Punjab'),
('Rajasthan Royals', 'Kolkata Knight Riders', 'Rajasthan Royals'),
('Mumbai Indians', 'Kings XI Punjab', 'Mumbai Indians'),
('Royal Challengers Bangalore', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Delhi Daredevils', 'Chennai Super Kings', 'Chennai Super Kings'),
('Rajasthan Royals', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Sunrisers Hyderabad', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Delhi Daredevils', 'Mumbai Indians', 'Delhi Daredevils'),
('Kings XI Punjab', 'Chennai Super Kings', 'Kings XI Punjab'),
('Sunrisers Hyderabad', 'Chennai Super Kings', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Rajasthan Royals', 'Rajasthan Royals'),
('Sunrisers Hyderabad', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Sunrisers Hyderabad', 'Chennai Super Kings', 'Chennai Super Kings'),
('Chennai Super Kings', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Mumbai Indians', 'Rajasthan Royals', 'Mumbai Indians'),
('Chennai Super Kings', 'Mumbai Indians', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Chennai Super Kings', 'Chennai Super Kings');

-- --------------------------------------------------------

--
-- Table structure for table `season_2019`
--

CREATE TABLE `season_2019` (
  `team1` varchar(50) NOT NULL,
  `team2` varchar(50) NOT NULL,
  `predicted_winner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season_2019`
--

INSERT INTO `season_2019` (`team1`, `team2`, `predicted_winner`) VALUES
('Royal Challengers Bangalore', 'Chennai Super Kings', 'Chennai Super Kings'),
('Sunrisers Hyderabad', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Delhi Capitals', 'Mumbai Indians', 'Delhi Daredevils'),
('Kings XI Punjab', 'Rajasthan Royals', 'Kings XI Punjab'),
('Delhi Capitals', 'Chennai Super Kings', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Kings XI Punjab', 'Kolkata Knight Riders'),
('Mumbai Indians', 'Royal Challengers Bangalore', 'Mumbai Indians'),
('Rajasthan Royals', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Mumbai Indians', 'Kings XI Punjab', 'Mumbai Indians'),
('Kolkata Knight Riders', 'Delhi Capitals', 'Kolkata Knight Riders'),
('Sunrisers Hyderabad', 'Royal Challengers Bangalore', 'Sunrisers Hyderabad'),
('Chennai Super Kings', 'Rajasthan Royals', 'Chennai Super Kings'),
('Kings XI Punjab', 'Delhi Capitals', 'Delhi Daredevils'),
('Royal Challengers Bangalore', 'Rajasthan Royals', 'Rajasthan Royals'),
('Mumbai Indians', 'Chennai Super Kings', 'Mumbai Indians'),
('Delhi Capitals', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Royal Challengers Bangalore', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Chennai Super Kings', 'Kings XI Punjab', 'Chennai Super Kings'),
('Mumbai Indians', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Royal Challengers Bangalore', 'Delhi Capitals', 'Royal Challengers Bangalore'),
('Rajasthan Royals', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Sunrisers Hyderabad', 'Kings XI Punjab', 'Sunrisers Hyderabad'),
('Kolkata Knight Riders', 'Chennai Super Kings', 'Chennai Super Kings'),
('Kings XI Punjab', 'Mumbai Indians', 'Kings XI Punjab'),
('Rajasthan Royals', 'Chennai Super Kings', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Delhi Capitals', 'Kolkata Knight Riders'),
('Mumbai Indians', 'Rajasthan Royals', 'Mumbai Indians'),
('Kings XI Punjab', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Kolkata Knight Riders', 'Chennai Super Kings', 'Chennai Super Kings'),
('Delhi Capitals', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Royal Challengers Bangalore', 'Mumbai Indians', 'Mumbai Indians'),
('Kings XI Punjab', 'Rajasthan Royals', 'Kings XI Punjab'),
('Chennai Super Kings', 'Sunrisers Hyderabad', 'Chennai Super Kings'),
('Mumbai Indians', 'Delhi Capitals', 'Mumbai Indians'),
('Royal Challengers Bangalore', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Mumbai Indians', 'Rajasthan Royals', 'Mumbai Indians'),
('Kings XI Punjab', 'Delhi Capitals', 'Delhi Daredevils'),
('Kolkata Knight Riders', 'Sunrisers Hyderabad', 'Kolkata Knight Riders'),
('Royal Challengers Bangalore', 'Chennai Super Kings', 'Chennai Super Kings'),
('Rajasthan Royals', 'Delhi Capitals', 'Rajasthan Royals'),
('Sunrisers Hyderabad', 'Chennai Super Kings', 'Chennai Super Kings'),
('Royal Challengers Bangalore', 'Kings XI Punjab', 'Kings XI Punjab'),
('Kolkata Knight Riders', 'Rajasthan Royals', 'Kolkata Knight Riders'),
('Mumbai Indians', 'Chennai Super Kings', 'Mumbai Indians'),
('Sunrisers Hyderabad', 'Rajasthan Royals', 'Rajasthan Royals'),
('Delhi Capitals', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Kolkata Knight Riders', 'Mumbai Indians', 'Mumbai Indians'),
('Sunrisers Hyderabad', 'Kings XI Punjab', 'Sunrisers Hyderabad'),
('Royal Challengers Bangalore', 'Rajasthan Royals', 'Rajasthan Royals'),
('Chennai Super Kings', 'Delhi Capitals', 'Chennai Super Kings'),
('Mumbai Indians', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Kings XI Punjab', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Rajasthan Royals', 'Delhi Capitals', 'Rajasthan Royals'),
('Sunrisers Hyderabad', 'Royal Challengers Bangalore', 'Sunrisers Hyderabad'),
('Chennai Super Kings', 'Kings XI Punjab', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Mumbai Indians', 'Mumbai Indians'),
('Chennai Super Kings', 'Mumbai Indians', 'Mumbai Indians'),
('Sunrisers Hyderabad', 'Delhi Capitals', 'Delhi Daredevils'),
('Delhi Capitals', 'Chennai Super Kings', 'Chennai Super Kings'),
('Mumbai Indians', 'Chennai Super Kings', 'Mumbai Indians'),
('Chennai Super Kings', 'Mumbai Indians', 'Mumbai Indians'),
('Kolkata Knight Riders', 'Sunrisers Hyderabad', 'Kolkata Knight Riders'),
('Chennai Super Kings', 'Kolkata Knight Riders', 'Chennai Super Kings'),
('Mumbai Indians', 'Chennai Super Kings', 'Mumbai Indians');

-- --------------------------------------------------------

--
-- Table structure for table `season_2020`
--

CREATE TABLE `season_2020` (
  `team1` varchar(50) NOT NULL,
  `team2` varchar(50) NOT NULL,
  `predicted_winner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season_2020`
--

INSERT INTO `season_2020` (`team1`, `team2`, `predicted_winner`) VALUES
('Chennai Super Kings', 'Sunrisers Hyderabad', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Rajasthan Royals', 'Rajasthan Royals'),
('Sunrisers Hyderabad', 'Mumbai Indians', 'Mumbai Indians'),
('Chennai Super Kings', 'Kings XI Punjab', 'Chennai Super Kings'),
('Delhi Capitals', 'Mumbai Indians', 'Delhi Daredevils'),
('Sunrisers Hyderabad', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Rajasthan Royals', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Delhi Capitals', 'Chennai Super Kings', 'Chennai Super Kings'),
('Royal Challengers Bangalore', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Mumbai Indians', 'Kings XI Punjab', 'Mumbai Indians'),
('Kolkata Knight Riders', 'Rajasthan Royals', 'Rajasthan Royals'),
('Kings XI Punjab', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Mumbai Indians', 'Rajasthan Royals', 'Rajasthan Royals'),
('Chennai Super Kings', 'Sunrisers Hyderabad', 'Chennai Super Kings'),
('Delhi Capitals', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Kings XI Punjab', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Rajasthan Royals', 'Chennai Super Kings', 'Chennai Super Kings'),
('Delhi Capitals', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Kolkata Knight Riders', 'Mumbai Indians', 'Mumbai Indians'),
('Rajasthan Royals', 'Kings XI Punjab', 'Rajasthan Royals'),
('Sunrisers Hyderabad', 'Royal Challengers Bangalore', 'Sunrisers Hyderabad'),
('Kings XI Punjab', 'Rajasthan Royals', 'Kings XI Punjab'),
('Mumbai Indians', 'Kolkata Knight Riders', 'Mumbai Indians'),
('Sunrisers Hyderabad', 'Delhi Capitals', 'Sunrisers Hyderabad'),
('Chennai Super Kings', 'Royal Challengers Bangalore', 'Chennai Super Kings'),
('Kings XI Punjab', 'Mumbai Indians', 'Mumbai Indians'),
('Kolkata Knight Riders', 'Chennai Super Kings', 'Chennai Super Kings'),
('Delhi Capitals', 'Rajasthan Royals', 'Rajasthan Royals'),
('Royal Challengers Bangalore', 'Mumbai Indians', 'Mumbai Indians'),
('Chennai Super Kings', 'Delhi Capitals', 'Chennai Super Kings'),
('Royal Challengers Bangalore', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Rajasthan Royals', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Chennai Super Kings', 'Mumbai Indians', 'Mumbai Indians'),
('Delhi Capitals', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Sunrisers Hyderabad', 'Kings XI Punjab', 'Sunrisers Hyderabad'),
('Royal Challengers Bangalore', 'Chennai Super Kings', 'Chennai Super Kings'),
('Mumbai Indians', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Delhi Capitals', 'Kings XI Punjab', 'Kings XI Punjab'),
('Rajasthan Royals', 'Kings XI Punjab', 'Rajasthan Royals'),
('Sunrisers Hyderabad', 'Chennai Super Kings', 'Chennai Super Kings'),
('Royal Challengers Bangalore', 'Delhi Capitals', 'Royal Challengers Bangalore'),
('Kolkata Knight Riders', 'Kings XI Punjab', 'Kolkata Knight Riders'),
('Chennai Super Kings', 'Rajasthan Royals', 'Chennai Super Kings'),
('Kings XI Punjab', 'Sunrisers Hyderabad', 'Sunrisers Hyderabad'),
('Rajasthan Royals', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Kolkata Knight Riders', 'Delhi Capitals', 'Kolkata Knight Riders'),
('Kings XI Punjab', 'Chennai Super Kings', 'Kings XI Punjab'),
('Royal Challengers Bangalore', 'Rajasthan Royals', 'Rajasthan Royals'),
('Kolkata Knight Riders', 'Sunrisers Hyderabad', 'Kolkata Knight Riders'),
('Mumbai Indians', 'Delhi Capitals', 'Mumbai Indians'),
('Royal Challengers Bangalore', 'Kings XI Punjab', 'Kings XI Punjab'),
('Sunrisers Hyderabad', 'Mumbai Indians', 'Mumbai Indians'),
('Rajasthan Royals', 'Delhi Capitals', 'Rajasthan Royals'),
('Chennai Super Kings', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Sunrisers Hyderabad', 'Rajasthan Royals', 'Rajasthan Royals'),
('Kolkata Knight Riders', 'Royal Challengers Bangalore', 'Royal Challengers Bangalore'),
('Kings XI Punjab', 'Delhi Capitals', 'Delhi Daredevils'),
('Chennai Super Kings', 'Kolkata Knight Riders', 'Kolkata Knight Riders'),
('Mumbai Indians', 'Rajasthan Royals', 'Rajasthan Royals'),
('Chennai Super Kings', 'Rajasthan Royals', 'Chennai Super Kings'),
('Kolkata Knight Riders', 'Chennai Super Kings', 'Chennai Super Kings');

-- --------------------------------------------------------

--
-- Table structure for table `season_winner`
--

CREATE TABLE `season_winner` (
  `user_id` int(11) NOT NULL,
  `season` varchar(4) NOT NULL,
  `predicted_winner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season_winner`
--

INSERT INTO `season_winner` (`user_id`, `season`, `predicted_winner`) VALUES
(10, '2018', 'Chennai Super Kings'),
(10, '2019', 'Mumbai Indians'),
(10, '2020', 'Chennai Super Kings');

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `user_id` int(11) NOT NULL,
  `query_id` int(10) NOT NULL,
  `team1` varchar(50) NOT NULL,
  `team2` varchar(50) NOT NULL,
  `toss_winner` varchar(50) NOT NULL,
  `toss_decision` varchar(50) NOT NULL,
  `dl_applied` int(1) NOT NULL,
  `win_by_runs` int(5) NOT NULL,
  `win_by_wickets` int(5) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `predicted_winner` varchar(50) NOT NULL DEFAULT 'yet_to_predict'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`user_id`, `query_id`, `team1`, `team2`, `toss_winner`, `toss_decision`, `dl_applied`, `win_by_runs`, `win_by_wickets`, `venue`, `predicted_winner`) VALUES
(10, 23, 'Mumbai Indians', 'Kings XI Punjab', 'Kings XI Punjab', 'bat', 0, 21, 0, 'Maharashtra Cricket Association Stadium', 'Mumbai Indians'),
(11, 24, 'Mumbai Indians', 'Kings XI Punjab', 'Kings XI Punjab', 'bat', 0, 21, 0, 'Maharashtra Cricket Association Stadium', 'Mumbai Indians');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(6, 'Sumit Kumar', 'sumitkj@gmail.com', 'sumit'),
(10, 'Shubham Bengani', 'shubham@gmail.com', 'shubham'),
(11, 'Nivedha P', 'nivedha@gmail.com', 'nivedha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`query_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test1`
--
ALTER TABLE `test1`
  MODIFY `query_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
