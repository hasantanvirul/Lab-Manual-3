-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 08:41 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `companysss`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dname` varchar(20) NOT NULL,
  `dnumber` int(1) NOT NULL,
  `mgrssn` int(9) NOT NULL,
  `mgrstartdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dname`, `dnumber`, `mgrssn`, `mgrstartdate`) VALUES
('Headquarters', 1, 888665555, '1981-01-19'),
('Administration', 4, 987654321, '1996-01-01'),
('Research', 5, 333445555, '1988-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `essn` int(9) NOT NULL,
  `dependent_name` varchar(10) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `bdate` date NOT NULL,
  `relationship` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES
(123456789, 'Alice', 'F', '1988-12-30', 'Daughter'),
(123456789, 'Elizabeth', 'F', '1967-05-05', 'Spouse'),
(123456789, 'Michael', 'M', '1988-01-04', 'Son'),
(333445555, 'Alice', 'F', '1986-04-04', 'Daughter'),
(333445555, 'Joy', 'F', '1958-05-03', 'Spouse'),
(333445555, 'Theodore', 'M', '1983-10-25', 'Son'),
(987654321, 'Abner', 'M', '1942-02-28', 'Spouse');

-- --------------------------------------------------------

--
-- Table structure for table `dept_locations`
--

CREATE TABLE `dept_locations` (
  `dnumber` int(1) NOT NULL,
  `dlocation` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dept_locations`
--

INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Houston'),
(5, 'Sugarland');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `fname` varchar(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `ssn` int(9) NOT NULL,
  `bdate` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `salary` decimal(5,0) NOT NULL,
  `superssn` int(9) DEFAULT NULL,
  `dno` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`fname`, `lname`, `ssn`, `bdate`, `address`, `sex`, `salary`, `superssn`, `dno`) VALUES
('John', 'Smith', 123456789, '1965-01-09', '731 Fondren, Houston TX', 'M', '30000', 333445555, 5),
('Franklin', 'Wong', 333445555, '1965-12-08', '638 Voss, Houston TX', 'M', '40000', 888665555, 5),
('Joyce', 'English', 453453453, '1972-07-31', '5631 Rice, Houston TX', 'F', '25000', 333445555, 5),
('Ramesh', 'Narayan', 666884444, '1962-09-15', '975 Fire Oak, Humble TX', 'M', '38000', 333445555, 5),
('James', 'Borg', 888665555, '1937-11-10', '450 Stone, Houston TX', 'M', '55000', NULL, 1),
('Jennifer', 'Wallace', 987654321, '1941-06-20', '291 Berry, Bellaire TX', 'F', '43000', 888665555, 4),
('Ahmad', 'Jabbar', 987987987, '1969-03-29', '980 Dallas, Houston TX', 'M', '25000', 987654321, 4),
('Alicia', 'Zelaya', 999887777, '1968-01-19', '3321 Castle, Spring TX', 'F', '25000', 987654321, 4);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pname` varchar(20) NOT NULL,
  `pnumber` int(2) NOT NULL,
  `plocation` varchar(20) NOT NULL,
  `dnum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pname`, `pnumber`, `plocation`, `dnum`) VALUES
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Newbenefits', 30, 'Stafford', 4);

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `essn` int(9) NOT NULL,
  `pno` int(2) NOT NULL,
  `hours` decimal(5,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES
(123456789, 1, '32.5'),
(123456789, 2, '7.5'),
(333445555, 2, '10.0'),
(333445555, 3, '10.0'),
(333445555, 10, '10.0'),
(333445555, 20, '10.0'),
(453453453, 1, '20.0'),
(453453453, 2, '20.0'),
(666884444, 3, '40.0'),
(888665555, 20, NULL),
(987654321, 20, '15.0'),
(987654321, 30, '20.0'),
(987987987, 10, '35.0'),
(987987987, 30, '5.0'),
(999887777, 10, '10.0'),
(999887777, 30, '30.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dnumber`),
  ADD UNIQUE KEY `dname` (`dname`),
  ADD KEY `depemp` (`mgrssn`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`essn`,`dependent_name`);

--
-- Indexes for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD PRIMARY KEY (`dnumber`,`dlocation`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ssn`),
  ADD KEY `dno` (`dno`),
  ADD KEY `empemp` (`superssn`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pnumber`),
  ADD UNIQUE KEY `pname` (`pname`),
  ADD KEY `dnum` (`dnum`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD PRIMARY KEY (`essn`,`pno`),
  ADD KEY `pno` (`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `depemp` FOREIGN KEY (`mgrssn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD CONSTRAINT `dept_locations_ibfk_1` FOREIGN KEY (`dnumber`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `empemp` FOREIGN KEY (`superssn`) REFERENCES `employee` (`ssn`),
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`dnum`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `works_on`
--
ALTER TABLE `works_on`
  ADD CONSTRAINT `works_on_ibfk_1` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`),
  ADD CONSTRAINT `works_on_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `project` (`pnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
