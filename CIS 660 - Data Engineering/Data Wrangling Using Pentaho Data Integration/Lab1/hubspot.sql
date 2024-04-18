create database hubspot_dwh;

use hubspot_dwh;

CREATE TABLE `dim_time` (
  `TimeNo` int(11) NOT NULL AUTO_INCREMENT,
  `TimeDay` int(11) NOT NULL,
  `TimeMonth` int(11) NOT NULL,
  `TimeYear` int(11) NOT NULL,
  PRIMARY KEY (`TimeNo`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

CREATE TABLE `dim_channel` (
  `ChannelId` int(11) NOT NULL AUTO_INCREMENT,
  `ChannelName` varchar(30) NOT NULL,
  PRIMARY KEY (`ChannelId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `fact_interactions` (
  `InteractionId` int(11) NOT NULL AUTO_INCREMENT,
  `TotalInteractions` int(11) NOT NULL,
  `Facebook_likes` decimal(12,2) NOT NULL,
  `Facebook_comments` decimal(12,2) NOT NULL,
  `ChannelId` int(11) NOT NULL,
  `TimeNo` int(11) NOT NULL,
  PRIMARY KEY (`InteractionId`),
  KEY `FKSSChannel` (`ChannelId`),
  KEY `FKSSTimeDim` (`TimeNo`),
  CONSTRAINT `FKSSChannel` FOREIGN KEY (`ChannelId`) REFERENCES `dim_channel` (`ChannelId`),
  CONSTRAINT `FKSSTimeDim` FOREIGN KEY (`TimeNo`) REFERENCES `dim_time` (`TimeNo`)
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=utf8;
