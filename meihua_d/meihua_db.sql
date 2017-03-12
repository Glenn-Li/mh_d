-- MySQL dump 10.13  Distrib 5.6.35, for Linux (x86_64)
--
-- Host: localhost    Database: meihua_db
-- ------------------------------------------------------
-- Server version	5.6.35

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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add choice',1,'add_choice'),(2,'Can change choice',1,'change_choice'),(3,'Can delete choice',1,'delete_choice'),(4,'Can add question',2,'add_question'),(5,'Can change question',2,'change_question'),(6,'Can delete question',2,'delete_question'),(7,'Can add log entry',3,'add_logentry'),(8,'Can change log entry',3,'change_logentry'),(9,'Can delete log entry',3,'delete_logentry'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add user',5,'add_user'),(14,'Can change user',5,'change_user'),(15,'Can delete user',5,'delete_user'),(16,'Can add group',6,'add_group'),(17,'Can change group',6,'change_group'),(18,'Can delete group',6,'delete_group'),(19,'Can add content type',7,'add_contenttype'),(20,'Can change content type',7,'change_contenttype'),(21,'Can delete content type',7,'delete_contenttype'),(22,'Can add session',8,'add_session'),(23,'Can change session',8,'change_session'),(24,'Can delete session',8,'delete_session'),(25,'Can add user',9,'add_user'),(26,'Can change user',9,'change_user'),(27,'Can delete user',9,'delete_user'),(28,'Can add blog',10,'add_blog'),(29,'Can change blog',10,'change_blog'),(30,'Can delete blog',10,'delete_blog'),(31,'Can add tag',11,'add_tag'),(32,'Can change tag',11,'change_tag'),(33,'Can delete tag',11,'delete_tag'),(34,'Can add comment',12,'add_comment'),(35,'Can change comment',12,'change_comment'),(36,'Can delete comment',12,'delete_comment'),(37,'Can add category',13,'add_category'),(38,'Can change category',13,'change_category'),(39,'Can delete category',13,'delete_category');
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
  `username` varchar(150) NOT NULL,
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$ix6aGXuyRZL5$Iv1br/mc17D5K35PHUZ8odb/8KnhEXJHuC9umaSfemI=','2017-03-10 11:19:08.937841',1,'admin','','','emlyq@hotmail.com',1,1,'2017-03-10 11:18:58.533006');
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
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `author` varchar(16) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_category_id_c34d5f94_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_blog_category_id_c34d5f94_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'My first blog','Glenn Li','Welcome back~\r\n\r\nI am waiting for you.\r\n\r\nLet\'s go to do some great things.','2017-03-11 07:54:35.280543',1),(2,'I can do it','Glenn Li','If you want to be success,  please do it.','2017-03-11 08:33:02.762812',2);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog_tags`
--

DROP TABLE IF EXISTS `blog_blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blog_tags_blog_id_211c6be5_uniq` (`blog_id`,`tag_id`),
  KEY `blog_blog_tags_tag_id_36a3abc6_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_blog_tags_blog_id_e4cd5f6a_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`),
  CONSTRAINT `blog_blog_tags_tag_id_36a3abc6_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog_tags`
--

LOCK TABLES `blog_blog_tags` WRITE;
/*!40000 ALTER TABLE `blog_blog_tags` DISABLE KEYS */;
INSERT INTO `blog_blog_tags` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `blog_blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'Welcom'),(2,'Fighting');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `email` varchar(254) NOT NULL,
  `content` varchar(140) NOT NULL,
  `created` datetime(6) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_blog_id_c664fb0d_fk_blog_blog_id` (`blog_id`),
  CONSTRAINT `blog_comment_blog_id_c664fb0d_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (1,'Glenn','l@x.com','Yes, I will.','2017-03-12 02:19:04.917829',2),(2,'Glenn','l@x.com','Yes, I will.','2017-03-12 02:19:18.344450',2);
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'Fun'),(2,'Joke');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-03-11 07:52:46.065981','1','Do you love me?',1,'[{\"added\": {}}]',2,1),(2,'2017-03-11 07:54:16.424707','1','Category object',1,'[{\"added\": {}}]',13,1),(3,'2017-03-11 07:54:32.542878','1','Tag object',1,'[{\"added\": {}}]',11,1),(4,'2017-03-11 07:54:35.285284','1','Blog object',1,'[{\"added\": {}}]',10,1),(5,'2017-03-11 08:32:47.736411','2','Category object',1,'[{\"added\": {}}]',13,1),(6,'2017-03-11 08:33:00.003885','2','Tag object',1,'[{\"added\": {}}]',11,1),(7,'2017-03-11 08:33:02.766480','2','Blog object',1,'[{\"added\": {}}]',10,1);
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(6,'auth','group'),(4,'auth','permission'),(5,'auth','user'),(10,'blog','blog'),(13,'blog','category'),(12,'blog','comment'),(11,'blog','tag'),(7,'contenttypes','contenttype'),(9,'login','user'),(1,'polls','choice'),(2,'polls','question'),(8,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-10 11:16:07.913853'),(2,'auth','0001_initial','2017-03-10 11:16:08.659161'),(3,'admin','0001_initial','2017-03-10 11:16:08.720937'),(4,'admin','0002_logentry_remove_auto_add','2017-03-10 11:16:08.737578'),(5,'contenttypes','0002_remove_content_type_name','2017-03-10 11:16:08.818984'),(6,'auth','0002_alter_permission_name_max_length','2017-03-10 11:16:08.851654'),(7,'auth','0003_alter_user_email_max_length','2017-03-10 11:16:08.893106'),(8,'auth','0004_alter_user_username_opts','2017-03-10 11:16:08.903928'),(9,'auth','0005_alter_user_last_login_null','2017-03-10 11:16:08.927495'),(10,'auth','0006_require_contenttypes_0002','2017-03-10 11:16:08.929348'),(11,'auth','0007_alter_validators_add_error_messages','2017-03-10 11:16:08.940467'),(12,'auth','0008_alter_user_username_max_length','2017-03-10 11:16:08.973287'),(13,'login','0001_initial','2017-03-10 11:16:08.986027'),(14,'polls','0001_initial','2017-03-10 11:16:09.305064'),(15,'sessions','0001_initial','2017-03-10 11:16:09.352214'),(16,'blog','0001_initial','2017-03-11 07:50:03.031088');
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
INSERT INTO `django_session` VALUES ('jfna2cfmizlp1j5w2w8nfwpwir48q12q','ODZjZTFkNDUyY2E1MmYxZjRiN2VkNzkzMzkyOWQ3NTNlZmExYmM1ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjZhYjI5ZmUxY2Q2MjE4ZWNhNDFjMDFiYWZlNzdmYmUzYjIwZTM0NWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-24 11:19:08.940671');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_user`
--

DROP TABLE IF EXISTS `login_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_user`
--

LOCK TABLES `login_user` WRITE;
/*!40000 ALTER TABLE `login_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_question_id_c5b4b260_fk_polls_question_id` (`question_id`),
  CONSTRAINT `polls_choice_question_id_c5b4b260_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (1,'Do you love me?','2017-03-11 07:52:44.000000');
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-11 18:44:08
