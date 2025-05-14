-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: work
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `nsp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=196614 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Москва','г'),(2,'Зеленоград','г'),(3,'Мытищи','г'),(4,'Владивосток','г'),(5,'Мехико','г'),(6,'London','г'),(8,'Новый','г'),(9,'Майкоп','г'),(10,'Веселый','х'),(11,'Гавердовский','х'),(12,'Подгорный','п'),(13,'Родниковый','п'),(14,'Северный','п'),(15,'Ханская','ст-ца'),(16,'Западный','п'),(17,'Косинов','х'),(18,'сдт Ягодка','дп'),(19,'Авангард','снт'),(20,'Буровик','снт'),(21,'Весна','снт'),(22,'Виктория','снт'),(23,'Восход','снт'),(24,'Деметра','снт'),(25,'Джанатан','снт'),(26,'Дружба','снт'),(27,'Заря','снт'),(28,'Звездочка','снт'),(29,'Звезда','снт'),(30,'Коммунальник','снт'),(31,'ДНТ Коммунальник','дп'),(32,'Коммунальник 2','снт'),(33,'сдт Красноречье','дп'),(34,'Красноречье','снт'),(35,'сдт Лесная сказка','дп'),(36,'Лесная сказка','снт'),(37,'Лесник','снт'),(38,'Лесовик','снт'),(39,'Машиностроитель','снт'),(40,'Мичуринец','снт'),(41,'Озерное','снт'),(42,'Пищевик-1','снт'),(43,'Приречный','снт'),(44,'Проектировщик','снт'),(45,'Птицевод','снт'),(46,'Ромашка','снт'),(47,'Росинка','снт'),(48,'сдт Сад','дп'),(49,'Сад','снт'),(50,'Садовод-3','снт'),(51,'Садовод-2','снт'),(52,'Север','снт'),(53,'Селекционер','снт'),(54,'Строитель','снт'),(55,'Надежда','снт'),(56,'Эра','снт'),(57,'Родник','снт'),(58,'Садовод-1','снт'),(59,'Авангард-2','снт'),(60,'Надежда-1','снт'),(61,'Яблонька','снт'),(62,'Космос','снт'),(63,'Южное','снт'),(64,'ДНТ Новая Весна','дп'),(65,'Верхняя Весна','снт'),(66,'Адыгейск','г'),(67,'Гатлукай','аул'),(68,'Псекупс','х'),(69,'Кошехабльский','р-н'),(70,'Кошехабль','аул'),(71,'Блечепсин','аул'),(72,'Вольное','с'),(73,'Дмитриевский','х'),(75,'Егерухай','аул'),(76,'Игнатьевский','х'),(77,'Казенно-Кужорский','х'),(78,'Кармолино-Гидроицкий','х'),(79,'Комсомольский','п'),(80,'Красный Фарс','х'),(81,'Красный','х'),(82,'Майский','п'),(83,'Натырбово','с'),(84,'Новоалексеевский','х'),(85,'Отрадный','х'),(86,'Плодопитомник','п'),(87,'Политотдел','х'),(88,'Соколов','х'),(89,'Хачемзий','аул'),(90,'Ходзь','аул'),(91,'Чехрак','п'),(93,'Шелковников','х'),(94,'Блечепсинское','с/п'),(95,'Вольненское','с/п'),(96,'Дмитриевское','с/п'),(97,'Егерухайское','с/п'),(98,'Игнатьевское','с/п'),(99,'Кошехабльское','с/п'),(100,'Майское','с/п');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (2,'api-ms-win-core-file-l1-1-0.dll','http://localhost/data/api-ms-win-core-file-l1-1-0.dll'),(3,'api-ms-win-core-processenvironment-l1-1-0.dll','http://localhost/data/api-ms-win-core-processenvironment-l1-1-0.dll'),(4,'api-ms-win-core-heap-l1-1-0.dll','http:/data/api-ms-win-core-heap-l1-1-0.dll'),(5,'api-ms-win-core-file-l1-1-0.dll','http:/data/api-ms-win-core-file-l1-1-0.dll'),(6,'api-ms-win-core-file-l1-2-0.dll','http:/data/api-ms-win-core-file-l1-2-0.dll'),(7,'api-ms-win-core-file-l2-1-0.dll','http:/data/api-ms-win-core-file-l2-1-0.dll'),(8,'api-ms-win-core-handle-l1-1-0.dll','http:/data/api-ms-win-core-handle-l1-1-0.dll'),(9,'api-ms-win-core-heap-l1-1-0.dll','http:/data/api-ms-win-core-heap-l1-1-0.dll'),(10,'api-ms-win-core-interlocked-l1-1-0.dll','http:/data/api-ms-win-core-interlocked-l1-1-0.dll'),(11,'api-ms-win-core-libraryloader-l1-1-0.dll','http:/data/api-ms-win-core-libraryloader-l1-1-0.dll'),(12,'api-ms-win-core-localization-l1-2-0.dll','http:/data/api-ms-win-core-localization-l1-2-0.dll'),(13,'api-ms-win-core-memory-l1-1-0.dll','http:/data/api-ms-win-core-memory-l1-1-0.dll'),(14,'api-ms-win-core-namedpipe-l1-1-0.dll','http:/data/api-ms-win-core-namedpipe-l1-1-0.dll'),(15,'AUTOEXEC.BAT','http:/data/AUTOEXEC.BAT'),(16,'BOOTSECT.BAK','http:/data/BOOTSECT.BAK');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal`
--

DROP TABLE IF EXISTS `journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` date DEFAULT NULL,
  `predmet_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `prepod_id` int DEFAULT NULL,
  `mark` int DEFAULT NULL,
  `pres` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_j_predmet_idx` (`predmet_id`),
  KEY `fk_j_prepod_idx` (`prepod_id`),
  KEY `fk_j_student_idx` (`student_id`),
  CONSTRAINT `fk_j_predmet` FOREIGN KEY (`predmet_id`) REFERENCES `predmets` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_j_prepod` FOREIGN KEY (`prepod_id`) REFERENCES `prepod` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_j_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal`
--

LOCK TABLES `journal` WRITE;
/*!40000 ALTER TABLE `journal` DISABLE KEYS */;
INSERT INTO `journal` VALUES (2,'2021-05-13',2,1,2,5,1),(3,'2021-05-13',3,2,3,5,1),(36,'2021-05-14',1,2,1,5,1),(37,'2022-04-30',1,4,1,5,1),(39,'2021-05-14',1,5,1,5,1),(41,'2021-05-14',1,7,1,NULL,1),(43,'2021-05-12',1,9,1,3,1),(44,'2021-05-12',2,10,2,4,1),(45,'2021-05-12',2,11,2,4,1),(46,'2021-05-12',2,12,2,4,1),(47,'2021-05-12',2,13,2,5,1),(48,'2021-05-12',2,14,2,5,1),(49,'2021-05-12',2,15,2,2,0),(50,'2021-05-11',2,16,2,4,0),(51,'2021-05-11',2,17,2,4,0),(52,'2021-05-11',3,18,3,4,0),(53,'2021-05-11',3,19,3,4,1),(54,'2021-05-11',3,11,3,4,1),(55,'2021-05-11',3,1,3,4,1),(56,'2021-05-11',3,2,3,4,1),(57,'2021-05-11',3,3,3,4,2),(58,'2021-05-11',3,4,3,4,1),(59,'2021-05-13',3,5,3,4,1),(60,'2021-05-11',4,6,3,5,1),(61,'2021-05-11',4,7,3,3,1),(62,'2021-05-11',4,8,2,3,1),(63,'2021-05-11',4,10,2,3,1),(64,'2021-05-11',4,11,2,3,1),(65,'2021-05-11',4,12,2,3,1),(66,'2021-05-17',2,1,3,5,1),(67,'2021-05-17',2,2,3,5,1),(68,'2021-05-17',2,3,2,5,1),(69,'2021-05-17',2,4,2,5,1),(70,'2021-05-17',2,5,3,5,1),(71,'2021-05-17',2,6,3,5,1),(72,'2021-05-17',2,7,3,5,1),(74,'2021-05-17',2,9,3,NULL,1),(75,'2021-05-17',2,10,3,NULL,1),(76,'2021-05-17',2,11,2,3,1),(77,'2021-05-17',2,12,2,2,1),(79,'2021-05-17',2,14,1,3,1),(80,'2021-05-17',2,15,1,NULL,1),(81,'2021-05-17',2,16,1,4,0),(82,'2021-05-17',2,17,1,4,0),(83,'2021-05-17',2,18,1,4,0),(84,'2021-05-17',2,19,2,4,0),(85,'2021-05-17',2,20,3,NULL,0),(88,'2021-05-18',4,3,3,NULL,1),(89,'2021-05-18',4,4,3,NULL,1),(90,'2021-05-18',4,5,3,5,1),(91,'2021-05-18',4,6,2,5,2),(92,'2021-05-18',4,7,2,5,1),(93,'2022-04-16',4,8,2,5,1),(94,'2021-05-18',4,9,1,5,1),(95,'2021-05-18',4,10,1,4,1),(96,'2021-05-18',4,11,3,NULL,1),(98,'2021-05-13',4,13,2,5,1),(99,'2021-05-18',4,14,3,4,1),(100,'2021-05-18',4,15,3,4,1),(101,'2022-04-15',4,16,3,3,1),(102,'2021-05-18',4,17,3,3,1),(103,'2021-05-18',4,18,1,3,1),(104,'2021-05-18',4,19,1,NULL,1),(105,'2021-05-18',4,20,1,4,1),(108,'2021-05-17',3,1,3,4,1),(109,'2022-04-30',3,2,1,4,1),(111,'2021-05-19',3,4,1,5,2),(114,'2021-05-19',3,7,3,2,1),(116,'2021-05-19',3,9,1,3,2),(127,'2021-05-24',1,6,2,5,1),(129,'2021-05-05',1,9,2,5,1),(130,'2021-05-05',1,5,2,5,1),(132,'2021-05-05',3,2,2,5,1),(133,'2021-05-01',1,1,1,1,1),(134,'2022-02-17',1,1,1,5,1),(135,'2021-05-05',1,20,2,4,1),(136,'2021-05-05',1,16,2,5,1),(137,'2022-01-15',1,6,2,5,1),(139,'2022-03-03',1,6,3,5,1),(140,'2022-04-23',2,19,3,5,1),(141,'2021-05-05',2,6,2,5,1),(142,'2022-03-03',1,2,3,4,1);
/*!40000 ALTER TABLE `journal` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `journal_BEFORE_INSERT` BEFORE INSERT ON `journal` FOR EACH ROW BEGIN
if new.pres!=1 and !isnull(NEW.mark) 
then SIGNAL sqlstate '45001' 
	 set message_text = "Невозможно поставить оценку отсутствующему!";
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `journal_AFTER_INSERT` AFTER INSERT ON `journal` FOR EACH ROW BEGIN
insert into journal_log (user,datetime,oper,journal_id,
		new_day,new_predmet_id,new_student_id,new_prepod_id,new_mark,new_pres)
values (user(),now(),'insert',NEW.id,
		NEW.day,NEW.predmet_id,NEW.student_id,NEW.prepod_id,NEW.mark,NEW.pres);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `journal_BEFORE_UPDATE` BEFORE UPDATE ON `journal` FOR EACH ROW BEGIN

if OLD.pres!=1 and !isnull(NEW.mark) 
then SIGNAL sqlstate '45001' 
	 set message_text = "Невозможно изменить оценку отсутствующему!";
end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `journal_AFTER_UPDATE` AFTER UPDATE ON `journal` FOR EACH ROW BEGIN
insert into journal_log (user,datetime,oper,journal_id,
		old_day,old_predmet_id,old_student_id,old_prepod_id,old_mark,old_pres,
        new_day,new_predmet_id,new_student_id,new_prepod_id,new_mark,new_pres)
values (user(),now(),'update',OLD.id,
		OLD.day,OLD.predmet_id,OLD.student_id,OLD.prepod_id,OLD.mark,OLD.pres,
        NEW.day,NEW.predmet_id,NEW.student_id,NEW.prepod_id,NEW.mark,NEW.pres);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `journal_AFTER_DELETE` AFTER DELETE ON `journal` FOR EACH ROW BEGIN
insert into journal_log (user,datetime,oper,journal_id,
		old_day,old_predmet_id,old_student_id,old_prepod_id,old_mark,old_pres)
values (user(),now(),'delete',OLD.id,
		OLD.day,OLD.predmet_id,OLD.student_id,OLD.prepod_id,OLD.mark,OLD.pres);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `journal_log`
--

DROP TABLE IF EXISTS `journal_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journal_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `datetime` datetime NOT NULL,
  `oper` varchar(45) NOT NULL,
  `journal_id` int NOT NULL,
  `old_day` date DEFAULT NULL,
  `old_predmet_id` int DEFAULT NULL,
  `old_student_id` int DEFAULT NULL,
  `old_prepod_id` int DEFAULT NULL,
  `old_mark` int DEFAULT NULL,
  `old_pres` int DEFAULT NULL,
  `new_day` date DEFAULT NULL,
  `new_predmet_id` int DEFAULT NULL,
  `new_student_id` int DEFAULT NULL,
  `new_prepod_id` int DEFAULT NULL,
  `new_mark` int DEFAULT NULL,
  `new_pres` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_log`
--

LOCK TABLES `journal_log` WRITE;
/*!40000 ALTER TABLE `journal_log` DISABLE KEYS */;
INSERT INTO `journal_log` VALUES (2,'root@localhost','2021-10-05 06:42:54','update',37,'2021-05-14',1,3,1,5,1,'2021-05-14',1,4,1,5,1),(3,'root@localhost','2021-10-05 06:49:33','update',123,'2021-05-19',3,16,1,4,1,'2021-05-19',3,16,1,5,1),(4,'root@localhost','2021-10-05 06:52:44','delete',113,'2021-05-19',3,6,3,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(5,'root@localhost','2021-10-05 06:53:29','insert',127,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-24',1,6,2,5,1),(6,'root@localhost','2021-10-05 08:56:24','update',122,'2021-05-19',3,15,2,4,1,'2021-05-19',3,15,2,5,1),(7,'root@localhost','2021-10-05 11:43:07','update',40,'2021-05-14',1,6,1,NULL,1,'2021-05-14',1,7,1,NULL,1),(8,'root@localhost','2021-10-05 11:43:56','update',117,'2021-05-19',3,10,3,3,1,'2021-05-19',3,10,1,3,1),(9,'root@localhost','2021-10-05 11:44:15','delete',115,'2021-05-19',3,8,3,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(10,'root@localhost','2021-10-05 11:44:43','insert',128,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05',1,17,2,4,1),(11,'root@localhost','2021-10-06 13:32:09','update',38,'2021-05-14',1,4,1,5,1,'2021-05-14',1,4,2,5,1),(12,'root@localhost','2021-10-06 13:32:52','insert',129,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05',1,9,2,5,1),(13,'root@localhost','2021-10-06 13:33:07','delete',118,'2021-05-19',3,11,3,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(15,'root@localhost','2021-10-08 11:04:32','update',3,'2021-05-13',3,2,3,4,1,'2021-05-13',3,2,3,5,1),(16,'root@localhost','2021-10-08 11:05:48','insert',130,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05',1,5,2,5,1),(17,'root@localhost','2021-10-08 11:06:22','delete',73,'2021-05-17',2,8,3,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(18,'root@localhost','2021-10-11 15:15:36','insert',131,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05',2,9,1,2,1),(19,'root@localhost','2021-10-12 10:41:43','update',48,'2021-05-12',2,14,2,NULL,1,'2021-05-12',2,14,2,5,1),(20,'root@localhost','2021-10-12 11:49:30','update',107,'2021-05-19',3,2,1,4,1,'2021-05-19',3,16,1,4,1),(21,'root@localhost','2021-10-12 13:27:13','update',40,'2021-05-14',1,7,1,NULL,1,'2021-05-14',1,5,1,NULL,1),(22,'root@localhost','2021-10-12 13:27:45','update',119,'2021-05-19',3,12,3,NULL,1,'2021-05-19',3,12,3,4,1),(23,'root@localhost','2021-10-12 13:28:08','insert',132,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05',3,2,2,5,1),(24,'root@localhost','2021-10-12 13:28:35','delete',106,'2021-05-19',3,1,1,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(25,'root@localhost','2021-10-12 14:52:19','update',47,'2021-05-12',2,13,2,4,1,'2021-05-12',2,13,2,5,1),(26,'root@localhost','2021-10-12 15:23:14','update',123,'2021-05-19',3,16,1,5,1,'2021-05-19',3,1,1,5,1),(27,'root@localhost','2021-10-12 15:24:02','insert',133,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-01',1,1,1,1,1),(28,'root@localhost','2021-10-12 15:24:49','delete',131,'2021-05-05',2,9,1,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(29,'root@localhost','2021-10-14 15:00:32','update',2,'2021-05-13',2,1,2,NULL,1,'2021-05-13',2,1,2,5,1),(30,'root@localhost','2021-10-14 15:01:23','delete',35,'2021-05-14',1,1,1,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(31,'root@localhost','2021-10-14 15:02:14','insert',134,NULL,NULL,NULL,NULL,NULL,NULL,'2021-10-14',1,1,1,5,1),(32,'root@localhost','2021-10-14 15:03:00','update',116,'2021-05-19',3,9,3,3,1,'2021-05-19',3,9,1,3,1),(33,'root@localhost','2021-10-18 14:10:57','update',112,'2021-05-19',3,5,3,5,1,'2021-05-19',3,5,3,5,2),(34,'root@localhost','2021-10-25 11:33:33','update',121,'2021-05-19',3,14,1,NULL,1,'2021-05-19',3,14,1,4,1),(35,'root@localhost','2021-10-25 11:41:29','update',111,'2021-05-19',3,4,1,5,1,'2021-05-19',3,4,1,5,2),(36,'root@localhost','2021-10-28 08:47:30','delete',42,'2021-05-12',1,8,1,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(37,'root@localhost','2021-10-28 09:15:57','delete',38,'2021-05-14',1,4,2,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(38,'root@localhost','2021-10-28 09:21:27','delete',40,'2021-05-14',1,5,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(39,'root@localhost','2021-10-28 10:36:59','delete',122,'2021-05-19',3,15,2,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(40,'root@localhost','2021-10-28 10:37:12','delete',124,'2021-05-19',3,17,1,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(41,'root@localhost','2021-10-28 12:03:05','update',107,'2021-05-19',3,16,1,4,1,'2021-05-19',3,16,1,5,1),(42,'root@localhost','2021-11-09 09:13:07','delete',120,'2021-05-19',3,13,2,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(43,'root@localhost','2021-11-10 14:42:21','insert',135,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05',1,20,2,4,1),(44,'root@localhost','2021-11-12 15:11:50','update',91,'2021-05-18',4,6,2,5,1,'2021-05-18',4,6,2,5,2),(45,'root@localhost','2021-11-23 10:11:13','update',126,'2021-05-19',3,19,1,4,1,'2021-05-19',3,19,1,3,1),(46,'root@localhost','2021-11-23 12:43:55','update',127,'2021-05-24',1,6,2,5,1,'2021-05-24',1,6,2,5,1),(47,'root@localhost','2021-11-25 14:24:06','delete',126,'2021-05-19',3,19,1,3,1,NULL,NULL,NULL,NULL,NULL,NULL),(48,'root@localhost','2021-12-07 09:11:55','update',128,'2021-05-05',1,17,2,4,1,'2021-05-05',1,6,2,4,1),(49,'root@localhost','2021-12-07 12:29:07','update',107,'2021-05-19',3,16,1,5,1,'2021-05-19',3,16,1,4,1),(50,'root@localhost','2021-12-07 14:16:50','update',110,'2021-05-19',3,3,1,3,1,'2021-05-19',3,3,1,5,1),(51,'root@localhost','2021-12-16 15:15:08','insert',136,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05',1,16,2,5,1),(52,'root@localhost','2022-01-17 11:39:47','delete',86,'2021-05-18',4,1,3,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(53,'root@localhost','2022-01-17 19:44:24','update',117,'2021-05-19',3,10,1,3,1,'2021-05-19',3,10,1,4,1),(54,'root@localhost','2022-01-18 09:32:51','update',107,'2021-05-19',3,16,1,4,1,'2021-05-19',3,16,1,5,1),(55,'root@localhost','2022-01-18 09:32:59','delete',107,'2021-05-19',3,16,1,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(56,'root@localhost','2022-01-21 14:49:38','insert',137,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-20',1,6,2,5,1),(57,'root@localhost','2022-01-21 15:18:11','insert',138,NULL,NULL,NULL,NULL,NULL,NULL,'2022-01-21',1,6,2,5,1),(58,'root@localhost','2022-01-25 09:26:19','update',125,'2021-05-19',3,18,1,4,1,'2021-05-19',3,18,1,5,1),(59,'root@localhost','2022-01-25 09:28:27','delete',1,'2021-05-21',1,12,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(60,'root@localhost','2022-01-25 09:48:58','update',114,'2021-05-19',3,7,3,5,1,'2021-05-19',3,7,3,2,1),(61,'root@localhost','2022-01-25 14:40:13','delete',121,'2021-05-19',3,14,1,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(62,'root@localhost','2022-01-25 14:40:25','delete',125,'2021-05-19',3,18,1,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(63,'root@localhost','2022-01-25 14:40:54','delete',123,'2021-05-19',3,1,1,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(64,'root@localhost','2022-01-25 14:44:45','delete',112,'2021-05-19',3,5,3,5,2,NULL,NULL,NULL,NULL,NULL,NULL),(65,'root@localhost','2022-01-25 14:47:23','delete',117,'2021-05-19',3,10,1,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(66,'root@localhost','2022-01-25 14:47:57','delete',119,'2021-05-19',3,12,3,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(67,'root@localhost','2022-01-25 14:48:46','delete',97,'2021-05-18',4,12,3,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(68,'root@localhost','2022-01-29 12:15:25','update',98,'2021-05-18',4,13,3,4,1,'2021-05-13',5,13,2,5,1),(69,'root@localhost','2022-01-31 18:18:19','update',95,'2021-05-18',4,10,1,5,1,'2021-05-18',5,10,1,4,1),(70,'root@localhost','2022-01-31 18:25:40','delete',87,'2021-05-18',4,2,3,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(71,'root@localhost','2022-03-16 17:40:35','insert',139,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03',1,6,3,5,1),(72,'root@localhost','2022-03-23 16:21:23','update',98,'2021-05-13',5,13,2,5,1,'2021-05-13',4,13,2,5,1),(73,'root@localhost','2022-03-23 16:21:38','update',95,'2021-05-18',5,10,1,4,1,'2021-05-18',4,10,1,4,1),(74,'root@localhost','2022-03-23 16:23:41','update',59,'2021-05-11',3,5,3,4,1,'2021-05-13',3,5,3,4,1),(75,'root@localhost','2022-03-23 16:23:51','update',57,'2021-05-11',3,3,3,4,1,'2021-05-11',3,3,3,4,2),(76,'root@localhost','2022-03-25 16:12:40','update',108,'2021-05-19',3,1,1,4,1,'2021-05-20',3,1,3,4,1),(77,'root@localhost','2022-03-25 16:39:24','update',116,'2021-05-19',3,9,1,3,1,'2021-05-19',3,9,3,3,1),(78,'root@localhost','2022-03-31 17:25:48','update',116,'2021-05-19',3,9,3,3,1,'2021-05-19',3,9,1,3,2),(79,'root@localhost','2022-04-04 17:33:46','update',134,'2021-10-14',1,1,1,5,1,'2022-02-17',1,1,1,5,1),(80,'root@localhost','2022-04-04 17:38:35','update',108,'2021-05-20',3,1,3,4,1,'2021-05-17',3,1,3,4,1),(81,'root@localhost','2022-04-04 17:50:43','update',137,'2022-01-20',1,6,2,5,1,'2022-01-15',1,6,2,5,1),(82,'root@localhost','2022-04-04 18:06:46','update',110,'2021-05-19',3,3,1,5,1,'2021-05-22',3,3,1,5,1),(83,'root@localhost','2022-04-04 18:12:38','update',101,'2021-05-18',4,16,3,3,1,'2022-04-15',4,16,3,3,1),(84,'root@localhost','2022-04-04 18:12:47','update',93,'2021-05-18',4,8,2,5,1,'2022-04-16',4,8,2,5,1),(85,'root@localhost','2022-04-04 18:12:58','update',109,'2021-05-19',3,2,1,4,1,'2022-04-30',3,2,1,4,1),(86,'root@localhost','2022-04-04 18:13:14','update',37,'2021-05-14',1,4,1,5,1,'2022-04-30',1,4,1,5,1),(87,'root@localhost','2022-04-13 17:27:48','insert',140,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-23',2,19,3,5,1),(88,'root@localhost','2022-06-01 16:23:15','delete',138,'2022-01-21',1,6,2,5,1,NULL,NULL,NULL,NULL,NULL,NULL),(89,'root@localhost','2022-06-06 11:59:07','delete',78,'2021-05-17',2,13,1,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(90,'root@localhost','2022-06-06 12:02:11','insert',141,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05',2,6,2,5,1),(91,'root@localhost','2022-06-06 12:41:34','delete',128,'2021-05-05',1,6,2,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(92,'root@localhost','2022-06-06 12:48:19','insert',142,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-03',1,2,3,4,1),(93,'root@localhost','2022-06-06 12:59:09','update',142,'2022-03-03',1,2,3,4,1,'2022-03-03',1,2,3,4,1),(94,'root@localhost','2022-06-14 16:04:03','delete',110,'2021-05-22',3,3,1,5,1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `journal_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predmets`
--

DROP TABLE IF EXISTS `predmets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predmets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predmets`
--

LOCK TABLES `predmets` WRITE;
/*!40000 ALTER TABLE `predmets` DISABLE KEYS */;
INSERT INTO `predmets` VALUES (1,'Мобильные приложения'),(2,'Проектирование и дизайн'),(3,'Разработка кода'),(4,'Физкультура');
/*!40000 ALTER TABLE `predmets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepod`
--

DROP TABLE IF EXISTS `prepod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fam` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `otch` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepod`
--

LOCK TABLES `prepod` WRITE;
/*!40000 ALTER TABLE `prepod` DISABLE KEYS */;
INSERT INTO `prepod` VALUES (1,'Фёдорова','Катерина','Александровна'),(2,'Гайструк','Юрий','Николаевич'),(3,'Плотникова','Татьяна','Ивановна');
/*!40000 ALTER TABLE `prepod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sgroups`
--

DROP TABLE IF EXISTS `sgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sgroups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sgroups`
--

LOCK TABLES `sgroups` WRITE;
/*!40000 ALTER TABLE `sgroups` DISABLE KEYS */;
INSERT INTO `sgroups` VALUES (1,'ИСиП 20/11'),(2,'ИСиП 19/11'),(3,'ИСиП 18/9');
/*!40000 ALTER TABLE `sgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fam` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `otch` varchar(45) DEFAULT NULL,
  `date_r` date DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `friend_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_fno` (`fam`,`name`,`otch`),
  KEY `fk_st_group_idx` (`group_id`),
  KEY `fk_st_city_idx` (`city_id`),
  CONSTRAINT `fk_st_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_st_group` FOREIGN KEY (`group_id`) REFERENCES `sgroups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Иванов','Иван','Иванович','2002-11-20','+79772662636',6,1,NULL),(2,'Петров','Петр','Петрович','2003-10-20','+79263445678',1,2,3),(3,'Сидоров','Виктор','Львович','2002-01-01','+79262334567',3,3,4),(4,'Симонов','Виталий','Семенович','2003-12-23','+79772345678',4,1,5),(5,'Перетурин','Василий','Иванович','2004-05-05','+79222343332',2,2,6),(6,'Богомягков','Владимир','Владимирович','2000-02-28','+79343456723',2,1,7),(7,'Варламов','Семён','Игоревич','1999-11-30','+79235674930',4,1,1),(8,'Кузнецова','Светлана','Владимировна','1998-10-12','+79773459384',1,2,3),(9,'Овечкин','Александр','Викторович','1999-09-02','+79287773849',5,3,4),(10,'Газизова','Людмила','Алексеевна','2000-12-01','+79168903482',1,1,6),(11,'Кузнецова','Александр','Александрович','2001-01-19','+79179438723',62,2,10),(12,'Вилкова','Татьяна','Ивановна','2002-02-17','+79773459834',1,3,11),(13,'Хачатурянц','Анастасия','Петровна','2001-08-23','+79223774589',2,1,11),(14,'Чайковский','Станислав','Викторович','2000-06-12','+79344546221',3,2,17),(15,'Гагарина','Светлана','Сергеевна','2001-05-01','+79558763456',81,1,2),(16,'Капризов','Игорь','Сергеевич','2000-10-23','+79124456366',1,3,1),(17,'Павлов','Сергей','Алексеевич','1999-07-23','+79448763248',4,2,15),(18,'Мичкова','Екатерина','Юрьевна','2000-08-16','+79673849823',1,3,14),(19,'Мишустин','Андрей','Иванович','2001-01-24','+79124562777',34,3,18),(20,'Кравцов','Сергей','Алексеевич','2002-10-30','+79772344234',1,2,19),(43,'Иванович','Александр','Владимирович','2003-10-09','+79773459385',1,3,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `isedit` int DEFAULT NULL,
  `isadmin` int DEFAULT NULL,
  `ispay` int DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'test','testsasdf','adf',NULL,1,NULL,'76','179ad45c6ce2cb97cf1029e212046e81'),(3,'testtest',NULL,NULL,NULL,0,NULL,NULL,'5f4dcc3b5aa765d61d8327deb882cf99'),(4,'qwert',NULL,NULL,NULL,0,NULL,'1','827ccb0eea8a706c4c34a16891f84e7b'),(5,'1qwer',NULL,NULL,NULL,NULL,NULL,'1','827ccb0eea8a706c4c34a16891f84e7b');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'work'
--

--
-- Dumping routines for database 'work'
--
/*!50003 DROP FUNCTION IF EXISTS `student_age` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `student_age`(student_id int) RETURNS int
    DETERMINISTIC
BEGIN
declare age int DEFAULT 0;
select year(now())-year(s.date_r) into age from students s where s.id=student_id;
RETURN age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `student_age1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `student_age1`(st_name varchar(40)) RETURNS int
    DETERMINISTIC
BEGIN
declare age int default 0;
declare student_id int;
select id into student_id from students where fam like st_name;
select year(now())-year(date_r) into age
from students
where id= student_id;
RETURN age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_journal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_journal`()
BEGIN
SELECT j.id, j.day, g.name as 'Группа', s.fam, s.name as 'Имя студента', c.name, p.fam, p.name, 
		pr.name, case when j.pres=1 then 'присутствовал' else 'отсутствовал' end as 'наличие', 
        case when isnull(j.mark) then 'нет оценки' else j.mark end as 'оценка'
FROM journal j 
left join students s on j.student_id = s.id
left join prepod p on j. prepod_id = p.id 
left join predmets pr on j.predmet_id = pr.id
left join city c on s.city_id = c.id 
left join sgroups g on s.group_id = g.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27 13:16:38
