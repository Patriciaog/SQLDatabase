-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: k00264116_property_bubble
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction` (
  `PK_auction_id` int(11) NOT NULL,
  `prop_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `bid_status` varchar(45) NOT NULL,
  `bid_amount` int(11) DEFAULT NULL,
  `bid_time` datetime(6) NOT NULL,
  `bid_end` datetime(6) NOT NULL,
  `asking_price` int(11) NOT NULL,
  PRIMARY KEY (`PK_auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES (90026,994756,883383,'Accepted',850000,'2020-04-03 18:00:00.000000','2020-04-30 18:00:00.000000',800000),(90099,991111,889090,'Under Consideration',600000,'2020-11-02 12:00:00.000000','0000-00-00 00:00:00.000000',500000),(90475,990024,884204,'Under Consideration',500000,'2020-05-07 18:00:00.000000','2020-05-31 18:00:00.000000',450000),(90486,993388,884343,'Accepted',750000,'2020-07-19 12:00:00.000000','2020-07-31 12:00:00.000000',700000),(91276,994573,886767,'Accepted',400000,'2020-12-01 17:00:00.000000','2020-12-31 17:00:00.000000',300000),(92759,990003,880004,'Accepted',900000,'2020-04-14 17:00:00.000000','2020-04-30 17:00:00.000000',850000),(93756,998365,882643,'Accepted',400000,'2020-01-12 12:00:00.000000','2020-01-31 00:00:00.000000',300000),(94857,991119,889090,'Withdrawn',550000,'2020-07-21 14:00:00.000000','2020-07-31 14:00:00.000000',400000),(97465,990111,883394,'Rejected',800000,'2020-11-18 13:00:00.000000','2020-11-30 13:00:00.000000',500000),(98574,994736,884732,'Under Consideration',700000,'2020-03-12 14:00:00.000000','2020-03-31 14:00:00.000000',600000),(99447,994473,885756,'Withdrawn',650000,'2020-09-16 12:00:00.000000','2020-09-30 12:00:00.000000',500000),(900032,991111,889090,'Under Consideration',600000,'2020-11-02 12:00:00.000000','0000-00-00 00:00:00.000000',500000);
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `PK_branch_nr` int(11) NOT NULL,
  `town` varchar(45) NOT NULL,
  `county` varchar(45) NOT NULL,
  `branch_manager` varchar(45) NOT NULL,
  PRIMARY KEY (`PK_branch_nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (770034,'Leixlip','Kildare','Shane Boyle'),(772299,'Enniscrone','Sligo','Marie Burke'),(772645,'Letterkenny','Donegal','Una Feeney'),(772984,'Ennis','Clare','John Green'),(773017,'New Ross','Wexford','Tara Ryan'),(773901,'Dingle','Kerry','Declan Barry'),(774634,'Westport','Mayo','Steven O\' Malley'),(775198,'Blackrock','Dublin','Frank Kilbane'),(776421,'Athlone','Westmeath','Patrick Moran'),(779937,'Claregalway','Galway','Mary Roache');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer` (
  `PK_buyer_id` int(11) NOT NULL,
  `prop_id` int(11) NOT NULL,
  `bid_status` varchar(45) DEFAULT NULL,
  `bid_amount` int(11) DEFAULT NULL,
  `bid_time` datetime(6) DEFAULT NULL,
  `cust_account_nr` int(11) NOT NULL,
  `FK_cust_id` int(11) NOT NULL,
  PRIMARY KEY (`PK_buyer_id`),
  KEY `fk_Buyer_Customer_Account_idx` (`FK_cust_id`),
  CONSTRAINT `fk_Buyer_Customer_Account` FOREIGN KEY (`FK_cust_id`) REFERENCES `customer_account` (`PK_cust_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (660003,998365,'Accepted',400000,'2020-01-12 12:00:00.000000',779376,558395),(660023,990003,'Accepted',900000,'2020-04-14 17:00:00.000000',773857,553850),(660093,993388,'Accepted',750000,'2020-07-19 12:00:00.000000',771095,550014),(661123,990111,'Sold',800000,'2020-11-18 13:00:00.000000',779847,558694),(663957,998365,'Accepted',400000,'2020-01-12 12:00:00.000000',773954,559834),(664367,994736,'Sold',700000,'2020-03-12 14:00:00.000000',771199,558934),(664853,990024,'Sale Agreed',500000,'2020-05-07 18:00:00.000000',770034,550011),(665542,994573,'Sale Agreed',375000,'2020-12-01 17:00:00.000000',772660,550029),(665556,994473,'Withdrawn',650000,'2020-09-16 12:00:00.000000',770197,559820),(669485,991119,'Sold',550000,'2020-07-21 14:00:00.000000',773976,558493);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_account`
--

DROP TABLE IF EXISTS `customer_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_account` (
  `PK_cust_id` int(11) NOT NULL,
  `cust_name` varchar(45) NOT NULL,
  `cust_email` varchar(45) NOT NULL,
  `cust_phone` int(11) NOT NULL,
  `cust_account_nr` int(11) NOT NULL,
  `ca_password` varchar(45) DEFAULT NULL,
  `FK_branch_nr` int(11) NOT NULL,
  PRIMARY KEY (`PK_cust_id`),
  KEY `fk_Customer_Account_Branch1_idx` (`FK_branch_nr`),
  CONSTRAINT `fk_Customer_Account_Branch1` FOREIGN KEY (`FK_branch_nr`) REFERENCES `branch` (`PK_branch_nr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_account`
--

LOCK TABLES `customer_account` WRITE;
/*!40000 ALTER TABLE `customer_account` DISABLE KEYS */;
INSERT INTO `customer_account` VALUES (550011,'Fiona Hurley','fh@hotmail.com',8628473,771235,'deq6hj8',772645),(550014,'Tom Mahon','tm@gmail.com',8745532,771095,'fdw654j7',774634),(550029,'Robert Townsend','rt@hotmail.com',8637525,772660,'dmwi85g2',779937),(553850,'Pat Moran','pm@gmail.com',8645632,773857,'nfeu4853f',770034),(555538,'Sally Long','sl@gmail.com',87465748,551166,'gnr9457',772645),(558395,'Jim Hogan','jh@gmail.com',9758346,779376,'fdnj85nf75',772299),(558493,'Karina McCarthy','kmcc@gmail.com',8747356,773976,'fmduen5874n',772984),(558694,'Liz Murphy','lm@gmail.com',85769384,779847,'nue9376k',773017),(558838,'Sally Long','sl@gmail.com',0,557766,'gnr9457',772645),(558934,'John Bishop','jb@hotmail.com',9465832,771199,'vfe654h',773901),(559820,'Lisa Smith','ls@gmail.com',9874532,770197,'njei85nv7',775198),(559834,'Pauline O\' Grady','pog@gmail.com',8765385,773954,'deun58n39',776421);
/*!40000 ALTER TABLE `customer_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_account`
--

DROP TABLE IF EXISTS `employee_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_account` (
  `PK_emp_id` int(11) NOT NULL,
  `emp_name` varchar(45) NOT NULL,
  `emp_email` varchar(45) DEFAULT NULL,
  `emp_phone` int(11) NOT NULL,
  `job_title` varchar(45) NOT NULL,
  `ea_password` varchar(45) DEFAULT NULL,
  `FK_branch_nr` int(11) DEFAULT NULL,
  PRIMARY KEY (`PK_emp_id`),
  KEY `fk_Employee_Account_Branch1_idx` (`FK_branch_nr`),
  CONSTRAINT `fk_Employee_Account_Branch1` FOREIGN KEY (`FK_branch_nr`) REFERENCES `branch` (`PK_branch_nr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_account`
--

LOCK TABLES `employee_account` WRITE;
/*!40000 ALTER TABLE `employee_account` DISABLE KEYS */;
INSERT INTO `employee_account` VALUES (441177,'Gillian Ford','gf@hotmail.com',98745734,'Estate Agent','nfir85ug84',770034),(443045,'John Green','jg@hotmail.com',85574835,'Branch Manager','tju678jd',772984),(443355,'Leanne Magan','lm@hotmail.com',85747354,'Cleaning Staff','hj9rg435',775198),(443899,'Andrew Carey','ac@gmail.com',84748642,'Administrator','tr54gr54g',772299),(444673,'Killian Drew','kd@gmail.com',94753244,'Receptionist','trhtj6rtg4gg4',772645),(446689,'Niall Bucket','nb@gmail.com',94468535,'Estate Agent','ghnic537',NULL),(446839,'Steven O\' Malley','sm@gmail.com',876452754,'Branch Manager','mruen87fn',774634),(446889,'Declan Barry','db@gmail.com',85938542,'Estate Agent','brwop96',773901),(447012,'Mary Roache','mr@hotmail.com',85647542,'Estate Agent','vnidvt68',779937),(448890,'Harry Strong','hs@hotmail.com',8968854,'Estate Agent','cjktw45',NULL);
/*!40000 ALTER TABLE `employee_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_account_has_auction`
--

DROP TABLE IF EXISTS `employee_account_has_auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_account_has_auction` (
  `Employee_Account_PK_emp_id` int(11) NOT NULL,
  `Auction_PK_auction_id` int(11) NOT NULL,
  PRIMARY KEY (`Employee_Account_PK_emp_id`,`Auction_PK_auction_id`),
  KEY `fk_Employee_Account_has_Auction_Auction1_idx` (`Auction_PK_auction_id`),
  KEY `fk_Employee_Account_has_Auction_Employee_Account1_idx` (`Employee_Account_PK_emp_id`),
  CONSTRAINT `fk_Employee_Account_has_Auction_Auction1` FOREIGN KEY (`Auction_PK_auction_id`) REFERENCES `auction` (`PK_auction_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_Account_has_Auction_Employee_Account1` FOREIGN KEY (`Employee_Account_PK_emp_id`) REFERENCES `employee_account` (`PK_emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_account_has_auction`
--

LOCK TABLES `employee_account_has_auction` WRITE;
/*!40000 ALTER TABLE `employee_account_has_auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_account_has_auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `PK_prop_id` int(11) NOT NULL,
  `town` varchar(45) DEFAULT NULL,
  `county` varchar(45) DEFAULT NULL,
  `nr_beds` int(11) DEFAULT NULL,
  `nr_baths` int(11) DEFAULT NULL,
  `nr_ensuites` int(11) DEFAULT NULL,
  `nr_garages` int(11) DEFAULT NULL,
  `nr_park_space` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `type_prop` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `amenities` varchar(45) DEFAULT NULL,
  `prop_name` varchar(45) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `prop_status` varchar(45) DEFAULT NULL,
  `auction_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `branch_nr` int(11) DEFAULT NULL,
  PRIMARY KEY (`PK_prop_id`),
  KEY `FK_auction_id_idx` (`auction_id`),
  KEY `FK_seller_id_idx` (`seller_id`),
  KEY `FK_branch_nr_idx` (`branch_nr`),
  CONSTRAINT `FK_auction_id` FOREIGN KEY (`auction_id`) REFERENCES `auction` (`PK_auction_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_branch_nr` FOREIGN KEY (`branch_nr`) REFERENCES `branch` (`PK_branch_nr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`PK_seller_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (990003,'New Ross','Wexford',3,2,0,1,1,1600,'Bungalow',850000,'football club, schools','The Kingswood',446689,'Sold',92759,880004,773017),(990024,'Enniscrone','Sligo',2,1,0,1,2,1600,'Semi-detached',450000,'schools, parks, football','The Elms',446689,'Sold',90475,884204,772299),(990111,'Blackrock','Dublin',2,2,0,1,1,1500,'Apartment',500000,'youth club, schools','The Crossbridge',446689,'Withdrawn',97465,883394,775198),(991119,'Dingle','Kerry',1,1,0,1,0,1300,'Semi-detached',400000,'shopping centre, schools, pool','The Lodge',448890,'For Sale',94857,889090,774634),(993388,'Letterkenny','Donegal',4,3,1,1,2,1800,'Townhouse',700000,'youth club, schools','Woodpark',446889,'Sale Agreed',90486,884343,772645),(994473,'Claregalway','Galway',4,3,1,1,2,2000,'Townhouse',500000,'shopping centre, schools, pool','The Millhouse',447012,'For Sale',99447,885756,779937),(994573,'Ennis','Clare',3,2,0,1,2,1700,'Apartment',300000,'shopping centre, schools, pool','The Oak',448890,'Withdrawn',91276,886767,772984),(994736,'Athlone','Westmeath',1,1,0,1,1,1200,'Bungalow',600000,'gym,pool, schools','The Creel',448890,'Sold',98574,884732,776421),(994756,'Leixlip','Kildare',4,2,1,1,2,2000,'Bungalow',800000,'gym,pool, schools','The Fern',441177,'For Sale',90026,883383,770034),(998365,'Westport','Mayo',4,3,1,1,2,1900,'Townhouse',300000,'gym,pool, schools','The Willow',448890,'For Sale',93756,882643,773901),(999984,'Westport','Mayo',2,2,1,1,2,1700,'Bungalow',500000,'school, gym, clubs','Deerpark',446689,'Sold',90486,884343,774634);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_agreement`
--

DROP TABLE IF EXISTS `purchase_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_agreement` (
  `PK_transaction_id` int(11) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  `agent_commission` int(11) DEFAULT NULL,
  `prop_id` int(11) NOT NULL,
  `FK_seller_id` int(11) NOT NULL,
  `FK_buyer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`PK_transaction_id`),
  KEY `fk_Purchase_Agreement_Seller1_idx` (`FK_seller_id`),
  KEY `fk_Purchase_Agreement_Buyer1_idx` (`FK_buyer_id`),
  CONSTRAINT `fk_Purchase_Agreement_Buyer1` FOREIGN KEY (`FK_buyer_id`) REFERENCES `buyer` (`PK_buyer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Purchase_Agreement_Seller1` FOREIGN KEY (`FK_seller_id`) REFERENCES `seller` (`PK_seller_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_agreement`
--

LOCK TABLES `purchase_agreement` WRITE;
/*!40000 ALTER TABLE `purchase_agreement` DISABLE KEYS */;
INSERT INTO `purchase_agreement` VALUES (3300118,'2020-01-12',400000,882643,9000,993388,884343,663957),(3300957,'2020-07-19',750000,884343,9072,990003,880004,660023),(3357533,'2020-04-14',900000,880004,8900,994736,884732,660093),(3389674,'2020-01-12',850000,883383,10675,990024,884204,660003);
/*!40000 ALTER TABLE `purchase_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `PK_seller_id` int(11) NOT NULL,
  `prop_id` int(11) NOT NULL,
  `highest_bid` int(11) DEFAULT NULL,
  `bid_status` varchar(45) NOT NULL,
  `cust_account_nr` int(11) NOT NULL,
  `FK_cust_id` int(11) NOT NULL,
  PRIMARY KEY (`PK_seller_id`),
  KEY `fk_Seller_Customer_Account1_idx` (`FK_cust_id`),
  CONSTRAINT `fk_Seller_Customer_Account1` FOREIGN KEY (`FK_cust_id`) REFERENCES `customer_account` (`PK_cust_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (880004,990003,900000,'Accepted',779376,558395),(882643,998365,400000,'Accepted',773976,558493),(883383,994756,850000,'Accepted',771235,550011),(883394,990111,800000,'Rejected',771199,558934),(884204,990024,500000,'Under Consideration',771095,550014),(884343,993388,750000,'Accepted',772660,550029),(884732,994736,700000,'Under Consideration',770197,559820),(885756,994473,650000,'Withdrawn',773954,559834),(886767,994573,375000,'Rejected',773857,553850),(889090,991119,550000,'Withdrawn',779847,558694);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08  8:44:03
