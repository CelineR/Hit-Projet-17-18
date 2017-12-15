-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: smart_receipt
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--
CREATE DATABASE `smart_receipt`;
USE `smart_receipt`;

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add status',7,'add_status'),(20,'Can change status',7,'change_status'),(21,'Can delete status',7,'delete_status'),(22,'Can add groupe',8,'add_groupe'),(23,'Can change groupe',8,'change_groupe'),(24,'Can delete groupe',8,'delete_groupe'),(25,'Can add utilisateur',9,'add_utilisateur'),(26,'Can change utilisateur',9,'change_utilisateur'),(27,'Can delete utilisateur',9,'delete_utilisateur'),(28,'Can add image',10,'add_image'),(29,'Can change image',10,'change_image'),(30,'Can delete image',10,'delete_image'),(31,'Can add categorie',11,'add_categorie'),(32,'Can change categorie',11,'change_categorie'),(33,'Can delete categorie',11,'delete_categorie'),(34,'Can add ticket',12,'add_ticket'),(35,'Can change ticket',12,'change_ticket'),(36,'Can delete ticket',12,'delete_ticket'),(37,'Can add liste_de_ course',13,'add_liste_de_course'),(38,'Can change liste_de_ course',13,'change_liste_de_course'),(39,'Can delete liste_de_ course',13,'delete_liste_de_course'),(40,'Can add produit',14,'add_produit'),(41,'Can change produit',14,'change_produit'),(42,'Can delete produit',14,'delete_produit'),(43,'Can add achat',15,'add_achat'),(44,'Can change achat',15,'change_achat'),(45,'Can delete achat',15,'delete_achat'),(46,'Can add designation',16,'add_designation'),(47,'Can change designation',16,'change_designation'),(48,'Can delete designation',16,'delete_designation'),(49,'Can add achat_ liste',17,'add_achat_liste'),(50,'Can change achat_ liste',17,'change_achat_liste'),(51,'Can delete achat_ liste',17,'delete_achat_liste'),(52,'Can add lieu',18,'add_lieu'),(53,'Can change lieu',18,'change_lieu'),(54,'Can delete lieu',18,'delete_lieu'),(55,'Can add avis_ lieu',19,'add_avis_lieu'),(56,'Can change avis_ lieu',19,'change_avis_lieu'),(57,'Can delete avis_ lieu',19,'delete_avis_lieu'),(58,'Can add avis_ produit',20,'add_avis_produit'),(59,'Can change avis_ produit',20,'change_avis_produit'),(60,'Can delete avis_ produit',20,'delete_avis_produit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$xVItNfJyc68y$apfEphCHJoYTiU/nL4cZf8mU6/HIVAdcame6Unll+Ac=',NULL,1,'guillaumefoucaudmi','','','michelguillaumefoucaud@gmail.com',1,1,'2017-12-09 01:51:07.585981');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(15,'smart_receipt','achat'),(17,'smart_receipt','achat_liste'),(19,'smart_receipt','avis_lieu'),(20,'smart_receipt','avis_produit'),(11,'smart_receipt','categorie'),(16,'smart_receipt','designation'),(8,'smart_receipt','groupe'),(10,'smart_receipt','image'),(18,'smart_receipt','lieu'),(13,'smart_receipt','liste_de_course'),(14,'smart_receipt','produit'),(7,'smart_receipt','status'),(12,'smart_receipt','ticket'),(9,'smart_receipt','utilisateur');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-12-09 01:50:21.897574'),(2,'auth','0001_initial','2017-12-09 01:50:22.344271'),(3,'admin','0001_initial','2017-12-09 01:50:22.411258'),(4,'contenttypes','0002_remove_content_type_name','2017-12-09 01:50:22.482774'),(5,'auth','0002_alter_permission_name_max_length','2017-12-09 01:50:22.503787'),(6,'auth','0003_alter_user_email_max_length','2017-12-09 01:50:22.551600'),(7,'auth','0004_alter_user_username_opts','2017-12-09 01:50:22.563868'),(8,'auth','0005_alter_user_last_login_null','2017-12-09 01:50:22.600761'),(9,'auth','0006_require_contenttypes_0002','2017-12-09 01:50:22.603902'),(10,'sessions','0001_initial','2017-12-09 01:50:22.628612');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_achat`
--

DROP TABLE IF EXISTS `smart_receipt_achat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_achat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantite` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_re_produit_id_269d1c1e94e20997_fk_smart_receipt_produit_id` (`produit_id`),
  KEY `smart_rece_ticket_id_5b87f81c9dba63cd_fk_smart_receipt_ticket_id` (`ticket_id`),
  CONSTRAINT `smart_re_produit_id_269d1c1e94e20997_fk_smart_receipt_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `smart_receipt_produit` (`id`),
  CONSTRAINT `smart_rece_ticket_id_5b87f81c9dba63cd_fk_smart_receipt_ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `smart_receipt_ticket` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_achat`
--

LOCK TABLES `smart_receipt_achat` WRITE;
/*!40000 ALTER TABLE `smart_receipt_achat` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_achat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_achat_liste`
--

DROP TABLE IF EXISTS `smart_receipt_achat_liste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_achat_liste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantite` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `liste_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_re_produit_id_448681ed0aeb784d_fk_smart_receipt_produit_id` (`produit_id`),
  KEY `sma_liste_id_46909bee76fa029_fk_smart_receipt_liste_de_course_id` (`liste_id`),
  CONSTRAINT `sma_liste_id_46909bee76fa029_fk_smart_receipt_liste_de_course_id` FOREIGN KEY (`liste_id`) REFERENCES `smart_receipt_liste_de_course` (`id`),
  CONSTRAINT `smart_re_produit_id_448681ed0aeb784d_fk_smart_receipt_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `smart_receipt_produit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_achat_liste`
--

LOCK TABLES `smart_receipt_achat_liste` WRITE;
/*!40000 ALTER TABLE `smart_receipt_achat_liste` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_achat_liste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_avis_lieu`
--

DROP TABLE IF EXISTS `smart_receipt_avis_lieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_avis_lieu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avis` varchar(100) NOT NULL,
  `note` double NOT NULL,
  `date` date NOT NULL,
  `lieu_id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_receipt__lieu_id_1ba615806103f796_fk_smart_receipt_lieu_id` (`lieu_id`),
  KEY `utilisateur_id_7d63e001b5779605_fk_smart_receipt_utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `smart_receipt__lieu_id_1ba615806103f796_fk_smart_receipt_lieu_id` FOREIGN KEY (`lieu_id`) REFERENCES `smart_receipt_lieu` (`id`),
  CONSTRAINT `utilisateur_id_7d63e001b5779605_fk_smart_receipt_utilisateur_id` FOREIGN KEY (`utilisateur_id`) REFERENCES `smart_receipt_utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_avis_lieu`
--

LOCK TABLES `smart_receipt_avis_lieu` WRITE;
/*!40000 ALTER TABLE `smart_receipt_avis_lieu` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_avis_lieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_avis_produit`
--

DROP TABLE IF EXISTS `smart_receipt_avis_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_avis_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avis` varchar(100) NOT NULL,
  `note` double NOT NULL,
  `date` date NOT NULL,
  `produit_id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_re_produit_id_5f89b6cca165992a_fk_smart_receipt_produit_id` (`produit_id`),
  KEY `utilisateur_id_46fbf060fb513090_fk_smart_receipt_utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `smart_re_produit_id_5f89b6cca165992a_fk_smart_receipt_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `smart_receipt_produit` (`id`),
  CONSTRAINT `utilisateur_id_46fbf060fb513090_fk_smart_receipt_utilisateur_id` FOREIGN KEY (`utilisateur_id`) REFERENCES `smart_receipt_utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_avis_produit`
--

LOCK TABLES `smart_receipt_avis_produit` WRITE;
/*!40000 ALTER TABLE `smart_receipt_avis_produit` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_avis_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_categorie`
--

DROP TABLE IF EXISTS `smart_receipt_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_receip_image_id_66224dc1246aa685_fk_smart_receipt_image_id` (`image_id`),
  CONSTRAINT `smart_receip_image_id_66224dc1246aa685_fk_smart_receipt_image_id` FOREIGN KEY (`image_id`) REFERENCES `smart_receipt_image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_categorie`
--

LOCK TABLES `smart_receipt_categorie` WRITE;
/*!40000 ALTER TABLE `smart_receipt_categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_designation`
--

DROP TABLE IF EXISTS `smart_receipt_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) NOT NULL,
  `produit_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_re_produit_id_4dedb3db0f5f538d_fk_smart_receipt_produit_id` (`produit_id`),
  CONSTRAINT `smart_re_produit_id_4dedb3db0f5f538d_fk_smart_receipt_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `smart_receipt_produit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_designation`
--

LOCK TABLES `smart_receipt_designation` WRITE;
/*!40000 ALTER TABLE `smart_receipt_designation` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_groupe`
--

DROP TABLE IF EXISTS `smart_receipt_groupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_groupe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_rece_status_id_19e2657db0bb814b_fk_smart_receipt_status_id` (`status_id`),
  CONSTRAINT `smart_rece_status_id_19e2657db0bb814b_fk_smart_receipt_status_id` FOREIGN KEY (`status_id`) REFERENCES `smart_receipt_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_groupe`
--

LOCK TABLES `smart_receipt_groupe` WRITE;
/*!40000 ALTER TABLE `smart_receipt_groupe` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_groupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_image`
--

DROP TABLE IF EXISTS `smart_receipt_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taille` varchar(32) NOT NULL,
  `chemin` varchar(255) NOT NULL,
  `extension` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_image`
--

LOCK TABLES `smart_receipt_image` WRITE;
/*!40000 ALTER TABLE `smart_receipt_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_lieu`
--

DROP TABLE IF EXISTS `smart_receipt_lieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_lieu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `code_postal` varchar(5) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `compl_adresse` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_lieu`
--

LOCK TABLES `smart_receipt_lieu` WRITE;
/*!40000 ALTER TABLE `smart_receipt_lieu` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_lieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_liste_de_course`
--

DROP TABLE IF EXISTS `smart_receipt_liste_de_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_liste_de_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  `date` date DEFAULT NULL,
  `chemin` varchar(255) NOT NULL,
  `total_ht` double DEFAULT NULL,
  `total_ttc` double DEFAULT NULL,
  `archivage` date DEFAULT NULL,
  `utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `utilisateur_id_12aa1fd974bf8dbd_fk_smart_receipt_utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `utilisateur_id_12aa1fd974bf8dbd_fk_smart_receipt_utilisateur_id` FOREIGN KEY (`utilisateur_id`) REFERENCES `smart_receipt_utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_liste_de_course`
--

LOCK TABLES `smart_receipt_liste_de_course` WRITE;
/*!40000 ALTER TABLE `smart_receipt_liste_de_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_liste_de_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_produit`
--

DROP TABLE IF EXISTS `smart_receipt_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie_id` int(11) NOT NULL,
  `prix_unitaire` double NOT NULL,
  `taxe` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smar_categorie_id_52a819f11b2c758d_fk_smart_receipt_categorie_id` (`categorie_id`),
  KEY `smart_receip_image_id_78cc14e87b0b502b_fk_smart_receipt_image_id` (`image_id`),
  CONSTRAINT `smar_categorie_id_52a819f11b2c758d_fk_smart_receipt_categorie_id` FOREIGN KEY (`categorie_id`) REFERENCES `smart_receipt_categorie` (`id`),
  CONSTRAINT `smart_receip_image_id_78cc14e87b0b502b_fk_smart_receipt_image_id` FOREIGN KEY (`image_id`) REFERENCES `smart_receipt_image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_produit`
--

LOCK TABLES `smart_receipt_produit` WRITE;
/*!40000 ALTER TABLE `smart_receipt_produit` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_status`
--

DROP TABLE IF EXISTS `smart_receipt_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_status`
--

LOCK TABLES `smart_receipt_status` WRITE;
/*!40000 ALTER TABLE `smart_receipt_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_ticket`
--

DROP TABLE IF EXISTS `smart_receipt_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  `date` date DEFAULT NULL,
  `chemin` varchar(255) NOT NULL,
  `total_ht` double DEFAULT NULL,
  `total_ttc` double DEFAULT NULL,
  `image_id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `smart_receip_image_id_115c5c236692c845_fk_smart_receipt_image_id` (`image_id`),
  KEY `utilisateur_id_35f436dba9777a89_fk_smart_receipt_utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `smart_receip_image_id_115c5c236692c845_fk_smart_receipt_image_id` FOREIGN KEY (`image_id`) REFERENCES `smart_receipt_image` (`id`),
  CONSTRAINT `utilisateur_id_35f436dba9777a89_fk_smart_receipt_utilisateur_id` FOREIGN KEY (`utilisateur_id`) REFERENCES `smart_receipt_utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_ticket`
--

LOCK TABLES `smart_receipt_ticket` WRITE;
/*!40000 ALTER TABLE `smart_receipt_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_receipt_utilisateur`
--

DROP TABLE IF EXISTS `smart_receipt_utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_receipt_utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `date_inscription` date DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `telephone_fixe` varchar(20) DEFAULT NULL,
  `telephone_mobile` varchar(20) DEFAULT NULL,
  `gds` varchar(32) NOT NULL,
  `gds2` varchar(32) NOT NULL,
  `mot_de_passe` varchar(32) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `code_postal` varchar(5) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `groupe_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `smart_rece_groupe_id_329a742662b855d1_fk_smart_receipt_groupe_id` (`groupe_id`),
  KEY `smart_rece_status_id_39f5d2f9dfc0952f_fk_smart_receipt_status_id` (`status_id`),
  CONSTRAINT `smart_rece_groupe_id_329a742662b855d1_fk_smart_receipt_groupe_id` FOREIGN KEY (`groupe_id`) REFERENCES `smart_receipt_groupe` (`id`),
  CONSTRAINT `smart_rece_status_id_39f5d2f9dfc0952f_fk_smart_receipt_status_id` FOREIGN KEY (`status_id`) REFERENCES `smart_receipt_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_receipt_utilisateur`
--

LOCK TABLES `smart_receipt_utilisateur` WRITE;
/*!40000 ALTER TABLE `smart_receipt_utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_receipt_utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14 17:36:52
