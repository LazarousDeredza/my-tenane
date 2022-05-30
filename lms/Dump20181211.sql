
DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `province_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
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
INSERT INTO `province` VALUES ('23d2e87b-f60b-4999-84b9-06ef5ab6ee6b',_binary '','2018-12-11',NULL,NULL,NULL,NULL,'Harare','Harare',NULL,'94a0c8cb-5b08-4ab5-9829-fe579de3eb1c',NULL,'admin@softhub.com',NULL),('b56ca02e-a399-4b7f-983b-bd792122dec1',_binary '','2018-12-11',NULL,NULL,NULL,NULL,'Manicaland','Manicaland',NULL,'a72eff36-fc74-4d19-8175-88f7f89e4358',NULL,'admin@softhub.com',NULL);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `version` bigint(20) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



--
-- Table structure for table `station_category`
--

DROP TABLE IF EXISTS `station_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station_category` (
  `station_category_id` varchar(36) NOT NULL,
  `voided` bit(1) DEFAULT NULL,
  `date_created` date NOT NULL,
  `date_modified` date DEFAULT NULL,
  `date_voided` date DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(128) DEFAULT NULL,
  `employee_id` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `retired` smallint(6) NOT NULL DEFAULT '0',
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
  `version` bigint(20) DEFAULT NULL,
  `void_reason` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `voided_by` varchar(36) DEFAULT NULL,
  `district` varchar(36) DEFAULT NULL,
  `province` varchar(36) DEFAULT NULL,
  `station` varchar(36) DEFAULT NULL,
  `designation` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 20:44:27
