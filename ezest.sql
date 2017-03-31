/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.45-community-nt : Database - ezest
*********************************************************************
Server version : 5.0.45-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `ezest`;

USE `ezest`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `accommodation` */

DROP TABLE IF EXISTS `accommodation`;

CREATE TABLE `accommodation` (
  `LocationID` varchar(100) NOT NULL default '',
  `LocationName` varchar(200) default NULL,
  `LocationImage` varchar(200) default NULL,
  `LocationDesc` tinytext,
  PRIMARY KEY  (`LocationID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `accommodation` */

insert  into `accommodation`(`LocationID`,`LocationName`,`LocationImage`,`LocationDesc`) values ('L001','Goa','Goa1.jpg','Our resort is 5km from beach\r\n\n'),('L002','Coorg','Coorg.jpg','Our resort is 5Km from this location'),('L003','Manali','Manali.jpg','Our resort is 15kms from this location'),('L004','Kodaikanal','Kodaikanal.jpg','Our resort is 10kms from this location'),('L005','Munnar','Munnar.jpg','Our resort is 15kms from this location'),('L006','HYD','nextPage.gif','Test Location'),('L007','Hitech city','5.jpg','software HUB'),('L008','shirdi','Thumbs.db','A good palce for peace and is the place for take blessingsfrogod'),('L009','Kurnool','Water lilies.jpg','Famous for Konda reddy Buruju....'),('L0010','Oooti','image005.jpg','Fantastic location...'),('L0011','hyd','AddFriend0.jpg','good place 2 visit');

/*Table structure for table `bookingsinfo` */

DROP TABLE IF EXISTS `bookingsinfo`;

CREATE TABLE `bookingsinfo` (
  `BookingID` varchar(100) NOT NULL default '',
  `ResortID` varchar(100) default NULL,
  `RoomID` varchar(100) default NULL,
  `LocationName` varchar(100) default NULL,
  `UserID` varchar(100) default NULL,
  `MemberType` varchar(100) default NULL,
  `RoomCharges` float default NULL,
  `From` date default NULL,
  `To` date default NULL,
  `BookingStatus` varchar(100) default NULL,
  PRIMARY KEY  (`BookingID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `bookingsinfo` */

insert  into `bookingsinfo`(`BookingID`,`ResortID`,`RoomID`,`LocationName`,`UserID`,`MemberType`,`RoomCharges`,`From`,`To`,`BookingStatus`) values ('B01','R001','R0011','Goa','kalyan','Platinum',375,'2008-02-26','2008-02-29','CheckedOut'),('B02','R002','R0024','Coorg','kalyan','Platinum',375,'2008-02-22','2008-02-25','CheckedOut'),('B03','R001','R0011','Goa','kalyan','Platinum',375,'2008-02-01','2008-02-06','CheckedOut'),('B04','R001','R0011','Goa','Subhas','Gold',400,'2008-02-22','2008-02-22','CheckedOut'),('B05','R001','R0011','Goa','kalyan','Platinum',375,'2008-12-15','2008-12-20','CheckedOut'),('B06','R001','R0011','Goa','kalyan','Platinum',375,'2008-12-15','2008-12-25','CheckedOut'),('B07','R001','R0011','Goa','rahul','Gold',400,'2008-12-15','2008-12-25','CheckedOut'),('B08','R001','R0011','Goa','kalyan','Platinum',375,'2008-12-16','2008-12-17','CheckedOut'),('B09','R001','R00110','Goa','kalyan','Platinum',375,'2008-12-17','2008-12-20','CheckedOut'),('B010','R001','R00110','Goa','kalyan','Platinum',375,'2008-12-17','2008-12-20','CheckedOut'),('B011','R001','R0011','Goa','kalyan','Platinum',375,'2008-12-17','2008-12-20','CheckedOut'),('B012','R001','R0011','Goa','ram','Gold',400,'2008-12-17','2008-12-20','CheckedOut'),('B013','R001','R0012','Goa','raju','Platinum',487.5,'2008-12-17','2008-12-20','CheckedOut'),('B014','R001','R0011','Goa','subhas','Gold',400,'2008-12-17','2008-12-20','CheckedOut'),('B015','R001','R0011','Goa','raju','Platinum',375,'2008-12-17','2008-12-20','CheckedOut'),('B016','R001','R0011','Goa','rahul','Gold',400,'2008-12-17','2008-12-20','CheckedOut'),('B017','R001','R0012','Goa','kalyan','Platinum',487.5,'2009-01-11','2009-01-15','CheckedOut'),('B018','R005','R0059','Munnar','Vara','Platinum',450,'2009-01-19','2009-01-21','CheckedOut'),('B019','R001','R0017','Goa','Vara','Platinum',450,'2009-01-19','2009-01-21','CheckedOut'),('B020','R001','R0011','Goa','Guru','Platinum',375,'2009-02-24','2009-02-28','CheckedOut'),('B021','R001','R00110','Goa','Subramanyam','Platinum',375,'2009-02-13','2009-02-14','Canceled'),('B022','R001','R0011','Goa','SR','Platinum',375,'2009-02-19','2009-02-21','CheckedOut'),('B023','R003','R00313','Manali','SR','Platinum',262.5,'2009-02-18','2009-02-28','Canceled'),('B024','R001','R0011','Goa','Suresh','Silver',425,'2009-02-25','2009-02-27','CheckedIn');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `FId` int(10) NOT NULL auto_increment,
  `UserID` varchar(100) default NULL,
  `Feedback` text,
  `DateSubmitted` date default NULL,
  PRIMARY KEY  (`FId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`FId`,`UserID`,`Feedback`,`DateSubmitted`) values (1,'kalyan','We choose Goa .Their service is very nice','2008-02-18'),(2,'kalyan','I have scene your locations and resorts.they are excellent.','2009-01-09'),(3,'Vara','Fantastic facilities','2009-01-19'),(4,'Guru','Simply superb..........','2009-02-09'),(5,'Subramanyam','Simply the best..........','2009-02-10'),(6,'SR','Its good........','2009-02-11'),(7,'Suresh','im suresh. good services.','2009-02-25');

/*Table structure for table `invites` */

DROP TABLE IF EXISTS `invites`;

CREATE TABLE `invites` (
  `Sno` int(10) NOT NULL auto_increment,
  `From` varchar(200) NOT NULL default '',
  `To` varchar(200) default NULL,
  `Status` varchar(200) default NULL,
  PRIMARY KEY  (`Sno`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `invites` */

insert  into `invites`(`Sno`,`From`,`To`,`Status`) values (1,'kalyan','xyz@gmail.com,ghij@yahoo.com','Invited'),(2,'kalyan','Raj@gmail.com,James@yahoo.com','Invited'),(3,'kalyan','Raju@gmail.com,\r\nRamu@yahoo.com','Invited'),(4,'Vara','s.varaprasad@yahoo.co.in','Invited'),(5,'Guru','kumar','Invited'),(6,'Subramanyam','Vara','Invited'),(7,'SR','Kumar','Invited'),(8,'Suresh','vara@g.com','Invited');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `UserID` varchar(200) NOT NULL default '',
  `Password` varchar(200) default NULL,
  `Auth` varchar(200) default NULL,
  PRIMARY KEY  (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`UserID`,`Password`,`Auth`) values ('admin','admin','0'),('kalyan','kalyan','1'),('Rahul','Rahul','1'),('Rajesh','raj','1'),('Ram','ram','1'),('Subhas','Subhas','1'),('vamshi','vamshi','1'),('sita','sita','1'),('sita100','sita','1'),('shailesh','shailesh','1'),('sitalu','sitalu','1'),('raju','raju','1'),('Vara','sairam','1'),('Guru','kumar','1'),('Subramanyam','Subramanyam','1'),('SR','sai','1'),('Suresh','Suresh','1'),('sss','sss','1');

/*Table structure for table `resortsinfo` */

DROP TABLE IF EXISTS `resortsinfo`;

CREATE TABLE `resortsinfo` (
  `ResortID` varchar(100) NOT NULL default '',
  `LocationName` varchar(100) default NULL,
  `ResortImage` varchar(200) default NULL,
  `NoOfRooms` int(50) default NULL,
  `NoOfRoomsAvailable` int(50) default NULL,
  `Restaurant` varchar(100) default NULL,
  `Swimmingpool` varchar(100) default NULL,
  `GamesRoom` varchar(100) default NULL,
  `Casino` varchar(100) default NULL,
  `YogaandMeditation` varchar(100) default NULL,
  `SteamBath` varchar(100) default NULL,
  `GymandHealthCenter` varchar(100) default NULL,
  PRIMARY KEY  (`ResortID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `resortsinfo` */

insert  into `resortsinfo`(`ResortID`,`LocationName`,`ResortImage`,`NoOfRooms`,`NoOfRoomsAvailable`,`Restaurant`,`Swimmingpool`,`GamesRoom`,`Casino`,`YogaandMeditation`,`SteamBath`,`GymandHealthCenter`) values ('R001','Goa','GoaResort.jpg',9,8,'Yes','Yes','Yes','No','Yes','No','No'),('R002','Coorg','CoorgResort.jpg',7,7,'Yes','No','Yes','Yes','No','Yes','Yes'),('R003','Manali','ManaliResort.jpg',6,6,'Yes','Yes','Yes','Yes','Yes','Yes','Yes'),('R004','Kodaikanal','KodaikanalResort.jpg',5,5,'Yes','Yes','No','No','Yes','Yes','Yes'),('R005','Munnar','MunnarResort.jpg',6,6,'Yes','No','No','No','Yes','Yes','Yes'),('R006','dehradun','Thumbs.db',13,13,'Yes','Yes','Yes','Yes','No','Yes','No'),('R007','Kurnool','Winter.jpg',18,18,'Yes','Yes','Yes','Yes','Yes','Yes','Yes'),('R008','Goa','Water lilies.jpg',9,9,'Yes','No','Yes','No','No','Yes','Yes');

/*Table structure for table `roomsinfo` */

DROP TABLE IF EXISTS `roomsinfo`;

CREATE TABLE `roomsinfo` (
  `Sno` varchar(100) NOT NULL default '',
  `RoomID` varchar(100) default NULL,
  `ResortID` varchar(100) default NULL,
  `LocationName` varchar(100) default NULL,
  `RoomType` varchar(100) default NULL,
  `RoomArea` varchar(100) default NULL,
  `DryKitchenette` varchar(100) default NULL,
  `SofacumBed` varchar(100) default NULL,
  `DoubleBeds` varchar(100) default NULL,
  `Telephone` varchar(100) default NULL,
  `Television` varchar(100) default NULL,
  `RoomCharges` float default NULL,
  PRIMARY KEY  (`Sno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `roomsinfo` */

insert  into `roomsinfo`(`Sno`,`RoomID`,`ResortID`,`LocationName`,`RoomType`,`RoomArea`,`DryKitchenette`,`SofacumBed`,`DoubleBeds`,`Telephone`,`Television`,`RoomCharges`) values ('1','R0011','R001','Goa','StudioApartment','450','Yes','Yes','No','Yes','Yes',500),('2','R0012','R001','Goa','SingleBedRoomApartment','450','Yes','Yes','Yes','Yes','Yes',650),('3','R0013','R001','Goa','DoubleBedRoomApartment','650','Yes','Yes','Yes','Yes','Yes',750),('4','R0024','R002','Coorg','StudioApartment','450','Yes','Yes','No','Yes','Yes',500),('5','R0015','R001','Goa','SingleBedRoomApartment','450','Yes','No','No','Yes','Yes',550),('6','R0016','R001','Goa','StudioApartment','450','Yes','Yes','No','Yes','Yes',500),('7','R0017','R001','Goa','DoubleBedRoomApartment','600','Yes','Yes','Yes','Yes','Yes',600),('8','R0028','R002','Coorg','SingleBedRoomApartment','500','Yes','Yes','Yes','Yes','Yes',600),('9','R0059','R005','Munnar','StudioApartment','500','Yes','Yes','Yes','Yes','Yes',600),('10','R00110','R001','Goa','StudioApartment','500','Yes','Yes','Yes','Yes','Yes',500),('11','R00111','R001','Goa','DoubleBedRoomApartment','450sqft','Yes','Yes','Yes','Yes','Yes',400),('12','R00712','R007','Kurnool','SingleBedRoomApartment','1000','Yes','Yes','No','Yes','Yes',300),('13','R00313','R003','Manali','StudioApartment','500','Yes','Yes','Yes','Yes','Yes',350),('14','R00114','R001','Goa','SingleBedRoomApartment','500','Yes','Yes','No','Yes','Yes',500),('15','R00815','R008','Goa','StudioApartment','500','Yes','Yes','Yes','Yes','Yes',500),('16','R00216','R002','Coorg','StudioApartment','600','Yes','Yes','Yes','Yes','Yes',600),('17','R00817','R008','Goa','StudioApartment','400','Yes','Yes','Yes','Yes','Yes',400),('18','R00718','R007','Kurnool','StudioApartment','300','Yes','Yes','Yes','Yes','Yes',300),('19','R00719','R007','Kurnool','StudioApartment','500','Yes','Yes','Yes','Yes','Yes',500),('20','R00820','R008','Goa','StudioApartment','670','Yes','Yes','Yes','Yes','Yes',600),('21','R00621','R006','dehradun','StudioApartment','333','Yes','Yes','Yes','Yes','Yes',333);

/*Table structure for table `userprofile` */

DROP TABLE IF EXISTS `userprofile`;

CREATE TABLE `userprofile` (
  `RegID` varchar(50) NOT NULL default '',
  `UserID` varchar(100) default NULL,
  `FirstName` varchar(100) default NULL,
  `LastName` varchar(100) default NULL,
  `Age` varchar(100) default NULL,
  `EmailAddress` varchar(100) default NULL,
  `Address` tinytext,
  `ContactNumber` varchar(100) default NULL,
  `Occupation` varchar(100) default NULL,
  `MemberType` varchar(100) default NULL,
  `AmountDeposited` float default NULL,
  PRIMARY KEY  (`RegID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `userprofile` */

insert  into `userprofile`(`RegID`,`UserID`,`FirstName`,`LastName`,`Age`,`EmailAddress`,`Address`,`ContactNumber`,`Occupation`,`MemberType`,`AmountDeposited`) values ('M001','Ram','Ram','Raju','35','Ram@yahoo.com','Ram,KPHB,Hyderabad','65545658','Business','Gold',10000),('M002','Rajesh','Rajesh','','40','Raj@hotmail.com','Raj,Ameerpet,Hyderabad','9842313211','Business','Platinum',15000),('M003','kalyan','kalyan','','25','kalyan@gmail.com','kalyan,Banglore-21','65524845','SE','Platinum',15000),('M004','Rahul','Rahul','Roy','25','Rahul@gmail.com','Hyderabad','9989989989','Business','Gold',10000),('M005','Subhas','Subhas','Ghai','43','Subhas@yahoo.com','Hyderabad','9989989989','Film Maker','Gold',10000),('M006','sita100','sita','sita','26','sita@gmail.com','HNK','9885923345','Engineer','Silver',5000),('M007','shailesh','shailesh','Repalle','26','shaileshkumar.repalle@gmail.com','#8-3-231/A/125\r\nHNK','9885923345','Software Engineer','Gold',10000),('M008','sitalu','sitalu','sitalu','25','sitalu@gmail.com','HNK','9885923345','HNK','Silver',5000),('M009','raju','raju','raju','26','raju@gmail.com','HNK','9848992546','employee','Platinum',15000),('M0010','Vara','Vara','Prasad','23','s.varaprasad@yahoo.co.in','Ameerpet, Hyd','9885148211','Software Engineer','Platinum',15000),('M0011','Guru','vara','prasad','23','sai@gmailc.om','ap','9885148211','Faculty& Developer','Platinum',15000),('M0012','Subramanyam','Koutharapu','Subramanyam','22','subramanyam@gmail.com','Ameer pet, Hyd','9885148211','Student','Platinum',15000),('M0013','SR','Subba','Reddy','30','suubu@gmail.com','ameer pet, hyd','9885148211','Managing Director','Platinum',10000),('M0014','Suresh','Suresh','Suresh','23','Suresh@gmail.com','SureshSureshSuresh','221221','stu','Gold',10000),('M0015','sss','sss','sss','23','sss@sss.com','sss','222','sss','Silver',5000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
