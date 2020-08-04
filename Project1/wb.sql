-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: read_book
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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(225) DEFAULT NULL,
  `avata` varchar(225) DEFAULT NULL,
  `infor` varchar(500) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'a',NULL,NULL,NULL,NULL,NULL,NULL),(2,'e',NULL,NULL,NULL,NULL,NULL,NULL),(3,'c',NULL,NULL,NULL,NULL,NULL,NULL),(4,'e',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `shortdescription` text,
  `content` text,
  `categoryid` bigint(20) NOT NULL,
  `authorid` bigint(20) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_author_book` (`authorid`),
  KEY `fk_news_category` (`categoryid`),
  CONSTRAINT `fk_author_book` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`),
  CONSTRAINT `fk_news_category` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (5,'Thiên Thần Nhỏ Của Tôi','https://i2.wp.com/4.bp.blogspot.com/-zOskCUB2t7s/WLK-bjGkhlI/AAAAAAAACU4/lrnvVM8Sodo6hrkNfhDmZ0l_k_Rvzw88wCLcB/s400/thien-than-nho-cua-toi.jpg?resize=100%2C150&ssl=1','mắt biếc','book/Thiên thần nhỏ của tôi.pdf',1,1,NULL,NULL,NULL,NULL),(6,'Những Chàng Trai Xấu Tính','https://i0.wp.com/3.bp.blogspot.com/-rjC2n1ahEsg/WLKp9qfQFlI/AAAAAAAACUY/MpGitVGM-Ks17tj_HOtkFR7d_CoTt7D2wCLcB/s400/nhung-chang-trai-xau-tinh.jpg?resize=100%2C150&ssl=1','Những Chàng Trai Xấu Tính','book/Những chàng trai xấu tính.pdf',2,2,NULL,NULL,NULL,NULL),(7,'Những Cô Em Gái','https://i1.wp.com/2.bp.blogspot.com/-co9kc5KeZuk/WLKp79dD31I/AAAAAAAACUU/NKc9BWrKilAIi6CGbq3OpzotL3FosJ6JQCLcB/s400/nhung-co-em-gai.jpg?resize=100%2C150&ssl=1','Những cô em gái','book/Những cô em gái.pdf',2,3,NULL,NULL,NULL,NULL),(8,'Mắt Biếc','https://i2.wp.com/3.bp.blogspot.com/-LzQ3oYZK7Rw/WLKp17W2dWI/AAAAAAAACUE/Ok1WyfeJDXo0eK45FOJGMtoBgvFs3MlRwCLcB/s400/mat-biec.jpg?resize=100%2C150&ssl=1','Mắt biếc','book/Mắt biếc.pdf',2,4,NULL,NULL,NULL,NULL),(34,'Cô Gái Đến Từ Hôm Qua','https://i2.wp.com/4.bp.blogspot.com/-6sFpCSwPrUU/WLJ30OgORYI/AAAAAAAACSs/G157UxqK8TgWlwpjmanlaUa5jBsVzylWACLcB/s400/co-gai-den-tu-hom-qua.jpg?resize=100%2C150&ssl=1','Cô Gái Đến Từ Hôm Qua','book/Cô gái đến từ hôm qua',1,2,NULL,NULL,NULL,NULL),(36,'Trước Vòng Chung Kết','https://i2.wp.com/2.bp.blogspot.com/-R7aeWFMTOxw/WLK-ewykP8I/AAAAAAAACVA/EzlsRLxCBmUYAQHpx9gF752Hp-22ldLYACLcB/s400/truoc-vong-chung-ket.jpg?resize=100%2C150&ssl=1','Trước Vòng Chung Kết','book/Trước vòng chung kết.pdf',1,1,NULL,NULL,NULL,NULL),(37,'Tôi Là BêTô','https://i0.wp.com/4.bp.blogspot.com/-8zPVL1ciFcY/WLK-ZIaD7NI/AAAAAAAACUw/VldJOdKqKjIt2JmMshvSy5qDbunEf7JUQCLcB/s400/toi-la-beto.jpg?resize=100%2C150&ssl=1','Tôi là BêTô','book/Tôi là BêTô.pdf',1,1,NULL,NULL,NULL,NULL),(38,'Thằng Quỷ Nhỏ','https://i1.wp.com/2.bp.blogspot.com/--JUYuLzVLI0/WLK-abKzY-I/AAAAAAAACU0/eVeXWnAVPBMk0U0gfF-20vTxoi71WipbgCLcB/s400/thang-quy-nho.jpg?resize=100%2C150&ssl=1','Thằng Quỷ Nhỏ','book/Thằng quỉ nhỏ.pdf',1,2,NULL,NULL,NULL,NULL),(39,'Trại Hoa Vàng','https://i2.wp.com/3.bp.blogspot.com/-C_TgOS7VFV8/WLK-dGHyGRI/AAAAAAAACU8/j772dLafWFcjS4WGTh0FwbsSLxvlGRThgCLcB/s400/trai-hoa-vang.jpg?resize=100%2C150&ssl=1','Trại Hoa Vàng','book/Trại hoa vàng.pdf',1,1,NULL,NULL,NULL,NULL),(40,'Lá Nằm Trong Lá','https://i2.wp.com/2.bp.blogspot.com/-9yzyjANVq7M/WLKp0ANii_I/AAAAAAAACUA/b0WxZWfi6LQsfK_r-un59d27WovUT1IugCLcB/s400/la-nam-trong-la.jpg?resize=100%2C150&ssl=1','Lá Nằm Trong Lá','book/Lá nằm trong lá.pdf',1,1,NULL,NULL,NULL,NULL),(41,'Sher Lock Holmes','https://www.sachmoi.net/wp-content/uploads/2017/02/sherlock-holmes-toan-tap-ebook-pdf.jpg','Sher Lock Holmes','book/sherlock_holmes_toan_tap.pdf',1,1,NULL,NULL,NULL,NULL),(42,'Hồ Sơ Tâm Lý Tội Phạm','https://www.sachmoi.net/wp-content/uploads/2017/05/ho-so-tam-ly-toi-pham-ebook-pdf.jpg','Hồ Sơ Tâm Lý Tội Phạm','book/ho-so-tam-ly-toi-pham-cuong-tuyet-an.pdf',1,1,NULL,NULL,NULL,NULL),(43,'Sự Im Lặng Của Bầy Cừu','https://www.sachmoi.net/wp-content/uploads/2017/03/su-im-lang-cua-bay-cuu-ebook-pdf.jpg','Sự Im Lặng Của Bầy Cừu','book/su_im_lang_cua_bay_cuu.pdf',1,2,NULL,NULL,NULL,NULL),(44,'Mật Mã Da Vinci','https://www.sachmoi.net/wp-content/uploads/2017/03/mat-ma-da-vinci-ebook-pdf.jpg','Mật Mã Da Vinci','book/Mat-ma-Da-Vinci.pdf',1,2,NULL,NULL,NULL,NULL),(45,'Không Khoan Nhượng','https://www.sachmoi.net/wp-content/uploads/2017/04/khong-khoan-nhuong-ebook.jpg','Không Khoan Nhượng','book/khong-khoan-nhuong.pdf',1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'truyen ma','truyen-ma',NULL,NULL,NULL,NULL),(2,'truyen ngan','truyen-ngan',NULL,NULL,NULL,NULL),(3,'truyen cuoi','truyen-cuoi',NULL,NULL,NULL,NULL),(4,'truyen cuoi','truyen-cuoi',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` int(20) NOT NULL,
  `book_id` int(20) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_user` (`user_id`),
  KEY `fk_comment_book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN','ADMIN',NULL,NULL,NULL,NULL),(2,'USER','USER',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `avatar` varchar(225) DEFAULT NULL,
  `roleid` bigint(20) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role` (`roleid`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123456','admin',NULL,NULL,'https://res.cloudinary.com/ddu5gmcbu/image/upload/v1588786393/BTS-2-1_jdie7s.jpg',1,NULL,NULL,NULL,NULL),(2,'nguyenvana','123456','nguyen van a','0347255042','nguyenvana@gmail.com','https://res.cloudinary.com/ddu5gmcbu/image/upload/v1588786393/BTS-2-1_jdie7s.jpg',2,NULL,NULL,NULL,NULL),(3,'nguyenvanb','123456','nguyen van b',NULL,'','https://res.cloudinary.com/ddu5gmcbu/image/upload/v1588786394/BTS_most_searched_for_kpop_on_YouTube_fgsw3y.jpg',2,NULL,NULL,NULL,NULL),(19,'ngonam','123456789',NULL,NULL,'Namtuocbongdembn12345@gmail.com',NULL,2,NULL,NULL,NULL,NULL),(20,'AgustD','123456789',NULL,NULL,'ngonam21021999@gmail.com',NULL,2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'read_book'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-09 11:10:03
