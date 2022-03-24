-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: office
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerNumber` varchar(255) NOT NULL,
  `customerName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contactLastName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contactFirstName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addressLine1` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addressLine2` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `state` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `postalCode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `salesRepEmployeeNumber` varchar(255) DEFAULT NULL,
  `credLimit` bigint DEFAULT NULL,
  PRIMARY KEY (`customerNumber`),
  KEY `fk_cust_emp` (`salesRepEmployeeNumber`),
  CONSTRAINT `fk_cust_emp` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('0298348938548756','ajik','pangestu','bisma','08123456789','Jl Semangka','Jl Kutilang','Jakarta','indonesia','1818','indonesia','1092039948',10000000),('0298845948584598','hilman','kusuma','jaka','08123456789','Jl Semangka','Jl Kutilang','Jakarta','indonesia','1818','indonesia','3838383838',10000000),('0912873487019283','Ardiansyah','birma','putra','08123456789','Jl Semangka','Jl Kutilang','Jakarta','indonesia','1818','indonesia','1293828440',10000000),('7487520938434894','arya','kumala','bima','08123456789','Jl Semangka','Jl Kutilang','Jakarta','indonesia','1818','indonesia','1982370493',10000000),('8475893475485723','arda','swarma','abi','08123456789','Jl Semangka','Jl Kutilang','Jakarta','indonesia','1818','indonesia','1092039948',10000000);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employeeNumber` varchar(255) NOT NULL,
  `lastName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `firstName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `extension` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `officeCode` varchar(255) DEFAULT NULL,
  `reportsTo` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`employeeNumber`),
  KEY `sr_fk_repemp` (`reportsTo`),
  KEY `fk_emp_office` (`officeCode`),
  CONSTRAINT `fk_emp_office` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`),
  CONSTRAINT `sr_fk_repemp` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('0187234093','bayu','indra','17','indra.bayu@office.com','7231','0187234093','CEO'),('1092039948','kirana','citra','13','kirana.citra@office.com','7162','1092039948','CTO'),('1293828440','mana','abi','18','abi.mana@office.com','7231','3838383838','sales'),('1928398293','ayi','andri','16','andri.ayi@office.com','7584','1092039948','staff'),('1982370493','Bima','Arya','15','bima.arya@office.com','7983','1928398293','manager'),('3838383838','kirana','citra','14','kirana.citra@office.com','7162','1982370493','staff');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offices` (
  `officeCode` varchar(255) NOT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addressLine1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addressLine2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `state` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `postalCode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `territory` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES ('7162','jakarta','021783490','Jl Merdeka1','Jl Merdeka2','indonesia','indonesia','9128','jawa'),('7231','depok','021783490','Jl merpati1','Jl merpati2','indonesia','indonesia','9128','jawa'),('7345','bogor','021783490','Jl jawa1','Jl jawa2','indonesia','indonesia','9128','jawa'),('7584','tangerang','021783490','Jl Pahlawan1','Jl Pahlawan2','indonesia','indonesia','9128','jawa'),('7983','bekasi','021783490','Jl kutilang1','Jl kutilang2','indonesia','indonesia','9128','jawa');
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `orderNumber` varchar(255) NOT NULL,
  `productCode` varchar(255) DEFAULT NULL,
  `quantityOrdered` bigint DEFAULT NULL,
  `priceEach` bigint DEFAULT NULL,
  `orderLineNumber` varchar(255) NOT NULL,
  PRIMARY KEY (`orderLineNumber`),
  KEY `fk_prod_orddet` (`productCode`),
  KEY `fk_orddets_ord` (`orderNumber`),
  CONSTRAINT `fk_orddet_prd` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`),
  CONSTRAINT `fk_orddets_ord` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES ('01928398293123','0198239823',10,50000,'0129839823'),('09238402935702','0198239823',5,50000,'0192838294'),('10928398293828','0198239823',10,50000,'0198298329'),('09238402935702','0198239823',20,50000,'9028734734'),('10928309823094','0198239823',20,50000,'9182783772');
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderNumber` varchar(255) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `requiredDate` date DEFAULT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `customerNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderNumber`),
  KEY `fk_ord_cust` (`customerNumber`),
  CONSTRAINT `fk_ord_cust` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('01928398293123','2020-11-10','2020-11-10','2020-11-10','dikirim','sedang dikirim','0298348938548756'),('09238402935702','2020-11-10','2020-11-10','2020-11-10','dikirim','sedang dikirim','8475893475485723'),('10928309823094','2020-11-10','2020-11-10','2020-11-10','dikirim','sedang dikirim','0298845948584598'),('10928398293828','2020-11-10','2020-11-10','2020-11-10','ditunda','masalah alamat','7487520938434894'),('12198273872373','2020-11-10','2020-11-10','2020-11-10','dikirim','sedang dikirim','7487520938434894');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `customerNumber` varchar(255) DEFAULT NULL,
  `checkNumber` varchar(255) NOT NULL,
  `paymentDate` datetime DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  PRIMARY KEY (`checkNumber`),
  KEY `fk_pay_cust` (`customerNumber`),
  CONSTRAINT `fk_pay_cust` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES ('8475893475485723','019283829483','2020-05-03 00:00:00',500000),('0298845948584598','019829382983','2020-05-03 00:00:00',500000),('7487520938434894','102983829389','2020-05-03 00:00:00',500000),('0298348938548756','192873827312','2020-05-03 00:00:00',500000),('0912873487019283','398498350344','2020-05-03 00:00:00',500000);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlines`
--

DROP TABLE IF EXISTS `productlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productlines` (
  `productLine` varchar(255) NOT NULL,
  `textDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `htmlDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productLine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlines`
--

LOCK TABLES `productlines` WRITE;
/*!40000 ALTER TABLE `productlines` DISABLE KEYS */;
INSERT INTO `productlines` VALUES ('hair care','produk perawatan rambut','<p> produk perawatan rambut </p>','/folder/image.jpg'),('skin care','produk perawatan kulit','<p> produk perawatankulit </p>','/folder/image.jpg');
/*!40000 ALTER TABLE `productlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productCode` varchar(255) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productLine` varchar(255) DEFAULT NULL,
  `productScale` varchar(255) DEFAULT NULL,
  `productVendor` varchar(255) DEFAULT NULL,
  `productDescription` varchar(255) DEFAULT NULL,
  `quantityInStock` bigint DEFAULT NULL,
  `buyPrice` bigint DEFAULT NULL,
  `MSRP` bigint DEFAULT NULL,
  PRIMARY KEY (`productCode`),
  KEY `fk_prodlines_prod` (`productLine`),
  CONSTRAINT `fk_prodlines_prod` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('0198239823','Shampo a','hair care','great','a','shampo untuk semua umur',100,50000,50000),('1092838392','lotion b','skin care','great','b','pelembab kulit',100,50000,50000);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'office'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24  8:03:52
