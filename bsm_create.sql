
create database BSMDB;

use BSMDB;

CREATE TABLE `dd_item_action_type` (
  `TYPE_ID` int(4) NOT NULL AUTO_INCREMENT,
  `TYPE_SEQ` int(4) NOT NULL,
  `TYPE_DESC` varchar(50) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `dd_item_type` (
  `TYPE_ID` int(4) NOT NULL AUTO_INCREMENT,
  `TYPE_SEQ` int(4) NOT NULL,
  `TYPE_NAME` varchar(10) NOT NULL,
  `TYPE_DESC` varchar(80) DEFAULT NULL,
  `IS_VIP` int(1) NOT NULL,
  `STATUS` int(2) NOT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `dd_task_lvl` (
  `LVL_ID` int(4) NOT NULL AUTO_INCREMENT,
  `LVL_SEQ` int(4) NOT NULL,
  `LVL_NAME` varchar(10) NOT NULL,
  `LVL_DESC` varchar(80) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`LVL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `dd_user_type` (
  `TYPE_ID` int(4) NOT NULL AUTO_INCREMENT,
  `TYPE_SEQ` int(4) NOT NULL,
  `TYPE_NAME` varchar(10) NOT NULL,
  `TYPE_DESC` varchar(255) DEFAULT NULL,
  `TYPE_PRICE` decimal(5,2) NOT NULL,
  `TYPE_DISCOUNT` decimal(4,3) NOT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `item_action` (
  `ACTION_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(10) NOT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `ACTION_TYPE` int(4) NOT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`ACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `item_class_info` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `ITEM_ID` int(10) NOT NULL,
  `CLASS_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `item_info` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ITEM_GUID` varchar(32) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `ITEM_NAME` varchar(30) NOT NULL,
  `ITEM_PATH` varchar(500) NOT NULL,
  `ITEM_TYPE` int(4) DEFAULT NULL,
  `ITEM_PASSWORD` varchar(40) DEFAULT NULL,
  `ITEM_CREATE_DATE` datetime NOT NULL,
  `ITEM_LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `ITEM_ANNOTATION` varchar(200) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ITEM_GUID` (`ITEM_GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE `item_share_info` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(10) NOT NULL,
  `OWN_USER_ID` int(10) NOT NULL,
  `SHARE_USER_ID` int(10) NOT NULL,
  `SHARE_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `item_tag_info` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(10) NOT NULL,
  `TAG_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `task_info` (
    `TASK_ID` INT(10) NOT NULL AUTO_INCREMENT,
    `USER_ID` INT(10) NOT NULL,
    `ITEM_ID` INT(10) DEFAULT NULL,
    `TASK_NAME` VARCHAR(20) NOT NULL,
    `TASK_DESC` VARCHAR(200) DEFAULT NULL,
    `TASK_CREATE_DATE` DATETIME NOT NULL,
    `TASK_DATE` DATETIME NOT NULL,
    `TASK_LVL` INT(4) NOT NULL,
    `STATUS` INT(2) DEFAULT NULL,
    PRIMARY KEY (`TASK_ID`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE `user_info` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_GUID` varchar(32) NOT NULL,
  `USER_NAME` varchar(15) NOT NULL,
  `USER_PASSWORD` varchar(40) NOT NULL,
  `USER_EMAIL` varchar(40) DEFAULT NULL,
  `USER_PHONE` varchar(40) DEFAULT NULL,
  `USER_PATH` varchar(100) NOT NULL,
  `USER_SPACE_SIZE` int(4) NOT NULL,
  `USER_CREATE_DATE` datetime NOT NULL,
  `USER_LAST_LOGIN_DATE` datetime DEFAULT NULL,
  `USER_TYPE` int(4) NOT NULL,
  `USER_LOGO` varchar(255) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_GUID` (`USER_GUID`),
  UNIQUE KEY `USER_PHONE` (`USER_PHONE`),
  UNIQUE KEY `USER_NAME` (`USER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `user_item_classification` (
  `CLASS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `CLASS_SEQ` int(4) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `CLASS_NAME` varchar(20) NOT NULL,
  `CLASS_DESC` varchar(200) DEFAULT NULL,
  `CLASS_CREATE_DATE` datetime NOT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_item_tag` (
  `TAG_ID` int(10) NOT NULL AUTO_INCREMENT,
  `TAG_SEQ` int(4) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `TAG_DESC` varchar(200) DEFAULT NULL,
  `TAG_CREATE_DATE` datetime NOT NULL,
  `STATUS` int(2) DEFAULT NULL,
  `TAG_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TAG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_vip_info` (
  `VIP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `VIP_START_DATE` datetime NOT NULL,
  `VIP_END_DATE` datetime NOT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`VIP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_action` (
  `ACTION_ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `ACTION_TYPE` int(4) NOT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`ACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `dd_user_action_type` (
  `TYPE_ID` int(4) NOT NULL AUTO_INCREMENT,
  `TYPE_SEQ` int(4) NOT NULL,
  `TYPE_DESC` varchar(50) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_recharge_detail` (
  `RECHARGE_ID` int(4) NOT NULL AUTO_INCREMENT,
  `RECHARGE_GUID` varchar(32) NOT NULL,
  `RECHARGE_CHANNEL` int(2) NOT NULL,
  `RECHARGE_DATE` datetime NOT NULL,
  PRIMARY KEY (`RECHARGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;








