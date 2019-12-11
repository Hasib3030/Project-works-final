-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2019 at 01:16 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aiubian`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumniprofile`
--

CREATE TABLE `alumniprofile` (
  `Email` varchar(150) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `AIUB_ID` varchar(10) NOT NULL,
  `Phone` int(13) NOT NULL,
  `Dept` varchar(50) DEFAULT NULL,
  `Semester` varchar(20) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `LinkedIn` varchar(250) DEFAULT NULL,
  `Facebook` varchar(250) DEFAULT NULL,
  `Portfolio` varchar(250) DEFAULT NULL,
  `WorkingDomain` varchar(250) DEFAULT NULL,
  `Website` varchar(250) DEFAULT NULL,
  `WorkingPlace` varchar(250) DEFAULT NULL,
  `JoiningDate` varchar(100) DEFAULT NULL,
  `ProfilePicture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumniprofile`
--

INSERT INTO `alumniprofile` (`Email`, `Name`, `AIUB_ID`, `Phone`, `Dept`, `Semester`, `Year`, `LinkedIn`, `Facebook`, `Portfolio`, `WorkingDomain`, `Website`, `WorkingPlace`, `JoiningDate`, `ProfilePicture`) VALUES
('alumni@gmail.com', 'alumni', '14-5555-1', 65654, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('jalal@gmail.com', 'Jalal Uddin', '14-2589-3', 21645645, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Screenshot_1.png'),
('zaheddsabur@gmail.com', 'Zaheed Sabure', '02-1526-1', 2589666, 'Faculty of Science & Information', 'Spring', '2019-10-30', 'https://www.linkedin.com/in/zaheed/', 'https://www.facebook.com/zaheed/friends?lst=100008215757224%3A512972860%3A1575046942&source_ref=pb_friends_tl', '', 'Principle Engineer at Google', 'https:www.google.com', 'Google', '2019-11-04', 'Screenshot_4.png');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender`, `receiver`, `text`, `time`) VALUES
(1, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', 'Hi. How are you ?', ''),
(2, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', '54345345345', '30/11/2019 09:35:01am'),
(3, 'nazibmahfuz60@gmail.com', 'jahid@gmail.com', 'hi.How are You????', '30/11/2019 09:36:06am'),
(4, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', 'vfdvfd', '30/11/2019 09:43:23am'),
(5, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', 'tyguhijk', '30/11/2019 09:47:44am'),
(6, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', 'I am Nazib Mahfuz', '30/11/2019 10:02:01am'),
(7, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', 'Its another testing message', '30/11/2019 10:02:48am'),
(8, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', 'American International University-Bangladesh (AIUB)', '30/11/2019 10:04:25am'),
(9, 'nazibmahfuz60@gmail.com', 'jahid20@gmail.com', 'kbvfdbv', '30/11/2019 10:05:13am'),
(10, 'nazibmahfuz60@gmail.com', 'jahid20@gmail.com', 'djvfnfdjkvn', '30/11/2019 10:06:38am'),
(11, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', 'Dept of CSE', '30/11/2019 10:07:14am'),
(12, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', '653654654', '30/11/2019 10:19:02am'),
(13, 'nazibmahfuz60@gmail.com', 'guti@gmail.com', 'vfugvfudygvuydgvfdv', '30/11/2019 10:46:10am'),
(14, 'hasib3030@gmail.com', 'nazibmahfuz60@gmail.com', 'I am Hasib', '30/11/2019 11:16:55am'),
(15, 'nazibmahfuz60@gmail.com', 'hasib3030@gmail.com', 'I know you are Hasib.Thank You', '30/11/2019 11:18:16am'),
(16, 'hasib3030@gmail.com', 'nazibmahfuz60@gmail.com', 'Its an AJAX example', '30/11/2019 11:31:34am'),
(17, 'hasib3030@gmail.com', 'nazibmahfuz60@gmail.com', 'Another Testing', '30/11/2019 11:34:36am');

-- --------------------------------------------------------

--
-- Table structure for table `facultyprofile`
--

CREATE TABLE `facultyprofile` (
  `email` varchar(150) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Phone` int(13) NOT NULL,
  `AIUB_ID` varchar(11) NOT NULL,
  `Dept` varchar(50) DEFAULT NULL,
  `Semester` int(3) DEFAULT NULL,
  `ThesisDomain` varchar(250) DEFAULT NULL,
  `PublishedPaper` int(3) DEFAULT NULL,
  `Portfolio` varchar(250) DEFAULT NULL,
  `LinkedIn` varchar(250) DEFAULT NULL,
  `FaceBook` varchar(250) DEFAULT NULL,
  `WorkingPlace` varchar(250) DEFAULT NULL,
  `Website` varchar(250) DEFAULT NULL,
  `JoiningDate` varchar(50) DEFAULT NULL,
  `ProfilePicture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facultyprofile`
--

INSERT INTO `facultyprofile` (`email`, `Name`, `Phone`, `AIUB_ID`, `Dept`, `Semester`, `ThesisDomain`, `PublishedPaper`, `Portfolio`, `LinkedIn`, `FaceBook`, `WorkingPlace`, `Website`, `JoiningDate`, `ProfilePicture`) VALUES
('alamin@gmail.com', 'AL Amin', 696, '1475-2589-1', 'Faculty of Art Social Sciences', 11, 'Cloud Computing', 8, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', '', '', '2019-11-02', 'asd.jpg'),
('zakiasultana@gmail.com', 'Zakia Sultana', 564562, '1458-2258-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '95d79b150d98ddc03480f4dab4e1287b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logininfo`
--

CREATE TABLE `logininfo` (
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(8) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logininfo`
--

INSERT INTO `logininfo` (`email`, `username`, `password`, `status`) VALUES
('abir@gmail.com', 'abir', 'abir', 'Student'),
('admin@gmail.com', 'admin', 'admin', 'Admin'),
('alamin@gmail.com', 'alamin', 'alamin', 'Faculty'),
('alihasan747@gmail.com', 'AliHasan', '123', 'Student'),
('alumni@gmail.com', 'alm', 'alm', 'Alumni'),
('florin@gmail.com', 'florin', 'florin', 'Student'),
('guti@gmail.com', 'guti', 'guti', 'Student'),
('hasib3030@gmail.com', 'hasib', '3030', 'Student'),
('jalal@gmail.com', 'jalal', 'jalal', 'Alumni'),
('ma@gmail.com', 'm', 'm', 'Student'),
('marzia@gmail.com', 'marzia', 'marzia', 'Faculty'),
('mumu@gmail.com', 'mumu', 'mumu', 'Student'),
('nazibmahfuz60@gmail.com', 'nazib', 'nazib', 'Student'),
('raj@gmail.com', 'raj', 'raj', 'Student'),
('zaheddsabur@gmail.com', 'sabure', 'sabure', 'Alumni'),
('zakiasultana@gmail.com', 'zakia', 'zakia', 'Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `Text` varchar(250) NOT NULL,
  `Image` varchar(250) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `Likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`Text`, `Image`, `Date`, `Status`, `email`, `username`, `Likes`) VALUES
('Google API \r\n                        ', 'gmail-logo-icon-7.png', '28/11/2019 06:33:11pm', 'Student', 'nazibmahfuz60@gmail.com', 'nazib', 0),
('Alumni First Post\r\n                        ', '95d79b150d98ddc03480f4dab4e1287b.jpg', '28/11/2019 06:35:36pm', 'Alumni', 'jalal@gmail.com', 'jalal', 0),
('American International University-Bangladesh (AIUB)\r\nAmerican International University-Bangladesh (AIUB)\r\nAmerican International University-Bangladesh (AIUB)\r\nAmerican International University-Bangladesh (AIUB)\r\nAmerican International University-Bang', 'AIUB_whole_logo.png', '28/11/2019 06:37:06pm', 'Faculty', 'alamin@gmail.com', 'alamin', 0),
('An Internship Offer will Offered by Datasoft Com. Ltd.\r\nIf anyone interested to doing this internship then send me your mail at \r\n\"alamin@gmail.edu\". Subject should be Internship in Datasoft Ltd\r\n                        ', 'intern.png', '28/11/2019 06:40:07pm', 'Faculty', 'alamin@gmail.com', 'alamin', 0),
('Candy Crush Game is developed by C++ Programming Language\r\n                        ', 'candy.jpg', '28/11/2019 06:41:28pm', 'Student', 'hasib3030@gmail.com', 'hasib', 0),
('dcv fdjhbvjfdhb\r\ndfvdfjbvdf\r\ndfvdfbvjfdbv\r\ndvfdjbv             ', 'logo_01.png', '28/11/2019 06:42:26pm', 'Alumni', 'jalal@gmail.com', 'jalal', 0),
('\r\n                        ', '20161002_144655.jpg', '30/11/2019 05:32:52am', 'Student', 'nazibmahfuz60@gmail.com', 'nazib', 0),
('Its my New Laptop', 'cx72_7ql.jpg', '30/11/2019 05:34:19am', 'Student', 'nazibmahfuz60@gmail.com', 'nazib', 0);

-- --------------------------------------------------------

--
-- Table structure for table `studentprofile`
--

CREATE TABLE `studentprofile` (
  `email` varchar(150) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` int(13) NOT NULL,
  `AIUB_ID` varchar(10) NOT NULL,
  `Dept` varchar(50) DEFAULT NULL,
  `Program` varchar(20) DEFAULT NULL,
  `SemesterNo` int(2) DEFAULT NULL,
  `LinkedIn` varchar(250) DEFAULT NULL,
  `StackOverFlow` varchar(250) DEFAULT NULL,
  `Github` varchar(250) DEFAULT NULL,
  `HackerRank` varchar(250) DEFAULT NULL,
  `UVA` varchar(250) DEFAULT NULL,
  `IEEE` varchar(250) DEFAULT NULL,
  `Youtube` varchar(250) DEFAULT NULL,
  `Website` varchar(250) DEFAULT NULL,
  `Skills` varchar(250) DEFAULT NULL,
  `ProfilePicture` varchar(250) DEFAULT NULL,
  `ProfileMarks` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentprofile`
--

INSERT INTO `studentprofile` (`email`, `Name`, `Phone`, `AIUB_ID`, `Dept`, `Program`, `SemesterNo`, `LinkedIn`, `StackOverFlow`, `Github`, `HackerRank`, `UVA`, `IEEE`, `Youtube`, `Website`, `Skills`, `ProfilePicture`, `ProfileMarks`) VALUES
('abir@gmail.com', 'Abir', 2585, '17-9999-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('alihasan747@gmail.com', 'Ali Hasan', 15889995, '17-34425-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'humex03_large.gif', 0),
('florin@gmail.com', 'Florin', 5456454, '17-9632-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('guti@gmail.com', 'guti', 35665456, '14-55898-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'guti.png', 0),
('hasib3030@gmail.com', 'Hasib Ahmed', 18599996, '17-34349-1', 'Faculty of Science & Technology', 'CSE', 9, '', '', '', '', '', '', '', '', '', 'code-wallpaper-22-610x381.jpg', 0),
('ma@gmail.com', 'Mahbub', 3646531, '14-55589-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('mumu@gmail.com', 'mumu', 6645646, '15-5589-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('nazibmahfuz60@gmail.com', 'Nazib Mahfuz', 1777127618, '17-34418-1', 'Faculty of Science & Technology', 'CSE', 9, 'https://www.linkedin.com/', 'https://www.linkedin.com/', 'https://www.github.com/', 'https://www.linkedin.com/', 'https://www.linkedin.com/', 'https://www.linkedin.com/', 'https://www.linkedin.com/', 'https://www.linkedin.com/', 'C#,php,JavaScript,Java,CSS,HTML,DataBase,Design Pettern', '2014630-184237749-8880-cs.jpg', 0),
('raj@gmail.com', 'raj', 3546465, '14-6392-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumniprofile`
--
ALTER TABLE `alumniprofile`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facultyprofile`
--
ALTER TABLE `facultyprofile`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `logininfo`
--
ALTER TABLE `logininfo`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `studentprofile`
--
ALTER TABLE `studentprofile`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
