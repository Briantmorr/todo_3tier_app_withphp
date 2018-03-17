-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 17, 2018 at 06:14 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `118Example`
--

-- --------------------------------------------------------

--
-- Table structure for table `todoData`
--

CREATE TABLE `todoData` (
  `ID` mediumint(8) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `dueDate` datetime NOT NULL,
  `status` enum('active','inactive','complete','deleted') NOT NULL,
  `owner` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todoData`
--

INSERT INTO `todoData` (`ID`, `title`, `description`, `dueDate`, `status`, `owner`, `created`, `updated`) VALUES
(1, 'get eggs', 'Go to the store and get some jumbo eggs', '2018-03-18 20:00:00', 'active', 1, '2018-03-17 09:55:26', '2018-03-17 16:55:26'),
(2, 'wash the dog', 'he is a damn stinky mutt', '2018-04-12 09:00:00', 'active', 1, '2018-03-17 09:55:26', '2018-03-17 16:55:26'),
(3, 'Get christmas presents', 'get presents for all of the family', '2017-12-24 09:00:00', 'complete', 1, '2018-03-17 09:55:26', '2018-03-17 16:55:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todoData`
--
ALTER TABLE `todoData`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todoData`
--
ALTER TABLE `todoData`
  MODIFY `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;