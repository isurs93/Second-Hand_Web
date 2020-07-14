CREATE DATABASE  IF NOT EXISTS `final_Project` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final_Project`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: final_Project
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `m_board`
--

DROP TABLE IF EXISTS `m_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_board` (
  `board_Seqno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시글 키값',
  `board_uSeqno` int(11) DEFAULT NULL COMMENT 'FK 유저 키값',
  `board_Content` text COMMENT '게시글 정보',
  `board_Hit` int(11) DEFAULT NULL COMMENT '조회수',
  `board_Sido` varchar(45) DEFAULT NULL COMMENT '거래 지역 정보',
  `board_Latitude` varchar(45) DEFAULT NULL COMMENT '위치 표시 위도',
  `board_Longitude` varchar(45) DEFAULT NULL COMMENT '위치 표시 경도',
  `board_isDone` varchar(45) DEFAULT '0' COMMENT '판매 완료 여부',
  `board_InsertDate` date DEFAULT NULL COMMENT '작성 일자 (또는 String)',
  `board_DeleteDate` date DEFAULT NULL COMMENT '삭제 일자',
  `board_title` varchar(100) DEFAULT NULL,
  `board_price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`board_Seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_board`
--

LOCK TABLES `m_board` WRITE;
/*!40000 ALTER TABLE `m_board` DISABLE KEYS */;
INSERT INTO `m_board` VALUES (1,1,'싸게 팔아요',44,NULL,NULL,'0','판매중',NULL,NULL,'싸게 팝니다','30000'),(2,1,'ㅁ',65,NULL,NULL,'0','판매중',NULL,NULL,'싸게 팝니다','23454'),(3,2,'ㄷ',8,NULL,NULL,'0','판매중',NULL,NULL,'싸게 팝니다','3000'),(4,2,'2',3,NULL,NULL,'0','판매중',NULL,NULL,'싸게 팝니다','13500'),(5,1,'3',3,NULL,NULL,'0','판매중',NULL,NULL,'싸게 팝니다','40000'),(6,2,'4',6,NULL,NULL,'0','판매중',NULL,NULL,'싸게 팝니다','690000'),(7,1,'싸게팝니다',1,NULL,NULL,'0','판매중','2020-03-31',NULL,'급처분','150000'),(8,1,'진짜 싸요',1,NULL,NULL,'0','판매중','2020-03-31',NULL,'싸게 팝니다.',NULL),(9,1,'ㅋㅋㅋㅁㅋㅋㅋ',1,NULL,NULL,'0','판매중','2020-03-31',NULL,'싸게 팝니다.',NULL),(10,1,'ㄴㄴㄴㄴ',1,NULL,NULL,'0','판매중','2020-03-31',NULL,'싸게 팝니다.','25000'),(11,1,'진짜 싸',3,NULL,NULL,'0','판매중','2020-03-31',NULL,'진짜 개이득','10293'),(12,1,'좋음',4,NULL,NULL,'0','판매중','2020-03-31',NULL,'된다','2000'),(13,1,'??',6,NULL,NULL,'0','판매중','2020-03-31',NULL,'싸게 팝니다.','25000'),(14,1,'			싸게 ???.			\r\n			',7,NULL,NULL,'0','판매중','2020-03-31','2020-03-31','다시 올립니다.','32000'),(15,1,NULL,1,NULL,NULL,'0','판매중','2020-04-01',NULL,NULL,NULL),(16,1,NULL,3,NULL,NULL,'0','판매중','2020-04-01',NULL,NULL,NULL),(17,1,NULL,2,NULL,NULL,'0','판매중','2020-04-01',NULL,NULL,NULL),(18,1,'진짜 싸요',14,NULL,NULL,'0','판매중','2020-04-01',NULL,'3000원 땡처리','30000'),(19,1,NULL,2,NULL,NULL,'0','판매중','2020-04-02',NULL,NULL,NULL),(20,1,'흥정가능',8,NULL,NULL,'0','판매중','2020-04-02',NULL,'싸게 팔아요','26000000'),(21,1,'스파링',0,NULL,NULL,'0','판매중','2020-04-02',NULL,'스파링 고고','50000'),(22,1,'테스트',0,NULL,NULL,'0','판매중','2020-04-02',NULL,'테스트','100000'),(23,1,'테스트',0,NULL,NULL,'0','판매중','2020-04-02',NULL,'뭐지','40000'),(24,1,'??',1,NULL,NULL,'0','판매중','2020-04-02',NULL,'싸게 테스트','123000'),(25,1,'iuiu',1,NULL,NULL,'0','판매중','2020-04-02',NULL,'jhbhjb','jni'),(26,1,'aa',0,NULL,NULL,'0','판매중','2020-04-02',NULL,'aa','aa'),(27,1,'aaa',0,NULL,NULL,'0','판매중','2020-04-02',NULL,'aa','aaa'),(28,1,'ㅁㄴㅇㅁㄴㅇ',0,NULL,NULL,'0','판매중','2020-04-02',NULL,'ㄴㅇㅁㄴ','ㅁㄴㅇㅁㄴㅇ'),(29,1,'ㅂㅈㅇㅂㅈㅇ',0,NULL,NULL,'0','판매중','2020-04-02',NULL,'ㅂㅈㅇㅂㅈㅇㅂ','ㅂㅈㅇㅂㅈㅇ'),(30,1,'qwd',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'qwd','qwd'),(31,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123','123123'),(32,1,'ㅂㅈㅇ',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'ㅂㅈㅇ','ㅂㅈㅇ'),(33,1,'ㅂㅈㅇ',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'ㅂㅈㅇ','ㅂㅈㅇㅂㅈㅇ'),(34,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'111','123123'),(35,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123123','123123'),(36,1,'123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'1231','123'),(37,1,'123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'12312','123'),(38,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'12312','123123'),(39,1,'12ㄷ12ㄷ',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'ㅃㅈㄷㅂ','12ㄷ12'),(40,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'12e313','123123'),(41,1,'123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'333','123'),(42,1,'123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123','1e'),(43,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'3123','123123'),(44,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'31323','123123'),(45,1,'123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123','123'),(46,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123123','123123'),(47,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123123','123123'),(48,1,'123123',1,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123123','123123'),(49,1,'13123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123123','123123'),(50,1,'ㅂㅈㅇㅂㅈㅇ',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'ㅂㅈㅇㅂㅈㅇ','ㅂㅈㅇㅂㅈㅇ'),(51,1,'ㅂㅇㅈㅂㅈㅇ',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'ㅂㅇㅈㅂㅈㅇ','ㅂㅈㅇㅂㅈㅇ'),(52,1,'ㅂㅈㅇㅂㅈㅇ',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'ㅂㅈㅇㅂㅇㅈ','ㅂㅈㅇㅂㅈㅇ'),(53,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123123','123123'),(54,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'12323','123123'),(55,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'12323','123123'),(56,1,'1232123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'123123','123123'),(57,1,'123',0,NULL,NULL,'0',NULL,'2020-04-02',NULL,'12312','123'),(58,1,'qwdqwd',1,NULL,NULL,'0',NULL,'2020-04-02',NULL,'qwdqwd','qwdqwd'),(59,1,'asdf',2,NULL,NULL,'0',NULL,'2020-04-03',NULL,'asdf','asdf'),(60,1,'ioukj,m',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'jlk,','ioljk,m'),(61,1,'asd',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'asd','asd'),(62,1,'12',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'qw1','12'),(63,1,'asx',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'adc','zxc'),(64,1,'asdczx',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'adsczx','asdczxc'),(65,1,'asdf',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'as','adsf'),(66,1,'asdf',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'asdf','asdf'),(67,1,'₩ㅁㄴㅇㅍ',1,NULL,NULL,'0',NULL,'2020-04-03',NULL,'zxcv','ㅁㄴㅇㄹ'),(68,1,'ㅁㄴㅇㄹ',1,NULL,NULL,'0',NULL,'2020-04-03',NULL,'ㅁㅇㄴㄹ','ㅁㄴㅇㄹ'),(69,1,'asdf',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'zxc ','asd'),(70,1,'zxcv',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'asdf','zxcv'),(71,1,'asd',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'ads','asd'),(72,1,'asdczx',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'asdzxc','sdczx'),(73,1,'123123',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'123','131213'),(74,1,'ㅂ12333',0,NULL,NULL,'0',NULL,'2020-04-03',NULL,'sa','asas'),(75,1,'qwdqwd',2,NULL,NULL,'0','판매중','2020-04-03',NULL,'qwdqwd','qwdqwd'),(76,1,'			qwdqwd			\r\n			',2,NULL,NULL,'0','판매중','2020-04-03',NULL,'qwdqwd','wqdqwd'),(77,1,'																										kjji																qwdqwdq	`123		\r\n						\r\n			asdasdas			\r\n						\r\n						\r\n						\r\n						\r\n						\r\n						\r\n						\r\n						\r\n						\r\n						\r\n						\r\n			',1,NULL,NULL,'0','판매중','2020-04-03',NULL,'21312_a','1000'),(78,1,'			qwdqwd			\r\n			qwdqdw',3,NULL,NULL,'0','판매중','2020-04-03',NULL,'asasdx','qwdqwd'),(79,1,'쪽지주세요',0,NULL,NULL,'0','판매중','2020-04-04',NULL,'싸게 팝니다.','232000'),(80,1,'			쪽지주세요			\r\n			섞였네',10,NULL,NULL,'0','판매중','2020-04-04',NULL,'급처분합니다','232000'),(81,1,'												\r\n			qwd			\r\n						\r\n			',20,NULL,NULL,'0','판매중','2020-04-07',NULL,'다시 올립니다.','qwd'),(82,1,'						넷플릭스 아이디			\r\n						\r\n			',10,NULL,NULL,'0','판매중','2020-04-08',NULL,'팝니다','13000'),(83,1,'내용 무',2,NULL,NULL,'0','판매중','2020-04-09',NULL,'하나 더!','12000000'),(84,1,'거래 고',27,NULL,NULL,'0','판매중','2020-04-09',NULL,'선 제시','870000'),(85,1,'												sadfsafd\r\n						\r\n						\r\n						\r\n						\r\n						\r\n						\r\n			',39,NULL,NULL,'0','판매중','2020-04-09',NULL,'싸게 팝니다.','4500000'),(86,2,'팝니다',89,NULL,NULL,'0','판매중','2020-04-09',NULL,'청바지 팝니다.','32000'),(87,2,'쪽지주세요',26,NULL,NULL,'0','판매중','2020-04-09',NULL,'바지 팝니다.','13000'),(88,3,'2321',12,NULL,NULL,'0','판매완료','2020-04-09',NULL,'노트북팝니다','560000'),(89,3,'강아지 입양입니다',113,NULL,NULL,'0','판매완료','2020-04-09',NULL,'강아지 입양하실분','450000'),(90,3,'급매입니다 연락주세요',6,NULL,NULL,NULL,'판매중','2020-04-14',NULL,'시계팝니다 급','4540000'),(91,3,'쪽지주세요',2,NULL,NULL,NULL,'판매중','2020-04-14',NULL,'청바지 팝니다','18000'),(92,5,'쪽지 주세요~~',3,NULL,NULL,NULL,'판매중','2020-04-14',NULL,'야구모자 팝니다','23000'),(93,5,'싸게 팝니다. 새거에요',7,NULL,NULL,NULL,'판매중','2020-04-14',NULL,'바지 싸게 팝니다.','8000'),(94,5,'리트리버 3개월입니다',15,NULL,NULL,NULL,'판매중','2020-04-14',NULL,'강아지 입양하실분','500000'),(95,6,'새 제품입니다. 포장 안 뜯었어요.',22,NULL,NULL,NULL,'판매완료','2020-04-14',NULL,'시계 처리합니다. ','12000000'),(96,7,'쪽지주세요',1,NULL,NULL,NULL,'판매중','2020-04-14','2020-04-14','컴퓨터 팔아요','720000'),(97,7,'쪽지주세요',1,NULL,NULL,NULL,'판매중','2020-04-14','2020-04-14','컴터 팔아요','560000'),(98,8,'쪽지주세요',3,NULL,NULL,NULL,'판매중','2020-04-14','2020-04-14','신발 팝니다.','700000'),(99,8,'			qwd			\r\n			',0,NULL,NULL,NULL,'판매중','2020-04-14','2020-04-14','qwde','50000'),(100,9,'			좋은 가격에 팝니다. 쪽지 주세요			\r\n			',1,NULL,NULL,NULL,'판매완료','2020-04-14','2020-04-14','컴퓨터 팝니다.','520000');
/*!40000 ALTER TABLE `m_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_dLocation`
--

DROP TABLE IF EXISTS `m_dLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_dLocation` (
  `deal_seqno` int(11) NOT NULL AUTO_INCREMENT,
  `deal_location` varchar(45) DEFAULT NULL,
  `deal_date` date DEFAULT NULL,
  `deal_bseqno` int(11) DEFAULT NULL,
  PRIMARY KEY (`deal_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_dLocation`
--

LOCK TABLES `m_dLocation` WRITE;
/*!40000 ALTER TABLE `m_dLocation` DISABLE KEYS */;
INSERT INTO `m_dLocation` VALUES (1,'서울 강서구','2020-04-09',84),(2,'부산 금정구','2020-04-09',85),(3,'인천 남구','2020-04-09',86),(4,'대구 수성구','2020-04-09',87),(5,'서울 강동구','2020-04-09',88),(6,'대구 북구','2020-04-09',89),(7,'서울 양천구','2020-04-14',90),(8,'인천 남구','2020-04-14',91),(9,'인천 중구','2020-04-14',92),(10,'인천 서구','2020-04-14',93),(11,'경기 구리시','2020-04-14',94),(12,'서울 강서구','2020-04-14',95),(13,'서울 강남구','2020-04-14',96),(14,'부산 금정구','2020-04-14',97),(15,'인천 부평구','2020-04-14',98),(16,'부산 남구','2020-04-14',99),(17,'대구 달서구','2020-04-14',100);
/*!40000 ALTER TABLE `m_dLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_dm`
--

DROP TABLE IF EXISTS `m_dm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_dm` (
  `dm_Seqno` int(11) NOT NULL AUTO_INCREMENT COMMENT '쪽지 키값',
  `dm_senderSeq` int(11) DEFAULT NULL COMMENT 'FK 보낸 유저 키값',
  `dm_reciverSeq` int(11) DEFAULT NULL COMMENT 'FK 받는 유저 키값',
  `dm_content` text COMMENT '쪽지 내용',
  `dm_InsertDate` date DEFAULT NULL COMMENT '작성 일자',
  `dm_SendDelete` int(11) DEFAULT NULL COMMENT '보낸 유저 삭제 여부',
  `dm_ReceiveDelete` int(11) DEFAULT NULL COMMENT '받은 유저 삭제 여부',
  `dm_title` varchar(100) DEFAULT NULL,
  `dm_senderid` varchar(45) DEFAULT NULL,
  `dm_reciverId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dm_Seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_dm`
--

LOCK TABLES `m_dm` WRITE;
/*!40000 ALTER TABLE `m_dm` DISABLE KEYS */;
INSERT INTO `m_dm` VALUES (1,111,222,'나한데팔아','2020-03-30',NULL,NULL,NULL,NULL,NULL),(2,111,222,'나한데 팔아','2020-03-29',NULL,NULL,'팔아',NULL,NULL),(3,111,222,'나한데 팔아','2020-03-29',NULL,NULL,'팔아',NULL,NULL),(4,111,222,'나한데 팔아','2020-03-29',NULL,NULL,'팔아',NULL,NULL),(5,222,111,'나한데 팔아','2020-03-29',NULL,NULL,'팔아',NULL,NULL),(6,1,2,'123123','2020-03-29',NULL,NULL,'123123',NULL,NULL),(7,2,NULL,'asdqw','2020-03-30',NULL,NULL,'qwdqwd',NULL,NULL),(8,2,NULL,'123','2020-03-30',NULL,NULL,'123453',NULL,NULL),(9,2,NULL,'hghg','2020-03-30',NULL,NULL,'jhgjh',NULL,NULL),(10,2,NULL,'ewfwer','2020-03-30',NULL,NULL,'werwre',NULL,NULL),(11,2,NULL,'wefwef','2020-03-30',NULL,NULL,'wefwefwfe','111',NULL),(12,2,NULL,'나한데 팔아','2020-03-31',NULL,NULL,'팔아 2만원','111',NULL),(13,2,NULL,'dfsdfsdf','2020-03-31',NULL,NULL,'sdfsdf','111',NULL),(14,2,NULL,'저한데 팔아요','2020-04-08',NULL,NULL,'11','111',NULL),(15,2,NULL,'거래합시다','2020-04-08',NULL,NULL,'쪽지주3','111',NULL),(16,2,NULL,'www','2020-04-08',NULL,NULL,'wqdw','111',NULL),(17,NULL,NULL,'흥정','2020-04-08',NULL,NULL,'고','222','111'),(18,NULL,NULL,'팔아','2020-04-08',NULL,NULL,'나에게','111','111'),(19,NULL,NULL,'거래 고','2020-04-08',NULL,NULL,'고','222','111'),(20,NULL,NULL,'얼만가요','2020-04-08',NULL,NULL,'깍아주세요','333','111'),(21,NULL,NULL,'어느정도 생각하나요','2020-04-08',NULL,NULL,'		\r\n		제시해줘요','111','333'),(22,NULL,NULL,'얼마?','2020-04-08',NULL,NULL,'		\r\n		3만원','111','333'),(23,NULL,NULL,'싫어','2020-04-08',NULL,NULL,'노','111','333'),(24,NULL,NULL,'장난해?','2020-04-08',NULL,NULL,'장난해?	','333','111'),(25,NULL,NULL,'장난해?','2020-04-08',NULL,NULL,'111','333','111'),(26,NULL,NULL,'ewgwet','2020-04-10',NULL,NULL,'wetwerew','111','111'),(27,NULL,NULL,'ewgwet','2020-04-10',NULL,NULL,'wetwerew','111','111'),(28,NULL,NULL,'조금만 할인해 주세요','2020-04-10',NULL,NULL,'저한데 파세요','111','helloub'),(29,NULL,NULL,'얼마에요?','2020-04-14',NULL,NULL,'      \r\n      저한데 파세요','abcd123','helloub'),(30,NULL,NULL,'시계사고싶습니다.','2020-04-14',NULL,NULL,'      \r\n      할인해주세요','qwer1235','helloub'),(31,NULL,NULL,'상품 사고 싶어요','2020-04-14',NULL,NULL,'      \r\n      가격 쪽지로 보내드릴께요 할인해주세요','aaa111','helloub');
/*!40000 ALTER TABLE `m_dm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_image`
--

DROP TABLE IF EXISTS `m_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_image` (
  `image_Seqno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시글 이미지 키값',
  `image_bSeqno` int(11) DEFAULT NULL COMMENT 'FK 해당 게시글 키값',
  `image_Blob` mediumblob COMMENT '인코딩 후 저장',
  `image_String` varchar(200) DEFAULT NULL COMMENT '파일이름 저장',
  PRIMARY KEY (`image_Seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_image`
--

LOCK TABLES `m_image` WRITE;
/*!40000 ALTER TABLE `m_image` DISABLE KEYS */;
INSERT INTO `m_image` VALUES (1,1,NULL,'greeting.png'),(2,2,NULL,'greeting.png'),(3,3,NULL,'greeting.png'),(4,4,NULL,'greeting.png'),(5,5,NULL,'greeting.png'),(6,6,NULL,'greeting.png'),(7,11,NULL,'direction1.png'),(8,12,NULL,'direction2.png'),(9,13,NULL,'direction1.png'),(10,14,NULL,'doctors_info.jsp'),(11,15,NULL,NULL),(12,16,NULL,NULL),(13,17,NULL,NULL),(14,18,NULL,'daeeun.png'),(15,19,NULL,NULL),(16,20,NULL,'daehwan.png'),(17,21,NULL,'proboxing.jpg'),(18,22,NULL,'111.png'),(19,23,NULL,'111.png'),(20,24,NULL,'111.png'),(21,25,NULL,'111.png'),(22,26,NULL,'111.png'),(23,27,NULL,'111.png'),(24,28,NULL,'bumyoung.png'),(25,29,NULL,'111.png'),(26,30,NULL,'111.png'),(27,32,NULL,'111.png'),(28,33,NULL,'111.png'),(29,34,NULL,'111.png'),(30,35,NULL,'111.png'),(31,36,NULL,'111.png'),(32,37,NULL,'111.png'),(33,38,NULL,'111.png'),(34,39,NULL,'111.png'),(35,40,NULL,'111.png'),(36,41,NULL,'111.png'),(37,42,NULL,'111.png'),(38,43,NULL,'111.png'),(39,44,NULL,'111.png'),(40,45,NULL,'111.png'),(41,48,NULL,'/Users/sb/Documents/111.png'),(42,49,NULL,'111.png'),(43,50,NULL,'111.png'),(44,51,NULL,'111.png'),(45,52,NULL,'111.png'),(46,53,NULL,'111.png'),(47,54,NULL,'111.png'),(48,55,NULL,'111.png'),(49,56,NULL,'111.png'),(50,57,NULL,'111.png'),(51,58,NULL,'111.png'),(52,59,NULL,'111.png'),(53,60,NULL,'111.png'),(54,61,NULL,'111.png'),(55,62,NULL,'111.png'),(56,63,NULL,'111.png'),(57,64,NULL,'111.png'),(58,65,NULL,'111.png'),(59,66,NULL,'111.png'),(60,67,NULL,'111.png'),(61,68,NULL,'111.png'),(62,69,NULL,'111.png'),(63,70,NULL,'111.png'),(64,71,NULL,'111.png'),(65,72,NULL,'111.png'),(66,73,NULL,'111.png'),(67,74,NULL,'111.png'),(68,75,NULL,'111.png'),(69,76,NULL,'74.png'),(70,77,NULL,'74_kingdom_112.png'),(71,78,NULL,'kingdom.png'),(72,79,NULL,'IMG_4484.jpg'),(73,80,NULL,'IMG_4484.jpg'),(74,81,NULL,'75_greetingimage.png'),(75,82,NULL,'75_proboxing.jpg'),(76,83,NULL,'swim.jpg'),(77,84,NULL,'123.jpg'),(78,85,NULL,'92_Marzil.jpg'),(79,86,NULL,'no1.jpg'),(80,87,NULL,'no4.jpg'),(81,88,NULL,'111.png'),(82,89,NULL,'img_0214.jpg'),(83,90,NULL,'rlx.png'),(84,91,NULL,'no1.jpg'),(85,92,NULL,'baseball0.jpg'),(86,93,NULL,'no4.jpg'),(87,94,NULL,'img_0214.jpg'),(88,95,NULL,'rlx.png'),(89,96,NULL,'computer.png'),(90,97,NULL,'computer.png'),(91,98,NULL,'Marzil.jpg'),(92,99,NULL,'Marzil.jpg'),(93,100,NULL,'93_computer.png');
/*!40000 ALTER TABLE `m_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_likes`
--

DROP TABLE IF EXISTS `m_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_likes` (
  `like_Seqno` int(11) NOT NULL AUTO_INCREMENT COMMENT '좋아요 키값',
  `like_bSeqno` int(11) DEFAULT NULL COMMENT 'FK 좋아요 누른 게시글',
  `like_uSeqno` int(11) DEFAULT NULL COMMENT '누른 유저 키값',
  `like_checked` int(11) DEFAULT '1',
  PRIMARY KEY (`like_Seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_likes`
--

LOCK TABLES `m_likes` WRITE;
/*!40000 ALTER TABLE `m_likes` DISABLE KEYS */;
INSERT INTO `m_likes` VALUES (2,87,1,1),(4,89,2,1),(6,89,1,1),(8,88,1,1),(9,93,3,1),(10,94,3,1),(11,89,3,1),(12,90,3,1),(13,94,1,1),(14,92,1,1),(15,88,3,1),(17,86,4,1),(18,89,4,1),(19,84,4,1),(20,94,2,1),(21,93,2,1),(22,90,2,1),(23,91,2,1),(24,93,1,1),(25,94,6,1),(27,95,6,1),(28,90,6,1),(29,95,7,1),(30,95,8,1),(31,94,8,1),(32,95,9,1);
/*!40000 ALTER TABLE `m_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_reply`
--

DROP TABLE IF EXISTS `m_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_reply` (
  `reply_Seqno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글 키값',
  `reply_bSeqno` int(11) DEFAULT NULL COMMENT 'FK 게시글 키값',
  `reply_uSeqno` varchar(45) DEFAULT NULL COMMENT 'FK 유저 키값',
  `reply_Date` date DEFAULT NULL,
  `reply_content` text,
  PRIMARY KEY (`reply_Seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_reply`
--

LOCK TABLES `m_reply` WRITE;
/*!40000 ALTER TABLE `m_reply` DISABLE KEYS */;
INSERT INTO `m_reply` VALUES (1,1,'1','2020-03-30','가격 제시해줘요');
/*!40000 ALTER TABLE `m_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_searchData`
--

DROP TABLE IF EXISTS `m_searchData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_searchData` (
  `search_Seqno` int(11) NOT NULL AUTO_INCREMENT COMMENT '검색 기록 키값',
  `search_Content` varchar(45) DEFAULT '가격' COMMENT '검색 내용',
  `search_Date` date DEFAULT NULL COMMENT '검색 날짜',
  PRIMARY KEY (`search_Seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_searchData`
--

LOCK TABLES `m_searchData` WRITE;
/*!40000 ALTER TABLE `m_searchData` DISABLE KEYS */;
INSERT INTO `m_searchData` VALUES (1,'감사','2020-04-01'),(2,'싼','2020-04-01'),(3,'감사','2020-04-01'),(4,'싸','2020-04-01'),(5,'ak','2020-04-01'),(6,'30000','2020-04-01'),(7,'2','2020-04-01'),(8,'다','2020-04-01'),(9,'싸','2020-04-01'),(10,'헐','2020-04-01'),(11,'땡','2020-04-01'),(12,'다되','2020-04-01'),(13,'싸','2020-04-02'),(14,'30000','2020-04-04'),(15,'싸게','2020-04-04'),(16,'30000','2020-04-08'),(17,'30000','2020-04-08'),(18,'팝니다','2020-04-08'),(19,'a','2020-04-08'),(21,'싸','2020-04-09'),(22,'tjdqnr','2020-04-09'),(23,'남구','2020-04-09'),(24,'ska','2020-04-09'),(25,'남','2020-04-09'),(26,'남','2020-04-09'),(27,'남','2020-04-09'),(29,'a','2020-04-09'),(37,'대구','2020-04-13'),(38,'바지','2020-04-13'),(39,'30000','2020-04-13'),(40,'판매','2020-04-13'),(41,'판매완료','2020-04-13'),(42,'3','2020-04-13'),(43,'바지','2020-04-14'),(44,'바지','2020-04-14'),(45,'바지','2020-04-14'),(46,'user','2020-04-14');
/*!40000 ALTER TABLE `m_searchData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_userInfo`
--

DROP TABLE IF EXISTS `m_userInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_userInfo` (
  `user_Seqno` int(11) NOT NULL AUTO_INCREMENT,
  `user_Id` varchar(45) NOT NULL,
  `user_Password` varchar(45) NOT NULL,
  `user_Name` varchar(45) DEFAULT NULL,
  `user_Telno` varchar(45) DEFAULT NULL,
  `user_Email1` varchar(45) DEFAULT NULL,
  `user_Email2` varchar(45) DEFAULT NULL,
  `user_Address1` varchar(45) DEFAULT NULL,
  `user_Address2` varchar(45) DEFAULT NULL,
  `user_Address3` varchar(45) DEFAULT NULL,
  `user_Addresszipcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_Seqno`,`user_Id`),
  UNIQUE KEY `user_Id_UNIQUE` (`user_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_userInfo`
--

LOCK TABLES `m_userInfo` WRITE;
/*!40000 ALTER TABLE `m_userInfo` DISABLE KEYS */;
INSERT INTO `m_userInfo` VALUES (1,'111','111','장진호','0119283847','123123','naver.com',' (도곡동)','서울 강남구 강남대로 238-4','2343','06267'),(2,'222','222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'qwer1234','qwer1234','임성빈','01054633456','sdkr324','daum.net',' (논현동)','서울 강남구 강남대로 478','아아','06120'),(4,'333','qwer1234','홍길동','01058599834','32433','naver.com',' (삼송동)','경기 고양시 덕양구 고양대로 1745','LH 1300동','10564'),(5,'user','wlsdud','111','010','user','naver.com',' (도곡동)','서울 강남구 강남대로 238','111','06267'),(6,'helloub','qwer1234','임성빈','01029388473','sade2387','gmail.com',' (도곡동)','서울 강남구 논현동 130-25','현대아파트 1203동 1103호','06112'),(7,'abcd123','qwer1234','임성빈','01034531253','abcvd1234','gmail.com',' (서초동)','서울 강남구 강남대로 238-2','더 조은 컴퓨터 아카데미','06267'),(8,'qwer1235','qwer1234','김진영','01054655643','qwer1235','gmail.com',' (도곡동)','서울 강남구 강남대로 238','더 조은 컴퓨터 아카데미','06267'),(9,'aaa111','qwer1234','임성빈','01065987845','aaa111','gmail.com',' (삼평동)','서울 강동구 천호동 460-15','더 조은 컴퓨터 아카데미','05248');
/*!40000 ALTER TABLE `m_userInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-14 16:42:07
