-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.17-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema appointment
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ appointment;
USE appointment;

--
-- Table structure for table `appointment`.`booked_app`
--

DROP TABLE IF EXISTS `booked_app`;
CREATE TABLE `booked_app` (
  `id` int(11) NOT NULL default '0',
  `bookeddate` text,
  `Name` varchar(45) default NULL,
  `Address` varchar(45) default NULL,
  `Mobileno` bigint(20) default NULL,
  `Doctorid` int(11) default NULL,
  `Doctorname` varchar(45) default NULL,
  `Specialist` varchar(45) default NULL,
  `Cname` varchar(45) default NULL,
  `Cmobno` bigint(20) default NULL,
  `Appdate` text,
  `time` varchar(45) default NULL,
  `username` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`booked_app`
--

/*!40000 ALTER TABLE `booked_app` DISABLE KEYS */;
INSERT INTO `booked_app` (`id`,`bookeddate`,`Name`,`Address`,`Mobileno`,`Doctorid`,`Doctorname`,`Specialist`,`Cname`,`Cmobno`,`Appdate`,`time`,`username`) VALUES 
 (1,'2024-02-10','Samiksha ghadge','rahimatpur',9087654321,1,'Dr.Suresh Mahajan','Dermatologist','Sharada Clinic',2143658709,'2024-02-10','11:00 Am','samu'),
 (2,'2024-01-29','Aishwarya Mane','Pali',8766668188,2,'Dr.Sonal  Sharma','Orthology','pragati clinic',1234567890,'2024-02-12','11:00 Am','aishu'),
 (3,'2024-02-07','payal phadatare','phadatarwadi',9309031716,3,'Dr.A.G.Mishra','Anesthesiology','Vighnharta clinic',9699946163,'2024-02-14','12:00 AM','payal'),
 (4,'2024-01-31','sakshi sankpal','Rahimatpur',9511252335,4,'Shubhangi Jagdale','Gynacology','Morya clinic',123654789,'2024-02-16','12:00 AM','sakshi'),
 (5,'2024-02-27','sonali','Rahimatpur',9511252335,5,'sarita','Dermatologist','Morya clinic',123654789,'2024-02-29','11:00 Am','sonali');
/*!40000 ALTER TABLE `booked_app` ENABLE KEYS */;


--
-- Table structure for table `appointment`.`cancelappointment`
--

DROP TABLE IF EXISTS `cancelappointment`;
CREATE TABLE `cancelappointment` (
  `cancelid` int(11) default NULL,
  `canceldate` text,
  `appid` int(11) default NULL,
  `pnm` varchar(45) default NULL,
  `mobno` varchar(45) default NULL,
  `dnm` varchar(45) default NULL,
  `cnm` varchar(45) default NULL,
  `appdate` text,
  `username` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`cancelappointment`
--

/*!40000 ALTER TABLE `cancelappointment` DISABLE KEYS */;
INSERT INTO `cancelappointment` (`cancelid`,`canceldate`,`appid`,`pnm`,`mobno`,`dnm`,`cnm`,`appdate`,`username`) VALUES 
 (1,'2024-02-29',5,'sonali','9511252335','sarita','Morya clinic','2024-02-29','sonali'),
 (2,'2024-02-29',5,'sonali','9511252335','sarita','Morya clinic','2024-02-29','sarita');
/*!40000 ALTER TABLE `cancelappointment` ENABLE KEYS */;


--
-- Table structure for table `appointment`.`clinicinformation`
--

DROP TABLE IF EXISTS `clinicinformation`;
CREATE TABLE `clinicinformation` (
  `id` int(11) NOT NULL default '0',
  `Doctorname` varchar(45) default NULL,
  `Specialist` varchar(45) default NULL,
  `Qualification` varchar(45) default NULL,
  `Clinicname` varchar(45) default NULL,
  `ClinicMobno` bigint(20) default NULL,
  `ClinicAddress` varchar(45) default NULL,
  `OpeningTime` varchar(45) default NULL,
  `ClosingTime` varchar(45) default NULL,
  `Holiday` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`clinicinformation`
--

/*!40000 ALTER TABLE `clinicinformation` DISABLE KEYS */;
INSERT INTO `clinicinformation` (`id`,`Doctorname`,`Specialist`,`Qualification`,`Clinicname`,`ClinicMobno`,`ClinicAddress`,`OpeningTime`,`ClosingTime`,`Holiday`) VALUES 
 (1,'Dr.Suresh Mahajan','Dermatologist','MBBS','Sharada Clinic',2143658709,'pune','11:00 AM','5:00PM','sunday'),
 (2,'Dr.Sonal  Sharma','Orthology','BDMS','pragati clinic',1234567890,'Satara','11:00 AM','5:00PM','sunday'),
 (3,'Dr.A.G.Mishra','Anesthesiology','MD','Vighnharta clinic',9699946163,'rahimatpur','11:00 AM','5:00PM','sunday'),
 (4,'Shubhangi Jagdale','Gynacology','BHMS','Morya clinic',123654789,'karad','11:00 AM','5:00PM','sunday'),
 (5,'sarita','Dermatologist','MBBS','Morya clinic',123654789,'karad','11:00 AM','5:00PM','sunday');
/*!40000 ALTER TABLE `clinicinformation` ENABLE KEYS */;


--
-- Table structure for table `appointment`.`doctor_info`
--

DROP TABLE IF EXISTS `doctor_info`;
CREATE TABLE `doctor_info` (
  `ID` int(11) NOT NULL default '0',
  `Doctor_name` varchar(45) default NULL,
  `Address` varchar(45) default NULL,
  `Mobileno` bigint(20) default NULL,
  `Email_ID` varchar(45) default NULL,
  `Qualification` varchar(45) default NULL,
  `Dateofbirth` text,
  `specialist` varchar(45) default NULL,
  `Username` varchar(45) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`doctor_info`
--

/*!40000 ALTER TABLE `doctor_info` DISABLE KEYS */;
INSERT INTO `doctor_info` (`ID`,`Doctor_name`,`Address`,`Mobileno`,`Email_ID`,`Qualification`,`Dateofbirth`,`specialist`,`Username`) VALUES 
 (1,'Dr.Suresh Mahajan','pune',2143658709,'sureshm13@gmail.com','MBBS','2024-02-28','Dermatologist','suresh'),
 (2,'Dr.Sonal  Sharma','Pusegone',1234567890,'sonalsharma12@gmail.com','BDMS','1998-06-09','Orthology','sonal'),
 (3,'Dr.A.G.Mishra','Pusegone',9699946163,'sonalsharma12@gmail.com','MD','1996-02-13','Anesthesiology','ag'),
 (4,'Shubhangi Jagdale','karad',123654789,'shubhangi12@gmail.com','BHMS','1995-11-15','Gynacology','shubhangi'),
 (5,'sarita','karad',123654789,'shubhangi12@gmail.com','MBBS','2024-02-28','Dermatologist','sarita');
/*!40000 ALTER TABLE `doctor_info` ENABLE KEYS */;


--
-- Table structure for table `appointment`.`doctor_registration`
--

DROP TABLE IF EXISTS `doctor_registration`;
CREATE TABLE `doctor_registration` (
  `ID` int(11) NOT NULL default '0',
  `Doctorname` varchar(45) default NULL,
  `Address` varchar(45) default NULL,
  `Mobileno` bigint(20) default NULL,
  `EmailID` varchar(45) default NULL,
  `Username` varchar(45) default NULL,
  `Password` varchar(45) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`doctor_registration`
--

/*!40000 ALTER TABLE `doctor_registration` DISABLE KEYS */;
INSERT INTO `doctor_registration` (`ID`,`Doctorname`,`Address`,`Mobileno`,`EmailID`,`Username`,`Password`) VALUES 
 (1,'Dr.Suresh Mahajan','pune',2143658709,'sureshm13@gmail.com','suresh','1234'),
 (2,'Dr.Sonal  Sharma','Pusegone',1234567890,'sonalsharma12@gmail.com','sonal','1234'),
 (3,'Dr.A.G.Mishra','Pusegone',9699946163,'sonalsharma12@gmail.com','ag','1234'),
 (4,'Shubhangi Jagdale','karad',123654789,'shubhangi12@gmail.com','shubhangi','1234'),
 (5,'sarita','karad',123654789,'shubhangi12@gmail.com','sarita','1234');
/*!40000 ALTER TABLE `doctor_registration` ENABLE KEYS */;


--
-- Table structure for table `appointment`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(45) default NULL,
  `mobileno` bigint(20) default NULL,
  `feedback` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`mobileno`,`feedback`) VALUES 
 ('payal',9309031716,'very good                                    ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `appointment`.`patient_registration`
--

DROP TABLE IF EXISTS `patient_registration`;
CREATE TABLE `patient_registration` (
  `ID` int(11) NOT NULL default '0',
  `Patientname` varchar(45) default NULL,
  `Address` varchar(45) default NULL,
  `Mobileno` bigint(20) default NULL,
  `EmailID` varchar(45) default NULL,
  `Username` varchar(45) default NULL,
  `Password` varchar(45) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`patient_registration`
--

/*!40000 ALTER TABLE `patient_registration` DISABLE KEYS */;
INSERT INTO `patient_registration` (`ID`,`Patientname`,`Address`,`Mobileno`,`EmailID`,`Username`,`Password`) VALUES 
 (1,'Samiksha ghadge','rahimatpur',9087654321,'samikshag23@gmail.com','samu','1234'),
 (2,'Aishwarya Mane','Pali',8766668188,'aishumane2003@gmail.com','aishu','1234'),
 (3,'payal phadatare','phadatarwadi',9309031716,'payalphadatare@gmail.com','payal','1234'),
 (4,'sakshi sankpal','Rahimatpur',9511252335,'sakshis924@gmail.com','sakshi','1234'),
 (5,'sonali','Rahimatpur',9511252335,'sakshis924@gmail.com','sonali','1234');
/*!40000 ALTER TABLE `patient_registration` ENABLE KEYS */;


--
-- Table structure for table `appointment`.`patientinfo`
--

DROP TABLE IF EXISTS `patientinfo`;
CREATE TABLE `patientinfo` (
  `id` int(11) NOT NULL default '0',
  `patientname` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `mobno` bigint(20) default NULL,
  `emailid` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `age` int(11) default NULL,
  `diseas` varchar(45) default NULL,
  `Username` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`patientinfo`
--

/*!40000 ALTER TABLE `patientinfo` DISABLE KEYS */;
INSERT INTO `patientinfo` (`id`,`patientname`,`address`,`mobno`,`emailid`,`gender`,`age`,`diseas`,`Username`) VALUES 
 (1,'Samiksha ghadge','rahimatpur',9087654321,'samikshag23@gmail.com','female',0,'Dengue','samu'),
 (2,'Aishwarya Mane','Pali',8766668188,'aishumane2003@gmail.com','female',0,'Nimoniya','aishu'),
 (3,'payal phadatare','phadatarwadi',9309031716,'payalphadatare@gmail.com','female',0,'typhoid','payal'),
 (4,'sakshi sankpal','Rahimatpur',9511252335,'sakshis924@gmail.com','female',0,'typhoid','sakshi'),
 (5,'sakshi sankpal','Rahimatpur',9511252335,'sakshis924@gmail.com','female',0,'typhoid','sakshi'),
 (6,'sonali','Rahimatpur',9511252335,'sakshis924@gmail.com','female',0,'typhoid','sonali'),
 (7,'sonali','Rahimatpur',9511252335,'sakshis924@gmail.com','female',0,'typhoid','sonali');
/*!40000 ALTER TABLE `patientinfo` ENABLE KEYS */;


--
-- Table structure for table `appointment`.`search_dr`
--

DROP TABLE IF EXISTS `search_dr`;
CREATE TABLE `search_dr` (
  `specialist` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`specialist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`.`search_dr`
--

/*!40000 ALTER TABLE `search_dr` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_dr` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
