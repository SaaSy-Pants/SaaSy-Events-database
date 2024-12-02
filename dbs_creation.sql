drop database if exists `TICKETS`;
drop database if exists `EVENTS`;
drop database if exists `USER`;
drop database if exists `ORGANISER`;

create database `USER`;
use `USER`;
create table `user_tab`(
	`UID` varchar(255) primary key,
    `Name` text not null,
    `Email` varchar(50) not null unique,
    `Pic_URL` text,
    `PhoneNo` varchar(15) not null unique,
    `Address` text not null,
    `Age` int not null
);

create database `ORGANISER`;
use `ORGANISER`;
create table `org_tab`(
	`OID` varchar(255) primary key,
    `Name` text not null,
    `Email` varchar(50) not null unique,
    `Pic_URL` text,
    `PhoneNo` varchar(15) not null unique,
    `Address` text not null,
    `Age` int not null
);

create database `EVENTS`;
use `EVENTS`;
create table `eve_tab`(
	`EID` varchar(255) primary key,
    `OID` varchar(255) not null,
    `Name` text not null,
    `EventCategory` text not null,
    `EventDesc` text not null,
    `Location` text not null,
    `EventDate` date not null,
    `EventTimeStart` time not null,
    `EventTimeEnd` time not null,
    `GuestsRem` smallint not null,
    `MaxGuestsPerTicket` smallint default 1,
    `Price` int not null,
    foreign key (`OID`) references ORGANISER.org_tab(oid)
);

create database `TICKETS`;
use `TICKETS`;
create table `tick_tab`(
	`TID` varchar(255) primary key,
	`EID` varchar(255) not null,
    `UID` varchar(255) not null,
    `NumGuests` int default 1,
    foreign key (`UID`) references USER.user_tab(uid),
    foreign key (`EID`) references EVENTS.eve_tab(eid)
);

