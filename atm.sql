-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2015 at 12:54 AM
-- Server version: 5.6.24-0ubuntu2
-- PHP Version: 5.6.4-4ubuntu6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `atm`
--

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE IF NOT EXISTS `atm` (
`ATMID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `LeftMoney` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`ATMID`, `Address`, `LeftMoney`) VALUES
(1, 'Nga Tu Bay Hien, Tan Binh, TP. HCM', '1000000000'),
(2, '227 Nguyen Van Cu, Quan 5, TP. HCM', '2000000000'),
(3, 'Nha rieng Ta Minh Tien', '4000000000');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE IF NOT EXISTS `card` (
  `CardNo` char(10) NOT NULL,
  `CustID` int(11) NOT NULL,
  `PIN` char(32) NOT NULL,
  `Balance` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`CardNo`, `CustID`, `PIN`, `Balance`) VALUES
('0000000001', 1, '1111', '50000000'),
('0000000002', 2, '0000', '50000000'),
('1000000001', 1, '1111', '20000000'),
('1000000002', 2, '1111', '20000000');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`CustID` int(11) NOT NULL,
  `CustName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustID`, `CustName`, `Email`, `Address`) VALUES
(1, 'Ta Minh Tien', 'taminhtien1993@gmail.com', '1/4 Ap Dinh, xa Tan Xuan, huyen Hoc Mon, TP. HCM'),
(2, 'Nguyen Quoc Vuong', 'vuongnq@gmail.com', 'Le Dai Hanh, phuong 11, quan 11, TP. HCM');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
`LogID` int(11) NOT NULL,
  `LogDate` datetime NOT NULL,
  `ATMID` int(11) NOT NULL,
  `CardNo` char(10) NOT NULL,
  `Ammount` mediumtext NOT NULL,
  `Details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`LogID`, `LogDate`, `ATMID`, `CardNo`, `Ammount`, `Details`) VALUES
(1, '2015-05-25 08:06:26', 1, '0000000001', '2000000', 'Rút 2 tri?u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
 ADD PRIMARY KEY (`ATMID`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
 ADD PRIMARY KEY (`CardNo`), ADD KEY `CustID` (`CustID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`CustID`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
 ADD PRIMARY KEY (`LogID`), ADD KEY `ATMID` (`ATMID`), ADD KEY `CardNo` (`CardNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
MODIFY `ATMID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `CustID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `card`
--
ALTER TABLE `card`
ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`ATMID`) REFERENCES `atm` (`ATMID`),
ADD CONSTRAINT `log_ibfk_2` FOREIGN KEY (`CardNo`) REFERENCES `card` (`CardNo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
