-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 09:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mobile` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` text NOT NULL,
  `profile` text NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `mobile`, `email`, `password`, `profile`, `delete_status`) VALUES
(3, 'Nikhil', 'Bhalerao', '+919423979339', 'ndbhalerao91@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'download (1).png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `specilization` text NOT NULL,
  `about` text NOT NULL,
  `mobile` text NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `fname`, `lname`, `specilization`, `about`, `mobile`, `email`) VALUES
(1, 'suhas', 'and dharaneeshwar', 'cse', 'we solved many competetive programming questions', '+919603091910', 'suhasgurram@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `r_id`, `username`, `password`) VALUES
(20, 46, '1130', '4a213d37242bdcad8e7300e202e7caa4'),
(21, 47, '1131', 'fe709c654eac84d5239d1a12a4f71877'),
(22, 48, '1132', '571e0f7e2d992e738adff8b1bd43a521'),
(23, 49, '1132', '571e0f7e2d992e738adff8b1bd43a521');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `branch` text NOT NULL,
  `sem` text NOT NULL,
  `subject` text NOT NULL,
  `question` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `answer` text NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `branch`, `sem`, `subject`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `delete_status`) VALUES
(41, 'computer', '4', 'COMPUTER NETWORKS', 'Which one of the following is not used to generate dynamic web pages?', 'PHP', 'asp.net', 'jsp', 'None of the mentioned', 'option_d', 0),
(42, 'computer', '4', 'COMPUTER NETWORKS', 'What is a web browser ?', 'a program that can display a web page', 'a program used to view html documents', 'it enables user to access the resources of internet', 'all of the mentioned', 'option_d', 0),
(43, 'computer', '4', 'COMPUTER NETWORKS', 'Physical or logical arrangement of network is', 'topology', 'routing', 'networking', 'none of the mentioned', 'option_a', 0),
(44, 'computer', '4', 'COMPUTER NETWORKS', 'In this topology there is a central controller or hub', 'star', 'mesh', 'ring', 'bus', 'option_c', 0),
(45, 'computer', '4', 'COMPUTER NETWORKS', 'This topology requires multipoint connection', 'star', 'mesh', 'ring', 'bus', 'option_d', 0),
(46, 'computer', '4', 'COMPUTER NETWORKS', 'Data communication system spanning states, countries, or the whole world is', 'lan', 'man', 'wan', 'none of the mentioned', 'option_c', 0),
(47, 'computer', '4', 'COMPUTER NETWORKS', 'Data communication system within a building or campus is', 'lan', 'man', 'wan', 'None of the mentioned', 'option_a', 0),
(48, 'computer', '4', 'COMPUTER NETWORKS', 'Ping can', 'Measure round-trip time', 'Report packet loss', 'Report latency', 'All of the mentioned', 'option_d', 0),
(49, 'computer', '4', 'COMPUTER NETWORKS', 'If you want to find the number of routers between a source and destination, the utility to be used is', 'route', 'Ipconfig', 'Ifconfig', 'Traceroute', 'option_d', 0),
(50, 'computer', '4', 'COMPUTER NETWORKS', 'This allows to check if a domain is available for registration.', 'Domain Check', 'Domain Dossier', 'Domain Lookup', 'None of the mentioned', 'option_a', 0),
(51, 'computer', '4', 'COMPUTER NETWORKS', 'Which of the following is not applicable for IP ?', 'Error reporting', 'Handle addressing conventions', 'Packet handling conventions', 'all of the mentioned', 'option_d', 0),
(52, 'computer', '4', 'COMPUTER NETWORKS', 'The data field can carry which of the following?', 'TCP segemnt', 'UDP segemnt', 'ICMP messages', 'None of the mentioned', 'option_c', 0),
(53, 'computer', '4', 'COMPUTER NETWORKS', 'The TTL field has value 10. How many routers (max) can process this datagram ?', '11', '5', '10', '9', 'option_a', 0),
(54, 'computer', '4', 'COMPUTER NETWORKS', 'Who is father of C Language?', 'Bjarne Stroustrup', 'Dennis Ritchie', 'James A. Gosling', 'Dr. E.F. Codd', 'option_b', 0),
(55, 'computer', '4', 'COMPUTER NETWORKS', 'C programs are converted into machine language with the help of', 'An Editor', 'a compiler', 'an operating system', 'none of the above', 'option_b', 0),
(56, 'computer', '4', 'COMPUTER NETWORKS', 'A C variable cannot start with', 'An alphabet', 'a number', 'A special symbol other than underscore', 'both (b) and (c)', 'option_d', 0),
(57, 'computer', '4', 'COMPUTER NETWORKS', 'Which of the following is allowed in a C Arithmetic instruction', '[]', '{}', '()', 'none of the above', 'option_c', 0),
(58, 'computer', '4', 'COMPUTER NETWORKS', 'Which of the following shows the correct hierarchy of arithmetic operations in C', '/ + * -', '* - / +', '+ - / *', '* / + -', 'option_d', 0),
(59, 'computer', '4', 'COMPUTER NETWORKS', 'What is an array?', 'An array is a collection of variables that are of the dissimilar data type', 'An array is a collection of variables that are of the same data type', 'An array is not a collection of variables that are of the same data type', 'None of the above', 'option_b', 0),
(60, 'computer', '4', 'COMPUTER NETWORKS', 'What is right way to Initialization array?', 'int num[6] = { 2, 4, 12, 5, 45, 5 } ;', 'int n{} = { 2, 4, 12, 5, 45, 5 } ;', 'int n{6} = { 2, 4, 12 } ;', 'int n(6) = { 2, 4, 12, 5, 45, 5 } ;', 'option_a', 0),
(61, 'computer', '4', 'COMPUTER NETWORKS', 'What is the right way to access value of structure variable book{ price, page } ?', 'printf(\"%d%d\", book.price, book.page);', 'printf(\"%d%d\", price.book, page.book);', 'printf(\"%d%d\", price::book, page::book);', 'printf(\"%d%d\", price->book, page->book);', 'option_a', 0),
(62, 'computer', '4', 'COMPUTER NETWORKS', 'Bitwise operators can operate upon ?', 'double and chars', 'floats and doubles', 'ints and floats', 'ints and chars', 'option_d', 0),
(63, 'computer', '4', 'COMPUTER NETWORKS', 'What is C Tokens ?', 'The smallest individual units of c program', 'The basic element recognized by the compiler', 'The largest individual units of program', 'Both (a) & (b)', 'option_d', 0),
(64, 'computer', '4', 'COMPUTER NETWORKS', 'What is Keywords ?', 'Keywords have some predefine meanings and these meanings can be changed', 'Keywords have some unknown meanings and these meanings cannot be changed', 'Keywords have some predefine meanings and these meanings cannot be changed', 'None of the above', 'option_c', 0),
(65, 'computer', '4', 'COMPUTER NETWORKS', 'What is constant ?', 'Constants have fixed values that do not change during the execution of a program', 'Constants have fixed values that change during the execution of a program', 'Constants have unknown values that may be change during the execution of a program', 'None of the above', 'option_d', 0),
(66, 'computer', '4', 'COMPUTER NETWORKS', 'Which is the right way to declare constant in C ?', 'int constant var =10;', 'int const var = 10;', 'const int var = 10;', 'B & C Both', 'option_d', 0),
(67, 'computer', '4', 'COMPUTER NETWORKS', 'Which operators are known as Ternary Operator ?', '::, ?', '?, :', '?, ;;', 'None of the above', 'option_b', 0),
(68, 'computer', '4', 'COMPUTER NETWORKS', 'In switch statement, each case instance value must be _______?', 'Constant', 'Variable', 'Special Symbol', 'None of the above', 'option_a', 0),
(69, 'computer', '4', 'COMPUTER NETWORKS', 'What is the work of break keyword ?', 'Halt execution of program', 'Restart execution of program', 'Exit from loop or switch statement', 'None of the above', 'option_c', 0),
(70, 'computer', '4', 'COMPUTER NETWORKS', 'what is function ?', 'Function is a block of statements that perform some specific task', 'Function is the fundamental modular unit. A function is usually designed to perform a specific task', 'Function is a block of code that performs a specific task. It has a name and it is reusable', 'All the above', 'option_d', 0),
(149, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Which one of the following extends a private network across public networks?', 'local area network', 'virtual private network', 'enterprise private network', 'storage area network', 'option_b', 0),
(150, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'When collection of various computers seems a single coherent system to its client, then it is called', 'computer network', 'distributed system', 'both (a) and (b)', 'none of the mentioned', 'option_b', 0),
(151, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Two devices are in network if', 'a process in one device is able to exchange information with a process in another device', 'a process is running on both devices', 'PIDs of the processes running of different devices are same', 'none of the mentioned', 'option_a', 0),
(152, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'In computer network nodes are', 'the computer that originates the data', 'the computer that routes the data', 'the computer that terminates the data', 'all of the mentioned', 'option_d', 0),
(153, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'broadcast network', 'unicast network', 'multicast network', 'none of the mentioned', 'option_a', 0),
(154, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'broadcast network', 'unicast network', 'multicast network', 'none of the mentioned', 'option_a', 0),
(155, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'A _____ is a device that forwards packets between networks by processing the routing information included in the packet.', 'bridge', 'firewall', 'firewall', 'all of the mentioned', 'option_c', 0),
(156, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'in case of traffic overloading', 'when a system terminates', 'when connection between two nodes terminates', 'none of the mentioned', 'when a system terminates', 'option_a', 0),
(157, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'The structure or format of data is called', 'Syntax', 'Semantics', 'Struct', 'None of the mentioned', 'option_b', 0),
(158, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication between a computer and a keyboard involves ______________ transmission', 'Automatic', 'Half-duplex', 'Full-duplex', 'Simplex', 'option_b', 0),
(159, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Which one of the following extends a private network across public networks?', 'computer network', 'virtual private network', 'enterprise private network', 'all of the mentioned', 'option_b', 0),
(160, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'When collection of various computers seems a single coherent system to its client, then it is called', 'local area network', 'virtual private network', 'enterprise private network', 'all of the mentioned', 'option_b', 0),
(161, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Two devices are in network if', 'local area network', 'false', 'enterprise private network', 'all of the mentioned', 'option_c', 0),
(162, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'In computer network nodes are', 'the computer that originates the data', 'virtual private network', 'enterprise private network', 'None of the above', 'option_a', 0),
(163, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'local area network', 'virtual private network', 'enterprise private network', 'none of the above', 'option_c', 0),
(164, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'computer network', 'virtual private network', 'enterprise private network', 'all of the mentioned', 'option_b', 0),
(165, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'local area network', 'virtual private network', 'enterprise private network', 'storage area network', 'option_b', 0),
(166, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'computer network', 'false', 'enterprise private network', 'None of the above', 'option_b', 0),
(167, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'local area network', 'false', 'both a & b', 'none of the above', 'option_c', 0),
(168, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'computer network', 'virtual private network', 'enterprise private network', 'all of the mentioned', 'option_b', 0),
(169, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'local area network', 'virtual private network', 'enterprise private network', 'None of the mentioned', 'option_b', 0),
(170, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'local area network', 'virtual private network', 'both a & b', 'storage area network', 'option_b', 0),
(171, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'local area network', 'virtual private network', 'enterprise private network', 'None of the above', 'option_b', 0),
(172, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'are', 'virtual private network', 'enterprise private network', 'none of the above', 'option_b', 0),
(173, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'local area network', 'virtual private network', 'both a & b', 'all of the mentioned', 'option_b', 0),
(174, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Communication channel is shared by all the machines on the network in', 'computer network', 'virtual private network', 'enterprise private network', 'None of the mentioned', 'option_a', 0),
(175, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'The structure or format of data is called', 'local area network', 'virtual private network', 'enterprise private network', 'storage area network', 'option_c', 0),
(176, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'The structure or format of data is called', 'computer network', 'virtual private network', 'enterprise private network', 'None of the above', 'option_c', 0),
(177, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'The structure or format of data is called', 'local area network', 'virtual private network', 'enterprise private network', 'none of the above', 'option_b', 0),
(178, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'The structure or format of data is called', 'local area network', 'virtual private network', 'both a & b', 'None of the mentioned', 'option_b', 0),
(179, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'The structure or format of data is called', 'computer network', 'virtual private network', 'enterprise private network', 'all of the mentioned', 'option_b', 0),
(180, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'The structure or format of data is called', 'computer network', 'virtual private network', 'enterprise private network', 'storage area network', 'option_b', 0),
(181, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Which of this is not a network edge device ?', 'local area network', 'virtual private network', 'enterprise private network', 'None of the above', 'option_b', 0),
(182, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Which of this is not a network edge device ?', 'computer network', 'false', 'enterprise private network', 'none of the above', 'option_b', 0),
(183, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Which of this is not a network edge device ?', 'local area network', 'virtual private network', 'enterprise private network', 'storage area network', 'option_b', 0),
(184, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Which of this is not a network edge device ?', 'computer network', 'virtual private network', 'enterprise private network', 'none of the mentioned', 'option_a', 0),
(185, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Three or more devices share a link in ________ connection', 'computer network', 'virtual private network', 'enterprise private network', 'all of the mentioned', 'option_b', 0),
(186, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Three or more devices share a link in ________ connection', 'computer network', 'virtual private network', 'both a & b', 'None of the mentioned', 'option_b', 0),
(187, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Three or more devices share a link in ________ connection', 'local area network', 'virtual private network', 'enterprise private network', 'None of the above', 'option_b', 0),
(188, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Three or more devices share a link in ________ connection', 'computer network', 'virtual private network', 'enterprise private network', 'all of the mentioned', 'option_b', 0),
(189, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Three or more devices share a link in ________ connection', 'computer network', 'virtual private network', 'enterprise private network', 'storage area network', 'option_b', 0),
(190, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Three or more devices share a link in ________ connection', 'computer network', 'virtual private network', 'enterprise private network', 'none of the above', 'option_b', 0),
(191, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', 'Three or more devices share a link in ________ connection', 'local area network', 'virtual private network', 'both a & b', 'None of the mentioned', 'option_b', 0),
(192, 'computer', '4', 'COMPUTER NETWORKS', 'Three or more devices share a link in ________ connection', 'local area network', 'virtual private network', 'both a & b', 'None of the above', 'option_b', 0),
(193, 'computer', '4', 'COMPUTER NETWORKS', 'Three or more devices share a link in ________ connection', 'local area network', 'virtual private network', 'enterprise private network', 'none of the above', 'option_c', 0),
(194, 'computer', '4', 'COMPUTER NETWORKS', 'Three or more devices share a link in ________ connection', 'local area network', 'virtual private network', 'enterprise private network', 'all of the mentioned', 'option_b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` text NOT NULL,
  `username` text NOT NULL,
  `branch` text NOT NULL,
  `mobile` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `cdate` date NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `fname`, `lname`, `gender`, `username`, `branch`, `mobile`, `email`, `password`, `cdate`, `delete_status`) VALUES
(4, 'taraka', 'tapasvi', 'male', 'tapasvi2003@gmail.com', 'computer', '7386180403', 'tapasvi2003@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-02-04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch` text NOT NULL,
  `sem` text NOT NULL,
  `subject` text NOT NULL,
  `attend_que` text NOT NULL,
  `obtained_marks` text NOT NULL,
  `exam_date` date NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `user_id`, `branch`, `sem`, `subject`, `attend_que`, `obtained_marks`, `exam_date`, `delete_status`) VALUES
(41, 46, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', '2', '0', '2023-02-04', 0),
(42, 47, 'computer', '4', 'COMPUTER NETWORKS', '2', '0', '2023-02-05', 0),
(43, 46, 'computer', '4', 'ADVANCED DATABASE MANAGEMENT SYSTEM', '3', '0', '2023-02-05', 0),
(44, 47, 'computer', '4', 'COMPUTER NETWORKS', '1', '1', '2023-02-06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` text NOT NULL,
  `enroll` text NOT NULL,
  `sem` text NOT NULL,
  `branch` text NOT NULL,
  `dob` date NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `pin` text NOT NULL,
  `cdate` date NOT NULL,
  `mdate` date NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `lname`, `gender`, `enroll`, `sem`, `branch`, `dob`, `email`, `mobile`, `address`, `city`, `pin`, `cdate`, `mdate`, `delete_status`) VALUES
(46, 'Gurram Venkata', 'Sai Suhas', 'male', '1130', '4', 'computer', '2003-10-08', 'suhasgurram@gmail.com', '9652889516', 'adada', 'nellore', '', '2023-02-04', '0000-00-00', 0),
(47, 'tippireddy', 'dharaneeshwar', 'male', '1131', '4', 'computer', '2002-02-01', 'tdreddy@gmail.com', '6533241568', 'ads', 'ananthapur', '', '2023-02-04', '0000-00-00', 0),
(49, 'taraka', 'tapasvi', 'male', '1132', '4', 'computer', '2002-03-03', 'tapasvi2003@gmail.com', '6533241568', 'saf', 'RAJAHMUNDRY', '', '2023-02-04', '0000-00-00', 0);

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `insert_student` AFTER INSERT ON `student` FOR EACH ROW insert into studentlog values (null, NEW.fname, "inserted!!", NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `studentlog`
--

CREATE TABLE `studentlog` (
  `stud_id` int(11) NOT NULL,
  `stud_fname` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentlog`
--

INSERT INTO `studentlog` (`stud_id`, `stud_fname`, `action`, `date`) VALUES
(2, 'taraka', 'inserted!!', '2023-02-04 20:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `size` text NOT NULL,
  `type` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `name`, `size`, `type`, `path`) VALUES
(1, '1.docx', '61162', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'C:\\xampp\\htdocs\\backend\\studyMaterial/1.docx'),
(2, 'M-2(2nd)May19(2).pdf', '182300', 'application/pdf', 'C:\\xampp\\htdocs\\backend\\studyMaterial/M-2(2nd)May19(2).pdf'),
(3, 'Math-2(2nd)Dec2018.pdf', '173552', 'application/pdf', 'C:\\xampp\\htdocs\\backend\\studyMaterial/Math-2(2nd)Dec2018.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` text NOT NULL,
  `pcode` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` text NOT NULL,
  `password` text NOT NULL,
  `profile` text NOT NULL,
  `delete_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `fname`, `lname`, `address`, `city`, `state`, `pcode`, `email`, `mobile`, `password`, `profile`, `delete_status`) VALUES
(1, 'Aditya', 'Shinde', 'Nashik', 'Pimpalgaon', 'Maharashtra', '422209', 'vishalbidve1999@gmail.com', '9423979339', '12345678', 'dummy-profile-pic.png', 1),
(2, 'Rajesh', 'Nikam', 'Shivaji Nagar', 'Nashik', 'Maharashtra', '422011', 'rajeshvnikam@gmail.com', '9423979339', '12345678', 'download.png', 1),
(3, 'Shital', 'Ghangale', 'Sai Nagar', 'Nashik', 'Maharashtra', '422209', 'shital@gmail.com', '9423979339', '25d55ad283aa', 'download (1).png', 0),
(4, 'Ashwini', 'Mahale', 'Pimpalgaon', 'pimpalgaon', 'Maharashtra', '422209', 'ashwini@gmail.com', '9423979339', '25d55ad283aa400af464c76d713c07ad', 'download (1).png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentlog`
--
ALTER TABLE `studentlog`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `studentlog`
--
ALTER TABLE `studentlog`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
