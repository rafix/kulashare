-- MySQL dump 10.13  Distrib 5.7.10, for Linux (x86_64)
--
-- Host: localhost    Database: kulashare
-- ------------------------------------------------------
-- Server version	5.7.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ext_log_entries`
--

DROP TABLE IF EXISTS `ext_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ext_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_class_lookup_idx` (`object_class`),
  KEY `log_date_lookup_idx` (`logged_at`),
  KEY `log_user_lookup_idx` (`username`),
  KEY `log_version_lookup_idx` (`object_id`,`object_class`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=979 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ext_log_entries`
--

LOCK TABLES `ext_log_entries` WRITE;
/*!40000 ALTER TABLE `ext_log_entries` DISABLE KEYS */;
INSERT INTO `ext_log_entries` VALUES (1,'create','2015-09-05 23:08:33','1','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(2,'create','2015-09-06 02:18:58','2','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(3,'create','2015-09-07 00:45:24','3','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(4,'create','2015-09-09 03:06:10','4','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(5,'create','2015-09-09 03:21:38','5','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(6,'create','2015-09-09 03:42:45','6','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(7,'create','2015-09-10 02:53:41','7','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(8,'create','2015-09-10 03:45:38','8','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(9,'create','2015-09-10 03:48:51','9','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(10,'create','2015-09-11 01:52:50','10','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(11,'create','2015-09-11 02:05:59','11','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(12,'create','2015-09-11 02:13:03','1','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-11 02:10:00\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;}','kulashare@dev.com'),(13,'create','2015-09-11 02:13:03','1','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:9:\"product 1\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(15,'create','2015-09-11 02:18:01','12','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(16,'create','2015-09-11 04:29:14','13','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(17,'create','2015-09-12 00:34:15','14','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(18,'create','2015-09-12 01:29:50','15','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(19,'create','2015-09-12 02:54:12','16','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(20,'create','2015-09-12 23:43:05','17','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(21,'create','2015-09-13 01:01:17','18','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(22,'create','2015-09-13 20:23:17','19','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(23,'create','2015-09-13 20:24:00','20','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(24,'create','2015-09-13 22:45:10','21','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(25,'create','2015-09-13 22:52:31','22','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(26,'create','2015-09-13 23:10:21','23','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(27,'create','2015-09-13 23:29:43','24','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(28,'create','2015-09-13 23:31:49','25','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(29,'create','2015-09-14 00:00:41','26','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(30,'create','2015-09-14 00:35:29','27','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(31,'create','2015-09-14 01:00:41','28','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(32,'create','2015-09-15 03:41:35','29','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(33,'create','2015-09-15 03:58:14','30','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(34,'create','2015-09-16 03:25:46','31','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(35,'create','2015-09-16 03:47:44','32','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(36,'create','2015-09-16 03:51:51','1','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"My product 1\";s:11:\"description\";s:14:\"desc product 1\";s:12:\"metaKeywords\";s:4:\"prod\";s:15:\"metaDescription\";s:3:\"prd\";s:16:\"shortDescription\";s:4:\"prod\";}','kulashare@dev.com'),(37,'create','2015-09-18 01:23:12','33','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(38,'create','2015-09-18 03:49:03','2','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-18 03:45:00\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";N;}','kulashare@dev.com'),(39,'create','2015-09-18 03:49:03','2','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:6:\"prod 2\";s:11:\"description\";s:6:\"prod 2\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:6:\"prod 2\";}','kulashare@dev.com'),(40,'create','2015-09-18 03:49:03','2','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:3:\"456\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";d:123;s:6:\"height\";d:123;s:5:\"depth\";d:123;s:6:\"weight\";d:123;}','kulashare@dev.com'),(42,'create','2015-09-18 03:51:48','3','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-18 03:45:00\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";N;}','kulashare@dev.com'),(43,'create','2015-09-18 03:51:48','3','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:7:\"prod 23\";s:11:\"description\";s:6:\"prod 2\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:6:\"prod 2\";}','kulashare@dev.com'),(44,'create','2015-09-18 03:51:48','3','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:4:\"4562\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";d:123;s:6:\"height\";d:123;s:5:\"depth\";d:123;s:6:\"weight\";d:123;}','kulashare@dev.com'),(46,'create','2015-09-19 22:35:44','4','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-19 22:35:39\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";N;}',NULL),(47,'create','2015-09-19 22:35:44','4','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:6:\"test 1\";s:11:\"description\";s:6:\"test 1\";s:12:\"metaKeywords\";s:5:\"test1\";s:15:\"metaDescription\";s:6:\"test 1\";s:16:\"shortDescription\";s:6:\"test 1\";}',NULL),(48,'create','2015-09-19 22:35:44','4','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:2:\"09\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:900;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(49,'create','2015-09-19 22:54:42','34','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(50,'create','2015-09-19 23:01:03','5','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-19 23:00:53\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(51,'create','2015-09-19 23:01:03','5','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:6:\"test 2\";s:11:\"description\";s:6:\"test 2\";s:12:\"metaKeywords\";s:5:\"test2\";s:15:\"metaDescription\";s:6:\"test 2\";s:16:\"shortDescription\";s:6:\"test 2\";}','cuco4@a.com'),(52,'create','2015-09-19 23:01:03','5','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:2:\"77\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(53,'create','2015-09-19 23:30:05','6','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-19 23:29:55\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(54,'create','2015-09-19 23:30:05','6','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:6:\"test 3\";s:11:\"description\";s:6:\"test 3\";s:12:\"metaKeywords\";s:6:\"test 3\";s:15:\"metaDescription\";s:6:\"test 3\";s:16:\"shortDescription\";s:6:\"test 3\";}','cuco4@a.com'),(55,'create','2015-09-19 23:30:05','6','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:2:\"33\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(56,'create','2015-09-19 23:51:48','35','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(57,'create','2015-09-20 19:52:34','36','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(58,'create','2015-09-21 00:18:07','37','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(59,'create','2015-09-22 01:47:13','38','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(60,'create','2015-09-22 01:54:30','39','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(61,'create','2015-09-22 02:02:06','40','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(62,'create','2015-09-22 02:07:53','41','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(63,'create','2015-09-22 03:27:54','7','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 03:27:43\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(64,'create','2015-09-22 03:27:54','7','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"product form 1\";s:11:\"description\";s:12:\"product form\";s:12:\"metaKeywords\";s:12:\"product form\";s:15:\"metaDescription\";s:12:\"product form\";s:16:\"shortDescription\";s:12:\"product form\";}','cuco4@a.com'),(65,'create','2015-09-22 03:27:54','7','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:3:\"980\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:5600;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(66,'create','2015-09-22 03:28:35','8','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 03:28:26\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(67,'create','2015-09-22 03:28:35','8','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"product form 1\";s:11:\"description\";s:12:\"product form\";s:12:\"metaKeywords\";s:12:\"product form\";s:15:\"metaDescription\";s:12:\"product form\";s:16:\"shortDescription\";s:12:\"product form\";}','cuco4@a.com'),(68,'create','2015-09-22 03:28:35','8','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:3:\"980\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:5600;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(69,'create','2015-09-22 03:34:28','9','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 03:34:18\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(70,'create','2015-09-22 03:34:28','9','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"product form 2\";s:11:\"description\";s:14:\"product form 2\";s:12:\"metaKeywords\";s:14:\"product form 2\";s:15:\"metaDescription\";s:14:\"product form 2\";s:16:\"shortDescription\";s:14:\"product form 2\";}','cuco4@a.com'),(71,'create','2015-09-22 03:34:28','9','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:2:\"67\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(72,'create','2015-09-22 03:34:49','10','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 03:34:40\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(73,'create','2015-09-22 03:34:49','10','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"product form 2\";s:11:\"description\";s:14:\"product form 2\";s:12:\"metaKeywords\";s:14:\"product form 2\";s:15:\"metaDescription\";s:14:\"product form 2\";s:16:\"shortDescription\";s:14:\"product form 2\";}','cuco4@a.com'),(74,'create','2015-09-22 03:34:49','10','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:2:\"67\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(75,'create','2015-09-22 03:49:51','11','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 03:49:42\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(76,'create','2015-09-22 03:49:51','11','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"product form 3\";s:11:\"description\";s:14:\"product form 3\";s:12:\"metaKeywords\";s:14:\"product form 3\";s:15:\"metaDescription\";s:14:\"product form 3\";s:16:\"shortDescription\";s:14:\"product form 3\";}','cuco4@a.com'),(77,'create','2015-09-22 03:49:51','11','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:3:\"344\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(78,'create','2015-09-22 04:08:13','12','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 04:08:04\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(79,'create','2015-09-22 04:08:13','12','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"product form 5\";s:11:\"description\";s:14:\"product form 5\";s:12:\"metaKeywords\";s:14:\"product form 5\";s:15:\"metaDescription\";s:14:\"product form 5\";s:16:\"shortDescription\";s:14:\"product form 5\";}','cuco4@a.com'),(80,'create','2015-09-22 04:08:13','12','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:5:\"67766\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(81,'create','2015-09-22 04:19:55','13','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 04:19:45\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(82,'create','2015-09-22 04:19:55','13','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"product form 9\";s:11:\"description\";s:14:\"product form 9\";s:12:\"metaKeywords\";s:14:\"product form 9\";s:15:\"metaDescription\";s:14:\"product form 9\";s:16:\"shortDescription\";s:14:\"product form 9\";}','cuco4@a.com'),(83,'create','2015-09-22 04:19:55','13','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:5:\"45533\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(84,'create','2015-09-22 04:24:21','14','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 04:24:11\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(85,'create','2015-09-22 04:24:21','14','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"product form 10\";s:11:\"description\";s:15:\"product form 10\";s:12:\"metaKeywords\";s:15:\"product form 10\";s:15:\"metaDescription\";s:15:\"product form 10\";s:16:\"shortDescription\";s:15:\"product form 10\";}','cuco4@a.com'),(86,'create','2015-09-22 04:24:21','14','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:5:\"78866\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(87,'create','2015-09-22 04:31:21','15','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 04:31:13\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(88,'create','2015-09-22 04:31:21','15','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"product form 534\";s:11:\"description\";s:16:\"product form 534\";s:12:\"metaKeywords\";s:16:\"product form 534\";s:15:\"metaDescription\";s:16:\"product form 534\";s:16:\"shortDescription\";s:16:\"product form 534\";}','cuco4@a.com'),(89,'create','2015-09-22 04:31:21','15','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:5:\"66744\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(91,'create','2015-09-22 04:33:06','16','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 04:32:56\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(92,'create','2015-09-22 04:33:06','16','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:17:\"product form 5346\";s:11:\"description\";s:16:\"product form 534\";s:12:\"metaKeywords\";s:16:\"product form 534\";s:15:\"metaDescription\";s:16:\"product form 534\";s:16:\"shortDescription\";s:16:\"product form 534\";}','cuco4@a.com'),(93,'create','2015-09-22 04:33:06','16','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:6:\"667446\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(95,'create','2015-09-22 04:54:27','17','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-22 04:54:12\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(96,'create','2015-09-22 04:54:27','17','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:5:\"final\";s:11:\"description\";s:5:\"final\";s:12:\"metaKeywords\";s:5:\"final\";s:15:\"metaDescription\";s:5:\"final\";s:16:\"shortDescription\";s:5:\"final\";}','cuco4@a.com'),(97,'create','2015-09-22 04:54:27','17','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:3:\"678\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(98,'create','2015-09-23 02:19:29','18','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-23 02:19:19\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(99,'create','2015-09-23 02:19:29','18','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"product falback\";s:11:\"description\";s:15:\"product falback\";s:12:\"metaKeywords\";s:15:\"product falback\";s:15:\"metaDescription\";s:15:\"product falback\";s:16:\"shortDescription\";s:15:\"product falback\";}','cuco4@a.com'),(100,'create','2015-09-23 02:19:29','18','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:6:\"443321\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(102,'create','2015-09-23 02:34:48','19','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-23 02:34:38\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(103,'create','2015-09-23 02:34:48','19','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"product form 78\";s:11:\"description\";s:15:\"product form 78\";s:12:\"metaKeywords\";s:15:\"product form 78\";s:15:\"metaDescription\";s:15:\"product form 78\";s:16:\"shortDescription\";s:15:\"product form 78\";}','cuco4@a.com'),(104,'create','2015-09-23 02:34:48','19','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:10:\"1233311222\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(109,'create','2015-09-23 03:34:04','21','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-23 03:33:59\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";N;}','cuco4@a.com'),(110,'create','2015-09-23 03:34:04','21','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:3:\"Foo\";s:11:\"description\";s:12:\"Nice product\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','cuco4@a.com'),(111,'create','2015-09-23 03:34:04','20','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:323;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(112,'create','2015-09-23 04:28:07','22','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-23 04:27:58\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(113,'create','2015-09-23 04:28:07','22','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:22:\"aasda asdasd asd asdas\";s:11:\"description\";s:22:\"aasda asdasd asd asdas\";s:12:\"metaKeywords\";s:22:\"aasda asdasd asd asdas\";s:15:\"metaDescription\";s:22:\"aasda asdasd asd asdas\";s:16:\"shortDescription\";s:22:\"aasda asdasd asd asdas\";}','cuco4@a.com'),(114,'create','2015-09-23 04:28:07','21','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:7:\"3452342\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(116,'create','2015-09-23 04:54:48','23','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-23 04:54:40\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(117,'create','2015-09-23 04:54:48','23','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"product form 79\";s:11:\"description\";s:15:\"product form 79\";s:12:\"metaKeywords\";s:15:\"product form 79\";s:15:\"metaDescription\";s:15:\"product form 79\";s:16:\"shortDescription\";s:15:\"product form 79\";}','cuco4@a.com'),(118,'create','2015-09-23 04:54:48','22','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:8:\"12123123\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(124,'create','2015-09-23 04:57:56','42','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(125,'create','2015-09-23 05:00:38','43','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(126,'create','2015-09-23 05:06:05','25','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-23 05:05:57\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(127,'create','2015-09-23 05:06:05','25','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:25:\"wqeq qweqwe qwe qwasd asd\";s:11:\"description\";s:6:\"asdasd\";s:12:\"metaKeywords\";s:9:\"asdasdasd\";s:15:\"metaDescription\";s:6:\"asdasd\";s:16:\"shortDescription\";s:6:\"asdasd\";}','cuco4@a.com'),(128,'create','2015-09-23 05:06:05','26','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:25:\"wqeq qweqwe qwe qwasd asd\";s:11:\"description\";s:6:\"asdasd\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','cuco4@a.com'),(129,'create','2015-09-23 05:06:05','23','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:6:\"634534\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(130,'create','2015-09-24 01:56:33','26','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 01:56:23\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(131,'create','2015-09-24 01:56:33','27','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"doble peticion\";s:11:\"description\";s:14:\"doble peticion\";s:12:\"metaKeywords\";s:14:\"doble peticion\";s:15:\"metaDescription\";s:14:\"doble peticion\";s:16:\"shortDescription\";s:14:\"doble peticion\";}','cuco4@a.com'),(132,'create','2015-09-24 01:56:33','28','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"doble peticion\";s:11:\"description\";s:14:\"doble peticion\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','cuco4@a.com'),(133,'create','2015-09-24 01:56:33','24','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:9:\"456345234\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(134,'create','2015-09-24 02:04:46','27','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 02:04:37\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(135,'create','2015-09-24 02:04:46','29','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"doble peticion 2\";s:11:\"description\";s:15:\"doble peticion2\";s:12:\"metaKeywords\";s:15:\"doble peticion2\";s:15:\"metaDescription\";s:15:\"doble peticion2\";s:16:\"shortDescription\";s:15:\"doble peticion2\";}','cuco4@a.com'),(136,'create','2015-09-24 02:04:46','30','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"doble peticion 2\";s:11:\"description\";s:15:\"doble peticion2\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','cuco4@a.com'),(137,'create','2015-09-24 02:04:46','25','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:12:\"456345234wre\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(138,'create','2015-09-24 02:10:24','28','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 02:10:15\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(139,'create','2015-09-24 02:10:24','31','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"product form 67\";s:11:\"description\";s:15:\"product form 67\";s:12:\"metaKeywords\";s:15:\"product form 67\";s:15:\"metaDescription\";s:15:\"product form 67\";s:16:\"shortDescription\";s:15:\"product form 67\";}','cuco4@a.com'),(140,'create','2015-09-24 02:10:24','32','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"product form 67\";s:11:\"description\";s:15:\"product form 67\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','cuco4@a.com'),(141,'create','2015-09-24 02:10:24','26','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:12:\"456457456456\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(142,'create','2015-09-24 02:26:11','29','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 02:26:02\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(143,'create','2015-09-24 02:26:11','33','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"product form 675\";s:11:\"description\";s:16:\"product form 675\";s:12:\"metaKeywords\";s:16:\"product form 675\";s:15:\"metaDescription\";s:16:\"product form 675\";s:16:\"shortDescription\";s:16:\"product form 675\";}','cuco4@a.com'),(144,'create','2015-09-24 02:26:11','34','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"product form 675\";s:11:\"description\";s:16:\"product form 675\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','cuco4@a.com'),(145,'create','2015-09-24 02:26:11','27','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:12:\"123123123123\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(146,'create','2015-09-24 02:31:17','30','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 02:31:07\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(147,'create','2015-09-24 02:31:17','35','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"product form 101\";s:11:\"description\";s:16:\"product form 101\";s:12:\"metaKeywords\";s:16:\"product form 101\";s:15:\"metaDescription\";s:16:\"product form 101\";s:16:\"shortDescription\";s:16:\"product form 101\";}','cuco4@a.com'),(148,'create','2015-09-24 02:31:17','36','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"product form 101\";s:11:\"description\";s:16:\"product form 101\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','cuco4@a.com'),(149,'create','2015-09-24 02:31:17','28','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:10:\"1231241123\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(150,'create','2015-09-24 02:39:45','31','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 02:39:35\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(151,'create','2015-09-24 02:39:45','37','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:18:\"product form 53464\";s:11:\"description\";s:18:\"product form 53464\";s:12:\"metaKeywords\";s:18:\"product form 53464\";s:15:\"metaDescription\";s:18:\"product form 53464\";s:16:\"shortDescription\";s:18:\"product form 53464\";}','cuco4@a.com'),(152,'create','2015-09-24 02:39:45','38','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:18:\"product form 53464\";s:11:\"description\";s:18:\"product form 53464\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','cuco4@a.com'),(153,'create','2015-09-24 02:39:45','29','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:10:\"2342234234\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:1200;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(154,'create','2015-09-24 02:42:36','32','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 02:42:27\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(155,'create','2015-09-24 02:42:36','39','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:19:\"product form 534645\";s:11:\"description\";s:19:\"product form 534645\";s:12:\"metaKeywords\";s:19:\"product form 534645\";s:15:\"metaDescription\";s:19:\"product form 534645\";s:16:\"shortDescription\";s:19:\"product form 534645\";}','cuco4@a.com'),(156,'create','2015-09-24 02:42:36','30','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:11:\"23422342345\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:1200;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(157,'create','2015-09-24 02:50:13','33','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 02:50:03\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(158,'create','2015-09-24 02:50:13','40','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"product form 25\";s:11:\"description\";s:15:\"product form 25\";s:12:\"metaKeywords\";s:15:\"product form 25\";s:15:\"metaDescription\";s:15:\"product form 25\";s:16:\"shortDescription\";s:15:\"product form 25\";}','cuco4@a.com'),(159,'create','2015-09-24 02:50:13','31','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:11:\"31231231234\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(160,'create','2015-09-24 02:57:38','34','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-09-24 02:57:28\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(161,'create','2015-09-24 02:57:38','41','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:6:\"flasfh\";s:11:\"description\";s:6:\"flasfh\";s:12:\"metaKeywords\";s:6:\"flasfh\";s:15:\"metaDescription\";s:6:\"flasfh\";s:16:\"shortDescription\";s:6:\"flasfh\";}','cuco4@a.com'),(162,'create','2015-09-24 02:57:38','32','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:14:\"12356756989789\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(163,'create','2015-09-25 02:14:46','44','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(164,'create','2015-09-25 02:17:37','45','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(165,'create','2015-09-25 03:19:01','46','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(166,'create','2015-09-26 04:30:56','47','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(167,'create','2015-09-26 22:34:57','48','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(168,'create','2015-09-26 23:55:02','49','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(169,'create','2015-09-27 00:13:00','50','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(170,'create','2015-09-27 19:44:22','51','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(171,'create','2015-09-27 22:59:39','52','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(172,'create','2015-09-27 23:03:03','53','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(173,'create','2015-09-27 23:10:54','54','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(174,'create','2015-09-27 23:16:11','55','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(175,'create','2015-09-28 00:15:34','56','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(176,'create','2015-09-28 00:18:01','57','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(177,'create','2015-09-28 00:18:09','58','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(178,'create','2015-09-28 00:19:26','59','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(179,'create','2015-09-28 00:22:55','60','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(180,'create','2015-09-28 00:27:17','61','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(181,'create','2015-09-28 00:30:57','62','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(182,'create','2015-09-29 02:48:52','63','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(183,'create','2015-10-01 02:22:42','64','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(184,'create','2015-10-01 02:41:03','65','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(185,'create','2015-10-01 04:08:07','66','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(186,'create','2015-10-01 04:21:43','67','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(187,'create','2015-10-01 04:22:12','68','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(188,'create','2015-10-01 04:23:00','69','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(189,'create','2015-10-03 03:14:41','70','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(190,'create','2015-10-03 22:21:10','71','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(191,'create','2015-10-03 22:24:39','72','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(192,'create','2015-10-03 22:35:48','73','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(193,'create','2015-10-03 22:46:47','74','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(194,'create','2015-10-03 22:50:44','75','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(195,'create','2015-10-03 22:51:44','76','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(196,'create','2015-10-03 23:29:53','35','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:19:\"2015-10-03 23:29:37\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Berlin\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:6;}}','cuco4@a.com'),(197,'create','2015-10-03 23:29:53','42','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"prod from ks 1\";s:11:\"description\";s:12:\"prod from ks\";s:12:\"metaKeywords\";s:12:\"prod from ks\";s:15:\"metaDescription\";s:12:\"prod from ks\";s:16:\"shortDescription\";s:12:\"prod from ks\";}','cuco4@a.com'),(198,'create','2015-10-03 23:29:53','33','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:13:\"9807975675671\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','cuco4@a.com'),(199,'create','2015-10-04 14:14:27','77','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(200,'create','2015-10-04 16:23:14','78','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(201,'create','2015-10-04 16:29:50','79','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(202,'create','2015-10-04 20:43:25','80','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(203,'create','2015-10-04 20:44:38','36','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2015-10-04 20:44:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(204,'create','2015-10-04 20:44:38','43','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:4:\"Test\";s:11:\"description\";s:4:\"test\";s:12:\"metaKeywords\";s:4:\"test\";s:15:\"metaDescription\";s:4:\"test\";s:16:\"shortDescription\";s:4:\"test\";}','kulashare@dev.com'),(205,'create','2015-10-04 20:44:38','34','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";s:3:\"123\";s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:12300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(206,'create','2015-10-05 06:31:37','81','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(207,'create','2015-10-05 07:29:19','82','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(208,'create','2015-10-05 19:51:37','83','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(209,'create','2015-10-05 19:51:41','84','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(210,'create','2015-10-08 16:54:11','85','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(211,'create','2015-10-10 21:03:36','86','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(212,'create','2015-10-11 22:27:02','87','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(213,'create','2015-10-13 19:02:16','88','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(214,'create','2015-10-13 19:03:46','89','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(215,'create','2015-10-13 19:32:20','90','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(216,'create','2015-10-13 20:33:26','91','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(217,'create','2015-10-14 02:32:50','92','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(218,'create','2015-10-14 02:49:33','93','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(219,'create','2015-10-14 05:07:24','94','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(220,'create','2015-10-14 05:07:39','95','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(221,'create','2015-10-14 14:25:26','96','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(222,'create','2015-10-14 20:37:51','97','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(223,'create','2015-10-14 20:39:05','98','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(224,'create','2015-10-14 23:44:16','99','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(225,'create','2015-10-15 05:28:05','100','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(226,'create','2015-10-15 15:41:13','101','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(227,'create','2015-10-15 16:33:57','102','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(228,'create','2015-10-15 20:15:23','103','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(229,'create','2015-10-16 06:09:54','104','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(230,'create','2015-10-16 13:51:44','105','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(231,'create','2015-10-16 19:49:13','106','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(232,'create','2015-10-18 20:33:59','107','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(233,'create','2015-10-19 00:50:14','108','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(234,'create','2015-10-19 20:17:16','109','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(235,'create','2015-10-20 15:03:56','110','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(236,'create','2015-10-20 16:15:58','111','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(237,'create','2015-10-20 18:19:14','112','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(238,'create','2015-10-22 19:30:19','113','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(239,'create','2015-10-23 18:16:46','114','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(240,'create','2015-10-26 18:39:07','115','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(241,'create','2015-10-29 13:59:22','116','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(242,'create','2015-10-30 02:39:14','117','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(243,'create','2015-10-30 04:30:33','118','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(244,'create','2015-11-04 20:56:07','119','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(245,'create','2015-11-09 23:52:25','120','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(246,'create','2015-11-12 14:47:18','121','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(247,'create','2015-11-12 16:46:08','122','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(248,'create','2015-11-12 16:46:08','123','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(249,'create','2015-11-16 17:41:51','124','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(250,'create','2015-11-17 01:16:51','125','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(251,'create','2015-11-18 15:25:58','126','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(252,'create','2015-11-18 21:16:53','127','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(253,'create','2015-11-18 21:31:38','128','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(254,'create','2015-11-18 21:31:38','1','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(255,'create','2015-11-18 21:34:03','1','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(256,'create','2015-11-18 21:34:03','2','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(257,'create','2015-11-18 21:34:03','3','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(258,'create','2015-11-18 21:34:03','4','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(259,'update','2015-11-18 21:34:03','128','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:1;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:2;}}','kulashare@dev.com'),(260,'update','2015-11-18 22:05:51','1','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(261,'create','2015-11-19 21:48:13','129','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(262,'create','2015-11-19 21:49:36','130','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(263,'create','2015-11-19 21:49:36','2','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(264,'create','2015-11-19 21:55:03','5','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(265,'create','2015-11-19 21:55:03','6','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(266,'update','2015-11-19 21:55:03','130','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(267,'create','2015-11-20 14:43:48','131','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(268,'create','2015-11-21 06:22:57','132','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(269,'create','2015-11-22 04:10:39','133','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(270,'create','2015-12-02 00:22:32','134','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(271,'create','2015-12-02 00:24:15','135','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(272,'create','2015-12-07 20:57:00','136','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(273,'create','2015-12-07 20:59:50','137','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(274,'create','2015-12-07 21:05:44','138','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(275,'create','2015-12-07 21:10:59','139','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(276,'create','2015-12-07 21:53:27','140','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(277,'create','2015-12-07 21:54:26','141','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','vazquez.santafe@gmail.com'),(278,'create','2015-12-07 21:54:26','3','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','vazquez.santafe@gmail.com'),(279,'create','2015-12-07 21:55:48','7','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:10:\"3424325069\";s:6:\"street\";s:12:\"alberdi 4321\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','vazquez.santafe@gmail.com'),(280,'create','2015-12-07 21:55:48','8','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:10:\"3424325069\";s:6:\"street\";s:12:\"alberdi 4321\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','vazquez.santafe@gmail.com'),(281,'create','2015-12-07 21:55:48','9','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:10:\"3424325069\";s:6:\"street\";s:12:\"alberdi 4321\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','vazquez.santafe@gmail.com'),(282,'create','2015-12-07 21:55:48','10','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:10:\"3424325069\";s:6:\"street\";s:12:\"alberdi 4321\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','vazquez.santafe@gmail.com'),(283,'update','2015-12-07 21:55:48','141','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:7;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:8;}}','vazquez.santafe@gmail.com'),(284,'create','2015-12-08 01:12:10','37','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2015-12-08 01:12:07.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:8;}}','vazquez.santafe@gmail.com'),(285,'create','2015-12-08 01:12:10','44','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:8:\"kdsjadas\";s:11:\"description\";s:7:\"teasdas\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:6:\"fsadas\";}','vazquez.santafe@gmail.com'),(286,'create','2015-12-08 01:12:10','35','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:12300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','vazquez.santafe@gmail.com'),(287,'create','2015-12-08 01:12:38','38','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2015-12-08 01:12:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:8;}}','vazquez.santafe@gmail.com'),(288,'create','2015-12-08 01:12:38','45','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:11:\"new product\";s:11:\"description\";s:5:\"teste\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:7:\"tersdas\";}','vazquez.santafe@gmail.com'),(289,'create','2015-12-08 01:12:38','36','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:1200;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','vazquez.santafe@gmail.com'),(290,'create','2015-12-08 01:33:04','1','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:22300;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','vazquez.santafe@gmail.com'),(291,'update','2015-12-08 01:33:22','1','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:9:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:11:\"000000001-1\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:223;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:223;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:123;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;}}','vazquez.santafe@gmail.com'),(292,'update','2015-12-08 01:33:23','1','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:22:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:11:\"000000001-1\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:223;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:223;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:123;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/-pkxmD0s-8h0zvLq8fEPcIJIpXGXAKTjvBctR9x1-lQ\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/-pkxmD0s-8h0zvLq8fEPcIJIpXGXAKTjvBctR9x1-lQ\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/3OJ7uEPvJbJ0fb0Iugty_Fi0U7oiq5lP2-Gp-q75kIw\";s:9:\"TIMESTAMP\";s:20:\"2015-12-08T01:33:23Z\";s:13:\"CORRELATIONID\";s:13:\"e52978e75e1cd\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','vazquez.santafe@gmail.com'),(293,'update','2015-12-08 01:33:25','1','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:5:\"state\";s:6:\"failed\";}','vazquez.santafe@gmail.com'),(294,'create','2015-12-08 01:38:50','142','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(295,'create','2015-12-08 01:38:50','4','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(296,'create','2015-12-14 23:36:13','143','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(297,'create','2015-12-16 12:16:29','144','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(298,'create','2015-12-17 12:29:15','145','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(299,'create','2015-12-17 22:42:12','146','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(300,'create','2015-12-19 22:37:55','147','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(301,'create','2015-12-19 22:39:58','148','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(302,'create','2015-12-19 22:42:20','149','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(303,'create','2015-12-19 23:02:16','150','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(304,'create','2015-12-19 23:09:24','151','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(305,'create','2015-12-19 23:10:03','152','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(306,'update','2015-12-19 23:54:44','36','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',2,'a:2:{s:11:\"availableOn\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(307,'create','2015-12-20 00:08:26','153','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(308,'create','2015-12-20 07:28:08','154','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(309,'create','2015-12-21 00:23:49','155','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(310,'create','2015-12-21 00:27:28','39','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(311,'create','2015-12-21 00:27:28','46','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:11:\"new product\";s:11:\"description\";s:11:\"new product\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:11:\"new product\";}','kulashare@dev.com'),(312,'create','2015-12-21 00:27:28','37','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(313,'create','2015-12-22 03:53:46','156','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(314,'create','2015-12-23 11:25:43','157','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(315,'create','2015-12-23 15:29:00','158','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(316,'create','2015-12-24 21:22:37','159','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(317,'create','2015-12-24 21:22:50','160','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(318,'create','2015-12-24 21:28:15','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(319,'create','2015-12-24 21:28:15','47','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:23:\"Laser Jet pro 400 color\";s:11:\"description\";s:33:\"Laser jet color printer model MFP\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}','kulashare@dev.com'),(320,'create','2015-12-24 21:28:15','38','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(321,'create','2015-12-24 21:36:22','161','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(322,'create','2015-12-25 02:16:48','162','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(323,'create','2015-12-25 02:16:48','5','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(324,'update','2015-12-30 01:53:34','5','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(325,'create','2015-12-31 01:37:07','163','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(326,'create','2015-12-31 01:37:21','164','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(327,'create','2015-12-31 02:39:00','165','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(328,'create','2015-12-31 02:41:22','166','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(329,'create','2015-12-31 02:41:22','6','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(330,'create','2015-12-31 02:41:53','11','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(331,'create','2015-12-31 02:41:53','12','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(332,'update','2015-12-31 02:41:53','166','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(333,'create','2015-12-31 02:43:56','2','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:22300;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(334,'create','2016-01-01 08:31:18','167','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(335,'create','2016-01-01 08:32:10','168','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(336,'create','2016-01-02 04:44:43','169','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(337,'create','2016-01-02 07:11:16','170','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(338,'create','2016-01-03 08:05:01','171','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(339,'create','2016-01-04 18:54:01','172','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(340,'create','2016-01-04 18:54:28','173','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(341,'create','2016-01-04 18:54:28','7','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(342,'update','2016-01-04 19:33:09','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',2,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(343,'create','2016-01-05 02:38:09','174','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(344,'create','2016-01-06 08:35:33','175','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(345,'create','2016-01-06 08:35:53','176','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(346,'create','2016-01-06 20:51:28','177','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(347,'create','2016-01-06 20:52:02','178','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(348,'create','2016-01-06 20:52:02','8','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(349,'create','2016-01-11 06:43:19','179','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(350,'create','2016-01-11 06:43:37','180','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(351,'create','2016-01-12 16:32:02','181','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(352,'update','2016-01-12 16:47:37','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',3,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(353,'update','2016-01-12 17:30:43','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',4,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(354,'update','2016-01-12 17:43:21','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',5,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(355,'update','2016-01-12 17:50:23','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',6,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(356,'update','2016-01-12 17:51:09','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',7,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(357,'update','2016-01-12 17:52:02','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',8,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(358,'update','2016-01-12 18:20:04','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',9,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(359,'update','2016-01-12 18:56:08','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',10,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(360,'update','2016-01-12 19:12:56','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',11,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(361,'update','2016-01-14 00:01:23','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',12,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(362,'update','2016-01-14 00:14:08','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',13,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(363,'update','2016-01-14 00:21:10','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',14,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(364,'update','2016-01-14 00:26:15','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',15,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(365,'update','2016-01-14 11:03:50','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',16,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(366,'update','2016-01-14 11:10:20','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',17,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(367,'update','2016-01-14 11:37:10','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',18,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(368,'update','2016-01-14 13:03:50','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',19,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(369,'update','2016-01-14 13:59:42','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',20,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(370,'update','2016-01-14 14:01:37','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',21,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(371,'update','2016-01-14 14:02:18','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',22,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(372,'update','2016-01-14 14:04:27','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',23,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(373,'update','2016-01-14 17:14:35','40','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',24,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(374,'create','2016-01-15 00:12:27','182','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(375,'create','2016-01-15 00:12:38','183','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(376,'create','2016-01-15 00:23:55','41','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(377,'create','2016-01-15 00:23:55','48','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:9:\"Chain saw\";s:11:\"description\";s:34:\"super sharp super cutter chain saw\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:11:\"super chain\";}','kulashare@dev.com'),(378,'create','2016-01-15 00:23:55','39','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:3500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(379,'create','2016-01-15 01:31:13','184','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(380,'create','2016-01-18 23:28:31','185','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(381,'create','2016-01-18 23:34:07','186','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(382,'create','2016-01-18 23:34:10','187','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(383,'create','2016-01-19 05:09:22','188','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(384,'create','2016-01-19 05:09:44','189','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(385,'create','2016-01-19 05:11:00','190','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(386,'create','2016-01-19 05:13:16','42','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(387,'create','2016-01-19 05:13:16','49','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:27:\"ANSOcsfcoNScNHosdnhcvolSCLK\";s:11:\"description\";s:73:\"sldjjfasjfv\'osDJF\'odsv\'o ansdVnadNV\'DNSV ASDNHV OSDNv \"clON\'LOSNd\"Cnj\'SDc\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:17:\"js\'ojdv\'oasjv\'ocs\";}','kulashare@dev.com'),(388,'create','2016-01-19 05:13:16','40','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2800;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(389,'create','2016-01-19 20:56:15','191','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(390,'create','2016-01-19 20:56:25','192','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(391,'create','2016-01-19 20:56:59','193','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(392,'create','2016-01-19 20:58:50','43','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(393,'create','2016-01-19 20:58:50','50','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"sgshghjsjetj\";s:11:\"description\";s:22:\"gsdshjdfj.;k;o;uohgsdg\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:35:\"zdgvsfdhdgymkgjklohi;tfhsdfhbdg,ljk\";}','kulashare@dev.com'),(394,'create','2016-01-19 20:58:50','41','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(395,'create','2016-01-20 17:01:48','194','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(396,'create','2016-01-20 17:03:46','195','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(397,'create','2016-01-21 00:09:22','196','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(398,'create','2016-01-21 06:01:21','197','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(399,'create','2016-01-21 06:01:30','198','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(400,'create','2016-01-21 06:01:55','199','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(401,'create','2016-01-21 06:02:00','200','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(402,'create','2016-01-21 06:16:23','44','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(403,'create','2016-01-21 06:16:23','51','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:28:\"afkahfha;sidvhfa;ishf;iHx;iC\";s:11:\"description\";s:19:\"IVFHSIDHF;AHs:fhVOa\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:17:\"n;dvha;DHv;OSHdvO\";}','kulashare@dev.com'),(404,'create','2016-01-21 06:16:23','42','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(405,'create','2016-01-21 06:18:32','45','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(406,'create','2016-01-21 06:18:32','52','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:3:\"Tst\";s:11:\"description\";s:4:\"Test\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:4:\"Test\";}','kulashare@dev.com'),(407,'create','2016-01-21 06:18:32','43','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(408,'create','2016-01-21 16:15:02','201','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(409,'create','2016-01-21 18:20:56','202','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(410,'create','2016-01-21 18:35:41','203','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(411,'create','2016-01-21 18:39:18','204','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(412,'create','2016-01-22 07:56:30','205','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(413,'update','2016-01-22 08:10:57','45','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',2,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(414,'create','2016-01-22 08:37:02','206','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(415,'create','2016-01-22 14:55:13','207','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(416,'create','2016-01-22 14:55:44','208','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(417,'create','2016-01-22 14:55:44','9','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(418,'create','2016-01-22 14:57:09','13','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(419,'create','2016-01-22 14:57:09','14','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(420,'update','2016-01-22 14:57:09','208','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(421,'create','2016-01-22 14:57:38','3','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:22300;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(422,'create','2016-01-22 15:02:37','209','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(423,'create','2016-01-22 17:42:34','210','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(424,'create','2016-01-22 17:43:36','211','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(425,'create','2016-01-22 17:43:36','10','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(426,'create','2016-01-22 17:48:01','15','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(427,'create','2016-01-22 17:48:01','16','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(428,'update','2016-01-22 17:48:01','211','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(429,'create','2016-01-22 17:49:22','212','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(430,'create','2016-01-22 17:51:03','213','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(431,'create','2016-01-22 17:51:03','11','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(432,'update','2016-01-22 18:08:55','10','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(433,'create','2016-01-22 18:10:16','214','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(434,'create','2016-01-22 18:11:46','215','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(435,'create','2016-01-22 18:11:46','12','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(436,'create','2016-01-22 18:14:27','17','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(437,'create','2016-01-22 18:14:27','18','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(438,'update','2016-01-22 18:14:27','215','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(439,'create','2016-01-22 19:30:19','216','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(440,'create','2016-01-22 19:31:11','217','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(441,'create','2016-01-22 20:17:39','218','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(442,'create','2016-01-22 20:25:08','219','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(443,'create','2016-01-22 21:37:01','220','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(444,'create','2016-01-22 21:37:10','221','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(445,'create','2016-01-23 10:27:31','222','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(446,'create','2016-01-23 10:28:08','223','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(447,'create','2016-01-23 10:28:08','13','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(448,'create','2016-01-23 11:34:37','224','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(449,'create','2016-01-23 13:43:07','46','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(450,'create','2016-01-23 13:43:07','53','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:4:\"Test\";s:11:\"description\";s:7:\"tesstte\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:8:\"teasteas\";}','kulashare@dev.com'),(451,'create','2016-01-23 13:43:07','44','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:1200;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(452,'create','2016-01-23 13:52:17','47','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(453,'create','2016-01-23 13:52:17','54','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:7:\"fsdfsdf\";s:11:\"description\";s:9:\"fdsfsdfsd\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:9:\"fsdfsdfsf\";}','kulashare@dev.com'),(454,'create','2016-01-23 13:52:17','45','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:1200;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(455,'create','2016-01-23 13:55:34','48','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(456,'create','2016-01-23 13:55:34','55','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:7:\"fsdfsdf\";s:11:\"description\";s:9:\"fdsfsdfsd\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:9:\"fsdfsdfsf\";}','kulashare@dev.com'),(457,'create','2016-01-23 13:55:34','46','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:1200;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(458,'create','2016-01-23 14:28:00','49','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(459,'create','2016-01-23 14:28:00','56','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:6:\"testet\";s:11:\"description\";s:7:\"testewr\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:7:\"tesgras\";}','kulashare@dev.com'),(460,'create','2016-01-23 14:28:00','47','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:12300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(461,'create','2016-01-23 14:29:50','50','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(462,'create','2016-01-23 14:29:50','57','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"sadasdasdasd\";s:11:\"description\";s:7:\"testewr\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:7:\"tesgras\";}','kulashare@dev.com'),(463,'create','2016-01-23 14:29:50','48','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:12300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(464,'create','2016-01-23 14:31:13','51','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(465,'create','2016-01-23 14:31:13','58','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"sadasdasdasd\";s:11:\"description\";s:7:\"testewr\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:7:\"tesgras\";}','kulashare@dev.com'),(466,'create','2016-01-23 14:31:13','49','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:12300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(467,'create','2016-01-23 14:32:09','52','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(468,'create','2016-01-23 14:32:09','59','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:10:\"dsadasdasd\";s:11:\"description\";s:9:\"asdasdads\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:10:\"dasdasdasd\";}','kulashare@dev.com'),(469,'create','2016-01-23 14:32:09','50','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:12412400;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(470,'create','2016-01-23 14:33:35','53','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(471,'create','2016-01-23 14:33:35','60','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"asdasfasgasfasf\";s:11:\"description\";s:11:\"dasddsadasd\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:10:\"dasdasddas\";}','kulashare@dev.com'),(472,'create','2016-01-23 14:33:35','51','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:2300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(473,'create','2016-01-23 14:34:40','54','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(474,'create','2016-01-23 14:34:40','61','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"fsdfsdfsdfsdff\";s:11:\"description\";s:12:\"dsfsdfsdfsdf\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:8:\"vsdhsgsd\";}','kulashare@dev.com'),(475,'create','2016-01-23 14:34:40','52','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:1300;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(476,'update','2016-01-23 14:37:46','54','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',2,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(477,'create','2016-01-23 16:11:47','225','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(478,'create','2016-01-23 16:12:04','226','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(479,'create','2016-01-23 16:12:04','14','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(480,'create','2016-01-23 16:13:33','19','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(481,'create','2016-01-23 16:13:33','20','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(482,'update','2016-01-23 16:13:33','226','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(483,'create','2016-01-23 17:05:38','227','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(484,'create','2016-01-23 17:08:23','228','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(485,'create','2016-01-23 17:28:39','229','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(486,'create','2016-01-23 23:02:05','230','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(487,'create','2016-01-24 00:09:55','231','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(488,'create','2016-01-24 16:19:10','232','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(489,'create','2016-01-24 17:27:30','233','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(490,'create','2016-01-24 19:31:12','234','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(491,'create','2016-01-24 21:50:46','235','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(492,'create','2016-01-24 22:55:14','236','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(493,'create','2016-01-24 22:55:14','15','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(494,'create','2016-01-25 00:59:34','237','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(495,'create','2016-01-25 01:06:43','238','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(496,'create','2016-01-25 01:42:36','239','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(497,'create','2016-01-25 02:07:34','240','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(498,'create','2016-01-25 02:15:40','241','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(499,'create','2016-01-25 02:51:28','242','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(500,'create','2016-01-25 02:59:39','243','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(501,'create','2016-01-25 02:59:39','16','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(502,'create','2016-01-25 03:00:04','21','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(503,'create','2016-01-25 03:00:04','22','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(504,'update','2016-01-25 03:00:04','243','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(505,'create','2016-01-25 03:00:51','4','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:14500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(506,'update','2016-01-25 03:01:09','4','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:9:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:11:\"000000002-4\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:145;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:145;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:45;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;}}','kulashare@dev.com'),(507,'update','2016-01-25 03:01:10','4','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:22:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:11:\"000000002-4\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:145;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:145;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:45;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/V-fto3YVqYXOZqKsl7OJfVIU1C-KHyQL0olyuiZ7IKE\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/V-fto3YVqYXOZqKsl7OJfVIU1C-KHyQL0olyuiZ7IKE\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/E3x0I5BR0Ha6XHj5o0rMWOGBBTHnqrgLAbvxXVWuzSM\";s:9:\"TIMESTAMP\";s:20:\"2016-01-25T03:01:10Z\";s:13:\"CORRELATIONID\";s:12:\"886d594cb624\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(508,'update','2016-01-25 03:01:11','4','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(509,'update','2016-01-25 03:02:52','16','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(510,'create','2016-01-25 03:03:56','244','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(511,'create','2016-01-25 03:04:30','245','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(512,'create','2016-01-25 03:04:30','17','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(513,'create','2016-01-25 03:04:44','23','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(514,'create','2016-01-25 03:04:44','24','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(515,'update','2016-01-25 03:04:44','245','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(516,'create','2016-01-25 03:05:02','5','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:14500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(517,'update','2016-01-25 03:05:23','5','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:9:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:11:\"000000003-5\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:145;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:145;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:45;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;}}','kulashare@dev.com'),(518,'update','2016-01-25 03:05:23','5','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:22:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:11:\"000000003-5\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:145;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:145;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:45;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/-Pl17UsUVRsxWN-D6tevg7XYS1eX-T7Lm18vR6InJbs\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/-Pl17UsUVRsxWN-D6tevg7XYS1eX-T7Lm18vR6InJbs\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/iTopm0NqF5KEkos4F0ccqIQg4uu2cTgYYBMaUuoVN3I\";s:9:\"TIMESTAMP\";s:20:\"2016-01-25T03:05:23Z\";s:13:\"CORRELATIONID\";s:13:\"6a874f7f71d42\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(519,'update','2016-01-25 03:05:25','5','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(520,'create','2016-01-25 03:08:00','6','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:14500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(521,'update','2016-01-25 03:14:21','6','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(522,'create','2016-01-25 14:09:33','246','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(523,'create','2016-01-25 14:09:33','18','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(524,'create','2016-01-25 14:10:11','25','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(525,'create','2016-01-25 14:10:11','26','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(526,'update','2016-01-25 14:10:11','246','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(527,'create','2016-01-25 14:10:35','7','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:14500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(528,'update','2016-01-25 14:11:23','7','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:9:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:11:\"000000004-7\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:145;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:145;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:45;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;}}','kulashare@dev.com'),(529,'update','2016-01-25 14:11:24','7','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:22:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:11:\"000000004-7\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:145;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:145;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:45;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/TdHBwzWu6A5H_lXbLRMLydrVdFgIjDXaE4VcJPM37eQ\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/TdHBwzWu6A5H_lXbLRMLydrVdFgIjDXaE4VcJPM37eQ\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/VQ92dtn3OLxFWjAoEE8jnDHroW_J9y9LNdoQLdb2Zpo\";s:9:\"TIMESTAMP\";s:20:\"2016-01-25T14:11:24Z\";s:13:\"CORRELATIONID\";s:13:\"62e6b06728f3d\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(530,'update','2016-01-25 14:11:25','7','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(531,'update','2016-01-25 14:24:46','18','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(532,'remove','2016-01-25 14:26:07','18','Sylius\\Component\\Core\\Model\\OrderItem',3,'N;','kulashare@dev.com'),(533,'create','2016-01-25 14:26:22','19','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(534,'update','2016-01-25 14:45:47','19','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(535,'create','2016-01-25 14:46:19','247','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(536,'create','2016-01-25 14:59:18','248','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(537,'create','2016-01-25 15:08:47','8','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:19000;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(538,'update','2016-01-25 15:34:30','8','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(539,'create','2016-01-25 15:34:38','9','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:19000;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(540,'update','2016-01-25 15:35:02','9','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:2:{s:4:\"paid\";b:0;s:6:\"status\";s:7:\"pending\";}}','kulashare@dev.com'),(541,'update','2016-01-25 15:35:04','9','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:10:\"processing\";}','kulashare@dev.com'),(542,'create','2016-01-25 15:41:45','249','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(543,'create','2016-01-25 15:41:45','20','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(544,'create','2016-01-25 15:54:14','27','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(545,'create','2016-01-25 15:54:14','28','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(546,'update','2016-01-25 15:54:14','249','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(547,'create','2016-01-25 15:54:24','10','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:4500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(548,'update','2016-01-25 15:54:35','10','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:2:{s:4:\"paid\";b:0;s:6:\"status\";s:7:\"pending\";}}','kulashare@dev.com'),(549,'update','2016-01-25 15:54:37','10','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:10:\"processing\";}','kulashare@dev.com'),(550,'create','2016-01-25 15:57:38','250','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(551,'create','2016-01-25 15:57:38','21','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(552,'create','2016-01-25 15:57:56','29','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(553,'create','2016-01-25 15:57:56','30','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(554,'update','2016-01-25 15:57:56','250','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(555,'create','2016-01-25 15:58:08','11','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:4500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(556,'update','2016-01-25 15:58:21','11','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:1:{s:8:\"captured\";b:1;}}','kulashare@dev.com'),(557,'update','2016-01-25 15:58:23','11','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"completed\";}','kulashare@dev.com'),(558,'create','2016-01-25 16:09:15','251','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(559,'create','2016-01-25 16:09:15','22','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(560,'create','2016-01-25 16:13:04','31','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(561,'create','2016-01-25 16:13:04','32','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(562,'update','2016-01-25 16:13:04','251','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(563,'create','2016-01-25 16:13:14','12','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:4500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(564,'create','2016-01-25 16:20:16','252','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(565,'create','2016-01-25 16:26:30','253','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(566,'create','2016-01-25 16:29:00','254','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(567,'create','2016-01-25 16:29:00','23','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(568,'update','2016-01-25 16:35:48','23','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(569,'update','2016-01-25 16:37:05','23','Sylius\\Component\\Core\\Model\\OrderItem',3,'a:1:{s:8:\"quantity\";i:3;}','kulashare@dev.com'),(570,'create','2016-01-25 16:39:31','33','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(571,'create','2016-01-25 16:39:31','34','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(572,'update','2016-01-25 16:39:31','254','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(573,'create','2016-01-25 16:42:43','13','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:13500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(574,'update','2016-01-25 16:43:03','13','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(575,'create','2016-01-25 16:44:59','14','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:13500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(576,'update','2016-01-25 16:47:08','22','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(577,'create','2016-01-25 16:47:14','255','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(578,'update','2016-01-25 16:47:33','12','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(579,'create','2016-01-25 16:53:10','256','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(580,'create','2016-01-25 16:53:10','24','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(581,'update','2016-01-25 16:53:15','24','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(582,'create','2016-01-25 16:53:32','35','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(583,'create','2016-01-25 16:53:32','36','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(584,'update','2016-01-25 16:53:32','256','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(585,'create','2016-01-25 16:53:44','15','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:9000;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(586,'create','2016-01-25 17:03:56','16','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:9000;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(587,'update','2016-01-25 17:15:47','22','Sylius\\Component\\Core\\Model\\OrderItem',3,'a:1:{s:8:\"quantity\";i:3;}','kulashare@dev.com'),(588,'update','2016-01-25 17:16:08','16','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(589,'create','2016-01-25 17:16:27','17','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:13500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(590,'update','2016-01-25 17:16:38','17','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(591,'create','2016-01-25 17:19:43','18','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:13500;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(592,'update','2016-01-25 17:20:00','18','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:3:{s:6:\"amount\";i:13500;s:8:\"currency\";s:3:\"USD\";s:11:\"description\";s:46:\"Order containing 1 items for a total of 135.00\";}}','kulashare@dev.com'),(593,'update','2016-01-25 17:44:24','22','Sylius\\Component\\Core\\Model\\OrderItem',4,'a:1:{s:8:\"quantity\";i:4;}','kulashare@dev.com'),(594,'update','2016-01-25 17:44:54','18','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(595,'create','2016-01-25 17:45:01','19','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:18000;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(596,'update','2016-01-25 17:45:26','19','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:3:{s:6:\"amount\";i:18000;s:8:\"currency\";s:3:\"USD\";s:11:\"description\";s:46:\"Order containing 1 items for a total of 180.00\";}}','kulashare@dev.com'),(597,'create','2016-01-25 18:43:32','257','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(598,'update','2016-01-25 19:47:00','45','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',3,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(599,'update','2016-01-25 19:54:39','54','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',3,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(600,'update','2016-01-25 20:38:57','54','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',4,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(601,'update','2016-01-25 20:38:57','52','Sylius\\Component\\Core\\Model\\ProductVariant',2,'a:1:{s:5:\"price\";i:100;}','kulashare@dev.com'),(602,'create','2016-01-25 20:42:45','25','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(603,'remove','2016-01-25 20:42:58','22','Sylius\\Component\\Core\\Model\\OrderItem',5,'N;','kulashare@dev.com'),(604,'create','2016-01-25 20:51:36','26','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4500;}','kulashare@dev.com'),(605,'remove','2016-01-25 20:52:09','25','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(606,'create','2016-01-25 21:02:24','27','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(607,'update','2016-01-25 21:02:24','26','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(608,'remove','2016-01-25 21:02:33','26','Sylius\\Component\\Core\\Model\\OrderItem',3,'N;','kulashare@dev.com'),(609,'update','2016-01-25 21:02:53','19','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(610,'create','2016-01-25 21:05:09','258','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(611,'update','2016-01-25 21:43:52','27','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(612,'remove','2016-01-25 21:44:05','27','Sylius\\Component\\Core\\Model\\OrderItem',3,'N;','kulashare@dev.com'),(613,'create','2016-01-25 21:44:20','28','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(614,'create','2016-01-25 23:52:07','259','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(615,'create','2016-01-25 23:52:07','29','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(616,'create','2016-01-25 23:52:41','37','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(617,'create','2016-01-25 23:52:41','38','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(618,'update','2016-01-25 23:52:41','259','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(619,'create','2016-01-25 23:58:31','260','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(620,'create','2016-01-26 00:02:36','261','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(621,'create','2016-01-26 00:02:46','262','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(622,'create','2016-01-26 00:04:50','55','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(623,'create','2016-01-26 00:04:50','62','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"butter knife\";s:11:\"description\";s:42:\"ljosjdoifj\'eajfo\'iajjajjfafjalflosaflasfls\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:21:\"jo\'fjldjf\'oajsd\'foja\'\";}','kulashare@dev.com'),(624,'create','2016-01-26 00:04:50','53','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:4500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(625,'create','2016-01-26 03:08:24','263','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(626,'create','2016-01-26 03:12:06','264','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(627,'create','2016-01-26 03:12:06','30','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(628,'create','2016-01-26 07:03:05','265','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(629,'create','2016-01-26 07:03:21','266','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(630,'create','2016-01-26 07:14:48','56','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(631,'create','2016-01-26 07:14:48','63','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:6:\"pencil\";s:11:\"description\";s:195:\"Sharp number 2 pencil. Made from premium wood. Painted with a high shine school bus yellow. The pencil comes pre-sharpened. You can also borrow my high end pencil sharpener at no additional cost.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:38:\"School bus yellow sharpened #2 pencil.\";}','kulashare@dev.com'),(632,'create','2016-01-26 07:14:48','54','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:5000;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(633,'create','2016-01-26 07:33:40','267','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(634,'create','2016-01-26 07:33:40','31','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(635,'create','2016-01-26 07:34:42','32','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(636,'create','2016-01-26 07:35:37','39','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(637,'create','2016-01-26 07:35:37','40','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(638,'update','2016-01-26 07:35:37','267','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(639,'create','2016-01-26 13:27:54','268','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(640,'create','2016-01-26 17:40:55','269','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(641,'create','2016-01-26 17:52:20','270','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(642,'create','2016-01-26 17:52:20','33','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(643,'create','2016-01-26 17:52:55','34','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(644,'remove','2016-01-26 17:53:13','33','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(645,'remove','2016-01-26 17:53:20','34','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(646,'update','2016-01-26 19:14:55','56','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',2,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(647,'create','2016-01-26 21:03:50','35','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(648,'create','2016-01-26 21:04:21','41','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(649,'create','2016-01-26 21:04:21','42','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(650,'update','2016-01-26 21:04:21','270','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(651,'create','2016-01-26 21:16:33','271','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(652,'create','2016-01-26 21:17:00','272','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(653,'create','2016-01-26 21:17:00','36','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(654,'create','2016-01-26 21:17:22','43','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(655,'create','2016-01-26 21:17:22','44','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(656,'update','2016-01-26 21:17:22','272','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(657,'create','2016-01-26 21:34:56','273','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(658,'create','2016-01-26 21:35:40','274','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(659,'create','2016-01-26 21:35:40','37','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(660,'create','2016-01-26 21:36:03','45','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(661,'create','2016-01-26 21:36:03','46','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(662,'update','2016-01-26 21:36:03','274','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(663,'create','2016-01-26 22:20:57','38','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(664,'remove','2016-01-26 22:21:10','38','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(665,'remove','2016-01-26 22:28:12','12','Sylius\\Component\\Core\\Model\\Payment',3,'N;','kulashare@dev.com'),(666,'remove','2016-01-26 22:28:12','16','Sylius\\Component\\Core\\Model\\Payment',3,'N;','kulashare@dev.com'),(667,'remove','2016-01-26 22:28:12','17','Sylius\\Component\\Core\\Model\\Payment',3,'N;','kulashare@dev.com'),(668,'remove','2016-01-26 22:28:12','18','Sylius\\Component\\Core\\Model\\Payment',4,'N;','kulashare@dev.com'),(669,'remove','2016-01-26 22:28:12','19','Sylius\\Component\\Core\\Model\\Payment',4,'N;','kulashare@dev.com'),(670,'remove','2016-01-26 22:28:12','28','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(671,'remove','2016-01-26 22:28:12','251','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(672,'remove','2016-01-26 22:28:28','13','Sylius\\Component\\Core\\Model\\Payment',3,'N;','kulashare@dev.com'),(673,'remove','2016-01-26 22:28:28','14','Sylius\\Component\\Core\\Model\\Payment',2,'N;','kulashare@dev.com'),(674,'remove','2016-01-26 22:28:28','23','Sylius\\Component\\Core\\Model\\OrderItem',4,'N;','kulashare@dev.com'),(675,'remove','2016-01-26 22:28:28','254','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(676,'remove','2016-01-26 22:28:37','11','Sylius\\Component\\Core\\Model\\Payment',4,'N;','kulashare@dev.com'),(677,'remove','2016-01-26 22:28:37','21','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(678,'remove','2016-01-26 22:28:37','250','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(679,'remove','2016-01-26 22:28:48','10','Sylius\\Component\\Core\\Model\\Payment',4,'N;','kulashare@dev.com'),(680,'remove','2016-01-26 22:28:48','20','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(681,'remove','2016-01-26 22:28:48','249','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(682,'remove','2016-01-26 22:29:03','7','Sylius\\Component\\Core\\Model\\Payment',5,'N;','kulashare@dev.com'),(683,'remove','2016-01-26 22:29:03','8','Sylius\\Component\\Core\\Model\\Payment',3,'N;','kulashare@dev.com'),(684,'remove','2016-01-26 22:29:03','9','Sylius\\Component\\Core\\Model\\Payment',4,'N;','kulashare@dev.com'),(685,'remove','2016-01-26 22:29:03','19','Sylius\\Component\\Core\\Model\\OrderItem',3,'N;','kulashare@dev.com'),(686,'remove','2016-01-26 22:29:03','246','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(687,'remove','2016-01-26 22:29:13','5','Sylius\\Component\\Core\\Model\\Payment',5,'N;','kulashare@dev.com'),(688,'remove','2016-01-26 22:29:13','6','Sylius\\Component\\Core\\Model\\Payment',3,'N;','kulashare@dev.com'),(689,'remove','2016-01-26 22:29:13','17','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(690,'remove','2016-01-26 22:29:13','245','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(691,'remove','2016-01-26 22:29:22','4','Sylius\\Component\\Core\\Model\\Payment',5,'N;','kulashare@dev.com'),(692,'remove','2016-01-26 22:29:22','16','Sylius\\Component\\Core\\Model\\OrderItem',3,'N;','kulashare@dev.com'),(693,'remove','2016-01-26 22:29:22','243','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(694,'remove','2016-01-26 22:29:33','1','Sylius\\Component\\Core\\Model\\Payment',5,'N;','kulashare@dev.com'),(695,'remove','2016-01-26 22:29:33','3','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(696,'remove','2016-01-26 22:29:33','141','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(697,'remove','2016-01-26 22:31:18','15','Sylius\\Component\\Core\\Model\\Payment',2,'N;','kulashare@dev.com'),(698,'remove','2016-01-26 22:31:27','3','Sylius\\Component\\Core\\Model\\Payment',2,'N;','kulashare@dev.com'),(699,'remove','2016-01-26 22:31:36','2','Sylius\\Component\\Core\\Model\\Payment',2,'N;','kulashare@dev.com'),(700,'create','2016-01-26 22:32:46','275','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(701,'create','2016-01-26 22:34:50','276','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(702,'create','2016-01-26 22:34:50','39','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(703,'create','2016-01-26 22:35:07','47','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(704,'create','2016-01-26 22:35:07','48','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(705,'update','2016-01-26 22:35:07','276','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(706,'remove','2016-01-26 22:37:29','39','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(707,'remove','2016-01-26 22:37:29','276','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(708,'create','2016-01-26 22:37:43','277','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(709,'create','2016-01-26 22:37:43','40','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(710,'create','2016-01-26 22:38:01','49','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(711,'create','2016-01-26 22:38:01','50','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(712,'update','2016-01-26 22:38:01','277','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(713,'create','2016-01-26 23:24:15','41','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:12300;}','kulashare@dev.com'),(714,'create','2016-01-26 23:41:30','20','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:12400;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(715,'update','2016-01-26 23:41:44','20','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:12524;}','kulashare@dev.com'),(716,'update','2016-01-26 23:41:48','20','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:8:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000009-20\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:125.2399999999999948840923025272786617279052734375;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:125.2399999999999948840923025272786617279052734375;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:123;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;}}','kulashare@dev.com'),(717,'update','2016-01-26 23:41:49','20','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:21:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000009-20\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:125.2399999999999948840923025272786617279052734375;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:125.2399999999999948840923025272786617279052734375;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:123;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/uqShfq3toq7iromkB05Wzo-Mwo2Pj2Tg3d0TpTnrnCs\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/uqShfq3toq7iromkB05Wzo-Mwo2Pj2Tg3d0TpTnrnCs\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/hK8zRAb4wbZGJbhn-_FpjQdCbf89QXzH7bzeHgjPUnE\";s:9:\"TIMESTAMP\";s:20:\"2016-01-26T23:41:49Z\";s:13:\"CORRELATIONID\";s:13:\"550ae23fe4cbc\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(718,'update','2016-01-26 23:41:50','20','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(719,'create','2016-01-26 23:43:10','21','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:12524;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(720,'update','2016-01-26 23:43:21','21','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:12650;}','kulashare@dev.com'),(721,'update','2016-01-26 23:43:24','21','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:8:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000009-21\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:126.5;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:126.5;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:123;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;}}','kulashare@dev.com'),(722,'update','2016-01-26 23:43:24','21','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:21:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000009-21\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:126.5;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:126.5;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:123;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/MgLEYNTT2Jw90fEVpb1EIlXfyn5pPpKgKut-6l916Vk\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/MgLEYNTT2Jw90fEVpb1EIlXfyn5pPpKgKut-6l916Vk\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/0Dbm5LlZ77fb-l1ZmXxCGDVJnYgAN26rgOnI2eX-xw8\";s:9:\"TIMESTAMP\";s:20:\"2016-01-26T23:43:24Z\";s:13:\"CORRELATIONID\";s:13:\"e99a5481af344\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(723,'update','2016-01-26 23:43:26','21','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(724,'remove','2016-01-26 23:46:26','41','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(725,'create','2016-01-26 23:46:57','22','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:350;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(726,'update','2016-01-26 23:47:06','22','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:352;}','kulashare@dev.com'),(727,'update','2016-01-26 23:48:34','22','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(728,'create','2016-01-26 23:48:45','23','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:352;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(729,'update','2016-01-26 23:48:59','23','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:3:{s:6:\"amount\";i:352;s:8:\"currency\";s:3:\"USD\";s:11:\"description\";s:44:\"Order containing 1 items for a total of 3.52\";}}','kulashare@dev.com'),(730,'update','2016-01-26 23:51:58','23','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(731,'create','2016-01-26 23:52:05','24','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:352;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(732,'update','2016-01-26 23:52:32','24','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:1:{s:8:\"captured\";b:1;}}','kulashare@dev.com'),(733,'update','2016-01-26 23:52:35','24','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"completed\";}','kulashare@dev.com'),(734,'create','2016-01-27 03:06:40','278','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(735,'create','2016-01-27 03:06:53','279','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(736,'create','2016-01-27 16:34:05','280','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(737,'create','2016-01-27 16:43:45','281','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(738,'create','2016-01-27 16:43:45','42','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(739,'create','2016-01-27 16:44:04','51','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(740,'create','2016-01-27 16:44:04','52','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(741,'update','2016-01-27 16:44:04','281','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(742,'create','2016-01-27 16:44:13','25','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(743,'update','2016-01-27 16:44:22','25','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:101;}','kulashare@dev.com'),(744,'update','2016-01-27 16:44:26','25','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-25\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0100000000000000088817841970012523233890533447265625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0100000000000000088817841970012523233890533447265625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(745,'update','2016-01-27 16:44:27','25','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-25\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0100000000000000088817841970012523233890533447265625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0100000000000000088817841970012523233890533447265625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/RjkNP90sRmiZkfvapbnSp6nGDSvJiu55iMztYIflAws\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/RjkNP90sRmiZkfvapbnSp6nGDSvJiu55iMztYIflAws\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/f3vIjU17t3nnoqFRKxhOfwKsIVKJuowmrnVErcVkYJo\";s:9:\"TIMESTAMP\";s:20:\"2016-01-27T16:44:27Z\";s:13:\"CORRELATIONID\";s:12:\"28d6293257e8\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(746,'update','2016-01-27 16:44:29','25','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(747,'create','2016-01-27 16:48:40','26','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:101;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(748,'update','2016-01-27 16:48:49','26','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:102;}','kulashare@dev.com'),(749,'update','2016-01-27 16:48:53','26','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-26\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.020000000000000017763568394002504646778106689453125;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.020000000000000017763568394002504646778106689453125;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(750,'update','2016-01-27 16:48:54','26','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-26\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.020000000000000017763568394002504646778106689453125;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.020000000000000017763568394002504646778106689453125;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/bJvYYSDv0EbV2AzbHNLLAtuthqKTSL1X8YAUq7cKRh8\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/bJvYYSDv0EbV2AzbHNLLAtuthqKTSL1X8YAUq7cKRh8\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/7mgJRPPr4pNBY-wIkdCVKafbWAT5Rn6HvVuOgYnXtRk\";s:9:\"TIMESTAMP\";s:20:\"2016-01-27T16:48:53Z\";s:13:\"CORRELATIONID\";s:13:\"1d8c2b5a9ffab\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10413\";s:15:\"L_SHORTMESSAGE0\";s:94:\"Transaction refused because of an invalid argument. See additional error messages for details.\";s:14:\"L_LONGMESSAGE0\";s:63:\"The totals of the cart item amounts do not match order amounts.\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(751,'update','2016-01-27 16:48:55','26','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(752,'create','2016-01-27 16:55:26','27','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:102;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(753,'update','2016-01-27 16:55:35','27','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:103;}','kulashare@dev.com'),(754,'update','2016-01-27 16:55:39','27','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-27\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0300000000000000266453525910037569701671600341796875;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0300000000000000266453525910037569701671600341796875;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(755,'update','2016-01-27 16:55:39','27','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-27\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0300000000000000266453525910037569701671600341796875;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0300000000000000266453525910037569701671600341796875;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/1CLgtSYHPFgMRUm0RwHm7-Uk9ZBiw30OYzdEuI4cz6k\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/1CLgtSYHPFgMRUm0RwHm7-Uk9ZBiw30OYzdEuI4cz6k\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/ZSWx-iOOV3o2YFxzCKL6AkwdCCEc_NFuTpDj1miPydo\";s:9:\"TIMESTAMP\";s:20:\"2016-01-27T16:55:39Z\";s:13:\"CORRELATIONID\";s:13:\"528fa1896b8e0\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10413\";s:15:\"L_SHORTMESSAGE0\";s:94:\"Transaction refused because of an invalid argument. See additional error messages for details.\";s:14:\"L_LONGMESSAGE0\";s:63:\"The totals of the cart item amounts do not match order amounts.\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(756,'update','2016-01-27 16:55:41','27','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(757,'create','2016-01-27 16:56:15','28','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:103;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(758,'update','2016-01-27 16:56:23','28','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:104;}','kulashare@dev.com'),(759,'update','2016-01-27 16:56:26','28','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-28\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.04000000000000003552713678800500929355621337890625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.04000000000000003552713678800500929355621337890625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(760,'update','2016-01-27 16:56:27','28','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-28\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.04000000000000003552713678800500929355621337890625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.04000000000000003552713678800500929355621337890625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/tRhg4KjN13_lWKYhf1sWsF-l21VBg8qrVmjeG4WnpxM\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/tRhg4KjN13_lWKYhf1sWsF-l21VBg8qrVmjeG4WnpxM\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/CllRcM9Nbmygh8cSBK14xZ0_iDTIfNh6EDFNQ5l9S2A\";s:9:\"TIMESTAMP\";s:20:\"2016-01-27T16:56:27Z\";s:13:\"CORRELATIONID\";s:12:\"cb05009fc85b\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(761,'update','2016-01-27 16:56:28','28','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(762,'create','2016-01-27 17:05:22','29','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:104;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(763,'update','2016-01-27 17:05:32','29','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:105;}','kulashare@dev.com'),(764,'update','2016-01-27 17:05:35','29','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-29\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0500000000000000444089209850062616169452667236328125;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0500000000000000444089209850062616169452667236328125;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(765,'update','2016-01-27 17:05:36','29','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000010-29\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0500000000000000444089209850062616169452667236328125;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0500000000000000444089209850062616169452667236328125;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/kUk54ULShbJITzDAxnqctqj8dYkh_xVI7snjbIG7T9w\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/kUk54ULShbJITzDAxnqctqj8dYkh_xVI7snjbIG7T9w\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/P1i50ZY1pC1ekFER-cow-u552k7dqHlCMwTQ1Q7v0Ac\";s:9:\"TIMESTAMP\";s:20:\"2016-01-27T17:05:36Z\";s:13:\"CORRELATIONID\";s:13:\"47735a155cbec\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(766,'update','2016-01-27 17:05:38','29','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(767,'create','2016-01-27 17:05:49','30','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:105;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(768,'update','2016-01-27 17:06:02','30','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:1:{s:8:\"captured\";b:1;}}','kulashare@dev.com'),(769,'update','2016-01-27 17:06:04','30','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"completed\";}','kulashare@dev.com'),(770,'create','2016-01-27 21:59:43','282','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(771,'create','2016-01-27 21:59:43','43','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(772,'create','2016-01-27 22:00:00','53','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(773,'create','2016-01-27 22:00:00','54','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(774,'update','2016-01-27 22:00:00','282','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(775,'create','2016-01-27 22:00:12','31','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(776,'update','2016-01-27 22:00:21','31','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:101;}','kulashare@dev.com'),(777,'update','2016-01-27 22:00:24','31','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000011-31\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0100000000000000088817841970012523233890533447265625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0100000000000000088817841970012523233890533447265625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(778,'update','2016-01-27 22:00:25','31','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000011-31\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0100000000000000088817841970012523233890533447265625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0100000000000000088817841970012523233890533447265625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/VXXS8m2PRdg-av200dCGaQuorTt-OvXSODzqRwEcqeQ\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/VXXS8m2PRdg-av200dCGaQuorTt-OvXSODzqRwEcqeQ\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/PAjNel5aPXB1CGjCfaQbsj6Hq3o0kF8NMxpvny4KflM\";s:9:\"TIMESTAMP\";s:20:\"2016-01-27T22:00:24Z\";s:13:\"CORRELATIONID\";s:12:\"dcebf5ee0eb5\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(779,'update','2016-01-27 22:00:26','31','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(780,'create','2016-01-27 22:00:34','32','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:101;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(781,'update','2016-01-27 22:23:44','32','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(782,'create','2016-01-27 22:23:51','33','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:101;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(783,'update','2016-01-27 22:36:43','33','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(784,'create','2016-01-27 22:36:43','34','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:101;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(785,'update','2016-01-27 22:36:54','34','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:102;}','kulashare@dev.com'),(786,'update','2016-01-27 22:36:57','34','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000011-34\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.020000000000000017763568394002504646778106689453125;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.020000000000000017763568394002504646778106689453125;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(787,'update','2016-01-27 22:36:57','34','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000011-34\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.020000000000000017763568394002504646778106689453125;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.020000000000000017763568394002504646778106689453125;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/kT04HH_ET748U7LuZHU_DeqB7E-UBcTUXC9Twg04MZo\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/kT04HH_ET748U7LuZHU_DeqB7E-UBcTUXC9Twg04MZo\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/fHSKmMI1gDLpqR8PGJ7fMtk4ptdswtYS7dXsOI2szlw\";s:9:\"TIMESTAMP\";s:20:\"2016-01-27T22:36:57Z\";s:13:\"CORRELATIONID\";s:13:\"512426abbd936\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(788,'update','2016-01-27 22:36:59','34','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(789,'create','2016-01-27 22:39:41','35','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:102;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(790,'update','2016-01-27 22:39:50','35','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:103;}','kulashare@dev.com'),(791,'update','2016-01-27 22:39:53','35','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000011-35\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0300000000000000266453525910037569701671600341796875;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0300000000000000266453525910037569701671600341796875;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(792,'update','2016-01-27 22:39:54','35','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000011-35\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0300000000000000266453525910037569701671600341796875;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0300000000000000266453525910037569701671600341796875;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/XBprnJkWYYokIznIf_xDqP2ANNBA8hv3GruXK1mtc4k\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/XBprnJkWYYokIznIf_xDqP2ANNBA8hv3GruXK1mtc4k\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/bCwk9oQRr8ZxL5-zz1YzeizOQbN53TQ1qd1ze4BMh84\";s:9:\"TIMESTAMP\";s:20:\"2016-01-27T22:39:54Z\";s:13:\"CORRELATIONID\";s:13:\"715832563f20e\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(793,'update','2016-01-27 22:39:56','35','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(794,'create','2016-01-27 22:40:15','36','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:103;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(795,'update','2016-01-28 00:50:20','36','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:1:{s:8:\"captured\";b:1;}}','kulashare@dev.com'),(796,'update','2016-01-28 00:50:22','36','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"completed\";}','kulashare@dev.com'),(797,'create','2016-01-28 01:01:12','283','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(798,'create','2016-01-28 01:01:12','44','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(799,'create','2016-01-28 01:01:30','55','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(800,'create','2016-01-28 01:01:30','56','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(801,'update','2016-01-28 01:01:30','283','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(802,'create','2016-01-28 01:01:47','37','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(803,'update','2016-01-28 01:01:56','37','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:101;}','kulashare@dev.com'),(804,'update','2016-01-28 01:09:05','37','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000012-37\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0100000000000000088817841970012523233890533447265625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0100000000000000088817841970012523233890533447265625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(805,'update','2016-01-28 01:09:06','37','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000012-37\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0100000000000000088817841970012523233890533447265625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0100000000000000088817841970012523233890533447265625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/KKAhSRO6UUAytyz7U5oa6ogVGyzndyKvh14Ck3Zavrc\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/KKAhSRO6UUAytyz7U5oa6ogVGyzndyKvh14Ck3Zavrc\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/WXlimhwObEsFeJ_uXNTP2_un_tgrchxREBmEHfYief4\";s:9:\"TIMESTAMP\";s:20:\"2016-01-28T01:09:06Z\";s:13:\"CORRELATIONID\";s:13:\"c3380f0445856\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(806,'update','2016-01-28 01:09:13','37','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(807,'create','2016-01-28 01:10:00','38','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:101;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(808,'update','2016-01-28 01:10:09','38','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:102;}','kulashare@dev.com'),(809,'update','2016-01-28 01:10:13','38','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000012-38\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.020000000000000017763568394002504646778106689453125;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.020000000000000017763568394002504646778106689453125;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(810,'update','2016-01-28 01:10:13','38','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000012-38\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.020000000000000017763568394002504646778106689453125;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.020000000000000017763568394002504646778106689453125;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/WqBbFglbxWXC_xFMl9xZ8HhvEFtN9GDfcA3q6lPHPtU\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/WqBbFglbxWXC_xFMl9xZ8HhvEFtN9GDfcA3q6lPHPtU\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:87:\"http://kulashare.com/dev/web/payment/notify/rLSeVCwNeVA49zJP9QL51XkeysgWYwszG3dWRfmBUBY\";s:9:\"TIMESTAMP\";s:20:\"2016-01-28T01:10:13Z\";s:13:\"CORRELATIONID\";s:13:\"64cdb899544ae\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(811,'update','2016-01-28 01:10:15','38','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(812,'create','2016-01-28 01:12:07','39','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:102;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(813,'update','2016-01-28 01:12:33','39','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:103;}','kulashare@dev.com'),(814,'update','2016-01-28 01:12:36','39','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:6:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000012-39\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0300000000000000266453525910037569701671600341796875;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0300000000000000266453525910037569701671600341796875;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;}}','kulashare@dev.com'),(815,'update','2016-01-28 01:31:52','39','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000012-39\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.0300000000000000266453525910037569701671600341796875;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.0300000000000000266453525910037569701671600341796875;s:23:\"L_PAYMENTREQUEST_0_AMT0\";i:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:5:\"TOKEN\";N;s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/aecS1Y9DFNp0zqTwg1Ys49LwVeI4M1-Zv0o2hyk5cOY\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/aecS1Y9DFNp0zqTwg1Ys49LwVeI4M1-Zv0o2hyk5cOY\";s:9:\"TIMESTAMP\";s:20:\"2016-01-28T01:31:52Z\";s:13:\"CORRELATIONID\";s:13:\"8a20c49b8ab44\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(816,'update','2016-01-28 01:31:54','39','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(817,'create','2016-01-28 01:32:06','40','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:103;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(818,'update','2016-01-28 01:32:15','40','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:104;}','kulashare@dev.com'),(819,'update','2016-01-28 01:32:19','40','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:19:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:12:\"000000012-40\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"USD\";s:20:\"PAYMENTREQUEST_0_AMT\";d:1.04000000000000003552713678800500929355621337890625;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:1.04000000000000003552713678800500929355621337890625;s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:1;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:5:\"TOKEN\";N;s:9:\"RETURNURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/5dvwqoQLK3dlkPtMq2WNZ8n-NW78bL_SJcbsKJ7imUk\";s:9:\"CANCELURL\";s:88:\"http://kulashare.com/dev/web/payment/capture/5dvwqoQLK3dlkPtMq2WNZ8n-NW78bL_SJcbsKJ7imUk\";s:9:\"TIMESTAMP\";s:20:\"2016-01-28T01:32:19Z\";s:13:\"CORRELATIONID\";s:12:\"fe549a692bb6\";s:3:\"ACK\";s:7:\"Failure\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"18308778\";s:12:\"L_ERRORCODE0\";s:5:\"10002\";s:15:\"L_SHORTMESSAGE0\";s:14:\"Security error\";s:14:\"L_LONGMESSAGE0\";s:28:\"Security header is not valid\";s:15:\"L_SEVERITYCODE0\";s:5:\"Error\";}}','kulashare@dev.com'),(820,'update','2016-01-28 01:32:21','40','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:5:\"state\";s:6:\"failed\";}','kulashare@dev.com'),(821,'create','2016-01-28 01:42:43','41','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:104;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(822,'update','2016-01-28 01:43:03','41','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:3:{s:6:\"amount\";i:104;s:8:\"currency\";s:3:\"USD\";s:11:\"description\";s:44:\"Order containing 1 items for a total of 1.04\";}}','kulashare@dev.com'),(823,'update','2016-01-28 02:04:06','44','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(824,'update','2016-01-28 02:04:27','41','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(825,'create','2016-01-28 18:02:36','284','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(826,'create','2016-01-28 22:19:51','285','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(827,'create','2016-01-28 22:20:18','286','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(828,'create','2016-01-28 22:20:18','45','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(829,'create','2016-01-28 22:20:45','57','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(830,'create','2016-01-28 22:20:45','58','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(831,'update','2016-01-28 22:20:45','286','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(832,'create','2016-01-28 23:52:54','42','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(833,'update','2016-01-28 23:53:09','42','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:1:{s:8:\"captured\";b:1;}}','kulashare@dev.com'),(834,'update','2016-01-28 23:53:11','42','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"completed\";}','kulashare@dev.com'),(835,'create','2016-01-29 13:24:51','287','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(836,'create','2016-01-29 21:32:40','288','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(837,'create','2016-01-29 21:56:00','57','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(838,'create','2016-01-29 21:56:00','64','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:21:\"Vintage Schwinn Trike\";s:11:\"description\";s:105:\"Well maintained with original paint and 3 gear rear hub. Perfect for a leisurely Sunday ride around town.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:29:\"3 wheel tricycle with basket.\";}','kulashare@dev.com'),(839,'create','2016-01-29 21:56:00','55','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:11100;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(840,'create','2016-01-30 00:40:45','289','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(841,'create','2016-01-30 04:58:11','290','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(842,'create','2016-01-30 09:57:32','291','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(843,'create','2016-01-30 09:57:44','292','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(844,'update','2016-01-30 10:01:50','56','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',3,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(845,'create','2016-01-30 10:05:21','58','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(846,'create','2016-01-30 10:05:21','65','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:3:\"Pen\";s:11:\"description\";s:43:\"One really nice, I mean super nice blue pen\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:16:\"Pen,Pen,Pen blue\";}','kulashare@dev.com'),(847,'create','2016-01-30 10:05:21','56','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:15500;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(848,'create','2016-01-30 22:26:29','293','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(849,'create','2016-01-31 06:07:05','294','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(850,'create','2016-01-31 06:07:22','295','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(851,'create','2016-02-01 18:07:29','296','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(852,'create','2016-02-01 19:31:11','297','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(853,'create','2016-02-01 19:44:05','298','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(854,'create','2016-02-02 19:43:54','299','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(855,'create','2016-02-03 03:11:36','300','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(856,'create','2016-02-03 03:11:45','301','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(857,'create','2016-02-03 18:40:16','302','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(858,'create','2016-02-03 18:48:13','59','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',1,'a:4:{s:11:\"availableOn\";N;s:11:\"taxCategory\";N;s:16:\"shippingCategory\";N;s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(859,'create','2016-02-03 18:48:13','66','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',1,'a:5:{s:4:\"name\";s:7:\"testing\";s:11:\"description\";s:7:\"testing\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:7:\"testing\";}','kulashare@dev.com'),(860,'create','2016-02-03 18:48:13','57','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:9:{s:3:\"sku\";N;s:17:\"availableOnDemand\";b:1;s:5:\"price\";i:1000;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}','kulashare@dev.com'),(861,'update','2016-02-05 02:59:12','59','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',2,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(862,'create','2016-02-08 15:40:12','303','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(863,'create','2016-02-08 18:21:57','304','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(864,'create','2016-02-08 18:22:03','305','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(865,'create','2016-02-08 20:44:22','306','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(866,'create','2016-02-08 20:51:16','307','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(867,'create','2016-02-08 20:51:16','46','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(868,'create','2016-02-08 20:52:38','59','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(869,'create','2016-02-08 20:52:38','60','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(870,'update','2016-02-08 20:52:38','307','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(871,'create','2016-02-08 20:52:48','43','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(872,'update','2016-02-08 20:53:17','43','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:7:\"details\";a:1:{s:8:\"captured\";b:1;}}','kulashare@dev.com'),(873,'update','2016-02-08 20:53:20','43','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:5:\"state\";s:9:\"completed\";}','kulashare@dev.com'),(874,'create','2016-02-08 20:59:41','308','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(875,'create','2016-02-08 20:59:41','47','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(876,'create','2016-02-08 21:00:40','61','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(877,'create','2016-02-08 21:00:40','62','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(878,'update','2016-02-08 21:00:40','308','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(879,'create','2016-02-08 21:03:11','44','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(880,'update','2016-02-08 21:04:46','44','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(881,'create','2016-02-08 21:04:54','45','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(882,'remove','2016-02-08 21:12:59','44','Sylius\\Component\\Core\\Model\\Payment',3,'N;','kulashare@dev.com'),(883,'remove','2016-02-08 21:12:59','45','Sylius\\Component\\Core\\Model\\Payment',2,'N;','kulashare@dev.com'),(884,'remove','2016-02-08 21:12:59','47','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(885,'remove','2016-02-08 21:12:59','308','Sylius\\Component\\Core\\Model\\Order',3,'N;','kulashare@dev.com'),(886,'create','2016-02-08 21:34:49','309','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(887,'create','2016-02-08 21:34:49','48','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(888,'create','2016-02-08 21:35:48','63','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(889,'create','2016-02-08 21:35:48','64','Sylius\\Component\\Core\\Model\\Address',1,'a:9:{s:9:\"firstName\";s:4:\"Test\";s:8:\"lastName\";s:4:\"Test\";s:11:\"phoneNumber\";s:8:\"45654654\";s:6:\"street\";s:8:\"Test 123\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"3000\";s:7:\"country\";a:1:{s:2:\"id\";i:1;}s:8:\"province\";N;}','kulashare@dev.com'),(890,'update','2016-02-08 21:35:48','309','Sylius\\Component\\Core\\Model\\Order',2,'a:2:{s:15:\"shippingAddress\";a:1:{s:2:\"id\";i:4;}s:14:\"billingAddress\";a:1:{s:2:\"id\";i:3;}}','kulashare@dev.com'),(891,'create','2016-02-08 21:35:55','46','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(892,'update','2016-02-08 21:43:52','46','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(893,'create','2016-02-08 21:43:58','47','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(894,'update','2016-02-08 21:57:22','47','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:5:\"state\";s:9:\"cancelled\";}','kulashare@dev.com'),(895,'create','2016-02-08 21:57:30','48','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:8:\"currency\";s:3:\"USD\";s:6:\"amount\";i:100;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}','kulashare@dev.com'),(896,'create','2016-02-09 07:10:09','310','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(897,'create','2016-02-09 15:39:27','311','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(898,'create','2016-02-09 15:39:29','312','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(899,'create','2016-02-09 15:41:42','313','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(900,'create','2016-02-09 15:41:42','49','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(901,'remove','2016-02-09 15:42:26','49','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(902,'remove','2016-02-09 15:42:26','313','Sylius\\Component\\Core\\Model\\Order',2,'N;','kulashare@dev.com'),(903,'create','2016-02-09 15:47:15','314','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(904,'create','2016-02-09 15:47:15','50','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(905,'update','2016-02-09 16:13:12','50','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(906,'create','2016-02-09 16:16:02','315','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(907,'create','2016-02-09 16:16:50','316','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(908,'create','2016-02-09 16:16:50','51','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(909,'update','2016-02-09 16:20:20','51','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(910,'update','2016-02-09 20:48:05','50','Sylius\\Component\\Core\\Model\\OrderItem',3,'a:1:{s:8:\"quantity\";i:3;}','kulashare@dev.com'),(911,'remove','2016-02-09 20:56:22','51','Sylius\\Component\\Core\\Model\\OrderItem',3,'N;','kulashare@dev.com'),(912,'remove','2016-02-09 20:56:22','316','Sylius\\Component\\Core\\Model\\Order',2,'N;','kulashare@dev.com'),(913,'create','2016-02-09 20:58:08','317','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(914,'create','2016-02-09 20:58:08','52','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(915,'remove','2016-02-09 21:00:27','52','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;','kulashare@dev.com'),(916,'remove','2016-02-09 21:00:27','317','Sylius\\Component\\Core\\Model\\Order',2,'N;','kulashare@dev.com'),(917,'create','2016-02-09 21:16:36','318','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(918,'create','2016-02-09 21:36:18','319','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}','kulashare@dev.com'),(919,'create','2016-02-09 21:36:18','53','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}','kulashare@dev.com'),(920,'update','2016-02-09 22:16:28','53','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}','kulashare@dev.com'),(921,'update','2016-02-09 22:19:45','53','Sylius\\Component\\Core\\Model\\OrderItem',3,'a:1:{s:8:\"quantity\";i:3;}','kulashare@dev.com'),(922,'update','2016-02-09 22:25:54','53','Sylius\\Component\\Core\\Model\\OrderItem',4,'a:1:{s:8:\"quantity\";i:4;}','kulashare@dev.com'),(923,'update','2016-02-09 22:29:48','53','Sylius\\Component\\Core\\Model\\OrderItem',5,'a:1:{s:8:\"quantity\";i:5;}','kulashare@dev.com'),(924,'create','2016-02-09 23:29:54','320','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(925,'create','2016-02-11 16:29:35','321','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(926,'create','2016-02-11 17:28:08','322','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(927,'create','2016-02-11 19:44:08','323','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(928,'create','2016-02-12 22:28:12','324','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(929,'create','2016-02-15 06:35:42','325','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(930,'create','2016-02-15 06:35:53','326','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(931,'create','2016-02-17 04:45:40','327','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(932,'create','2016-02-18 19:37:38','328','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(933,'create','2016-02-21 14:59:03','329','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(934,'create','2016-02-21 17:35:07','330','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(935,'update','2016-02-22 06:07:25','59','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',3,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(936,'update','2016-02-22 06:07:25','66','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',2,'a:1:{s:11:\"description\";s:9:\"testing 3\";}','kulashare@dev.com'),(937,'update','2016-02-22 06:11:06','59','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',4,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(938,'update','2016-02-22 06:11:06','66','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',3,'a:1:{s:11:\"description\";s:7:\"testing\";}','kulashare@dev.com'),(939,'update','2016-02-22 06:20:28','59','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',5,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(940,'update','2016-02-22 19:05:49','59','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',6,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(941,'update','2016-02-22 19:05:49','66','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',4,'a:1:{s:11:\"description\";s:9:\"testing 8\";}','kulashare@dev.com'),(942,'update','2016-02-22 19:15:34','59','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',7,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(943,'update','2016-02-22 19:15:34','66','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',5,'a:1:{s:11:\"description\";s:7:\"testing\";}','kulashare@dev.com'),(944,'update','2016-02-22 19:18:37','59','Kulashare\\Bundle\\ProductBundle\\Entity\\Product',8,'a:1:{s:11:\"userCreated\";a:1:{s:2:\"id\";i:1;}}','kulashare@dev.com'),(945,'update','2016-02-22 19:18:37','66','Kulashare\\Bundle\\ProductBundle\\Entity\\ProductTranslation',6,'a:1:{s:11:\"description\";s:9:\"testing 7\";}','kulashare@dev.com'),(946,'create','2016-02-23 18:03:46','331','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(947,'create','2016-02-23 18:07:07','332','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(948,'create','2016-02-23 18:11:05','333','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(949,'create','2016-02-23 19:51:21','334','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(950,'create','2016-02-23 20:11:10','335','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(951,'create','2016-02-23 21:52:58','336','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(952,'create','2016-02-23 22:57:38','337','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(953,'create','2016-02-24 03:17:17','338','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(954,'create','2016-02-24 15:40:10','339','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(955,'create','2016-02-24 17:02:55','340','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(956,'create','2016-02-24 18:12:00','341','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(957,'create','2016-02-24 18:16:46','342','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(958,'create','2016-02-24 18:17:23','343','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(959,'create','2016-02-24 19:09:20','344','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(960,'create','2016-02-24 19:11:31','345','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(961,'create','2016-02-24 19:42:13','346','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(962,'create','2016-02-24 20:00:01','347','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(963,'create','2016-02-25 18:36:58','348','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(964,'create','2016-02-25 18:37:51','349','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(965,'create','2016-02-25 21:03:58','350','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(966,'create','2016-02-26 00:28:47','351','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(967,'create','2016-02-26 00:29:24','352','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(968,'create','2016-02-26 03:45:59','353','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(969,'create','2016-02-26 16:09:18','354','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(970,'create','2016-02-26 19:13:45','355','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(971,'create','2016-02-26 20:08:12','356','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(972,'create','2016-02-26 20:40:46','357','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(973,'create','2016-02-26 21:51:08','358','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(974,'create','2016-02-29 18:06:42','359','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(975,'create','2016-02-29 18:40:04','360','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(976,'create','2016-03-02 16:13:08','361','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(977,'create','2016-03-02 16:23:57','362','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL),(978,'create','2016-03-02 18:34:42','363','Sylius\\Component\\Core\\Model\\Order',1,'a:3:{s:8:\"currency\";s:3:\"USD\";s:15:\"shippingAddress\";N;s:14:\"billingAddress\";N;}',NULL);
/*!40000 ALTER TABLE `ext_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kulashare_messages`
--

DROP TABLE IF EXISTS `kulashare_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kulashare_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_receiver` int(11) DEFAULT NULL,
  `user_author` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createAt` datetime NOT NULL,
  `updateAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7BF9425CDD356896` (`user_receiver`),
  KEY `IDX_7BF9425CD8FDC3F5` (`user_author`),
  CONSTRAINT `FK_7BF9425CD8FDC3F5` FOREIGN KEY (`user_author`) REFERENCES `sylius_customer` (`id`),
  CONSTRAINT `FK_7BF9425CDD356896` FOREIGN KEY (`user_receiver`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kulashare_messages`
--

LOCK TABLES `kulashare_messages` WRITE;
/*!40000 ALTER TABLE `kulashare_messages` DISABLE KEYS */;
INSERT INTO `kulashare_messages` VALUES (1,1,1,'Extend rental: 1','Hi kulashare','active','2016-02-29 00:00:00','2016-02-29 00:00:00');
/*!40000 ALTER TABLE `kulashare_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kulashare_rentals`
--

DROP TABLE IF EXISTS `kulashare_rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kulashare_rentals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_rental` int(11) DEFAULT NULL,
  `user_lender` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `RentalState` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C41269A8734BD940` (`user_rental`),
  KEY `IDX_C41269A8C8D2E1BC` (`user_lender`),
  KEY `IDX_C41269A84584665A` (`product_id`),
  CONSTRAINT `FK_C41269A84584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`),
  CONSTRAINT `FK_C41269A8734BD940` FOREIGN KEY (`user_rental`) REFERENCES `sylius_customer` (`id`),
  CONSTRAINT `FK_C41269A8C8D2E1BC` FOREIGN KEY (`user_lender`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kulashare_rentals`
--

LOCK TABLES `kulashare_rentals` WRITE;
/*!40000 ALTER TABLE `kulashare_rentals` DISABLE KEYS */;
INSERT INTO `kulashare_rentals` VALUES (1,1,1,36,'2015-12-01 00:00:00','2015-12-30 00:00:00','expired'),(22,8,1,36,'2015-12-10 00:00:00','2015-12-11 00:00:00','rejected'),(23,1,1,36,'2015-12-20 00:00:00','2015-12-31 00:00:00','returned'),(24,1,1,45,'2016-01-30 00:00:00','2016-02-01 00:00:00','approved'),(25,1,1,45,'2016-01-30 00:00:00','2016-02-01 00:00:00','expired'),(26,1,1,45,'2016-02-01 00:00:00','2016-02-20 00:00:00','approved'),(27,1,1,36,'2016-02-01 00:00:00','2016-02-02 00:00:00','expired'),(28,1,1,54,'2016-03-01 01:00:00','2016-06-01 01:00:00','approved'),(29,1,1,54,'2016-03-15 04:00:00','2016-03-17 04:00:00','pending'),(30,1,1,54,'2016-03-15 04:00:00','2016-03-17 04:00:00','approved'),(31,1,1,54,'2016-03-15 04:00:00','2016-03-17 04:00:00','pending'),(32,1,1,54,'2016-03-15 04:00:00','2016-03-17 04:00:00','pending'),(33,1,1,59,'2016-03-01 00:00:00','2016-03-10 00:00:00','pending'),(34,1,1,59,'2016-02-09 09:00:00','2016-02-10 09:00:00','pending'),(35,1,1,59,'2016-02-09 09:00:00','2016-02-10 09:00:00','pending'),(36,1,1,59,'2016-02-19 00:00:00','2016-02-27 01:00:00','pending'),(37,1,1,59,'2016-02-16 09:00:00','2016-02-17 09:00:00','pending'),(38,1,1,59,'2016-02-16 09:00:00','2016-02-17 09:00:00','pending');
/*!40000 ALTER TABLE `kulashare_rentals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_binarydata`
--

DROP TABLE IF EXISTS `phpcr_binarydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_binarydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `property_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workspace_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idx` int(11) NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_37E65615460D9FD7413BC13C1AC10DC4E7087E10` (`node_id`,`property_name`,`workspace_name`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_binarydata`
--

LOCK TABLES `phpcr_binarydata` WRITE;
/*!40000 ALTER TABLE `phpcr_binarydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_binarydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_internal_index_types`
--

DROP TABLE IF EXISTS `phpcr_internal_index_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_internal_index_types` (
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`type`,`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_internal_index_types`
--

LOCK TABLES `phpcr_internal_index_types` WRITE;
/*!40000 ALTER TABLE `phpcr_internal_index_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_internal_index_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_namespaces`
--

DROP TABLE IF EXISTS `phpcr_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_namespaces` (
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_namespaces`
--

LOCK TABLES `phpcr_namespaces` WRITE;
/*!40000 ALTER TABLE `phpcr_namespaces` DISABLE KEYS */;
INSERT INTO `phpcr_namespaces` VALUES ('cmf','http://cmf.symfony.com/phpcr/1.0'),('phpcr','http://www.doctrine-project.org/projects/phpcr_odm'),('phpcr_locale','http://www.doctrine-project.org/projects/phpcr_odm/phpcr_locale');
/*!40000 ALTER TABLE `phpcr_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes`
--

DROP TABLE IF EXISTS `phpcr_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workspace_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `props` longtext COLLATE utf8_unicode_ci NOT NULL,
  `numerical_props` longtext COLLATE utf8_unicode_ci,
  `depth` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A4624AD7B548B0F1AC10DC4` (`path`,`workspace_name`),
  UNIQUE KEY `UNIQ_A4624AD7772E836A1AC10DC4` (`identifier`,`workspace_name`),
  KEY `IDX_A4624AD73D8E604F` (`parent`),
  KEY `IDX_A4624AD78CDE5729` (`type`),
  KEY `IDX_A4624AD7623C14D533E16B56` (`local_name`,`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes`
--

LOCK TABLES `phpcr_nodes` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes` DISABLE KEYS */;
INSERT INTO `phpcr_nodes` VALUES (1,'/','','','','default','5674d1e2-2a90-4d0c-8c7a-8aabd7cfa8b1','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,0,NULL),(2,'/cms','/','cms','','default','e33c3307-f09d-48c9-99e9-09820c3e42f0','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,1,1),(3,'/cms/blocks','/cms','blocks','','default','290ce1a7-b34f-4135-b43a-6e56124620b5','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,1),(4,'/cms/pages','/cms','pages','','default','eef435c7-f07d-4bff-b6d2-ddddfe0a9b7b','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,2),(5,'/cms/menus','/cms','menus','','default','4b218d3f-4589-4dfc-96d2-0fcdb5e79aed','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,3),(6,'/cms/medias','/cms','medias','','default','8dea0a1c-709a-46b8-b249-0e347cbc018d','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,4),(7,'/cms/pages/faqs','/cms/pages','faqs','','default','8c9f0ba4-a81a-4e1e-b824-7b1720f722ae','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"13\">phpcr:managed</sv:value><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"phpcr:class\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"61\">Symfony\\Cmf\\Bundle\\ContentBundle\\Doctrine\\Phpcr\\StaticContent</sv:value></sv:property><sv:property sv:name=\"phpcr:classparents\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"56\">Symfony\\Cmf\\Bundle\\ContentBundle\\Model\\StaticContentBase</sv:value><sv:value length=\"52\">Symfony\\Cmf\\Bundle\\ContentBundle\\Model\\StaticContent</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8c9f0ba4-a81a-4e1e-b824-7b1720f722ae</sv:value></sv:property><sv:property sv:name=\"title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">How it works</sv:value></sv:property><sv:property sv:name=\"body\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"28520\">&lt;div class=\"in-sec1\" id=\"insec1-2\"&gt;&#13;\n		 	&lt;div class=\"\"&gt;&#13;\n		 		&#13;\n		 		&lt;div class=\"cont-banner\"&gt;&#13;\n		 			&lt;img src=\"../img/faqs_banner.png\" alt=\"\" class=\"img-responsive\"  style=\"width:100%;\"&gt;&#13;\n		 		&lt;/div&gt;&#13;\n		 		&#13;\n		 	&lt;/div&gt;&#13;\n		&lt;/div&gt;	&#13;\n&#13;\n&#13;\n		&lt;div class=\"in-sec8\"&gt;&#13;\n			&lt;div class=\"in-sec\"&gt;&#13;\n				&lt;div class=\"title-blue-panel\"&gt;&#13;\n					&lt;h2&gt;About Participating &lt;/h2&gt;&#13;\n				&lt;/div&gt;&#13;\n				&lt;div class=\"panel-group\" id=\"accordion1\" role=\"tablist\" aria-multiselectable=\"true\"&gt;&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"headingOne\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\"&gt;&#13;\n				          What does kulashare™ mean?&#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapseOne\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"headingOne\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"headingTwo\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\"&gt;&#13;\n				        What does it mean to be “kula” ?&#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapseTwo\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingTwo\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"headingThree\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\"&gt;&#13;\n				         How much time will it take to get set up? &#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapseThree\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingThree\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading4\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse4\" aria-expanded=\"false\" aria-controls=\"collapse4\"&gt;&#13;\n				          Do I have to register in order to rent/lend? &#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapse4\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading4\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				        Yes we have 24/7  “contact full-time customer support.”&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading5\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse5\" aria-expanded=\"false\" aria-controls=\"collapse5\"&gt;&#13;\n				        Is there a cost for adding more listings or for using multiple social media accounts?&#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapse5\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading5\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				        No, and no.&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading6\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse6\" aria-expanded=\"false\" aria-controls=\"collapse6\"&gt;&#13;\n				        How do I get verified?&#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapse6\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading5\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				       We subscribe to a third party service that will verify your bank account and credit information&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading7\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse7\" aria-expanded=\"false\" aria-controls=\"collapse7\"&gt;&#13;\n				        Why is there a 15% fee for lenders?&#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapse7\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading5\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				      This is the fee we charge for providing the kulashare™ platform. It goes to pay kulashare™ employees and allows us to evolve the kulashare™ business and community services.&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading8\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse8\" aria-expanded=\"false\" aria-controls=\"collapse8\"&gt;&#13;\n				        How does the Shared risk pool affect me?&#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapse8\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading5\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				      In the event of a loss or damage, the kulashare™ 2.5% Shared Risk Pool (SRP) allows the sharing economy to mitigate some or all of the risk involved in lending business and personal assets for profit or charity. It is created for the sole purpose of benefiting the community. Both parties benefit. The lender and the borrower. It inexpensively helps businesses maximize profits without risking the entire value of their underutilized assets and promotes honesty and integrity among the entire sharing community. We are more than a community. We are a society.&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n				  &lt;div class=\"panel panel-default\"&gt;&#13;\n				    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading9\"&gt;&#13;\n				      &lt;h4 class=\"panel-title\"&gt;&#13;\n				        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse9\" aria-expanded=\"false\" aria-controls=\"collapse9\"&gt;&#13;\n				        What is the Sharing Economy?&#13;\n				        &lt;/a&gt;&#13;\n				      &lt;/h4&gt;&#13;\n				    &lt;/div&gt;&#13;\n				    &lt;div id=\"collapse9\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading5\"&gt;&#13;\n				      &lt;div class=\"panel-body\"&gt;&#13;\n				    &lt;a href=\"http://www.thepeoplewhoshare.com/blog/what-is-the-sharing-economy/\" class=\"in-flink\"&gt;  http://www.thepeoplewhoshare.com/blog/what-is-the-sharing-economy/&lt;/a&gt; The Sharing Economy is a socio-economic ecosystem built around the sharing of human and physical resources. It includes the sharedcreation, production, distribution, trade and consumption of goods and services by different people and organisations.&#13;\n				      &lt;br&gt;&#13;\n				      &lt;br&gt;&#13;\n				      &lt;a href=\"http://en.wikipedia.org/wiki/Sharing_economy\" class=\"in-flink\"&gt;&#13;\n				      http://en.wikipedia.org/wiki/Sharing_economy &lt;/a&gt; &lt;strong&gt;Collaborative consumption as a phenomenon is a class of economic arrangements in which participants share access to products or services, rather than having individual ownership.&lt;/strong&gt;&#13;\n				      &lt;/div&gt;&#13;\n				    &lt;/div&gt;&#13;\n				  &lt;/div&gt;&#13;\n				&lt;/div&gt;&lt;!-- /#accordion1 --&gt;&#13;\n&#13;\n				&lt;div class=\"title-blue-panel\"&gt;&#13;\n					&lt;h2&gt;About Lending Items &lt;/h2&gt;&#13;\n				&lt;/div&gt;&#13;\n&#13;\n				&lt;div class=\"panel-group\" id=\"accordion2\" role=\"tablist\" aria-multiselectable=\"true\"&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading10\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse10\" aria-expanded=\"true\" aria-controls=\"collapse10\"&gt;&#13;\n					        What does kulashare™ mean?&#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse10\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"heading10\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt; &lt;!-- panel panel-default --&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading11\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse11\" aria-expanded=\"false\" aria-controls=\"collapse11\"&gt;&#13;\n					      What does it mean to be “kula” ?&#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse11\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading11\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading12\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse12\" aria-expanded=\"false\" aria-controls=\"collapse12\"&gt;&#13;\n					       How much time will it take to get set up? &#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse12\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading12\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading13\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse13\" aria-expanded=\"false\" aria-controls=\"collapse13\"&gt;&#13;\n					       Do I have to register in order to rent/lend?  &#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse13\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading13\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					        Yes we have 24/7  “contact full-time customer support.”&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n&#13;\n&#13;\n					  &lt;div class=\"panel panel-default\"&gt;&#13;\n					    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading14\"&gt;&#13;\n					      &lt;h4 class=\"panel-title\"&gt;&#13;\n					        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse14\" aria-expanded=\"false\" aria-controls=\"collapse14\"&gt;&#13;\n					        Is there a cost for adding more listings or for using multiple social media accounts?&#13;\n					        &lt;/a&gt;&#13;\n					      &lt;/h4&gt;&#13;\n					    &lt;/div&gt;&#13;\n					    &lt;div id=\"collapse14\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading14\"&gt;&#13;\n					      &lt;div class=\"panel-body\"&gt;&#13;\n					        No, and no.&#13;\n					      &lt;/div&gt;&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n					  &lt;div class=\"panel panel-default\"&gt;&#13;\n					    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading15\"&gt;&#13;\n					      &lt;h4 class=\"panel-title\"&gt;&#13;\n					        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse15\" aria-expanded=\"false\" aria-controls=\"collapse15\"&gt;&#13;\n					        How do I get verified?&#13;\n					        &lt;/a&gt;&#13;\n					      &lt;/h4&gt;&#13;\n					    &lt;/div&gt;&#13;\n					    &lt;div id=\"collapse15\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading15\"&gt;&#13;\n					      &lt;div class=\"panel-body\"&gt;&#13;\n					       We subscribe to a third party service that will verify your bank account and credit information&#13;\n					      &lt;/div&gt;&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n					  &lt;div class=\"panel panel-default\"&gt;&#13;\n					      &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading16\"&gt;&#13;\n					        &lt;h4 class=\"panel-title\"&gt;&#13;\n					          &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse16\" aria-expanded=\"false\" aria-controls=\"collapse16\"&gt;&#13;\n					          Why is there a 15% fee for lenders?&#13;\n					          &lt;/a&gt;&#13;\n					        &lt;/h4&gt;&#13;\n					      &lt;/div&gt;&#13;\n					      &lt;div id=\"collapse16\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading16\"&gt;&#13;\n					        &lt;div class=\"panel-body\"&gt;&#13;\n					        This is the fee we charge for providing the kulashare™ platform. It goes to pay kulashare™ employees and allows us to evolve the kulashare™ business and community services.&#13;\n					        &lt;/div&gt;&#13;\n					      &lt;/div&gt;&#13;\n					   &lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n					   &lt;div class=\"panel panel-default\"&gt;&#13;\n					     &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading17\"&gt;&#13;\n					       &lt;h4 class=\"panel-title\"&gt;&#13;\n					         &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse17\" aria-expanded=\"false\" aria-controls=\"collapse17\"&gt;&#13;\n					         How does the Shared risk pool affect me?&#13;\n					         &lt;/a&gt;&#13;\n					       &lt;/h4&gt;&#13;\n					     &lt;/div&gt;&#13;\n					     &lt;div id=\"collapse17\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading17\"&gt;&#13;\n					       &lt;div class=\"panel-body\"&gt;&#13;\n					       In the event of a loss or damage, the kulashare™ 2.5% Shared Risk Pool (SRP) allows the sharing economy to mitigate some or all of the risk involved in lending business and personal assets for profit or charity. It is created for the sole purpose of benefiting the community. Both parties benefit. The lender and the borrower. It inexpensively helps businesses maximize profits without risking the entire value of their underutilized assets and promotes honesty and integrity among the entire sharing community. We are more than a community. We are a society.&#13;\n					       &lt;/div&gt;&#13;\n					     &lt;/div&gt;&#13;\n					   &lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n&#13;\n					   &lt;div class=\"panel panel-default\"&gt;&#13;\n					     &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading19\"&gt;&#13;\n					       &lt;h4 class=\"panel-title\"&gt;&#13;\n					         &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse19\" aria-expanded=\"false\" aria-controls=\"collapse19\"&gt;&#13;\n					         What is the Sharing Economy?&#13;\n					         &lt;/a&gt;&#13;\n					       &lt;/h4&gt;&#13;\n					     &lt;/div&gt;&#13;\n					     &lt;div id=\"collapse19\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading19\"&gt;&#13;\n					       &lt;div class=\"panel-body\"&gt;&#13;\n					     &lt;a href=\"http://www.thepeoplewhoshare.com/blog/what-is-the-sharing-economy/\" class=\"in-flink\"&gt;  http://www.thepeoplewhoshare.com/blog/what-is-the-sharing-economy/&lt;/a&gt; The Sharing Economy is a socio-economic ecosystem built around the sharing of human and physical resources. It includes the sharedcreation, production, distribution, trade and consumption of goods and services by different people and organisations.&#13;\n					       &lt;br&gt;&#13;\n					       &lt;br&gt;&#13;\n					       &lt;a href=\"http://en.wikipedia.org/wiki/Sharing_economy\" class=\"in-flink\"&gt;&#13;\n					       http://en.wikipedia.org/wiki/Sharing_economy &lt;/a&gt; &lt;strong&gt;Collaborative consumption as a phenomenon is a class of economic arrangements in which participants share access to products or services, rather than having individual ownership.&lt;/strong&gt;&#13;\n					       &lt;/div&gt;&#13;\n					     &lt;/div&gt;&#13;\n					   &lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n&#13;\n&#13;\n				&lt;/div&gt; &lt;!-- /#accordion2 --&gt;&#13;\n				&lt;div class=\"title-blue-panel\" id=\"title_accordion3\"&gt;&#13;\n					&lt;h2 class=\"hidden-xs\"&gt;About Borrowing Items &lt;/h2&gt;&#13;\n					&lt;h2 class=\"visible-xs\"&gt;About Borrowing &lt;br&gt;Items &lt;/h2&gt;&#13;\n				&lt;/div&gt;	&#13;\n				&#13;\n				&lt;div class=\"panel-group\" id=\"accordion3\" role=\"tablist\" aria-multiselectable=\"true\"&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading20\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse20\" aria-expanded=\"false\" aria-controls=\"collapse20\"&gt;&#13;\n					        What do I do if someone rates me poorly and I want to respond to that or to defend myself?&#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse20\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"heading20\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt; &lt;!-- panel panel-default --&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading21\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse21\" aria-expanded=\"false\" aria-controls=\"collapse21\"&gt;&#13;\n					      How do I know that this is safe for me to use my credit card to pay for something?&#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse21\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading21\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading22\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse22\" aria-expanded=\"false\" aria-controls=\"collapse22\"&gt;&#13;\n					      Do you collect a deposit amount on the item I want to rent?&#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse22\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading22\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					      It is up to the person who is lending an item as to whether or not they will require a deposit.  For expensive items, this is a prudent thing to do , and typically, the deposit can be double the rental amount, or 125% of the rental amount.   The deposit is usually NOT the market value of the item&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading23\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse23\" aria-expanded=\"false\" aria-controls=\"collapse23\"&gt;&#13;\n					      Do I have to go pick up the item personally?  What if it is located very far from where I live or work?&#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse23\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading23\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ullam ex est expedita minima unde sint, delectus, nam totam adipisci cupiditate magnam numquam vero beatae natus atque rerum explicabo veritatis vel.&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n&#13;\n&#13;\n					  &lt;div class=\"panel panel-default\"&gt;&#13;\n					    &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading24\"&gt;&#13;\n					      &lt;h4 class=\"panel-title\"&gt;&#13;\n					        &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse24\" aria-expanded=\"false\" aria-controls=\"collapse24\"&gt;&#13;\n					       What if I need to keep something for a longer period of time than I initially agreed upon?  Can I extend the time?&#13;\n					        &lt;/a&gt;&#13;\n					      &lt;/h4&gt;&#13;\n					    &lt;/div&gt;&#13;\n					    &lt;div id=\"collapse24\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading24\"&gt;&#13;\n					      &lt;div class=\"panel-body\"&gt;&#13;\n					        This type of timing problem may occur.  There are two things you MUST do if you want to extend a rental:  1.  check the calendar of availability for the item to make sure that no one has claimed the right to use the item on your extension days.  2.  Message the lender / call the lender and ask for permission to adjust the duration of the rental, understanding that the rental fee will likely go up to cover the extended period of time.  Ok the new terms, pay for the extra days, and return the item when you say you will.&#13;\n					      &lt;/div&gt;&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n&#13;\n&#13;\n				&lt;/div&gt; &lt;!-- /#accordion3 --&gt;&#13;\n				&lt;div class=\"title-blue-panel\" id=\"title_accordion4\"&gt;&#13;\n					&lt;h2 class=\"hidden-xs\"&gt;Insurance Coverage questions&lt;/h2&gt;&#13;\n					&lt;h2 class=\"visible-xs\"&gt;Insurance Coverage &lt;br&gt;questions&lt;/h2&gt;&#13;\n&#13;\n				&lt;/div&gt;	&#13;\n&#13;\n				&lt;div class=\"panel-group\" id=\"accordion4\" role=\"tablist\" aria-multiselectable=\"false\"&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading26\"&gt;&#13;\n					    &lt;h4 class=\"panel-title\"&gt;&#13;\n					      &lt;a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse26\" aria-expanded=\"false\" aria-controls=\"collapse26\"&gt;&#13;\n					       Does my homeowners insurance cover the items I am going to rent?  Or, does my credit card cover any items?&#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n					  &lt;/div&gt;&#13;\n					  &lt;div id=\"collapse26\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"heading26\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio ducimus suscipit quaerat autem sit! Culpa autem voluptate soluta, recusandae veritatis, omnis libero, sit dolorem perspiciatis earum amet consectetur modi maiores?&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt; &lt;!-- panel panel-default --&gt;&#13;\n					&lt;div class=\"panel panel-default\"&gt;&#13;\n					  &#13;\n					   &lt;div class=\"panel-heading\" role=\"tab\" id=\"heading27\"&gt;&#13;\n					  &lt;h4 class=\"panel-title\" &gt;&#13;\n					      &lt;a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse27\" aria-expanded=\"true\" aria-controls=\"collapse27\"&gt;&#13;\n					      Does kulashare have insurance coverage for the lending activity that is occurring?  If so, how does that work?&#13;\n					      &lt;/a&gt;&#13;\n					    &lt;/h4&gt;&#13;\n&#13;\n					  &lt;/div&gt;&#13;\n						&#13;\n					  &lt;div id=\"collapse27\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading27\"&gt;&#13;\n					    &lt;div class=\"panel-body\"&gt;&#13;\n					      Insurance -- here is something you should ask your credit card company about.  Ask your homeowners insurer about  x, y,  z.&#13;\n					    &lt;/div&gt;&#13;\n					  &lt;/div&gt;&#13;\n					&lt;/div&gt;&lt;!-- panel panel-default --&gt;&#13;\n&#13;\n&#13;\n				&lt;/div&gt; &lt;!-- /#accordion4 --&gt;	&#13;\n				&#13;\n				&#13;\n			&lt;/div&gt; &lt;!-- /.in-sec --&gt;&#13;\n		&lt;/div&gt; &lt;!-- /.in-sec8 --&gt;&#13;\n		&lt;div class=\"in-sec8\" id=\"insec8-2\"&gt;&#13;\n			&lt;div class=\"in-sec\"&gt;&#13;\n					&lt;div class=\"cont-li\"&gt;&#13;\n						&lt;div class=\"col-sm-3\" id=\"img-left\"&gt;&#13;\n							&lt;img src=\"../img/li_circ1.png\" alt=\"\" class=\"img-responsive\"&gt;&#13;\n						&lt;/div&gt;&#13;\n						&lt;div class=\"col-sm-9\" id=\"text-li\"&gt;&#13;\n							&lt;p id=\"p1\"&gt;Lender Guarantee&lt;/p&gt;&#13;\n							&lt;p id=\"p2\"&gt;  Your property is covered for up to &lt;/p&gt;&#13;\n							&lt;p&gt;&lt;a class=\"in-flink\" href=\"#\"&gt;Learn more about the Lender Protection Policies »&lt;/a&gt;&lt;/p&gt;&#13;\n						&lt;/div&gt;	&#13;\n					&lt;/div&gt;&#13;\n					&lt;div class=\"cont-li \"&gt;&#13;\n						&lt;div class=\"col-sm-3\" id=\"img-left\"&gt;&#13;\n							&lt;img src=\"../img/li_circ2.png\" alt=\"\" class=\"img-responsive\"&gt;&#13;\n						&lt;/div&gt;&#13;\n						&lt;div class=\"col-sm-9\" id=\"text-li\"&gt;&#13;\n							&lt;p id=\"p1\"&gt;Check out our Help Center&lt;/p&gt;&#13;\n														&lt;p id=\"p2\"&gt;  Look through our HOW IT WORKS pages to learn more. &lt;/p&gt;&#13;\n														&lt;p&gt;&lt;a class=\"in-flink\" href=\"#\"&gt;Visit our FAQ pages »&lt;/a&gt;&lt;/p&gt;&#13;\n						&lt;/div&gt;	&#13;\n					&lt;/div&gt;&#13;\n					&lt;div class=\"cont-li\"&gt;&#13;\n						&lt;div class=\"col-sm-3\" id=\"img-left\"&gt;&#13;\n							&lt;img src=\"../img/li_circ3.png\" alt=\"\" class=\"img-responsive\"&gt;&#13;\n						&lt;/div&gt;&#13;\n						&lt;div class=\"col-sm-9\" id=\"text-li\"&gt;&#13;\n							&lt;p id=\"p1\"&gt;Visit the Safety Portal&lt;/p&gt;&#13;\n														&lt;p id=\"p2\"&gt;  Your safety is our number one concern.&lt;/p&gt;&#13;\n														&lt;p&gt;&lt;a class=\"in-flink\" href=\"#\"&gt;Learn more at our Safety First ______»&lt;/a&gt;&lt;/p&gt;&#13;\n						&lt;/div&gt;	&#13;\n					&lt;/div&gt;&#13;\n					&lt;p style=\"margin-left:0;\"&gt;&#13;\n						Impact meter/counter to indicate how &lt;a href=\"#\" class=\"in-flink\"&gt;kulashare&amp;trade;&lt;/a&gt; is benefiting Social Responsibility. &lt;br&gt;&#13;\nNon-profit/Charitable organizations borrowing items from lenders who donate them (they get tax benefit).&#13;\n					&lt;/p&gt;&#13;\n			&lt;/div&gt;&#13;\n		&lt;/div&gt;</sv:value></sv:property><sv:property sv:name=\"tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"extras\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"publishable\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n',NULL,3,1);
/*!40000 ALTER TABLE `phpcr_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes_references`
--

DROP TABLE IF EXISTS `phpcr_nodes_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes_references` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F3BF7E1158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes_references`
--

LOCK TABLES `phpcr_nodes_references` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes_references` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_nodes_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes_weakreferences`
--

DROP TABLE IF EXISTS `phpcr_nodes_weakreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes_weakreferences` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F0E4F6FA158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes_weakreferences`
--

LOCK TABLES `phpcr_nodes_weakreferences` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes_weakreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_nodes_weakreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_childs`
--

DROP TABLE IF EXISTS `phpcr_type_childs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_childs` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `primary_types` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_childs`
--

LOCK TABLES `phpcr_type_childs` WRITE;
/*!40000 ALTER TABLE `phpcr_type_childs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_type_childs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_nodes`
--

DROP TABLE IF EXISTS `phpcr_type_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_nodes` (
  `node_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supertypes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_abstract` tinyint(1) NOT NULL,
  `is_mixin` tinyint(1) NOT NULL,
  `queryable` tinyint(1) NOT NULL,
  `orderable_child_nodes` tinyint(1) NOT NULL,
  `primary_item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`),
  UNIQUE KEY `UNIQ_34B0A8095E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_nodes`
--

LOCK TABLES `phpcr_type_nodes` WRITE;
/*!40000 ALTER TABLE `phpcr_type_nodes` DISABLE KEYS */;
INSERT INTO `phpcr_type_nodes` VALUES (1,'phpcr:managed','nt:base',0,1,1,0,NULL),(2,'cmf:mediaNode','nt:hierarchyNode cmf:media',0,0,1,0,NULL),(3,'cmf:media','nt:base',0,1,1,0,NULL),(4,'cmf:image','cmf:media',0,1,1,0,NULL);
/*!40000 ALTER TABLE `phpcr_type_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_props`
--

DROP TABLE IF EXISTS `phpcr_type_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_props` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `fulltext_searchable` tinyint(1) NOT NULL,
  `query_orderable` tinyint(1) NOT NULL,
  `required_type` int(11) NOT NULL,
  `query_operators` int(11) NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_props`
--

LOCK TABLES `phpcr_type_props` WRITE;
/*!40000 ALTER TABLE `phpcr_type_props` DISABLE KEYS */;
INSERT INTO `phpcr_type_props` VALUES (1,'phpcr:class',0,0,0,1,0,1,1,1,0,NULL),(1,'phpcr:classparents',0,0,0,1,1,1,1,1,0,NULL),(3,'authorName',0,0,0,1,0,1,1,1,0,NULL),(3,'copyright',0,0,0,1,0,1,1,1,0,NULL),(3,'description',0,0,0,1,0,1,1,1,0,NULL),(3,'metadata',0,0,0,1,0,1,1,1,0,NULL),(3,'metadataKeys',0,0,0,1,0,1,1,1,0,NULL),(4,'height',0,0,1,1,0,1,1,3,0,NULL),(4,'width',0,0,1,1,0,1,1,3,0,NULL);
/*!40000 ALTER TABLE `phpcr_type_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_workspaces`
--

DROP TABLE IF EXISTS `phpcr_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_workspaces` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_workspaces`
--

LOCK TABLES `phpcr_workspaces` WRITE;
/*!40000 ALTER TABLE `phpcr_workspaces` DISABLE KEYS */;
INSERT INTO `phpcr_workspaces` VALUES ('default');
/*!40000 ALTER TABLE `phpcr_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` VALUES (1,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(2,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(3,1,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(4,1,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(5,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(6,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(7,NULL,'test','test','3424325069','alberdi 4321','test','test','3000','2015-12-07 21:55:47','2015-12-07 21:55:48','',NULL),(8,NULL,'test','test','3424325069','alberdi 4321','test','test','3000','2015-12-07 21:55:47','2015-12-07 21:55:48','',NULL),(9,8,'test','test','3424325069','alberdi 4321','test','test','3000','2015-12-07 21:55:47','2015-12-07 21:55:48','',NULL),(10,8,'test','test','3424325069','alberdi 4321','test','test','3000','2015-12-07 21:55:47','2015-12-07 21:55:48','',NULL),(11,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(12,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(13,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(14,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(15,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(16,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(17,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(18,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(19,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(20,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(21,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(22,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(23,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(24,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(25,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(26,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(27,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(28,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(29,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(30,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(31,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(32,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(33,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(34,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(35,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(36,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(37,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(38,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(39,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(40,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(41,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(42,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(43,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(44,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(45,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(46,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(47,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(48,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(49,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(50,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(51,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(52,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(53,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(54,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(55,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(56,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(57,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(58,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(59,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(60,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(61,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(62,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(63,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL),(64,NULL,'Test','Test','45654654','Test 123','test','test','3000','2015-11-18 21:34:02','2015-11-18 21:34:03','',NULL);
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_id` int(11) DEFAULT NULL,
  `origin_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
INSERT INTO `sylius_adjustment` VALUES (1,141,NULL,'shipping',10000,0,0,NULL,NULL,'2015-12-08 01:32:54','2015-12-08 01:32:54',NULL,''),(2,141,NULL,'payment',0,0,0,NULL,NULL,'2015-12-08 01:33:04','2015-12-08 01:33:04',NULL,''),(3,166,NULL,'shipping',10000,0,0,NULL,NULL,'2015-12-31 02:43:39','2015-12-31 02:43:39',NULL,''),(4,166,NULL,'payment',0,0,0,NULL,NULL,'2015-12-31 02:43:56','2015-12-31 02:43:56',NULL,''),(5,208,NULL,'shipping',10000,0,0,NULL,NULL,'2016-01-22 14:57:28','2016-01-22 14:57:28',NULL,''),(6,208,NULL,'payment',0,0,0,NULL,NULL,'2016-01-22 14:57:38','2016-01-22 14:57:38',NULL,''),(7,211,NULL,'shipping',10000,0,0,NULL,NULL,'2016-01-22 17:48:14','2016-01-22 17:48:14',NULL,''),(8,226,NULL,'shipping',10000,0,0,NULL,NULL,'2016-01-23 16:13:55','2016-01-23 16:13:55',NULL,''),(9,243,NULL,'shipping',10000,0,0,NULL,NULL,'2016-01-25 03:00:43','2016-01-25 03:00:43',NULL,''),(10,243,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 03:00:51','2016-01-25 03:00:51',NULL,''),(11,245,NULL,'shipping',10000,0,0,NULL,NULL,'2016-01-25 03:04:54','2016-01-25 03:04:54',NULL,''),(13,245,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 03:08:00','2016-01-25 03:08:00',NULL,''),(14,245,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 03:08:00','2016-01-25 03:08:00',NULL,''),(15,246,NULL,'shipping',10000,0,0,NULL,NULL,'2016-01-25 14:10:23','2016-01-25 14:10:23',NULL,''),(19,246,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 15:34:38','2016-01-25 15:34:38',NULL,''),(20,246,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 15:34:38','2016-01-25 15:34:38',NULL,''),(21,249,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 15:54:24','2016-01-25 15:54:24',NULL,''),(22,250,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 15:58:08','2016-01-25 15:58:08',NULL,''),(25,254,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 16:44:59','2016-01-25 16:44:59',NULL,''),(26,256,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 16:53:44','2016-01-25 16:53:44',NULL,''),(30,251,NULL,'payment',0,0,0,NULL,NULL,'2016-01-25 17:45:01','2016-01-25 17:45:01',NULL,''),(31,272,NULL,'shipping',10000,0,0,NULL,NULL,'2016-01-26 21:18:02','2016-01-26 21:18:02',NULL,''),(41,277,NULL,'payment',125,0,0,NULL,NULL,'2016-01-26 23:52:05','2016-01-26 23:52:05',NULL,''),(42,277,NULL,'payment',127,0,0,NULL,NULL,'2016-01-26 23:52:05','2016-01-26 23:52:05',NULL,''),(43,277,NULL,'payment',0,0,0,NULL,NULL,'2016-01-26 23:52:05','2016-01-26 23:52:05',NULL,''),(59,281,NULL,'payment',1,0,0,NULL,NULL,'2016-01-27 17:05:49','2016-01-27 17:05:49',NULL,''),(60,281,NULL,'payment',1,0,0,NULL,NULL,'2016-01-27 17:05:49','2016-01-27 17:05:49',NULL,''),(61,281,NULL,'payment',1,0,0,NULL,NULL,'2016-01-27 17:05:49','2016-01-27 17:05:49',NULL,''),(62,281,NULL,'payment',1,0,0,NULL,NULL,'2016-01-27 17:05:49','2016-01-27 17:05:49',NULL,''),(63,281,NULL,'payment',1,0,0,NULL,NULL,'2016-01-27 17:05:49','2016-01-27 17:05:49',NULL,''),(64,281,NULL,'payment',0,0,0,NULL,NULL,'2016-01-27 17:05:49','2016-01-27 17:05:49',NULL,''),(75,282,NULL,'payment',1,0,0,NULL,NULL,'2016-01-27 22:40:15','2016-01-27 22:40:15',NULL,''),(76,282,NULL,'payment',1,0,0,NULL,NULL,'2016-01-27 22:40:15','2016-01-27 22:40:15',NULL,''),(77,282,NULL,'payment',1,0,0,NULL,NULL,'2016-01-27 22:40:15','2016-01-27 22:40:15',NULL,''),(78,282,NULL,'payment',0,0,0,NULL,NULL,'2016-01-27 22:40:15','2016-01-27 22:40:15',NULL,''),(89,283,NULL,'payment',1,0,0,NULL,NULL,'2016-01-28 01:42:43','2016-01-28 01:42:43',NULL,''),(90,283,NULL,'payment',1,0,0,NULL,NULL,'2016-01-28 01:42:43','2016-01-28 01:42:43',NULL,''),(91,283,NULL,'payment',1,0,0,NULL,NULL,'2016-01-28 01:42:43','2016-01-28 01:42:43',NULL,''),(92,283,NULL,'payment',1,0,0,NULL,NULL,'2016-01-28 01:42:43','2016-01-28 01:42:43',NULL,''),(93,283,NULL,'payment',0,0,0,NULL,NULL,'2016-01-28 01:42:43','2016-01-28 01:42:43',NULL,''),(94,286,NULL,'payment',0,0,0,NULL,NULL,'2016-01-28 23:52:54','2016-01-28 23:52:54',NULL,''),(95,307,NULL,'payment',0,0,0,NULL,NULL,'2016-02-08 20:52:48','2016-02-08 20:52:48',NULL,''),(97,308,NULL,'payment',0,0,0,NULL,NULL,'2016-02-08 21:04:54','2016-02-08 21:04:54',NULL,''),(100,309,NULL,'payment',0,0,0,NULL,NULL,'2016-02-08 21:57:30','2016-02-08 21:57:30',NULL,'');
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_access_token`
--

DROP TABLE IF EXISTS `sylius_api_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7D83AA7F5F37A13B` (`token`),
  KEY `IDX_7D83AA7F19EB6921` (`client_id`),
  KEY `IDX_7D83AA7FA76ED395` (`user_id`),
  CONSTRAINT `FK_7D83AA7F19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_7D83AA7FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_access_token`
--

LOCK TABLES `sylius_api_access_token` WRITE;
/*!40000 ALTER TABLE `sylius_api_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_api_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C84041795F37A13B` (`token`),
  KEY `IDX_C840417919EB6921` (`client_id`),
  KEY `IDX_C8404179A76ED395` (`user_id`),
  CONSTRAINT `FK_C840417919EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_C8404179A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_auth_code`
--

LOCK TABLES `sylius_api_auth_code` WRITE;
/*!40000 ALTER TABLE `sylius_api_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_client`
--

DROP TABLE IF EXISTS `sylius_api_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_client`
--

LOCK TABLES `sylius_api_client` WRITE;
/*!40000 ALTER TABLE `sylius_api_client` DISABLE KEYS */;
INSERT INTO `sylius_api_client` VALUES (1,'48xf3ncj6v284w88wos4sc8g48csc480og8osw4co084s4c480','a:0:{}','4vneuudfe4o4404w4oc0gw00ckk8c80kgcwwo0kgckg8gg44cw','a:1:{i:0;s:18:\"authorization_code\";}');
/*!40000 ALTER TABLE `sylius_api_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_api_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_445785255F37A13B` (`token`),
  KEY `IDX_4457852519EB6921` (`client_id`),
  KEY `IDX_44578525A76ED395` (`user_id`),
  CONSTRAINT `FK_4457852519EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_44578525A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_refresh_token`
--

LOCK TABLES `sylius_api_refresh_token` WRITE;
/*!40000 ALTER TABLE `sylius_api_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_association_type`
--

DROP TABLE IF EXISTS `sylius_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6237029277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_association_type`
--

LOCK TABLES `sylius_association_type` WRITE;
/*!40000 ALTER TABLE `sylius_association_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_association_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `default_locale_id` int(11) DEFAULT NULL,
  `default_currency_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  KEY `IDX_16C8119E59027487` (`theme_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119EECD792C0` (`default_currency_id`),
  CONSTRAINT `FK_16C8119E59027487` FOREIGN KEY (`theme_id`) REFERENCES `sylius_theme` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EECD792C0` FOREIGN KEY (`default_currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel`
--

LOCK TABLES `sylius_channel` WRITE;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` VALUES (1,'DEFAULT','DEFAULT',NULL,NULL,1,NULL,'2015-09-05 22:00:40','2016-01-28 22:21:58',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_currencies`
--

LOCK TABLES `sylius_channel_currencies` WRITE;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
INSERT INTO `sylius_channel_currencies` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_locales`
--

LOCK TABLES `sylius_channel_locales` WRITE;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
INSERT INTO `sylius_channel_locales` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_payment_methods`
--

DROP TABLE IF EXISTS `sylius_channel_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_payment_methods` (
  `channel_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`payment_method_id`),
  KEY `IDX_B0C0002B72F5A1AA` (`channel_id`),
  KEY `IDX_B0C0002B5AA1164F` (`payment_method_id`),
  CONSTRAINT `FK_B0C0002B5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B0C0002B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_payment_methods`
--

LOCK TABLES `sylius_channel_payment_methods` WRITE;
/*!40000 ALTER TABLE `sylius_channel_payment_methods` DISABLE KEYS */;
INSERT INTO `sylius_channel_payment_methods` VALUES (1,7);
/*!40000 ALTER TABLE `sylius_channel_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_shipping_methods`
--

DROP TABLE IF EXISTS `sylius_channel_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_shipping_methods` (
  `channel_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`shipping_method_id`),
  KEY `IDX_6858B18E72F5A1AA` (`channel_id`),
  KEY `IDX_6858B18E5F7D6850` (`shipping_method_id`),
  CONSTRAINT `FK_6858B18E5F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6858B18E72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_shipping_methods`
--

LOCK TABLES `sylius_channel_shipping_methods` WRITE;
/*!40000 ALTER TABLE `sylius_channel_shipping_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_taxonomy`
--

DROP TABLE IF EXISTS `sylius_channel_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_taxonomy` (
  `channel_id` int(11) NOT NULL,
  `taxonomy_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`taxonomy_id`),
  KEY `IDX_4BE9652E72F5A1AA` (`channel_id`),
  KEY `IDX_4BE9652E9557E6F6` (`taxonomy_id`),
  CONSTRAINT `FK_4BE9652E72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4BE9652E9557E6F6` FOREIGN KEY (`taxonomy_id`) REFERENCES `sylius_taxonomy` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_taxonomy`
--

LOCK TABLES `sylius_channel_taxonomy` WRITE;
/*!40000 ALTER TABLE `sylius_channel_taxonomy` DISABLE KEYS */;
INSERT INTO `sylius_channel_taxonomy` VALUES (1,4);
/*!40000 ALTER TABLE `sylius_channel_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_contact_request`
--

DROP TABLE IF EXISTS `sylius_contact_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_contact_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8B0BBF201F55203D` (`topic_id`),
  CONSTRAINT `FK_8B0BBF201F55203D` FOREIGN KEY (`topic_id`) REFERENCES `sylius_contact_topic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_contact_request`
--

LOCK TABLES `sylius_contact_request` WRITE;
/*!40000 ALTER TABLE `sylius_contact_request` DISABLE KEYS */;
INSERT INTO `sylius_contact_request` VALUES (1,1,'test','test','vazquez.santafe@gmail.com','NO ITEM','2016-01-25 14:35:17','2016-01-25 14:35:18');
/*!40000 ALTER TABLE `sylius_contact_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_contact_topic`
--

DROP TABLE IF EXISTS `sylius_contact_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_contact_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_contact_topic`
--

LOCK TABLES `sylius_contact_topic` WRITE;
/*!40000 ALTER TABLE `sylius_contact_topic` DISABLE KEYS */;
INSERT INTO `sylius_contact_topic` VALUES (1);
/*!40000 ALTER TABLE `sylius_contact_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_contact_topic_translation`
--

DROP TABLE IF EXISTS `sylius_contact_topic_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_contact_topic_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_contact_topic_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_6681216F2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_6681216F2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_contact_topic` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_contact_topic_translation`
--

LOCK TABLES `sylius_contact_topic_translation` WRITE;
/*!40000 ALTER TABLE `sylius_contact_topic_translation` DISABLE KEYS */;
INSERT INTO `sylius_contact_topic_translation` VALUES (1,1,'No received Item','en_US');
/*!40000 ALTER TABLE `sylius_contact_topic_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_country`
--

LOCK TABLES `sylius_country` WRITE;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
INSERT INTO `sylius_country` VALUES (1,1,'1'),(2,1,''),(3,1,'US');
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_credit_card`
--

DROP TABLE IF EXISTS `sylius_credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_credit_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardholder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_month` int(11) DEFAULT NULL,
  `expiry_year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_credit_card`
--

LOCK TABLES `sylius_credit_card` WRITE;
/*!40000 ALTER TABLE `sylius_credit_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` decimal(10,5) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `base` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_currency`
--

LOCK TABLES `sylius_currency` WRITE;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` VALUES (1,'USD',1.00000,1,'2015-09-05 22:00:14','2015-09-05 22:00:14',0);
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billing_address_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_Street_Address_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_on_lead` int(11) DEFAULT NULL,
  `notify_on_sale` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E679D0C0E4` (`billing_address_id`),
  UNIQUE KEY `UNIQ_7E82D5E64D4CFF2B` (`shipping_address_id`),
  CONSTRAINT `FK_7E82D5E64D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E679D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (1,3,4,'kulashare@dev.com','kulashare@dev.com','kulashare','dev','1986-11-19 00:00:00','m','2015-09-05 22:00:45','2016-01-22 08:07:16',NULL,'5493424325069','Alberdi 4321','Al','Santa Fe','Santa Fe','3000',0,0,'Argentina',NULL),(2,NULL,NULL,'cuco@a.com','cuco@a.com','cuco','cuco',NULL,'u','2015-09-05 23:08:28','2015-09-05 23:08:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,'cuco1@a.com','cuco1@a.com','cuco1','cuco1',NULL,'u','2015-09-09 03:06:04','2015-09-09 03:06:07',NULL,'123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,'cuco2@a.com','cuco2@a.com','cuco2','cuco2',NULL,'u','2015-09-09 03:21:35','2015-09-09 03:21:36',NULL,'231231',NULL,'asd asd  asd as d  asdasd',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,'cuco3@a.com','cuco3@a.com','cuco3','cuco3',NULL,'u','2015-09-09 03:42:42','2015-09-09 03:42:43',NULL,'123123','as asd asda sda','asda sd asdasd asd','asd','asd','12312',1,1,'asd',NULL),(6,NULL,NULL,'cuco4@a.com','cuco4@a.com','cuco4','cuco4',NULL,'m','2015-09-10 02:53:36','2015-09-16 02:10:20',NULL,'881231236','18 de julio 962 apto 402','18 de julio apto 402','aas','Ca- California','11000',1,1,'sdasdasd',NULL),(7,NULL,NULL,'yaanman@gmail.com','yaanman@gmail.com','Yaan','Gulledge',NULL,'u','2015-10-22 19:30:17','2015-10-22 19:30:18',NULL,'7076213273','38 Miller Avenue','Suite 153','Mill Valley','CA','94941',1,1,'United States',NULL),(8,9,10,'user.test@test.com','user.test@test.com','Test','Test',NULL,'u','2015-12-07 20:59:46','2015-12-19 23:05:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,'germansantafe@gmail.com','germansantafe@gmail.com','Test','Test',NULL,'u','2016-01-25 01:42:34','2016-01-25 01:42:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,'inriel@enfusionize.com','inriel@enfusionize.com','Inriel','romero',NULL,'u','2016-01-25 16:20:14','2016-01-25 16:20:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,'rafix@saralabs.com','rafix@saralabs.com','Rafael','Ferro',NULL,'u','2016-03-04 19:46:30','2016-03-04 19:46:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer_group` (
  `customer_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`,`group_id`),
  KEY `IDX_7FCF9B059395C3F3` (`customer_id`),
  KEY `IDX_7FCF9B05FE54D947` (`group_id`),
  CONSTRAINT `FK_7FCF9B059395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_7FCF9B05FE54D947` FOREIGN KEY (`group_id`) REFERENCES `sylius_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer_group`
--

LOCK TABLES `sylius_customer_group` WRITE;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_email`
--

DROP TABLE IF EXISTS `sylius_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_732D4E1577153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_email`
--

LOCK TABLES `sylius_email` WRITE;
/*!40000 ALTER TABLE `sylius_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_gateway_config`
--

LOCK TABLES `sylius_gateway_config` WRITE;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_group`
--

DROP TABLE IF EXISTS `sylius_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_group`
--

LOCK TABLES `sylius_group` WRITE;
/*!40000 ALTER TABLE `sylius_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_inventory_unit`
--

DROP TABLE IF EXISTS `sylius_inventory_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_inventory_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockable_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `inventory_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4A276986FBE8234` (`stockable_id`),
  KEY `IDX_4A276986E415FB15` (`order_item_id`),
  KEY `IDX_4A2769867BE036FC` (`shipment_id`),
  CONSTRAINT `FK_4A2769867BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_4A276986E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`),
  CONSTRAINT `FK_4A276986FBE8234` FOREIGN KEY (`stockable_id`) REFERENCES `sylius_product_variant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_inventory_unit`
--

LOCK TABLES `sylius_inventory_unit` WRITE;
/*!40000 ALTER TABLE `sylius_inventory_unit` DISABLE KEYS */;
INSERT INTO `sylius_inventory_unit` VALUES (1,34,1,NULL,'checkout','2015-11-18 21:31:38','2015-11-18 21:31:38','checkout'),(2,34,1,NULL,'checkout','2015-11-18 22:05:51','2015-11-18 22:05:51','checkout'),(3,34,2,NULL,'checkout','2015-11-19 21:49:35','2015-11-19 21:49:35','checkout'),(4,34,3,1,'onhold','2015-12-07 21:54:26','2015-12-08 01:33:19','onhold'),(5,34,4,NULL,'checkout','2015-12-08 01:38:50','2015-12-08 01:38:50','checkout'),(6,34,5,NULL,'checkout','2015-12-25 02:16:48','2015-12-25 02:16:48','checkout'),(7,34,5,NULL,'checkout','2015-12-30 01:53:34','2015-12-30 01:53:34','checkout'),(8,34,6,2,'checkout','2015-12-31 02:41:21','2015-12-31 02:43:39','checkout'),(9,34,7,NULL,'checkout','2016-01-04 18:54:28','2016-01-04 18:54:28','checkout'),(10,34,8,NULL,'checkout','2016-01-06 20:52:02','2016-01-06 20:52:02','checkout'),(11,34,9,3,'checkout','2016-01-22 14:55:44','2016-01-22 14:57:28','checkout'),(12,34,10,4,'checkout','2016-01-22 17:43:36','2016-01-22 17:48:14','checkout'),(13,34,11,NULL,'checkout','2016-01-22 17:51:02','2016-01-22 17:51:02','checkout'),(14,34,10,NULL,'checkout','2016-01-22 18:08:55','2016-01-22 18:08:55','checkout'),(15,34,12,NULL,'checkout','2016-01-22 18:11:46','2016-01-22 18:11:46','checkout'),(16,34,13,NULL,'checkout','2016-01-23 10:28:08','2016-01-23 10:28:08','checkout'),(17,34,14,5,'checkout','2016-01-23 16:12:04','2016-01-23 16:13:55','checkout'),(18,34,15,NULL,'checkout','2016-01-24 22:55:14','2016-01-24 22:55:14','checkout'),(19,43,16,6,'onhold','2016-01-25 02:59:39','2016-01-25 03:01:05','onhold'),(20,43,16,NULL,'onhold','2016-01-25 03:02:52','2016-01-25 03:02:52','checkout'),(21,43,17,7,'onhold','2016-01-25 03:04:30','2016-01-25 03:05:20','onhold'),(24,43,19,NULL,'onhold','2016-01-25 14:26:22','2016-01-25 14:26:22','checkout'),(25,43,19,NULL,'onhold','2016-01-25 14:45:47','2016-01-25 14:45:47','checkout'),(26,43,20,NULL,'onhold','2016-01-25 15:41:45','2016-01-25 15:54:32','onhold'),(27,43,21,NULL,'sold','2016-01-25 15:57:38','2016-01-25 15:58:23','onhold'),(29,43,23,NULL,'onhold','2016-01-25 16:29:00','2016-01-25 16:45:53','onhold'),(30,43,23,NULL,'onhold','2016-01-25 16:35:48','2016-01-25 16:45:53','onhold'),(31,43,23,NULL,'onhold','2016-01-25 16:37:05','2016-01-25 16:45:53','onhold'),(33,43,24,NULL,'checkout','2016-01-25 16:53:10','2016-01-25 16:53:10','checkout'),(34,43,24,NULL,'checkout','2016-01-25 16:53:15','2016-01-25 16:53:15','checkout'),(41,52,28,NULL,'onhold','2016-01-25 21:44:20','2016-01-25 21:44:20','checkout'),(42,43,29,NULL,'checkout','2016-01-25 23:52:07','2016-01-25 23:52:07','checkout'),(43,43,30,NULL,'checkout','2016-01-26 03:12:05','2016-01-26 03:12:05','checkout'),(44,43,31,NULL,'checkout','2016-01-26 07:33:40','2016-01-26 07:33:40','checkout'),(45,52,32,NULL,'checkout','2016-01-26 07:34:42','2016-01-26 07:34:42','checkout'),(48,43,35,NULL,'checkout','2016-01-26 21:03:50','2016-01-26 21:03:50','checkout'),(49,43,36,9,'checkout','2016-01-26 21:17:00','2016-01-26 21:18:02','checkout'),(50,52,37,NULL,'checkout','2016-01-26 21:35:40','2016-01-26 21:35:40','checkout'),(52,43,39,NULL,'checkout','2016-01-26 22:34:49','2016-01-26 22:34:49','checkout'),(53,43,40,NULL,'backordered','2016-01-26 22:37:43','2016-01-26 23:52:35','onhold'),(55,43,42,NULL,'backordered','2016-01-27 16:43:44','2016-01-27 17:06:04','onhold'),(56,43,43,NULL,'backordered','2016-01-27 21:59:43','2016-01-28 00:50:22','onhold'),(57,43,44,NULL,'onhold','2016-01-28 01:01:12','2016-01-28 01:01:56','onhold'),(58,43,44,NULL,'onhold','2016-01-28 02:04:06','2016-01-28 02:04:06','checkout'),(59,43,45,NULL,'backordered','2016-01-28 22:20:18','2016-01-28 23:53:11','onhold'),(60,43,46,NULL,'backordered','2016-02-08 20:51:16','2016-02-08 20:53:20','onhold'),(61,43,47,NULL,'onhold','2016-02-08 20:59:41','2016-02-08 21:03:21','onhold'),(62,43,48,NULL,'onhold','2016-02-08 21:34:49','2016-02-08 21:36:04','onhold'),(63,43,49,NULL,'checkout','2016-02-09 15:41:42','2016-02-09 15:41:42','checkout'),(64,43,50,NULL,'checkout','2016-02-09 15:47:15','2016-02-09 15:47:15','checkout'),(65,43,50,NULL,'checkout','2016-02-09 16:13:12','2016-02-09 16:13:12','checkout'),(66,43,51,NULL,'checkout','2016-02-09 16:16:50','2016-02-09 16:16:50','checkout'),(67,43,51,NULL,'checkout','2016-02-09 16:20:20','2016-02-09 16:20:20','checkout'),(68,43,50,NULL,'checkout','2016-02-09 20:48:05','2016-02-09 20:48:05','checkout'),(69,43,52,NULL,'checkout','2016-02-09 20:58:08','2016-02-09 20:58:08','checkout'),(70,43,53,NULL,'checkout','2016-02-09 21:36:18','2016-02-09 21:36:18','checkout'),(71,43,53,NULL,'checkout','2016-02-09 22:16:28','2016-02-09 22:16:28','checkout'),(72,43,53,NULL,'checkout','2016-02-09 22:19:45','2016-02-09 22:19:45','checkout'),(73,43,53,NULL,'checkout','2016-02-09 22:25:54','2016-02-09 22:25:54','checkout'),(74,43,53,NULL,'checkout','2016-02-09 22:29:48','2016-02-09 22:29:48','checkout');
/*!40000 ALTER TABLE `sylius_inventory_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_locale`
--

LOCK TABLES `sylius_locale` WRITE;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` VALUES (1,'en_US',1,'2015-09-05 22:00:08','2015-09-05 22:00:08');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_metadata`
--

DROP TABLE IF EXISTS `sylius_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_metadata` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metadata` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_metadata`
--

LOCK TABLES `sylius_metadata` WRITE;
/*!40000 ALTER TABLE `sylius_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `additional_information` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F94D4CFF2B` (`shipping_address_id`),
  KEY `IDX_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` VALUES (1,NULL,NULL,NULL,2,NULL,'cart',NULL,0,0,0,'2015-09-05 23:08:32','2015-09-05 23:08:32',NULL,'2015-09-06 02:08:32','USD','cart','new','checkout',NULL,NULL,0.00000),(2,NULL,NULL,NULL,2,NULL,'cart',NULL,0,0,0,'2015-09-06 02:18:54','2015-09-06 02:18:55',NULL,'2015-09-06 05:18:54','USD','cart','new','checkout',NULL,NULL,0.00000),(3,NULL,NULL,NULL,2,NULL,'cart',NULL,0,0,0,'2015-09-07 00:45:21','2015-09-07 00:45:22',NULL,'2015-09-07 03:45:21','USD','cart','new','checkout',NULL,NULL,0.00000),(4,NULL,NULL,NULL,3,NULL,'cart',NULL,0,0,0,'2015-09-09 03:06:09','2015-09-09 03:06:09',NULL,'2015-09-09 06:06:09','USD','cart','new','checkout',NULL,NULL,0.00000),(5,NULL,NULL,NULL,4,NULL,'cart',NULL,0,0,0,'2015-09-09 03:21:37','2015-09-09 03:21:37',NULL,'2015-09-09 06:21:37','USD','cart','new','checkout',NULL,NULL,0.00000),(6,NULL,NULL,NULL,5,NULL,'cart',NULL,0,0,0,'2015-09-09 03:42:44','2015-09-09 03:42:44',NULL,'2015-09-09 06:42:44','USD','cart','new','checkout',NULL,NULL,0.00000),(7,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-10 02:53:40','2015-09-10 02:53:40',NULL,'2015-09-10 05:53:40','USD','cart','new','checkout',NULL,NULL,0.00000),(8,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-10 03:45:35','2015-09-10 03:45:35',NULL,'2015-09-10 06:45:35','USD','cart','new','checkout',NULL,NULL,0.00000),(9,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-10 03:48:49','2015-09-10 03:48:49',NULL,'2015-09-10 06:48:49','USD','cart','new','checkout',NULL,NULL,0.00000),(10,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-11 01:52:48','2015-09-11 01:52:49',NULL,'2015-09-11 04:52:48','USD','cart','new','checkout',NULL,NULL,0.00000),(11,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-11 02:05:57','2015-09-11 02:05:58',NULL,'2015-09-11 05:05:57','USD','cart','new','checkout',NULL,NULL,0.00000),(12,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-11 02:17:59','2015-09-11 02:17:59',NULL,'2015-09-11 05:17:59','USD','cart','new','checkout',NULL,NULL,0.00000),(13,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-11 04:29:12','2015-09-11 04:29:13',NULL,'2015-09-11 07:29:12','USD','cart','new','checkout',NULL,NULL,0.00000),(14,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-12 00:34:14','2015-09-12 00:34:14',NULL,'2015-09-12 03:34:14','USD','cart','new','checkout',NULL,NULL,0.00000),(15,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-12 01:29:47','2015-09-12 01:29:48',NULL,'2015-09-12 04:29:47','USD','cart','new','checkout',NULL,NULL,0.00000),(16,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-12 02:54:10','2015-09-12 02:54:11',NULL,'2015-09-12 05:54:10','USD','cart','new','checkout',NULL,NULL,0.00000),(17,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-12 23:43:02','2015-09-12 23:43:03',NULL,'2015-09-13 02:43:02','USD','cart','new','checkout',NULL,NULL,0.00000),(18,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-13 01:01:14','2015-09-13 01:01:14',NULL,'2015-09-13 04:01:14','USD','cart','new','checkout',NULL,NULL,0.00000),(19,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-13 20:23:14','2015-09-13 20:23:14',NULL,'2015-09-13 23:23:14','USD','cart','new','checkout',NULL,NULL,0.00000),(20,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-13 20:23:58','2015-09-13 20:23:58',NULL,'2015-09-13 23:23:58','USD','cart','new','checkout',NULL,NULL,0.00000),(21,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-13 22:45:07','2015-09-13 22:45:08',NULL,'2015-09-14 01:45:07','USD','cart','new','checkout',NULL,NULL,0.00000),(22,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-13 22:52:28','2015-09-13 22:52:29',NULL,'2015-09-14 01:52:28','USD','cart','new','checkout',NULL,NULL,0.00000),(23,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-13 23:10:19','2015-09-13 23:10:19',NULL,'2015-09-14 02:10:19','USD','cart','new','checkout',NULL,NULL,0.00000),(24,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-13 23:29:40','2015-09-13 23:29:41',NULL,'2015-09-14 02:29:40','USD','cart','new','checkout',NULL,NULL,0.00000),(25,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-13 23:31:47','2015-09-13 23:31:47',NULL,'2015-09-14 02:31:47','USD','cart','new','checkout',NULL,NULL,0.00000),(26,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-14 00:00:39','2015-09-14 00:00:39',NULL,'2015-09-14 03:00:39','USD','cart','new','checkout',NULL,NULL,0.00000),(27,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-14 00:35:27','2015-09-14 00:35:27',NULL,'2015-09-14 03:35:27','USD','cart','new','checkout',NULL,NULL,0.00000),(28,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-14 01:00:38','2015-09-14 01:00:39',NULL,'2015-09-14 04:00:38','USD','cart','new','checkout',NULL,NULL,0.00000),(29,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-15 03:41:32','2015-09-15 03:41:33',NULL,'2015-09-15 06:41:32','USD','cart','new','checkout',NULL,NULL,0.00000),(30,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-15 03:58:11','2015-09-15 03:58:12',NULL,'2015-09-15 06:58:11','USD','cart','new','checkout',NULL,NULL,0.00000),(31,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-16 03:25:43','2015-09-16 03:25:44',NULL,'2015-09-16 06:25:43','USD','cart','new','checkout',NULL,NULL,0.00000),(32,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-16 03:47:42','2015-09-16 03:47:42',NULL,'2015-09-16 06:47:42','USD','cart','new','checkout',NULL,NULL,0.00000),(33,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-18 01:23:10','2015-09-18 01:23:10',NULL,'2015-09-18 04:23:10','USD','cart','new','checkout',NULL,NULL,0.00000),(34,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-19 22:54:39','2015-09-19 22:54:40',NULL,'2015-09-20 01:54:39','USD','cart','new','checkout',NULL,NULL,0.00000),(35,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-19 23:51:45','2015-09-19 23:51:46',NULL,'2015-09-20 02:51:45','USD','cart','new','checkout',NULL,NULL,0.00000),(36,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-20 19:52:32','2015-09-20 19:52:32',NULL,'2015-09-20 22:52:32','USD','cart','new','checkout',NULL,NULL,0.00000),(37,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-21 00:18:05','2015-09-21 00:18:05',NULL,'2015-09-21 03:18:05','USD','cart','new','checkout',NULL,NULL,0.00000),(38,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-22 01:47:09','2015-09-22 01:47:10',NULL,'2015-09-22 04:47:09','USD','cart','new','checkout',NULL,NULL,0.00000),(39,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-22 01:54:27','2015-09-22 01:54:27',NULL,'2015-09-22 04:54:27','USD','cart','new','checkout',NULL,NULL,0.00000),(40,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-22 02:02:02','2015-09-22 02:02:02',NULL,'2015-09-22 05:02:02','USD','cart','new','checkout',NULL,NULL,0.00000),(41,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-22 02:07:51','2015-09-22 02:07:51',NULL,'2015-09-22 05:07:51','USD','cart','new','checkout',NULL,NULL,0.00000),(42,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-23 04:57:54','2015-09-23 04:57:54',NULL,'2015-09-23 07:57:54','USD','cart','new','checkout',NULL,NULL,0.00000),(43,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-23 05:00:36','2015-09-23 05:00:36',NULL,'2015-09-23 08:00:36','USD','cart','new','checkout',NULL,NULL,0.00000),(44,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-25 02:14:42','2015-09-25 02:14:43',NULL,'2015-09-25 05:14:42','USD','cart','new','checkout',NULL,NULL,0.00000),(45,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-25 02:17:35','2015-09-25 02:17:35',NULL,'2015-09-25 05:17:35','USD','cart','new','checkout',NULL,NULL,0.00000),(46,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-25 03:18:59','2015-09-25 03:18:59',NULL,'2015-09-25 06:18:59','USD','cart','new','checkout',NULL,NULL,0.00000),(47,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-26 04:30:54','2015-09-26 04:30:54',NULL,'2015-09-26 07:30:54','USD','cart','new','checkout',NULL,NULL,0.00000),(48,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-26 22:34:55','2015-09-26 22:34:55',NULL,'2015-09-27 01:34:55','USD','cart','new','checkout',NULL,NULL,0.00000),(49,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-26 23:54:59','2015-09-26 23:54:59',NULL,'2015-09-27 02:54:59','USD','cart','new','checkout',NULL,NULL,0.00000),(50,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-27 00:12:57','2015-09-27 00:12:58',NULL,'2015-09-27 03:12:57','USD','cart','new','checkout',NULL,NULL,0.00000),(51,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-27 19:44:20','2015-09-27 19:44:20',NULL,'2015-09-27 22:44:20','USD','cart','new','checkout',NULL,NULL,0.00000),(52,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-27 22:59:36','2015-09-27 22:59:36',NULL,'2015-09-28 01:59:36','USD','cart','new','checkout',NULL,NULL,0.00000),(53,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-27 23:03:00','2015-09-27 23:03:00',NULL,'2015-09-28 02:03:00','USD','cart','new','checkout',NULL,NULL,0.00000),(54,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-09-27 23:10:50','2015-09-27 23:10:50',NULL,'2015-09-28 02:10:50','USD','cart','new','checkout',NULL,NULL,0.00000),(55,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-27 23:16:08','2015-09-27 23:16:08',NULL,'2015-09-28 02:16:08','USD','cart','new','checkout',NULL,NULL,0.00000),(56,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-28 00:15:31','2015-09-28 00:15:31',NULL,'2015-09-28 03:15:31','USD','cart','new','checkout',NULL,NULL,0.00000),(57,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-28 00:17:57','2015-09-28 00:17:58',NULL,'2015-09-28 03:17:57','USD','cart','new','checkout',NULL,NULL,0.00000),(58,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-28 00:18:06','2015-09-28 00:18:07',NULL,'2015-09-28 03:18:06','USD','cart','new','checkout',NULL,NULL,0.00000),(59,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-28 00:19:22','2015-09-28 00:19:23',NULL,'2015-09-28 03:19:22','USD','cart','new','checkout',NULL,NULL,0.00000),(60,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-28 00:22:51','2015-09-28 00:22:52',NULL,'2015-09-28 03:22:51','USD','cart','new','checkout',NULL,NULL,0.00000),(61,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-28 00:27:15','2015-09-28 00:27:15',NULL,'2015-09-28 03:27:15','USD','cart','new','checkout',NULL,NULL,0.00000),(62,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-28 00:30:55','2015-09-28 00:30:55',NULL,'2015-09-28 03:30:55','USD','cart','new','checkout',NULL,NULL,0.00000),(63,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-09-29 02:48:49','2015-09-29 02:48:49',NULL,'2015-09-29 05:48:49','USD','cart','new','checkout',NULL,NULL,0.00000),(64,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-01 02:22:39','2015-10-01 02:22:40',NULL,'2015-10-01 05:22:39','USD','cart','new','checkout',NULL,NULL,0.00000),(65,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-01 02:41:01','2015-10-01 02:41:01',NULL,'2015-10-01 05:41:01','USD','cart','new','checkout',NULL,NULL,0.00000),(66,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-01 04:08:03','2015-10-01 04:08:04',NULL,'2015-10-01 07:08:03','USD','cart','new','checkout',NULL,NULL,0.00000),(67,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-01 04:21:39','2015-10-01 04:21:40',NULL,'2015-10-01 07:21:39','USD','cart','new','checkout',NULL,NULL,0.00000),(68,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-01 04:22:08','2015-10-01 04:22:09',NULL,'2015-10-01 07:22:08','USD','cart','new','checkout',NULL,NULL,0.00000),(69,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-01 04:22:56','2015-10-01 04:22:57',NULL,'2015-10-01 07:22:56','USD','cart','new','checkout',NULL,NULL,0.00000),(70,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-03 03:14:38','2015-10-03 03:14:39',NULL,'2015-10-03 06:14:38','USD','cart','new','checkout',NULL,NULL,0.00000),(71,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-03 22:21:06','2015-10-03 22:21:06',NULL,'2015-10-04 01:21:06','USD','cart','new','checkout',NULL,NULL,0.00000),(72,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-03 22:24:36','2015-10-03 22:24:36',NULL,'2015-10-04 01:24:36','USD','cart','new','checkout',NULL,NULL,0.00000),(73,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-03 22:35:45','2015-10-03 22:35:45',NULL,'2015-10-04 01:35:45','USD','cart','new','checkout',NULL,NULL,0.00000),(74,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-03 22:46:44','2015-10-03 22:46:45',NULL,'2015-10-04 01:46:44','USD','cart','new','checkout',NULL,NULL,0.00000),(75,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-03 22:50:41','2015-10-03 22:50:42',NULL,'2015-10-04 01:50:41','USD','cart','new','checkout',NULL,NULL,0.00000),(76,NULL,NULL,NULL,6,NULL,'cart',NULL,0,0,0,'2015-10-03 22:51:41','2015-10-03 22:51:41',NULL,'2015-10-04 01:51:41','USD','cart','new','checkout',NULL,NULL,0.00000),(77,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-04 14:14:21','2015-10-04 14:14:22',NULL,'2015-10-04 17:14:21','USD','cart','new','checkout',NULL,NULL,0.00000),(78,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-04 16:23:10','2015-10-04 16:23:11',NULL,'2015-10-04 19:23:10','USD','cart','new','checkout',NULL,NULL,0.00000),(79,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-04 16:29:41','2015-10-04 16:29:43',NULL,'2015-10-04 19:29:41','USD','cart','new','checkout',NULL,NULL,0.00000),(80,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-04 20:43:24','2015-10-04 20:43:25',NULL,'2015-10-04 23:43:24','USD','cart','new','checkout',NULL,NULL,0.00000),(81,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-05 06:31:37','2015-10-05 06:31:37',NULL,'2015-10-05 09:31:37','USD','cart','new','checkout',NULL,NULL,0.00000),(82,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-05 07:29:19','2015-10-05 07:29:19',NULL,'2015-10-05 10:29:19','USD','cart','new','checkout',NULL,NULL,0.00000),(83,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-05 19:51:37','2015-10-05 19:51:37',NULL,'2015-10-05 22:51:37','USD','cart','new','checkout',NULL,NULL,0.00000),(84,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-05 19:51:41','2015-10-05 19:51:41',NULL,'2015-10-05 22:51:41','USD','cart','new','checkout',NULL,NULL,0.00000),(85,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-08 16:54:10','2015-10-08 16:54:11',NULL,'2015-10-08 19:54:10','USD','cart','new','checkout',NULL,NULL,0.00000),(86,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-10 21:03:35','2015-10-10 21:03:35',NULL,'2015-10-11 00:03:35','USD','cart','new','checkout',NULL,NULL,0.00000),(87,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-11 22:27:01','2015-10-11 22:27:01',NULL,'2015-10-12 01:27:01','USD','cart','new','checkout',NULL,NULL,0.00000),(88,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-13 19:02:16','2015-10-13 19:02:16',NULL,'2015-10-13 22:02:16','USD','cart','new','checkout',NULL,NULL,0.00000),(89,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-13 19:03:46','2015-10-13 19:03:46',NULL,'2015-10-13 22:03:46','USD','cart','new','checkout',NULL,NULL,0.00000),(90,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-13 19:32:20','2015-10-13 19:32:20',NULL,'2015-10-13 22:32:20','USD','cart','new','checkout',NULL,NULL,0.00000),(91,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-13 20:33:25','2015-10-13 20:33:25',NULL,'2015-10-13 23:33:25','USD','cart','new','checkout',NULL,NULL,0.00000),(92,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-14 02:32:50','2015-10-14 02:32:50',NULL,'2015-10-14 05:32:50','USD','cart','new','checkout',NULL,NULL,0.00000),(93,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-14 02:49:33','2015-10-14 02:49:33',NULL,'2015-10-14 05:49:33','USD','cart','new','checkout',NULL,NULL,0.00000),(94,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-14 05:07:23','2015-10-14 05:07:24',NULL,'2015-10-14 08:07:23','USD','cart','new','checkout',NULL,NULL,0.00000),(95,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-14 05:07:38','2015-10-14 05:07:38',NULL,'2015-10-14 08:07:38','USD','cart','new','checkout',NULL,NULL,0.00000),(96,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-14 14:25:26','2015-10-14 14:25:26',NULL,'2015-10-14 17:25:26','USD','cart','new','checkout',NULL,NULL,0.00000),(97,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-14 20:37:51','2015-10-14 20:37:51',NULL,'2015-10-14 23:37:51','USD','cart','new','checkout',NULL,NULL,0.00000),(98,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-14 20:39:05','2015-10-14 20:39:05',NULL,'2015-10-14 23:39:05','USD','cart','new','checkout',NULL,NULL,0.00000),(99,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-14 23:44:16','2015-10-14 23:44:16',NULL,'2015-10-15 02:44:16','USD','cart','new','checkout',NULL,NULL,0.00000),(100,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-15 05:28:05','2015-10-15 05:28:05',NULL,'2015-10-15 08:28:05','USD','cart','new','checkout',NULL,NULL,0.00000),(101,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-15 15:41:13','2015-10-15 15:41:13',NULL,'2015-10-15 18:41:13','USD','cart','new','checkout',NULL,NULL,0.00000),(102,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-15 16:33:56','2015-10-15 16:33:57',NULL,'2015-10-15 19:33:56','USD','cart','new','checkout',NULL,NULL,0.00000),(103,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-15 20:15:23','2015-10-15 20:15:23',NULL,'2015-10-15 23:15:23','USD','cart','new','checkout',NULL,NULL,0.00000),(104,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-16 06:09:54','2015-10-16 06:09:54',NULL,'2015-10-16 09:09:54','USD','cart','new','checkout',NULL,NULL,0.00000),(105,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-16 13:51:43','2015-10-16 13:51:44',NULL,'2015-10-16 16:51:43','USD','cart','new','checkout',NULL,NULL,0.00000),(106,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-16 19:49:12','2015-10-16 19:49:12',NULL,'2015-10-16 22:49:12','USD','cart','new','checkout',NULL,NULL,0.00000),(107,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-18 20:33:58','2015-10-18 20:33:58',NULL,'2015-10-18 23:33:58','USD','cart','new','checkout',NULL,NULL,0.00000),(108,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-19 00:50:13','2015-10-19 00:50:13',NULL,'2015-10-19 03:50:13','USD','cart','new','checkout',NULL,NULL,0.00000),(109,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-19 20:17:16','2015-10-19 20:17:16',NULL,'2015-10-19 23:17:16','USD','cart','new','checkout',NULL,NULL,0.00000),(110,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-20 15:03:56','2015-10-20 15:03:56',NULL,'2015-10-20 18:03:56','USD','cart','new','checkout',NULL,NULL,0.00000),(111,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-20 16:15:58','2015-10-20 16:15:58',NULL,'2015-10-20 19:15:58','USD','cart','new','checkout',NULL,NULL,0.00000),(112,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-20 18:19:14','2015-10-20 18:19:14',NULL,'2015-10-20 21:19:14','USD','cart','new','checkout',NULL,NULL,0.00000),(113,NULL,NULL,NULL,7,NULL,'cart',NULL,0,0,0,'2015-10-22 19:30:19','2015-10-22 19:30:19',NULL,'2015-10-22 22:30:19','USD','cart','new','checkout',NULL,NULL,0.00000),(114,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-23 18:16:45','2015-10-23 18:16:45',NULL,'2015-10-23 21:16:45','USD','cart','new','checkout',NULL,NULL,0.00000),(115,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-26 18:39:07','2015-10-26 18:39:07',NULL,'2015-10-26 21:39:07','USD','cart','new','checkout',NULL,NULL,0.00000),(116,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-29 13:59:22','2015-10-29 13:59:22',NULL,'2015-10-29 16:59:22','USD','cart','new','checkout',NULL,NULL,0.00000),(117,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-30 02:39:14','2015-10-30 02:39:14',NULL,'2015-10-30 05:39:14','USD','cart','new','checkout',NULL,NULL,0.00000),(118,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-10-30 04:30:32','2015-10-30 04:30:33',NULL,'2015-10-30 07:30:32','USD','cart','new','checkout',NULL,NULL,0.00000),(119,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-04 20:56:07','2015-11-04 20:56:07',NULL,'2015-11-04 23:56:07','USD','cart','new','checkout',NULL,NULL,0.00000),(120,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-09 23:52:24','2015-11-09 23:52:24',NULL,'2015-11-10 02:52:24','USD','cart','new','checkout',NULL,NULL,0.00000),(121,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-12 14:47:18','2015-11-12 14:47:18',NULL,'2015-11-12 17:47:18','USD','cart','new','checkout',NULL,NULL,0.00000),(122,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-12 16:46:07','2015-11-12 16:46:07',NULL,'2015-11-12 19:46:07','USD','cart','new','checkout',NULL,NULL,0.00000),(123,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-12 16:46:08','2015-11-12 16:46:08',NULL,'2015-11-12 19:46:08','USD','cart','new','checkout',NULL,NULL,0.00000),(124,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-16 17:41:51','2015-11-16 17:41:51',NULL,'2015-11-16 20:41:51','USD','cart','new','checkout',NULL,NULL,0.00000),(125,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-17 01:16:50','2015-11-17 01:16:51',NULL,'2015-11-17 04:16:50','USD','cart','new','checkout',NULL,NULL,0.00000),(126,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-18 15:25:58','2015-11-18 15:25:58',NULL,'2015-11-18 18:25:58','USD','cart','new','checkout',NULL,NULL,0.00000),(127,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-18 21:16:53','2015-11-18 21:16:53',NULL,'2015-11-19 00:16:53','USD','cart','new','checkout',NULL,NULL,0.00000),(128,1,1,2,1,NULL,'cart',NULL,24600,0,24600,'2015-11-18 21:31:35','2015-11-18 22:05:51',NULL,'2015-11-19 00:31:35','USD','cart','new','checkout',NULL,NULL,0.00000),(129,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-19 21:48:12','2015-11-19 21:48:12',NULL,'2015-11-20 00:48:12','USD','cart','new','checkout',NULL,NULL,0.00000),(130,1,5,6,1,NULL,'cart',NULL,12300,0,12300,'2015-11-19 21:49:33','2015-11-19 21:55:03',NULL,'2015-11-20 00:49:33','USD','cart','new','checkout',NULL,NULL,0.00000),(131,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-20 14:43:48','2015-11-20 14:43:48',NULL,'2015-11-20 17:43:48','USD','cart','new','checkout',NULL,NULL,0.00000),(132,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-21 06:22:57','2015-11-21 06:22:57',NULL,'2015-11-21 09:22:57','USD','cart','new','checkout',NULL,NULL,0.00000),(133,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-11-22 04:10:38','2015-11-22 04:10:39',NULL,'2015-11-22 07:10:38','USD','cart','new','checkout',NULL,NULL,0.00000),(134,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-02 00:22:31','2015-12-02 00:22:31',NULL,'2015-12-02 03:22:31','USD','cart','new','checkout',NULL,NULL,0.00000),(135,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-02 00:24:15','2015-12-02 00:24:15',NULL,'2015-12-02 03:24:15','USD','cart','new','checkout',NULL,NULL,0.00000),(136,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-07 20:56:59','2015-12-07 20:57:00',NULL,'2015-12-07 23:56:59','USD','cart','new','checkout',NULL,NULL,0.00000),(137,NULL,NULL,NULL,8,NULL,'cart',NULL,0,0,0,'2015-12-07 20:59:50','2015-12-07 20:59:50',NULL,'2015-12-07 23:59:50','USD','cart','new','checkout',NULL,NULL,0.00000),(138,NULL,NULL,NULL,8,NULL,'cart',NULL,0,0,0,'2015-12-07 21:05:44','2015-12-07 21:05:44',NULL,'2015-12-08 00:05:44','USD','cart','new','checkout',NULL,NULL,0.00000),(139,NULL,NULL,NULL,8,NULL,'cart',NULL,0,0,0,'2015-12-07 21:10:59','2015-12-07 21:10:59',NULL,'2015-12-08 00:10:59','USD','cart','new','checkout',NULL,NULL,0.00000),(140,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-07 21:53:27','2015-12-07 21:53:27',NULL,'2015-12-08 00:53:27','USD','cart','new','checkout',NULL,NULL,0.00000),(141,1,7,8,8,'000000001','pending','2015-12-08 01:33:18',12300,10000,22300,'2015-12-07 21:54:24','2015-12-08 01:33:19','2016-01-26 22:29:33','2015-12-08 00:54:24','USD','cart','new','onhold',NULL,NULL,0.00000),(142,1,NULL,NULL,1,NULL,'cart',NULL,12300,0,12300,'2015-12-08 01:38:47','2015-12-08 01:38:50',NULL,'2015-12-08 04:38:47','USD','cart','new','checkout',NULL,NULL,0.00000),(143,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-14 23:36:12','2015-12-14 23:36:13',NULL,'2015-12-15 02:36:12','USD','cart','new','checkout',NULL,NULL,0.00000),(144,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-16 12:16:29','2015-12-16 12:16:29',NULL,'2015-12-16 15:16:29','USD','cart','new','checkout',NULL,NULL,0.00000),(145,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-17 12:29:13','2015-12-17 12:29:14',NULL,'2015-12-17 15:29:13','USD','cart','new','checkout',NULL,NULL,0.00000),(146,NULL,NULL,NULL,8,NULL,'cart',NULL,0,0,0,'2015-12-17 22:42:12','2015-12-17 22:42:12',NULL,'2015-12-18 01:42:12','USD','cart','new','checkout',NULL,NULL,0.00000),(147,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-19 22:37:55','2015-12-19 22:37:55',NULL,'2015-12-20 01:37:55','USD','cart','new','checkout',NULL,NULL,0.00000),(148,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-19 22:39:57','2015-12-19 22:39:58',NULL,'2015-12-20 01:39:57','USD','cart','new','checkout',NULL,NULL,0.00000),(149,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-19 22:42:20','2015-12-19 22:42:20',NULL,'2015-12-20 01:42:20','USD','cart','new','checkout',NULL,NULL,0.00000),(150,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-19 23:02:16','2015-12-19 23:02:16',NULL,'2015-12-20 02:02:16','USD','cart','new','checkout',NULL,NULL,0.00000),(151,NULL,NULL,NULL,8,NULL,'cart',NULL,0,0,0,'2015-12-19 23:09:24','2015-12-19 23:09:24',NULL,'2015-12-20 02:09:24','USD','cart','new','checkout',NULL,NULL,0.00000),(152,NULL,NULL,NULL,8,NULL,'cart',NULL,0,0,0,'2015-12-19 23:10:03','2015-12-19 23:10:03',NULL,'2015-12-20 02:10:03','USD','cart','new','checkout',NULL,NULL,0.00000),(153,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-20 00:08:26','2015-12-20 00:08:26',NULL,'2015-12-20 03:08:26','USD','cart','new','checkout',NULL,NULL,0.00000),(154,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-20 07:28:08','2015-12-20 07:28:08',NULL,'2015-12-20 10:28:08','USD','cart','new','checkout',NULL,NULL,0.00000),(155,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-21 00:23:49','2015-12-21 00:23:49',NULL,'2015-12-21 03:23:49','USD','cart','new','checkout',NULL,NULL,0.00000),(156,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-22 03:53:45','2015-12-22 03:53:46',NULL,'2015-12-22 06:53:45','USD','cart','new','checkout',NULL,NULL,0.00000),(157,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-23 11:25:42','2015-12-23 11:25:43',NULL,'2015-12-23 14:25:42','USD','cart','new','checkout',NULL,NULL,0.00000),(158,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-23 15:28:59','2015-12-23 15:28:59',NULL,'2015-12-23 18:28:59','USD','cart','new','checkout',NULL,NULL,0.00000),(159,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-24 21:22:37','2015-12-24 21:22:37',NULL,'2015-12-25 00:22:37','USD','cart','new','checkout',NULL,NULL,0.00000),(160,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-24 21:22:50','2015-12-24 21:22:50',NULL,'2015-12-25 00:22:50','USD','cart','new','checkout',NULL,NULL,0.00000),(161,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-24 21:36:22','2015-12-24 21:36:22',NULL,'2015-12-25 00:36:22','USD','cart','new','checkout',NULL,NULL,0.00000),(162,1,NULL,NULL,1,NULL,'cart',NULL,24600,0,24600,'2015-12-25 02:16:47','2015-12-30 01:53:34',NULL,'2015-12-25 05:16:47','USD','cart','new','checkout',NULL,NULL,0.00000),(163,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-31 01:37:07','2015-12-31 01:37:07',NULL,'2015-12-31 04:37:07','USD','cart','new','checkout',NULL,NULL,0.00000),(164,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-31 01:37:21','2015-12-31 01:37:21',NULL,'2015-12-31 04:37:21','USD','cart','new','checkout',NULL,NULL,0.00000),(165,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2015-12-31 02:38:59','2015-12-31 02:38:59',NULL,'2015-12-31 05:38:59','USD','cart','new','checkout',NULL,NULL,0.00000),(166,1,11,12,1,NULL,'cart',NULL,12300,10000,22300,'2015-12-31 02:41:19','2015-12-31 02:43:39',NULL,'2015-12-31 05:41:19','USD','cart','new','checkout',NULL,NULL,0.00000),(167,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-01 08:31:17','2016-01-01 08:31:17',NULL,'2016-01-01 11:31:17','USD','cart','new','checkout',NULL,NULL,0.00000),(168,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-01 08:32:10','2016-01-01 08:32:10',NULL,'2016-01-01 11:32:10','USD','cart','new','checkout',NULL,NULL,0.00000),(169,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-02 04:44:42','2016-01-02 04:44:42',NULL,'2016-01-02 07:44:42','USD','cart','new','checkout',NULL,NULL,0.00000),(170,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-02 07:11:15','2016-01-02 07:11:16',NULL,'2016-01-02 10:11:15','USD','cart','new','checkout',NULL,NULL,0.00000),(171,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-03 08:05:01','2016-01-03 08:05:01',NULL,'2016-01-03 11:05:01','USD','cart','new','checkout',NULL,NULL,0.00000),(172,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-04 18:54:00','2016-01-04 18:54:00',NULL,'2016-01-04 21:54:00','USD','cart','new','checkout',NULL,NULL,0.00000),(173,1,NULL,NULL,1,NULL,'cart',NULL,12300,0,12300,'2016-01-04 18:54:26','2016-01-04 18:56:44',NULL,'2016-01-04 21:54:26','USD','cart','new','checkout',NULL,NULL,0.00000),(174,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-05 02:38:09','2016-01-05 02:38:09',NULL,'2016-01-05 05:38:09','USD','cart','new','checkout',NULL,NULL,0.00000),(175,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-06 08:35:32','2016-01-06 08:35:33',NULL,'2016-01-06 11:35:32','USD','cart','new','checkout',NULL,NULL,0.00000),(176,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-06 08:35:53','2016-01-06 08:35:53',NULL,'2016-01-06 11:35:53','USD','cart','new','checkout',NULL,NULL,0.00000),(177,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-06 20:51:28','2016-01-06 20:51:28',NULL,'2016-01-06 23:51:28','USD','cart','new','checkout',NULL,NULL,0.00000),(178,1,NULL,NULL,1,NULL,'cart',NULL,12300,0,12300,'2016-01-06 20:51:59','2016-01-06 20:52:02',NULL,'2016-01-06 23:51:59','USD','cart','new','checkout',NULL,NULL,0.00000),(179,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-11 06:43:18','2016-01-11 06:43:18',NULL,'2016-01-11 09:43:18','USD','cart','new','checkout',NULL,NULL,0.00000),(180,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-11 06:43:37','2016-01-11 06:43:37',NULL,'2016-01-11 09:43:37','USD','cart','new','checkout',NULL,NULL,0.00000),(181,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-12 16:32:02','2016-01-12 16:32:02',NULL,'2016-01-12 19:32:02','USD','cart','new','checkout',NULL,NULL,0.00000),(182,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-15 00:12:27','2016-01-15 00:12:27',NULL,'2016-01-15 03:12:27','USD','cart','new','checkout',NULL,NULL,0.00000),(183,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-15 00:12:38','2016-01-15 00:12:38',NULL,'2016-01-15 03:12:38','USD','cart','new','checkout',NULL,NULL,0.00000),(184,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-15 01:31:13','2016-01-15 01:31:13',NULL,'2016-01-15 04:31:13','USD','cart','new','checkout',NULL,NULL,0.00000),(185,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-18 23:28:31','2016-01-18 23:28:31',NULL,'2016-01-19 02:28:31','USD','cart','new','checkout',NULL,NULL,0.00000),(186,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-18 23:34:06','2016-01-18 23:34:06',NULL,'2016-01-19 02:34:06','USD','cart','new','checkout',NULL,NULL,0.00000),(187,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-18 23:34:10','2016-01-18 23:34:10',NULL,'2016-01-19 02:34:10','USD','cart','new','checkout',NULL,NULL,0.00000),(188,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-19 05:09:21','2016-01-19 05:09:21',NULL,'2016-01-19 08:09:21','USD','cart','new','checkout',NULL,NULL,0.00000),(189,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-19 05:09:43','2016-01-19 05:09:43',NULL,'2016-01-19 08:09:43','USD','cart','new','checkout',NULL,NULL,0.00000),(190,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-19 05:11:00','2016-01-19 05:11:00',NULL,'2016-01-19 08:11:00','USD','cart','new','checkout',NULL,NULL,0.00000),(191,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-19 20:56:15','2016-01-19 20:56:15',NULL,'2016-01-19 23:56:15','USD','cart','new','checkout',NULL,NULL,0.00000),(192,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-19 20:56:24','2016-01-19 20:56:24',NULL,'2016-01-19 23:56:24','USD','cart','new','checkout',NULL,NULL,0.00000),(193,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-19 20:56:59','2016-01-19 20:56:59',NULL,'2016-01-19 23:56:59','USD','cart','new','checkout',NULL,NULL,0.00000),(194,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-20 17:01:48','2016-01-20 17:01:48',NULL,'2016-01-20 20:01:48','USD','cart','new','checkout',NULL,NULL,0.00000),(195,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-20 17:03:45','2016-01-20 17:03:45',NULL,'2016-01-20 20:03:45','USD','cart','new','checkout',NULL,NULL,0.00000),(196,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 00:09:22','2016-01-21 00:09:22',NULL,'2016-01-21 03:09:22','USD','cart','new','checkout',NULL,NULL,0.00000),(197,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 06:01:20','2016-01-21 06:01:20',NULL,'2016-01-21 09:01:20','USD','cart','new','checkout',NULL,NULL,0.00000),(198,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 06:01:29','2016-01-21 06:01:29',NULL,'2016-01-21 09:01:29','USD','cart','new','checkout',NULL,NULL,0.00000),(199,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 06:01:55','2016-01-21 06:01:55',NULL,'2016-01-21 09:01:55','USD','cart','new','checkout',NULL,NULL,0.00000),(200,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 06:02:00','2016-01-21 06:02:00',NULL,'2016-01-21 09:02:00','USD','cart','new','checkout',NULL,NULL,0.00000),(201,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 16:15:01','2016-01-21 16:15:02',NULL,'2016-01-21 19:15:01','USD','cart','new','checkout',NULL,NULL,0.00000),(202,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 18:20:56','2016-01-21 18:20:56',NULL,'2016-01-21 21:20:56','USD','cart','new','checkout',NULL,NULL,0.00000),(203,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 18:35:41','2016-01-21 18:35:41',NULL,'2016-01-21 21:35:41','USD','cart','new','checkout',NULL,NULL,0.00000),(204,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-21 18:39:18','2016-01-21 18:39:18',NULL,'2016-01-21 21:39:18','USD','cart','new','checkout',NULL,NULL,0.00000),(205,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 07:56:29','2016-01-22 07:56:29',NULL,'2016-01-22 10:56:29','USD','cart','new','checkout',NULL,NULL,0.00000),(206,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 08:37:02','2016-01-22 08:37:02',NULL,'2016-01-22 11:37:02','USD','cart','new','checkout',NULL,NULL,0.00000),(207,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 14:55:13','2016-01-22 14:55:13',NULL,'2016-01-22 17:55:13','USD','cart','new','checkout',NULL,NULL,0.00000),(208,1,13,14,1,NULL,'cart',NULL,12300,10000,22300,'2016-01-22 14:55:40','2016-01-22 14:57:28',NULL,'2016-01-22 17:55:40','USD','cart','new','checkout',NULL,NULL,0.00000),(209,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 15:02:37','2016-01-22 15:02:37',NULL,'2016-01-22 18:02:37','USD','cart','new','checkout',NULL,NULL,0.00000),(210,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 17:42:34','2016-01-22 17:42:34',NULL,'2016-01-22 20:42:34','USD','cart','new','checkout',NULL,NULL,0.00000),(211,1,15,16,1,NULL,'cart',NULL,24600,10000,34600,'2016-01-22 17:43:35','2016-01-22 18:08:55',NULL,'2016-01-22 20:43:35','USD','cart','new','checkout',NULL,NULL,0.00000),(212,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 17:49:22','2016-01-22 17:49:22',NULL,'2016-01-22 20:49:22','USD','cart','new','checkout',NULL,NULL,0.00000),(213,1,NULL,NULL,1,NULL,'cart',NULL,12300,0,12300,'2016-01-22 17:51:02','2016-01-22 17:51:02',NULL,'2016-01-22 20:51:02','USD','cart','new','checkout',NULL,NULL,0.00000),(214,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 18:10:16','2016-01-22 18:10:16',NULL,'2016-01-22 21:10:16','USD','cart','new','checkout',NULL,NULL,0.00000),(215,1,17,18,1,NULL,'cart',NULL,12300,0,12300,'2016-01-22 18:11:45','2016-01-22 18:14:27',NULL,'2016-01-22 21:11:45','USD','cart','new','checkout',NULL,NULL,0.00000),(216,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 19:30:19','2016-01-22 19:30:19',NULL,'2016-01-22 22:30:19','USD','cart','new','checkout',NULL,NULL,0.00000),(217,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 19:31:11','2016-01-22 19:31:11',NULL,'2016-01-22 22:31:11','USD','cart','new','checkout',NULL,NULL,0.00000),(218,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 20:17:39','2016-01-22 20:17:39',NULL,'2016-01-22 23:17:39','USD','cart','new','checkout',NULL,NULL,0.00000),(219,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 20:25:08','2016-01-22 20:25:08',NULL,'2016-01-22 23:25:08','USD','cart','new','checkout',NULL,NULL,0.00000),(220,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 21:37:01','2016-01-22 21:37:01',NULL,'2016-01-23 00:37:01','USD','cart','new','checkout',NULL,NULL,0.00000),(221,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-22 21:37:10','2016-01-22 21:37:10',NULL,'2016-01-23 00:37:10','USD','cart','new','checkout',NULL,NULL,0.00000),(222,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-23 10:27:31','2016-01-23 10:27:31',NULL,'2016-01-23 13:27:31','USD','cart','new','checkout',NULL,NULL,0.00000),(223,1,NULL,NULL,1,NULL,'cart',NULL,12300,0,12300,'2016-01-23 10:28:05','2016-01-23 10:28:08',NULL,'2016-01-23 13:28:05','USD','cart','new','checkout',NULL,NULL,0.00000),(224,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-23 11:34:37','2016-01-23 11:34:37',NULL,'2016-01-23 14:34:37','USD','cart','new','checkout',NULL,NULL,0.00000),(225,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-23 16:11:47','2016-01-23 16:11:47',NULL,'2016-01-23 19:11:47','USD','cart','new','checkout',NULL,NULL,0.00000),(226,1,19,20,1,NULL,'cart',NULL,12300,10000,22300,'2016-01-23 16:12:03','2016-01-23 16:13:55',NULL,'2016-01-23 19:12:03','USD','cart','new','checkout',NULL,NULL,0.00000),(227,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-23 17:05:37','2016-01-23 17:05:37',NULL,'2016-01-23 20:05:37','USD','cart','new','checkout',NULL,NULL,0.00000),(228,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-23 17:08:22','2016-01-23 17:08:22',NULL,'2016-01-23 20:08:22','USD','cart','new','checkout',NULL,NULL,0.00000),(229,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-23 17:28:39','2016-01-23 17:28:39',NULL,'2016-01-23 20:28:39','USD','cart','new','checkout',NULL,NULL,0.00000),(230,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-23 23:02:04','2016-01-23 23:02:04',NULL,'2016-01-24 02:02:04','USD','cart','new','checkout',NULL,NULL,0.00000),(231,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-24 00:09:55','2016-01-24 00:09:55',NULL,'2016-01-24 03:09:55','USD','cart','new','checkout',NULL,NULL,0.00000),(232,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-24 16:19:09','2016-01-24 16:19:09',NULL,'2016-01-24 19:19:09','USD','cart','new','checkout',NULL,NULL,0.00000),(233,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-24 17:27:30','2016-01-24 17:27:30',NULL,'2016-01-24 20:27:30','USD','cart','new','checkout',NULL,NULL,0.00000),(234,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-24 19:31:12','2016-01-24 19:31:12',NULL,'2016-01-24 22:31:12','USD','cart','new','checkout',NULL,NULL,0.00000),(235,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-24 21:50:46','2016-01-24 21:50:46',NULL,'2016-01-25 00:50:46','USD','cart','new','checkout',NULL,NULL,0.00000),(236,1,NULL,NULL,1,NULL,'cart',NULL,12300,0,12300,'2016-01-24 22:55:12','2016-01-24 22:55:14',NULL,'2016-01-25 01:55:12','USD','cart','new','checkout',NULL,NULL,0.00000),(237,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 00:59:33','2016-01-25 00:59:33',NULL,'2016-01-25 03:59:33','USD','cart','new','checkout',NULL,NULL,0.00000),(238,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 01:06:43','2016-01-25 01:06:43',NULL,'2016-01-25 04:06:43','USD','cart','new','checkout',NULL,NULL,0.00000),(239,NULL,NULL,NULL,9,NULL,'cart',NULL,0,0,0,'2016-01-25 01:42:36','2016-01-25 01:42:36',NULL,'2016-01-25 04:42:36','USD','cart','new','checkout',NULL,NULL,0.00000),(240,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 02:07:34','2016-01-25 02:07:34',NULL,'2016-01-25 05:07:34','USD','cart','new','checkout',NULL,NULL,0.00000),(241,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 02:15:40','2016-01-25 02:15:40',NULL,'2016-01-25 05:15:40','USD','cart','new','checkout',NULL,NULL,0.00000),(242,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 02:51:28','2016-01-25 02:51:28',NULL,'2016-01-25 05:51:28','USD','cart','new','checkout',NULL,NULL,0.00000),(243,1,21,22,1,'000000002','pending','2016-01-25 03:01:05',9000,10000,19000,'2016-01-25 02:59:38','2016-01-25 03:02:52','2016-01-26 22:29:22','2016-01-25 05:59:38','USD','cart','new','onhold',NULL,NULL,0.00000),(244,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 03:03:55','2016-01-25 03:03:55',NULL,'2016-01-25 06:03:55','USD','cart','new','checkout',NULL,NULL,0.00000),(245,1,23,24,1,'000000003','pending','2016-01-25 03:05:20',4500,10000,14500,'2016-01-25 03:04:29','2016-01-25 03:05:20','2016-01-26 22:29:13','2016-01-25 06:04:29','USD','cart','new','onhold',NULL,NULL,0.00000),(246,1,25,26,1,'000000004','pending','2016-01-25 14:11:19',9000,10000,19000,'2016-01-25 14:09:30','2016-01-25 15:35:04','2016-01-26 22:29:03','2016-01-25 17:09:30','USD','cart','processing','onhold',NULL,NULL,0.00000),(247,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 14:46:19','2016-01-25 14:46:19',NULL,'2016-01-25 17:46:19','USD','cart','new','checkout',NULL,NULL,0.00000),(248,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 14:59:18','2016-01-25 14:59:18',NULL,'2016-01-25 17:59:18','USD','cart','new','checkout',NULL,NULL,0.00000),(249,1,27,28,1,'000000005','pending','2016-01-25 15:54:32',4500,0,4500,'2016-01-25 15:41:44','2016-01-25 15:54:37','2016-01-26 22:28:48','2016-01-25 18:41:44','USD','cart','processing','partially_shipped',NULL,NULL,0.00000),(250,1,29,30,1,'000000006','confirmed','2016-01-25 15:58:17',4500,0,4500,'2016-01-25 15:57:37','2016-01-25 15:58:23','2016-01-26 22:28:37','2016-01-25 18:57:37','USD','cart','completed','partially_shipped',NULL,NULL,0.00000),(251,1,31,32,1,'000000007','pending','2016-01-25 16:13:25',100,0,100,'2016-01-25 16:09:14','2016-01-25 21:44:20','2016-01-26 22:28:12','2016-01-25 19:09:14','USD','cart','new','partially_shipped',NULL,NULL,0.00000),(252,NULL,NULL,NULL,10,NULL,'cart',NULL,0,0,0,'2016-01-25 16:20:16','2016-01-25 16:20:16',NULL,'2016-01-25 19:20:16','USD','cart','new','checkout',NULL,NULL,0.00000),(253,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 16:26:30','2016-01-25 16:26:30',NULL,'2016-01-25 19:26:30','USD','cart','new','checkout',NULL,NULL,0.00000),(254,1,33,34,1,'000000008','pending','2016-01-25 16:45:53',13500,0,13500,'2016-01-25 16:29:00','2016-01-25 16:45:53','2016-01-26 22:28:28','2016-01-25 19:29:00','USD','cart','new','partially_shipped',NULL,NULL,0.00000),(255,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 16:47:14','2016-01-25 16:47:14',NULL,'2016-01-25 19:47:14','USD','cart','new','checkout',NULL,NULL,0.00000),(256,1,35,36,1,NULL,'cart',NULL,9000,0,9000,'2016-01-25 16:53:10','2016-01-25 16:53:32',NULL,'2016-01-25 19:53:10','USD','cart','new','checkout',NULL,NULL,0.00000),(257,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 18:43:32','2016-01-25 18:43:32',NULL,'2016-01-25 21:43:32','USD','cart','new','checkout',NULL,NULL,0.00000),(258,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 21:05:09','2016-01-25 21:05:09',NULL,'2016-01-26 00:05:09','USD','cart','new','checkout',NULL,NULL,0.00000),(259,1,37,38,1,NULL,'cart',NULL,100,0,100,'2016-01-25 23:52:07','2016-01-25 23:52:41',NULL,'2016-01-26 02:52:07','USD','cart','new','checkout',NULL,NULL,0.00000),(260,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-25 23:58:31','2016-01-25 23:58:31',NULL,'2016-01-26 02:58:31','USD','cart','new','checkout',NULL,NULL,0.00000),(261,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 00:02:36','2016-01-26 00:02:36',NULL,'2016-01-26 03:02:36','USD','cart','new','checkout',NULL,NULL,0.00000),(262,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 00:02:45','2016-01-26 00:02:46',NULL,'2016-01-26 03:02:45','USD','cart','new','checkout',NULL,NULL,0.00000),(263,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 03:08:24','2016-01-26 03:08:24',NULL,'2016-01-26 06:08:24','USD','cart','new','checkout',NULL,NULL,0.00000),(264,1,NULL,NULL,1,NULL,'cart',NULL,100,0,100,'2016-01-26 03:12:05','2016-01-26 03:12:05',NULL,'2016-01-26 06:12:05','USD','cart','new','checkout',NULL,NULL,0.00000),(265,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 07:03:03','2016-01-26 07:03:04',NULL,'2016-01-26 10:03:03','USD','cart','new','checkout',NULL,NULL,0.00000),(266,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 07:03:21','2016-01-26 07:03:21',NULL,'2016-01-26 10:03:21','USD','cart','new','checkout',NULL,NULL,0.00000),(267,1,39,40,1,NULL,'cart',NULL,200,0,200,'2016-01-26 07:33:39','2016-01-26 07:35:37',NULL,'2016-01-26 10:33:39','USD','cart','new','checkout',NULL,NULL,0.00000),(268,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 13:27:54','2016-01-26 13:27:54',NULL,'2016-01-26 16:27:54','USD','cart','new','checkout',NULL,NULL,0.00000),(269,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 17:40:54','2016-01-26 17:40:55',NULL,'2016-01-26 20:40:54','USD','cart','new','checkout',NULL,NULL,0.00000),(270,1,41,42,1,NULL,'cart',NULL,100,0,100,'2016-01-26 17:52:18','2016-01-26 21:04:21',NULL,'2016-01-26 20:52:18','USD','cart','new','checkout',NULL,NULL,0.00000),(271,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 21:16:33','2016-01-26 21:16:33',NULL,'2016-01-27 00:16:33','USD','cart','new','checkout',NULL,NULL,0.00000),(272,1,43,44,1,NULL,'cart',NULL,100,10000,10100,'2016-01-26 21:16:59','2016-01-26 21:18:02',NULL,'2016-01-27 00:16:59','USD','cart','new','checkout',NULL,NULL,0.00000),(273,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 21:34:55','2016-01-26 21:34:55',NULL,'2016-01-27 00:34:55','USD','cart','new','checkout',NULL,NULL,0.00000),(274,1,45,46,1,NULL,'cart',NULL,100,0,100,'2016-01-26 21:35:39','2016-01-26 22:21:10',NULL,'2016-01-27 00:35:39','USD','cart','new','checkout',NULL,NULL,0.00000),(275,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-26 22:32:46','2016-01-26 22:32:46',NULL,'2016-01-27 01:32:46','USD','cart','new','checkout',NULL,NULL,0.00000),(276,1,47,48,1,NULL,'cart',NULL,100,0,100,'2016-01-26 22:34:49','2016-01-26 22:35:07','2016-01-26 22:37:29','2016-01-27 01:34:49','USD','cart','new','checkout',NULL,NULL,0.00000),(277,1,49,50,1,'000000009','confirmed','2016-01-26 23:41:44',100,252,352,'2016-01-26 22:37:43','2016-01-26 23:52:35',NULL,'2016-01-27 01:37:43','USD','cart','completed','backorder',NULL,NULL,0.00000),(278,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-27 03:06:40','2016-01-27 03:06:40',NULL,'2016-01-27 06:06:40','USD','cart','new','checkout',NULL,NULL,0.00000),(279,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-27 03:06:53','2016-01-27 03:06:53',NULL,'2016-01-27 06:06:53','USD','cart','new','checkout',NULL,NULL,0.00000),(280,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-27 16:34:04','2016-01-27 16:34:05',NULL,'2016-01-27 19:34:04','USD','cart','new','checkout',NULL,NULL,0.00000),(281,1,51,52,1,'000000010','confirmed','2016-01-27 16:44:22',100,5,105,'2016-01-27 16:43:42','2016-01-27 17:06:04',NULL,'2016-01-27 19:43:42','USD','cart','completed','backorder',NULL,NULL,0.00000),(282,1,53,54,1,'000000011','confirmed','2016-01-27 22:00:21',100,3,103,'2016-01-27 21:59:42','2016-01-28 00:50:22',NULL,'2016-01-28 00:59:42','USD','cart','completed','backorder',NULL,NULL,0.00000),(283,1,55,56,1,'000000012','pending','2016-01-28 01:01:56',200,4,204,'2016-01-28 01:01:12','2016-01-28 02:04:06',NULL,'2016-01-28 04:01:12','USD','cart','new','partially_shipped',NULL,NULL,0.00000),(284,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-28 18:02:36','2016-01-28 18:02:36',NULL,'2016-01-28 21:02:36','USD','cart','new','checkout',NULL,NULL,0.00000),(285,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-28 22:19:51','2016-01-28 22:19:51',NULL,'2016-01-29 01:19:51','USD','cart','new','checkout',NULL,NULL,0.00000),(286,1,57,58,1,'000000013','confirmed','2016-01-28 23:53:05',100,0,100,'2016-01-28 22:20:15','2016-01-28 23:53:11',NULL,'2016-01-29 01:20:15','USD','cart','completed','backorder',NULL,NULL,0.00000),(287,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-29 13:24:50','2016-01-29 13:24:51',NULL,'2016-01-29 16:24:50','USD','cart','new','checkout',NULL,NULL,0.00000),(288,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-29 21:32:39','2016-01-29 21:32:39',NULL,'2016-01-30 00:32:39','USD','cart','new','checkout',NULL,NULL,0.00000),(289,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-30 00:40:44','2016-01-30 00:40:44',NULL,'2016-01-30 03:40:44','USD','cart','new','checkout',NULL,NULL,0.00000),(290,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-30 04:58:11','2016-01-30 04:58:11',NULL,'2016-01-30 07:58:11','USD','cart','new','checkout',NULL,NULL,0.00000),(291,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-30 09:57:31','2016-01-30 09:57:32',NULL,'2016-01-30 12:57:31','USD','cart','new','checkout',NULL,NULL,0.00000),(292,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-30 09:57:44','2016-01-30 09:57:44',NULL,'2016-01-30 12:57:44','USD','cart','new','checkout',NULL,NULL,0.00000),(293,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-30 22:26:29','2016-01-30 22:26:29',NULL,'2016-01-31 01:26:29','USD','cart','new','checkout',NULL,NULL,0.00000),(294,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-31 06:07:04','2016-01-31 06:07:04',NULL,'2016-01-31 09:07:04','USD','cart','new','checkout',NULL,NULL,0.00000),(295,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-01-31 06:07:22','2016-01-31 06:07:22',NULL,'2016-01-31 09:07:22','USD','cart','new','checkout',NULL,NULL,0.00000),(296,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-01 18:07:28','2016-02-01 18:07:29',NULL,'2016-02-01 21:07:28','USD','cart','new','checkout',NULL,NULL,0.00000),(297,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-01 19:31:11','2016-02-01 19:31:11',NULL,'2016-02-01 22:31:11','USD','cart','new','checkout',NULL,NULL,0.00000),(298,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-01 19:44:05','2016-02-01 19:44:05',NULL,'2016-02-01 22:44:05','USD','cart','new','checkout',NULL,NULL,0.00000),(299,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-02 19:43:54','2016-02-02 19:43:54',NULL,'2016-02-02 22:43:54','USD','cart','new','checkout',NULL,NULL,0.00000),(300,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-03 03:11:36','2016-02-03 03:11:36',NULL,'2016-02-03 06:11:36','USD','cart','new','checkout',NULL,NULL,0.00000),(301,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-03 03:11:44','2016-02-03 03:11:44',NULL,'2016-02-03 06:11:44','USD','cart','new','checkout',NULL,NULL,0.00000),(302,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-03 18:40:16','2016-02-03 18:40:16',NULL,'2016-02-03 21:40:16','USD','cart','new','checkout',NULL,NULL,0.00000),(303,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-08 15:40:12','2016-02-08 15:40:12',NULL,'2016-02-08 18:40:12','USD','cart','new','checkout',NULL,NULL,0.00000),(304,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-08 18:21:57','2016-02-08 18:21:57',NULL,'2016-02-08 21:21:57','USD','cart','new','checkout',NULL,NULL,0.00000),(305,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-08 18:22:03','2016-02-08 18:22:03',NULL,'2016-02-08 21:22:03','USD','cart','new','checkout',NULL,NULL,0.00000),(306,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-08 20:44:22','2016-02-08 20:44:22',NULL,'2016-02-08 23:44:22','USD','cart','new','checkout',NULL,NULL,0.00000),(307,1,59,60,1,'000000014','confirmed','2016-02-08 20:53:12',100,0,100,'2016-02-08 20:51:13','2016-02-08 20:53:20',NULL,'2016-02-08 23:51:13','USD','cart','completed','backorder',NULL,NULL,0.00000),(308,1,61,62,1,'000000015','pending','2016-02-08 21:03:21',100,0,100,'2016-02-08 20:59:40','2016-02-08 21:03:21','2016-02-08 21:12:59','2016-02-08 23:59:40','USD','cart','new','partially_shipped',NULL,NULL,0.00000),(309,1,63,64,1,'000000016','pending','2016-02-08 21:36:04',100,0,100,'2016-02-08 21:34:48','2016-02-08 21:36:04',NULL,'2016-02-09 00:34:48','USD','cart','new','partially_shipped',NULL,NULL,0.00000),(310,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-09 07:10:08','2016-02-09 07:10:09',NULL,'2016-02-09 10:10:08','USD','cart','new','checkout',NULL,NULL,0.00000),(311,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-09 15:39:27','2016-02-09 15:39:27',NULL,'2016-02-09 18:39:27','USD','cart','new','checkout',NULL,NULL,0.00000),(312,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-09 15:39:28','2016-02-09 15:39:29',NULL,'2016-02-09 18:39:28','USD','cart','new','checkout',NULL,NULL,0.00000),(313,1,NULL,NULL,1,NULL,'cart',NULL,100,0,100,'2016-02-09 15:41:39','2016-02-09 15:41:42','2016-02-09 15:42:26','2016-02-09 18:41:39','USD','cart','new','checkout',NULL,NULL,0.00000),(314,1,NULL,NULL,1,NULL,'cart',NULL,300,0,300,'2016-02-09 15:47:14','2016-02-09 20:48:05',NULL,'2016-02-09 18:47:14','USD','cart','new','checkout',NULL,NULL,0.00000),(315,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-09 16:16:02','2016-02-09 16:16:02',NULL,'2016-02-09 19:16:02','USD','cart','new','checkout',NULL,NULL,0.00000),(316,1,NULL,NULL,1,NULL,'cart',NULL,200,0,200,'2016-02-09 16:16:50','2016-02-09 16:20:20','2016-02-09 20:56:22','2016-02-09 19:16:50','USD','cart','new','checkout',NULL,NULL,0.00000),(317,1,NULL,NULL,1,NULL,'cart',NULL,100,0,100,'2016-02-09 20:58:07','2016-02-09 20:58:08','2016-02-09 21:00:27','2016-02-09 23:58:07','USD','cart','new','checkout',NULL,NULL,0.00000),(318,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-09 21:16:36','2016-02-09 21:16:36',NULL,'2016-02-10 00:16:36','USD','cart','new','checkout',NULL,NULL,0.00000),(319,1,NULL,NULL,1,NULL,'cart',NULL,500,0,500,'2016-02-09 21:36:18','2016-02-09 22:29:48',NULL,'2016-02-10 00:36:18','USD','cart','new','checkout',NULL,NULL,0.00000),(320,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-09 23:29:54','2016-02-09 23:29:54',NULL,'2016-02-10 02:29:54','USD','cart','new','checkout',NULL,NULL,0.00000),(321,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-11 16:29:33','2016-02-11 16:29:34',NULL,'2016-02-11 19:29:33','USD','cart','new','checkout',NULL,NULL,0.00000),(322,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-11 17:28:08','2016-02-11 17:28:08',NULL,'2016-02-11 20:28:08','USD','cart','new','checkout',NULL,NULL,0.00000),(323,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-11 19:44:08','2016-02-11 19:44:08',NULL,'2016-02-11 22:44:08','USD','cart','new','checkout',NULL,NULL,0.00000),(324,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-12 22:28:12','2016-02-12 22:28:12',NULL,'2016-02-13 01:28:12','USD','cart','new','checkout',NULL,NULL,0.00000),(325,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-15 06:35:41','2016-02-15 06:35:42',NULL,'2016-02-15 09:35:41','USD','cart','new','checkout',NULL,NULL,0.00000),(326,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-15 06:35:53','2016-02-15 06:35:53',NULL,'2016-02-15 09:35:53','USD','cart','new','checkout',NULL,NULL,0.00000),(327,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-17 04:45:39','2016-02-17 04:45:40',NULL,'2016-02-17 07:45:39','USD','cart','new','checkout',NULL,NULL,0.00000),(328,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-18 19:37:37','2016-02-18 19:37:38',NULL,'2016-02-18 22:37:37','USD','cart','new','checkout',NULL,NULL,0.00000),(329,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-21 14:59:02','2016-02-21 14:59:03',NULL,'2016-02-21 17:59:02','USD','cart','new','checkout',NULL,NULL,0.00000),(330,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-21 17:35:07','2016-02-21 17:35:07',NULL,'2016-02-21 20:35:07','USD','cart','new','checkout',NULL,NULL,0.00000),(331,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-23 18:03:46','2016-02-23 18:03:46',NULL,'2016-02-23 21:03:46','USD','cart','new','checkout',NULL,NULL,0.00000),(332,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-23 18:07:07','2016-02-23 18:07:07',NULL,'2016-02-23 21:07:07','USD','cart','new','checkout',NULL,NULL,0.00000),(333,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-23 18:11:04','2016-02-23 18:11:05',NULL,'2016-02-23 21:11:04','USD','cart','new','checkout',NULL,NULL,0.00000),(334,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-23 19:51:21','2016-02-23 19:51:21',NULL,'2016-02-23 22:51:21','USD','cart','new','checkout',NULL,NULL,0.00000),(335,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-23 20:11:10','2016-02-23 20:11:10',NULL,'2016-02-23 23:11:10','USD','cart','new','checkout',NULL,NULL,0.00000),(336,NULL,NULL,NULL,8,NULL,'cart',NULL,0,0,0,'2016-02-23 21:52:58','2016-02-23 21:52:58',NULL,'2016-02-24 00:52:58','USD','cart','new','checkout',NULL,NULL,0.00000),(337,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-23 22:57:38','2016-02-23 22:57:38',NULL,'2016-02-24 01:57:38','USD','cart','new','checkout',NULL,NULL,0.00000),(338,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 03:17:17','2016-02-24 03:17:17',NULL,'2016-02-24 06:17:17','USD','cart','new','checkout',NULL,NULL,0.00000),(339,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 15:40:09','2016-02-24 15:40:09',NULL,'2016-02-24 18:40:09','USD','cart','new','checkout',NULL,NULL,0.00000),(340,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 17:02:55','2016-02-24 17:02:55',NULL,'2016-02-24 20:02:55','USD','cart','new','checkout',NULL,NULL,0.00000),(341,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 18:12:00','2016-02-24 18:12:00',NULL,'2016-02-24 21:12:00','USD','cart','new','checkout',NULL,NULL,0.00000),(342,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 18:16:46','2016-02-24 18:16:46',NULL,'2016-02-24 21:16:46','USD','cart','new','checkout',NULL,NULL,0.00000),(343,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 18:17:22','2016-02-24 18:17:22',NULL,'2016-02-24 21:17:22','USD','cart','new','checkout',NULL,NULL,0.00000),(344,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 19:09:20','2016-02-24 19:09:20',NULL,'2016-02-24 22:09:20','USD','cart','new','checkout',NULL,NULL,0.00000),(345,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 19:11:31','2016-02-24 19:11:31',NULL,'2016-02-24 22:11:31','USD','cart','new','checkout',NULL,NULL,0.00000),(346,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 19:42:13','2016-02-24 19:42:13',NULL,'2016-02-24 22:42:13','USD','cart','new','checkout',NULL,NULL,0.00000),(347,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-24 20:00:01','2016-02-24 20:00:01',NULL,'2016-02-24 23:00:01','USD','cart','new','checkout',NULL,NULL,0.00000),(348,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-25 18:36:58','2016-02-25 18:36:58',NULL,'2016-02-25 21:36:58','USD','cart','new','checkout',NULL,NULL,0.00000),(349,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-25 18:37:51','2016-02-25 18:37:51',NULL,'2016-02-25 21:37:51','USD','cart','new','checkout',NULL,NULL,0.00000),(350,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-25 21:03:58','2016-02-25 21:03:58',NULL,'2016-02-26 00:03:58','USD','cart','new','checkout',NULL,NULL,0.00000),(351,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-26 00:28:47','2016-02-26 00:28:47',NULL,'2016-02-26 03:28:47','USD','cart','new','checkout',NULL,NULL,0.00000),(352,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-26 00:29:24','2016-02-26 00:29:24',NULL,'2016-02-26 03:29:24','USD','cart','new','checkout',NULL,NULL,0.00000),(353,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-26 03:45:59','2016-02-26 03:45:59',NULL,'2016-02-26 06:45:59','USD','cart','new','checkout',NULL,NULL,0.00000),(354,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-26 16:09:18','2016-02-26 16:09:18',NULL,'2016-02-26 19:09:18','USD','cart','new','checkout',NULL,NULL,0.00000),(355,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-26 19:13:45','2016-02-26 19:13:45',NULL,'2016-02-26 22:13:45','USD','cart','new','checkout',NULL,NULL,0.00000),(356,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-26 20:08:12','2016-02-26 20:08:12',NULL,'2016-02-26 23:08:12','USD','cart','new','checkout',NULL,NULL,0.00000),(357,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-26 20:40:46','2016-02-26 20:40:46',NULL,'2016-02-26 23:40:46','USD','cart','new','checkout',NULL,NULL,0.00000),(358,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-26 21:51:08','2016-02-26 21:51:08',NULL,'2016-02-27 00:51:08','USD','cart','new','checkout',NULL,NULL,0.00000),(359,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-29 18:06:42','2016-02-29 18:06:42',NULL,'2016-02-29 21:06:42','USD','cart','new','checkout',NULL,NULL,0.00000),(360,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-02-29 18:40:04','2016-02-29 18:40:04',NULL,'2016-02-29 21:40:04','USD','cart','new','checkout',NULL,NULL,0.00000),(361,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-03-02 16:13:08','2016-03-02 16:13:08',NULL,'2016-03-02 19:13:08','USD','cart','new','checkout',NULL,NULL,0.00000),(362,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-03-02 16:23:57','2016-03-02 16:23:57',NULL,'2016-03-02 19:23:57','USD','cart','new','checkout',NULL,NULL,0.00000),(363,NULL,NULL,NULL,1,NULL,'cart',NULL,0,0,0,'2016-03-02 18:34:42','2016-03-02 18:34:42',NULL,'2016-03-02 21:34:42','USD','cart','new','checkout',NULL,NULL,0.00000);
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_comment`
--

DROP TABLE IF EXISTS `sylius_order_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `notify_customer` tinyint(1) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8EA9CF098D9F6D38` (`order_id`),
  CONSTRAINT `FK_8EA9CF098D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_comment`
--

LOCK TABLES `sylius_order_comment` WRITE;
/*!40000 ALTER TABLE `sylius_order_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_identity`
--

DROP TABLE IF EXISTS `sylius_order_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_identity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5757A18E8D9F6D38` (`order_id`),
  CONSTRAINT `FK_5757A18E8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_identity`
--

LOCK TABLES `sylius_order_identity` WRITE;
/*!40000 ALTER TABLE `sylius_order_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `units_total` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` VALUES (1,128,34,2,12300,0,24600,0,0),(2,130,34,1,12300,0,12300,0,0),(3,141,34,1,12300,0,12300,0,0),(4,142,34,1,12300,0,12300,0,0),(5,162,34,2,12300,0,24600,0,0),(6,166,34,1,12300,0,12300,0,0),(7,173,34,1,12300,0,12300,0,0),(8,178,34,1,12300,0,12300,0,0),(9,208,34,1,12300,0,12300,0,0),(10,211,34,2,12300,0,24600,0,0),(11,213,34,1,12300,0,12300,0,0),(12,215,34,1,12300,0,12300,0,0),(13,223,34,1,12300,0,12300,0,0),(14,226,34,1,12300,0,12300,0,0),(15,236,34,1,12300,0,12300,0,0),(16,243,43,2,4500,0,9000,0,0),(17,245,43,1,4500,0,4500,0,0),(19,246,43,2,4500,0,9000,0,0),(20,249,43,1,4500,0,4500,0,0),(21,250,43,1,4500,0,4500,0,0),(23,254,43,3,4500,0,13500,0,0),(24,256,43,2,4500,0,9000,0,0),(28,251,52,1,100,0,100,0,0),(29,259,43,1,100,0,100,0,0),(30,264,43,1,100,0,100,0,0),(31,267,43,1,100,0,100,0,0),(32,267,52,1,100,0,100,0,0),(35,270,43,1,100,0,100,0,0),(36,272,43,1,100,0,100,0,0),(37,274,52,1,100,0,100,0,0),(39,276,43,1,100,0,100,0,0),(40,277,43,1,100,0,100,0,0),(42,281,43,1,100,0,100,0,0),(43,282,43,1,100,0,100,0,0),(44,283,43,2,100,0,200,0,0),(45,286,43,1,100,0,100,0,0),(46,307,43,1,100,0,100,0,0),(47,308,43,1,100,0,100,0,0),(48,309,43,1,100,0,100,0,0),(49,313,43,1,100,0,100,0,0),(50,314,43,3,100,0,300,0,0),(51,316,43,2,100,0,200,0,0),(52,317,43,1,100,0,100,0,0),(53,319,43,5,100,0,500,0,0);
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `inventory_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `credit_card_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD47048FD0F` (`credit_card_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_D9191BD47048FD0F` FOREIGN KEY (`credit_card_id`) REFERENCES `sylius_credit_card` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` VALUES (20,3,NULL,277,'USD',12524,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000009-20\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":125.24,\"PAYMENTREQUEST_0_ITEMAMT\":125.24,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"L_PAYMENTREQUEST_0_AMT1\":123,\"L_PAYMENTREQUEST_0_QTY1\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/uqShfq3toq7iromkB05Wzo-Mwo2Pj2Tg3d0TpTnrnCs\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/uqShfq3toq7iromkB05Wzo-Mwo2Pj2Tg3d0TpTnrnCs\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/hK8zRAb4wbZGJbhn-_FpjQdCbf89QXzH7bzeHgjPUnE\",\"TIMESTAMP\":\"2016-01-26T23:41:49Z\",\"CORRELATIONID\":\"550ae23fe4cbc\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-26 23:41:29','2016-01-26 23:41:50',NULL),(21,3,NULL,277,'USD',12650,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000009-21\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":126.5,\"PAYMENTREQUEST_0_ITEMAMT\":126.5,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"L_PAYMENTREQUEST_0_AMT1\":123,\"L_PAYMENTREQUEST_0_QTY1\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/MgLEYNTT2Jw90fEVpb1EIlXfyn5pPpKgKut-6l916Vk\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/MgLEYNTT2Jw90fEVpb1EIlXfyn5pPpKgKut-6l916Vk\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/0Dbm5LlZ77fb-l1ZmXxCGDVJnYgAN26rgOnI2eX-xw8\",\"TIMESTAMP\":\"2016-01-26T23:43:24Z\",\"CORRELATIONID\":\"e99a5481af344\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-26 23:43:10','2016-01-26 23:43:26',NULL),(22,6,NULL,277,'USD',352,'cancelled','[]','2016-01-26 23:46:57','2016-01-26 23:48:34',NULL),(23,6,NULL,277,'USD',352,'cancelled','{\"amount\":352,\"currency\":\"USD\",\"description\":\"Order containing 1 items for a total of 3.52\"}','2016-01-26 23:48:44','2016-01-26 23:51:58',NULL),(24,7,NULL,277,'USD',352,'completed','{\"captured\":true}','2016-01-26 23:52:05','2016-01-26 23:52:35',NULL),(25,3,NULL,281,'USD',101,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000010-25\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.01,\"PAYMENTREQUEST_0_ITEMAMT\":1.01,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/RjkNP90sRmiZkfvapbnSp6nGDSvJiu55iMztYIflAws\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/RjkNP90sRmiZkfvapbnSp6nGDSvJiu55iMztYIflAws\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/f3vIjU17t3nnoqFRKxhOfwKsIVKJuowmrnVErcVkYJo\",\"TIMESTAMP\":\"2016-01-27T16:44:27Z\",\"CORRELATIONID\":\"28d6293257e8\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-27 16:44:13','2016-01-27 16:44:29',NULL),(26,3,NULL,281,'USD',102,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000010-26\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.02,\"PAYMENTREQUEST_0_ITEMAMT\":1.02,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/bJvYYSDv0EbV2AzbHNLLAtuthqKTSL1X8YAUq7cKRh8\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/bJvYYSDv0EbV2AzbHNLLAtuthqKTSL1X8YAUq7cKRh8\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/7mgJRPPr4pNBY-wIkdCVKafbWAT5Rn6HvVuOgYnXtRk\",\"TIMESTAMP\":\"2016-01-27T16:48:53Z\",\"CORRELATIONID\":\"1d8c2b5a9ffab\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10413\",\"L_SHORTMESSAGE0\":\"Transaction refused because of an invalid argument. See additional error messages for details.\",\"L_LONGMESSAGE0\":\"The totals of the cart item amounts do not match order amounts.\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-27 16:48:40','2016-01-27 16:48:55',NULL),(27,3,NULL,281,'USD',103,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000010-27\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.03,\"PAYMENTREQUEST_0_ITEMAMT\":1.03,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/1CLgtSYHPFgMRUm0RwHm7-Uk9ZBiw30OYzdEuI4cz6k\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/1CLgtSYHPFgMRUm0RwHm7-Uk9ZBiw30OYzdEuI4cz6k\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/ZSWx-iOOV3o2YFxzCKL6AkwdCCEc_NFuTpDj1miPydo\",\"TIMESTAMP\":\"2016-01-27T16:55:39Z\",\"CORRELATIONID\":\"528fa1896b8e0\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10413\",\"L_SHORTMESSAGE0\":\"Transaction refused because of an invalid argument. See additional error messages for details.\",\"L_LONGMESSAGE0\":\"The totals of the cart item amounts do not match order amounts.\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-27 16:55:26','2016-01-27 16:55:41',NULL),(28,3,NULL,281,'USD',104,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000010-28\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.04,\"PAYMENTREQUEST_0_ITEMAMT\":1.04,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/tRhg4KjN13_lWKYhf1sWsF-l21VBg8qrVmjeG4WnpxM\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/tRhg4KjN13_lWKYhf1sWsF-l21VBg8qrVmjeG4WnpxM\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/CllRcM9Nbmygh8cSBK14xZ0_iDTIfNh6EDFNQ5l9S2A\",\"TIMESTAMP\":\"2016-01-27T16:56:27Z\",\"CORRELATIONID\":\"cb05009fc85b\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-27 16:56:15','2016-01-27 16:56:28',NULL),(29,3,NULL,281,'USD',105,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000010-29\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.05,\"PAYMENTREQUEST_0_ITEMAMT\":1.05,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/kUk54ULShbJITzDAxnqctqj8dYkh_xVI7snjbIG7T9w\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/kUk54ULShbJITzDAxnqctqj8dYkh_xVI7snjbIG7T9w\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/P1i50ZY1pC1ekFER-cow-u552k7dqHlCMwTQ1Q7v0Ac\",\"TIMESTAMP\":\"2016-01-27T17:05:36Z\",\"CORRELATIONID\":\"47735a155cbec\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-27 17:05:22','2016-01-27 17:05:38',NULL),(30,7,NULL,281,'USD',105,'completed','{\"captured\":true}','2016-01-27 17:05:49','2016-01-27 17:06:04',NULL),(31,3,NULL,282,'USD',101,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000011-31\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.01,\"PAYMENTREQUEST_0_ITEMAMT\":1.01,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/VXXS8m2PRdg-av200dCGaQuorTt-OvXSODzqRwEcqeQ\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/VXXS8m2PRdg-av200dCGaQuorTt-OvXSODzqRwEcqeQ\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/PAjNel5aPXB1CGjCfaQbsj6Hq3o0kF8NMxpvny4KflM\",\"TIMESTAMP\":\"2016-01-27T22:00:24Z\",\"CORRELATIONID\":\"dcebf5ee0eb5\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-27 22:00:12','2016-01-27 22:00:26',NULL),(32,8,NULL,282,'USD',101,'cancelled','[]','2016-01-27 22:00:34','2016-01-27 22:23:44',NULL),(33,8,NULL,282,'USD',101,'cancelled','[]','2016-01-27 22:23:51','2016-01-27 22:36:43',NULL),(34,3,NULL,282,'USD',102,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000011-34\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.02,\"PAYMENTREQUEST_0_ITEMAMT\":1.02,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/kT04HH_ET748U7LuZHU_DeqB7E-UBcTUXC9Twg04MZo\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/kT04HH_ET748U7LuZHU_DeqB7E-UBcTUXC9Twg04MZo\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/fHSKmMI1gDLpqR8PGJ7fMtk4ptdswtYS7dXsOI2szlw\",\"TIMESTAMP\":\"2016-01-27T22:36:57Z\",\"CORRELATIONID\":\"512426abbd936\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-27 22:36:43','2016-01-27 22:36:59',NULL),(35,3,NULL,282,'USD',103,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000011-35\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.03,\"PAYMENTREQUEST_0_ITEMAMT\":1.03,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/XBprnJkWYYokIznIf_xDqP2ANNBA8hv3GruXK1mtc4k\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/XBprnJkWYYokIznIf_xDqP2ANNBA8hv3GruXK1mtc4k\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/bCwk9oQRr8ZxL5-zz1YzeizOQbN53TQ1qd1ze4BMh84\",\"TIMESTAMP\":\"2016-01-27T22:39:54Z\",\"CORRELATIONID\":\"715832563f20e\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-27 22:39:41','2016-01-27 22:39:56',NULL),(36,7,NULL,282,'USD',103,'completed','{\"captured\":true}','2016-01-27 22:40:15','2016-01-28 00:50:22',NULL),(37,3,NULL,283,'USD',101,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000012-37\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.01,\"PAYMENTREQUEST_0_ITEMAMT\":1.01,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/KKAhSRO6UUAytyz7U5oa6ogVGyzndyKvh14Ck3Zavrc\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/KKAhSRO6UUAytyz7U5oa6ogVGyzndyKvh14Ck3Zavrc\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/WXlimhwObEsFeJ_uXNTP2_un_tgrchxREBmEHfYief4\",\"TIMESTAMP\":\"2016-01-28T01:09:06Z\",\"CORRELATIONID\":\"c3380f0445856\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-28 01:01:47','2016-01-28 01:09:13',NULL),(38,3,NULL,283,'USD',102,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000012-38\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.02,\"PAYMENTREQUEST_0_ITEMAMT\":1.02,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/WqBbFglbxWXC_xFMl9xZ8HhvEFtN9GDfcA3q6lPHPtU\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/WqBbFglbxWXC_xFMl9xZ8HhvEFtN9GDfcA3q6lPHPtU\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/notify\\/rLSeVCwNeVA49zJP9QL51XkeysgWYwszG3dWRfmBUBY\",\"TIMESTAMP\":\"2016-01-28T01:10:13Z\",\"CORRELATIONID\":\"64cdb899544ae\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-28 01:10:00','2016-01-28 01:10:15',NULL),(39,3,NULL,283,'USD',103,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000012-39\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.03,\"PAYMENTREQUEST_0_ITEMAMT\":1.03,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"TOKEN\":null,\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/aecS1Y9DFNp0zqTwg1Ys49LwVeI4M1-Zv0o2hyk5cOY\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/aecS1Y9DFNp0zqTwg1Ys49LwVeI4M1-Zv0o2hyk5cOY\",\"TIMESTAMP\":\"2016-01-28T01:31:52Z\",\"CORRELATIONID\":\"8a20c49b8ab44\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-28 01:12:07','2016-01-28 01:31:54',NULL),(40,3,NULL,283,'USD',104,'failed','{\"PAYMENTREQUEST_0_INVNUM\":\"000000012-40\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":1.04,\"PAYMENTREQUEST_0_ITEMAMT\":1.04,\"L_PAYMENTREQUEST_0_AMT0\":1,\"L_PAYMENTREQUEST_0_QTY0\":1,\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"TOKEN\":null,\"RETURNURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/5dvwqoQLK3dlkPtMq2WNZ8n-NW78bL_SJcbsKJ7imUk\",\"CANCELURL\":\"http:\\/\\/kulashare.com\\/dev\\/web\\/payment\\/capture\\/5dvwqoQLK3dlkPtMq2WNZ8n-NW78bL_SJcbsKJ7imUk\",\"TIMESTAMP\":\"2016-01-28T01:32:19Z\",\"CORRELATIONID\":\"fe549a692bb6\",\"ACK\":\"Failure\",\"VERSION\":\"65.1\",\"BUILD\":\"18308778\",\"L_ERRORCODE0\":\"10002\",\"L_SHORTMESSAGE0\":\"Security error\",\"L_LONGMESSAGE0\":\"Security header is not valid\",\"L_SEVERITYCODE0\":\"Error\"}','2016-01-28 01:32:06','2016-01-28 01:32:21',NULL),(41,6,NULL,283,'USD',104,'cancelled','{\"amount\":104,\"currency\":\"USD\",\"description\":\"Order containing 1 items for a total of 1.04\"}','2016-01-28 01:42:42','2016-01-28 02:04:27',NULL),(42,7,NULL,286,'USD',100,'completed','{\"captured\":true}','2016-01-28 23:52:54','2016-01-28 23:53:11',NULL),(43,7,NULL,307,'USD',100,'completed','{\"captured\":true}','2016-02-08 20:52:48','2016-02-08 20:53:20',NULL),(44,7,NULL,308,'USD',100,'cancelled','[]','2016-02-08 21:03:10','2016-02-08 21:04:46','2016-02-08 21:12:59'),(45,7,NULL,308,'USD',100,'new','[]','2016-02-08 21:04:54','2016-02-08 21:04:54','2016-02-08 21:12:59'),(46,7,NULL,309,'USD',100,'cancelled','[]','2016-02-08 21:35:55','2016-02-08 21:43:52',NULL),(47,7,NULL,309,'USD',100,'cancelled','[]','2016-02-08 21:43:57','2016-02-08 21:57:22',NULL),(48,7,NULL,309,'USD',100,'new','[]','2016-02-08 21:57:30','2016-02-08 21:57:30',NULL);
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_config`
--

DROP TABLE IF EXISTS `sylius_payment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `payment_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_config`
--

LOCK TABLES `sylius_payment_config` WRITE;
/*!40000 ALTER TABLE `sylius_payment_config` DISABLE KEYS */;
INSERT INTO `sylius_payment_config` VALUES (1,'','','');
/*!40000 ALTER TABLE `sylius_payment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gateway` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method`
--

LOCK TABLES `sylius_payment_method` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
INSERT INTO `sylius_payment_method` VALUES (3,'PayPal','paypal_express_checkout',NULL,1,'2016-01-25 21:17:23','2016-01-26 22:36:51'),(6,'Credit Card','stripe_checkout',NULL,1,'2016-01-26 23:44:50','2016-01-26 23:47:58'),(7,'Test','dummy',NULL,1,'2016-01-26 23:50:25','2016-01-26 23:50:25'),(8,'PayPal Pro','paypal_pro_checkout',NULL,1,'2016-01-27 21:28:03','2016-01-27 21:28:04');
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_translation`
--

LOCK TABLES `sylius_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_security_token`
--

LOCK TABLES `sylius_payment_security_token` WRITE;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
INSERT INTO `sylius_payment_security_token` VALUES ('0Dbm5LlZ77fb-l1ZmXxCGDVJnYgAN26rgOnI2eX-xw8','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:21;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/0Dbm5LlZ77fb-l1ZmXxCGDVJnYgAN26rgOnI2eX-xw8','paypal_express_checkout'),('5-2X6KKF8f46RkNAvjy7HuSR6Dlyjt6zlgsD8Ckc85w','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:46;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}','http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=ACb6bxJhJ_Ef3JMzBRYcvWMAEb-IEe-AYSNcPqDUzG4','http://kulashare.com/dev/web/payment/capture/5-2X6KKF8f46RkNAvjy7HuSR6Dlyjt6zlgsD8Ckc85w','dummy'),('59aDIfvLCkNiIPaqsnqYKaoWHORPHbgryO03z4Ivv0s','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:33;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=59aDIfvLCkNiIPaqsnqYKaoWHORPHbgryO03z4Ivv0s','paypal_pro_checkout'),('5qbT5eumK8seDP1EpbIYqLNZbYCtzSXSLVikUtJs-FI','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:44;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=5qbT5eumK8seDP1EpbIYqLNZbYCtzSXSLVikUtJs-FI','dummy'),('7mgJRPPr4pNBY-wIkdCVKafbWAT5Rn6HvVuOgYnXtRk','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:26;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/7mgJRPPr4pNBY-wIkdCVKafbWAT5Rn6HvVuOgYnXtRk','paypal_express_checkout'),('ACb6bxJhJ_Ef3JMzBRYcvWMAEb-IEe-AYSNcPqDUzG4','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:46;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=ACb6bxJhJ_Ef3JMzBRYcvWMAEb-IEe-AYSNcPqDUzG4','dummy'),('bCwk9oQRr8ZxL5-zz1YzeizOQbN53TQ1qd1ze4BMh84','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:35;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/bCwk9oQRr8ZxL5-zz1YzeizOQbN53TQ1qd1ze4BMh84','paypal_express_checkout'),('CIM2FLwKvQF2kGy6rcMtnV_LbL_uGKVMmozRZJaidCs','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:22;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}','http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=cIO1A3VR4N1US8mXM7L8K7CxaRM21Rdk1P5-eFTjBIY','http://kulashare.com/dev/web/payment/capture/CIM2FLwKvQF2kGy6rcMtnV_LbL_uGKVMmozRZJaidCs','stripe'),('cIO1A3VR4N1US8mXM7L8K7CxaRM21Rdk1P5-eFTjBIY','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:22;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=cIO1A3VR4N1US8mXM7L8K7CxaRM21Rdk1P5-eFTjBIY','stripe'),('CllRcM9Nbmygh8cSBK14xZ0_iDTIfNh6EDFNQ5l9S2A','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:28;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/CllRcM9Nbmygh8cSBK14xZ0_iDTIfNh6EDFNQ5l9S2A','paypal_express_checkout'),('f3vIjU17t3nnoqFRKxhOfwKsIVKJuowmrnVErcVkYJo','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:25;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/f3vIjU17t3nnoqFRKxhOfwKsIVKJuowmrnVErcVkYJo','paypal_express_checkout'),('fHSKmMI1gDLpqR8PGJ7fMtk4ptdswtYS7dXsOI2szlw','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:34;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/fHSKmMI1gDLpqR8PGJ7fMtk4ptdswtYS7dXsOI2szlw','paypal_express_checkout'),('HJVBRqZ2s1Vlu--yAmKqiAVdgxVlgao-S023dOB71p0','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:23;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}','http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=vr_jRFiOzOe2qUtCufvVOHrDGafvKE2WaLRGvttnyu8','http://kulashare.com/dev/web/payment/capture/HJVBRqZ2s1Vlu--yAmKqiAVdgxVlgao-S023dOB71p0','stripe_checkout'),('hK8zRAb4wbZGJbhn-_FpjQdCbf89QXzH7bzeHgjPUnE','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:20;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/hK8zRAb4wbZGJbhn-_FpjQdCbf89QXzH7bzeHgjPUnE','paypal_express_checkout'),('IButpCCQsIj0_Q2l5KrKh_-bIMEGqSlsElnVsRJiFSc','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:41;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}','http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=oCyJG_r516kvwi1s30wMYOcIN5CP3a3-Z66HcflXlm0','http://kulashare.com/dev/web/payment/capture/IButpCCQsIj0_Q2l5KrKh_-bIMEGqSlsElnVsRJiFSc','stripe_checkout'),('Id5zo1GajxAezr0wfXLA373MfJx5caqnnyIxJKQWdKo','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:32;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=Id5zo1GajxAezr0wfXLA373MfJx5caqnnyIxJKQWdKo','paypal_pro_checkout'),('KtRKVP6YUvYMvPWUt3MEJLESvl3RNlj1PgZtxe1Moy4','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:33;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}','http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=59aDIfvLCkNiIPaqsnqYKaoWHORPHbgryO03z4Ivv0s','http://kulashare.com/dev/web/payment/capture/KtRKVP6YUvYMvPWUt3MEJLESvl3RNlj1PgZtxe1Moy4','paypal_pro_checkout'),('oCyJG_r516kvwi1s30wMYOcIN5CP3a3-Z66HcflXlm0','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:41;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=oCyJG_r516kvwi1s30wMYOcIN5CP3a3-Z66HcflXlm0','stripe_checkout'),('P1i50ZY1pC1ekFER-cow-u552k7dqHlCMwTQ1Q7v0Ac','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:29;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/P1i50ZY1pC1ekFER-cow-u552k7dqHlCMwTQ1Q7v0Ac','paypal_express_checkout'),('PAjNel5aPXB1CGjCfaQbsj6Hq3o0kF8NMxpvny4KflM','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:31;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/PAjNel5aPXB1CGjCfaQbsj6Hq3o0kF8NMxpvny4KflM','paypal_express_checkout'),('pMnVSOJwBDEHL2XoxOlEUnxPTn2GwuJaG2a-FP6R-34','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:39;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/pMnVSOJwBDEHL2XoxOlEUnxPTn2GwuJaG2a-FP6R-34','paypal_express_checkout'),('qd5q7qd4_B6FBhhBbNmKdCK6A5-n2lqLxG8M_uPzLQc','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:45;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=qd5q7qd4_B6FBhhBbNmKdCK6A5-n2lqLxG8M_uPzLQc','dummy'),('rLSeVCwNeVA49zJP9QL51XkeysgWYwszG3dWRfmBUBY','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:38;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/rLSeVCwNeVA49zJP9QL51XkeysgWYwszG3dWRfmBUBY','paypal_express_checkout'),('uw_jIBzyKI38wQQQOeSNx3XFwS4tb61tZEfQUQGL0xs','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:32;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}','http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=Id5zo1GajxAezr0wfXLA373MfJx5caqnnyIxJKQWdKo','http://kulashare.com/dev/web/payment/capture/uw_jIBzyKI38wQQQOeSNx3XFwS4tb61tZEfQUQGL0xs','paypal_pro_checkout'),('vr_jRFiOzOe2qUtCufvVOHrDGafvKE2WaLRGvttnyu8','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:23;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=vr_jRFiOzOe2qUtCufvVOHrDGafvKE2WaLRGvttnyu8','stripe_checkout'),('WA5z0Rb6Q6HlM4MDIEuoyXiNGvqCVzBL_2-K3I8mtRw','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:45;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}','http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=qd5q7qd4_B6FBhhBbNmKdCK6A5-n2lqLxG8M_uPzLQc','http://kulashare.com/dev/web/payment/capture/WA5z0Rb6Q6HlM4MDIEuoyXiNGvqCVzBL_2-K3I8mtRw','dummy'),('WXlimhwObEsFeJ_uXNTP2_un_tgrchxREBmEHfYief4','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:37;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/WXlimhwObEsFeJ_uXNTP2_un_tgrchxREBmEHfYief4','paypal_express_checkout'),('zcNjS-BtpBsJefhbu-t4YES5KGE83-5X9kTZX_7gBWA','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:44;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}','http://kulashare.com/dev/web/checkout/purchase/forward?payum_token=5qbT5eumK8seDP1EpbIYqLNZbYCtzSXSLVikUtJs-FI','http://kulashare.com/dev/web/payment/capture/zcNjS-BtpBsJefhbu-t4YES5KGE83-5X9kTZX_7gBWA','dummy'),('ZSWx-iOOV3o2YFxzCKL6AkwdCCEc_NFuTpDj1miPydo','C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:27;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://kulashare.com/dev/web/payment/notify/ZSWx-iOOV3o2YFxzCKL6AkwdCCEc_NFuTpDj1miPydo','paypal_express_checkout');
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_permission`
--

DROP TABLE IF EXISTS `sylius_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C5160A4E727ACA70` (`parent_id`),
  CONSTRAINT `FK_C5160A4E727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_permission` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_permission`
--

LOCK TABLES `sylius_permission` WRITE;
/*!40000 ALTER TABLE `sylius_permission` DISABLE KEYS */;
INSERT INTO `sylius_permission` VALUES (1,NULL,'root','Root',1,586,0,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(2,252,'sylius.manage.customer','Manage customers',496,507,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(3,2,'sylius.customer.show','Show customer',497,498,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(4,2,'sylius.customer.index','List customers',499,500,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(5,2,'sylius.customer.create','Create customer',501,502,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(6,2,'sylius.customer.update','Edit customer',503,504,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(7,2,'sylius.customer.delete','Delete customer',505,506,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(8,252,'sylius.manage.group','Manage groups',508,519,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(9,8,'sylius.group.show','Show group',509,510,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(10,8,'sylius.group.index','List groups',511,512,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(11,8,'sylius.group.create','Create group',513,514,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(12,8,'sylius.group.update','Edit group',515,516,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(13,8,'sylius.group.delete','Delete group',517,518,4,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(14,1,'sylius.manage.channel','Manage channels',2,13,1,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(15,14,'sylius.channel.show','Show channel',3,4,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(16,14,'sylius.channel.index','List channels',5,6,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(17,14,'sylius.channel.create','Create channel',7,8,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(18,14,'sylius.channel.update','Edit channel',9,10,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(19,14,'sylius.channel.delete','Delete channel',11,12,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(20,251,'sylius.manage.role','Manage roles',471,482,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(21,20,'sylius.role.show','Show role',472,473,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(22,20,'sylius.role.index','List roles',474,475,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(23,20,'sylius.role.create','Create role',476,477,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(24,20,'sylius.role.update','Edit role',478,479,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(25,20,'sylius.role.delete','Delete role',480,481,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(26,251,'sylius.manage.permission','Manage permissions',483,494,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(27,26,'sylius.permission.show','Show permission',484,485,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(28,26,'sylius.permission.index','List permissions',486,487,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(29,26,'sylius.permission.create','Create permission',488,489,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(30,26,'sylius.permission.update','Edit permission',490,491,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(31,26,'sylius.permission.delete','Delete permission',492,493,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(32,246,'sylius.manage.product','Manage products',113,124,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(33,32,'sylius.product.show','Show product',114,115,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(34,32,'sylius.product.index','List products',116,117,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(35,32,'sylius.product.create','Create product',118,119,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(36,32,'sylius.product.update','Edit product',120,121,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(37,32,'sylius.product.delete','Delete product',122,123,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(38,246,'sylius.manage.product_attribute','Manage product attributes',125,136,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(39,38,'sylius.product_attribute.show','Show product attribute',126,127,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(40,38,'sylius.product_attribute.index','List product attributes',128,129,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(41,38,'sylius.product_attribute.create','Create product attribute',130,131,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(42,38,'sylius.product_attribute.update','Edit product attribute',132,133,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(43,38,'sylius.product_attribute.delete','Delete product attribute',134,135,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(44,246,'sylius.manage.product_option','Manage product options',137,148,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(45,44,'sylius.product_option.show','Show product option',138,139,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(46,44,'sylius.product_option.index','List product options',140,141,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(47,44,'sylius.product_option.create','Create product option',142,143,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(48,44,'sylius.product_option.update','Edit product option',144,145,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(49,44,'sylius.product_option.delete','Delete product option',146,147,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(50,246,'sylius.manage.product_archetype','Manage product archetypes',149,160,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(51,50,'sylius.product_archetype.show','Show product archetype',150,151,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(52,50,'sylius.product_archetype.index','List product archetypes',152,153,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(53,50,'sylius.product_archetype.create','Create product archetype',154,155,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(54,50,'sylius.product_archetype.update','Edit product archetype',156,157,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(55,50,'sylius.product_archetype.delete','Delete product archetype',158,159,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(56,246,'sylius.manage.product_variant','Manage product variants',161,172,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(57,56,'sylius.product_variant.show','Show product variant',162,163,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(58,56,'sylius.product_variant.index','List product variants',164,165,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(59,56,'sylius.product_variant.create','Create product variant',166,167,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(60,56,'sylius.product_variant.update','Edit product variant',168,169,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(61,56,'sylius.product_variant.delete','Delete product variant',170,171,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(62,246,'sylius.manage.taxonomy','Manage taxonomies',173,184,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(63,62,'sylius.taxonomy.show','Show taxonomy',174,175,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(64,62,'sylius.taxonomy.index','List taxonomies',176,177,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(65,62,'sylius.taxonomy.create','Create taxonomy',178,179,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(66,62,'sylius.taxonomy.update','Edit taxonomy',180,181,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(67,62,'sylius.taxonomy.delete','Delete taxonomy',182,183,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(68,246,'sylius.manage.taxon','Manage taxons',185,196,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(69,68,'sylius.taxon.show','Show taxon',186,187,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(70,68,'sylius.taxon.index','List taxons',188,189,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(71,68,'sylius.taxon.create','Create taxon',190,191,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(72,68,'sylius.taxon.update','Edit taxon',192,193,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(73,68,'sylius.taxon.delete','Delete taxon',194,195,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(74,247,'sylius.manage.order','Manage orders',211,222,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(75,74,'sylius.order.show','Show order',212,213,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(76,74,'sylius.order.index','List orders',214,215,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(77,74,'sylius.order.create','Create order',216,217,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(78,74,'sylius.order.update','Edit order',218,219,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(79,74,'sylius.order.delete','Delete order',220,221,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(80,248,'sylius.manage.shipment','Manage shipments',285,296,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(81,80,'sylius.shipment.show','Show shipment',286,287,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(82,80,'sylius.shipment.index','List shipments',288,289,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(83,80,'sylius.shipment.create','Create shipment',290,291,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(84,80,'sylius.shipment.update','Edit shipment',292,293,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(85,80,'sylius.shipment.delete','Delete shipment',294,295,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(86,249,'sylius.manage.promotion','Manage promotions',323,334,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(87,86,'sylius.promotion.show','Show promotion',324,325,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(88,86,'sylius.promotion.index','List promotions',326,327,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(89,86,'sylius.promotion.create','Create promotion',328,329,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(90,86,'sylius.promotion.update','Edit promotion',330,331,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(91,86,'sylius.promotion.delete','Delete promotion',332,333,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(92,249,'sylius.manage.promotion_coupon','Manage promotion coupons',335,346,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(93,92,'sylius.promotion_coupon.show','Show coupon',336,337,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(94,92,'sylius.promotion_coupon.index','List coupons',338,339,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(95,92,'sylius.promotion_coupon.create','Create new coupon',340,341,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(96,92,'sylius.promotion_coupon.update','Edit coupon',342,343,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(97,92,'sylius.promotion_coupon.delete','Delete coupon',344,345,3,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(98,1,'sylius.manage.locale','Manage locales',14,25,1,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(99,98,'sylius.locale.show','Show locale',15,16,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(100,98,'sylius.locale.index','List locales',17,18,2,'2015-09-05 22:00:40','2015-09-05 22:00:40'),(101,98,'sylius.locale.create','Create locale',19,20,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(102,98,'sylius.locale.update','Edit locale',21,22,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(103,98,'sylius.locale.delete','Delete locale',23,24,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(104,247,'sylius.manage.payment','Manage payments',223,234,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(105,104,'sylius.payment.show','Show payment',224,225,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(106,104,'sylius.payment.index','List payments',226,227,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(107,104,'sylius.payment.create','Create payment',228,229,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(108,104,'sylius.payment.update','Edit payment',230,231,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(109,104,'sylius.payment.delete','Delete payment',232,233,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(110,1,'sylius.manage.payment_method','Manage payment methods',26,37,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(111,110,'sylius.payment_method.show','Show payment method',27,28,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(112,110,'sylius.payment_method.index','List payment methods',29,30,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(113,110,'sylius.payment_method.create','Create payment method',31,32,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(114,110,'sylius.payment_method.update','Edit payment method',33,34,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(115,110,'sylius.payment_method.delete','Delete payment method',35,36,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(116,1,'sylius.manage.currency','Manage currencies',38,49,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(117,116,'sylius.currency.show','Show currency',39,40,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(118,116,'sylius.currency.index','List currencies',41,42,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(119,116,'sylius.currency.create','Create currency',43,44,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(120,116,'sylius.currency.update','Edit currency',45,46,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(121,116,'sylius.currency.delete','Delete currency',47,48,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(122,253,'sylius.manage.tax_category','Manage tax categories',527,538,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(123,122,'sylius.tax_category.show','Show tax category',528,529,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(124,122,'sylius.tax_category.index','List tax categories',530,531,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(125,122,'sylius.tax_category.create','Create tax category',532,533,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(126,122,'sylius.tax_category.update','Edit tax category',534,535,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(127,122,'sylius.tax_category.delete','Delete tax category',536,537,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(128,253,'sylius.manage.tax_rate','Manage tax rates',539,550,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(129,128,'sylius.tax_rate.show','Show tax rate',540,541,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(130,128,'sylius.tax_rate.index','List tax rates',542,543,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(131,128,'sylius.tax_rate.create','Create tax rate',544,545,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(132,128,'sylius.tax_rate.update','Edit tax rate',546,547,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(133,128,'sylius.tax_rate.delete','Delete tax rate',548,549,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(134,248,'sylius.manage.shipping_method','Manage shipping methods',297,308,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(135,134,'sylius.shipping_method.show','Show shipping method',298,299,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(136,134,'sylius.shipping_method.index','List shipping methods',300,301,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(137,134,'sylius.shipping_method.create','Create shipping method',302,303,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(138,134,'sylius.shipping_method.update','Edit shipping method',304,305,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(139,134,'sylius.shipping_method.delete','Delete shipping method',306,307,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(140,248,'sylius.manage.shipping_category','Manage shipping categories',309,320,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(141,140,'sylius.shipping_category.show','Show shipping category',310,311,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(142,140,'sylius.shipping_category.index','List shipping categories',312,313,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(143,140,'sylius.shipping_category.create','Create shipping category',314,315,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(144,140,'sylius.shipping_category.update','Edit shipping category',316,317,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(145,140,'sylius.shipping_category.delete','Delete shipping category',318,319,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(146,1,'sylius.manage.country','Manage countries',50,61,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(147,146,'sylius.country.show','Show country',51,52,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(148,146,'sylius.country.index','List countries',53,54,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(149,146,'sylius.country.create','Create country',55,56,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(150,146,'sylius.country.update','Edit country',57,58,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(151,146,'sylius.country.delete','Delete country',59,60,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(152,1,'sylius.manage.province','Manage provinces',62,73,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(153,152,'sylius.province.show','Show province',63,64,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(154,152,'sylius.province.index','List provinces',65,66,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(155,152,'sylius.province.create','Create province',67,68,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(156,152,'sylius.province.update','Edit province',69,70,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(157,152,'sylius.province.delete','Delete province',71,72,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(158,1,'sylius.manage.zone','Manage zones',74,85,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(159,158,'sylius.zone.show','Show zone',75,76,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(160,158,'sylius.zone.index','List zones',77,78,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(161,158,'sylius.zone.create','Create zone',79,80,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(162,158,'sylius.zone.update','Edit zone',81,82,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(163,158,'sylius.zone.delete','Delete zone',83,84,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(164,1,'sylius.manage.api_client','Manage API clients',86,97,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(165,164,'sylius.api_client.show','Show API client',87,88,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(166,164,'sylius.api_client.index','List API clients',89,90,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(167,164,'sylius.api_client.create','Create API client',91,92,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(168,164,'sylius.api_client.update','Edit API client',93,94,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(169,164,'sylius.api_client.delete','Delete API client',95,96,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(170,250,'sylius.manage.static_content','Manage static contents',361,372,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(171,170,'sylius.static_content.show','Show static content',362,363,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(172,170,'sylius.static_content.index','List static contents',364,365,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(173,170,'sylius.static_content.create','Create static content',366,367,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(174,170,'sylius.static_content.update','Edit static content',368,369,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(175,170,'sylius.static_content.delete','Delete static content',370,371,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(176,250,'sylius.manage.menu','Manage menus',373,384,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(177,176,'sylius.menu.show','Show menu',374,375,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(178,176,'sylius.menu.index','List menus',376,377,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(179,176,'sylius.menu.create','Create menu',378,379,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(180,176,'sylius.menu.update','Edit menu',380,381,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(181,176,'sylius.menu.delete','Delete menu',382,383,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(182,250,'sylius.manage.route','Manage routes',385,396,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(183,182,'sylius.route.show','Show route',386,387,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(184,182,'sylius.route.index','List routes',388,389,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(185,182,'sylius.route.create','Create route',390,391,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(186,182,'sylius.route.update','Edit route',392,393,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(187,182,'sylius.route.delete','Delete route',394,395,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(188,250,'sylius.manage.simple_block','Manage simple blocks',397,408,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(189,188,'sylius.simple_block.show','Show simple block',398,399,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(190,188,'sylius.simple_block.index','List simple blocks',400,401,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(191,188,'sylius.simple_block.create','Create simple block',402,403,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(192,188,'sylius.simple_block.update','Edit simple block',404,405,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(193,188,'sylius.simple_block.delete','Delete simple block',406,407,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(194,250,'sylius.manage.string_block','Manage string blocks',409,420,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(195,194,'sylius.string_block.show','Show string block',410,411,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(196,194,'sylius.string_block.index','List string blocks',412,413,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(197,194,'sylius.string_block.create','Create string block',414,415,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(198,194,'sylius.string_block.update','Edit string block',416,417,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(199,194,'sylius.string_block.delete','Delete string block',418,419,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(200,250,'sylius.manage.imagine_block','Manage imagine blocks',421,432,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(201,200,'sylius.imagine_block.show','Show imagine block',422,423,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(202,200,'sylius.imagine_block.index','List imagine blocks',424,425,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(203,200,'sylius.imagine_block.create','Create imagine block',426,427,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(204,200,'sylius.imagine_block.update','Edit imagine block',428,429,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(205,200,'sylius.imagine_block.delete','Delete imagine block',430,431,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(206,250,'sylius.manage.slideshow_block','Manage slideshow blocks',433,444,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(207,206,'sylius.slideshow_block.show','Show slideshow block',434,435,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(208,206,'sylius.slideshow_block.index','List slideshow blocks',436,437,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(209,206,'sylius.slideshow_block.create','Create slideshow block',438,439,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(210,206,'sylius.slideshow_block.update','Edit slideshow block',440,441,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(211,206,'sylius.slideshow_block.delete','Delete slideshow block',442,443,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(212,250,'sylius.manage.slideshow','Manage slideshows',445,456,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(213,212,'sylius.slideshow.show','Show slideshow',446,447,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(214,212,'sylius.slideshow.index','List slideshows',448,449,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(215,212,'sylius.slideshow.create','Create slideshow',450,451,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(216,212,'sylius.slideshow.update','Edit slideshow',452,453,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(217,212,'sylius.slideshow.delete','Delete slideshow',454,455,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(218,249,'sylius.manage.email','Manage emails',347,358,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(219,218,'sylius.email.show','Show email',348,349,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(220,218,'sylius.email.index','List emails',350,351,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(221,218,'sylius.email.create','Create email',352,353,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(222,218,'sylius.email.update','Edit email',354,355,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(223,218,'sylius.email.delete','Delete email',356,357,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(224,247,'sylius.manage.report','Manage reports',235,246,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(225,224,'sylius.report.show','Show report',236,237,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(226,224,'sylius.report.index','List reports',238,239,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(227,224,'sylius.report.create','Create report',240,241,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(228,224,'sylius.report.update','Edit report',242,243,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(229,224,'sylius.report.delete','Delete report',244,245,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(230,254,'sylius.manage.contact_request','Manage contact_requests',553,564,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(231,230,'sylius.contact_request.show','Show contact request',554,555,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(232,230,'sylius.contact_request.index','List contact requests',556,557,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(233,230,'sylius.contact_request.create','Create contact request',558,559,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(234,230,'sylius.contact_request.update','Edit contact request',560,561,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(235,230,'sylius.contact_request.delete','Delete contact request',562,563,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(236,254,'sylius.manage.contact_topic','Manage contact topics',565,576,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(237,236,'sylius.contact_topic.show','Show contact topic',566,567,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(238,236,'sylius.contact_topic.index','List contact topics',568,569,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(239,236,'sylius.contact_topic.create','Create contact topic',570,571,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(240,236,'sylius.contact_topic.update','Edit contact topic',572,573,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(241,236,'sylius.contact_topic.delete','Delete contact topic',574,575,3,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(242,1,'sylius.manage.settings','Manage settings',98,111,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(243,242,'sylius.settings.general','Manage general settings',99,100,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(244,242,'sylius.settings.security','Manage security settings',101,102,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(245,242,'sylius.settings.taxation','Manage taxation settings',103,104,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(246,1,'sylius.catalog','Manage products catalog',112,209,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(247,1,'sylius.sales','Manage sales',210,283,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(248,1,'sylius.shipping','Manage shipping',284,321,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(249,1,'sylius.marketing','Manage marketing campaigns',322,359,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(250,1,'sylius.content','Manage contents',360,469,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(251,1,'sylius.security','Manage site security',470,525,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(252,251,'sylius.accounts','Manage user accounts',495,524,2,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(253,1,'sylius.taxes','Manage taxes',526,551,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(254,1,'sylius.support','Manage customer support',552,577,1,'2015-09-05 22:00:41','2015-09-05 22:00:41'),(255,252,'sylius.manage.user','Manage users',520,523,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(256,255,'sylius.user.delete','Delete user',521,522,4,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(257,250,'sylius.manage.metadata_container','Manage metadata',457,468,2,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(258,257,'sylius.metadata_container.show','Show metadata',458,459,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(259,257,'sylius.metadata_container.index','List metadata',460,461,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(260,257,'sylius.metadata_container.create','Create metadata',462,463,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(261,257,'sylius.metadata_container.update','Edit metadata',464,465,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(262,257,'sylius.metadata_container.delete','Delete metadata',466,467,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(263,247,'sylius.manage.adjustment','Manage adjustments',247,258,2,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(264,263,'sylius.adjustment.show','Show adjustment',248,249,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(265,263,'sylius.adjustment.index','List adjustments',250,251,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(266,263,'sylius.adjustment.create','Create adjustment',252,253,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(267,263,'sylius.adjustment.update','Edit adjustment',254,255,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(268,263,'sylius.adjustment.delete','Delete adjustment',256,257,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(269,247,'sylius.manage.order_item','Manage order items',259,270,2,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(270,269,'sylius.order_item.show','Show order item',260,261,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(271,269,'sylius.order_item.index','List order items',262,263,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(272,269,'sylius.order_item.create','Create order item',264,265,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(273,269,'sylius.order_item.update','Edit order item',266,267,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(274,269,'sylius.order_item.delete','Delete order item',268,269,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(275,246,'sylius.manage.product_association_type','Manage association types',197,208,2,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(276,275,'sylius.product_association_type.show','Show association type',198,199,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(277,275,'sylius.product_association_type.index','List association types',200,201,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(278,275,'sylius.product_association_type.create','Create association type',202,203,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(279,275,'sylius.product_association_type.update','Edit association type',204,205,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(280,275,'sylius.product_association_type.delete','Delete association type',206,207,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(281,242,'sylius.settings.sylius_general','Manage general settings',105,106,2,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(282,242,'sylius.settings.sylius_security','Manage security settings',107,108,2,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(283,242,'sylius.settings.sylius_taxation','Manage taxation settings',109,110,2,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(284,247,'sylius.manage.product_review','Manage product reviews',271,282,2,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(285,284,'sylius.product_review.show','Show product review',272,273,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(286,284,'sylius.product_review.index','List product reviews',274,275,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(287,284,'sylius.product_review.create','Create product review',276,277,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(288,284,'sylius.product_review.update','Edit product review',278,279,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(289,284,'sylius.product_review.delete','Delete product review',280,281,3,'2016-03-03 02:52:19','2016-03-03 02:52:19'),(290,1,'kulashare.manage.message','Manage messages',578,585,1,'2016-03-03 19:03:51','2016-03-03 19:03:51'),(291,290,'kulashare.message.show','Show message',579,580,2,'2016-03-03 19:03:51','2016-03-03 19:03:51'),(292,290,'kulashare.message.index','List messages',581,582,2,'2016-03-03 19:03:51','2016-03-03 19:03:51'),(293,290,'kulashare.message.create','Create message',583,584,2,'2016-03-03 19:03:51','2016-03-03 19:03:51');
/*!40000 ALTER TABLE `sylius_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archetype_id` int(11) DEFAULT NULL,
  `main_taxon_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `restricted_zone` int(11) DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `type_rental` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `user_created_id` int(11) DEFAULT NULL,
  `available_until` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_677B9B74732C6CC7` (`archetype_id`),
  KEY `IDX_677B9B749E2D1A41` (`shipping_category_id`),
  KEY `IDX_677B9B74E64AACD3` (`restricted_zone`),
  KEY `IDX_677B9B74F987D8A8` (`user_created_id`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`),
  CONSTRAINT `FK_677B9B74732C6CC7` FOREIGN KEY (`archetype_id`) REFERENCES `sylius_product_archetype` (`id`),
  CONSTRAINT `FK_677B9B749E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_677B9B74E64AACD3` FOREIGN KEY (`restricted_zone`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_677B9B74F987D8A8` FOREIGN KEY (`user_created_id`) REFERENCES `sylius_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

LOCK TABLES `sylius_product` WRITE;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` VALUES (1,NULL,NULL,NULL,NULL,'2015-09-11 02:10:00','2015-09-11 02:12:53','2015-09-11 02:13:02',NULL,'choice',1,'day',-31.6304171,-60.6900953,8,NULL,0,0),(2,NULL,NULL,NULL,NULL,'2015-09-18 03:45:00','2015-09-18 03:48:56','2015-09-18 03:49:02',NULL,'choice',0,'day',NULL,NULL,8,NULL,0,0),(3,NULL,NULL,NULL,NULL,'2015-09-18 03:45:00','2015-09-18 03:51:43','2015-09-18 03:51:47',NULL,'choice',1,'day',NULL,NULL,8,NULL,0,0),(4,NULL,NULL,NULL,NULL,'2015-09-19 22:35:39','2015-09-19 22:35:39','2015-09-19 22:35:42',NULL,'choice',1,'hour',NULL,NULL,8,NULL,0,0),(5,NULL,NULL,NULL,NULL,'2015-09-19 23:00:53','2015-09-19 23:00:53','2015-09-19 23:00:58',NULL,'choice',1,'month',NULL,NULL,1,NULL,0,0),(6,NULL,NULL,NULL,NULL,'2015-09-19 23:29:55','2015-09-19 23:29:55','2015-09-19 23:30:00',NULL,'choice',1,'year',NULL,NULL,1,NULL,0,0),(7,NULL,NULL,NULL,NULL,'2015-09-22 03:27:43','2015-09-22 03:27:43','2015-09-22 03:27:49',NULL,'choice',1,'month',123,123,1,NULL,0,0),(8,NULL,NULL,NULL,NULL,'2015-09-22 03:28:26','2015-09-22 03:28:26','2015-09-22 03:28:30',NULL,'choice',1,'month',123,123,1,NULL,0,0),(9,NULL,NULL,NULL,NULL,'2015-09-22 03:34:18','2015-09-22 03:34:18','2015-09-22 03:34:23',NULL,'choice',1,'year',345,345,1,NULL,0,0),(10,NULL,NULL,NULL,NULL,'2015-09-22 03:34:40','2015-09-22 03:34:40','2015-09-22 03:34:44',NULL,'choice',1,'year',345,345,1,NULL,0,0),(11,NULL,NULL,NULL,NULL,'2015-09-22 03:49:42','2015-09-22 03:49:42','2015-09-22 03:49:48',NULL,'choice',1,'month',456,456,1,NULL,0,0),(12,NULL,NULL,NULL,NULL,'2015-09-22 04:08:04','2015-09-22 04:08:04','2015-09-22 04:08:08',NULL,'choice',1,'day',234,234,1,NULL,0,0),(13,NULL,NULL,NULL,NULL,'2015-09-22 04:19:45','2015-09-22 04:19:45','2015-09-22 04:19:49',NULL,'choice',1,'hour',1231,123123,1,NULL,0,0),(14,NULL,NULL,NULL,NULL,'2015-09-22 04:24:11','2015-09-22 04:24:11','2015-09-22 04:24:15',NULL,'choice',1,'week',56,56,6,NULL,0,0),(15,NULL,NULL,NULL,NULL,'2015-09-22 04:31:13','2015-09-22 04:31:13','2015-09-22 04:31:17',NULL,'choice',1,'hour',232,232,6,NULL,0,0),(16,NULL,NULL,NULL,NULL,'2015-09-22 04:32:56','2015-09-22 04:32:56','2015-09-22 04:33:00',NULL,'choice',1,'hour',232,232,6,NULL,0,0),(17,NULL,NULL,NULL,NULL,'2015-09-22 04:54:12','2015-09-22 04:54:12','2015-09-22 04:54:23',NULL,'choice',1,'hour',345,345,6,NULL,0,0),(18,NULL,NULL,NULL,NULL,'2015-09-23 02:19:19','2015-09-23 02:19:19','2015-09-23 02:19:25',NULL,'choice',0,'month',1231,123123,6,NULL,0,0),(19,NULL,NULL,NULL,NULL,'2015-09-23 02:34:38','2015-09-23 02:34:38','2015-09-23 02:34:43',NULL,'choice',0,'hour',232,123,6,NULL,0,0),(21,NULL,NULL,NULL,NULL,'2015-09-23 03:33:59','2015-09-23 03:33:59','2015-09-23 03:33:59',NULL,'choice',0,'day',-31.6304171,-60.6900953,1,NULL,0,0),(22,NULL,NULL,NULL,NULL,'2015-09-23 04:27:58','2015-09-23 04:27:58','2015-09-23 04:28:02',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(23,NULL,NULL,NULL,NULL,'2015-09-23 04:54:40','2015-09-23 04:54:40','2015-09-23 04:54:44',NULL,'choice',1,'hour',456,456,6,NULL,0,0),(25,NULL,NULL,NULL,NULL,'2015-09-23 05:05:57','2015-09-23 05:05:57','2015-09-23 05:06:01',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(26,NULL,NULL,NULL,NULL,'2015-09-24 01:56:23','2015-09-24 01:56:23','2015-09-24 01:56:27',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(27,NULL,NULL,NULL,NULL,'2015-09-24 02:04:37','2015-09-24 02:04:37','2015-09-24 02:04:42',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(28,NULL,NULL,NULL,NULL,'2015-09-24 02:10:15','2015-09-24 02:10:15','2015-09-24 02:10:19',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(29,NULL,NULL,NULL,NULL,'2015-09-24 02:26:02','2015-09-24 02:26:02','2015-09-24 02:26:06',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(30,NULL,NULL,NULL,NULL,'2015-09-24 02:31:07','2015-09-24 02:31:07','2015-09-24 02:31:11',NULL,'choice',0,'hour',123,123,6,NULL,0,0),(31,NULL,NULL,NULL,NULL,'2015-09-24 02:39:35','2015-09-24 02:39:35','2015-09-24 02:39:39',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(32,NULL,NULL,NULL,NULL,'2015-09-24 02:42:27','2015-09-24 02:42:27','2015-09-24 02:42:31',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(33,NULL,NULL,NULL,NULL,'2015-09-24 02:50:03','2015-09-24 02:50:03','2015-09-24 02:50:07',NULL,'choice',1,'hour',123,123,6,NULL,0,0),(34,NULL,NULL,NULL,NULL,'2015-09-24 02:57:28','2015-09-24 02:57:28','2015-09-24 02:57:33',NULL,'choice',1,'hour',1231,123,6,NULL,0,0),(35,NULL,NULL,NULL,NULL,'2015-10-03 23:29:37','2015-10-03 23:29:37','2015-10-03 23:29:49',NULL,'choice',1,'hour',345,123,6,NULL,0,0),(36,NULL,NULL,NULL,NULL,NULL,'2015-10-04 20:44:37','2015-12-19 23:54:44',NULL,'choice',1,'hour',0,0,1,NULL,0,0),(37,NULL,NULL,NULL,NULL,'2015-12-08 01:12:07','2015-12-08 01:12:07','2015-12-08 01:12:10',NULL,'choice',0,'hour',0,0,8,NULL,0,0),(38,NULL,NULL,NULL,NULL,'2015-12-08 01:12:38','2015-12-08 01:12:38','2015-12-08 01:12:38',NULL,'choice',0,'hour',0,0,8,NULL,0,0),(39,NULL,NULL,NULL,NULL,NULL,'2015-12-21 00:27:24','2015-12-21 00:27:28',NULL,'choice',0,'hour',0,0,1,NULL,0,0),(40,NULL,NULL,NULL,NULL,NULL,'2015-12-24 21:28:11','2016-01-14 17:14:35',NULL,'choice',0,'day',0,0,1,NULL,0,0),(41,NULL,NULL,NULL,NULL,NULL,'2016-01-15 00:23:55','2016-01-15 00:23:55',NULL,'choice',0,'day',0,0,1,NULL,0,0),(42,NULL,NULL,NULL,NULL,NULL,'2016-01-19 05:13:13','2016-01-19 05:13:16',NULL,'choice',0,'day',0,0,1,NULL,0,0),(43,NULL,NULL,NULL,NULL,NULL,'2016-01-19 20:58:46','2016-01-19 20:58:50',NULL,'choice',0,'day',0,0,1,NULL,0,0),(44,NULL,NULL,NULL,NULL,NULL,'2016-01-21 06:16:20','2016-01-21 06:16:23',NULL,'choice',0,'hour',0,0,1,NULL,0,0),(45,NULL,NULL,NULL,NULL,NULL,'2016-01-21 06:18:31','2016-01-25 19:47:00',NULL,'choice',0,'week',-31.6304171,-60.6900953,1,NULL,0,0),(46,NULL,NULL,NULL,NULL,NULL,'2016-01-23 13:43:04','2016-01-23 13:43:07',NULL,'choice',0,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(47,NULL,NULL,NULL,NULL,NULL,'2016-01-23 13:52:16','2016-01-23 13:52:17',NULL,'choice',0,'day',-31.6304171,-60.6900953,1,NULL,0,0),(48,NULL,NULL,NULL,NULL,NULL,'2016-01-23 13:55:33','2016-01-23 13:55:34',NULL,'choice',0,'day',-31.6304171,-60.6900953,1,NULL,0,0),(49,NULL,NULL,NULL,NULL,NULL,'2016-01-23 14:27:59','2016-01-23 14:28:00',NULL,'choice',0,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(50,NULL,NULL,NULL,NULL,NULL,'2016-01-23 14:29:50','2016-01-23 14:29:50',NULL,'choice',1,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(51,NULL,NULL,NULL,NULL,NULL,'2016-01-23 14:31:13','2016-01-23 14:31:13',NULL,'choice',1,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(52,NULL,NULL,NULL,NULL,NULL,'2016-01-23 14:32:09','2016-01-23 14:32:09',NULL,'choice',0,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(53,NULL,NULL,NULL,NULL,NULL,'2016-01-23 14:33:35','2016-01-23 14:33:35',NULL,'choice',1,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(54,NULL,NULL,NULL,NULL,NULL,'2016-01-23 14:34:39','2016-01-25 20:38:57',NULL,'choice',1,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(55,NULL,NULL,NULL,NULL,NULL,'2016-01-26 00:04:49','2016-01-26 00:04:50',NULL,'choice',1,'day',-31.6304171,-60.6900953,1,NULL,0,0),(56,NULL,NULL,NULL,NULL,NULL,'2016-01-26 07:14:43','2016-01-30 10:01:50',NULL,'choice',1,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(57,NULL,NULL,NULL,NULL,NULL,'2016-01-29 21:55:59','2016-01-29 21:56:00',NULL,'choice',0,'hour',-31.6304171,-60.6900953,1,NULL,0,0),(58,NULL,NULL,NULL,NULL,NULL,'2016-01-30 10:05:20','2016-01-30 10:05:21',NULL,'choice',1,'month',-31.6304171,-60.6900953,1,NULL,0,0),(59,NULL,NULL,NULL,NULL,NULL,'2016-02-03 18:48:11','2016-02-22 19:18:37',NULL,'choice',0,'hour',-31.6304171,-60.6900953,1,NULL,0,0);
/*!40000 ALTER TABLE `sylius_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_archetype`
--

DROP TABLE IF EXISTS `sylius_product_archetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_archetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A4001B5277153098` (`code`),
  KEY `IDX_A4001B52727ACA70` (`parent_id`),
  CONSTRAINT `FK_A4001B52727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_product_archetype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_archetype`
--

LOCK TABLES `sylius_product_archetype` WRITE;
/*!40000 ALTER TABLE `sylius_product_archetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_archetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_archetype_attribute`
--

DROP TABLE IF EXISTS `sylius_product_archetype_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_archetype_attribute` (
  `archetype_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`archetype_id`,`attribute_id`),
  KEY `IDX_97763342732C6CC7` (`archetype_id`),
  KEY `IDX_97763342B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_97763342732C6CC7` FOREIGN KEY (`archetype_id`) REFERENCES `sylius_product_archetype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_97763342B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_archetype_attribute`
--

LOCK TABLES `sylius_product_archetype_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_archetype_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_archetype_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_archetype_option`
--

DROP TABLE IF EXISTS `sylius_product_archetype_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_archetype_option` (
  `product_archetype_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_archetype_id`,`option_id`),
  KEY `IDX_BCE763A7FE884EAC` (`product_archetype_id`),
  KEY `IDX_BCE763A7A7C41D6F` (`option_id`),
  CONSTRAINT `FK_BCE763A7A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_BCE763A7FE884EAC` FOREIGN KEY (`product_archetype_id`) REFERENCES `sylius_product_archetype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_archetype_option`
--

LOCK TABLES `sylius_product_archetype_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_archetype_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_archetype_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_archetype_translation`
--

DROP TABLE IF EXISTS `sylius_product_archetype_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_archetype_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_archetype_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_E0BA36D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_E0BA36D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_archetype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_archetype_translation`
--

LOCK TABLES `sylius_product_archetype_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_archetype_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_archetype_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `association_type_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association`
--

LOCK TABLES `sylius_product_association` WRITE;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_product`
--

LOCK TABLES `sylius_product_association_product` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` VALUES (1,'Test Attribute','percent','a:0:{}','2015-12-18 01:19:32','2015-12-18 01:19:32','');
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` VALUES (1,1,'Test','en_US');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_channels`
--

LOCK TABLES `sylius_product_channels` WRITE;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option`
--

LOCK TABLES `sylius_product_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_translation`
--

LOCK TABLES `sylius_product_option_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value`
--

LOCK TABLES `sylius_product_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_options`
--

LOCK TABLES `sylius_product_options` WRITE;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_taxon` (
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` VALUES (2,4),(2,6),(3,2),(3,5),(4,2),(4,5),(5,2),(5,5),(6,2),(6,5),(7,2),(7,5),(8,2),(8,5),(9,2),(9,5),(10,2),(10,5),(11,2),(11,5),(12,2),(12,5),(13,2),(13,5),(14,2),(14,5),(15,2),(15,5),(16,2),(16,5),(17,2),(17,5),(18,2),(18,5),(19,2),(19,5),(22,2),(22,5),(23,2),(23,5),(25,2),(25,5),(26,2),(26,5),(27,2),(27,5),(28,2),(28,5),(29,2),(29,5),(30,2),(30,5),(31,2),(31,5),(32,2),(32,5),(33,2),(33,5),(34,2),(34,5),(35,2),(35,5),(36,2),(36,5),(36,8),(37,7),(38,8),(39,7),(40,26),(41,42),(42,9),(43,10),(44,8),(45,8),(46,9),(47,10),(48,10),(49,8),(50,8),(51,8),(52,7),(53,7),(54,8),(55,8),(56,42),(57,13),(58,16),(59,22);
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_105A908989D9B62` (`slug`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` VALUES (1,1,'My product 1','my-product-1','desc product 1','prod','prd','prod','en_US'),(2,2,'prod 2','prod-2','prod 2',NULL,NULL,'prod 2','en_US'),(3,3,'prod 23','prod-23','prod 2',NULL,NULL,'prod 2','en_US'),(4,4,'test 1','test-1','test 1','test1','test 1','test 1','en_US'),(5,5,'test 2','test-2','test 2','test2','test 2','test 2','en_US'),(6,6,'test 3','test-3','test 3','test 3','test 3','test 3','en_US'),(7,7,'product form 1','product-form-1','product form','product form','product form','product form','en_US'),(8,8,'product form 1','product-form-1-1','product form','product form','product form','product form','en_US'),(9,9,'product form 2','product-form-2','product form 2','product form 2','product form 2','product form 2','en_US'),(10,10,'product form 2','product-form-2-1','product form 2','product form 2','product form 2','product form 2','en_US'),(11,11,'product form 3','product-form-3','product form 3','product form 3','product form 3','product form 3','en_US'),(12,12,'product form 5','product-form-5','product form 5','product form 5','product form 5','product form 5','en_US'),(13,13,'product form 9','product-form-9','product form 9','product form 9','product form 9','product form 9','en_US'),(14,14,'product form 10','product-form-10','product form 10','product form 10','product form 10','product form 10','en_US'),(15,15,'product form 534','product-form-534','product form 534','product form 534','product form 534','product form 534','en_US'),(16,16,'product form 5346','product-form-5346','product form 534','product form 534','product form 534','product form 534','en_US'),(17,17,'final','final','final','final','final','final','en_US'),(18,18,'product falback','product-falback','product falback','product falback','product falback','product falback','en_US'),(19,19,'product form 78','product-form-78','product form 78','product form 78','product form 78','product form 78','en_US'),(21,21,'Foo','foo','Nice product',NULL,NULL,NULL,'en'),(22,22,'aasda asdasd asd asdas','aasda-asdasd-asd-asdas','aasda asdasd asd asdas','aasda asdasd asd asdas','aasda asdasd asd asdas','aasda asdasd asd asdas','en_US'),(23,23,'product form 79','product-form-79','product form 79','product form 79','product form 79','product form 79','en_US'),(25,25,'wqeq qweqwe qwe qwasd asd','wqeq-qweqwe-qwe-qwasd-asd','asdasd','asdasdasd','asdasd','asdasd','en_US'),(26,25,'wqeq qweqwe qwe qwasd asd','wqeq-qweqwe-qwe-qwasd-asd-1','asdasd',NULL,NULL,NULL,'en'),(27,26,'doble peticion','doble-peticion','doble peticion','doble peticion','doble peticion','doble peticion','en_US'),(28,26,'doble peticion','doble-peticion-1','doble peticion',NULL,NULL,NULL,'en'),(29,27,'doble peticion 2','doble-peticion-2','doble peticion2','doble peticion2','doble peticion2','doble peticion2','en_US'),(30,27,'doble peticion 2','doble-peticion-2-1','doble peticion2',NULL,NULL,NULL,'en'),(31,28,'product form 67','product-form-67','product form 67','product form 67','product form 67','product form 67','en_US'),(32,28,'product form 67','product-form-67-1','product form 67',NULL,NULL,NULL,'en'),(33,29,'product form 675','product-form-675','product form 675','product form 675','product form 675','product form 675','en_US'),(34,29,'product form 675','product-form-675-1','product form 675',NULL,NULL,NULL,'en'),(35,30,'product form 101','product-form-101','product form 101','product form 101','product form 101','product form 101','en_US'),(36,30,'product form 101','product-form-101-1','product form 101',NULL,NULL,NULL,'en'),(37,31,'product form 53464','product-form-53464','product form 53464','product form 53464','product form 53464','product form 53464','en_US'),(38,31,'product form 53464','product-form-53464-1','product form 53464',NULL,NULL,NULL,'en'),(39,32,'product form 534645','product-form-534645','product form 534645','product form 534645','product form 534645','product form 534645','en_US'),(40,33,'product form 25','product-form-25','product form 25','product form 25','product form 25','product form 25','en_US'),(41,34,'flasfh','flasfh','flasfh','flasfh','flasfh','flasfh','en_US'),(42,35,'prod from ks 1','prod-from-ks-1','prod from ks','prod from ks','prod from ks','prod from ks','en_US'),(43,36,'Test','test','test','test','test','test','en_US'),(44,37,'kdsjadas','kdsjadas','teasdas',NULL,NULL,'fsadas','en_US'),(45,38,'new product','new-product','teste',NULL,NULL,'tersdas','en_US'),(46,39,'new product','new-product-1','new product',NULL,NULL,'new product','en_US'),(47,40,'Laser Jet pro 400 color','laser-jet-pro-400-color','Laser jet color printer model MFP',NULL,NULL,NULL,'en_US'),(48,41,'Chain saw','chain-saw','super sharp super cutter chain saw',NULL,NULL,'super chain','en_US'),(49,42,'ANSOcsfcoNScNHosdnhcvolSCLK','ansocsfconscnhosdnhcvolsclk','sldjjfasjfv\'osDJF\'odsv\'o ansdVnadNV\'DNSV ASDNHV OSDNv \"clON\'LOSNd\"Cnj\'SDc',NULL,NULL,'js\'ojdv\'oasjv\'ocs','en_US'),(50,43,'sgshghjsjetj','sgshghjsjetj','gsdshjdfj.;k;o;uohgsdg',NULL,NULL,'zdgvsfdhdgymkgjklohi;tfhsdfhbdg,ljk','en_US'),(51,44,'afkahfha;sidvhfa;ishf;iHx;iC','afkahfha-sidvhfa-ishf-ihx-ic','IVFHSIDHF;AHs:fhVOa',NULL,NULL,'n;dvha;DHv;OSHdvO','en_US'),(52,45,'Tst','tst','Test',NULL,NULL,'Test','en_US'),(53,46,'Test','test-4','tesstte',NULL,NULL,'teasteas','en_US'),(54,47,'fsdfsdf','fsdfsdf','fdsfsdfsd',NULL,NULL,'fsdfsdfsf','en_US'),(55,48,'fsdfsdf','fsdfsdf-1','fdsfsdfsd',NULL,NULL,'fsdfsdfsf','en_US'),(56,49,'testet','testet','testewr',NULL,NULL,'tesgras','en_US'),(57,50,'sadasdasdasd','sadasdasdasd','testewr',NULL,NULL,'tesgras','en_US'),(58,51,'sadasdasdasd','sadasdasdasd-1','testewr',NULL,NULL,'tesgras','en_US'),(59,52,'dsadasdasd','dsadasdasd','asdasdads',NULL,NULL,'dasdasdasd','en_US'),(60,53,'asdasfasgasfasf','asdasfasgasfasf','dasddsadasd',NULL,NULL,'dasdasddas','en_US'),(61,54,'fsdfsdfsdfsdff','fsdfsdfsdfsdff','dsfsdfsdfsdf',NULL,NULL,'vsdhsgsd','en_US'),(62,55,'butter knife','butter-knife','ljosjdoifj\'eajfo\'iajjajjfafjalflosaflasfls',NULL,NULL,'jo\'fjldjf\'oajsd\'foja\'','en_US'),(63,56,'pencil','pencil','Sharp number 2 pencil. Made from premium wood. Painted with a high shine school bus yellow. The pencil comes pre-sharpened. You can also borrow my high end pencil sharpener at no additional cost.',NULL,NULL,'School bus yellow sharpened #2 pencil.','en_US'),(64,57,'Vintage Schwinn Trike','vintage-schwinn-trike','Well maintained with original paint and 3 gear rear hub. Perfect for a leisurely Sunday ride around town.',NULL,NULL,'3 wheel tricycle with basket.','en_US'),(65,58,'Pen','pen','One really nice, I mean super nice blue pen',NULL,NULL,'Pen,Pen,Pen blue','en_US'),(66,59,'testing','testing','testing 7',NULL,NULL,'testing','en_US');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `is_master` tinyint(1) NOT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `available_on_demand` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `pricing_calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pricing_configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `available_until` datetime DEFAULT NULL,
  `original_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B523F9038C4` (`sku`),
  KEY `IDX_A29B52398D2DD99` (`sold`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` VALUES (1,1,1,NULL,'2015-09-11 02:12:53','2015-09-11 02:13:02',NULL,'2015-09-11 02:10:00','product 1',0,0,0,1,2300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,1,NULL,'2015-09-18 03:48:56','2015-09-18 03:49:02',NULL,'2015-09-18 03:45:00','456',0,0,0,1,4500,'standard','a:0:{}',123,123,123,123,NULL,NULL,NULL),(3,3,1,NULL,'2015-09-18 03:51:43','2015-09-18 03:51:48',NULL,'2015-09-18 03:45:00','4562',0,0,0,1,4500,'standard','a:0:{}',123,123,123,123,NULL,NULL,NULL),(4,4,1,NULL,'2015-09-19 22:35:39','2015-09-19 22:35:43',NULL,'2015-09-19 22:35:39','09',0,90,0,1,900,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,1,NULL,'2015-09-19 23:00:53','2015-09-19 23:01:00',NULL,'2015-09-19 23:00:53','77',0,4,0,1,2300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,1,NULL,'2015-09-19 23:29:55','2015-09-19 23:30:02',NULL,'2015-09-19 23:29:55','33',0,4,0,1,3300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,7,1,NULL,'2015-09-22 03:27:43','2015-09-22 03:27:51',NULL,'2015-09-22 03:27:43','980',0,1,0,1,5600,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,1,NULL,'2015-09-22 03:28:26','2015-09-22 03:28:32',NULL,'2015-09-22 03:28:26','980',0,1,0,1,5600,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,9,1,NULL,'2015-09-22 03:34:18','2015-09-22 03:34:25',NULL,'2015-09-22 03:34:18','67',0,2,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,10,1,NULL,'2015-09-22 03:34:40','2015-09-22 03:34:46',NULL,'2015-09-22 03:34:40','67',0,2,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,11,1,NULL,'2015-09-22 03:49:42','2015-09-22 03:49:49',NULL,'2015-09-22 03:49:42','344',0,2,0,1,2300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,12,1,NULL,'2015-09-22 04:08:04','2015-09-22 04:08:10',NULL,'2015-09-22 04:08:04','67766',0,4,0,1,2300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,13,1,NULL,'2015-09-22 04:19:45','2015-09-22 04:19:51',NULL,'2015-09-22 04:19:45','45533',0,3,0,1,2300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,14,1,NULL,'2015-09-22 04:24:11','2015-09-22 04:24:18',NULL,'2015-09-22 04:24:11','78866',0,5,0,1,4500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,15,1,NULL,'2015-09-22 04:31:13','2015-09-22 04:31:19',NULL,'2015-09-22 04:31:13','66744',0,3,0,1,4500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,16,1,NULL,'2015-09-22 04:32:56','2015-09-22 04:33:02',NULL,'2015-09-22 04:32:56','667446',0,3,0,1,4500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,17,1,NULL,'2015-09-22 04:54:12','2015-09-22 04:54:25',NULL,'2015-09-22 04:54:12','678',0,5,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,18,1,NULL,'2015-09-23 02:19:19','2015-09-23 02:19:26',NULL,'2015-09-23 02:19:19','443321',0,2,0,1,4500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,19,1,NULL,'2015-09-23 02:34:38','2015-09-23 02:34:45',NULL,'2015-09-23 02:34:38','1233311222',0,2,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,21,1,NULL,'2015-09-23 03:33:59','2015-09-23 03:34:01',NULL,'2015-09-23 03:33:59',NULL,0,0,0,1,323,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,22,1,NULL,'2015-09-23 04:27:58','2015-09-23 04:28:04',NULL,'2015-09-23 04:27:58','3452342',0,2,0,1,2300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,23,1,NULL,'2015-09-23 04:54:40','2015-09-23 04:54:46',NULL,'2015-09-23 04:54:40','12123123',0,2,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,25,1,NULL,'2015-09-23 05:05:57','2015-09-23 05:06:03',NULL,'2015-09-23 05:05:57','634534',0,5,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,26,1,NULL,'2015-09-24 01:56:23','2015-09-24 01:56:29',NULL,'2015-09-24 01:56:23','456345234',0,3,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,27,1,NULL,'2015-09-24 02:04:37','2015-09-24 02:04:43',NULL,'2015-09-24 02:04:37','456345234wre',0,3,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,28,1,NULL,'2015-09-24 02:10:15','2015-09-24 02:10:21',NULL,'2015-09-24 02:10:15','456457456456',0,1,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,29,1,NULL,'2015-09-24 02:26:02','2015-09-24 02:26:08',NULL,'2015-09-24 02:26:02','123123123123',0,1,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,30,1,NULL,'2015-09-24 02:31:07','2015-09-24 02:31:14',NULL,'2015-09-24 02:31:07','1231241123',0,1,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,31,1,NULL,'2015-09-24 02:39:35','2015-09-24 02:39:42',NULL,'2015-09-24 02:39:35','2342234234',0,2,0,1,1200,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,32,1,NULL,'2015-09-24 02:42:27','2015-09-24 02:42:33',NULL,'2015-09-24 02:42:27','23422342345',0,2,0,1,1200,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,33,1,NULL,'2015-09-24 02:50:03','2015-09-24 02:50:10',NULL,'2015-09-24 02:50:03','31231231234',0,3,0,1,2300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,34,1,NULL,'2015-09-24 02:57:28','2015-09-24 02:57:35',NULL,'2015-09-24 02:57:28','12356756989789',0,1,0,1,3400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,35,1,NULL,'2015-10-03 23:29:37','2015-10-03 23:29:50',NULL,'2015-10-03 23:29:37','9807975675671',0,3,0,1,4500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,36,1,NULL,'2015-10-04 20:44:37','2016-01-26 23:41:44',NULL,NULL,'123',2,1,0,1,12300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,37,1,NULL,'2015-12-08 01:12:07','2015-12-08 01:12:10',NULL,'2015-12-08 01:12:07','412',0,1,0,1,12300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,38,1,NULL,'2015-12-08 01:12:38','2015-12-08 01:12:38',NULL,'2015-12-08 01:12:38','4324',0,3,0,1,1200,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,39,1,NULL,'2015-12-21 00:27:24','2015-12-21 00:27:28',NULL,NULL,NULL,0,1,0,1,2500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,40,1,NULL,'2015-12-24 21:28:11','2015-12-24 21:28:15',NULL,NULL,NULL,0,1,0,1,4500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,41,1,NULL,'2016-01-15 00:23:55','2016-01-15 00:23:55',NULL,NULL,NULL,0,1,0,1,3500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,42,1,NULL,'2016-01-19 05:13:13','2016-01-19 05:13:16',NULL,NULL,NULL,0,1,0,1,2800,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,43,1,NULL,'2016-01-19 20:58:46','2016-01-19 20:58:50',NULL,NULL,NULL,0,1,0,1,100,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,44,1,NULL,'2016-01-21 06:16:20','2016-01-21 06:16:23',NULL,NULL,NULL,0,1,0,1,100,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,45,1,NULL,'2016-01-21 06:18:31','2016-02-08 21:36:04',NULL,NULL,NULL,11,0,6,1,100,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,46,1,NULL,'2016-01-23 13:43:04','2016-01-23 13:43:07',NULL,NULL,NULL,0,12,0,1,1200,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,47,1,NULL,'2016-01-23 13:52:16','2016-01-23 13:52:17',NULL,NULL,NULL,0,12,0,1,1200,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,48,1,NULL,'2016-01-23 13:55:33','2016-01-23 13:55:34',NULL,NULL,NULL,0,12,0,1,1200,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,49,1,NULL,'2016-01-23 14:27:59','2016-01-23 14:28:00',NULL,NULL,NULL,0,12,0,1,100,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,50,1,NULL,'2016-01-23 14:29:50','2016-01-23 14:29:50',NULL,NULL,NULL,0,12,0,1,100,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,51,1,NULL,'2016-01-23 14:31:13','2016-01-23 14:31:13',NULL,NULL,NULL,0,12,0,1,100,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,52,1,NULL,'2016-01-23 14:32:09','2016-01-23 14:32:09',NULL,NULL,NULL,0,12,0,1,12412400,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,53,1,NULL,'2016-01-23 14:33:35','2016-01-23 14:33:35',NULL,NULL,NULL,0,233,0,1,2300,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,54,1,NULL,'2016-01-23 14:34:39','2016-01-25 20:38:57',NULL,NULL,NULL,0,1,0,1,100,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,55,1,NULL,'2016-01-26 00:04:49','2016-01-26 00:04:50',NULL,NULL,NULL,0,1,0,1,4500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,56,1,NULL,'2016-01-26 07:14:43','2016-01-26 07:14:48',NULL,NULL,NULL,0,2,0,1,5000,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,57,1,NULL,'2016-01-29 21:55:59','2016-01-29 21:56:00',NULL,NULL,NULL,0,1,0,1,11100,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,58,1,NULL,'2016-01-30 10:05:20','2016-01-30 10:05:21',NULL,NULL,NULL,0,3,0,1,15500,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,59,1,NULL,'2016-02-03 18:48:11','2016-02-03 18:48:13',NULL,NULL,NULL,0,1,0,1,1000,'standard','a:0:{}',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_image`
--

DROP TABLE IF EXISTS `sylius_product_variant_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C6B77D5D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_C6B77D5D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_image`
--

LOCK TABLES `sylius_product_variant_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_image` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_image` VALUES (1,NULL,'82/5a/3e59562aad0e5049aae125e47e23.png','2015-12-24 21:28:11','2016-01-14 17:14:35'),(2,45,'/dev/web/images/ks_icons3_0000s_0009_icon-22.png','2016-01-23 06:34:40','2016-01-23 14:37:46'),(3,43,'/dev/web/images/texas-passports.jpg','2016-01-25 11:47:00','2016-01-25 11:47:00'),(4,NULL,'/dev/web/images/ecoesis-stasionary2.jpg','2016-01-25 11:54:39','2016-01-25 20:38:57'),(5,53,'/dev/web/images/Doug Mountains with car.jpg','2016-01-25 16:04:50','2016-01-25 16:04:50');
/*!40000 ALTER TABLE `sylius_product_variant_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion`
--

LOCK TABLES `sylius_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_action`
--

LOCK TABLES `sylius_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_channels`
--

LOCK TABLES `sylius_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon`
--

LOCK TABLES `sylius_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon_order`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_coupon_order` (
  `order_id` int(11) NOT NULL,
  `promotion_coupon_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_coupon_id`),
  KEY `IDX_D58E3BC48D9F6D38` (`order_id`),
  KEY `IDX_D58E3BC417B24436` (`promotion_coupon_id`),
  CONSTRAINT `FK_D58E3BC417B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_D58E3BC48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon_order`
--

LOCK TABLES `sylius_promotion_coupon_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order`
--

LOCK TABLES `sylius_promotion_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order_item`
--

DROP TABLE IF EXISTS `sylius_promotion_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_order_item` (
  `order_item_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_item_id`,`promotion_id`),
  KEY `IDX_49838ED1E415FB15` (`order_item_id`),
  KEY `IDX_49838ED1139DF194` (`promotion_id`),
  CONSTRAINT `FK_49838ED1139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_49838ED1E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order_item`
--

LOCK TABLES `sylius_promotion_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_rule`
--

LOCK TABLES `sylius_promotion_rule` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_province`
--

LOCK TABLES `sylius_province` WRITE;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_report`
--

DROP TABLE IF EXISTS `sylius_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `renderer_configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `data_fetcher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_fetcher_configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FE0E997877153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_report`
--

LOCK TABLES `sylius_report` WRITE;
/*!40000 ALTER TABLE `sylius_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_role`
--

DROP TABLE IF EXISTS `sylius_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `security_roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8C606FE3727ACA70` (`parent_id`),
  CONSTRAINT `FK_8C606FE3727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_role`
--

LOCK TABLES `sylius_role` WRITE;
/*!40000 ALTER TABLE `sylius_role` DISABLE KEYS */;
INSERT INTO `sylius_role` VALUES (1,NULL,'root','Root',NULL,'a:0:{}',1,30,0,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(2,1,'administrator','Administrator','Administrator user','a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:22:\"ROLE_ALLOWED_TO_SWITCH\";}',2,27,1,'2015-09-05 22:00:45','2016-03-03 02:52:20'),(3,2,'catalog_manager','Catalog Manager','Users responsible for catalog product management','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',3,4,2,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(4,2,'sales_manager','Sales Manager','Sales','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',5,6,2,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(5,2,'marketing_manager','Marketing Manager','Marketing','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',7,8,2,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(6,2,'accounts_manager','Accounts Manager','Users responsible for managing customer accounts','a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:22:\"ROLE_ALLOWED_TO_SWITCH\";}',9,10,2,'2015-09-05 22:00:45','2016-03-03 02:52:20'),(7,2,'shipping_manager','Shipping Manager','Shipping Department people','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',11,12,2,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(8,2,'content_editor','Content Editor','Content Team people','a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:27:\"ROLE_CAN_VIEW_NON_PUBLISHED\";}',13,14,2,'2015-09-05 22:00:45','2016-03-03 02:52:20'),(9,2,'tax_manager','Tax Manager','Taxes Team','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',15,16,2,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(10,2,'it','IT','IT Team','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',17,22,2,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(11,10,'security_auditor','Security Auditor','Security Team','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',18,19,3,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(12,10,'developer','Developer','Developers Access','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',20,21,3,'2015-09-05 22:00:45','2015-09-05 22:00:45'),(13,2,'support','Support','Support Team','a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:22:\"ROLE_ALLOWED_TO_SWITCH\";}',23,24,2,'2015-09-05 22:00:45','2016-03-03 02:52:20'),(14,1,'custom','Customers',NULL,'a:0:{}',28,29,1,'2016-01-14 11:21:36','2016-01-14 11:21:36'),(15,2,'messages_manager','Messages Manager','Users responsible for messages management','a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}',25,26,2,'2016-03-03 19:03:52','2016-03-03 19:03:52');
/*!40000 ALTER TABLE `sylius_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_role_permission`
--

DROP TABLE IF EXISTS `sylius_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `IDX_45CEE9B8D60322AC` (`role_id`),
  KEY `IDX_45CEE9B8FED90CCA` (`permission_id`),
  CONSTRAINT `FK_45CEE9B8D60322AC` FOREIGN KEY (`role_id`) REFERENCES `sylius_role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_45CEE9B8FED90CCA` FOREIGN KEY (`permission_id`) REFERENCES `sylius_permission` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_role_permission`
--

LOCK TABLES `sylius_role_permission` WRITE;
/*!40000 ALTER TABLE `sylius_role_permission` DISABLE KEYS */;
INSERT INTO `sylius_role_permission` VALUES (1,1),(2,14),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37),(2,38),(2,39),(2,40),(2,41),(2,42),(2,43),(2,44),(2,45),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,53),(2,54),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,66),(2,67),(2,68),(2,69),(2,70),(2,71),(2,72),(2,73),(2,98),(2,110),(2,116),(2,146),(2,152),(2,158),(2,164),(2,242),(2,246),(3,246),(4,247),(5,249),(6,252),(7,248),(8,250),(9,253),(11,251),(12,3),(12,4),(12,164),(13,3),(13,4),(13,254),(14,35),(14,36),(14,37),(14,42),(14,48),(14,59),(14,60),(14,61),(15,290);
/*!40000 ALTER TABLE `sylius_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_search_index`
--

DROP TABLE IF EXISTS `sylius_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_search_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `entity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tags` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fulltext_search_idx` (`item_id`),
  KEY `item_id_idx` (`item_id`),
  KEY `item_id_entity_idx` (`item_id`,`entity`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_search_index`
--

LOCK TABLES `sylius_search_index` WRITE;
/*!40000 ALTER TABLE `sylius_search_index` DISABLE KEYS */;
INSERT INTO `sylius_search_index` VALUES (1,1,'Sylius\\Component\\Core\\Model\\Product','  ','a:4:{s:6:\"taxons\";a:0:{}s:5:\"price\";i:2300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-11 02:13:04'),(2,2,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','  ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-18 03:49:03'),(3,3,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','  ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-18 03:51:48'),(4,15,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','  ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-22 04:31:22'),(5,16,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','  ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-22 04:33:06'),(6,18,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','  ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-23 02:19:30'),(7,19,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','  ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-23 02:34:49'),(8,21,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','Foo Nice product ','a:4:{s:6:\"taxons\";a:0:{}s:5:\"price\";i:323;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-23 03:34:05'),(9,22,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','  ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:2300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-23 04:28:08'),(10,23,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','  ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-23 04:54:49'),(11,25,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','wqeq qweqwe qwe qwasd asd asdasd ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-23 05:06:06'),(12,26,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','doble peticion doble peticion ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 01:56:34'),(13,27,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','doble peticion 2 doble peticion2 ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 02:04:47'),(14,28,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','product form 67 product form 67 ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 02:10:24'),(15,29,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','product form 675 product form 675 ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 02:26:12'),(16,30,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','product form 101 product form 101 ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 02:31:18'),(17,31,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','product form 53464 product form 53464 ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:1200;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 02:39:47'),(18,32,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','product form 534645 product form 534645 ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:1200;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 02:42:37'),(19,33,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','product form 25 product form 25 ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:2300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 02:50:13'),(20,34,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','flasfh flasfh ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:3400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-09-24 02:57:39'),(21,35,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','prod from ks 1 prod from ks ','a:4:{s:6:\"taxons\";a:2:{i:0;s:10:\"category 1\";i:1;s:14:\"SUB CaTEGORY !\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-10-03 23:29:54'),(22,36,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','Test test ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:12300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-10-04 20:44:38'),(23,37,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','kdsjadas teasdas ','a:4:{s:6:\"taxons\";a:1:{i:0;s:8:\"Antiques\";}s:5:\"price\";i:12300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-12-08 01:12:11'),(24,38,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','new product teste ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:1200;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-12-08 01:12:38'),(25,39,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','new product new product ','a:4:{s:6:\"taxons\";a:1:{i:0;s:8:\"Antiques\";}s:5:\"price\";i:2500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-12-21 00:27:28'),(26,40,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','Laser Jet pro 400 color Laser jet color printer model MFP ','a:4:{s:6:\"taxons\";a:1:{i:0;s:11:\"Electronics\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2015-12-24 21:28:15'),(27,41,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','Chain saw super sharp super cutter chain saw ','a:4:{s:6:\"taxons\";a:1:{i:0;s:17:\"Tools & Machinery\";}s:5:\"price\";i:3500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-15 00:23:56'),(28,42,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','ANSOcsfcoNScNHosdnhcvolSCLK sldjjfasjfv\'osDJF\'odsv\'o ansdVnadNV\'DNSV ASDNHV OSDNv \"clON\'LOSNd\"Cnj\'SDc ','a:4:{s:6:\"taxons\";a:1:{i:0;s:15:\"Arts and Crafts\";}s:5:\"price\";i:2800;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-19 05:13:17'),(29,43,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','sgshghjsjetj gsdshjdfj.;k;o;uohgsdg ','a:4:{s:6:\"taxons\";a:1:{i:0;s:15:\"Audio Equipment\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-19 20:58:50'),(30,44,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','afkahfha;sidvhfa;ishf;iHx;iC IVFHSIDHF;AHs:fhVOa ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-21 06:16:24'),(31,45,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','Tst Test ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-21 06:18:32'),(32,46,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','Test tesstte ','a:4:{s:6:\"taxons\";a:1:{i:0;s:15:\"Arts and Crafts\";}s:5:\"price\";i:1200;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 13:43:07'),(33,47,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','fsdfsdf fdsfsdfsd ','a:4:{s:6:\"taxons\";a:1:{i:0;s:15:\"Audio Equipment\";}s:5:\"price\";i:1200;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 13:52:17'),(34,48,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','fsdfsdf fdsfsdfsd ','a:4:{s:6:\"taxons\";a:1:{i:0;s:15:\"Audio Equipment\";}s:5:\"price\";i:1200;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 13:55:34'),(35,49,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','testet testewr ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:12300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 14:28:00'),(36,50,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','sadasdasdasd testewr ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:12300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 14:29:50'),(37,51,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','sadasdasdasd testewr ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:12300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 14:31:14'),(38,52,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','dsadasdasd asdasdads ','a:4:{s:6:\"taxons\";a:1:{i:0;s:8:\"Antiques\";}s:5:\"price\";i:12412400;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 14:32:10'),(39,53,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','asdasfasgasfasf dasddsadasd ','a:4:{s:6:\"taxons\";a:1:{i:0;s:8:\"Antiques\";}s:5:\"price\";i:2300;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 14:33:36'),(40,54,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','fsdfsdfsdfsdff dsfsdfsdfsdf ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:100;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-23 14:34:40'),(41,55,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','butter knife ljosjdoifj\'eajfo\'iajjajjfafjalflosaflasfls ','a:4:{s:6:\"taxons\";a:1:{i:0;s:10:\"Appliances\";}s:5:\"price\";i:4500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-26 00:04:50'),(42,56,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','pencil Sharp number 2 pencil. Made from premium wood. Painted with a high shine school bus yellow. The pencil comes pre-sharpened. You can also borrow my high end pencil sharpener at no additional cost. ','a:4:{s:6:\"taxons\";a:1:{i:0;s:17:\"Tools & Machinery\";}s:5:\"price\";i:5000;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-26 07:14:48'),(43,57,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','Vintage Schwinn Trike Well maintained with original paint and 3 gear rear hub. Perfect for a leisurely Sunday ride around town. ','a:4:{s:6:\"taxons\";a:1:{i:0;s:8:\"Bicycles\";}s:5:\"price\";i:11100;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-29 21:56:01'),(44,58,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','Pen One really nice, I mean super nice blue pen ','a:4:{s:6:\"taxons\";a:1:{i:0;s:18:\"Business Equipment\";}s:5:\"price\";i:15500;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-01-30 10:05:22'),(45,59,'Kulashare\\Bundle\\ProductBundle\\Entity\\Product','testing testing 7 ','a:4:{s:6:\"taxons\";a:1:{i:0;s:12:\"Collectibles\";}s:5:\"price\";i:1000;s:7:\"made_of\";a:0:{}s:5:\"color\";a:0:{}}','2016-02-03 18:48:13');
/*!40000 ALTER TABLE `sylius_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_search_log`
--

DROP TABLE IF EXISTS `sylius_search_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_search_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `search_string` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remote_address` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_search_log`
--

LOCK TABLES `sylius_search_log` WRITE;
/*!40000 ALTER TABLE `sylius_search_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_search_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_sequence`
--

DROP TABLE IF EXISTS `sylius_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_AD3D8CC48CDE5729` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_sequence`
--

LOCK TABLES `sylius_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_sequence` DISABLE KEYS */;
INSERT INTO `sylius_sequence` VALUES (1,16,'order');
/*!40000 ALTER TABLE `sylius_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_settings_parameter`
--

DROP TABLE IF EXISTS `sylius_settings_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_settings_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`namespace`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_settings_parameter`
--

LOCK TABLES `sylius_settings_parameter` WRITE;
/*!40000 ALTER TABLE `sylius_settings_parameter` DISABLE KEYS */;
INSERT INTO `sylius_settings_parameter` VALUES (1,'sylius_general','title','s:29:\"Kulashare - Sharing community\";'),(2,'sylius_general','meta_keywords','s:18:\"kulashare, sharing\";'),(3,'sylius_general','meta_description','s:46:\"Kulashare is where the Sharing Community Works\";'),(4,'sylius_general','locale','s:5:\"en_US\";'),(5,'sylius_general','currency','s:3:\"USD\";'),(6,'sylius_general','tracking_code','N;'),(7,'sylius_security','enabled','b:1;');
/*!40000 ALTER TABLE `sylius_settings_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
INSERT INTO `sylius_shipment` VALUES (1,1,141,'onhold',NULL,'2015-12-08 01:32:54','2015-12-08 01:33:19'),(2,1,166,'checkout',NULL,'2015-12-31 02:43:39','2015-12-31 02:43:39'),(3,1,208,'checkout',NULL,'2016-01-22 14:57:27','2016-01-22 14:57:28'),(4,1,211,'checkout',NULL,'2016-01-22 17:48:13','2016-01-22 17:48:14'),(5,1,226,'checkout',NULL,'2016-01-23 16:13:54','2016-01-23 16:13:55'),(6,1,243,'onhold',NULL,'2016-01-25 03:00:42','2016-01-25 03:01:05'),(7,1,245,'onhold',NULL,'2016-01-25 03:04:54','2016-01-25 03:05:20'),(8,1,246,'onhold',NULL,'2016-01-25 14:10:23','2016-01-25 14:11:19'),(9,1,272,'checkout',NULL,'2016-01-26 21:18:01','2016-01-26 21:18:02');
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_category`
--

LOCK TABLES `sylius_shipping_category` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
INSERT INTO `sylius_shipping_category` VALUES (1,'Shipping',NULL,'2015-11-18 21:47:34','2015-11-18 21:47:34','');
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method` VALUES (1,1,1,'a:1:{s:6:\"amount\";i:0000;}',0,'flat_rate',0,'2015-11-17 01:33:08','2016-01-26 21:32:43',NULL,'');
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` VALUES (1,1,'Shipping','en_US');
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_rule`
--

DROP TABLE IF EXISTS `sylius_shipping_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_3BC30EE019883967` (`method_id`),
  CONSTRAINT `FK_3BC30EE019883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_rule`
--

LOCK TABLES `sylius_shipping_rule` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_category`
--

LOCK TABLES `sylius_tax_category` WRITE;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxonomy_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CA9557E6F6` (`taxonomy_id`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CA9557E6F6` FOREIGN KEY (`taxonomy_id`) REFERENCES `sylius_taxonomy` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` VALUES (1,NULL,NULL,1,2,0,'2015-10-10 21:04:22',NULL,'1'),(2,NULL,1,2,3,1,'2015-10-10 21:04:22',NULL,'2'),(4,NULL,NULL,3,2,0,'2015-10-10 21:04:22',NULL,'4'),(5,NULL,4,4,1,1,'2015-10-10 21:04:22',NULL,'5'),(6,4,NULL,1,78,0,NULL,NULL,'6'),(7,4,6,2,3,1,NULL,'82/5a/3e59562aad0e5049aae125e47e23.png','7'),(8,4,6,4,5,1,NULL,'f6/21/13c9177fffc2e6316f0b32cdce8b.png','8'),(9,4,6,6,7,1,NULL,'d9/a3/d481ab8bb37485c9479da9a30715.png','9'),(10,4,6,8,9,1,NULL,'7c/6e/bf2ab7aa6f184a84b54458e23f55.png','10'),(11,4,6,10,11,1,NULL,'59/5c/4999351df22c1aa504019a45e150.png','11'),(12,4,6,12,13,1,NULL,'85/04/3bbdc7e4070296b7cc0ddf7c77f1.png','12'),(13,4,6,14,15,1,NULL,'10/48/da250533285f1012e59b369a9c46.png','13'),(14,4,6,16,17,1,NULL,'d4/65/a5a9b41d69294e460468714f79e8.png','14'),(15,4,6,18,19,1,NULL,'44/7c/afc2ccd0ba54d18fc48b7730dbcd.png','15'),(16,4,6,20,21,1,NULL,'8a/4a/e9a40c558aecdd817fc1b531c195.png','16'),(17,4,6,22,23,1,NULL,'c1/65/59d009d3d28ff77e8fdba783aae0.png','17'),(18,4,6,24,25,1,NULL,'5c/38/75a6525848a6d14ca1619289a7fb.png','18'),(19,4,6,26,27,1,NULL,'5d/fe/67f5317065f4b8ab987747fad0b7.png','19'),(20,4,6,28,29,1,NULL,'97/c7/c8da6ab7f17123f87fb589c8a98b.png','20'),(21,4,6,30,31,1,NULL,'8c/70/1881c98e9cc637b19107836edcf5.png','21'),(22,4,6,32,33,1,NULL,'22/a9/7d69ae37efbd7a25170c6c462002.png','22'),(23,4,6,34,35,1,NULL,'30/9c/b93345321d55c44f785c15357fc6.png','23'),(24,4,6,36,37,1,NULL,'47/1d/ebdae4a88f43edac27376e748bc8.png','24'),(25,4,6,38,39,1,NULL,'d9/27/be3a4faabaf55746b34cb1333261.png','25'),(26,4,6,40,41,1,NULL,'8a/4e/01dab80f801dacbb4b2fd5934ec3.png','26'),(27,4,6,42,43,1,NULL,'04/16/379ae58a5aa77b7a6559a929987b.png','27'),(28,4,6,44,45,1,NULL,'0a/05/58b4d79aeb75a6e0a49f6a89df19.png','28'),(29,4,6,46,47,1,NULL,'9b/db/f05f95d87aa707badc82a5ea164e.png','29'),(30,4,6,48,49,1,NULL,'20/c5/3a0ccc54ccffae8671f5a4f779c4.png','30'),(31,4,6,50,51,1,NULL,'ab/bc/c9420ecea612643a177ece2ec45b.png','31'),(32,4,6,52,53,1,NULL,'d4/1c/ba11d7775d46a9975278811ab763.png','32'),(33,4,6,54,55,1,NULL,'06/e3/ac7c0b9d67680c840b7f883d064d.png','33'),(35,4,6,56,57,1,NULL,'83/60/9033102d7f23816991dc0a718992.png','35'),(36,4,6,58,59,1,NULL,'17/70/2ea3a9f39846827327e881d8b37e.png','36'),(37,4,6,60,61,1,NULL,'0f/37/d049ffe82e74d391876035b7593c.png','37'),(38,4,6,62,63,1,NULL,'53/6e/652d9659f92e9213f2e65f9ce439.png','38'),(39,4,6,64,65,1,NULL,'89/71/510917010785b3c8f57d25b86c83.png','39'),(40,4,6,66,67,1,NULL,'4b/22/40a47ab83f2aa2821705ce4bf082.png','40'),(41,4,6,68,69,1,NULL,'e7/40/ac00ce606b3a0e6b3be565f0938e.png','41'),(42,4,6,70,71,1,NULL,'c4/66/379e2c72a1cdec232425a63e518c.png','42'),(43,4,6,72,73,1,NULL,'f8/fe/ce0757fc7a2c506f603983a632d6.png','43'),(44,4,6,74,75,1,NULL,'f6/1c/b05357aa1f4d5d8d309480728636.png','44'),(45,4,6,76,77,1,NULL,'26/e5/7bb6ce16b12c0c307c6271b0f22b.png','45');
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink_uidx` (`locale`,`permalink`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` VALUES (6,6,'Category','category','category',NULL,'en'),(7,7,'Antiques','antiques','category/antiques',NULL,'en_US'),(8,8,'Appliances','appliances','category/appliances',NULL,'en_US'),(9,9,'Arts and Crafts','arts-and-crafts','category/arts-and-crafts',NULL,'en_US'),(10,10,'Audio Equipment','audio-equipment','category/audio-equipment',NULL,'en_US'),(11,11,'Baby & kids','baby-kids','category/baby-kids',NULL,'en_US'),(12,12,'Beauty & Heallth','beauty-heallth','category/beauty-heallth',NULL,'en_US'),(13,13,'Bicycles','bicycles','category/bicycles',NULL,'en_US'),(14,14,'Boats & Marine','boats-marine','category/boats-marine',NULL,'en_US'),(15,15,'Books & Magazines','books-magazines','category/books-magazines',NULL,'en_US'),(16,16,'Business Equipment','business-equipment','category/business-equipment',NULL,'en_US'),(17,17,'Campers & RVs','campers-rvs','category/campers-rvs',NULL,'en_US'),(18,18,'Cars & Trucks','cars-trucks','category/cars-trucks',NULL,'en_US'),(19,19,'CDs & DVDs','cds-dvds','category/cds-dvds',NULL,'en_US'),(20,20,'Cell Phone','cell-phone','category/cell-phone',NULL,'en_US'),(21,21,'Clothing & Shoes','clothing-shoes','category/clothing-shoes',NULL,'en_US'),(22,22,'Collectibles','collectibles','category/collectibles',NULL,'en_US'),(23,23,'Computer Equipment','computer-equipment','category/computer-equipment',NULL,'en_US'),(24,24,'Delivery service','delivery-service','category/delivery-service',NULL,'en_US'),(25,25,'Computer Software','computer-software','category/computer-software',NULL,'en_US'),(26,26,'Electronics','electronics','category/electronics',NULL,'en_US'),(27,27,'Farming','farming','farming',NULL,'en_US'),(28,28,'Furniture','furniture','furniture',NULL,'en_US'),(29,29,'Games & Toys','games-toys','games-toys',NULL,'en_US'),(30,30,'General','general','general',NULL,'en_US'),(31,31,'Home & Garden','home-garden','home-garden',NULL,'en_US'),(32,32,'Household','household','household',NULL,'en_US'),(33,33,'Jewelry & Accessories','jewelry-accessories','jewelry-accessories',NULL,'en_US'),(35,35,'Motor Cycles','motor-cycles','motor-cycles',NULL,'en_US'),(36,36,'Musical Instruments','musical-instruments','musical-instruments',NULL,'en_US'),(37,37,'Pet Sitting','pet-sitting','pet-sitting',NULL,'en_US'),(38,38,'Pet Supplies','pet-supplies','pet-supplies',NULL,'en_US'),(39,39,'Shopping','shopping','shopping',NULL,'en_US'),(40,40,'Sports & Outdoors','sports-outdoors','sports-outdoors',NULL,'en_US'),(41,41,'Task','task','task',NULL,'en_US'),(42,42,'Tools & Machinery','tools-machinery','tools-machinery',NULL,'en_US'),(43,43,'TVs','tvs','tvs',NULL,'en_US'),(44,44,'Repairs','repairs','repairs',NULL,'en_US'),(45,45,'Video Games & Systems','video-games-systems','video-games-systems',NULL,'en_US');
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxonomy`
--

DROP TABLE IF EXISTS `sylius_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxonomy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2A9E3D279066886` (`root_id`),
  CONSTRAINT `FK_2A9E3D279066886` FOREIGN KEY (`root_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxonomy`
--

LOCK TABLES `sylius_taxonomy` WRITE;
/*!40000 ALTER TABLE `sylius_taxonomy` DISABLE KEYS */;
INSERT INTO `sylius_taxonomy` VALUES (4,6);
/*!40000 ALTER TABLE `sylius_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxonomy_translation`
--

DROP TABLE IF EXISTS `sylius_taxonomy_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxonomy_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_taxonomy_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_9F3F90D92C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_9F3F90D92C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxonomy` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxonomy_translation`
--

LOCK TABLES `sylius_taxonomy_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxonomy_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxonomy_translation` VALUES (3,4,'Category','en_US');
/*!40000 ALTER TABLE `sylius_taxonomy_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_theme`
--

DROP TABLE IF EXISTS `sylius_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authors` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CAD5695E237E06` (`name`),
  KEY `IDX_3CAD5695E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_theme`
--

LOCK TABLES `sylius_theme` WRITE;
/*!40000 ALTER TABLE `sylius_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_theme_parents`
--

DROP TABLE IF EXISTS `sylius_theme_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_theme_parents` (
  `child_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`child_id`,`parent_id`),
  KEY `IDX_48942C67DD62C21B` (`child_id`),
  KEY `IDX_48942C67727ACA70` (`parent_id`),
  CONSTRAINT `FK_48942C67727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_theme` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48942C67DD62C21B` FOREIGN KEY (`child_id`) REFERENCES `sylius_theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_theme_parents`
--

LOCK TABLES `sylius_theme_parents` WRITE;
/*!40000 ALTER TABLE `sylius_theme_parents` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_theme_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user`
--

DROP TABLE IF EXISTS `sylius_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_569A33C09395C3F3` (`customer_id`),
  CONSTRAINT `FK_569A33C09395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user`
--

LOCK TABLES `sylius_user` WRITE;
/*!40000 ALTER TABLE `sylius_user` DISABLE KEYS */;
INSERT INTO `sylius_user` VALUES (1,1,'kulashare@dev.com','kulashare@dev.com',1,'qerifzj74askw00gc00cscwgsk0kswc','SPS59fqkK0FSBXt42gTz/4Gj4XQqjpziwhqgIKWCj5138FI8YA5oxXzVI4w1g9jzOoBja/FrZQDQzn1vLrllCQ==','2016-03-05 23:42:03',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2015-09-05 22:00:45','2016-03-05 23:42:03'),(2,2,'cuco@a.com','cuco@a.com',1,'htkc57kvbfkg4oocokog80kg80s8w08','QXTz/FKkjJu9aQNiGudoVin5sIPoYWaEFBBTfUOmZ8c4o9zGZrr6vxCPBnf8KEUsP3cVkNXGNXGpP6zYOAJRqQ==','2015-09-07 00:45:25',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2015-09-05 23:08:28','2015-09-07 00:45:25'),(3,3,'cuco1@a.com','cuco1@a.com',1,'trg30kgt4pc8cs8o48k04o4w08go8g8','WNQSA26a0fVLb/KPWuAHPb5tGHLZ9vOICKVbEMrgz2t4sgMJsP0YFRzPCmXcJ4EyDj7zkcEPU++vpRcu9wfA6g==','2015-09-09 03:06:10',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2015-09-09 03:06:04','2015-09-09 03:06:10'),(4,4,'cuco2@a.com','cuco2@a.com',1,'dfbzf87uhigo4wogkk0wkk044kw4gc8','0p2qQoY6Ff4TzNsoItBnRXwVJYMPvIHF6FuaWXfCzKke/u5EE0kTXCPZccD0yOSeUpI6NW42QwoHB7hyhLMUQw==','2015-09-09 03:21:38',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2015-09-09 03:21:36','2015-09-09 03:21:38'),(5,5,'cuco3@a.com','cuco3@a.com',1,'crdv6v5ei3kkc0gswcoskc488gk4g4c','cOt1keGQwdBoXMtZUwIkqTuq6Anxuo6E0Kdz+heNtSjw4EIh1IxRUeuX1khytOmQcy4htLQRu4pNqv83Jbm5TA==','2015-09-09 03:42:45',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2015-09-09 03:42:42','2015-09-09 03:42:45'),(6,6,'cuco4@a.com','cuco4@a.com',1,'jhr8iqsa580s4484ockkkk00wcc0wsc','TukG9kL1YE0tAk4bIYL93g56i17lFBe5Wdnza3VW4syGWEN2qr9ZxNs5vr45z44uToslLbxMeYLL2Ji0lQ8Jaw==','2015-10-03 22:51:44',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2015-09-10 02:53:36','2015-10-03 22:51:44'),(7,7,'yaanman@gmail.com','yaanman@gmail.com',1,'ln1mn5r0n1w808s4gk8go04ww8w8sko','REhRlVecyeLLb2qbF9kPvk/tgH+bZdpqhwLMYz09Pdk4awvhZok66HdJxPOwdvPrOpheZslwyUHqPZs9m+9GRw==','2015-10-22 19:30:19',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2015-10-22 19:30:17','2015-10-22 19:30:19'),(8,8,'user.test@test.com','user.test@test.com',1,'pbrgn1nah4gococ4cgs44k44s40ws88','p89QBr12weFCt4wHJLeAJL/fxhWCda1QuWg+pPhEJqwKn/2KnWetjACET6O6A7SSdG0XMloDQOVBR7bww2yjOA==','2016-02-23 21:52:58',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2015-12-07 20:59:47','2016-02-23 21:52:58'),(9,9,'germansantafe@gmail.com','germansantafe@gmail.com',1,'hnmdkpsuisggwow0cgsk4w4sgk4ks08','KcUDXR49yrcGXAJaGKGi63bBy5UlqqPH/BYRZajCGaVzeUi8Pl0+PGFh/ITeCUj0mVwTgyDWPxLer1kLJkVvKg==','2016-01-25 01:42:36',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2016-01-25 01:42:34','2016-01-25 01:42:36'),(10,10,'inriel@enfusionize.com','inriel@enfusionize.com',1,'35o7vv0yijeooo44kgokc8s04oosogw','aiG3IMRUSOrhSOVcGxcuQREzREGd20iBoQUCDLnG2oWVcMuZcSuZApmNrtWn16wA0DvjeZQEwJuhfkzPTbMTpA==','2016-01-25 16:20:16',NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2016-01-25 16:20:15','2016-01-25 16:20:16'),(11,11,'rafix@saralabs.com',NULL,1,'3tcsomj7f5es04s440c8gwwko0kwgo4','onMMG3QTsw/BPxeumZzvnGT+EFt3Tof7zKZEs27fmtiyJik4S128RkEWIaI8jEZqtSj7AKolD+9iMZeJGMogVg==',NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}','2016-03-04 19:46:30','2016-03-04 19:46:56');
/*!40000 ALTER TABLE `sylius_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_oauth`
--

LOCK TABLES `sylius_user_oauth` WRITE;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_role`
--

DROP TABLE IF EXISTS `sylius_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_1DA28211A76ED395` (`user_id`),
  KEY `IDX_1DA28211D60322AC` (`role_id`),
  CONSTRAINT `FK_1DA28211A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1DA28211D60322AC` FOREIGN KEY (`role_id`) REFERENCES `sylius_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_role`
--

LOCK TABLES `sylius_user_role` WRITE;
/*!40000 ALTER TABLE `sylius_user_role` DISABLE KEYS */;
INSERT INTO `sylius_user_role` VALUES (1,2),(6,3),(11,2);
/*!40000 ALTER TABLE `sylius_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` VALUES (1,'USA','country','price','');
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` VALUES (1,1,'');
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-06 15:59:11
