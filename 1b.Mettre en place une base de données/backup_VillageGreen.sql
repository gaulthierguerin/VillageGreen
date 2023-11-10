-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Village_green
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_lastname` varchar(50) NOT NULL,
  `address_firstname` varchar(50) NOT NULL,
  `address_phone` varchar(15) NOT NULL,
  `adress_address` varchar(100) NOT NULL,
  `address_zipcode` varchar(10) NOT NULL,
  `address_city` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Guérin','Gaulthier','0667315675','71 rue Octave Tierce Bâtiment A Appartement 12 ','80000','Amiens',1),(2,'Guérin','Olivier','0645897562','70 rue Octave Tierce ','80000','Amiens',2),(3,'Roussel','Delphine','0765459856','72 Rue Octave Tierce','80000','Amiens',3);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `category_desc` varchar(500) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Pianos','Ensemble d\'instruments à touches, pianos, claviers midi, synthétiseurs'),(2,'Guitare','Ensemble d\'instruments à cordes grattées, guitares acoustiques, basses, électriques, ukulélés');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditcard`
--

DROP TABLE IF EXISTS `creditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditcard` (
  `creditcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `creditcard_issuer` varchar(50) NOT NULL,
  `creditcard_number` char(16) NOT NULL,
  `creditcard_expirationmonth` tinyint(2) NOT NULL,
  `creditcard_expirationyear` tinyint(2) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`creditcard_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `creditcard_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcard`
--

LOCK TABLES `creditcard` WRITE;
/*!40000 ALTER TABLE `creditcard` DISABLE KEYS */;
INSERT INTO `creditcard` VALUES (1,'Orange Bank','5341567898741452',9,25,1),(2,'Crédit Agricole','1234567898765432',9,25,2),(3,'Société Générale','9876543212345678',9,25,3);
/*!40000 ALTER TABLE `creditcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(50) NOT NULL,
  `customer_username` varchar(16) NOT NULL,
  `customer_registerdate` date DEFAULT NULL,
  `customer_lastname` varchar(50) NOT NULL,
  `customer_firstname` varchar(50) NOT NULL,
  `customer_country` varchar(25) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_zipcode` varchar(10) NOT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `client_isCompany` tinyint(1) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_email` (`customer_email`),
  UNIQUE KEY `customer_username` (`customer_username`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'xptitmaki@gmail.com','xptitmaki','2023-11-10','Guérin','Gaulthier','France','71 rue Octave Tierce','80000','Amiens','0667315675',1,3),(2,'salut@gmail.com','salut','2023-11-10','Guérin','Gaulthier','France','70 rue Octave Tierce','80000','Amiens','0760564589',0,NULL),(3,'salut1@gmail.com','salut1','2023-11-10','Guérin','Gaulthier','France','72 rue Octave Tierce','80000','Amiens','0665985623',0,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerOrder`
--

DROP TABLE IF EXISTS `customerOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerOrder` (
  `customerOrder_id` int(11) NOT NULL AUTO_INCREMENT,
  `customerOrder_date` datetime NOT NULL,
  `customerOrder_status` enum('Payé','Non payé') NOT NULL,
  `customerOrder_totalHT` decimal(10,2) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  PRIMARY KEY (`customerOrder_id`),
  KEY `customer_id` (`customer_id`),
  KEY `address_id` (`address_id`),
  KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `customerOrder_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `customerOrder_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `customerOrder_ibfk_3` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerOrder`
--

LOCK TABLES `customerOrder` WRITE;
/*!40000 ALTER TABLE `customerOrder` DISABLE KEYS */;
INSERT INTO `customerOrder` VALUES (1,'2023-11-10 10:40:58','Payé',499.99,1,1,1),(2,'2023-11-10 10:40:58','Non payé',2500.99,2,2,2),(3,'2023-11-10 10:40:58','Payé',1301.98,3,3,3);
/*!40000 ALTER TABLE `customerOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_username` varchar(16) NOT NULL,
  `employee_lastname` varchar(50) NOT NULL,
  `employee_firstname` varchar(50) NOT NULL,
  `employee_phone` varchar(15) NOT NULL,
  `employee_address` varchar(100) NOT NULL,
  `employee_status` enum('stock manager','salesperson','business salesperson') NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_username` (`employee_username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'salut3','2','3','0645684865','70 Rue Bonséjour','salesperson'),(2,'salut2','2','3','0687459523','71 Rue Bonséjour','salesperson'),(3,'salut1','2','3','0754894512','72 Rue Bonséjour','salesperson');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(50) NOT NULL,
  `payment_done` tinyint(1) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_totalPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'carte bancaire',1,'2023-11-10',599.99),(2,'virement',0,'2023-11-10',3000.99),(3,'virement',1,'2023-11-10',1562.38);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isShipped`
--

DROP TABLE IF EXISTS `isShipped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isShipped` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_id` int(11) NOT NULL,
  `qty_delivered` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`shipping_id`),
  KEY `shipping_id` (`shipping_id`),
  CONSTRAINT `isShipped_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `isShipped_ibfk_2` FOREIGN KEY (`shipping_id`) REFERENCES `shipping` (`shipping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isShipped`
--

LOCK TABLES `isShipped` WRITE;
/*!40000 ALTER TABLE `isShipped` DISABLE KEYS */;
INSERT INTO `isShipped` VALUES (1,1,1),(5,3,1);
/*!40000 ALTER TABLE `isShipped` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `orderdetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderdetails_qty` int(11) NOT NULL,
  `orderdetails_unitprice` decimal(10,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customerOrder_id` int(11) NOT NULL,
  PRIMARY KEY (`orderdetails_id`),
  KEY `product_id` (`product_id`),
  KEY `customerOrder_id` (`customerOrder_id`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`customerOrder_id`) REFERENCES `customerOrder` (`customerOrder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,599.99,1,1),(2,2,3000.99,4,2),(3,2,1562.38,5,3);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `product_desc` text NOT NULL,
  `product_isAvailable` tinyint(1) NOT NULL,
  `product_photo` varchar(50) DEFAULT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` decimal(15,2) NOT NULL,
  `product_brand` varchar(50) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `subcategory_id` (`subcategory_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Guitare Electrique','Guitare ayant besoin d\'un ampli ',1,'aze',150,499.99,'Ibanez',2),(2,'Guitare Basse','Guitare basse ayant besoin d\'un ampli',1,'aze',150,499.99,'Ibanez',5),(3,'Ukulélé','Petite guitare à quatre cordes',1,'aze',150,499.99,'Ibanez',6),(4,'Piano classique','Piano classique doté de 88 touches',1,'aze',150,2500.99,'Yamaha',1),(5,'Clavier midi','Clavier branchable à une carte son pour faire de la MAO',1,'aze',150,650.99,'Yamaha',2),(6,'Synthétiseur','Clavier de 88 touches doté d\'une banque de sons',1,'aze',150,800.99,'Yamaha',3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_date` date DEFAULT NULL,
  `delivery_company` varchar(50) DEFAULT NULL,
  `customerOrder_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_id`),
  KEY `customerOrder_id` (`customerOrder_id`),
  CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`customerOrder_id`) REFERENCES `customerOrder` (`customerOrder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,'2023-11-11','UPS',1),(2,NULL,NULL,2),(3,'2023-11-12','DPD',3);
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory_name` varchar(50) NOT NULL,
  `subcategory_desc` varchar(500) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`subcategory_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,'Pianos classiques','Ensemble de pianos classiques',1),(2,'Claviers midi','Ensemble de claviers midi',1),(3,'Synthétiseurs','Ensemble de synthétiseurs',1),(4,'Guitare','Ensemble de guitares',2),(5,'Basses','Ensemble de guitares basses',2),(6,'Ukulélés','Ensemble de ukulélés',2);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 11:44:41
