-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2019 at 06:52 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Comment_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Comment` varchar(200) COLLATE utf8_bin NOT NULL,
  `Username` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `comment_movie`
--

CREATE TABLE `comment_movie` (
  `Comment_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Movie_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `comment_tvshows`
--

CREATE TABLE `comment_tvshows` (
  `Comment_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `TvShow_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `commet_music`
--

CREATE TABLE `commet_music` (
  `Comment_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Music_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Movie_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Description` mediumtext COLLATE utf8_bin NOT NULL,
  `Runtime` int(11) NOT NULL,
  `Release_Date` int(11) NOT NULL,
  `Score` float NOT NULL,
  `Trending` int(10) NOT NULL,
  `Stars` int(5) NOT NULL,
  `Likes` bigint(200) NOT NULL,
  `Verdict` varchar(20) COLLATE utf8_bin NOT NULL,
  `Gross` float NOT NULL,
  `Reaction` varchar(20) COLLATE utf8_bin NOT NULL,
  `Poster` varchar(200) COLLATE utf8_bin NOT NULL,
  `Trailer` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Movie_Id`, `Title`, `Description`, `Runtime`, `Release_Date`, `Score`, `Trending`, `Stars`, `Likes`, `Verdict`, `Gross`, `Reaction`, `Poster`, `Trailer`) VALUES
('MV001', 'The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 142, 1994, 9.3, 0, 0, 0, '', 0, '', '', ''),
('MV002', 'Drishyam', 'A man goes to extreme lengths to save his family from punishment after the family commits an accidental crime.', 160, 2013, 8.8, 0, 0, 0, '', 0, '', '', ''),
('MV003', 'URI : The Surgical Strike', 'Indian army special forces carry a cover operation , avenging the killing of fellow army men at their base by a terrorist group.', 138, 2019, 8.8, 0, 0, 0, '', 0, '', '', ''),
('MV004', 'Dangal', 'Former wrestler Mahavir Singh Phogat and this two wrestler daughter struggle toward glory at the Commonwealth Games in the face  of societal oppression.', 161, 2016, 8.5, 0, 0, 0, '', 0, '', '', ''),
('MV005', 'Andhadhun', 'A series of mysterious events change the life of a blind pianist who now must report a crime that was actually never witnessed by him.  ', 139, 2018, 8.5, 0, 0, 0, '', 0, '', '', ''),
('MV006', '3 Idiots', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired then to think differently,even as the rest the world called them \"idiots\".', 170, 2009, 8.4, 0, 0, 0, '', 0, '', '', ''),
('MV007', 'Gully Boy', 'A coming-of-age story based on the lives of street rappers in Mumbai.', 153, 2019, 8.5, 0, 0, 0, '', 0, '', '', ''),
('MV008', 'Talvar', 'An experienced investigator confirms several conflicting theories about the prepetrators of a violent double homicide.', 132, 2015, 8.2, 0, 0, 0, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `movie_person`
--

CREATE TABLE `movie_person` (
  `Movie_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Person_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Role_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `movie_studios`
--

CREATE TABLE `movie_studios` (
  `Movie_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Studios_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `Music_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Release_Date` date NOT NULL,
  `Score` float NOT NULL,
  `Poster` varchar(200) COLLATE utf8_bin NOT NULL,
  `Song` varchar(200) COLLATE utf8_bin NOT NULL,
  `Totel_Stream` bigint(50) NOT NULL,
  `Likes` bigint(50) NOT NULL,
  `Youtub_Views` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `music_person`
--

CREATE TABLE `music_person` (
  `Music_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Person_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Role_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `music_studios`
--

CREATE TABLE `music_studios` (
  `Music_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Studios_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Person_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `First_name` varchar(35) COLLATE utf8_bin NOT NULL,
  `Last_name` varchar(35) COLLATE utf8_bin NOT NULL,
  `Gender` varchar(6) COLLATE utf8_bin NOT NULL,
  `DOB` date NOT NULL,
  `DOD` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `person_role`
--

CREATE TABLE `person_role` (
  `Role_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Title` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `person_role`
--

INSERT INTO `person_role` (`Role_Id`, `Title`) VALUES
('RL01', 'Directer'),
('RL02', 'Producer'),
('RL03', 'Acter'),
('RL04', 'Actress');

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `Studio_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Studio_name` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tvshows`
--

CREATE TABLE `tvshows` (
  `TvShow_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Current_Season` int(10) NOT NULL,
  `Description` mediumtext COLLATE utf8_bin NOT NULL,
  `Release_Date` date NOT NULL,
  `Score` float NOT NULL,
  `Poster` varchar(200) COLLATE utf8_bin NOT NULL,
  `Trailer` varchar(200) COLLATE utf8_bin NOT NULL,
  `Stars` int(5) NOT NULL,
  `TRP` float NOT NULL,
  `Reaction` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tvshows`
--

INSERT INTO `tvshows` (`TvShow_Id`, `Title`, `Current_Season`, `Description`, `Release_Date`, `Score`, `Poster`, `Trailer`, `Stars`, `TRP`, `Reaction`) VALUES
('TV001', 'Game of Thrones', 0, 'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.', '0000-00-00', 9.5, '', '', 0, 0, ''),
('TV002', 'The Big Bang Theory', 0, 'A woman who moves into an apartment acrooss the hall form two brilliant but socially awkward physicists shows them how little they know about life outside of the laboratory', '0000-00-00', 8.2, '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tvshow_person`
--

CREATE TABLE `tvshow_person` (
  `TvShow_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Person_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Role_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tvshow_studios`
--

CREATE TABLE `tvshow_studios` (
  `TvShow_Id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Studios_Id` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `Username` varchar(20) COLLATE utf8_bin NOT NULL,
  `First_name` varchar(35) COLLATE utf8_bin NOT NULL,
  `Last_name` varchar(35) COLLATE utf8_bin NOT NULL,
  `DOB` date NOT NULL,
  `Join_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Email` varchar(320) COLLATE utf8_bin NOT NULL,
  `Password` varchar(16) COLLATE utf8_bin NOT NULL,
  `Gender` varchar(6) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Comment_Id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Movie_Id`);

--
-- Indexes for table `movie_person`
--
ALTER TABLE `movie_person`
  ADD KEY `Movie_Id` (`Movie_Id`),
  ADD KEY `Person_Id` (`Person_Id`),
  ADD KEY `Role_Id` (`Role_Id`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`Music_Id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Person_Id`);

--
-- Indexes for table `person_role`
--
ALTER TABLE `person_role`
  ADD PRIMARY KEY (`Role_Id`);

--
-- Indexes for table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`Studio_Id`);

--
-- Indexes for table `tvshows`
--
ALTER TABLE `tvshows`
  ADD PRIMARY KEY (`TvShow_Id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
