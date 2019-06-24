# Host: 127.0.0.1  (Version: 5.5.62)
# Date: 2019-06-22 23:47:02
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "t_activity"
#

CREATE TABLE `t_activity` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'null',
  `class` int(1) NOT NULL DEFAULT '0' COMMENT '1-ѧϰ�� 2-������ 3-��� 4-��ˣ 5-����',
  `isLong` int(1) NOT NULL DEFAULT '0' COMMENT '1-���� 2-����',
  `begin` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `teamNum` int(11) NOT NULL DEFAULT '0',
  `commentNum` int(11) DEFAULT '0',
  `content` varchar(510) NOT NULL DEFAULT '����ʲô��û��',
  `warning` varchar(255) DEFAULT NULL,
  `owner` int(11) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT NULL COMMENT '����ͼ�ļ���',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

#
# Data for table "t_activity"
#

INSERT INTO `t_activity` VALUES (13,'test1',1,2,'2019-04-16','2019-04-16',1,0,'text1',NULL,5,NULL),(14,'test2',2,1,'2018-06-27','2018-06-30',3,1,'fight','14',6,NULL),(15,'meeting today',3,1,'2018-02-11','2019-04-16',6,4,'weekend�����Թ���Ա���޸�','���~���ǹ���Ա',6,NULL),(16,'test4',1,1,'2018-02-11','2018-02-11',2,4,'est','���С�������˹���',6,NULL),(17,'dinner',4,1,'2018-06-18','2018-06-18',1,0,'weekend',NULL,8,NULL),(18,'movie',4,1,'2019-04-16','2019-04-22',0,0,'weekend','��С���а��������ҷ����ﰡ~',8,NULL),(19,'go to play',4,1,'2018-06-18','2018-06-18',0,0,'weekend',NULL,8,NULL),(20,'find girlfriend',5,2,'2018-06-18','2018-07-07',1,0,'beauty is OK',NULL,5,NULL),(21,'find boyfriend',5,1,'2018-06-06','2018-06-07',1,0,'joe is OK.',NULL,2,NULL),(22,'last my key',5,2,'2018-06-02','2018-06-15',0,0,'help!!',NULL,8,NULL),(23,'study together',1,2,'2018-06-19','2018-06-30',0,0,'study in summer','good good study',17,NULL),(24,'aaa',3,1,'2018-06-09','2018-06-08',0,0,'aaa',NULL,15,NULL),(25,'test4\'s activity',3,1,'2018-06-19','2018-06-19',1,0,'check your homework\r\nFIGHT!!','do your best',18,NULL),(26,'123',3,1,'2018-06-19','2018-06-19',0,0,'123',NULL,18,NULL),(27,'123',1,1,'2018-06-15','2018-06-16',0,0,'123','do your best',18,NULL),(28,'456',3,1,'2018-06-08','2018-06-09',0,0,'456',NULL,19,NULL),(29,'��ͼ',5,2,'2019-04-08','2019-04-27',0,0,'��ͼ',NULL,6,NULL),(30,'System.out.println(\"��ͼ������������������������������������������\");',5,2,'2019-04-23','2019-05-02',0,0,'System.out.println(\"��ͼ������������������������������������������\");',NULL,23,'5N7ILgeNjl.jpg'),(31,'����Ǹ�����22',5,1,'2019-04-18','2019-04-19',0,0,'�������222',NULL,0,NULL),(32,'����Ǹ�����',3,1,'2019-04-16','2019-04-06',4,1,'������',NULL,21,'kSChwWYtBb.jpg'),(33,'����ʦ����',1,2,'2019-04-19','2020-04-19',6,1,'����ʦ����','���~���ǹ���Ա',21,'yndPeWKC9e.jpg');

#
# Structure for table "t_user"
#

CREATE TABLE `t_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'null',
  `pwd` varchar(255) NOT NULL DEFAULT 'null',
  `major` varchar(255) DEFAULT NULL COMMENT 'רҵ',
  `grade` enum('����','��һ','���','����','����') DEFAULT '����' COMMENT '�꼶',
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `QQ` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Data for table "t_user"
#

INSERT INTO `t_user` VALUES (2,'1','1',NULL,NULL,0,NULL,NULL),(3,'4','4',NULL,NULL,0,NULL,NULL),(4,'5','5',NULL,NULL,0,NULL,NULL),(5,'333','333',NULL,NULL,1,NULL,NULL),(6,'gloria','123','�������','����',1,'12345678910','I can\'t have everything'),(7,'eee','eee',NULL,NULL,1,NULL,NULL),(8,'lalala','123',NULL,NULL,0,NULL,NULL),(15,'123','123',NULL,NULL,0,NULL,NULL),(16,'pipi','123456',NULL,NULL,1,NULL,NULL),(17,'ha','123',NULL,NULL,0,NULL,NULL),(18,'test4','123',NULL,NULL,1,NULL,NULL),(19,'test5','123',NULL,NULL,1,NULL,NULL),(20,'gggg','gggg',NULL,NULL,0,NULL,NULL),(21,'����','12345','�������','����',1,'947727923','Ican\'t have everything'),(22,'wrq','111','11111','����',0,'11111111','111111111'),(23,'������','123','���','����',1,'947727923','I can\'t have everything');

#
# Structure for table "t_team"
#

CREATE TABLE `t_team` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '����Ұ��',
  `state` int(11) NOT NULL DEFAULT '0',
  `memberNum` int(11) NOT NULL DEFAULT '0',
  `leader` int(11) NOT NULL DEFAULT '0',
  `QQ` varchar(255) NOT NULL DEFAULT '������û��QQ',
  `message` varchar(255) NOT NULL DEFAULT '����Ķ���û������',
  `visible` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `leader` (`leader`),
  CONSTRAINT `t_team_ibfk_1` FOREIGN KEY (`leader`) REFERENCES `t_user` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

#
# Data for table "t_team"
#

INSERT INTO `t_team` VALUES (11,'123',0,2,5,'123','123',1),(12,'444',0,1,5,'444','444',0),(13,'hahaha',0,7,5,'14142424','hahahhaha',1),(14,'777',0,1,5,'777','777',1),(15,'hyhy',0,1,7,'1111','hyhy',0),(16,'lookME',0,1,15,'947727923','MEMEME?how about me?Im cool',0),(17,'pipi111',0,1,16,'1234','pipi1',1),(18,'test4\'s team',0,1,18,'123456789','im test4',1),(19,'456',0,1,19,'456','456',0),(20,'hahaha22',0,1,23,'1414242422','hahahhaha22',1),(21,'���������',1,1,23,'1414242422','������ӵ�ͬʱ��Ҫ���QQȺ����Ⱥ2���ڲ�˵�������߳����顣',0),(22,'hahaha',0,1,23,'14142424','hahahhaha',1),(23,'hahaha222',0,1,23,'14142424','hahahhaha222',1),(24,'�Ǻ�',0,1,6,'�ö����ѽ�ɢ','123',1),(25,'�Ǻ�',1,1,6,'�ö����ѽ�ɢ','123',1),(26,'������',0,1,23,'','',1),(27,'��ʦ���С�ֶ�',0,1,21,'1414242422','����ʦ�Ŀν�����������ʦ��磡',1),(28,'������6.8',1,1,21,'�ö����ѽ�ɢ','Ҫ�����ˣ���ȴ�ڿ�����',1);

#
# Structure for table "t_team_comment"
#

CREATE TABLE `t_team_comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `team` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2019-02-10',
  `content` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  KEY `team` (`team`),
  CONSTRAINT `t_team_comment_ibfk_1` FOREIGN KEY (`team`) REFERENCES `t_team` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='���鶯̬';

#
# Data for table "t_team_comment"
#

INSERT INTO `t_team_comment` VALUES (1,22,'2019-04-08','���Զ�̬'),(2,22,'2019-04-08','���Զ�̬2'),(3,21,'2019-04-08','����'),(4,21,'2019-04-08','# ���� #\r\n��ɵ�һ���֡�'),(5,13,'2019-04-09','�Ǻ�'),(6,21,'2019-04-15','��̬����'),(7,21,'2019-04-15','d'),(8,27,'2019-04-19','�������ʦ����ˣ��ܿ���');

#
# Structure for table "t_act_team"
#

CREATE TABLE `t_act_team` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` int(11) NOT NULL DEFAULT '0',
  `team` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `activity` (`activity`),
  KEY `team` (`team`),
  CONSTRAINT `t_act_team_ibfk_1` FOREIGN KEY (`activity`) REFERENCES `t_activity` (`Id`),
  CONSTRAINT `t_act_team_ibfk_2` FOREIGN KEY (`team`) REFERENCES `t_team` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Data for table "t_act_team"
#

INSERT INTO `t_act_team` VALUES (9,16,11),(10,16,12),(11,14,13),(12,13,14),(13,15,15),(14,21,16),(15,17,17),(16,25,18),(17,20,19),(18,14,20),(19,15,21),(20,15,22),(21,15,23),(22,14,25),(23,15,26),(24,15,27),(25,33,28);

#
# Structure for table "t_comment"
#

CREATE TABLE `t_comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `critic` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2019-02-10',
  `content` varchar(500) NOT NULL DEFAULT '��',
  `belong` int(11) NOT NULL DEFAULT '0' COMMENT '��������ID',
  PRIMARY KEY (`Id`),
  KEY `critic` (`critic`),
  KEY `belong` (`belong`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`critic`) REFERENCES `t_user` (`Id`),
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`belong`) REFERENCES `t_activity` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "t_comment"
#

INSERT INTO `t_comment` VALUES (1,6,'2019-04-07','���',15),(2,23,'2019-04-07','���Կ�',15),(3,6,'2019-04-07','����',15),(4,23,'2019-04-07','',15),(5,6,'2019-04-15','��~�ĺ�ʹ',16),(6,6,'2019-04-15','��һ������',16),(7,6,'2019-04-15','������',16),(8,6,'2019-04-15','����һЩ���',16),(9,21,'2019-04-18','�ǺǺǺ�',14),(10,21,'2019-04-18','��ӭɳ�����ѷ�������',31),(11,21,'2019-04-18','��Ϊʲô��˵��~',31),(12,21,'2019-04-19','������',32),(13,6,'2019-06-09','��Ӵ�����߳�',33);

#
# Structure for table "t_application"
#

CREATE TABLE `t_application` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant` int(11) DEFAULT NULL COMMENT '������',
  `team` int(11) DEFAULT NULL COMMENT '����С��',
  `content` varchar(500) DEFAULT NULL COMMENT '����˵��',
  `date` date DEFAULT NULL COMMENT '����ʱ��',
  `state` enum('accept','deny','auditing') NOT NULL DEFAULT 'auditing',
  PRIMARY KEY (`Id`),
  KEY `applicant` (`applicant`),
  KEY `team` (`team`),
  CONSTRAINT `t_application_ibfk_1` FOREIGN KEY (`applicant`) REFERENCES `t_user` (`Id`),
  CONSTRAINT `t_application_ibfk_2` FOREIGN KEY (`team`) REFERENCES `t_team` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "t_application"
#

INSERT INTO `t_application` VALUES (1,21,13,'�Ǻ�','2019-04-09','deny'),(2,21,21,'������','2019-04-18','accept'),(3,6,23,'���','2019-06-09','auditing');

#
# Structure for table "t_user_team"
#

CREATE TABLE `t_user_team` (
  `team` int(11) NOT NULL DEFAULT '0',
  `member` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`team`,`member`),
  KEY `member` (`member`),
  CONSTRAINT `t_user_team_ibfk_1` FOREIGN KEY (`team`) REFERENCES `t_team` (`Id`),
  CONSTRAINT `t_user_team_ibfk_2` FOREIGN KEY (`member`) REFERENCES `t_user` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "t_user_team"
#

INSERT INTO `t_user_team` VALUES (11,5),(11,16),(12,5),(13,5),(13,7),(13,17),(13,18),(13,19),(13,21),(13,23),(14,5),(15,7),(16,15),(17,16),(18,18),(19,19),(20,23),(21,21),(22,23),(23,23),(24,6),(25,6),(26,23),(27,21),(28,21);
