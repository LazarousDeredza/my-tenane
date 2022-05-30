-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_type` (
  `account_type_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`account_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_type`
--

LOCK TABLES `account_type` WRITE;
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_type`
--

DROP TABLE IF EXISTS `address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_type` (
  `address_type_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`address_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_type`
--

LOCK TABLES `address_type` WRITE;
/*!40000 ALTER TABLE `address_type` DISABLE KEYS */;
INSERT INTO `address_type` VALUES ('5259c346-ac8c-4a50-ba71-052a4b5ebbd6',_binary '','2022-04-19',NULL,NULL,NULL,NULL,'Physical','Physical',NULL,'4fa589cf-793f-4886-ad58-32487090c72d','admin@softhub.com',NULL,NULL),('a91e42fc-36c1-487c-91c3-53770f5b2d2f',_binary '','2022-04-19',NULL,NULL,NULL,NULL,'Postal','Postal',NULL,'d9d17dd6-79b3-4e0e-a557-ca2e794eeba6','admin@softhub.com',NULL,NULL);
/*!40000 ALTER TABLE `address_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branch_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `city_id` varchar(36) DEFAULT NULL,
  `country_id` varchar(36) DEFAULT NULL,
  `province_id` varchar(36) DEFAULT NULL,
  `dtype` varchar(31) NOT NULL,
  PRIMARY KEY (`branch_id`),
  KEY `FK_fj4gpfk6h7jmyxq51y3rgjocf` (`city_id`),
  KEY `FK_qefcjnwgri8gxhqgoms99ove4` (`country_id`),
  CONSTRAINT `FK_fj4gpfk6h7jmyxq51y3rgjocf` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `FK_qefcjnwgri8gxhqgoms99ove4` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('2b8b1f21-3199-4857-bb23-dc614a2f9c11',_binary '','2022-04-18',NULL,NULL,NULL,NULL,'663018','09393839383','Makomva','8557, 24 Street','000263',NULL,'admin@softhub.com',NULL,'a98b19e3-d55e-4f6c-8efa-5e010a90bcde','f9230280-ab28-48de-9f0b-1ce452daa1f7','23d2e87b-f60b-4999-84b9-06ef5ab6ee6b',''),('846ff062-e737-4ec0-96a9-73701729b6b9',_binary '','2022-04-20',NULL,NULL,NULL,NULL,'663018585','093938393858','Avondale Branch','4637, 24 Street','000263',NULL,'admin@softhub.com',NULL,'a98b19e3-d55e-4f6c-8efa-5e010a90bcde','f9230280-ab28-48de-9f0b-1ce452daa1f7','23d2e87b-f60b-4999-84b9-06ef5ab6ee6b','FromBranch'),('9dd56d2b-1b7f-4a6c-8e4a-e5c3f5aaf1c3',_binary '','2022-04-20',NULL,NULL,NULL,NULL,'663018','09393839383','Karigamombe','8557, 24 Street','000263',NULL,'admin@softhub.com',NULL,'a98b19e3-d55e-4f6c-8efa-5e010a90bcde','f9230280-ab28-48de-9f0b-1ce452daa1f7','23d2e87b-f60b-4999-84b9-06ef5ab6ee6b','ToBranch');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES ('5e342522-309e-40fc-b6fe-8b4509daf113',_binary '','2022-04-18',NULL,NULL,NULL,NULL,'Samsung','Samsung',NULL,'c874d58a-25dd-45e6-8a4f-a10426adb16c',NULL,'admin@softhub.com',NULL);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('7cb04086-fcc3-48c4-a405-48a74256755b',_binary '','2022-04-18',NULL,NULL,NULL,NULL,'Electronics','Electronics',NULL,'f937014e-04ed-4415-8d3b-ef37d96b0968',NULL,'admin@softhub.com',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `country_id` varchar(36) DEFAULT NULL,
  `province_id` varchar(36) DEFAULT NULL,
  `id` bigint NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `UK_iwjiovntqwu2ubcs3j6gekndp` (`uid`),
  KEY `FK_dqdsiek23hleiulhpmnf98hwj` (`country_id`),
  CONSTRAINT `FK_dqdsiek23hleiulhpmnf98hwj` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('99b12f79-f489-4f9e-b799-7005163aaa0d',_binary '','2022-04-15',NULL,NULL,NULL,NULL,'Mutare','Mutare',NULL,'642566f1-836d-4bf5-ba38-4c16436c5992',NULL,NULL,'admin@softhub.com',NULL,NULL,'b56ca02e-a399-4b7f-983b-bd792122dec1',0,NULL),('a98b19e3-d55e-4f6c-8efa-5e010a90bcde',_binary '','2022-04-15',NULL,NULL,NULL,NULL,'Sunshine City','Harare',NULL,'86cbe97c-ac2d-41b2-9449-32bff5962dc7',NULL,NULL,'admin@softhub.com',NULL,NULL,'23d2e87b-f60b-4999-84b9-06ef5ab6ee6b',0,NULL);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `sender_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `client_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `address_type_id` varchar(36) DEFAULT NULL,
  `dtype` varchar(31) NOT NULL,
  PRIMARY KEY (`sender_id`),
  KEY `FK_k95m5l5syeks2dmwqce6ga287` (`address_type_id`),
  CONSTRAINT `FK_k95m5l5syeks2dmwqce6ga287` FOREIGN KEY (`address_type_id`) REFERENCES `address_type` (`address_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('72f37486-d403-4017-b9e0-1ce85ebd0443',_binary '','2022-04-21',NULL,NULL,NULL,NULL,NULL,'Edward Zengeni',NULL,'58422055-3708-4b83-a9bc-af95ad769801','8557, 24 Street','5958493939','chikumbaphinny@gmail.com','+263783457344',NULL,'admin@softhub.com',NULL,'5259c346-ac8c-4a50-ba71-052a4b5ebbd6','Recipient'),('98d1feb7-5233-47ec-8093-32e608de1037',_binary '','2022-04-21',NULL,NULL,NULL,NULL,NULL,'Shiela',NULL,'3a84f4df-830a-49cb-a516-fa47eccbce6a','8557, 24 Street','8948484','chikumbaphinny@gmail.com','+263783457344',NULL,'admin@softhub.com',NULL,'5259c346-ac8c-4a50-ba71-052a4b5ebbd6','Sender');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `balance` double NOT NULL,
  `company_no` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `credit_limit` double NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `country_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `FK_6375rhh2tyjm32i7i1r8lb4ew` (`country_id`),
  CONSTRAINT `FK_6375rhh2tyjm32i7i1r8lb4ew` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('b648ae51-db50-4b05-800e-91af2bc37698',_binary '','2022-04-18',NULL,NULL,NULL,NULL,1000,'585874','09393839383',44940,'USD','Phineas Chikumba','2022-04-01','admin@softhub.com',NULL,NULL,'f9230280-ab28-48de-9f0b-1ce452daa1f7');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_bank_detail`
--

DROP TABLE IF EXISTS `company_bank_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_bank_detail` (
  `company_bank_detail_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `bank` varchar(150) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `account_type_id` varchar(36) NOT NULL,
  `company_id` varchar(36) NOT NULL,
  PRIMARY KEY (`company_bank_detail_id`),
  KEY `FK_oivuob2f8jm2x9b40lht8ucj6` (`account_type_id`),
  KEY `FK_ua9shvqb7cu53rmmjrfcuncr` (`company_id`),
  CONSTRAINT `FK_oivuob2f8jm2x9b40lht8ucj6` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`account_type_id`),
  CONSTRAINT `FK_ua9shvqb7cu53rmmjrfcuncr` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_bank_detail`
--

LOCK TABLES `company_bank_detail` WRITE;
/*!40000 ALTER TABLE `company_bank_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_bank_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_contact`
--

DROP TABLE IF EXISTS `company_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_contact` (
  `company_contact_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `contact_detail` varchar(255) NOT NULL,
  `status` bit(1) NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `company_id` varchar(36) NOT NULL,
  `contact_type_id` varchar(36) NOT NULL,
  PRIMARY KEY (`company_contact_id`),
  KEY `FK_74pcgiu6g8qicj22xnsnrnr41` (`company_id`),
  KEY `FK_i2pg244slbsvrvd3wmdbu563n` (`contact_type_id`),
  CONSTRAINT `FK_74pcgiu6g8qicj22xnsnrnr41` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `FK_i2pg244slbsvrvd3wmdbu563n` FOREIGN KEY (`contact_type_id`) REFERENCES `contact_type` (`contact_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_contact`
--

LOCK TABLES `company_contact` WRITE;
/*!40000 ALTER TABLE `company_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_type`
--

DROP TABLE IF EXISTS `contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_type` (
  `contact_type_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`contact_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_type`
--

LOCK TABLES `contact_type` WRITE;
/*!40000 ALTER TABLE `contact_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('f9230280-ab28-48de-9f0b-1ce452daa1f7',_binary '','2022-04-15',NULL,NULL,NULL,NULL,'Zim','Zimbabwe',NULL,'2da0dd71-9a4e-46be-b90a-351666a5d45b','+263',NULL,'admin@softhub.com',NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `address_info_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `y_tunnus` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `bill_to` varchar(36) DEFAULT NULL,
  `ship_to` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `FK_o8m4cg2slfssdctv5ek0xj8d` (`bill_to`),
  KEY `FK_ocj13aphbpnp8gjl608qjfryv` (`ship_to`),
  CONSTRAINT `FK_o8m4cg2slfssdctv5ek0xj8d` FOREIGN KEY (`bill_to`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK_ocj13aphbpnp8gjl608qjfryv` FOREIGN KEY (`ship_to`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatch`
--

DROP TABLE IF EXISTS `dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispatch` (
  `dispatch_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `date_dispatched` date DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `warehouse` tinyblob,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `warehouse_id` varchar(36) DEFAULT NULL,
  `id` bigint NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dispatch_id`),
  UNIQUE KEY `UK_mqcrd5p99sf44nq1c1nidusuy` (`uid`),
  KEY `FK_rskjg3qoogl6llwttdj5hdnat` (`warehouse_id`),
  CONSTRAINT `FK_rskjg3qoogl6llwttdj5hdnat` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch`
--

LOCK TABLES `dispatch` WRITE;
/*!40000 ALTER TABLE `dispatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `district_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `district_code` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `province_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`district_id`),
  KEY `FK_5x8813je991s9iukbp3q5blkq` (`province_id`),
  CONSTRAINT `FK_5x8813je991s9iukbp3q5blkq` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES ('403f1bd6-1c21-448a-a764-961a2ebdaddd',_binary '','2018-12-11',NULL,NULL,NULL,NULL,'Mutasa','Mutasa',NULL,'592b7b47-ef78-4781-b915-6e717a6385c8','1001','admin@softhub.com',NULL,NULL,'b56ca02e-a399-4b7f-983b-bd792122dec1'),('cbe87ccc-d8fa-4574-8200-abee7dc14876',_binary '','2018-12-11',NULL,NULL,NULL,NULL,'Buhera','Buhera',NULL,'35ff1f85-4600-4308-9d6d-0f995f7829ef','1002','admin@softhub.com',NULL,NULL,'b56ca02e-a399-4b7f-983b-bd792122dec1');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `number` int NOT NULL,
  `reference` int NOT NULL,
  `terms` int NOT NULL,
  `totalsum` double NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `bill_to` varchar(36) DEFAULT NULL,
  `customer` varchar(36) DEFAULT NULL,
  `address_id` varchar(36) DEFAULT NULL,
  `user` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `FK_1fqyt6r488gdl9hp52uj3dkwa` (`bill_to`),
  KEY `FK_bj1o9xrn5tphohpy1d8hvjvof` (`customer`),
  KEY `FK_j8u8dqbworrk9b0jf2hcnfkdw` (`address_id`),
  CONSTRAINT `FK_1fqyt6r488gdl9hp52uj3dkwa` FOREIGN KEY (`bill_to`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK_bj1o9xrn5tphohpy1d8hvjvof` FOREIGN KEY (`customer`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `FK_j8u8dqbworrk9b0jf2hcnfkdw` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_row`
--

DROP TABLE IF EXISTS `invoice_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_row` (
  `invoice_row_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `ammount` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `tax` double NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `invoice` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`invoice_row_id`),
  KEY `FK_t0vxtwm7ucj2bc9284lbhrsg5` (`invoice`),
  CONSTRAINT `FK_t0vxtwm7ucj2bc9284lbhrsg5` FOREIGN KEY (`invoice`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_row`
--

LOCK TABLES `invoice_row` WRITE;
/*!40000 ALTER TABLE `invoice_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `look_up_table`
--

DROP TABLE IF EXISTS `look_up_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `look_up_table` (
  `look_up_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `max_mass` double NOT NULL,
  `min_mass` double NOT NULL,
  `price` double NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `unit_of_measure_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`look_up_id`),
  KEY `FK_jr2k4qk63wcxmnynsp1kap2dj` (`unit_of_measure_id`),
  CONSTRAINT `FK_jr2k4qk63wcxmnynsp1kap2dj` FOREIGN KEY (`unit_of_measure_id`) REFERENCES `unit_of_measure` (`unit_of_measure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `look_up_table`
--

LOCK TABLES `look_up_table` WRITE;
/*!40000 ALTER TABLE `look_up_table` DISABLE KEYS */;
INSERT INTO `look_up_table` VALUES ('6e3245f7-cf8c-474c-b34b-aa6d6f8f217e',_binary '','2022-04-21',NULL,NULL,NULL,NULL,NULL,'1-20cm^3',NULL,'ea05f54b-12fd-433d-abbc-a883b9813a85',19.9,1,10,NULL,'admin@softhub.com',NULL,'38c7f094-7e9e-4bd5-8721-cca7efb00e70'),('79a9a239-cb28-4bcc-8670-37e823e14991',_binary '','2022-04-21',NULL,NULL,NULL,NULL,NULL,'20-50cm^3',NULL,'279d6f24-50e5-4c81-9e2c-66ce08a01859',50,20,30,NULL,'admin@softhub.com',NULL,'38c7f094-7e9e-4bd5-8721-cca7efb00e70');
/*!40000 ALTER TABLE `look_up_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mass_look_up_table`
--

DROP TABLE IF EXISTS `mass_look_up_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mass_look_up_table` (
  `id` bigint NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `unit_of_measure_id` bigint DEFAULT NULL,
  `look_up_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `max_mass` double NOT NULL,
  `min_mass` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_p451wmguw39bqv18hrvx97yip` (`created_by`),
  KEY `FK_ll1mxs5e46s5mtnko2sax5pau` (`modified_by`),
  KEY `FK_oblvsxh5aj9ihdc93bld4ppxr` (`voided_by`),
  KEY `FK_1cnhgg5ry27lgc3p4ooxuj33s` (`unit_of_measure_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mass_look_up_table`
--

LOCK TABLES `mass_look_up_table` WRITE;
/*!40000 ALTER TABLE `mass_look_up_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mass_look_up_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationality` (
  `nationality_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `country_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`nationality_id`),
  KEY `FK_g1g6mmsl76k25u6n2c6udy9yc` (`country_id`),
  CONSTRAINT `FK_g1g6mmsl76k25u6n2c6udy9yc` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcel`
--

DROP TABLE IF EXISTS `parcel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parcel` (
  `parcel_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `height` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `reference_no` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `from_branch_id` varchar(36) DEFAULT NULL,
  `recipient_id` varchar(36) DEFAULT NULL,
  `sender_id` varchar(36) DEFAULT NULL,
  `status_id` varchar(36) DEFAULT NULL,
  `to_branch_id` varchar(36) DEFAULT NULL,
  `parcel_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`parcel_id`),
  KEY `FK_ednmxvw7akqf3l95m4kclbbt2` (`from_branch_id`),
  KEY `FK_520s38ay7is09jc8mgammlv3o` (`recipient_id`),
  KEY `FK_9kr33t0o29ad1mj429s79c9qx` (`sender_id`),
  KEY `FK_59yak0n5xy1en19i3r1i1r9o5` (`status_id`),
  KEY `FK_gbr0x8pqd1hm7mhryr65c4gwk` (`to_branch_id`),
  CONSTRAINT `FK_520s38ay7is09jc8mgammlv3o` FOREIGN KEY (`recipient_id`) REFERENCES `client` (`sender_id`),
  CONSTRAINT `FK_59yak0n5xy1en19i3r1i1r9o5` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `FK_9kr33t0o29ad1mj429s79c9qx` FOREIGN KEY (`sender_id`) REFERENCES `client` (`sender_id`),
  CONSTRAINT `FK_ednmxvw7akqf3l95m4kclbbt2` FOREIGN KEY (`from_branch_id`) REFERENCES `branch` (`branch_id`),
  CONSTRAINT `FK_gbr0x8pqd1hm7mhryr65c4gwk` FOREIGN KEY (`to_branch_id`) REFERENCES `branch` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcel`
--

LOCK TABLES `parcel` WRITE;
/*!40000 ALTER TABLE `parcel` DISABLE KEYS */;
INSERT INTO `parcel` VALUES ('03b8e103-7f43-402f-adc7-817ac54c822f',_binary '','2022-04-20',NULL,NULL,NULL,NULL,NULL,'Chocolate',NULL,'f5ad156a-cf96-42ff-88be-723093578f5e','4','5','10','59584847','3','7',NULL,'admin@softhub.com',NULL,'846ff062-e737-4ec0-96a9-73701729b6b9',NULL,NULL,'a76913b6-1e77-43a2-9604-0021d352da7d','9dd56d2b-1b7f-4a6c-8e4a-e5c3f5aaf1c3',NULL),('160d7e11-5445-48ee-9d54-96041425a89a',_binary '','2022-04-21',NULL,NULL,NULL,NULL,NULL,'Box Of Washing Powder',NULL,'e66f7941-f954-4280-bcf9-a484c919cfa3','3.0','2.0','10.0','504940','2.0','2.0',NULL,'admin@softhub.com',NULL,'846ff062-e737-4ec0-96a9-73701729b6b9',NULL,NULL,'a76913b6-1e77-43a2-9604-0021d352da7d','9dd56d2b-1b7f-4a6c-8e4a-e5c3f5aaf1c3',NULL),('3c5e9138-da21-4286-9570-35f926e6cd20',_binary '','2022-04-21',NULL,NULL,NULL,NULL,NULL,'Pocket Of Potatoes',NULL,'7e3d7c67-099d-4691-b911-8700bd560b4c','3.0','3.0','30.0','39937373','10.0','3.0',NULL,'admin@softhub.com',NULL,'846ff062-e737-4ec0-96a9-73701729b6b9','72f37486-d403-4017-b9e0-1ce85ebd0443','98d1feb7-5233-47ec-8093-32e608de1037','a76913b6-1e77-43a2-9604-0021d352da7d','9dd56d2b-1b7f-4a6c-8e4a-e5c3f5aaf1c3',NULL),('600cdf80-7627-4404-a753-366d5fab29aa',_binary '','2022-04-21',NULL,NULL,NULL,NULL,NULL,'Box Of Candles',NULL,'e37f60e3-3937-44a3-ab19-caf1b1ada81e','2.0','3.0','10.0','372627','5.0','3.0',NULL,'admin@softhub.com',NULL,'846ff062-e737-4ec0-96a9-73701729b6b9','72f37486-d403-4017-b9e0-1ce85ebd0443','98d1feb7-5233-47ec-8093-32e608de1037','a76913b6-1e77-43a2-9604-0021d352da7d','9dd56d2b-1b7f-4a6c-8e4a-e5c3f5aaf1c3',NULL),('74a48752-d530-4d9e-a03c-36113f817547',_binary '','2022-04-21',NULL,NULL,NULL,NULL,NULL,'Box Of Biscuits',NULL,'c202f4d8-2a83-4e94-ae6d-effa48988e2d','3.0','3.0','30.0','372628262','2.0','3.0',NULL,'admin@softhub.com',NULL,'846ff062-e737-4ec0-96a9-73701729b6b9',NULL,NULL,'b511aed6-52b3-4b59-bba2-25862206aefa','9dd56d2b-1b7f-4a6c-8e4a-e5c3f5aaf1c3',NULL);
/*!40000 ALTER TABLE `parcel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcel_item`
--

DROP TABLE IF EXISTS `parcel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parcel_item` (
  `parcel_item_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `height` double NOT NULL,
  `length` double NOT NULL,
  `price` double NOT NULL,
  `weight` double NOT NULL,
  `width` double NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `parcel_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`parcel_item_id`),
  KEY `FK_lte8ub3duaji8tmv820axmxft` (`parcel_id`),
  CONSTRAINT `FK_lte8ub3duaji8tmv820axmxft` FOREIGN KEY (`parcel_id`) REFERENCES `parcel` (`parcel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcel_item`
--

LOCK TABLES `parcel_item` WRITE;
/*!40000 ALTER TABLE `parcel_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `parcel_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcel_state`
--

DROP TABLE IF EXISTS `parcel_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parcel_state` (
  `parcel_state_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `parcel_status` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `from_branch_id` varchar(36) NOT NULL,
  `parcel_id` varchar(36) NOT NULL,
  `to_branch_id` varchar(36) NOT NULL,
  PRIMARY KEY (`parcel_state_id`),
  KEY `FK_cih7uev6p0ggxr14jvkqai8ib` (`from_branch_id`),
  KEY `FK_ksq7rg334krqsmat84uta21e9` (`parcel_id`),
  KEY `FK_r9erat1sf85jhk68tteqxtkeg` (`to_branch_id`),
  CONSTRAINT `FK_cih7uev6p0ggxr14jvkqai8ib` FOREIGN KEY (`from_branch_id`) REFERENCES `branch` (`branch_id`),
  CONSTRAINT `FK_ksq7rg334krqsmat84uta21e9` FOREIGN KEY (`parcel_id`) REFERENCES `parcel` (`parcel_id`),
  CONSTRAINT `FK_r9erat1sf85jhk68tteqxtkeg` FOREIGN KEY (`to_branch_id`) REFERENCES `branch` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcel_state`
--

LOCK TABLES `parcel_state` WRITE;
/*!40000 ALTER TABLE `parcel_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `parcel_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority` (
  `priority_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilege` (
  `name` varchar(50) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `privilege_id` char(36) NOT NULL DEFAULT '',
  `created_by` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `retired` tinyint(1) DEFAULT '0',
  `date_retired` datetime DEFAULT NULL,
  `retired_by` varchar(50) DEFAULT NULL,
  `retire_reason` varchar(250) DEFAULT NULL,
  `privilege` varchar(50) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`) USING BTREE,
  UNIQUE KEY `UK_h7iwbdg4ev8mgvmij76881tx8` (`name`),
  KEY `FKA1FAF6B1EE34A869` (`created_by`),
  KEY `FKA1FAF6B171027008` (`retired_by`),
  KEY `FKA1FAF6B140868CE8` (`modified_by`),
  KEY `FK_3889eqolaagllikms5uy2kg1l` (`voided_by`),
  CONSTRAINT `FK_3889eqolaagllikms5uy2kg1l` FOREIGN KEY (`voided_by`) REFERENCES `user` (`username`),
  CONSTRAINT `FK_ajhuk2pg04j4qsejvn5sweaw7` FOREIGN KEY (`created_by`) REFERENCES `user` (`username`),
  CONSTRAINT `FK_ggtskjnhqownshsfy9ju8jl3w` FOREIGN KEY (`modified_by`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `product_no` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `brand_id` varchar(36) DEFAULT NULL,
  `category_id` varchar(36) DEFAULT NULL,
  `unit_of_measure_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK_1td6gorl25rsvufiiive2svlx` (`brand_id`),
  KEY `FK_rlaghtegr0yx2c1q1s6nkqjlh` (`category_id`),
  KEY `FK_ivl9aqhrev2yghf1qdrbu6sks` (`unit_of_measure_id`),
  CONSTRAINT `FK_1td6gorl25rsvufiiive2svlx` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `FK_ivl9aqhrev2yghf1qdrbu6sks` FOREIGN KEY (`unit_of_measure_id`) REFERENCES `unit_of_measure` (`unit_of_measure_id`),
  CONSTRAINT `FK_rlaghtegr0yx2c1q1s6nkqjlh` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `province_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES ('04b4304b-2855-4b81-82ef-159fe6e429a0',_binary '','2022-04-17',NULL,NULL,NULL,NULL,'Masvingo','Masvingo',NULL,'d370d521-6d0d-445b-9d0c-2e913666960f',NULL,'admin@softhub.com',NULL),('23d2e87b-f60b-4999-84b9-06ef5ab6ee6b',_binary '','2018-12-11',NULL,NULL,NULL,NULL,'Harare','Harare',NULL,'94a0c8cb-5b08-4ab5-9829-fe579de3eb1c',NULL,'admin@softhub.com',NULL),('b56ca02e-a399-4b7f-983b-bd792122dec1',_binary '','2018-12-11',NULL,NULL,NULL,NULL,'Manicaland','Manicaland',NULL,'a72eff36-fc74-4d19-8175-88f7f89e4358',NULL,'admin@softhub.com',NULL);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive`
--

DROP TABLE IF EXISTS `receive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receive` (
  `receive_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `warehouse_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`receive_id`),
  KEY `FK_lqro6px79pjc69tfp93fh7x6m` (`warehouse_id`),
  CONSTRAINT `FK_lqro6px79pjc69tfp93fh7x6m` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receive`
--

LOCK TABLES `receive` WRITE;
/*!40000 ALTER TABLE `receive` DISABLE KEYS */;
/*!40000 ALTER TABLE `receive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipient` (
  `recipient_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `recipient_no` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `address_type_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`recipient_id`),
  KEY `FK_shdnpqwa4tu1gif8lpnrjvrwi` (`address_type_id`),
  CONSTRAINT `FK_shdnpqwa4tu1gif8lpnrjvrwi` FOREIGN KEY (`address_type_id`) REFERENCES `address_type` (`address_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `description` varchar(250) DEFAULT NULL,
  `role_id` char(36) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `retired` tinyint(1) DEFAULT '0',
  `retired_by` varchar(50) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(250) DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `UK_8sewwnpamngi6b1dwaa88askk` (`name`),
  KEY `FK358076EE34A869` (`created_by`),
  KEY `FK35807671027008` (`retired_by`),
  KEY `FK35807640868CE8` (`modified_by`),
  KEY `FK_p3melh3h00l88p3twd88vxhv4` (`voided_by`),
  CONSTRAINT `FK_an2y0kmx8d0foer8i5vj2rfy5` FOREIGN KEY (`modified_by`) REFERENCES `user` (`username`),
  CONSTRAINT `FK_lrvd68ij3575vbcre9bfudvy0` FOREIGN KEY (`created_by`) REFERENCES `user` (`username`),
  CONSTRAINT `FK_p3melh3h00l88p3twd88vxhv4` FOREIGN KEY (`voided_by`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (NULL,'44d0da4a-d026-11e1-aea7-24b6fd073a6c',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'ROLE_USER',NULL,_binary '',NULL,0,NULL,NULL),(NULL,'ff808181385b65b701385b65d1570001',NULL,'2012-07-06 10:26:35',0,NULL,NULL,NULL,NULL,NULL,'DATA ENTRY CLERK',NULL,_binary '',NULL,0,NULL,NULL),(NULL,'ff808181385b67cf01385b67e47f0001',NULL,'2012-07-06 10:28:51',0,NULL,NULL,NULL,NULL,NULL,'ROLE_ADMINISTRATOR',NULL,_binary '',NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_privilege`
--

DROP TABLE IF EXISTS `role_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_privilege` (
  `role_id` char(36) NOT NULL,
  `privilege_id` char(36) NOT NULL,
  PRIMARY KEY (`role_id`,`privilege_id`) USING BTREE,
  KEY `FK45FBD6281811A1BA` (`privilege_id`),
  KEY `FK45FBD628A7B5F594` (`role_id`),
  KEY `FK45FBD628E399CE8A` (`privilege_id`),
  KEY `FK45FBD628EEA1298A` (`role_id`),
  CONSTRAINT `FK_9xg496yxp3mpqmnsdskahammb` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FK_ibv7nokkl4msov5sl1wyl99n2` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_privilege`
--

LOCK TABLES `role_privilege` WRITE;
/*!40000 ALTER TABLE `role_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sender`
--

DROP TABLE IF EXISTS `sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sender` (
  `sender_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `sender_no` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `address_type_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`sender_id`),
  KEY `FK_q73j8xpo38jjag0kubn45lhwy` (`address_type_id`),
  CONSTRAINT `FK_q73j8xpo38jjag0kubn45lhwy` FOREIGN KEY (`address_type_id`) REFERENCES `address_type` (`address_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sender`
--

LOCK TABLES `sender` WRITE;
/*!40000 ALTER TABLE `sender` DISABLE KEYS */;
INSERT INTO `sender` VALUES ('c34fdff0-1ae8-4db0-a92b-e5b0d6ff862a',_binary '','2022-04-19',NULL,NULL,NULL,NULL,NULL,'Phineas Chikumba',NULL,'ebab5772-36aa-4703-8ae1-0fe9fd9540ba','8557, 24 Street','chikumbaphinny@gmail.com','+263783457344','392827',NULL,'admin@softhub.com',NULL,'5259c346-ac8c-4a50-ba71-052a4b5ebbd6');
/*!40000 ALTER TABLE `sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `station_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `external_station_id` varchar(50) DEFAULT NULL,
  `latitude_coordinate` varchar(50) DEFAULT NULL,
  `longitude_coordinate` varchar(50) DEFAULT NULL,
  `station_code` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `station_category_id` varchar(36) DEFAULT NULL,
  `district_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`station_id`),
  KEY `FK_odfn36sjg97v7h9sx606ou6o6` (`station_category_id`),
  KEY `FK_l0ycj5lyinu55orobpige5f8p` (`district_id`),
  CONSTRAINT `FK_l0ycj5lyinu55orobpige5f8p` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`),
  CONSTRAINT `FK_odfn36sjg97v7h9sx606ou6o6` FOREIGN KEY (`station_category_id`) REFERENCES `station_category` (`station_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_category`
--

DROP TABLE IF EXISTS `station_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_category` (
  `station_category_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`station_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_category`
--

LOCK TABLES `station_category` WRITE;
/*!40000 ALTER TABLE `station_category` DISABLE KEYS */;
INSERT INTO `station_category` VALUES ('dd3b0f39-377f-4a0b-8841-69977efb1dff',_binary '','2018-12-11',NULL,NULL,NULL,NULL,'Local Authority','Local Authority',NULL,'75ae9ab4-fee3-4ac8-94fc-e7de187144c4',NULL,'admin@softhub.com',NULL),('f2ed41cf-e897-4e07-b946-143e36812c3c',_binary '','2018-12-11',NULL,NULL,NULL,NULL,'Central Hospital','Central Hospital',NULL,'316028cd-6a95-49e1-985e-b8d74d84710c',NULL,'admin@softhub.com',NULL);
/*!40000 ALTER TABLE `station_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES ('a76913b6-1e77-43a2-9604-0021d352da7d',_binary '','2022-04-18',NULL,NULL,NULL,NULL,'In Transit','In-transit',NULL,'71cf84cc-3807-4358-adf2-eeda2c166c77',NULL,'admin@softhub.com',NULL),('b511aed6-52b3-4b59-bba2-25862206aefa',_binary '','2022-04-18',NULL,NULL,NULL,NULL,'Collected','Collected',NULL,'8fec0ccf-0b1a-44aa-90d3-b98fcaae92f6',NULL,'admin@softhub.com',NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `balance` double NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `credit_limit` double NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `supplier_no` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `country_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `FK_nduvg8eo14pntayn55dvg1u27` (`country_id`),
  CONSTRAINT `FK_nduvg8eo14pntayn55dvg1u27` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('a9007878-bf17-494d-adbf-b0ac04f40c44',_binary '','2022-04-18',NULL,NULL,NULL,NULL,1000,'9802822',0,'USD','Phineas Chikumba','2018-01-01','9585595','admin@softhub.com',NULL,NULL,'f9230280-ab28-48de-9f0b-1ce452daa1f7');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_bank_detail`
--

DROP TABLE IF EXISTS `supplier_bank_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_bank_detail` (
  `supplier_bank_detail_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `bank` varchar(150) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `account_type_id` varchar(36) NOT NULL,
  `supplier_id` varchar(36) NOT NULL,
  PRIMARY KEY (`supplier_bank_detail_id`),
  KEY `FK_2qytmipj6uhtjl7bg0h226bjd` (`account_type_id`),
  KEY `FK_fuevp6e2f1b2e7fbgcu9a9cax` (`supplier_id`),
  CONSTRAINT `FK_2qytmipj6uhtjl7bg0h226bjd` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`account_type_id`),
  CONSTRAINT `FK_fuevp6e2f1b2e7fbgcu9a9cax` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_bank_detail`
--

LOCK TABLES `supplier_bank_detail` WRITE;
/*!40000 ALTER TABLE `supplier_bank_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_bank_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_contact`
--

DROP TABLE IF EXISTS `supplier_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_contact` (
  `supplier_contact_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `contact_detail` varchar(255) NOT NULL,
  `status` bit(1) NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `contact_type_id` varchar(36) NOT NULL,
  `supplier_id` varchar(36) NOT NULL,
  PRIMARY KEY (`supplier_contact_id`),
  KEY `FK_jcnytt9225gc83w9upefvg2wo` (`contact_type_id`),
  KEY `FK_90fahheda72g60c98ddv46ibw` (`supplier_id`),
  CONSTRAINT `FK_90fahheda72g60c98ddv46ibw` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `FK_jcnytt9225gc83w9upefvg2wo` FOREIGN KEY (`contact_type_id`) REFERENCES `contact_type` (`contact_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_contact`
--

LOCK TABLES `supplier_contact` WRITE;
/*!40000 ALTER TABLE `supplier_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title` (
  `title_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_of_measure`
--

DROP TABLE IF EXISTS `unit_of_measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_of_measure` (
  `unit_of_measure_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`unit_of_measure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_of_measure`
--

LOCK TABLES `unit_of_measure` WRITE;
/*!40000 ALTER TABLE `unit_of_measure` DISABLE KEYS */;
INSERT INTO `unit_of_measure` VALUES ('38c7f094-7e9e-4bd5-8721-cca7efb00e70',_binary '','2022-04-18',NULL,NULL,NULL,NULL,'Centimeters','Cm',NULL,'2c655547-075a-437e-b8d8-3d1ab3eeb41a',NULL,'admin@softhub.com',NULL);
/*!40000 ALTER TABLE `unit_of_measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(128) DEFAULT NULL,
  `employee_id` char(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `retired` smallint NOT NULL DEFAULT '0',
  `retired_by` varchar(50) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(45) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `changed_by` varchar(50) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `secret_question` varchar(255) DEFAULT NULL,
  `secret_answer` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_level` int DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `district` varchar(36) DEFAULT NULL,
  `province` varchar(36) DEFAULT NULL,
  `station` varchar(36) DEFAULT NULL,
  `designation` int DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_user_creator` (`created_by`),
  KEY `fk_user_person` (`employee_id`),
  KEY `FK36EBCB28768235` (`changed_by`),
  KEY `FK36EBCB7BF35120` (`retired_by`),
  KEY `FK36EBCBEE34A869` (`created_by`),
  KEY `FK36EBCB71027008` (`retired_by`),
  KEY `FK36EBCB40868CE8` (`modified_by`),
  KEY `FK_mesw6uib7dy3acv70aoj3m4tp` (`voided_by`),
  CONSTRAINT `FK_90va3gtpnkq1jr6lbb2048dfi` FOREIGN KEY (`created_by`) REFERENCES `user` (`username`),
  CONSTRAINT `FK_b3gh5m8csda04qssow1d6537v` FOREIGN KEY (`modified_by`) REFERENCES `user` (`username`),
  CONSTRAINT `FK_mesw6uib7dy3acv70aoj3m4tp` FOREIGN KEY (`voided_by`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin@softhub.com','$2a$10$SPS0S8iPPp5oCS/H7xe5qO/kcwWwgZigkU4j7fZiQjfe6pa7/LCq.','60a9ee981b700cf4340ada060f86d3ad83e0c3a3bf32335504afaeca32d183947877150f6ba307c370ae514495da545fc517540972a8332185c98214f37b0139',NULL,0,NULL,NULL,'',NULL,'2012-09-06 15:39:32',NULL,NULL,NULL,NULL,'2018-12-11 00:00:00',NULL,'A','admin@softhub.com',NULL,_binary '',NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_property`
--

DROP TABLE IF EXISTS `user_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_property` (
  `user_id` varchar(36) NOT NULL,
  `property_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`property_id`),
  UNIQUE KEY `property_id` (`property_id`),
  KEY `FKC7D137C98BEF12A` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_property`
--

LOCK TABLES `user_property` WRITE;
/*!40000 ALTER TABLE `user_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `username` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`username`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('admin@softhub.com','ff808181385b67cf01385b67e47f0001');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `warehouse_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `warehouse_no` varchar(255) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `id` bigint NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`warehouse_id`),
  UNIQUE KEY `UK_2qxgnm5dve76vj8715fcu8511` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31  1:06:14
