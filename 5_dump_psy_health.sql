-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: psy_health
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.19.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'anxiety'),(1,'dissatisfaction'),(4,'fatigue'),(6,'procrastination'),(2,'resentment'),(3,'self-criticism');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_types`
--

DROP TABLE IF EXISTS `content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_types`
--

LOCK TABLES `content_types` WRITE;
/*!40000 ALTER TABLE `content_types` DISABLE KEYS */;
INSERT INTO `content_types` VALUES (3,'audio'),(4,'photo'),(1,'text'),(2,'video');
/*!40000 ALTER TABLE `content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content_type_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `metadata` longtext,
  `lesson_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contents_user_id_fk` (`user_id`),
  KEY `contents_content_type_id_fk` (`content_type_id`),
  KEY `contents_lesson_id_fk` (`lesson_id`),
  CONSTRAINT `contents_content_type_id_fk` FOREIGN KEY (`content_type_id`) REFERENCES `content_types` (`id`),
  CONSTRAINT `contents_lesson_id_fk` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `contents_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,1,1,'https://dropbox/lessons/text/102042.mp3',4,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 4}',1,'2020-03-18 10:46:45','2020-05-17 22:42:49'),(2,2,1,'https://dropbox/lessons/video/51739.avi',24807,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 24807}',2,'2019-08-28 07:01:01','2020-05-17 22:42:49'),(3,3,1,'https://dropbox/lessons/audio/95484.mp3',46,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 46}',3,'2019-07-02 08:10:40','2020-05-17 22:42:49'),(4,4,4,'https://dropbox/user/photo/16286.jpeg',17,'{\"owner\": Rosendo Eichmann, \"date\": 2020-01-11 19:16:46, \"size\": 17}',NULL,'2019-07-13 15:59:51','2020-05-17 22:42:49'),(5,1,1,'https://dropbox/lessons/text/86056.mp3',1,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 1}',5,'2019-06-12 21:13:08','2020-05-17 22:42:49'),(6,2,1,'https://dropbox/lessons/video/53960.avi',16233,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 16233}',6,'2019-07-01 06:29:37','2020-05-17 22:42:49'),(7,3,1,'https://dropbox/lessons/audio/89372.mp3',55,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 55}',7,'2019-11-28 20:19:59','2020-05-17 22:42:49'),(8,4,8,'https://dropbox/user/photo/15151.jpeg',10,'{\"owner\": Sage Mueller, \"date\": 2019-09-21 23:24:18, \"size\": 10}',NULL,'2020-02-13 20:46:19','2020-05-17 22:42:49'),(9,1,1,'https://dropbox/lessons/text/74157.mp3',5,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 5}',9,'2019-08-27 23:29:13','2020-05-17 22:42:49'),(10,2,1,'https://dropbox/lessons/video/44582.avi',86741,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 86741}',10,'2019-05-23 06:05:05','2020-05-17 22:42:49'),(11,3,1,'https://dropbox/lessons/audio/50406.mp3',27,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 27}',11,'2019-08-14 14:33:50','2020-05-17 22:42:49'),(12,4,12,'https://dropbox/user/photo/16901.jpeg',16,'{\"owner\": Cary Tromp, \"date\": 2020-01-01 12:10:24, \"size\": 16}',NULL,'2019-10-04 19:38:45','2020-05-17 22:42:49'),(13,1,1,'https://dropbox/lessons/text/62618.mp3',4,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 4}',13,'2020-01-27 19:17:23','2020-05-17 22:42:49'),(14,2,1,'https://dropbox/lessons/video/31032.avi',15009,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 15009}',14,'2019-10-25 18:47:01','2020-05-17 22:42:49'),(15,3,1,'https://dropbox/lessons/audio/53914.mp3',12,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 12}',15,'2020-03-18 02:00:34','2020-05-17 22:42:49'),(16,4,16,'https://dropbox/user/photo/29049.jpeg',20,'{\"owner\": Ethel Leffler, \"date\": 2020-02-20 08:24:54, \"size\": 20}',NULL,'2019-07-02 14:44:37','2020-05-17 22:42:49'),(17,1,1,'https://dropbox/lessons/text/100618.mp3',4,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 4}',17,'2019-07-07 16:59:34','2020-05-17 22:42:49'),(18,2,1,'https://dropbox/lessons/video/31413.avi',74820,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 74820}',18,'2019-10-18 21:52:26','2020-05-17 22:42:49'),(19,3,1,'https://dropbox/lessons/audio/68352.mp3',20,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 20}',19,'2019-06-15 19:07:05','2020-05-17 22:42:49'),(20,4,20,'https://dropbox/user/photo/24546.jpeg',17,'{\"owner\": Robin Balistreri, \"date\": 2020-02-10 15:46:21, \"size\": 17}',NULL,'2019-07-12 20:11:48','2020-05-17 22:42:49'),(21,1,1,'https://dropbox/lessons/text/85235.mp3',5,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 5}',21,'2019-11-30 16:16:19','2020-05-17 22:42:49'),(22,2,1,'https://dropbox/lessons/video/33971.avi',49077,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 49077}',22,'2020-04-11 09:19:32','2020-05-17 22:42:49'),(23,3,1,'https://dropbox/lessons/audio/70020.mp3',54,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 54}',23,'2019-07-29 04:57:00','2020-05-17 22:42:49'),(24,4,24,'https://dropbox/user/photo/25581.jpeg',18,'{\"owner\": Lamont Carter, \"date\": 2020-01-17 21:00:50, \"size\": 18}',NULL,'2019-12-25 04:52:36','2020-05-17 22:42:49'),(25,1,1,'https://dropbox/lessons/text/74324.mp3',2,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 2}',25,'2019-12-12 22:58:05','2020-05-17 22:42:49'),(26,2,1,'https://dropbox/lessons/video/45615.avi',10923,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 10923}',26,'2020-01-04 22:43:19','2020-05-17 22:42:49'),(27,3,1,'https://dropbox/lessons/audio/95044.mp3',52,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 52}',27,'2019-10-27 13:25:21','2020-05-17 22:42:49'),(28,4,28,'https://dropbox/user/photo/24268.jpeg',9,'{\"owner\": Hershel Luettgen, \"date\": 2019-09-06 16:30:31, \"size\": 9}',NULL,'2019-05-29 00:47:02','2020-05-17 22:42:49'),(29,1,1,'https://dropbox/lessons/text/65916.mp3',5,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 5}',29,'2019-10-05 21:24:47','2020-05-17 22:42:49'),(30,2,1,'https://dropbox/lessons/video/56165.avi',77384,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 77384}',30,'2019-05-27 02:34:21','2020-05-17 22:42:49'),(31,3,1,'https://dropbox/lessons/audio/95159.mp3',39,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 39}',1,'2019-09-03 10:50:55','2020-05-17 22:42:49'),(32,4,32,'https://dropbox/user/photo/14597.jpeg',32,'{\"owner\": Lauretta Koelpin, \"date\": 2019-12-11 07:39:17, \"size\": 32}',NULL,'2019-05-16 08:00:26','2020-05-17 22:42:49'),(33,1,1,'https://dropbox/lessons/text/56610.mp3',1,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 1}',3,'2020-03-25 16:44:43','2020-05-17 22:42:49'),(34,2,1,'https://dropbox/lessons/video/33980.avi',74153,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 74153}',4,'2019-06-20 05:54:36','2020-05-17 22:42:49'),(35,3,1,'https://dropbox/lessons/audio/80665.mp3',29,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 29}',5,'2019-07-14 21:45:47','2020-05-17 22:42:49'),(36,4,36,'https://dropbox/user/photo/10184.jpeg',24,'{\"owner\": Evangeline Bogan, \"date\": 2019-08-04 02:45:43, \"size\": 24}',NULL,'2020-05-11 08:32:48','2020-05-17 22:42:49'),(37,1,1,'https://dropbox/lessons/text/95299.mp3',1,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 1}',7,'2019-12-06 09:19:42','2020-05-17 22:42:49'),(38,2,1,'https://dropbox/lessons/video/51403.avi',38615,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 38615}',8,'2020-03-05 03:39:26','2020-05-17 22:42:49'),(39,3,1,'https://dropbox/lessons/audio/67850.mp3',17,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 17}',9,'2020-02-26 13:30:00','2020-05-17 22:42:49'),(40,4,40,'https://dropbox/user/photo/17128.jpeg',19,'{\"owner\": Agustina Towne, \"date\": 2019-12-08 17:33:12, \"size\": 19}',NULL,'2020-02-06 01:49:28','2020-05-17 22:42:49'),(41,1,1,'https://dropbox/lessons/text/76665.mp3',2,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 2}',11,'2019-08-25 07:58:00','2020-05-17 22:42:49'),(42,2,1,'https://dropbox/lessons/video/45078.avi',50614,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 50614}',12,'2020-04-28 06:04:52','2020-05-17 22:42:49'),(43,3,1,'https://dropbox/lessons/audio/107256.mp3',41,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 41}',13,'2019-10-26 22:24:38','2020-05-17 22:42:49'),(44,4,44,'https://dropbox/user/photo/25090.jpeg',13,'{\"owner\": Keagan Marquardt, \"date\": 2020-04-27 11:52:37, \"size\": 13}',NULL,'2019-12-30 08:27:23','2020-05-17 22:42:49'),(45,1,1,'https://dropbox/lessons/text/107432.mp3',3,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 3}',15,'2019-06-04 19:39:45','2020-05-17 22:42:49'),(46,2,1,'https://dropbox/lessons/video/41180.avi',37224,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 37224}',16,'2019-07-22 16:15:32','2020-05-17 22:42:49'),(47,3,1,'https://dropbox/lessons/audio/102727.mp3',44,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 44}',17,'2019-11-17 03:56:00','2020-05-17 22:42:49'),(48,4,48,'https://dropbox/user/photo/24064.jpeg',28,'{\"owner\": Lucinda Terry, \"date\": 2020-04-12 09:15:42, \"size\": 28}',NULL,'2019-07-23 06:01:49','2020-05-17 22:42:49'),(49,1,1,'https://dropbox/lessons/text/77163.mp3',1,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 1}',19,'2019-07-08 09:31:21','2020-05-17 22:42:49'),(50,2,1,'https://dropbox/lessons/video/40668.avi',24282,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 24282}',20,'2019-11-10 08:34:13','2020-05-17 22:42:49'),(51,3,1,'https://dropbox/lessons/audio/81870.mp3',35,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 35}',21,'2019-08-02 15:46:27','2020-05-17 22:42:49'),(52,4,52,'https://dropbox/user/photo/15051.jpeg',18,'{\"owner\": Arnulfo Gibson, \"date\": 2019-07-07 04:51:34, \"size\": 18}',NULL,'2019-11-03 22:41:33','2020-05-17 22:42:49'),(53,1,1,'https://dropbox/lessons/text/73518.mp3',5,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 5}',23,'2019-12-03 09:20:15','2020-05-17 22:42:49'),(54,2,1,'https://dropbox/lessons/video/49798.avi',89737,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 89737}',24,'2019-06-17 07:03:05','2020-05-17 22:42:49'),(55,3,1,'https://dropbox/lessons/audio/51169.mp3',36,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 36}',25,'2019-12-21 14:42:09','2020-05-17 22:42:49'),(56,4,56,'https://dropbox/user/photo/13063.jpeg',21,'{\"owner\": Laurie Adams, \"date\": 2019-06-01 15:49:07, \"size\": 21}',NULL,'2020-03-01 04:55:55','2020-05-17 22:42:49'),(57,1,1,'https://dropbox/lessons/text/86104.mp3',3,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 3}',27,'2019-06-10 23:15:31','2020-05-17 22:42:49'),(58,2,1,'https://dropbox/lessons/video/56987.avi',95838,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 95838}',28,'2019-11-29 03:57:40','2020-05-17 22:42:49'),(59,3,1,'https://dropbox/lessons/audio/80235.mp3',16,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 16}',29,'2019-07-21 14:08:27','2020-05-17 22:42:49'),(60,4,60,'https://dropbox/user/photo/10162.jpeg',21,'{\"owner\": Mossie Waelchi, \"date\": 2019-06-07 01:02:31, \"size\": 21}',NULL,'2019-07-29 23:25:15','2020-05-17 22:42:49'),(61,1,1,'https://dropbox/lessons/text/99964.mp3',3,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 3}',1,'2020-02-13 18:31:00','2020-05-17 22:42:49'),(62,2,1,'https://dropbox/lessons/video/65544.avi',19980,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 19980}',2,'2020-03-03 00:15:28','2020-05-17 22:42:49'),(63,3,1,'https://dropbox/lessons/audio/77668.mp3',11,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 11}',3,'2020-03-11 00:30:15','2020-05-17 22:42:49'),(64,4,64,'https://dropbox/user/photo/21623.jpeg',9,'{\"owner\": Bradford Walsh, \"date\": 2020-04-19 04:25:35, \"size\": 9}',NULL,'2020-01-13 12:53:28','2020-05-17 22:42:49'),(65,1,1,'https://dropbox/lessons/text/71512.mp3',2,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 2}',5,'2019-06-11 01:38:27','2020-05-17 22:42:49'),(66,2,1,'https://dropbox/lessons/video/46758.avi',72388,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 72388}',6,'2020-02-08 19:43:20','2020-05-17 22:42:49'),(67,3,1,'https://dropbox/lessons/audio/97638.mp3',46,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 46}',7,'2019-07-30 11:22:55','2020-05-17 22:42:49'),(68,4,68,'https://dropbox/user/photo/27631.jpeg',23,'{\"owner\": Gideon Fritsch, \"date\": 2020-02-12 15:02:49, \"size\": 23}',NULL,'2020-04-01 11:14:58','2020-05-17 22:42:49'),(69,1,1,'https://dropbox/lessons/text/67667.mp3',3,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 3}',9,'2019-09-16 14:03:37','2020-05-17 22:42:49'),(70,2,1,'https://dropbox/lessons/video/47157.avi',21998,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 21998}',10,'2020-04-02 16:43:41','2020-05-17 22:42:49'),(71,3,1,'https://dropbox/lessons/audio/85185.mp3',39,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 39}',11,'2019-09-28 08:43:14','2020-05-17 22:42:49'),(72,4,72,'https://dropbox/user/photo/23283.jpeg',8,'{\"owner\": Kellie Monahan, \"date\": 2019-05-30 02:48:37, \"size\": 8}',NULL,'2019-07-08 05:08:23','2020-05-17 22:42:49'),(73,1,1,'https://dropbox/lessons/text/73797.mp3',1,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 1}',13,'2019-09-23 22:32:29','2020-05-17 22:42:49'),(74,2,1,'https://dropbox/lessons/video/65512.avi',62827,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 62827}',14,'2020-05-04 14:14:34','2020-05-17 22:42:49'),(75,3,1,'https://dropbox/lessons/audio/83011.mp3',49,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 49}',15,'2020-02-12 20:42:41','2020-05-17 22:42:49'),(76,4,76,'https://dropbox/user/photo/23526.jpeg',10,'{\"owner\": Kelley Lueilwitz, \"date\": 2019-11-19 13:19:40, \"size\": 10}',NULL,'2019-09-08 02:43:51','2020-05-17 22:42:49'),(77,1,1,'https://dropbox/lessons/text/55988.mp3',4,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 4}',17,'2020-01-12 18:07:01','2020-05-17 22:42:49'),(78,2,1,'https://dropbox/lessons/video/36092.avi',58142,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 58142}',18,'2020-02-10 21:01:49','2020-05-17 22:42:49'),(79,3,1,'https://dropbox/lessons/audio/109499.mp3',19,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 19}',19,'2019-10-06 00:04:23','2020-05-17 22:42:49'),(80,4,80,'https://dropbox/user/photo/17778.jpeg',21,'{\"owner\": Willard Auer, \"date\": 2019-09-25 23:51:48, \"size\": 21}',NULL,'2020-04-25 09:13:51','2020-05-17 22:42:49'),(81,1,1,'https://dropbox/lessons/text/68548.mp3',2,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 2}',21,'2019-09-12 23:34:35','2020-05-17 22:42:49'),(82,2,1,'https://dropbox/lessons/video/33923.avi',92230,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 92230}',22,'2019-08-17 04:25:54','2020-05-17 22:42:49'),(83,3,1,'https://dropbox/lessons/audio/68464.mp3',37,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 37}',23,'2019-11-19 01:42:44','2020-05-17 22:42:49'),(84,4,84,'https://dropbox/user/photo/28315.jpeg',19,'{\"owner\": Jevon Effertz, \"date\": 2019-12-09 06:53:39, \"size\": 19}',NULL,'2020-04-30 18:16:26','2020-05-17 22:42:49'),(85,1,1,'https://dropbox/lessons/text/64776.mp3',4,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 4}',25,'2020-02-12 21:07:55','2020-05-17 22:42:49'),(86,2,1,'https://dropbox/lessons/video/31341.avi',96726,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 96726}',26,'2019-06-19 19:08:07','2020-05-17 22:42:49'),(87,3,1,'https://dropbox/lessons/audio/83825.mp3',19,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 19}',27,'2020-02-01 07:28:19','2020-05-17 22:42:49'),(88,4,88,'https://dropbox/user/photo/18241.jpeg',21,'{\"owner\": Brice Sawayn, \"date\": 2019-12-16 13:18:08, \"size\": 21}',NULL,'2020-02-12 16:14:06','2020-05-17 22:42:49'),(89,1,1,'https://dropbox/lessons/text/68238.mp3',5,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 5}',29,'2020-04-15 17:02:14','2020-05-17 22:42:49'),(90,2,1,'https://dropbox/lessons/video/64935.avi',16940,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 16940}',30,'2019-07-31 18:14:18','2020-05-17 22:42:49'),(91,3,1,'https://dropbox/lessons/audio/103731.mp3',22,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 22}',1,'2020-01-09 04:08:59','2020-05-17 22:42:49'),(92,4,92,'https://dropbox/user/photo/16261.jpeg',17,'{\"owner\": Jonathon Langworth, \"date\": 2019-09-16 22:56:05, \"size\": 17}',NULL,'2019-08-26 03:57:16','2020-05-17 22:42:49'),(93,1,1,'https://dropbox/lessons/text/96861.mp3',1,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 1}',3,'2019-05-31 10:09:37','2020-05-17 22:42:49'),(94,2,1,'https://dropbox/lessons/video/40652.avi',54523,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 54523}',4,'2019-08-19 03:41:28','2020-05-17 22:42:49'),(95,3,1,'https://dropbox/lessons/audio/97182.mp3',46,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 46}',5,'2019-12-06 08:28:37','2020-05-17 22:42:49'),(96,4,96,'https://dropbox/user/photo/16581.jpeg',16,'{\"owner\": Emilie Oberbrunner, \"date\": 2019-10-30 23:58:34, \"size\": 16}',NULL,'2019-07-23 04:22:01','2020-05-17 22:42:49'),(97,1,1,'https://dropbox/lessons/text/109594.mp3',2,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 2}',7,'2019-09-14 18:22:33','2020-05-17 22:42:49'),(98,2,1,'https://dropbox/lessons/video/58456.avi',31795,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 31795}',8,'2019-09-19 09:53:25','2020-05-17 22:42:49'),(99,3,1,'https://dropbox/lessons/audio/64717.mp3',55,'{\"owner\": admin admin, \"date\": 2019-06-10 14:26:17, \"size\": 55}',9,'2019-12-30 05:54:05','2020-05-17 22:42:49'),(100,4,100,'https://dropbox/user/photo/24122.jpeg',19,'{\"owner\": Esther D\'Amore, \"date\": 2019-09-28 07:11:04, \"size\": 19}',NULL,'2019-09-14 17:41:38','2020-05-17 22:42:49');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_tasks`
--

DROP TABLE IF EXISTS `lesson_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_tasks` (
  `id` int unsigned NOT NULL,
  `lesson_id` int unsigned NOT NULL,
  `description` varchar(1000) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `lesson_tasks_lesson_id_fk` (`lesson_id`),
  CONSTRAINT `lesson_tasks_lesson_id_fk` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_tasks`
--

LOCK TABLES `lesson_tasks` WRITE;
/*!40000 ALTER TABLE `lesson_tasks` DISABLE KEYS */;
INSERT INTO `lesson_tasks` VALUES (1,1,'Et aut unde quia sed accusamus quasi sit qui. Optio fugit dolores excepturi autem aliquam esse. Quo deleniti aut consequuntur quaerat.'),(2,2,'Iusto non eaque fuga facere dignissimos molestiae. Accusantium perferendis eum corporis officia possimus vitae. Fugiat officia inventore ad officiis laboriosam illum sint nihil.'),(3,3,'Autem dolorem temporibus corporis vel. Impedit incidunt voluptas aliquid nihil consequatur laborum ab. Temporibus ut in sunt et quibusdam veritatis qui est.'),(4,4,'Quidem perspiciatis sunt non. Quam voluptatem id ea magnam a. Exercitationem ab optio enim. Debitis rerum laborum libero nobis consequatur eos.'),(5,5,'Recusandae a est magni libero officiis necessitatibus eius. Aut enim voluptas dolores earum quod. Error at voluptas ipsum possimus laborum repellat ut.'),(6,6,'Ducimus nisi aspernatur possimus aperiam enim qui. Id esse sed fuga et. Harum illum sed explicabo exercitationem quaerat. Consequatur voluptatum ipsam quos ut.'),(7,7,'Porro dolores perferendis dignissimos voluptatum dolores illum aut. Minus nihil sunt id dicta. Eius corrupti aut qui rerum sed in porro.'),(8,8,'Officiis mollitia nemo doloremque est. Ut at iste nihil vel doloremque. Quis sint doloribus ullam vel delectus laborum sunt. Excepturi commodi tempore dolorum hic dolor voluptatem.'),(9,9,'Quia dolore qui culpa aut ipsa hic labore libero. Voluptatum debitis dolor mollitia voluptas eaque temporibus. Recusandae sed aperiam laborum culpa enim.'),(10,10,'Quo dolor doloribus et voluptatum facilis corrupti quibusdam. Nihil modi ut architecto similique hic facilis. Et quos voluptas et et pariatur alias sint sit. Nisi beatae id pariatur molestiae voluptates ab.'),(11,11,'Voluptatem mollitia quis voluptatibus ea ea voluptas nihil. Illum rem neque et ipsa magni. Aut et atque eos provident autem. Sed recusandae consequatur in unde rerum voluptatum.'),(12,12,'Provident atque eveniet id ut id inventore. Eius nam amet iure nesciunt ut eum. Laudantium provident voluptatem in. Aliquam dolor sint temporibus optio est adipisci optio.'),(13,13,'Iure optio minima beatae amet est provident. Non non eum et vel autem. Impedit veritatis aut sint dolorum magni et temporibus doloremque.'),(14,14,'Molestiae consequatur qui sint a ex illo sint. Sunt excepturi quibusdam est facere. Veritatis facere natus eaque omnis. Quaerat quas autem in est corporis aliquam deserunt quod.'),(15,15,'Vel rem beatae vel sapiente et aut. Rerum sunt doloremque deserunt quos. Quia sed ex ab dolorum. Consequatur quibusdam excepturi facere minus dignissimos voluptas quod.'),(16,16,'Ratione ipsam dolorum dicta unde quos. Dolorem est est ut. Exercitationem ducimus rem officia est aspernatur.'),(17,17,'Placeat nam hic nihil cum non dolorem. Iusto natus facere nam ipsam commodi et. Assumenda aliquid dicta aut qui.'),(18,18,'Ex quas excepturi a quisquam. Est consequatur optio labore cupiditate. Ex eos beatae quo quisquam quia cumque voluptatem. Autem accusamus nihil illo pariatur omnis quod aspernatur.'),(19,19,'Voluptates doloribus inventore illo excepturi praesentium aut perferendis. Necessitatibus at accusamus consequuntur assumenda saepe molestias et. Ratione quasi qui corporis velit.'),(20,20,'Rerum laudantium error adipisci. Quo voluptas aliquid vel. Voluptatem repudiandae veritatis deleniti.'),(21,21,'Et quidem assumenda totam. A est qui praesentium architecto. Minus tempore velit sit at.'),(22,22,'Saepe quia expedita numquam consequuntur facilis consequuntur perferendis. Laudantium sed sint eum repellat perspiciatis. Quia quibusdam quas aut omnis. Ut harum voluptates dolor doloribus.'),(23,23,'Quod ut repellat eos est vel velit quia. Esse sed laudantium dolor totam. Numquam eaque quis accusantium placeat. '),(24,24,'Quis perspiciatis praesentium sint voluptas illo earum. Provident facilis laboriosam minima sit quaerat et voluptatum.'),(25,25,'Quo mollitia id tempore voluptatem sunt omnis quo. Distinctio qui quia autem et. Ut vitae rerum totam eius rerum. '),(26,26,'Eos et ut sint suscipit officiis. Qui fugit officia quaerat nemo qui molestias nulla. '),(27,27,'Consequatur pariatur eveniet officiis iusto nulla possimus. Tempore sunt voluptatem voluptatem tenetur aut explicabo.'),(28,28,'Dolorem maiores itaque et itaque eum. Eius sit et dolorem molestiae qui similique. Molestiae et aut consequatur laudantium.'),(29,29,'Iure dolorem nam ad velit ut nihil neque. Pariatur debitis provident voluptatibus quos sit unde. Velit cumque ipsam qui nulla.'),(30,30,'Dolore modi voluptatem sed repellat cum. Aliquam explicabo blanditiis omnis quos qui doloribus aut. Odit voluptatem nam quas et dolorem.');
/*!40000 ALTER TABLE `lesson_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lesson_tasks_view`
--

DROP TABLE IF EXISTS `lesson_tasks_view`;
/*!50001 DROP VIEW IF EXISTS `lesson_tasks_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lesson_tasks_view` AS SELECT 
 1 AS `lesson_name`,
 1 AS `category_name`,
 1 AS `task`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `lessons_category_id_fk` (`category_id`),
  KEY `lessons_name_idx` (`name`),
  CONSTRAINT `lessons_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,'Lesson_1_diss','Et aut unde quia sed accusamus quasi sit qui. Optio fugit dolores excepturi autem aliquam esse. Quo deleniti aut consequuntur quaerat.',1),(2,'Lesson_5_proc','Iusto non eaque fuga facere dignissimos molestiae. Accusantium perferendis eum corporis officia possimus vitae. Fugiat officia inventore ad officiis laboriosam illum sint nihil. Ipsum rerum et dolor culpa.',6),(3,'Lesson_1_resn','Autem dolorem temporibus corporis vel. Impedit incidunt voluptas aliquid nihil consequatur laborum ab. Temporibus ut in sunt et quibusdam veritatis qui est. Iure sed possimus quam omnis et. Rem tempora unde corporis ducimus.',2),(4,'Lesson_2_resn','Quidem perspiciatis sunt non. Quam voluptatem id ea magnam a. Exercitationem ab optio enim. Debitis rerum laborum libero nobis consequatur eos.',2),(5,'Lesson_2_diss','Recusandae a est magni libero officiis necessitatibus eius. Aut enim voluptas dolores earum quod. Error at voluptas ipsum possimus laborum repellat ut.',1),(6,'Lesson_1_self','Ducimus nisi aspernatur possimus aperiam enim qui. Id esse sed fuga et. Harum illum sed explicabo exercitationem quaerat. Consequatur voluptatum ipsam quos ut.',3),(7,'Lesson_3_diss','Porro dolores perferendis dignissimos voluptatum dolores illum aut. Minus nihil sunt id dicta. Eius corrupti aut qui rerum sed in porro. Ratione ab aspernatur doloremque exercitationem consequatur beatae.',1),(8,'Lesson_4_anxi','Officiis mollitia nemo doloremque est. Ut at iste nihil vel doloremque. Quis sint doloribus ullam vel delectus laborum sunt. Excepturi commodi tempore dolorum hic dolor voluptatem.',5),(9,'Lesson_1_fatg','Quia dolore qui culpa aut ipsa hic labore libero. Voluptatum debitis dolor mollitia voluptas eaque temporibus. Recusandae sed aperiam laborum culpa enim.',4),(10,'Lesson_5_diss','Quo dolor doloribus et voluptatum facilis corrupti quibusdam. Nihil modi ut architecto similique hic facilis. Et quos voluptas et et pariatur alias sint sit. Nisi beatae id pariatur molestiae voluptates ab.',1),(11,'Lesson_1_anxi','Voluptatem mollitia quis voluptatibus ea ea voluptas nihil. Illum rem neque et ipsa magni. Aut et atque eos provident autem. Sed recusandae consequatur in unde rerum voluptatum.',5),(12,'Lesson_2_fatg','Provident atque eveniet id ut id inventore. Eius nam amet iure nesciunt ut eum. Laudantium provident voluptatem in. Aliquam dolor sint temporibus optio est adipisci optio. Ea deserunt quisquam quos porro enim quis quas consequatur.',4),(13,'Lesson_3_fatg','Iure optio minima beatae amet est provident. Non non eum et vel autem. Impedit veritatis aut sint dolorum magni et temporibus doloremque.',4),(14,'Lesson_5_self','Molestiae consequatur qui sint a ex illo sint. Sunt excepturi quibusdam est facere. Veritatis facere natus eaque omnis. Quaerat quas autem in est corporis aliquam deserunt quod.',3),(15,'Lesson_4_proc','Vel rem beatae vel sapiente et aut. Rerum sunt doloremque deserunt quos. Quia sed ex ab dolorum. Consequatur quibusdam excepturi facere minus dignissimos voluptas quod. Repellat asperiores natus et nulla.',6),(16,'Lesson_2_proc','Ratione ipsam dolorum dicta unde quos. Dolorem est est ut. Exercitationem ducimus rem officia est aspernatur.',6),(17,'Lesson_5_fatg','Placeat nam hic nihil cum non dolorem. Iusto natus facere nam ipsam commodi et. Assumenda aliquid dicta aut qui.',4),(18,'Lesson_1_proc','Ex quas excepturi a quisquam. Est consequatur optio labore cupiditate. Ex eos beatae quo quisquam quia cumque voluptatem. Autem accusamus nihil illo pariatur omnis quod aspernatur.',6),(19,'Lesson_4_self','Voluptates doloribus inventore illo excepturi praesentium aut perferendis. Necessitatibus at accusamus consequuntur assumenda saepe molestias et. Ratione quasi qui corporis velit. Iste esse consectetur omnis quisquam ab sit consequatur. Pariatur praesentium et labore ut illo.',3),(20,'Lesson_2_anxi','Rerum laudantium error adipisci. Quo voluptas aliquid vel. Voluptatem repudiandae veritatis deleniti.',5),(21,'Lesson_3_self','Et quidem assumenda totam. A est qui praesentium architecto. Minus tempore velit sit at.',3),(22,'Lesson_3_anxi','Saepe quia expedita numquam consequuntur facilis consequuntur perferendis. Laudantium sed sint eum repellat perspiciatis. Quia quibusdam quas aut omnis. Ut harum voluptates dolor doloribus. Nihil saepe est doloremque beatae et sint.',5),(23,'Lesson_4_fatg','Quod ut repellat eos est vel velit quia. Esse sed laudantium dolor totam. Numquam eaque quis accusantium placeat. Exercitationem ducimus a animi sit reiciendis qui rem.',4),(24,'Lesson_5_resn','Quis perspiciatis praesentium sint voluptas illo earum. Provident facilis laboriosam minima sit quaerat et voluptatum. Quam illum quo exercitationem voluptates maiores ratione temporibus.',2),(25,'Lesson_5_anxi','Quo mollitia id tempore voluptatem sunt omnis quo. Distinctio qui quia autem et. Ut vitae rerum totam eius rerum. Non earum pariatur optio quaerat.',5),(26,'Lesson_4_resn','Eos et ut sint suscipit officiis. Qui fugit officia quaerat nemo qui molestias nulla. Est optio nihil ratione officiis ad illum nemo ad.',2),(27,'Lesson_4_diss','Consequatur pariatur eveniet officiis iusto nulla possimus. Tempore sunt voluptatem voluptatem tenetur aut explicabo. Ipsa reiciendis iusto laborum temporibus earum.',1),(28,'Lesson_3_proc','Dolorem maiores itaque et itaque eum. Eius sit et dolorem molestiae qui similique. Molestiae et aut consequatur laudantium. Neque aut voluptate unde quo laborum ut. Rerum dicta et ut a eos omnis.',6),(29,'Lesson_3_resn','Iure dolorem nam ad velit ut nihil neque. Pariatur debitis provident voluptatibus quos sit unde. Velit cumque ipsam qui nulla.',2),(30,'Lesson_2_self','Dolore modi voluptatem sed repellat cum. Aliquam explicabo blanditiis omnis quos qui doloribus aut. Odit voluptatem nam quas et dolorem.',3);
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL,
  `gender` char(1) NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  `social_media` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `profiles_photo_id_fk` (`photo_id`),
  CONSTRAINT `profiles_photo_id_fk` FOREIGN KEY (`photo_id`) REFERENCES `contents` (`id`),
  CONSTRAINT `profiles_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','1974-10-05','Port Brandon','Switzerland',NULL,'gmail.com','+7(816)135-36-32','2020-05-17 23:24:34'),(2,'m','1975-12-12','Laurettaton','Iraq',NULL,'hotmail.com','+7(857)106-67-68','2020-05-17 23:24:34'),(3,'f','2005-10-07','Candiceville','Monaco',NULL,'yahoo.com','+7(888)124-66-20','2020-05-17 23:24:34'),(4,'f','2018-01-03','Bofurt','Botswana',4,'yahoo.com','+7(895)136-105-69','2020-05-17 23:24:37'),(5,'f','1980-01-21','Lake Sydney','United Arab Emirates',NULL,'hotmail.com','+7(882)189-108-32','2020-05-17 23:24:34'),(6,'m','1985-05-11','Altenwerthfurt','Niue',NULL,'yahoo.com','+7(841)125-10-31','2020-05-17 23:24:34'),(7,'f','1980-12-09','Nikolausstad','Albania',NULL,'gmail.com','+7(831)178-107-54','2020-05-17 23:24:34'),(8,'m','1987-06-16','Kemmerburgh','Myanmar',8,'hotmail.com','+7(881)140-69-73','2020-05-17 23:24:37'),(9,'m','1991-08-06','Leannonmouth','Namibia',NULL,'hotmail.com','+7(814)135-45-65','2020-05-17 23:24:34'),(10,'f','1978-03-13','Camronside','Saudi Arabia',NULL,'yahoo.com','+7(840)192-53-41','2020-05-17 23:24:34'),(11,'f','1999-10-17','Port Alicemouth','Timor-Leste',NULL,'yahoo.com','+7(865)109-62-37','2020-05-17 23:24:34'),(12,'m','2010-07-04','Mariamchester','Botswana',12,'gmail.com','+7(812)159-69-26','2020-05-17 23:24:37'),(13,'f','2018-01-02','Swiftfort','Costa Rica',NULL,'hotmail.com','+7(825)165-59-53','2020-05-17 23:24:34'),(14,'f','2002-01-28','Port Brennonville','Maldives',NULL,'yahoo.com','+7(822)150-93-65','2020-05-17 23:24:34'),(15,'f','1997-02-08','Amyashire','Peru',NULL,'hotmail.com','+7(895)167-61-55','2020-05-17 23:24:34'),(16,'f','2005-05-31','Nienowshire','Benin',16,'hotmail.com','+7(829)175-100-33','2020-05-17 23:24:37'),(17,'m','1987-08-15','Funkbury','Iraq',NULL,'hotmail.com','+7(872)172-55-19','2020-05-17 23:24:34'),(18,'m','1973-12-14','West Pink','Benin',NULL,'hotmail.com','+7(822)177-30-65','2020-05-17 23:24:34'),(19,'f','1994-01-18','Ambroseshire','Grenada',NULL,'yahoo.com','+7(885)120-53-55','2020-05-17 23:24:34'),(20,'f','1978-06-23','North Ameliafort','Morocco',20,'gmail.com','+7(855)107-77-26','2020-05-17 23:24:37'),(21,'f','1990-05-02','Sauerside','Greece',NULL,'hotmail.com','+7(897)126-50-28','2020-05-17 23:24:34'),(22,'f','1994-02-19','Ryanville','Ethiopia',NULL,'gmail.com','+7(892)193-101-72','2020-05-17 23:24:34'),(23,'f','2011-08-29','Adamsville','United States of America',NULL,'yahoo.com','+7(817)149-107-42','2020-05-17 23:24:34'),(24,'m','1977-07-17','Bahringerbury','Bahrain',24,'hotmail.com','+7(809)123-100-77','2020-05-17 23:24:37'),(25,'f','1976-07-06','Brycenberg','Sudan',NULL,'yahoo.com','+7(850)196-41-65','2020-05-17 23:24:34'),(26,'m','1976-06-10','Herbertville','Italy',NULL,'hotmail.com','+7(851)151-10-47','2020-05-17 23:24:34'),(27,'f','1990-06-09','Alexandriaton','Equatorial Guinea',NULL,'yahoo.com','+7(835)137-90-84','2020-05-17 23:24:34'),(28,'f','2014-07-10','South Lolitatown','Turkmenistan',28,'hotmail.com','+7(820)123-65-19','2020-05-17 23:24:37'),(29,'m','1982-04-16','South Giuseppehaven','Timor-Leste',NULL,'yahoo.com','+7(888)109-91-77','2020-05-17 23:24:34'),(30,'m','1973-06-12','Fredericshire','Argentina',NULL,'yahoo.com','+7(871)105-20-41','2020-05-17 23:24:34'),(31,'m','1975-03-05','Franeckimouth','Turkmenistan',NULL,'yahoo.com','+7(866)111-68-57','2020-05-17 23:24:34'),(32,'m','2014-07-23','Kiannachester','Uruguay',32,'hotmail.com','+7(818)115-32-62','2020-05-17 23:24:37'),(33,'m','1975-08-07','Marquardtchester','Estonia',NULL,'yahoo.com','+7(861)110-76-12','2020-05-17 23:24:34'),(34,'f','1998-01-11','East Trevionburgh','Suriname',NULL,'yahoo.com','+7(814)162-77-54','2020-05-17 23:24:34'),(35,'m','1982-01-15','Lesleyfurt','Nicaragua',NULL,'yahoo.com','+7(872)197-79-55','2020-05-17 23:24:34'),(36,'m','1991-05-26','Nikoborough','Marshall Islands',36,'yahoo.com','+7(876)108-22-42','2020-05-17 23:24:37'),(37,'f','1990-06-25','Lake Spencer','Poland',NULL,'yahoo.com','+7(862)191-77-63','2020-05-17 23:24:34'),(38,'f','1982-06-02','Port Donnie','Saint Pierre and Miquelon',NULL,'hotmail.com','+7(831)155-93-52','2020-05-17 23:24:34'),(39,'f','2004-07-05','Zitamouth','Falkland Islands (Malvinas)',NULL,'hotmail.com','+7(811)198-66-81','2020-05-17 23:24:34'),(40,'f','1971-02-28','East Cecilia','Belize',40,'hotmail.com','+7(877)116-63-23','2020-05-17 23:24:37'),(41,'m','2008-09-30','Lake Astrid','Libyan Arab Jamahiriya',NULL,'hotmail.com','+7(824)169-85-67','2020-05-17 23:24:34'),(42,'m','1994-10-28','Deannaberg','Liberia',NULL,'yahoo.com','+7(832)145-38-16','2020-05-17 23:24:34'),(43,'f','2012-11-03','Lake Lew','New Zealand',NULL,'yahoo.com','+7(855)150-98-84','2020-05-17 23:24:34'),(44,'f','1984-01-04','Jamesonton','Indonesia',44,'hotmail.com','+7(895)100-24-67','2020-05-17 23:24:37'),(45,'f','1974-07-20','Lake Rigoberto','Monaco',NULL,'yahoo.com','+7(818)174-27-60','2020-05-17 23:24:34'),(46,'f','1973-03-01','North Jaronhaven','Lesotho',NULL,'gmail.com','+7(861)118-17-77','2020-05-17 23:24:34'),(47,'f','1970-11-28','Melyssamouth','Barbados',NULL,'hotmail.com','+7(800)146-40-20','2020-05-17 23:24:34'),(48,'f','1993-10-16','Trantowton','Cameroon',48,'gmail.com','+7(874)135-61-53','2020-05-17 23:24:37'),(49,'f','2007-01-20','Eltonside','Botswana',NULL,'yahoo.com','+7(814)110-16-13','2020-05-17 23:24:34'),(50,'f','2017-05-18','Homenickfurt','Malawi',NULL,'yahoo.com','+7(803)103-15-23','2020-05-17 23:24:34'),(51,'f','1982-08-29','Bergnaumport','Albania',NULL,'gmail.com','+7(866)183-26-37','2020-05-17 23:24:34'),(52,'m','1989-06-18','North Ardella','Uruguay',52,'yahoo.com','+7(822)109-87-59','2020-05-17 23:24:37'),(53,'m','1993-11-19','Koeppmouth','Albania',NULL,'yahoo.com','+7(876)196-62-71','2020-05-17 23:24:34'),(54,'m','2019-03-24','Mosciskishire','Kenya',NULL,'hotmail.com','+7(824)191-92-44','2020-05-17 23:24:34'),(55,'m','1996-02-19','North Itzel','Belize',NULL,'yahoo.com','+7(866)101-19-44','2020-05-17 23:24:34'),(56,'m','2006-01-02','North Noetown','Singapore',56,'yahoo.com','+7(889)114-13-70','2020-05-17 23:24:37'),(57,'m','1985-02-08','Tillmanview','Russian Federation',NULL,'gmail.com','+7(866)107-47-62','2020-05-17 23:24:34'),(58,'f','1998-07-05','Garretview','Malawi',NULL,'hotmail.com','+7(815)182-72-63','2020-05-17 23:24:34'),(59,'f','1986-04-03','Port Constantinland','France',NULL,'gmail.com','+7(848)141-69-70','2020-05-17 23:24:34'),(60,'f','1995-08-26','Gleichnerfort','Malawi',60,'gmail.com','+7(800)175-83-45','2020-05-17 23:24:37'),(61,'f','1979-01-13','Bogisichville','Afghanistan',NULL,'hotmail.com','+7(897)156-98-73','2020-05-17 23:24:34'),(62,'m','2013-10-10','Gussiehaven','Iraq',NULL,'hotmail.com','+7(828)105-49-77','2020-05-17 23:24:34'),(63,'m','1981-10-19','Lake Julie','Gambia',NULL,'gmail.com','+7(803)164-21-62','2020-05-17 23:24:34'),(64,'m','1982-01-28','East Anna','Myanmar',64,'gmail.com','+7(894)172-87-70','2020-05-17 23:24:37'),(65,'f','2019-02-28','Arelyton','Malawi',NULL,'gmail.com','+7(845)197-63-69','2020-05-17 23:24:34'),(66,'f','1976-06-03','Tadton','Uruguay',NULL,'yahoo.com','+7(812)137-62-49','2020-05-17 23:24:34'),(67,'m','2011-07-29','South Gerda','Finland',NULL,'yahoo.com','+7(886)186-82-15','2020-05-17 23:24:34'),(68,'f','1971-07-22','Daisyton','Yemen',68,'yahoo.com','+7(813)148-12-64','2020-05-17 23:24:37'),(69,'m','1985-09-02','Port Domenico','Argentina',NULL,'yahoo.com','+7(829)142-37-16','2020-05-17 23:24:34'),(70,'f','2001-03-23','Eastonland','Kiribati',NULL,'hotmail.com','+7(859)173-97-26','2020-05-17 23:24:34'),(71,'f','2009-04-19','Port Elvamouth','Honduras',NULL,'yahoo.com','+7(837)126-30-28','2020-05-17 23:24:34'),(72,'m','1995-04-01','Cummerataborough','Saint Helena',72,'yahoo.com','+7(851)191-108-31','2020-05-17 23:24:37'),(73,'f','2007-03-18','West Jessica','Cote d\'Ivoire',NULL,'gmail.com','+7(831)180-17-87','2020-05-17 23:24:34'),(74,'m','1973-08-12','Bransonview','Czech Republic',NULL,'yahoo.com','+7(860)111-84-45','2020-05-17 23:24:34'),(75,'m','2015-12-04','New Vergie','Central African Republic',NULL,'yahoo.com','+7(893)136-12-12','2020-05-17 23:24:34'),(76,'m','2018-07-19','West Dorthaland','Peru',76,'yahoo.com','+7(806)125-15-50','2020-05-17 23:24:37'),(77,'f','1985-01-01','Schultzland','Trinidad and Tobago',NULL,'hotmail.com','+7(839)144-14-79','2020-05-17 23:24:34'),(78,'f','1992-01-31','South Frankiemouth','Wallis and Futuna',NULL,'gmail.com','+7(823)154-14-57','2020-05-17 23:24:34'),(79,'m','1990-09-27','Littelfurt','Tonga',NULL,'gmail.com','+7(883)140-58-30','2020-05-17 23:24:34'),(80,'m','2003-11-08','North Deion','Sweden',80,'yahoo.com','+7(880)125-94-52','2020-05-17 23:24:37'),(81,'f','1988-07-16','Robeltown','Western Sahara',NULL,'yahoo.com','+7(805)170-43-55','2020-05-17 23:24:34'),(82,'f','2011-02-08','East Eduardoton','Dominica',NULL,'hotmail.com','+7(885)156-33-51','2020-05-17 23:24:34'),(83,'f','1983-07-18','Stehrmouth','Sri Lanka',NULL,'yahoo.com','+7(884)169-101-53','2020-05-17 23:24:34'),(84,'m','2015-08-08','New Lorena','Andorra',84,'hotmail.com','+7(896)116-102-25','2020-05-17 23:24:37'),(85,'m','2005-04-08','Lake Nicole','Moldova',NULL,'hotmail.com','+7(814)115-43-27','2020-05-17 23:24:34'),(86,'f','2016-07-04','North Ward','Estonia',NULL,'yahoo.com','+7(807)173-55-17','2020-05-17 23:24:34'),(87,'m','2007-07-21','Shawnville','Estonia',NULL,'yahoo.com','+7(806)103-108-80','2020-05-17 23:24:34'),(88,'f','2008-05-27','Doyleborough','Cyprus',88,'yahoo.com','+7(841)143-103-42','2020-05-17 23:24:37'),(89,'m','1984-09-19','Lynchport','Burundi',NULL,'hotmail.com','+7(822)186-76-72','2020-05-17 23:24:34'),(90,'m','2016-04-26','Marabury','Taiwan',NULL,'gmail.com','+7(885)194-24-81','2020-05-17 23:24:34'),(91,'f','2005-01-29','West Cletus','Botswana',NULL,'hotmail.com','+7(803)150-50-52','2020-05-17 23:24:34'),(92,'m','1972-08-30','New Michalebury','Cyprus',92,'gmail.com','+7(845)165-99-55','2020-05-17 23:24:37'),(93,'m','1994-05-15','Francotown','American Samoa',NULL,'gmail.com','+7(811)187-12-49','2020-05-17 23:24:34'),(94,'f','1990-04-24','Jeffreytown','Poland',NULL,'hotmail.com','+7(840)155-64-15','2020-05-17 23:24:34'),(95,'f','1980-10-24','Mayertmouth','Barbados',NULL,'hotmail.com','+7(872)138-86-64','2020-05-17 23:24:34'),(96,'m','2006-05-16','New Arielleville','Turkey',96,'gmail.com','+7(812)156-54-55','2020-05-17 23:24:37'),(97,'f','1987-02-26','Jerroldbury','Singapore',NULL,'hotmail.com','+7(846)162-81-70','2020-05-17 23:24:34'),(98,'m','2011-12-06','New Amirville','Svalbard & Jan Mayen Islands',NULL,'yahoo.com','+7(858)166-64-73','2020-05-17 23:24:34'),(99,'f','2013-01-07','Pagacborough','Ethiopia',NULL,'yahoo.com','+7(828)103-44-59','2020-05-17 23:24:34'),(100,'m','2012-04-24','North Moseview','Azerbaijan',100,'yahoo.com','+7(803)131-57-45','2020-05-17 23:24:37');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `user_id` int unsigned NOT NULL,
  `points` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `ratings_points_idx` (`points`),
  CONSTRAINT `ratings_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,145,'2019-11-10 13:11:42','2020-04-20 07:16:24'),(2,50,'2020-04-12 08:09:55','2020-05-28 23:39:36'),(3,45,'2020-01-21 12:36:12','2020-05-06 03:58:25'),(4,122,'2019-05-28 01:06:16','2020-04-24 22:15:47'),(5,53,'2019-11-24 13:52:53','2020-04-25 06:55:00'),(6,291,'2020-04-09 15:12:23','2020-05-08 22:48:42'),(7,273,'2019-06-22 04:04:46','2020-04-18 02:12:43'),(8,91,'2019-10-16 15:08:44','2020-05-09 18:17:12'),(9,228,'2020-02-01 08:17:41','2020-05-13 21:34:08'),(10,40,'2019-11-03 18:29:22','2020-05-09 21:35:34'),(11,103,'2019-06-17 17:18:08','2020-04-22 01:37:01'),(12,17,'2019-09-26 19:13:56','2020-05-14 06:57:40'),(13,113,'2019-11-13 11:21:57','2020-05-11 00:48:35'),(14,300,'2019-11-16 08:55:17','2020-05-06 21:23:16'),(15,130,'2019-12-10 06:57:09','2020-04-28 01:39:10'),(16,213,'2019-10-08 20:40:56','2020-04-16 12:43:23'),(17,115,'2019-05-24 00:39:31','2020-05-04 13:57:17'),(18,178,'2019-09-09 22:12:11','2020-05-03 15:21:14'),(19,289,'2019-07-05 12:36:39','2020-05-08 17:22:08'),(20,131,'2019-05-22 06:15:20','2020-05-04 01:37:45'),(21,11,'2020-04-10 12:48:40','2020-04-30 18:52:22'),(22,76,'2019-10-14 11:31:11','2020-04-16 22:36:06'),(23,217,'2019-09-28 19:57:56','2020-04-20 13:37:49'),(24,264,'2020-01-11 18:11:37','2020-05-01 18:54:50'),(25,279,'2019-12-30 14:31:41','2020-05-09 08:18:06'),(26,261,'2019-11-30 05:08:40','2020-04-19 22:09:47'),(27,150,'2019-10-25 17:59:03','2020-05-03 12:09:35'),(28,179,'2019-06-15 13:14:16','2020-05-04 15:09:01'),(29,248,'2020-02-25 00:47:25','2020-04-18 05:58:04'),(30,191,'2019-12-31 06:40:58','2020-04-16 13:05:08'),(31,109,'2019-12-17 15:27:10','2020-04-19 18:34:16'),(32,20,'2020-04-14 11:39:35','2020-04-28 07:15:31'),(33,82,'2020-04-05 17:55:27','2020-04-21 06:49:17'),(34,159,'2020-05-10 09:52:16','2020-05-05 15:31:54'),(35,105,'2019-11-20 03:30:56','2020-04-18 19:00:23'),(36,173,'2019-09-11 17:03:40','2020-05-07 19:12:41'),(37,36,'2019-09-07 17:27:08','2020-04-17 22:35:26'),(38,293,'2019-08-11 03:51:47','2020-04-30 19:39:21'),(39,62,'2020-01-29 21:32:00','2020-04-21 15:17:09'),(40,83,'2019-05-27 22:19:36','2020-05-11 18:55:43'),(41,79,'2019-11-24 04:35:07','2020-05-06 12:55:02'),(42,221,'2020-04-29 08:37:49','2020-04-28 20:18:17'),(43,187,'2020-03-11 06:56:16','2020-04-25 14:39:53'),(44,190,'2020-05-01 04:28:02','2020-04-16 21:09:57'),(45,97,'2020-04-11 09:25:39','2020-05-06 05:07:37'),(46,210,'2019-09-27 06:18:07','2020-04-19 10:49:56'),(47,284,'2020-05-09 00:44:43','2020-05-04 17:18:13'),(48,29,'2020-02-11 05:10:03','2020-05-05 14:37:40'),(49,92,'2019-06-16 12:43:48','2020-04-25 10:27:57'),(50,251,'2020-01-23 09:07:33','2020-04-18 06:10:24'),(51,110,'2020-05-10 03:33:55','2020-04-19 19:48:26'),(52,138,'2019-09-24 09:41:46','2020-04-20 14:38:51'),(53,8,'2020-04-03 19:34:57','2020-04-21 17:37:59'),(54,215,'2019-06-18 13:58:37','2020-04-19 16:03:38'),(55,80,'2020-03-17 11:02:42','2020-05-06 12:18:46'),(56,141,'2019-09-07 11:39:40','2020-05-08 16:53:41'),(57,119,'2019-07-02 10:39:30','2020-04-23 18:28:58'),(58,55,'2019-05-28 04:48:42','2020-05-13 21:53:36'),(59,112,'2019-05-31 22:31:37','2020-05-03 09:45:40'),(60,194,'2019-09-19 08:18:37','2020-05-12 09:55:02'),(61,297,'2019-06-20 00:58:17','2020-05-09 15:23:38'),(62,137,'2019-12-18 21:23:14','2020-05-07 11:40:01'),(63,241,'2019-11-13 11:03:05','2020-04-21 03:01:10'),(64,236,'2019-08-20 07:04:07','2020-04-20 23:45:16'),(65,235,'2019-07-20 23:08:11','2020-05-07 17:35:26'),(66,86,'2020-03-12 08:48:18','2020-04-23 16:02:34'),(67,163,'2019-12-28 14:34:51','2020-05-13 16:23:48'),(68,88,'2020-05-11 11:00:06','2020-04-26 07:06:13'),(69,132,'2020-05-01 13:19:15','2020-04-17 13:19:24'),(70,2,'2020-03-04 02:18:26','2020-04-28 16:31:58'),(71,87,'2019-12-08 05:23:03','2020-05-01 21:43:07'),(72,214,'2019-09-03 15:53:30','2020-05-15 03:15:27'),(73,85,'2019-11-21 16:59:16','2020-05-12 01:23:34'),(74,70,'2019-11-03 21:31:49','2020-05-15 05:11:49'),(75,169,'2019-10-13 08:53:25','2020-05-08 01:51:16'),(76,171,'2020-04-02 14:34:50','2020-04-18 01:10:46'),(77,160,'2019-09-06 15:41:36','2020-05-12 20:06:25'),(78,299,'2019-10-25 22:59:30','2020-04-27 11:40:04'),(79,256,'2020-04-27 03:03:09','2020-04-30 15:31:59'),(80,290,'2019-05-29 20:19:30','2020-04-18 18:41:43'),(81,47,'2019-11-11 11:04:13','2020-04-27 13:10:42'),(82,96,'2019-07-17 10:32:46','2020-04-25 12:53:54'),(83,198,'2019-09-02 23:13:55','2020-05-08 15:27:28'),(84,260,'2019-08-16 05:11:21','2020-04-21 13:55:56'),(85,21,'2019-09-07 09:17:35','2020-04-15 19:42:50'),(86,295,'2020-02-22 23:23:38','2020-04-23 11:18:26'),(87,206,'2020-04-04 00:09:26','2020-05-11 08:27:01'),(88,144,'2019-12-21 18:17:20','2020-05-04 15:20:13'),(89,186,'2020-04-23 22:42:55','2020-05-03 09:23:47'),(90,25,'2019-07-27 03:26:48','2020-04-17 15:15:29'),(91,15,'2019-07-18 13:39:30','2020-04-28 04:20:31'),(92,14,'2020-01-26 02:19:55','2020-05-11 11:01:35'),(93,77,'2019-08-25 14:09:16','2020-04-18 09:41:20'),(94,65,'2019-12-17 02:32:25','2020-05-13 10:00:16'),(95,238,'2020-03-22 02:38:29','2020-04-16 10:49:11'),(96,136,'2019-12-15 06:51:40','2020-04-15 17:25:23'),(97,263,'2019-08-23 10:31:37','2020-04-29 10:02:04'),(98,158,'2019-10-02 10:12:00','2020-05-06 01:36:47'),(99,114,'2019-12-26 03:11:59','2020-05-13 08:10:46'),(100,265,'2019-07-19 14:01:38','2020-05-14 14:28:49');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_questions`
--

DROP TABLE IF EXISTS `test_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_questions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_txt` varchar(255) NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_questions_category_id_fk` (`category_id`),
  CONSTRAINT `test_questions_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_questions`
--

LOCK TABLES `test_questions` WRITE;
/*!40000 ALTER TABLE `test_questions` DISABLE KEYS */;
INSERT INTO `test_questions` VALUES (1,'Velit illum quo quia maxime maiores totam voluptatem.',1),(2,'Sunt nisi amet vel molestias iure.',2),(3,'Voluptate rem repellat praesentium.',3),(4,'Ut necessitatibus quasi molestias sunt magnam.',4),(5,'Minus voluptate explicabo amet iste et autem.',5),(6,'Voluptatem et in omnis totam.',1),(7,'Amet dolore odio ab non sunt nisi aliquid.',2),(8,'Quia praesentium illum eos fuga rerum mollitia assumenda.',3),(9,'Blanditiis et sed soluta.',4),(10,'Sint assumenda facilis recusandae maxime harum.',5),(11,'Deleniti nesciunt vel dolore cum mollitia.',1),(12,'Aut labore et consequatur adipisci omnis.',2),(13,'Porro in necessitatibus cupiditate fuga nesciunt.',3),(14,'Officiis et sed est dolorem magnam impedit rerum vel.',4),(15,'Similique qui est rerum corrupti incidunt est accusantium.',5),(16,'Corrupti odit rerum ut assumenda ex.',1),(17,'Vel doloribus velit aut nisi.',2),(18,'Alias sunt perferendis enim qui rem.',3),(19,'Repellendus dignissimos est consequatur voluptatem facere.',4),(20,'Ea neque accusamus dignissimos dolor minima.',5),(21,'Ipsam eligendi quam autem mollitia.',1),(22,'Fugit earum architecto unde ut eveniet ab maiores.',2),(23,'Labore consequatur porro in iusto consectetur.',3),(24,'Cupiditate rerum expedita perferendis aut ut.',4),(25,'Veritatis quibusdam nostrum consequuntur doloremque.',5),(26,'Itaque maiores voluptatem nostrum at numquam quod error.',6),(27,'Necessitatibus qui mollitia dolorem minima porro reiciendis ab.',6),(28,'Qui explicabo dolorum voluptatem quam.',6),(29,'Sed et aut harum et qui eius quis.',6),(30,'Esse fuga et reprehenderit.',6);
/*!40000 ALTER TABLE `test_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_lessons`
--

DROP TABLE IF EXISTS `user_lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_lessons` (
  `lesson_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `finished_at` datetime DEFAULT NULL,
  PRIMARY KEY (`lesson_id`,`user_id`),
  KEY `user_lessons_user_id_fk` (`user_id`),
  CONSTRAINT `user_lessons_lesson_id_fk` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `user_lessons_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_lessons`
--

LOCK TABLES `user_lessons` WRITE;
/*!40000 ALTER TABLE `user_lessons` DISABLE KEYS */;
INSERT INTO `user_lessons` VALUES (1,10,'2020-05-14 04:43:36','2020-05-26 23:11:55'),(1,23,'2020-06-03 10:20:55','2020-06-05 11:00:55'),(1,31,'2020-05-10 23:00:12',NULL),(1,61,'2020-05-03 22:30:37',NULL),(1,91,'2020-05-11 20:31:00',NULL),(2,2,'2020-04-17 09:46:22','2020-04-18 09:00:22'),(2,23,'2020-06-03 10:20:55','2020-06-05 11:00:55'),(2,32,'2020-04-24 01:57:37',NULL),(2,62,'2020-04-15 10:24:42',NULL),(2,92,'2020-04-18 03:37:41',NULL),(3,3,'2020-05-03 21:22:52',NULL),(3,10,'2020-06-03 10:20:55','2020-06-05 11:00:55'),(3,33,'2020-05-11 20:08:34',NULL),(3,63,'2020-04-17 17:47:46',NULL),(3,93,'2020-04-21 07:37:43',NULL),(4,4,'2020-04-24 09:33:52',NULL),(4,10,'2020-06-04 10:20:55','2020-06-06 11:00:55'),(4,34,'2020-04-28 16:52:01',NULL),(4,64,'2020-04-16 20:01:03',NULL),(4,94,'2020-04-24 08:10:56',NULL),(5,5,'2020-04-26 01:10:37',NULL),(5,10,'2020-05-26 23:29:55','2020-05-28 13:29:55'),(5,23,'2020-06-04 10:20:55','2020-06-06 11:00:55'),(5,35,'2020-04-29 14:44:06',NULL),(5,65,'2020-04-15 16:20:57',NULL),(5,95,'2020-05-07 13:59:27',NULL),(6,6,'2020-04-22 00:16:34',NULL),(6,36,'2020-05-07 14:52:12',NULL),(6,66,'2020-04-29 01:18:08',NULL),(6,96,'2020-04-30 01:02:23',NULL),(7,7,'2020-05-11 15:43:30',NULL),(7,10,'2020-05-29 23:29:55','2020-05-30 13:29:55'),(7,23,'2020-06-07 10:20:55','2020-06-10 11:00:55'),(7,37,'2020-04-26 01:02:29',NULL),(7,67,'2020-04-22 15:34:45',NULL),(7,97,'2020-05-05 05:06:53',NULL),(8,8,'2020-05-08 14:38:04',NULL),(8,38,'2020-05-11 22:16:11',NULL),(8,68,'2020-04-16 08:55:30',NULL),(8,98,'2020-05-04 20:46:43',NULL),(9,9,'2020-05-11 17:44:29',NULL),(9,39,'2020-04-18 18:07:14',NULL),(9,69,'2020-05-04 16:33:52',NULL),(9,99,'2020-04-25 19:50:50',NULL),(10,10,'2020-05-31 21:29:55','2020-06-01 11:29:55'),(10,23,'2020-06-12 11:00:55','2020-06-13 11:00:55'),(10,40,'2020-05-12 04:13:25',NULL),(10,70,'2020-04-17 13:32:06',NULL),(10,100,'2020-05-01 05:44:26',NULL),(11,11,'2020-05-05 08:18:33',NULL),(11,41,'2020-05-03 00:14:44',NULL),(11,71,'2020-04-27 07:15:46',NULL),(12,12,'2020-04-18 10:24:16',NULL),(12,42,'2020-04-29 13:34:34',NULL),(12,72,'2020-04-30 23:11:19',NULL),(13,13,'2020-05-14 08:11:41',NULL),(13,43,'2020-05-15 08:48:13',NULL),(13,73,'2020-04-22 12:37:33',NULL),(14,14,'2020-05-07 06:59:37',NULL),(14,44,'2020-04-28 08:05:21',NULL),(14,74,'2020-04-25 23:45:56',NULL),(15,15,'2020-04-27 11:35:55',NULL),(15,45,'2020-04-19 21:31:38',NULL),(15,75,'2020-05-07 14:14:25',NULL),(16,16,'2020-04-24 03:29:44',NULL),(16,46,'2020-05-14 00:26:22',NULL),(16,76,'2020-05-12 00:02:59',NULL),(17,17,'2020-05-09 04:21:39',NULL),(17,47,'2020-04-20 18:55:35',NULL),(17,77,'2020-05-04 23:59:34',NULL),(18,18,'2020-04-26 11:58:38',NULL),(18,48,'2020-05-12 05:07:57',NULL),(18,78,'2020-04-23 08:18:13',NULL),(19,19,'2020-04-28 18:24:29',NULL),(19,49,'2020-04-17 05:12:53',NULL),(19,79,'2020-04-16 12:26:15',NULL),(20,20,'2020-05-09 15:57:00',NULL),(20,50,'2020-04-17 02:09:24',NULL),(20,80,'2020-05-12 19:58:13',NULL),(21,21,'2020-05-05 22:07:25',NULL),(21,51,'2020-04-30 07:02:35',NULL),(21,81,'2020-05-01 16:00:18',NULL),(22,22,'2020-05-13 22:21:46',NULL),(22,52,'2020-04-28 10:04:48',NULL),(22,82,'2020-04-17 09:02:16',NULL),(23,53,'2020-04-19 01:34:39',NULL),(23,83,'2020-04-26 19:35:20',NULL),(24,24,'2020-05-07 00:20:15',NULL),(24,54,'2020-05-07 10:26:08',NULL),(24,84,'2020-04-15 09:30:30',NULL),(25,25,'2020-05-03 02:41:43',NULL),(25,55,'2020-04-17 06:31:25',NULL),(25,85,'2020-05-10 20:35:01',NULL),(26,10,'2020-06-03 10:20:55',NULL),(26,26,'2020-05-04 12:46:57',NULL),(26,56,'2020-04-20 22:45:11',NULL),(26,86,'2020-04-15 19:22:14',NULL),(27,10,'2020-05-31 07:29:55','2020-05-31 18:29:55'),(27,23,'2020-06-11 11:00:55','2020-06-12 11:00:55'),(27,27,'2020-05-08 18:14:49',NULL),(27,57,'2020-04-16 15:22:47',NULL),(27,87,'2020-04-28 08:13:47',NULL),(28,28,'2020-04-29 20:29:20',NULL),(28,58,'2020-04-24 06:48:35',NULL),(28,88,'2020-04-23 04:33:42',NULL),(29,10,'2020-06-07 10:20:55','2020-06-10 11:00:55'),(29,29,'2020-05-13 11:19:08',NULL),(29,59,'2020-05-11 16:04:59',NULL),(29,89,'2020-04-17 06:54:06',NULL),(30,30,'2020-04-28 03:18:27',NULL),(30,60,'2020-04-18 10:07:01',NULL),(30,90,'2020-04-21 12:15:04',NULL);
/*!40000 ALTER TABLE `user_lessons` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ratings_update` AFTER UPDATE ON `user_lessons` FOR EACH ROW BEGIN 
	IF (SELECT DATEDIFF(NEW.finished_at, OLD.created_at)) > 1 THEN
		UPDATE ratings SET points = points + 10 WHERE user_id = NEW.user_id;
	ELSE
		UPDATE ratings SET points = points + 50 WHERE user_id = NEW.user_id;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `user_lessons_view`
--

DROP TABLE IF EXISTS `user_lessons_view`;
/*!50001 DROP VIEW IF EXISTS `user_lessons_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_lessons_view` AS SELECT 
 1 AS `lesson_name`,
 1 AS `category_name`,
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `lesson_start`,
 1 AS `lesson_finish`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_questions`
--

DROP TABLE IF EXISTS `user_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_questions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `question_txt` varchar(1000) NOT NULL,
  `lesson_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_questions_user_id_fk` (`user_id`),
  KEY `user_questions_lesson_id_fk` (`lesson_id`),
  CONSTRAINT `user_questions_lesson_id_fk` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `user_questions_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_questions`
--

LOCK TABLES `user_questions` WRITE;
/*!40000 ALTER TABLE `user_questions` DISABLE KEYS */;
INSERT INTO `user_questions` VALUES (1,1,'Unde numquam ea et eum.',5,'2020-05-29 22:39:34'),(2,1,'Dolor aliquid minima dolor vel dolor.',2,'2020-05-29 22:39:34'),(3,1,'Blanditiis quaerat perferendis quia saepe.',8,'2020-05-29 22:39:34'),(4,2,'Suscipit dolor numquam soluta.',5,'2020-05-29 22:39:34'),(5,23,'Consequuntur architecto hic enim.',5,'2020-05-29 22:39:34'),(6,7,'Quia quo molestias molestias ab.',30,'2020-05-29 22:39:34'),(7,30,'Qui corporis in ratione enim quae atque.',5,'2020-05-29 22:39:34'),(8,9,'Ullam eos architecto iure recusandae.',8,'2020-05-29 22:39:35');
/*!40000 ALTER TABLE `user_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_rating_view`
--

DROP TABLE IF EXISTS `user_rating_view`;
/*!50001 DROP VIEW IF EXISTS `user_rating_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_rating_view` AS SELECT 
 1 AS `points`,
 1 AS `user_name`,
 1 AS `city`,
 1 AS `social_media`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_test_answers`
--

DROP TABLE IF EXISTS `user_test_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_test_answers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `test_question_id` int unsigned NOT NULL,
  `points` int NOT NULL,
  `is_first` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_test_answers_user_id_fk` (`user_id`),
  KEY `user_test_answers_test_question_id_fk` (`test_question_id`),
  CONSTRAINT `user_test_answers_test_question_id_fk` FOREIGN KEY (`test_question_id`) REFERENCES `test_questions` (`id`),
  CONSTRAINT `user_test_answers_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_test_answers`
--

LOCK TABLES `user_test_answers` WRITE;
/*!40000 ALTER TABLE `user_test_answers` DISABLE KEYS */;
INSERT INTO `user_test_answers` VALUES (1,1,1,9,1,'2020-05-27 00:08:45'),(2,1,2,8,1,'2020-05-27 00:08:45'),(3,1,3,2,1,'2020-05-27 00:08:45'),(4,1,5,6,1,'2020-05-27 00:08:46'),(5,1,4,3,1,'2020-05-27 00:08:46'),(6,1,6,5,1,'2020-05-27 00:08:46'),(7,1,7,8,1,'2020-05-27 00:08:46'),(8,1,11,5,1,'2020-05-27 00:08:46'),(9,1,9,10,1,'2020-05-27 00:08:46'),(10,1,10,5,1,'2020-05-27 00:08:46'),(11,1,8,3,1,'2020-05-27 00:08:46'),(12,1,12,8,1,'2020-05-27 00:08:46'),(13,1,14,3,1,'2020-05-27 00:08:47'),(14,1,13,8,1,'2020-05-27 00:08:47'),(15,1,15,1,1,'2020-05-27 00:08:47'),(16,1,17,10,1,'2020-05-27 00:08:47'),(17,1,18,7,1,'2020-05-27 00:08:47'),(18,1,19,7,1,'2020-05-27 00:08:47'),(19,1,20,1,1,'2020-05-27 00:08:47'),(20,1,21,2,1,'2020-05-27 00:08:47'),(21,1,22,9,1,'2020-05-27 00:08:47'),(22,1,23,9,1,'2020-05-27 00:08:47'),(23,1,16,9,1,'2020-05-27 00:08:48'),(24,1,26,4,1,'2020-05-27 00:08:48'),(25,1,27,4,1,'2020-05-27 00:08:48'),(26,1,29,8,1,'2020-05-27 00:08:48'),(27,1,30,6,1,'2020-05-27 00:08:48'),(28,1,25,6,1,'2020-05-27 00:08:48'),(29,1,24,1,1,'2020-05-27 00:08:48'),(30,1,28,6,1,'2020-05-27 00:08:48'),(31,23,1,8,1,'2020-05-27 00:11:26'),(32,23,2,3,1,'2020-05-27 00:11:27'),(33,23,3,9,1,'2020-05-27 00:11:27'),(34,23,4,6,1,'2020-05-27 00:11:27'),(35,23,5,3,1,'2020-05-27 00:11:27'),(36,23,6,4,1,'2020-05-27 00:11:27'),(37,23,7,4,1,'2020-05-27 00:11:27'),(38,23,8,4,1,'2020-05-27 00:11:27'),(39,23,11,10,1,'2020-05-27 00:11:27'),(40,23,10,8,1,'2020-05-27 00:11:27'),(41,23,12,7,1,'2020-05-27 00:11:27'),(42,23,14,9,1,'2020-05-27 00:11:28'),(43,23,9,7,1,'2020-05-27 00:11:28'),(44,23,15,8,1,'2020-05-27 00:11:28'),(45,23,16,8,1,'2020-05-27 00:11:28'),(46,23,17,6,1,'2020-05-27 00:11:28'),(47,23,13,6,1,'2020-05-27 00:11:28'),(48,23,18,9,1,'2020-05-27 00:11:28'),(49,23,20,10,1,'2020-05-27 00:11:28'),(50,23,19,9,1,'2020-05-27 00:11:28'),(51,23,21,7,1,'2020-05-27 00:11:29'),(52,23,22,5,1,'2020-05-27 00:11:29'),(53,23,23,3,1,'2020-05-27 00:11:29'),(54,23,24,1,1,'2020-05-27 00:11:29'),(55,23,26,4,1,'2020-05-27 00:11:29'),(56,23,25,8,1,'2020-05-27 00:11:29'),(57,23,5,5,0,'2020-05-27 00:11:29'),(58,23,28,4,1,'2020-05-27 00:11:29'),(59,23,30,3,1,'2020-05-27 00:11:29'),(60,23,27,3,1,'2020-05-27 00:11:29'),(61,23,1,4,0,'2020-05-27 00:11:29'),(62,23,3,3,0,'2020-05-27 00:11:29'),(63,23,2,9,0,'2020-05-27 00:11:30'),(64,23,4,9,0,'2020-05-27 00:11:30'),(65,23,6,5,0,'2020-05-27 00:11:30'),(66,23,7,10,0,'2020-05-27 00:11:30'),(67,23,22,4,0,'2020-05-27 00:11:30'),(68,23,9,9,0,'2020-05-27 00:11:30'),(69,23,16,4,0,'2020-05-27 00:11:30'),(70,23,10,10,0,'2020-05-27 00:11:30'),(71,23,11,7,0,'2020-05-27 00:11:30'),(72,23,12,7,0,'2020-05-27 00:11:31'),(73,23,29,4,1,'2020-05-27 00:11:31'),(74,23,29,10,0,'2020-05-27 00:11:31'),(75,23,15,4,0,'2020-05-27 00:11:31'),(76,23,14,10,0,'2020-05-27 00:11:31'),(77,23,17,8,0,'2020-05-27 00:11:31'),(78,23,19,8,0,'2020-05-27 00:11:31'),(79,23,20,8,0,'2020-05-27 00:11:31'),(80,23,8,3,0,'2020-05-27 00:11:31'),(81,23,21,10,0,'2020-05-27 00:11:31'),(82,23,24,10,0,'2020-05-27 00:11:31'),(83,23,25,2,0,'2020-05-27 00:11:32'),(84,23,18,10,0,'2020-05-27 00:11:32'),(85,23,28,2,0,'2020-05-27 00:11:32'),(86,23,13,8,0,'2020-05-27 00:11:32'),(87,23,30,4,0,'2020-05-27 00:11:32'),(88,23,27,6,0,'2020-05-27 00:11:32'),(89,23,26,6,0,'2020-05-27 00:11:32'),(90,23,23,3,0,'2020-05-27 00:11:32'),(91,2,1,7,1,'2020-05-27 00:14:36'),(92,2,2,6,1,'2020-05-27 00:14:37'),(93,2,3,7,1,'2020-05-27 00:14:37'),(94,2,5,7,1,'2020-05-27 00:14:37'),(95,2,4,6,1,'2020-05-27 00:14:37'),(96,2,8,5,1,'2020-05-27 00:14:37'),(97,2,7,7,1,'2020-05-27 00:14:37'),(98,2,6,1,1,'2020-05-27 00:14:37'),(99,2,10,2,1,'2020-05-27 00:14:37'),(100,2,11,8,1,'2020-05-27 00:14:37'),(101,2,15,4,1,'2020-05-27 00:14:37'),(102,2,9,5,1,'2020-05-27 00:14:37'),(103,2,13,2,1,'2020-05-27 00:14:38'),(104,2,14,5,1,'2020-05-27 00:14:38'),(105,2,21,8,1,'2020-05-27 00:14:38'),(106,2,16,6,1,'2020-05-27 00:14:38'),(107,2,12,7,1,'2020-05-27 00:14:38'),(108,2,17,4,1,'2020-05-27 00:14:38'),(109,2,18,7,1,'2020-05-27 00:14:38'),(110,2,19,5,1,'2020-05-27 00:14:38'),(111,2,24,4,1,'2020-05-27 00:14:38'),(112,2,20,2,1,'2020-05-27 00:14:39'),(113,2,22,7,1,'2020-05-27 00:14:39'),(114,2,23,1,1,'2020-05-27 00:14:39'),(115,2,25,4,1,'2020-05-27 00:14:39'),(116,2,26,6,1,'2020-05-27 00:14:39'),(117,2,28,9,1,'2020-05-27 00:14:39'),(118,2,27,3,1,'2020-05-27 00:14:39'),(119,2,13,10,0,'2020-05-27 00:14:39'),(120,2,29,8,1,'2020-05-27 00:14:39'),(121,2,1,10,0,'2020-05-27 00:14:39'),(122,2,30,4,1,'2020-05-27 00:14:40'),(123,2,9,1,0,'2020-05-27 00:14:40'),(124,2,3,4,0,'2020-05-27 00:14:40'),(125,2,4,7,0,'2020-05-27 00:14:40'),(126,2,5,3,0,'2020-05-27 00:14:40'),(127,2,7,3,0,'2020-05-27 00:14:40'),(128,2,2,5,0,'2020-05-27 00:14:40'),(129,2,8,6,0,'2020-05-27 00:14:40'),(130,2,10,4,0,'2020-05-27 00:14:40'),(131,2,15,2,0,'2020-05-27 00:14:40'),(132,2,11,6,0,'2020-05-27 00:14:41'),(133,2,12,5,0,'2020-05-27 00:14:41'),(134,2,14,8,0,'2020-05-27 00:14:41'),(135,2,16,2,0,'2020-05-27 00:14:41'),(136,2,17,5,0,'2020-05-27 00:14:41'),(137,2,18,1,0,'2020-05-27 00:14:41'),(138,2,19,10,0,'2020-05-27 00:14:41'),(139,2,26,5,0,'2020-05-27 00:14:41'),(140,2,20,5,0,'2020-05-27 00:14:41'),(141,2,22,7,0,'2020-05-27 00:14:42'),(142,2,6,3,0,'2020-05-27 00:14:42'),(143,2,21,3,0,'2020-05-27 00:14:42'),(144,2,24,5,0,'2020-05-27 00:14:42'),(145,2,25,5,0,'2020-05-27 00:14:42'),(146,2,28,2,0,'2020-05-27 00:14:42'),(147,2,27,2,0,'2020-05-27 00:14:42'),(148,2,29,6,0,'2020-05-27 00:14:42'),(149,2,23,1,0,'2020-05-27 00:14:42'),(150,2,30,7,0,'2020-05-27 00:14:42'),(151,5,1,10,1,'2020-05-29 22:05:02'),(152,5,2,5,1,'2020-05-29 22:07:51'),(153,5,2,5,1,'2020-05-29 22:08:10'),(154,5,3,1,1,'2020-05-29 22:20:43'),(155,5,4,1,1,'2020-05-29 22:22:03'),(156,5,5,7,1,'2020-05-29 22:22:56'),(157,5,5,9,0,'2020-05-29 22:23:17');
/*!40000 ALTER TABLE `user_test_answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `is_first_test` BEFORE INSERT ON `user_test_answers` FOR EACH ROW BEGIN
  IF is_row_exists(NEW.user_id, NEW.test_question_id) THEN
    SET NEW.is_first = 0;
  ELSE 
    SET NEW.is_first = 1;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `passwd` (`passwd`),
  KEY `users_last_name_first_name_idx` (`last_name`,`first_name`),
  KEY `users_email_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin@psy_health.com','98514106','2019-06-10 14:26:17','2020-05-17 16:01:31'),(2,'Hagenes','Howell','fschoen@example.org','79920568','2019-07-20 22:12:06','2020-05-09 09:42:25'),(3,'Abernathy','Frank','hintz.bradford@example.org','93588898','2020-02-27 18:44:24','2020-04-16 07:03:43'),(4,'Eichmann','Rosendo','lawrence01@example.com','56580679','2020-01-11 19:16:46','2020-04-24 18:14:50'),(5,'Yost','Merl','ibraun@example.org','73235026','2020-01-24 16:32:42','2020-04-21 18:58:10'),(6,'Orn','Ivah','devin30@example.net','76810534','2019-09-29 21:56:06','2020-04-25 05:33:39'),(7,'Maggio','Austin','ondricka.aileen@example.com','67305131','2019-12-24 08:25:02','2020-04-25 03:48:56'),(8,'Mueller','Sage','kyleigh.o\'conner@example.org','97037446','2019-09-21 23:24:18','2020-05-13 18:30:46'),(9,'Johnson','Luz','yswaniawski@example.net','28308881','2020-01-07 01:13:14','2020-04-16 00:39:07'),(10,'Blanda','Lucile','hyost@example.org','45963490','2019-11-07 13:59:13','2020-05-12 07:46:11'),(11,'Schuster','Jamey','leonard.stroman@example.net','89846957','2019-11-14 08:47:04','2020-04-26 22:07:46'),(12,'Tromp','Cary','joanny.sawayn@example.net','86788892','2020-01-01 12:10:24','2020-04-30 15:37:25'),(13,'Konopelski','Sophia','hertha41@example.org','14504280','2020-03-22 09:39:13','2020-04-30 21:21:07'),(14,'Stracke','Cali','trey.powlowski@example.org','07768859','2019-10-05 06:25:44','2020-04-25 10:39:17'),(15,'Hammes','Dale','armando04@example.com','65582770','2020-03-03 05:07:13','2020-04-15 11:06:53'),(16,'Leffler','Ethel','barrett46@example.com','36999378','2020-02-20 08:24:54','2020-05-01 05:41:19'),(17,'Gaylord','Frederique','deanna.feeney@example.net','85960008','2019-10-07 04:10:54','2020-05-04 11:06:47'),(18,'Schamberger','Meredith','corene.kiehn@example.org','87127386','2019-06-28 14:35:30','2020-04-25 05:34:24'),(19,'Barrows','Nadia','orland.barrows@example.com','94787740','2020-02-22 12:54:11','2020-05-02 21:32:24'),(20,'Balistreri','Robin','jack.hauck@example.org','40155876','2020-02-10 15:46:21','2020-05-05 03:12:11'),(21,'O\'Connell','Sally','lynch.liana@example.net','17821629','2019-07-26 17:19:06','2020-05-08 02:11:44'),(22,'O\'Connell','Pearl','parker.ryley@example.com','90437267','2020-02-11 06:27:36','2020-04-23 18:19:01'),(23,'Hettinger','Delphine','marcia39@example.com','33768557','2019-07-14 00:18:17','2020-05-15 03:14:51'),(24,'Carter','Lamont','rhickle@example.net','61632011','2020-01-17 21:00:50','2020-05-04 07:10:24'),(25,'Padberg','Carmine','caden14@example.com','25027044','2019-12-14 22:15:06','2020-05-01 09:52:23'),(26,'Carter','Tevin','khodkiewicz@example.com','42067252','2020-01-07 11:40:34','2020-05-05 20:25:37'),(27,'Shanahan','Eric','cskiles@example.com','47185203','2020-02-10 14:57:58','2020-04-24 23:27:28'),(28,'Luettgen','Hershel','lleuschke@example.net','22294043','2019-09-06 16:30:31','2020-04-16 12:01:38'),(29,'Beer','Cole','annabell62@example.com','56908626','2019-11-29 08:36:02','2020-04-28 04:06:03'),(30,'Mraz','Delphia','shanny.howell@example.com','98902576','2019-08-01 20:33:30','2020-04-29 06:15:30'),(31,'Dicki','Destini','mgreen@example.com','17422864','2019-11-02 07:17:18','2020-04-28 02:06:07'),(32,'Koelpin','Lauretta','maude04@example.net','75113087','2019-12-11 07:39:17','2020-04-26 03:33:01'),(33,'Fahey','Graham','joshua96@example.net','96352236','2019-07-19 18:34:36','2020-05-14 12:16:41'),(34,'Effertz','Susan','emmett.wyman@example.org','85675414','2019-08-29 00:12:04','2020-04-21 17:39:44'),(35,'Schamberger','Tina','ben.harber@example.com','03713846','2020-01-17 19:54:33','2020-05-06 19:24:54'),(36,'Bogan','Evangeline','jwest@example.net','36212293','2019-08-04 02:45:43','2020-05-09 00:41:00'),(37,'Daugherty','Clotilde','katheryn50@example.org','88547862','2019-08-27 16:12:58','2020-04-17 22:32:05'),(38,'Stracke','Dina','zakary.emard@example.net','18549294','2020-04-25 08:34:47','2020-05-17 15:41:57'),(39,'Lehner','Donnell','gutmann.conrad@example.com','02237626','2019-11-06 04:22:32','2020-05-13 03:03:20'),(40,'Towne','Agustina','lhyatt@example.org','54674172','2019-12-08 17:33:12','2020-05-02 08:12:26'),(41,'Rath','Rosa','ihuels@example.org','64689135','2019-11-11 01:19:42','2020-04-18 06:05:18'),(42,'Fay','Tod','maryse20@example.org','83406119','2020-04-23 13:41:33','2020-05-01 21:23:19'),(43,'Windler','Larissa','sadie.boehm@example.com','60840349','2020-03-10 17:22:20','2020-05-02 15:49:59'),(44,'Marquardt','Keagan','llabadie@example.org','38535277','2020-04-27 11:52:37','2020-05-17 15:41:57'),(45,'Hills','Joaquin','kuvalis.estel@example.net','04605546','2020-05-09 15:16:20','2020-05-17 15:41:57'),(46,'Will','Mallory','ekilback@example.com','03885451','2020-03-31 08:56:33','2020-04-25 15:38:20'),(47,'Lemke','Lucius','sheridan96@example.net','30929579','2020-03-12 21:13:27','2020-05-05 21:01:10'),(48,'Terry','Lucinda','wturcotte@example.com','29707744','2020-04-12 09:15:42','2020-05-06 23:52:41'),(49,'Runolfsson','Terrence','darien63@example.net','57011912','2019-12-19 00:27:49','2020-04-27 14:53:21'),(50,'Mosciski','Cleve','sigurd.ratke@example.net','48927093','2019-12-15 21:39:37','2020-05-06 22:16:29'),(51,'Effertz','Billy','niko.quitzon@example.net','03013953','2020-03-14 10:12:14','2020-04-23 18:15:42'),(52,'Gibson','Arnulfo','rossie90@example.net','75981549','2019-07-07 04:51:34','2020-04-25 05:41:17'),(53,'Kirlin','Carmel','nathen02@example.com','92797567','2019-06-23 23:52:31','2020-05-09 21:27:11'),(54,'Jones','Raina','elton.moen@example.org','58812105','2020-01-16 03:48:32','2020-05-08 02:32:26'),(55,'Zboncak','Sunny','qcarter@example.org','71573656','2019-08-22 17:59:41','2020-04-16 00:04:32'),(56,'Adams','Laurie','kasandra69@example.net','32373639','2019-06-01 15:49:07','2020-05-06 15:13:26'),(57,'Kertzmann','Frederik','marvin.olin@example.net','24662277','2019-08-23 14:20:20','2020-05-12 07:52:00'),(58,'Feest','Brooks','tberge@example.net','58476482','2019-10-30 13:22:53','2020-04-15 18:25:19'),(59,'Torp','Quinn','fauer@example.org','69914874','2020-03-14 14:15:33','2020-04-18 04:26:08'),(60,'Waelchi','Mossie','penelope75@example.com','79530392','2019-06-07 01:02:31','2020-04-20 23:04:48'),(61,'Mertz','Gino','therese96@example.org','03557778','2019-10-24 13:43:22','2020-05-07 07:12:56'),(62,'Spinka','Jean','swift.devon@example.net','60182548','2020-01-27 11:36:57','2020-05-09 05:24:19'),(63,'Lind','Elna','trantow.aracely@example.com','98110391','2019-07-27 23:20:49','2020-05-08 07:36:11'),(64,'Walsh','Bradford','dschumm@example.net','61742550','2020-04-19 04:25:35','2020-05-17 15:41:57'),(65,'Williamson','Berneice','ruthe.streich@example.com','82354695','2020-01-30 15:02:21','2020-05-11 22:10:45'),(66,'Terry','Kris','becker.christopher@example.org','57566351','2020-01-17 11:20:01','2020-04-22 01:12:36'),(67,'Bahringer','Kaitlyn','dagmar.gorczany@example.net','35922797','2019-08-07 01:11:01','2020-05-12 19:55:02'),(68,'Fritsch','Gideon','ogerlach@example.org','22080684','2020-02-12 15:02:49','2020-05-07 07:32:18'),(69,'Ernser','Sarai','fanny.jacobson@example.org','61260825','2020-01-24 06:06:14','2020-04-15 17:15:54'),(70,'Jacobi','Rossie','eriberto.ratke@example.com','52983511','2019-12-05 21:20:21','2020-04-21 15:05:39'),(71,'Prosacco','Wilton','greenholt.keenan@example.org','85729971','2019-12-22 07:55:07','2020-04-15 19:38:04'),(72,'Monahan','Kellie','padberg.gabe@example.com','22404671','2019-05-30 02:48:37','2020-05-08 06:22:55'),(73,'Ryan','Raphaelle','schultz.brooke@example.net','36469987','2019-09-15 21:39:10','2020-04-24 07:05:53'),(74,'Nikolaus','Aidan','ikub@example.com','72405758','2019-07-27 20:59:08','2020-05-02 07:26:37'),(75,'Haag','Cristina','lebsack.charlene@example.net','85733817','2019-10-19 15:38:21','2020-04-30 21:40:18'),(76,'Lueilwitz','Kelley','gbartoletti@example.org','27199879','2019-11-19 13:19:40','2020-05-14 08:18:29'),(77,'Prosacco','Quinn','carolyn91@example.net','81201327','2019-12-07 19:30:04','2020-05-15 00:02:51'),(78,'Gleichner','Arvel','breana.kassulke@example.org','86788014','2020-04-30 09:19:23','2020-05-17 15:41:57'),(79,'Brakus','Shayne','dsteuber@example.com','07241383','2020-04-04 02:53:16','2020-04-22 02:27:49'),(80,'Auer','Willard','rosenbaum.breanne@example.org','88884332','2019-09-25 23:51:48','2020-04-18 06:07:06'),(81,'Towne','Ramon','rowe.mark@example.net','20939090','2020-02-10 22:26:48','2020-05-08 08:14:38'),(82,'Nader','Luisa','reynolds.cecelia@example.com','66965992','2020-05-03 21:10:26','2020-05-17 15:41:57'),(83,'Russel','Forrest','asha.weber@example.com','26770147','2019-11-25 23:02:43','2020-04-22 20:04:00'),(84,'Effertz','Jevon','stoltenberg.candice@example.org','45520945','2019-12-09 06:53:39','2020-04-29 09:40:28'),(85,'Bailey','Willy','nella.prohaska@example.net','93061988','2019-08-01 03:50:42','2020-04-18 02:22:51'),(86,'Murphy','Abigale','ijerde@example.com','76856617','2019-12-20 04:12:44','2020-05-04 14:45:58'),(87,'Purdy','Oceane','mebert@example.net','56620757','2020-02-13 05:27:16','2020-05-06 21:24:21'),(88,'Sawayn','Brice','natalia01@example.org','00138956','2019-12-16 13:18:08','2020-05-13 00:41:11'),(89,'Schinner','Lisette','jones.cortez@example.com','55346993','2019-12-27 21:40:15','2020-04-23 05:28:22'),(90,'Deckow','Reuben','cathryn35@example.org','50628612','2019-11-25 17:02:30','2020-04-24 20:22:36'),(91,'Robel','Floy','owen.fay@example.org','62012669','2020-05-02 08:32:25','2020-05-09 14:17:31'),(92,'Langworth','Jonathon','ratke.carleton@example.com','41872888','2019-09-16 22:56:05','2020-04-20 11:51:07'),(93,'Fritsch','Kyle','randy15@example.org','80248392','2019-07-14 01:40:20','2020-05-14 00:12:09'),(94,'Douglas','Abner','giovani43@example.com','21401213','2019-11-30 09:19:41','2020-04-30 11:56:24'),(95,'Lindgren','Orville','maggio.jodie@example.net','82424442','2019-06-08 13:42:38','2020-05-02 02:42:23'),(96,'Oberbrunner','Emilie','tdickens@example.org','75613303','2019-10-30 23:58:34','2020-05-11 02:54:52'),(97,'Fritsch','Roger','jamie.kunde@example.com','48439640','2019-10-26 14:20:04','2020-05-08 13:23:15'),(98,'Runte','Adrien','prudence.mraz@example.com','31718783','2019-10-02 05:05:47','2020-05-14 20:00:09'),(99,'Hackett','Kenya','isaias53@example.org','12522644','2020-01-30 08:36:28','2020-04-19 15:40:14'),(100,'D\'Amore','Esther','theo12@example.net','10940297','2019-09-28 07:11:04','2020-04-30 13:45:40'),(102,'Kihn','Shyanne','ratke.kendra@example.org','98514124','2020-05-30 01:26:04','2020-05-30 01:26:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_insert` BEFORE INSERT ON `users` FOR EACH ROW BEGIN 
	IF (EXISTS(SELECT 1 FROM users WHERE email = NEW.email)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'This email already exists';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `lesson_tasks_view`
--

/*!50001 DROP VIEW IF EXISTS `lesson_tasks_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lesson_tasks_view` AS select `lessons`.`name` AS `lesson_name`,`categories`.`name` AS `category_name`,`lesson_tasks`.`description` AS `task` from ((`lessons` join `lesson_tasks`) join `categories`) where ((`lessons`.`id` = `lesson_tasks`.`lesson_id`) and (`lessons`.`category_id` = `categories`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_lessons_view`
--

/*!50001 DROP VIEW IF EXISTS `user_lessons_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_lessons_view` AS select `lessons`.`name` AS `lesson_name`,`categories`.`name` AS `category_name`,`user_lessons`.`user_id` AS `user_id`,concat(`users`.`last_name`,' ',`users`.`first_name`) AS `user_name`,`user_lessons`.`created_at` AS `lesson_start`,`user_lessons`.`finished_at` AS `lesson_finish` from (((`user_lessons` join `lessons`) join `categories`) join `users`) where ((`user_lessons`.`lesson_id` = `lessons`.`id`) and (`lessons`.`category_id` = `categories`.`id`) and (`users`.`id` = `user_lessons`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_rating_view`
--

/*!50001 DROP VIEW IF EXISTS `user_rating_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_rating_view` AS select `ratings`.`points` AS `points`,concat(`users`.`last_name`,' ',`users`.`first_name`) AS `user_name`,`profiles`.`city` AS `city`,`profiles`.`social_media` AS `social_media` from ((`users` join `ratings`) join `profiles`) where ((`users`.`id` = `ratings`.`user_id`) and (`users`.`id` = `profiles`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-30  1:38:50
