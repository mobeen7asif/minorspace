-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: shopwise
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'CUtWXYQNdwqpRZLhlwyidqUVhBiMuNUu',1,'2026-06-27 16:42:26','2026-06-27 16:42:26','2026-06-27 16:42:26');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Homepage middle 1','2031-06-27 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.jpg','/product-categories/headphone',0,1,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(2,'Homepage middle 2','2031-06-27 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.jpg','/product-categories/camera',0,2,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 3','2031-06-27 00:00:00','not_set','ZDOZUZZIU7FT','promotion/3.jpg','/product-categories/watches',0,3,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(4,'Slide right 1','2031-06-27 00:00:00','not_set','WF2VEBKBGUFA','promotion/4.jpg','/products',0,4,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(5,'Slide right 2','2031-06-27 00:00:00','not_set','YKE9S2TUEEJB','promotion/5.jpg','/products',0,5,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(6,'Homepage medium 1','2031-06-27 00:00:00','not_set','DHAEBCMWGYJG','promotion/6.jpg','/products',0,6,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(7,'Homepage medium 1','2031-06-27 00:00:00','not_set','MDEUVQI9QPKM','promotion/7.jpg','/products',0,7,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(8,'Homepage medium 3','2031-06-27 00:00:00','not_set','EYMG7NGZTHJL','promotion/8.jpg','/products',0,8,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(9,'Homepage medium 4','2031-06-27 00:00:00','not_set','NKWBGV6NAC3M','promotion/9.jpg','/products',0,9,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL),(10,'Homepage medium 5','2031-06-27 00:00:00','not_set','7W3YFO7XE422','promotion/10.jpg','/products',0,10,'published','2026-06-27 16:42:42','2026-06-27 16:42:42',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Explore our collection of articles and insights in this category.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37'),(2,'Fashion',0,'Explore our collection of articles and insights in this category.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2026-06-27 16:42:37','2026-06-27 16:42:37'),(3,'Electronic',0,'Explore our collection of articles and insights in this category.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2026-06-27 16:42:37','2026-06-27 16:42:37'),(4,'Commercial',0,'Explore our collection of articles and insights in this category.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2026-06-27 16:42:38','2026-06-27 16:42:38');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`categories_id`),
  KEY `idx_categories_trans_categories_id` (`categories_id`),
  KEY `idx_categories_trans_category_lang` (`categories_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('ar',1,'التجارة الإلكترونية',NULL),('ar',2,'أزياء',NULL),('ar',3,'إلكترونيات',NULL),('ar',4,'تجاري',NULL),('fr',1,'E-commerce',NULL),('fr',2,'Mode',NULL),('fr',3,'Électronique',NULL),('fr',4,'Commercial',NULL),('id',1,'E-commerce',NULL),('id',2,'Fashion',NULL),('id',3,'Elektronik',NULL),('id',4,'Komersial',NULL),('tr',1,'E-ticaret',NULL),('tr',2,'Moda',NULL),('tr',3,'Elektronik',NULL),('tr',4,'Ticari',NULL),('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`),
  KEY `idx_contact_cfo_trans_cfo_id` (`contact_custom_field_options_id`),
  KEY `idx_contact_cfo_trans_cfo_lang` (`contact_custom_field_options_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`),
  KEY `idx_contact_cf_trans_cf_id` (`contact_custom_fields_id`),
  KEY `idx_contact_cf_trans_cf_lang` (`contact_custom_fields_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_data` json NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_count` int NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int NOT NULL DEFAULT '0',
  `last_email_sequence` tinyint unsigned NOT NULL DEFAULT '0',
  `recovery_token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `unsubscribe_token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribed_at` timestamp NULL DEFAULT NULL,
  `is_recovered` tinyint(1) NOT NULL DEFAULT '0',
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_abandoned_carts_recovery_token_unique` (`recovery_token`),
  UNIQUE KEY `ec_abandoned_carts_unsubscribe_token_unique` (`unsubscribe_token`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.png','published',0,1,'2026-06-27 16:42:26','2026-06-27 16:42:26'),(2,'Hand crafted',NULL,NULL,'brands/2.png','published',1,1,'2026-06-27 16:42:26','2026-06-27 16:42:26'),(3,'Mestonix',NULL,NULL,'brands/3.png','published',2,1,'2026-06-27 16:42:26','2026-06-27 16:42:26'),(4,'Sunshine',NULL,NULL,'brands/4.png','published',3,1,'2026-06-27 16:42:26','2026-06-27 16:42:26'),(5,'Pure',NULL,NULL,'brands/5.png','published',4,1,'2026-06-27 16:42:26','2026-06-27 16:42:26'),(6,'Anfold',NULL,NULL,'brands/6.png','published',5,1,'2026-06-27 16:42:26','2026-06-27 16:42:26'),(7,'Automotive',NULL,NULL,'brands/7.png','published',6,1,'2026-06-27 16:42:26','2026-06-27 16:42:26');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`),
  KEY `idx_brands_fk` (`ec_brands_id`),
  KEY `idx_brands_brands_lang` (`ec_brands_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`),
  KEY `ec_cart_customer_instance_index` (`customer_id`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `number_format_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'western',
  `space_between_price_and_currency` tinyint(1) NOT NULL DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,'western',0,0,1,1,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(2,'EUR','€',0,2,'western',0,1,0,0.84,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(3,'VND','₫',0,0,'western',0,2,0,23203,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(4,'NGN','₦',1,2,'western',0,2,0,895.52,'2026-06-27 16:42:27','2026-06-27 16:42:27');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'John Smith','customer@botble.com','1234567890','US','New York','New York','123 Main St',1,1,'2026-06-27 16:42:28','2026-06-27 16:42:28','10001'),(2,'John Smith','customer@botble.com','1234567890','US','New York','New York','456 Elm St',1,0,'2026-06-27 16:42:28','2026-06-27 16:42:28','10001'),(3,'John Smith','john.smith@botble.com','1234567890','US','New York','New York','123 Main St',2,1,'2026-06-27 16:42:28','2026-06-27 16:42:28','10001'),(4,'John Smith','john.smith@botble.com','1234567890','US','New York','New York','456 Elm St',2,0,'2026-06-27 16:42:28','2026-06-27 16:42:28','10001'),(5,'Customer 1','customer1@botble.com','1234567890','US','New York','New York','789 Oak St',3,1,'2026-06-27 16:42:28','2026-06-27 16:42:28','10001'),(6,'Customer 2','customer2@botble.com','1234567890','US','New York','New York','789 Oak St',4,1,'2026-06-27 16:42:29','2026-06-27 16:42:29','10001'),(7,'Customer 3','customer3@botble.com','1234567890','US','New York','New York','789 Oak St',5,1,'2026-06-27 16:42:29','2026-06-27 16:42:29','10001'),(8,'Customer 4','customer4@botble.com','1234567890','US','New York','New York','789 Oak St',6,1,'2026-06-27 16:42:29','2026-06-27 16:42:29','10001'),(9,'Customer 5','customer5@botble.com','1234567890','US','New York','New York','789 Oak St',7,1,'2026-06-27 16:42:29','2026-06-27 16:42:29','10001'),(10,'Customer 6','customer6@botble.com','1234567890','US','New York','New York','789 Oak St',8,1,'2026-06-27 16:42:30','2026-06-27 16:42:30','10001'),(11,'Customer 7','customer7@botble.com','1234567890','US','New York','New York','789 Oak St',9,1,'2026-06-27 16:42:30','2026-06-27 16:42:30','10001'),(12,'Customer 8','customer8@botble.com','1234567890','US','New York','New York','789 Oak St',10,1,'2026-06-27 16:42:30','2026-06-27 16:42:30','10001');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_expires_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `tax_class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'John Smith','customer@botble.com','$2y$12$lwJNYTOennTosc79BpagEObQX6LekZa3/nM2MFSkMgTWiYPjVRI06','customers/10.jpg','1989-06-11','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:28','2026-06-27 16:42:28','2026-06-27 23:42:28',NULL,'activated',NULL),(2,'John Smith','john.smith@botble.com','$2y$12$sLZ7YHk7tZpCEknc1qJaduCWVdi5oEsJiA3r46vGHabiaTY6F6Bay','customers/1.jpg','1999-05-29','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:28','2026-06-27 16:42:28','2026-06-27 23:42:28',NULL,'activated',NULL),(3,'Customer 1','customer1@botble.com','$2y$12$OCBj8Vre4w19ooXJzqkDUeXGvW5eo2foNRUfVh5qVAjxysZD00kCm','customers/1.jpg','1977-06-03','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:28','2026-06-27 16:42:28','2026-06-27 23:42:28',NULL,'activated',NULL),(4,'Customer 2','customer2@botble.com','$2y$12$Tx../U8EyVgh2L/S8mxbdeuSXSOKxhW/qtTzkQD0Hub/gqQ/knosu','customers/2.jpg','1978-06-03','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:29','2026-06-27 16:42:29','2026-06-27 23:42:29',NULL,'activated',NULL),(5,'Customer 3','customer3@botble.com','$2y$12$1cxdKQJQdCJjYcVUHESXI.6IyYg6syiDzrSzcY0OAv.HGr3aOulpm','customers/3.jpg','1981-06-22','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:29','2026-06-27 16:42:29','2026-06-27 23:42:29',NULL,'activated',NULL),(6,'Customer 4','customer4@botble.com','$2y$12$0Qq9I4.Y.klkHkTidkiHA.zJc0kdL3ZUPZ2.zRznLZuusF.MRgldC','customers/4.jpg','1982-06-06','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:29','2026-06-27 16:42:29','2026-06-27 23:42:29',NULL,'activated',NULL),(7,'Customer 5','customer5@botble.com','$2y$12$UNQ5o36uvZVaJbnOdtg3qOwQK.Yg6vqwefPXAaKLGUV8lfaFpF6Z.','customers/5.jpg','2002-06-26','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:29','2026-06-27 16:42:29','2026-06-27 23:42:29',NULL,'activated',NULL),(8,'Customer 6','customer6@botble.com','$2y$12$w8Y9Z/ulf1Qa/KA1b6Nm9OKFddDBpSl0zhxnLsiliYYV/AOnuY7TO','customers/6.jpg','1978-06-11','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:30','2026-06-27 16:42:30','2026-06-27 23:42:30',NULL,'activated',NULL),(9,'Customer 7','customer7@botble.com','$2y$12$NV2zhGBSgFMWlheQ/PzbLuxiu0upY5q/hYQQGdb5bS9bifYVhSX7u','customers/7.jpg','1979-06-15','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:30','2026-06-27 16:42:30','2026-06-27 23:42:30',NULL,'activated',NULL),(10,'Customer 8','customer8@botble.com','$2y$12$kR64AlNUwbx19osWOkr4aeZBqOYhjLIhcSVApumGUP8GAI9A5ApYC','customers/8.jpg','1976-06-17','regular',NULL,'1234567890',NULL,'2026-06-27 16:42:30','2026-06-27 16:42:30','2026-06-27 23:42:30',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','L20FNL4GNQ7G','2026-06-26 23:42:37','2026-07-12 23:42:37',NULL,0,10,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(2,'Discount 2','SUIXLQCKDOT4','2026-06-26 23:42:37',NULL,NULL,0,50,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(3,'Discount 3','9XEUU2RX2GBQ','2026-06-26 23:42:37','2026-07-04 23:42:37',NULL,0,25,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(4,'Discount 4','1A3KEWJZRHZW','2026-06-26 23:42:37',NULL,NULL,0,100,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(5,'Discount 5','8P29DZWBUKNG','2026-06-26 23:42:37','2026-07-17 23:42:37',NULL,0,50,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(6,'Discount 6','XZGQEPGRC9PU','2026-06-26 23:42:37','2026-07-07 23:42:37',NULL,0,200,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(7,'Discount 7','LQ8KPCH02JZW','2026-06-26 23:42:37',NULL,NULL,0,15,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(8,'Discount 8','YRWT6RFQB1QV','2026-06-26 23:42:37','2026-07-27 23:42:37',NULL,0,500,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(9,'Discount 9','RGOX8KLRSFAR','2026-06-26 23:42:37','2026-07-02 23:42:37',NULL,0,75,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(10,'Discount 10','YKHLNGLNBAHC','2026-06-26 23:42:37',NULL,NULL,0,150,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0',
  KEY `ec_flash_sale_products_product_id_flash_sale_id_index` (`product_id`,`flash_sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,22,856.68,14,3),(2,15,411.51,17,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2027-03-06 00:00:00','published','2026-06-27 16:42:37','2026-06-27 16:42:37'),(2,'Gadgets &amp; Accessories','2027-02-24 00:00:00','published','2026-06-27 16:42:37','2026-06-27 16:42:37');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`),
  KEY `idx_flash_sales_fk` (`ec_flash_sales_id`),
  KEY `idx_flash_sales_flash_sales_lang` (`ec_flash_sales_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('ar',1,'صفقة اليوم.'),('ar',2,'الأجهزة والإكسسوارات'),('fr',1,'Offre du jour.'),('fr',2,'Gadgets et Accessoires'),('id',1,'Penawaran Hari Ini.'),('id',2,'Gadget & Aksesori'),('tr',1,'Günün Fırsatı.'),('tr',2,'Cihazlar ve Aksesuarlar'),('vi',1,'Ưu đãi trong ngày.'),('vi',2,'Thiết bị & Phụ kiện');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(2,1,'2 Year',10,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(3,1,'3 Year',20,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(4,2,'4GB',0,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(5,2,'8GB',10,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(6,2,'16GB',20,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(7,3,'Core i5',0,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(8,3,'Core i7',10,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(9,3,'Core i9',20,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(10,4,'128GB',0,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(11,4,'256GB',10,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(12,4,'512GB',20,9999,0,'2026-06-27 16:42:40','2026-06-27 16:42:40');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`),
  KEY `idx_global_option_value_fk` (`ec_global_option_value_id`),
  KEY `idx_global_option_value_global_option_value_lang` (`ec_global_option_value_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `price_per_product` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,0,'2026-06-27 16:42:40','2026-06-27 16:42:40');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`),
  KEY `idx_global_options_fk` (`ec_global_options_id`),
  KEY `idx_global_options_global_options_lang` (`ec_global_options_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
INSERT INTO `ec_global_options_translations` VALUES ('ar',1,'الضمان'),('ar',4,'القرص الصلب'),('fr',1,'Garantie'),('fr',4,'Disque dur'),('id',1,'Garansi'),('id',4,'HDD'),('tr',1,'Garanti'),('tr',4,'Sabit Disk'),('vi',1,'Bảo hành'),('vi',4,'Ổ cứng');
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_item_tax_components`
--

DROP TABLE IF EXISTS `ec_invoice_item_tax_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_item_tax_components` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_item_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `jurisdiction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iitc_invoice_item` (`invoice_item_id`),
  CONSTRAINT `ec_invoice_item_tax_components_invoice_item_id_foreign` FOREIGN KEY (`invoice_item_id`) REFERENCES `ec_invoice_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_item_tax_components`
--

LOCK TABLES `ec_invoice_item_tax_components` WRITE;
/*!40000 ALTER TABLE `ec_invoice_item_tax_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_item_tax_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_tax_amount` decimal(15,2) DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`),
  KEY `ec_invoices_reference_id_reference_type_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`),
  KEY `idx_option_value_fk` (`ec_option_value_id`),
  KEY `idx_option_value_option_value_lang` (`ec_option_value_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `price_per_product` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`),
  KEY `idx_options_fk` (`ec_options_id`),
  KEY `idx_options_options_lang` (`ec_options_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_addresses_order_id_type_unique` (`order_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_metadata`
--

DROP TABLE IF EXISTS `ec_order_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_metadata` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_metadata_order_id_meta_key_index` (`order_id`,`meta_key`),
  KEY `ec_order_metadata_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_metadata`
--

LOCK TABLES `ec_order_metadata` WRITE;
/*!40000 ALTER TABLE `ec_order_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `tax_breakdown` json DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` text COLLATE utf8mb4_unicode_ci,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_product_order_id_product_id_index` (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product_tax_components`
--

DROP TABLE IF EXISTS `ec_order_product_tax_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product_tax_components` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_product_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `jurisdiction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opt_order_product` (`order_product_id`),
  KEY `idx_opt_order_product_code` (`order_product_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product_tax_components`
--

LOCK TABLES `ec_order_product_tax_components` WRITE;
/*!40000 ALTER TABLE `ec_order_product_tax_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product_tax_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `images` json DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `shipping_tax_amount` decimal(15,2) DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`),
  KEY `ec_orders_status_created_at_index` (`status`,`created_at`),
  KEY `ec_orders_user_id_is_finished_index` (`user_id`,`is_finished`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2026-06-27 16:42:27','2026-06-27 16:42:27',1),(2,'Size','size','text',1,1,1,'published',1,'2026-06-27 16:42:27','2026-06-27 16:42:27',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`),
  KEY `idx_product_attribute_sets_fk` (`ec_product_attribute_sets_id`),
  KEY `idx_product_attribute_sets_product_attribute_sets_lang` (`ec_product_attribute_sets_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('ar',1,'اللون'),('ar',2,'الحجم'),('fr',1,'Couleur'),('fr',2,'Taille'),('id',1,'Warna'),('id',2,'Ukuran'),('tr',1,'Renk'),('tr',2,'Beden'),('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`),
  KEY `idx_attribute_set_id` (`attribute_set_id`),
  KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(2,1,'Blue','blue','#333333',NULL,0,2,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(3,1,'Red','red','#DA323F',NULL,0,3,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(4,1,'Black','black','#2F366C',NULL,0,4,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(6,2,'S','s',NULL,NULL,1,1,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(7,2,'M','m',NULL,NULL,0,2,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(8,2,'L','l',NULL,NULL,0,3,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(9,2,'XL','xl',NULL,NULL,0,4,'2026-06-27 16:42:27','2026-06-27 16:42:27'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2026-06-27 16:42:27','2026-06-27 16:42:27');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`),
  KEY `idx_product_attributes_fk` (`ec_product_attributes_id`),
  KEY `idx_product_attributes_product_attributes_lang` (`ec_product_attributes_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('ar',1,'أخضر'),('ar',2,'أزرق'),('ar',3,'أحمر'),('ar',4,'أسود'),('ar',5,'بني'),('fr',1,'Vert'),('fr',2,'Bleu'),('fr',3,'Rouge'),('fr',4,'Noir'),('fr',5,'Marron'),('id',1,'Hijau'),('id',2,'Biru'),('id',3,'Merah'),('id',4,'Hitam'),('id',5,'Cokelat'),('tr',1,'Yeşil'),('tr',2,'Mavi'),('tr',3,'Kırmızı'),('tr',4,'Siyah'),('tr',5,'Kahverengi'),('vi',1,'Xanh lá'),('vi',2,'Xanh dương'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  KEY `idx_categories_status_order` (`status`,`order`),
  KEY `idx_categories_order` (`order`),
  KEY `ec_product_categories_slug_index` (`slug`),
  KEY `idx_ec_product_categories_status` (`status`),
  KEY `idx_ec_product_categories_parent_id` (`parent_id`),
  KEY `idx_ec_product_categories_status_parent_order` (`status`,`parent_id`,`order`),
  KEY `idx_ec_product_categories_is_featured` (`is_featured`),
  KEY `idx_ec_product_categories_name` (`name`),
  KEY `idx_ec_product_categories_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Television','television',0,NULL,'published',0,'product-categories/p-1.png',1,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-tv',NULL),(2,'Home Audio & Theaters','home-audio-theaters',1,NULL,'published',0,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(3,'TV & Videos','tv-videos',1,NULL,'published',1,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(4,'Camera, Photos & Videos','camera-photos-videos',1,NULL,'published',2,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(5,'Cellphones & Accessories','cellphones-accessories',1,NULL,'published',3,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(6,'Headphones','headphones',1,NULL,'published',4,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(7,'Videos games','videos-games',1,NULL,'published',5,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(8,'Wireless Speakers','wireless-speakers',1,NULL,'published',6,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(9,'Office Electronic','office-electronic',1,NULL,'published',7,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(10,'Mobile','mobile',0,NULL,'published',1,'product-categories/p-2.png',1,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-responsive',NULL),(11,'Digital Cables','digital-cables',10,NULL,'published',0,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(12,'Audio & Video Cables','audio-video-cables',10,NULL,'published',1,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(13,'Batteries','batteries',10,NULL,'published',2,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(14,'Headphone','headphone',0,NULL,'published',2,'product-categories/p-3.png',1,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-headphones',NULL),(15,'Computer & Tablets','computer-tablets',14,NULL,'published',0,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(16,'Laptop','laptop',14,NULL,'published',1,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(17,'Monitors','monitors',14,NULL,'published',2,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(18,'Computer Components','computer-components',14,NULL,'published',3,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(19,'Watches','watches',0,NULL,'published',3,'product-categories/p-4.png',1,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-watch',NULL),(20,'Drive & Storages','drive-storages',19,NULL,'published',0,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(21,'Gaming Laptop','gaming-laptop',19,NULL,'published',1,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(22,'Security & Protection','security-protection',19,NULL,'published',2,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(23,'Accessories','accessories',19,NULL,'published',3,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,NULL),(24,'Game','game',0,NULL,'published',4,'product-categories/p-5.png',1,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-console',NULL),(25,'Camera','camera',0,NULL,'published',5,'product-categories/p-6.png',1,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-camera',NULL),(26,'Audio','audio',0,NULL,'published',6,'product-categories/p-7.png',1,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-music-system',NULL),(27,'Mobile & Tablet','mobile-tablet',0,NULL,'published',7,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-responsive',NULL),(28,'Accessories','accessories',0,NULL,'published',8,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-plugins',NULL),(29,'Home Audio & Theater','home-audio-theater',0,NULL,'published',9,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-music-system',NULL),(30,'Tv & Smart Box','tv-smart-box',0,NULL,'published',10,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-monitor',NULL),(31,'Printer','printer',0,NULL,'published',11,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-printer',NULL),(32,'Computer','computer',0,NULL,'published',12,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-tv',NULL),(33,'Fax Machine','fax-machine',0,NULL,'published',13,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-fax',NULL),(34,'Mouse','mouse',0,NULL,'published',14,NULL,0,'2026-06-27 16:42:27','2026-06-27 16:42:27','flaticon-mouse',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`),
  KEY `idx_product_categories_fk` (`ec_product_categories_id`),
  KEY `idx_product_categories_product_categories_lang` (`ec_product_categories_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('ar',1,'تلفزيون',NULL,NULL),('ar',2,'الصوت المنزلي والمسارح',NULL,NULL),('ar',3,'التلفزيون والفيديو',NULL,NULL),('ar',4,'كاميرا وصور وفيديو',NULL,NULL),('ar',5,'الهواتف المحمولة والإكسسوارات',NULL,NULL),('ar',6,'سماعات الرأس',NULL,NULL),('ar',7,'ألعاب الفيديو',NULL,NULL),('ar',8,'مكبرات صوت لاسلكية',NULL,NULL),('ar',9,'إلكترونيات المكتب',NULL,NULL),('ar',10,'هاتف محمول',NULL,NULL),('ar',11,'كابلات رقمية',NULL,NULL),('ar',12,'كابلات الصوت والفيديو',NULL,NULL),('ar',13,'بطاريات',NULL,NULL),('ar',14,'سماعات',NULL,NULL),('ar',15,'أجهزة الكمبيوتر والأجهزة اللوحية',NULL,NULL),('ar',16,'حاسوب محمول',NULL,NULL),('ar',17,'شاشات',NULL,NULL),('ar',18,'مكونات الكمبيوتر',NULL,NULL),('ar',19,'ساعات',NULL,NULL),('ar',20,'الأقراص والتخزين',NULL,NULL),('ar',21,'حاسوب الألعاب المحمول',NULL,NULL),('ar',22,'الأمان والحماية',NULL,NULL),('ar',23,'إكسسوارات',NULL,NULL),('ar',24,'ألعاب',NULL,NULL),('ar',25,'كاميرا',NULL,NULL),('ar',26,'صوتيات',NULL,NULL),('ar',27,'هاتف محمول وجهاز لوحي',NULL,NULL),('ar',28,'إكسسوارات',NULL,NULL),('ar',29,'الصوت المنزلي والمسرح',NULL,NULL),('ar',30,'التلفزيون والأجهزة الذكية',NULL,NULL),('ar',31,'طابعة',NULL,NULL),('ar',32,'كمبيوتر',NULL,NULL),('ar',33,'جهاز فاكس',NULL,NULL),('ar',34,'فأرة',NULL,NULL),('fr',1,'Télévision',NULL,NULL),('fr',2,'Audio domestique et cinéma',NULL,NULL),('fr',3,'TV et Vidéos',NULL,NULL),('fr',4,'Caméra, Photos et Vidéos',NULL,NULL),('fr',5,'Téléphones et Accessoires',NULL,NULL),('fr',6,'Casques',NULL,NULL),('fr',7,'Jeux vidéo',NULL,NULL),('fr',8,'Enceintes sans fil',NULL,NULL),('fr',9,'Électronique de bureau',NULL,NULL),('fr',10,'Mobile',NULL,NULL),('fr',11,'Câbles numériques',NULL,NULL),('fr',12,'Câbles audio et vidéo',NULL,NULL),('fr',13,'Batteries',NULL,NULL),('fr',14,'Casque',NULL,NULL),('fr',15,'Ordinateurs et Tablettes',NULL,NULL),('fr',16,'Ordinateur portable',NULL,NULL),('fr',17,'Moniteurs',NULL,NULL),('fr',18,'Composants informatiques',NULL,NULL),('fr',19,'Montres',NULL,NULL),('fr',20,'Lecteurs et Stockage',NULL,NULL),('fr',21,'Ordinateur portable gaming',NULL,NULL),('fr',22,'Sécurité et Protection',NULL,NULL),('fr',23,'Accessoires',NULL,NULL),('fr',24,'Jeux',NULL,NULL),('fr',25,'Caméra',NULL,NULL),('fr',26,'Audio',NULL,NULL),('fr',27,'Mobile et Tablette',NULL,NULL),('fr',28,'Accessoires',NULL,NULL),('fr',29,'Audio domestique et Cinéma',NULL,NULL),('fr',30,'TV et Smart Box',NULL,NULL),('fr',31,'Imprimante',NULL,NULL),('fr',32,'Ordinateur',NULL,NULL),('fr',33,'Télécopieur',NULL,NULL),('fr',34,'Souris',NULL,NULL),('id',1,'Televisi',NULL,NULL),('id',2,'Audio Rumah & Teater',NULL,NULL),('id',3,'TV & Video',NULL,NULL),('id',4,'Kamera, Foto & Video',NULL,NULL),('id',5,'Ponsel & Aksesori',NULL,NULL),('id',6,'Headphone',NULL,NULL),('id',7,'Video Game',NULL,NULL),('id',8,'Speaker Nirkabel',NULL,NULL),('id',9,'Elektronik Kantor',NULL,NULL),('id',10,'Ponsel',NULL,NULL),('id',11,'Kabel Digital',NULL,NULL),('id',12,'Kabel Audio & Video',NULL,NULL),('id',13,'Baterai',NULL,NULL),('id',14,'Headphone',NULL,NULL),('id',15,'Komputer & Tablet',NULL,NULL),('id',16,'Laptop',NULL,NULL),('id',17,'Monitor',NULL,NULL),('id',18,'Komponen Komputer',NULL,NULL),('id',19,'Jam Tangan',NULL,NULL),('id',20,'Drive & Penyimpanan',NULL,NULL),('id',21,'Laptop Gaming',NULL,NULL),('id',22,'Keamanan & Perlindungan',NULL,NULL),('id',23,'Aksesori',NULL,NULL),('id',24,'Game',NULL,NULL),('id',25,'Kamera',NULL,NULL),('id',26,'Audio',NULL,NULL),('id',27,'Ponsel & Tablet',NULL,NULL),('id',28,'Aksesori',NULL,NULL),('id',29,'Audio Rumah & Teater',NULL,NULL),('id',30,'TV & Smart Box',NULL,NULL),('id',31,'Printer',NULL,NULL),('id',32,'Komputer',NULL,NULL),('id',33,'Mesin Fax',NULL,NULL),('id',34,'Mouse',NULL,NULL),('tr',1,'Televizyon',NULL,NULL),('tr',2,'Ev Ses Sistemleri ve Sinema',NULL,NULL),('tr',3,'TV ve Video',NULL,NULL),('tr',4,'Kamera, Fotoğraf ve Video',NULL,NULL),('tr',5,'Cep Telefonları ve Aksesuarlar',NULL,NULL),('tr',6,'Kulaklıklar',NULL,NULL),('tr',7,'Video Oyunları',NULL,NULL),('tr',8,'Kablosuz Hoparlörler',NULL,NULL),('tr',9,'Ofis Elektroniği',NULL,NULL),('tr',10,'Cep Telefonu',NULL,NULL),('tr',11,'Dijital Kablolar',NULL,NULL),('tr',12,'Ses ve Video Kabloları',NULL,NULL),('tr',13,'Piller',NULL,NULL),('tr',14,'Kulaklık',NULL,NULL),('tr',15,'Bilgisayar ve Tabletler',NULL,NULL),('tr',16,'Dizüstü Bilgisayar',NULL,NULL),('tr',17,'Monitörler',NULL,NULL),('tr',18,'Bilgisayar Bileşenleri',NULL,NULL),('tr',19,'Saatler',NULL,NULL),('tr',20,'Sürücüler ve Depolama',NULL,NULL),('tr',21,'Oyun Dizüstü Bilgisayarı',NULL,NULL),('tr',22,'Güvenlik ve Koruma',NULL,NULL),('tr',23,'Aksesuarlar',NULL,NULL),('tr',24,'Oyun',NULL,NULL),('tr',25,'Kamera',NULL,NULL),('tr',26,'Ses',NULL,NULL),('tr',27,'Cep Telefonu ve Tablet',NULL,NULL),('tr',28,'Aksesuarlar',NULL,NULL),('tr',29,'Ev Ses Sistemi ve Sinema',NULL,NULL),('tr',30,'TV ve Akıllı Kutu',NULL,NULL),('tr',31,'Yazıcı',NULL,NULL),('tr',32,'Bilgisayar',NULL,NULL),('tr',33,'Faks Makinesi',NULL,NULL),('tr',34,'Fare',NULL,NULL),('vi',1,'Tivi',NULL,NULL),('vi',2,'Âm thanh gia đình & Rạp hát',NULL,NULL),('vi',3,'TV & Video',NULL,NULL),('vi',4,'Máy ảnh, Ảnh & Video',NULL,NULL),('vi',5,'Điện thoại & Phụ kiện',NULL,NULL),('vi',6,'Tai nghe',NULL,NULL),('vi',7,'Trò chơi điện tử',NULL,NULL),('vi',8,'Loa không dây',NULL,NULL),('vi',9,'Thiết bị văn phòng',NULL,NULL),('vi',10,'Điện thoại',NULL,NULL),('vi',11,'Cáp kỹ thuật số',NULL,NULL),('vi',12,'Cáp âm thanh & video',NULL,NULL),('vi',13,'Pin',NULL,NULL),('vi',14,'Tai nghe',NULL,NULL),('vi',15,'Máy tính & Máy tính bảng',NULL,NULL),('vi',16,'Laptop',NULL,NULL),('vi',17,'Màn hình',NULL,NULL),('vi',18,'Linh kiện máy tính',NULL,NULL),('vi',19,'Đồng hồ',NULL,NULL),('vi',20,'Ổ đĩa & Lưu trữ',NULL,NULL),('vi',21,'Laptop chơi game',NULL,NULL),('vi',22,'An ninh & Bảo vệ',NULL,NULL),('vi',23,'Phụ kiện',NULL,NULL),('vi',24,'Trò chơi',NULL,NULL),('vi',25,'Máy ảnh',NULL,NULL),('vi',26,'Âm thanh',NULL,NULL),('vi',27,'Điện thoại & Máy tính bảng',NULL,NULL),('vi',28,'Phụ kiện',NULL,NULL),('vi',29,'Âm thanh gia đình & Rạp hát',NULL,NULL),('vi',30,'TV & Smart Box',NULL,NULL),('vi',31,'Máy in',NULL,NULL),('vi',32,'Máy tính',NULL,NULL),('vi',33,'Máy fax',NULL,NULL),('vi',34,'Chuột',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`),
  KEY `idx_product_category` (`product_id`,`category_id`),
  KEY `idx_product_id_category_id` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,9),(1,22),(2,1),(2,14),(2,18),(2,24),(2,30),(3,2),(3,13),(3,17),(3,25),(3,28),(4,2),(4,15),(4,21),(4,23),(4,28),(4,30),(5,3),(5,4),(5,7),(5,11),(5,12),(5,17),(5,29),(6,15),(7,6),(7,15),(8,4),(8,8),(8,12),(8,18),(8,23),(8,25),(8,31),(9,17),(9,19),(9,22),(10,2),(10,6),(10,20),(11,10),(11,13),(11,20),(11,23),(12,9),(12,10),(12,15),(12,29),(13,4),(13,5),(13,26),(14,31),(15,20),(15,25),(15,29),(15,31),(16,3),(16,9),(16,13),(16,19),(16,20),(17,6),(17,29),(17,30),(19,8),(19,27),(20,7),(20,19),(21,1),(21,11),(21,16),(21,24),(22,7),(22,22),(23,18),(23,21),(24,7),(24,9),(24,16),(24,22),(24,31),(25,3),(25,10),(25,14),(25,17),(25,21),(25,27),(26,1),(26,5),(26,12),(26,19),(26,28),(26,30),(27,5),(27,11),(27,26),(28,1),(28,14),(28,24),(29,3),(29,5),(29,18),(30,4),(30,8),(30,10),(30,12),(30,27),(31,2),(31,16),(31,26),(31,27),(32,8),(32,13),(32,16),(32,24),(32,26),(32,28),(33,14),(33,23),(34,6),(34,11),(34,21),(34,25);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`),
  KEY `idx_product_id_collection_id` (`product_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,4),(1,8),(1,9),(1,13),(1,14),(1,22),(1,25),(1,28),(1,29),(2,1),(2,2),(2,3),(2,12),(2,17),(2,19),(2,21),(2,24),(2,26),(2,27),(2,30),(2,31),(3,5),(3,6),(3,7),(3,10),(3,11),(3,15),(3,16),(3,18),(3,20),(3,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2026-06-27 16:42:27','2026-06-27 16:42:27',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2026-06-27 16:42:27','2026-06-27 16:42:27',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2026-06-27 16:42:27','2026-06-27 16:42:27',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`),
  KEY `idx_product_collections_fk` (`ec_product_collections_id`),
  KEY `idx_product_collections_product_collections_lang` (`ec_product_collections_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('ar',1,'وصل حديثًا',NULL),('ar',2,'الأكثر مبيعًا',NULL),('ar',3,'عرض خاص',NULL),('fr',1,'Nouveautés',NULL),('fr',2,'Meilleures ventes',NULL),('fr',3,'Offre spéciale',NULL),('id',1,'Produk Baru',NULL),('id',2,'Terlaris',NULL),('id',3,'Penawaran Khusus',NULL),('tr',1,'Yeni Gelenler',NULL),('tr',2,'En Çok Satanlar',NULL),('tr',3,'Özel Teklif',NULL),('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Ưu đãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,6,0,0.00,'fixed',1),(1,17,0,0.00,'fixed',1),(1,18,0,0.00,'fixed',1),(1,20,0,0.00,'fixed',1),(1,21,0,0.00,'fixed',1),(1,27,0,0.00,'fixed',1),(1,31,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,7,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,15,0,0.00,'fixed',1),(2,19,0,0.00,'fixed',1),(3,1,0,0.00,'fixed',1),(3,11,0,0.00,'fixed',1),(3,14,0,0.00,'fixed',1),(3,18,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(3,25,0,0.00,'fixed',1),(3,27,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,12,0,0.00,'fixed',1),(4,14,0,0.00,'fixed',1),(4,21,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(4,30,0,0.00,'fixed',1),(5,4,0,0.00,'fixed',1),(5,6,0,0.00,'fixed',1),(5,7,0,0.00,'fixed',1),(5,18,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(5,26,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,18,0,0.00,'fixed',1),(6,20,0,0.00,'fixed',1),(6,28,0,0.00,'fixed',1),(7,6,0,0.00,'fixed',1),(7,8,0,0.00,'fixed',1),(7,19,0,0.00,'fixed',1),(7,20,0,0.00,'fixed',1),(7,22,0,0.00,'fixed',1),(7,23,0,0.00,'fixed',1),(8,3,0,0.00,'fixed',1),(8,5,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,13,0,0.00,'fixed',1),(8,26,0,0.00,'fixed',1),(8,30,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(9,28,0,0.00,'fixed',1),(9,29,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,20,0,0.00,'fixed',1),(10,24,0,0.00,'fixed',1),(10,25,0,0.00,'fixed',1),(11,5,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,9,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(11,21,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,31,0,0.00,'fixed',1),(12,1,0,0.00,'fixed',1),(12,9,0,0.00,'fixed',1),(12,19,0,0.00,'fixed',1),(12,21,0,0.00,'fixed',1),(12,23,0,0.00,'fixed',1),(12,30,0,0.00,'fixed',1),(12,31,0,0.00,'fixed',1),(13,2,0,0.00,'fixed',1),(13,3,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,21,0,0.00,'fixed',1),(13,28,0,0.00,'fixed',1),(13,31,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,9,0,0.00,'fixed',1),(14,28,0,0.00,'fixed',1),(14,29,0,0.00,'fixed',1),(14,30,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,9,0,0.00,'fixed',1),(15,13,0,0.00,'fixed',1),(15,29,0,0.00,'fixed',1),(16,2,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,18,0,0.00,'fixed',1),(16,19,0,0.00,'fixed',1),(16,21,0,0.00,'fixed',1),(16,26,0,0.00,'fixed',1),(16,30,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,20,0,0.00,'fixed',1),(17,26,0,0.00,'fixed',1),(18,4,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,7,0,0.00,'fixed',1),(18,21,0,0.00,'fixed',1),(18,24,0,0.00,'fixed',1),(18,28,0,0.00,'fixed',1),(18,29,0,0.00,'fixed',1),(19,2,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,10,0,0.00,'fixed',1),(19,24,0,0.00,'fixed',1),(19,26,0,0.00,'fixed',1),(19,27,0,0.00,'fixed',1),(19,31,0,0.00,'fixed',1),(20,1,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,10,0,0.00,'fixed',1),(20,13,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(20,22,0,0.00,'fixed',1),(20,28,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,19,0,0.00,'fixed',1),(21,22,0,0.00,'fixed',1),(21,26,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,6,0,0.00,'fixed',1),(22,7,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,17,0,0.00,'fixed',1),(22,29,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,11,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,27,0,0.00,'fixed',1),(23,28,0,0.00,'fixed',1),(23,30,0,0.00,'fixed',1),(24,7,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,20,0,0.00,'fixed',1),(24,21,0,0.00,'fixed',1),(24,26,0,0.00,'fixed',1),(25,2,0,0.00,'fixed',1),(25,5,0,0.00,'fixed',1),(25,10,0,0.00,'fixed',1),(25,12,0,0.00,'fixed',1),(25,16,0,0.00,'fixed',1),(25,22,0,0.00,'fixed',1),(25,27,0,0.00,'fixed',1),(26,7,0,0.00,'fixed',1),(26,14,0,0.00,'fixed',1),(26,17,0,0.00,'fixed',1),(26,23,0,0.00,'fixed',1),(26,24,0,0.00,'fixed',1),(26,29,0,0.00,'fixed',1),(26,31,0,0.00,'fixed',1),(27,1,0,0.00,'fixed',1),(27,2,0,0.00,'fixed',1),(27,4,0,0.00,'fixed',1),(27,7,0,0.00,'fixed',1),(27,13,0,0.00,'fixed',1),(27,28,0,0.00,'fixed',1),(27,29,0,0.00,'fixed',1),(28,4,0,0.00,'fixed',1),(28,6,0,0.00,'fixed',1),(28,7,0,0.00,'fixed',1),(28,10,0,0.00,'fixed',1),(28,14,0,0.00,'fixed',1),(28,22,0,0.00,'fixed',1),(28,29,0,0.00,'fixed',1),(29,5,0,0.00,'fixed',1),(29,15,0,0.00,'fixed',1),(29,19,0,0.00,'fixed',1),(29,22,0,0.00,'fixed',1),(29,23,0,0.00,'fixed',1),(29,25,0,0.00,'fixed',1),(29,30,0,0.00,'fixed',1),(30,4,0,0.00,'fixed',1),(30,5,0,0.00,'fixed',1),(30,12,0,0.00,'fixed',1),(30,14,0,0.00,'fixed',1),(30,15,0,0.00,'fixed',1),(30,19,0,0.00,'fixed',1),(30,31,0,0.00,'fixed',1),(31,1,0,0.00,'fixed',1),(31,2,0,0.00,'fixed',1),(31,4,0,0.00,'fixed',1),(31,10,0,0.00,'fixed',1),(31,19,0,0.00,'fixed',1),(31,22,0,0.00,'fixed',1),(31,25,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(2,4,'ecommerce/digital-product-files/4-2.jpg','{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"4-2\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(3,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(4,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(5,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(6,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(7,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(8,39,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(9,40,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(10,41,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(11,47,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(12,48,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(13,65,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(14,66,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(15,67,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(16,74,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(17,75,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36'),(18,76,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9670,\"modified\":\"2026-06-27 23:42:36\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2026-06-27 16:42:36','2026-06-27 16:42:36');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,12),(1,18),(1,27),(3,6),(3,9),(3,15),(3,21),(3,24),(3,30);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_labels_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2026-06-27 16:42:27','2026-06-27 16:42:27','#ffffff'),(2,'New','#02856e','published','2026-06-27 16:42:27','2026-06-27 16:42:27','#ffffff'),(3,'Sale','#fe9931','published','2026-06-27 16:42:27','2026-06-27 16:42:27','#ffffff');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`),
  KEY `idx_product_labels_fk` (`ec_product_labels_id`),
  KEY `idx_product_labels_product_labels_lang` (`ec_product_labels_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('ar',1,'رائج',NULL),('ar',2,'جديد',NULL),('ar',3,'تخفيض',NULL),('fr',1,'Chaud',NULL),('fr',2,'Nouveau',NULL),('fr',3,'Solde',NULL),('id',1,'Populer',NULL),('id',2,'Baru',NULL),('id',3,'Diskon',NULL),('tr',1,'Sıcak',NULL),('tr',2,'Yeni',NULL),('tr',3,'İndirim',NULL),('vi',1,'Hot',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'72.04 cm',0,0),(1,7,'84.45 cm',0,0),(1,8,'res_4k',0,0),(1,9,'panel_va',0,0),(1,10,'hdr_10',0,0),(2,1,'14.8 cm',0,0),(2,2,'25.37 cm',0,0),(2,3,'53.23 cm',0,0),(2,4,'21.36 cm',0,0),(2,5,'60.92 cm',0,0),(3,6,'51.17 cm',0,0),(3,7,'42.15 cm',0,0),(3,8,'res_1080p',0,0),(3,9,'panel_va',0,0),(3,10,'hdr_dolby',0,0),(4,1,'98.87 cm',0,0),(4,2,'41.01 cm',0,0),(4,3,'82.34 cm',0,0),(4,4,'87.58 cm',0,0),(4,5,'30.43 cm',0,0),(5,6,'81.13 cm',0,0),(5,7,'22.58 cm',0,0),(5,8,'res_4k',0,0),(5,9,'panel_ips',0,0),(5,10,'hdr_10',0,0),(6,6,'6.26 cm',0,0),(6,7,'49.05 cm',0,0),(6,8,'res_4k',0,0),(6,9,'panel_va',0,0),(6,10,'hdr_none',0,0),(7,6,'38.77 cm',0,0),(7,7,'26.51 cm',0,0),(7,8,'res_4k',0,0),(7,9,'panel_ips',0,0),(7,10,'hdr_10',0,0),(8,6,'62.19 cm',0,0),(8,7,'41.65 cm',0,0),(8,8,'res_1440p',0,0),(8,9,'panel_ips',0,0),(8,10,'hdr_10',0,0),(9,1,'23.12 cm',0,0),(9,2,'52.08 cm',0,0),(9,3,'51.83 cm',0,0),(9,4,'75.89 cm',0,0),(9,5,'22.66 cm',0,0),(10,1,'6.54 cm',0,0),(10,2,'62.27 cm',0,0),(10,3,'36.55 cm',0,0),(10,4,'62.42 cm',0,0),(10,5,'11.15 cm',0,0),(11,6,'80.53 cm',0,0),(11,7,'7.1 cm',0,0),(11,8,'res_1440p',0,0),(11,9,'panel_va',0,0),(11,10,'hdr_10',0,0),(12,6,'55.6 cm',0,0),(12,7,'59.87 cm',0,0),(12,8,'res_1080p',0,0),(12,9,'panel_oled',0,0),(12,10,'hdr_none',0,0),(13,6,'28.49 cm',0,0),(13,7,'17.66 cm',0,0),(13,8,'res_4k',0,0),(13,9,'panel_va',0,0),(13,10,'hdr_10plus',0,0),(14,1,'62.89 cm',0,0),(14,2,'35.92 cm',0,0),(14,3,'13.18 cm',0,0),(14,4,'51.22 cm',0,0),(14,5,'12.97 cm',0,0),(15,1,'84.96 cm',0,0),(15,2,'6.26 cm',0,0),(15,3,'95.65 cm',0,0),(15,4,'3.84 cm',0,0),(15,5,'17.13 cm',0,0),(16,6,'66.97 cm',0,0),(16,7,'90.39 cm',0,0),(16,8,'res_1080p',0,0),(16,9,'panel_ips',0,0),(16,10,'hdr_dolby',0,0),(17,6,'76.19 cm',0,0),(17,7,'21.44 cm',0,0),(17,8,'res_1440p',0,0),(17,9,'panel_tn',0,0),(17,10,'hdr_10',0,0),(18,6,'95.75 cm',0,0),(18,7,'15.66 cm',0,0),(18,8,'res_1440p',0,0),(18,9,'panel_tn',0,0),(18,10,'hdr_10',0,0),(19,6,'26.41 cm',0,0),(19,7,'98.81 cm',0,0),(19,8,'res_4k',0,0),(19,9,'panel_va',0,0),(19,10,'hdr_10',0,0),(20,1,'32.83 cm',0,0),(20,2,'64.91 cm',0,0),(20,3,'77.09 cm',0,0),(20,4,'86.18 cm',0,0),(20,5,'88.3 cm',0,0),(21,1,'78 cm',0,0),(21,2,'93.69 cm',0,0),(21,3,'94.13 cm',0,0),(21,4,'35.2 cm',0,0),(21,5,'30.47 cm',0,0),(22,1,'38.86 cm',0,0),(22,2,'86.71 cm',0,0),(22,3,'87.39 cm',0,0),(22,4,'36.39 cm',0,0),(22,5,'28.56 cm',0,0),(23,6,'39.96 cm',0,0),(23,7,'46.53 cm',0,0),(23,8,'res_4k',0,0),(23,9,'panel_oled',0,0),(23,10,'hdr_10',0,0),(24,6,'32.32 cm',0,0),(24,7,'64.69 cm',0,0),(24,8,'res_4k',0,0),(24,9,'panel_va',0,0),(24,10,'hdr_dolby',0,0),(25,6,'87.28 cm',0,0),(25,7,'68.32 cm',0,0),(25,8,'res_1080p',0,0),(25,9,'panel_tn',0,0),(25,10,'hdr_10',0,0),(26,6,'97.01 cm',0,0),(26,7,'20.02 cm',0,0),(26,8,'res_4k',0,0),(26,9,'panel_tn',0,0),(26,10,'hdr_10',0,0),(27,6,'26.85 cm',0,0),(27,7,'72.15 cm',0,0),(27,8,'res_4k',0,0),(27,9,'panel_ips',0,0),(27,10,'hdr_10plus',0,0),(28,1,'8.53 cm',0,0),(28,2,'4.62 cm',0,0),(28,3,'4.68 cm',0,0),(28,4,'47.52 cm',0,0),(28,5,'1.95 cm',0,0),(29,1,'43.33 cm',0,0),(29,2,'38.63 cm',0,0),(29,3,'86.91 cm',0,0),(29,4,'69.07 cm',0,0),(29,5,'30.63 cm',0,0),(30,6,'23.04 cm',0,0),(30,7,'16.72 cm',0,0),(30,8,'res_4k',0,0),(30,9,'panel_ips',0,0),(30,10,'hdr_dolby',0,0),(31,1,'74.03 cm',0,0),(31,2,'27.92 cm',0,0),(31,3,'18.21 cm',0,0),(31,4,'92.42 cm',0,0),(31,5,'64.7 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  KEY `psat_product_id_index` (`product_id`),
  KEY `psat_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute_translations`
--

LOCK TABLES `ec_product_specification_attribute_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute_translations` VALUES (1,1,6,'ar','72.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(2,1,7,'ar','84.45 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(3,2,1,'ar','14.8 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(4,2,2,'ar','25.37 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(5,2,3,'ar','53.23 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(6,2,4,'ar','21.36 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(7,2,5,'ar','60.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(8,3,6,'ar','51.17 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(9,3,7,'ar','42.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(10,4,1,'ar','98.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(11,4,2,'ar','41.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(12,4,3,'ar','82.34 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(13,4,4,'ar','87.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(14,4,5,'ar','30.43 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(15,5,6,'ar','81.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(16,5,7,'ar','22.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(17,6,6,'ar','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(18,6,7,'ar','49.05 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(19,7,6,'ar','38.77 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(20,7,7,'ar','26.51 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(21,8,6,'ar','62.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(22,8,7,'ar','41.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(23,9,1,'ar','23.12 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(24,9,2,'ar','52.08 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(25,9,3,'ar','51.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(26,9,4,'ar','75.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(27,9,5,'ar','22.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(28,10,1,'ar','6.54 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(29,10,2,'ar','62.27 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(30,10,3,'ar','36.55 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(31,10,4,'ar','62.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(32,10,5,'ar','11.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(33,11,6,'ar','80.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(34,11,7,'ar','7.1 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(35,12,6,'ar','55.6 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(36,12,7,'ar','59.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(37,13,6,'ar','28.49 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(38,13,7,'ar','17.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(39,14,1,'ar','62.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(40,14,2,'ar','35.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(41,14,3,'ar','13.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(42,14,4,'ar','51.22 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(43,14,5,'ar','12.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(44,15,1,'ar','84.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(45,15,2,'ar','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(46,15,3,'ar','95.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(47,15,4,'ar','3.84 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(48,15,5,'ar','17.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(49,16,6,'ar','66.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(50,16,7,'ar','90.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(51,17,6,'ar','76.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(52,17,7,'ar','21.44 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(53,18,6,'ar','95.75 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(54,18,7,'ar','15.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(55,19,6,'ar','26.41 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(56,19,7,'ar','98.81 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(57,20,1,'ar','32.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(58,20,2,'ar','64.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(59,20,3,'ar','77.09 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(60,20,4,'ar','86.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(61,20,5,'ar','88.3 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(62,21,1,'ar','78 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(63,21,2,'ar','93.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(64,21,3,'ar','94.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(65,21,4,'ar','35.2 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(66,21,5,'ar','30.47 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(67,22,1,'ar','38.86 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(68,22,2,'ar','86.71 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(69,22,3,'ar','87.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(70,22,4,'ar','36.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(71,22,5,'ar','28.56 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(72,23,6,'ar','39.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(73,23,7,'ar','46.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(74,24,6,'ar','32.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(75,24,7,'ar','64.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(76,25,6,'ar','87.28 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(77,25,7,'ar','68.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(78,26,6,'ar','97.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(79,26,7,'ar','20.02 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(80,27,6,'ar','26.85 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(81,27,7,'ar','72.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(82,28,1,'ar','8.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(83,28,2,'ar','4.62 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(84,28,3,'ar','4.68 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(85,28,4,'ar','47.52 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(86,28,5,'ar','1.95 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(87,29,1,'ar','43.33 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(88,29,2,'ar','38.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(89,29,3,'ar','86.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(90,29,4,'ar','69.07 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(91,29,5,'ar','30.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(92,30,6,'ar','23.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(93,30,7,'ar','16.72 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(94,31,1,'ar','74.03 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(95,31,2,'ar','27.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(96,31,3,'ar','18.21 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(97,31,4,'ar','92.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(98,31,5,'ar','64.7 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(99,1,6,'vi','72.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(100,1,7,'vi','84.45 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(101,2,1,'vi','14.8 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(102,2,2,'vi','25.37 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(103,2,3,'vi','53.23 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(104,2,4,'vi','21.36 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(105,2,5,'vi','60.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(106,3,6,'vi','51.17 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(107,3,7,'vi','42.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(108,4,1,'vi','98.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(109,4,2,'vi','41.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(110,4,3,'vi','82.34 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(111,4,4,'vi','87.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(112,4,5,'vi','30.43 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(113,5,6,'vi','81.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(114,5,7,'vi','22.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(115,6,6,'vi','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(116,6,7,'vi','49.05 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(117,7,6,'vi','38.77 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(118,7,7,'vi','26.51 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(119,8,6,'vi','62.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(120,8,7,'vi','41.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(121,9,1,'vi','23.12 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(122,9,2,'vi','52.08 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(123,9,3,'vi','51.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(124,9,4,'vi','75.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(125,9,5,'vi','22.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(126,10,1,'vi','6.54 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(127,10,2,'vi','62.27 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(128,10,3,'vi','36.55 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(129,10,4,'vi','62.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(130,10,5,'vi','11.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(131,11,6,'vi','80.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(132,11,7,'vi','7.1 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(133,12,6,'vi','55.6 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(134,12,7,'vi','59.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(135,13,6,'vi','28.49 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(136,13,7,'vi','17.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(137,14,1,'vi','62.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(138,14,2,'vi','35.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(139,14,3,'vi','13.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(140,14,4,'vi','51.22 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(141,14,5,'vi','12.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(142,15,1,'vi','84.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(143,15,2,'vi','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(144,15,3,'vi','95.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(145,15,4,'vi','3.84 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(146,15,5,'vi','17.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(147,16,6,'vi','66.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(148,16,7,'vi','90.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(149,17,6,'vi','76.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(150,17,7,'vi','21.44 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(151,18,6,'vi','95.75 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(152,18,7,'vi','15.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(153,19,6,'vi','26.41 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(154,19,7,'vi','98.81 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(155,20,1,'vi','32.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(156,20,2,'vi','64.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(157,20,3,'vi','77.09 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(158,20,4,'vi','86.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(159,20,5,'vi','88.3 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(160,21,1,'vi','78 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(161,21,2,'vi','93.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(162,21,3,'vi','94.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(163,21,4,'vi','35.2 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(164,21,5,'vi','30.47 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(165,22,1,'vi','38.86 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(166,22,2,'vi','86.71 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(167,22,3,'vi','87.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(168,22,4,'vi','36.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(169,22,5,'vi','28.56 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(170,23,6,'vi','39.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(171,23,7,'vi','46.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(172,24,6,'vi','32.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(173,24,7,'vi','64.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(174,25,6,'vi','87.28 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(175,25,7,'vi','68.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(176,26,6,'vi','97.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(177,26,7,'vi','20.02 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(178,27,6,'vi','26.85 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(179,27,7,'vi','72.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(180,28,1,'vi','8.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(181,28,2,'vi','4.62 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(182,28,3,'vi','4.68 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(183,28,4,'vi','47.52 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(184,28,5,'vi','1.95 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(185,29,1,'vi','43.33 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(186,29,2,'vi','38.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(187,29,3,'vi','86.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(188,29,4,'vi','69.07 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(189,29,5,'vi','30.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(190,30,6,'vi','23.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(191,30,7,'vi','16.72 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(192,31,1,'vi','74.03 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(193,31,2,'vi','27.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(194,31,3,'vi','18.21 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(195,31,4,'vi','92.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(196,31,5,'vi','64.7 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(197,1,6,'fr','72.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(198,1,7,'fr','84.45 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(199,2,1,'fr','14.8 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(200,2,2,'fr','25.37 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(201,2,3,'fr','53.23 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(202,2,4,'fr','21.36 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(203,2,5,'fr','60.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(204,3,6,'fr','51.17 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(205,3,7,'fr','42.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(206,4,1,'fr','98.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(207,4,2,'fr','41.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(208,4,3,'fr','82.34 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(209,4,4,'fr','87.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(210,4,5,'fr','30.43 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(211,5,6,'fr','81.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(212,5,7,'fr','22.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(213,6,6,'fr','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(214,6,7,'fr','49.05 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(215,7,6,'fr','38.77 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(216,7,7,'fr','26.51 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(217,8,6,'fr','62.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(218,8,7,'fr','41.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(219,9,1,'fr','23.12 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(220,9,2,'fr','52.08 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(221,9,3,'fr','51.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(222,9,4,'fr','75.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(223,9,5,'fr','22.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(224,10,1,'fr','6.54 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(225,10,2,'fr','62.27 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(226,10,3,'fr','36.55 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(227,10,4,'fr','62.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(228,10,5,'fr','11.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(229,11,6,'fr','80.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(230,11,7,'fr','7.1 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(231,12,6,'fr','55.6 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(232,12,7,'fr','59.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(233,13,6,'fr','28.49 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(234,13,7,'fr','17.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(235,14,1,'fr','62.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(236,14,2,'fr','35.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(237,14,3,'fr','13.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(238,14,4,'fr','51.22 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(239,14,5,'fr','12.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(240,15,1,'fr','84.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(241,15,2,'fr','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(242,15,3,'fr','95.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(243,15,4,'fr','3.84 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(244,15,5,'fr','17.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(245,16,6,'fr','66.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(246,16,7,'fr','90.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(247,17,6,'fr','76.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(248,17,7,'fr','21.44 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(249,18,6,'fr','95.75 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(250,18,7,'fr','15.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(251,19,6,'fr','26.41 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(252,19,7,'fr','98.81 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(253,20,1,'fr','32.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(254,20,2,'fr','64.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(255,20,3,'fr','77.09 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(256,20,4,'fr','86.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(257,20,5,'fr','88.3 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(258,21,1,'fr','78 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(259,21,2,'fr','93.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(260,21,3,'fr','94.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(261,21,4,'fr','35.2 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(262,21,5,'fr','30.47 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(263,22,1,'fr','38.86 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(264,22,2,'fr','86.71 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(265,22,3,'fr','87.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(266,22,4,'fr','36.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(267,22,5,'fr','28.56 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(268,23,6,'fr','39.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(269,23,7,'fr','46.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(270,24,6,'fr','32.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(271,24,7,'fr','64.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(272,25,6,'fr','87.28 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(273,25,7,'fr','68.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(274,26,6,'fr','97.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(275,26,7,'fr','20.02 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(276,27,6,'fr','26.85 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(277,27,7,'fr','72.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(278,28,1,'fr','8.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(279,28,2,'fr','4.62 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(280,28,3,'fr','4.68 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(281,28,4,'fr','47.52 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(282,28,5,'fr','1.95 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(283,29,1,'fr','43.33 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(284,29,2,'fr','38.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(285,29,3,'fr','86.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(286,29,4,'fr','69.07 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(287,29,5,'fr','30.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(288,30,6,'fr','23.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(289,30,7,'fr','16.72 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(290,31,1,'fr','74.03 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(291,31,2,'fr','27.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(292,31,3,'fr','18.21 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(293,31,4,'fr','92.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(294,31,5,'fr','64.7 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(295,1,6,'id','72.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(296,1,7,'id','84.45 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(297,2,1,'id','14.8 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(298,2,2,'id','25.37 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(299,2,3,'id','53.23 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(300,2,4,'id','21.36 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(301,2,5,'id','60.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(302,3,6,'id','51.17 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(303,3,7,'id','42.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(304,4,1,'id','98.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(305,4,2,'id','41.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(306,4,3,'id','82.34 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(307,4,4,'id','87.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(308,4,5,'id','30.43 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(309,5,6,'id','81.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(310,5,7,'id','22.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(311,6,6,'id','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(312,6,7,'id','49.05 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(313,7,6,'id','38.77 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(314,7,7,'id','26.51 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(315,8,6,'id','62.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(316,8,7,'id','41.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(317,9,1,'id','23.12 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(318,9,2,'id','52.08 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(319,9,3,'id','51.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(320,9,4,'id','75.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(321,9,5,'id','22.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(322,10,1,'id','6.54 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(323,10,2,'id','62.27 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(324,10,3,'id','36.55 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(325,10,4,'id','62.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(326,10,5,'id','11.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(327,11,6,'id','80.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(328,11,7,'id','7.1 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(329,12,6,'id','55.6 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(330,12,7,'id','59.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(331,13,6,'id','28.49 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(332,13,7,'id','17.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(333,14,1,'id','62.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(334,14,2,'id','35.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(335,14,3,'id','13.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(336,14,4,'id','51.22 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(337,14,5,'id','12.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(338,15,1,'id','84.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(339,15,2,'id','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(340,15,3,'id','95.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(341,15,4,'id','3.84 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(342,15,5,'id','17.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(343,16,6,'id','66.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(344,16,7,'id','90.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(345,17,6,'id','76.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(346,17,7,'id','21.44 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(347,18,6,'id','95.75 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(348,18,7,'id','15.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(349,19,6,'id','26.41 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(350,19,7,'id','98.81 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(351,20,1,'id','32.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(352,20,2,'id','64.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(353,20,3,'id','77.09 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(354,20,4,'id','86.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(355,20,5,'id','88.3 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(356,21,1,'id','78 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(357,21,2,'id','93.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(358,21,3,'id','94.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(359,21,4,'id','35.2 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(360,21,5,'id','30.47 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(361,22,1,'id','38.86 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(362,22,2,'id','86.71 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(363,22,3,'id','87.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(364,22,4,'id','36.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(365,22,5,'id','28.56 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(366,23,6,'id','39.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(367,23,7,'id','46.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(368,24,6,'id','32.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(369,24,7,'id','64.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(370,25,6,'id','87.28 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(371,25,7,'id','68.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(372,26,6,'id','97.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(373,26,7,'id','20.02 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(374,27,6,'id','26.85 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(375,27,7,'id','72.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(376,28,1,'id','8.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(377,28,2,'id','4.62 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(378,28,3,'id','4.68 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(379,28,4,'id','47.52 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(380,28,5,'id','1.95 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(381,29,1,'id','43.33 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(382,29,2,'id','38.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(383,29,3,'id','86.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(384,29,4,'id','69.07 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(385,29,5,'id','30.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(386,30,6,'id','23.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(387,30,7,'id','16.72 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(388,31,1,'id','74.03 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(389,31,2,'id','27.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(390,31,3,'id','18.21 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(391,31,4,'id','92.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(392,31,5,'id','64.7 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(393,1,6,'tr','72.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(394,1,7,'tr','84.45 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(395,2,1,'tr','14.8 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(396,2,2,'tr','25.37 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(397,2,3,'tr','53.23 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(398,2,4,'tr','21.36 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(399,2,5,'tr','60.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(400,3,6,'tr','51.17 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(401,3,7,'tr','42.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(402,4,1,'tr','98.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(403,4,2,'tr','41.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(404,4,3,'tr','82.34 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(405,4,4,'tr','87.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(406,4,5,'tr','30.43 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(407,5,6,'tr','81.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(408,5,7,'tr','22.58 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(409,6,6,'tr','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(410,6,7,'tr','49.05 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(411,7,6,'tr','38.77 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(412,7,7,'tr','26.51 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(413,8,6,'tr','62.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(414,8,7,'tr','41.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(415,9,1,'tr','23.12 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(416,9,2,'tr','52.08 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(417,9,3,'tr','51.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(418,9,4,'tr','75.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(419,9,5,'tr','22.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(420,10,1,'tr','6.54 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(421,10,2,'tr','62.27 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(422,10,3,'tr','36.55 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(423,10,4,'tr','62.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(424,10,5,'tr','11.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(425,11,6,'tr','80.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(426,11,7,'tr','7.1 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(427,12,6,'tr','55.6 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(428,12,7,'tr','59.87 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(429,13,6,'tr','28.49 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(430,13,7,'tr','17.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(431,14,1,'tr','62.89 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(432,14,2,'tr','35.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(433,14,3,'tr','13.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(434,14,4,'tr','51.22 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(435,14,5,'tr','12.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(436,15,1,'tr','84.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(437,15,2,'tr','6.26 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(438,15,3,'tr','95.65 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(439,15,4,'tr','3.84 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(440,15,5,'tr','17.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(441,16,6,'tr','66.97 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(442,16,7,'tr','90.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(443,17,6,'tr','76.19 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(444,17,7,'tr','21.44 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(445,18,6,'tr','95.75 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(446,18,7,'tr','15.66 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(447,19,6,'tr','26.41 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(448,19,7,'tr','98.81 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(449,20,1,'tr','32.83 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(450,20,2,'tr','64.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(451,20,3,'tr','77.09 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(452,20,4,'tr','86.18 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(453,20,5,'tr','88.3 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(454,21,1,'tr','78 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(455,21,2,'tr','93.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(456,21,3,'tr','94.13 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(457,21,4,'tr','35.2 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(458,21,5,'tr','30.47 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(459,22,1,'tr','38.86 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(460,22,2,'tr','86.71 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(461,22,3,'tr','87.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(462,22,4,'tr','36.39 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(463,22,5,'tr','28.56 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(464,23,6,'tr','39.96 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(465,23,7,'tr','46.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(466,24,6,'tr','32.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(467,24,7,'tr','64.69 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(468,25,6,'tr','87.28 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(469,25,7,'tr','68.32 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(470,26,6,'tr','97.01 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(471,26,7,'tr','20.02 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(472,27,6,'tr','26.85 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(473,27,7,'tr','72.15 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(474,28,1,'tr','8.53 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(475,28,2,'tr','4.62 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(476,28,3,'tr','4.68 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(477,28,4,'tr','47.52 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(478,28,5,'tr','1.95 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(479,29,1,'tr','43.33 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(480,29,2,'tr','38.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(481,29,3,'tr','86.91 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(482,29,4,'tr','69.07 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(483,29,5,'tr','30.63 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(484,30,6,'tr','23.04 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(485,30,7,'tr','16.72 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(486,31,1,'tr','74.03 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(487,31,2,'tr','27.92 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(488,31,3,'tr','18.21 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(489,31,4,'tr','92.42 cm','2026-06-27 16:42:40','2026-06-27 16:42:40'),(490,31,5,'tr','64.7 cm','2026-06-27 16:42:40','2026-06-27 16:42:40');
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,NULL,'published','2026-06-27 16:42:37','2026-06-27 16:42:37'),(2,'Mobile',NULL,NULL,'published','2026-06-27 16:42:37','2026-06-27 16:42:37'),(3,'Iphone',NULL,NULL,'published','2026-06-27 16:42:37','2026-06-27 16:42:37'),(4,'Printer',NULL,NULL,'published','2026-06-27 16:42:37','2026-06-27 16:42:37'),(5,'Office',NULL,NULL,'published','2026-06-27 16:42:37','2026-06-27 16:42:37'),(6,'IT',NULL,NULL,'published','2026-06-27 16:42:37','2026-06-27 16:42:37');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`),
  KEY `idx_product_tags_fk` (`ec_product_tags_id`),
  KEY `idx_product_tags_product_tags_lang` (`ec_product_tags_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('ar',1,'إلكترونيات',NULL),('ar',2,'هاتف محمول',NULL),('ar',3,'آيفون',NULL),('ar',4,'طابعة',NULL),('ar',5,'مكتب',NULL),('ar',6,'تقنية المعلومات',NULL),('fr',1,'Électronique',NULL),('fr',2,'Mobile',NULL),('fr',3,'Iphone',NULL),('fr',4,'Imprimante',NULL),('fr',5,'Bureau',NULL),('fr',6,'Informatique',NULL),('id',1,'Elektronik',NULL),('id',2,'Ponsel',NULL),('id',3,'Iphone',NULL),('id',4,'Printer',NULL),('id',5,'Kantor',NULL),('id',6,'TI',NULL),('tr',1,'Elektronik',NULL),('tr',2,'Cep Telefonu',NULL),('tr',3,'Iphone',NULL),('tr',4,'Yazıcı',NULL),('tr',5,'Ofis',NULL),('tr',6,'Bilişim',NULL),('vi',1,'Điện tử',NULL),('vi',2,'Điện thoại',NULL),('vi',3,'Iphone',NULL),('vi',4,'Máy in',NULL),('vi',5,'Văn phòng',NULL),('vi',6,'Công nghệ thông tin',NULL);
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_up_sale_relations` VALUES (1,13,0,10.00,'percent',1),(1,21,0,15.00,'percent',1),(2,14,0,20.00,'fixed',1),(2,20,0,5.00,'fixed',1),(3,4,0,10.00,'percent',1),(3,6,0,15.00,'percent',1),(4,2,0,20.00,'fixed',1),(4,26,0,50.00,'fixed',1),(5,14,0,20.00,'fixed',1),(5,20,0,5.00,'percent',1),(6,1,0,10.00,'percent',1),(6,2,0,20.00,'percent',1),(7,4,0,20.00,'percent',1),(7,9,0,5.00,'percent',1),(8,6,0,5.00,'percent',1),(8,20,0,50.00,'fixed',1),(9,8,0,5.00,'percent',1),(9,31,0,20.00,'percent',1),(10,2,0,50.00,'fixed',1),(11,6,0,50.00,'fixed',1),(11,21,0,10.00,'percent',1),(12,14,0,5.00,'percent',1),(12,30,0,20.00,'fixed',1),(13,15,0,10.00,'percent',1),(13,20,0,20.00,'percent',1),(14,2,0,20.00,'fixed',1),(14,13,0,20.00,'fixed',1),(15,23,0,5.00,'percent',1),(15,30,0,20.00,'fixed',1),(16,9,0,20.00,'percent',1),(16,22,0,5.00,'fixed',1),(17,10,0,20.00,'fixed',1),(17,30,0,10.00,'percent',1),(18,7,0,5.00,'fixed',1),(18,17,0,10.00,'fixed',1),(19,3,0,10.00,'fixed',1),(19,27,0,10.00,'percent',1),(20,1,0,5.00,'fixed',1),(20,12,0,10.00,'percent',1),(21,13,0,50.00,'fixed',1),(21,28,0,20.00,'percent',1),(22,25,0,20.00,'fixed',1),(22,28,0,50.00,'fixed',1),(23,14,0,20.00,'fixed',1),(23,19,0,5.00,'fixed',1),(24,19,0,15.00,'percent',1),(24,29,0,20.00,'fixed',1),(25,5,0,20.00,'fixed',1),(25,31,0,10.00,'fixed',1),(26,9,0,20.00,'fixed',1),(26,10,0,5.00,'percent',1),(27,11,0,10.00,'fixed',1),(27,31,0,10.00,'percent',1),(28,6,0,15.00,'percent',1),(28,12,0,5.00,'percent',1),(29,5,0,20.00,'fixed',1),(29,12,0,10.00,'fixed',1),(30,3,0,10.00,'fixed',1),(30,6,0,5.00,'percent',1),(31,25,0,5.00,'percent',1);
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`),
  KEY `ec_product_variation_items_variation_id_attribute_id_index` (`variation_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (3,1,2),(27,1,14),(31,1,16),(33,1,17),(43,1,22),(59,1,30),(65,1,33),(73,1,37),(77,1,39),(83,1,42),(85,1,43),(95,1,48),(97,1,49),(23,2,12),(37,2,19),(63,2,32),(71,2,36),(17,3,9),(21,3,11),(29,3,15),(41,3,21),(75,3,38),(79,3,40),(89,3,45),(93,3,47),(13,4,7),(19,4,10),(35,4,18),(45,4,23),(47,4,24),(49,4,25),(51,4,26),(55,4,28),(61,4,31),(67,4,34),(81,4,41),(87,4,44),(91,4,46),(1,5,1),(5,5,3),(7,5,4),(9,5,5),(11,5,6),(15,5,8),(25,5,13),(39,5,20),(53,5,27),(57,5,29),(69,5,35),(10,6,5),(12,6,6),(26,6,13),(30,6,15),(36,6,18),(40,6,20),(46,6,23),(52,6,26),(78,6,39),(94,6,47),(98,6,49),(2,7,1),(14,7,7),(22,7,11),(28,7,14),(34,7,17),(38,7,19),(50,7,25),(56,7,28),(90,7,45),(18,8,9),(42,8,21),(48,8,24),(68,8,34),(70,8,35),(80,8,40),(4,9,2),(6,9,3),(16,9,8),(32,9,16),(44,9,22),(54,9,27),(60,9,30),(62,9,31),(64,9,32),(74,9,37),(76,9,38),(82,9,41),(84,9,42),(88,9,44),(92,9,46),(8,10,4),(20,10,10),(24,10,12),(58,10,29),(66,10,33),(72,10,36),(86,10,43),(96,10,48);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  KEY `idx_configurable_product_id` (`configurable_product_id`),
  KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`),
  KEY `ec_product_variations_product_id_index` (`product_id`),
  KEY `ec_product_variations_configurable_product_id_index` (`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,32,2,1),(2,33,2,0),(3,34,2,0),(4,35,2,0),(5,36,3,1),(6,37,3,0),(7,38,3,0),(8,39,8,1),(9,40,8,0),(10,41,8,0),(11,42,11,1),(12,43,11,0),(13,44,11,0),(14,45,11,0),(15,46,11,0),(16,47,12,1),(17,48,12,0),(18,49,13,1),(19,50,13,0),(20,51,13,0),(21,52,15,1),(22,53,15,0),(23,54,15,0),(24,55,16,1),(25,56,16,0),(26,57,19,1),(27,58,19,0),(28,59,19,0),(29,60,22,1),(30,61,22,0),(31,62,22,0),(32,63,23,1),(33,64,23,0),(34,65,24,1),(35,66,24,0),(36,67,24,0),(37,68,25,1),(38,69,25,0),(39,70,26,1),(40,71,26,0),(41,72,26,0),(42,73,27,1),(43,74,28,1),(44,75,28,0),(45,76,28,0),(46,77,31,1),(47,78,31,0),(48,79,31,0),(49,80,31,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2026-06-27',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,8,0),(2,8,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,19,0),(2,19,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0),(1,25,0),(2,25,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(1,28,0),(2,28,0),(1,31,0),(2,31,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `is_new_until` date DEFAULT NULL,
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `variations_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT '0.00',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `tax_class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_includes_tax` tinyint(1) NOT NULL DEFAULT '0',
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`),
  KEY `idx_products_export` (`id`,`is_variation`),
  KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  KEY `ec_products_variations_count_index` (`variations_count`),
  KEY `ec_products_slug_index` (`slug`),
  KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  KEY `idx_products_order_created` (`order`,`created_at`),
  KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`),
  KEY `ec_products_reviews_count_index` (`reviews_count`),
  KEY `ec_products_reviews_avg_index` (`reviews_avg`),
  KEY `ec_products_status_is_variation_index` (`status`,`is_variation`),
  KEY `ec_products_storehouse_quantity_index` (`with_storehouse_management`,`quantity`),
  KEY `ec_products_currency_code_index` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker','smart-home-speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]',NULL,'SB-156',0,18,0,1,'in_stock',1,NULL,6,0,0,10,2.00,0,717,186,NULL,NULL,16,17,20,563,1,'standard',75632,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','4596823462409',NULL,NULL,0,0,'auto_generate',0,0,0,2),(2,'Headphone Ultra Bass','headphone-ultra-bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]',NULL,'QU-159-A1',0,11,0,1,'in_stock',1,NULL,7,0,4,10,3.00,0,320,NULL,NULL,NULL,12,14,18,736,1,'standard',29666,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','0825793370099',NULL,NULL,0,0,'auto_generate',0,0,0,1),(3,'Boxed - Bluetooth Headphone','boxed-bluetooth-headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]',NULL,'7I-178-A1',0,12,0,1,'in_stock',1,NULL,3,0,3,10,2.70,0,669,NULL,NULL,NULL,20,11,16,878,1,'standard',142526,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','2449605006099',NULL,NULL,0,0,'auto_generate',0,0,0,2),(4,'Chikie - Bluetooth Speaker (Digital)','chikie-bluetooth-speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]',NULL,'E6-120',0,10,0,1,'in_stock',1,NULL,2,0,0,10,3.70,0,2127,947,NULL,NULL,17,15,16,691,1,'standard',173431,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'digital','7043829652855',NULL,NULL,0,0,'auto_generate',0,0,0,1),(5,'Camera Hikvision HK-35VS8','camera-hikvision-hk-35vs8','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]',NULL,'IN-158',0,18,0,1,'in_stock',1,NULL,5,0,0,10,3.20,0,1116,158,NULL,NULL,10,16,13,861,1,'standard',31793,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','1088346702535',NULL,NULL,0,0,'auto_generate',0,0,0,2),(6,'Camera Samsung SS-24','camera-samsung-ss-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6-1.jpg\"]',NULL,'ET-148',0,16,0,1,'in_stock',1,NULL,3,0,0,10,3.30,0,1423,366,NULL,NULL,18,13,13,534,1,'standard',58297,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','1347197452205',NULL,NULL,0,0,'auto_generate',0,0,0,2),(7,'Leather Watch Band','leather-watch-band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7-1.jpg\"]',NULL,'Y0-142',0,13,0,1,'in_stock',1,NULL,3,0,0,10,2.40,0,2415,1645,NULL,NULL,13,19,17,566,1,'standard',82648,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','3530413267617',NULL,NULL,0,0,'auto_generate',0,0,0,2),(8,'Apple iPhone 13 Plus (Digital)','apple-iphone-13-plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8-1.jpg\"]',NULL,'XG-108-A1',0,20,0,1,'in_stock',1,NULL,1,0,3,10,3.30,0,1116,803.52,NULL,NULL,20,20,16,539,1,'standard',25129,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'digital','6147370829955',NULL,NULL,0,0,'auto_generate',0,0,0,2),(9,'Macbook Pro 2015','macbook-pro-2015','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9-1.jpg\"]',NULL,'ZD-136',0,18,0,1,'in_stock',1,NULL,5,0,0,10,3.20,0,2007,789,NULL,NULL,15,18,14,679,1,'standard',25579,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','4705067231386',NULL,NULL,0,0,'auto_generate',0,0,0,1),(10,'Macbook Air 12 inch','macbook-air-12-inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10-1.jpg\"]',NULL,'DQ-167',0,15,0,1,'in_stock',1,NULL,7,0,0,10,3.40,0,1459,107,NULL,NULL,14,10,10,566,1,'standard',49033,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','2419297021991',NULL,NULL,0,0,'auto_generate',0,0,0,1),(11,'Apple Watch Serial 7','apple-watch-serial-7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11-1.jpg\"]',NULL,'AG-151-A1',0,16,0,1,'in_stock',1,NULL,6,0,5,10,3.00,0,1410,NULL,NULL,NULL,10,20,12,654,1,'standard',174773,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','0841416034827',NULL,NULL,0,0,'auto_generate',0,0,0,2),(12,'Macbook Pro 13 inch (Digital)','macbook-pro-13-inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12-1.jpg\"]',NULL,'9Z-163-A1',0,15,0,1,'in_stock',1,NULL,3,0,2,10,3.30,0,2046,1514.04,NULL,NULL,16,10,12,518,1,'standard',42337,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'digital','3885314183444',NULL,NULL,0,0,'auto_generate',0,0,0,2),(13,'Apple Keyboard','apple-keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13-1.jpg\"]',NULL,'4Y-172-A1',0,20,0,1,'in_stock',1,NULL,1,0,3,10,3.10,0,1367,NULL,NULL,NULL,17,10,16,635,1,'standard',184524,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','8424011348814',NULL,NULL,0,0,'auto_generate',0,0,0,2),(14,'MacSafe 80W','macsafe-80w','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14-1.jpg\"]',NULL,'60-180',0,18,0,1,'in_stock',1,NULL,4,0,0,10,2.30,0,2451,913,NULL,NULL,19,10,12,524,1,'standard',5944,'2026-06-27 16:42:33','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','5440901304183',NULL,NULL,0,0,'auto_generate',0,0,0,1),(15,'Hand playstation','hand-playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15-1.jpg\"]',NULL,'CQ-179-A1',0,18,0,1,'in_stock',1,NULL,3,0,3,10,3.30,0,1247,NULL,NULL,NULL,20,14,18,851,1,'standard',102832,'2026-06-27 16:42:34','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','5303428615852',NULL,NULL,0,0,'auto_generate',0,0,0,1),(16,'Apple Airpods Serial 3 (Digital)','apple-airpods-serial-3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[]',NULL,'KD-192-A1',0,12,0,1,'in_stock',1,NULL,1,0,2,10,3.10,0,1088,946.56,NULL,NULL,14,19,11,793,1,'standard',49352,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','2254358812541',NULL,NULL,0,0,'auto_generate',0,0,0,2),(17,'Cool Smart Watches','cool-smart-watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[]',NULL,'FO-156',0,18,0,1,'in_stock',1,NULL,1,0,0,10,3.20,0,745,506,NULL,NULL,16,20,14,624,1,'standard',190394,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','7153367808727',NULL,NULL,0,0,'auto_generate',0,0,0,2),(18,'Black Smart Watches','black-smart-watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]',NULL,'8M-165',0,11,0,1,'in_stock',1,NULL,6,0,0,10,2.30,0,2355,389,NULL,NULL,14,12,16,738,1,'standard',190293,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','5115520341320',NULL,NULL,0,0,'auto_generate',0,0,0,2),(19,'Leather Watch Band Serial 3','leather-watch-band-serial-3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19-1.jpg\"]',NULL,'BK-126-A1',0,10,0,1,'in_stock',1,NULL,1,0,3,10,3.50,0,2238,NULL,NULL,NULL,20,10,17,626,1,'standard',148719,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','1087224938622',NULL,NULL,0,0,'auto_generate',0,0,0,2),(20,'Macbook Pro 2015 13 inch (Digital)','macbook-pro-2015-13-inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20-1.jpg\"]',NULL,'SL-156',0,11,0,1,'in_stock',1,NULL,3,0,0,10,2.40,0,2262,120,NULL,NULL,17,10,18,898,1,'standard',9087,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','4287950208250',NULL,NULL,0,0,'auto_generate',0,0,0,1),(21,'Historic Alarm Clock','historic-alarm-clock','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21-1.jpg\"]',NULL,'TN-164',0,14,0,1,'in_stock',1,NULL,2,0,0,10,2.90,0,1502,94,NULL,NULL,20,16,12,702,1,'standard',40041,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','8649785080160',NULL,NULL,0,0,'auto_generate',0,0,0,1),(22,'Black Glasses','black-glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22-1.jpg\"]',NULL,'RB-101-A1',0,10,0,1,'in_stock',1,NULL,4,0,3,10,3.00,0,1947,NULL,NULL,NULL,12,12,19,898,1,'standard',77043,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','7121079258277',NULL,NULL,0,0,'auto_generate',0,0,0,1),(23,'Phillips Mouse','phillips-mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23-1.jpg\"]',NULL,'HJ-193-A1',0,14,0,1,'in_stock',1,NULL,5,0,2,10,3.60,0,1232,NULL,NULL,NULL,19,12,11,740,1,'standard',76930,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','3264918727993',NULL,NULL,0,0,'auto_generate',0,0,0,2),(24,'Gaming Keyboard (Digital)','gaming-keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24-1.jpg\"]',NULL,'LX-163-A1',0,18,0,1,'in_stock',1,NULL,5,0,3,10,3.10,0,1230,1107,NULL,NULL,15,12,19,572,1,'standard',184598,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','2446204467467',NULL,NULL,0,0,'auto_generate',0,0,0,2),(25,'Dual Camera 20MP','dual-camera-20mp','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25-1.jpg\"]',NULL,'GN-189-A1',0,16,0,1,'in_stock',0,NULL,6,0,2,10,3.10,0,1658,NULL,NULL,NULL,14,17,19,805,1,'standard',192706,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','9066255519897',NULL,NULL,0,0,'auto_generate',0,0,0,2),(26,'Smart Watches','smart-watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26-1.jpg\",\"products\\/26-2.jpg\"]',NULL,'BV-103-A1',0,16,0,1,'in_stock',1,NULL,7,0,3,10,2.50,0,995,NULL,NULL,NULL,19,18,12,585,1,'standard',170266,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','6618725136979',NULL,NULL,0,0,'auto_generate',0,0,0,2),(27,'Beat Headphone','beat-headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27-1.jpg\"]',NULL,'L0-155-A1',0,18,0,1,'in_stock',1,NULL,7,0,1,10,2.70,0,2292,NULL,NULL,NULL,14,18,20,752,1,'standard',61588,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','9533240384094',NULL,NULL,0,0,'auto_generate',0,0,0,2),(28,'Red &amp; Black Headphone (Digital)','red-black-headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28-1.jpg\"]',NULL,'EU-120-A1',0,20,0,1,'in_stock',1,NULL,1,0,3,10,3.40,0,372,290.16,NULL,NULL,18,15,20,781,1,'standard',152058,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','0705007236536',NULL,NULL,0,0,'auto_generate',0,0,0,1),(29,'Audio Equipment','audio-equipment','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29-1.jpg\"]',NULL,'VN-117',0,16,0,1,'in_stock',0,NULL,5,0,0,10,3.50,0,2164,811,NULL,NULL,17,10,20,761,1,'standard',99469,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','9255377541712',NULL,NULL,0,0,'auto_generate',0,0,0,1),(30,'Smart Televisions','smart-televisions','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30-1.jpg\"]',NULL,'NW-142',0,14,0,1,'in_stock',0,NULL,3,0,0,10,2.60,0,1989,354,NULL,NULL,18,16,16,664,1,'standard',159831,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','3979272879225',NULL,NULL,0,0,'auto_generate',0,0,0,2),(31,'Samsung Smart TV','samsung-smart-tv','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31-1.jpg\"]',NULL,'KD-126-A1',0,10,0,1,'in_stock',1,NULL,3,0,4,10,2.80,0,1901,NULL,NULL,NULL,11,11,11,533,1,'standard',148802,'2026-06-27 16:42:34','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','2109331584697',NULL,NULL,0,0,'auto_generate',0,0,0,1),(32,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-2.jpg\"]',NULL,'QU-159-A1',0,11,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,320,NULL,NULL,NULL,12,14,18,736,NULL,'standard',0,'2026-06-27 16:42:34','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','1716235501258',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(33,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-3.jpg\"]',NULL,'QU-159-A1-A2',0,11,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,320,NULL,NULL,NULL,12,14,18,736,NULL,'standard',0,'2026-06-27 16:42:34','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','6376585816393',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(34,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-1.jpg\"]',NULL,'QU-159-A1-A3',0,11,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,320,NULL,NULL,NULL,12,14,18,736,NULL,'standard',0,'2026-06-27 16:42:34','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','1307224686249',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(35,'Headphone Ultra Bass',NULL,NULL,NULL,'published','[\"products\\/2-1.jpg\"]',NULL,'QU-159-A1-A4',0,11,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,320,NULL,NULL,NULL,12,14,18,736,NULL,'standard',0,'2026-06-27 16:42:34','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','6744890145482',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(36,'Boxed - Bluetooth Headphone',NULL,NULL,NULL,'published','[\"products\\/3-2.jpg\"]',NULL,'7I-178-A1',0,12,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,669,NULL,NULL,NULL,20,11,16,878,NULL,'standard',0,'2026-06-27 16:42:34','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','1632023227967',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(37,'Boxed - Bluetooth Headphone',NULL,NULL,NULL,'published','[\"products\\/3-3.jpg\"]',NULL,'7I-178-A1-A2',0,12,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,669,NULL,NULL,NULL,20,11,16,878,NULL,'standard',0,'2026-06-27 16:42:34','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','4441860912267',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(38,'Boxed - Bluetooth Headphone',NULL,NULL,NULL,'published','[\"products\\/3-1.jpg\"]',NULL,'7I-178-A1-A3',0,12,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,669,NULL,NULL,NULL,20,11,16,878,NULL,'standard',0,'2026-06-27 16:42:34','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','6477254979170',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(39,'Apple iPhone 13 Plus (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'XG-108-A1',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1116,803.52,NULL,NULL,20,20,16,539,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'digital','5158458975281',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(40,'Apple iPhone 13 Plus (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'XG-108-A1-A2',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1116,993.24,NULL,NULL,20,20,16,539,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'digital','7067759885633',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(41,'Apple iPhone 13 Plus (Digital)',NULL,NULL,NULL,'published','[\"products\\/8-1.jpg\"]',NULL,'XG-108-A1-A3',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1116,937.44,NULL,NULL,20,20,16,539,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'digital','1213840098024',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(42,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'AG-151-A1',0,16,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1410,NULL,NULL,NULL,10,20,12,654,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','8265578204089',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(43,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'AG-151-A1-A2',0,16,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1410,NULL,NULL,NULL,10,20,12,654,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','9296707275372',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(44,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'AG-151-A1-A3',0,16,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1410,NULL,NULL,NULL,10,20,12,654,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','6155356224366',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(45,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'AG-151-A1-A4',0,16,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1410,NULL,NULL,NULL,10,20,12,654,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','9568476438495',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(46,'Apple Watch Serial 7',NULL,NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'AG-151-A1-A5',0,16,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1410,NULL,NULL,NULL,10,20,12,654,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','9058926235281',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(47,'Macbook Pro 13 inch (Digital)',NULL,NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'9Z-163-A1',0,15,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,2046,1514.04,NULL,NULL,16,10,12,518,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'digital','2941916992646',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(48,'Macbook Pro 13 inch (Digital)',NULL,NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'9Z-163-A1-A2',0,15,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,2046,1554.96,NULL,NULL,16,10,12,518,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'digital','6873089939400',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(49,'Apple Keyboard',NULL,NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'4Y-172-A1',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1367,NULL,NULL,NULL,17,10,16,635,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','9026809794125',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(50,'Apple Keyboard',NULL,NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'4Y-172-A1-A2',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1367,NULL,NULL,NULL,17,10,16,635,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','2179895631311',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(51,'Apple Keyboard',NULL,NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'4Y-172-A1-A3',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1367,NULL,NULL,NULL,17,10,16,635,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','9848503344280',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(52,'Hand playstation',NULL,NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'CQ-179-A1',0,18,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1247,NULL,NULL,NULL,20,14,18,851,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','1676733645390',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(53,'Hand playstation',NULL,NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'CQ-179-A1-A2',0,18,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1247,NULL,NULL,NULL,20,14,18,851,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','9215089922049',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(54,'Hand playstation',NULL,NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'CQ-179-A1-A3',0,18,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1247,NULL,NULL,NULL,20,14,18,851,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:39',0,'Botble\\ACL\\Models\\User',NULL,'physical','9869567286606',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(55,'Apple Airpods Serial 3 (Digital)',NULL,NULL,NULL,'published','[null]',NULL,'KD-192-A1',0,12,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1088,946.56,NULL,NULL,14,19,11,793,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','4023536133611',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(56,'Apple Airpods Serial 3 (Digital)',NULL,NULL,NULL,'published','[null]',NULL,'KD-192-A1-A2',0,12,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,1088,957.44,NULL,NULL,14,19,11,793,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','4746097592054',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(57,'Leather Watch Band Serial 3',NULL,NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'BK-126-A1',0,10,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,2238,NULL,NULL,NULL,20,10,17,626,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','4824632340503',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(58,'Leather Watch Band Serial 3',NULL,NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'BK-126-A1-A2',0,10,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,2238,NULL,NULL,NULL,20,10,17,626,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','7954860197017',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(59,'Leather Watch Band Serial 3',NULL,NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'BK-126-A1-A3',0,10,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,2238,NULL,NULL,NULL,20,10,17,626,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','4714400969855',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(60,'Black Glasses',NULL,NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'RB-101-A1',0,10,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1947,NULL,NULL,NULL,12,12,19,898,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','7416010892024',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(61,'Black Glasses',NULL,NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'RB-101-A1-A2',0,10,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1947,NULL,NULL,NULL,12,12,19,898,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','3413726155270',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(62,'Black Glasses',NULL,NULL,NULL,'published','[\"products\\/22-1.jpg\"]',NULL,'RB-101-A1-A3',0,10,0,1,'in_stock',0,NULL,4,1,0,0,0.00,0,1947,NULL,NULL,NULL,12,12,19,898,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','6434811663316',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(63,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/23-1.jpg\"]',NULL,'HJ-193-A1',0,14,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1232,NULL,NULL,NULL,19,12,11,740,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','1928727910138',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(64,'Phillips Mouse',NULL,NULL,NULL,'published','[\"products\\/23-1.jpg\"]',NULL,'HJ-193-A1-A2',0,14,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1232,NULL,NULL,NULL,19,12,11,740,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','0261870050520',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(65,'Gaming Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/24-1.jpg\"]',NULL,'LX-163-A1',0,18,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1230,1107,NULL,NULL,15,12,19,572,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','8991527562428',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(66,'Gaming Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/24-1.jpg\"]',NULL,'LX-163-A1-A2',0,18,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1230,1094.7,NULL,NULL,15,12,19,572,NULL,'standard',0,'2026-06-27 16:42:35','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','6421921018570',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(67,'Gaming Keyboard (Digital)',NULL,NULL,NULL,'published','[\"products\\/24-1.jpg\"]',NULL,'LX-163-A1-A3',0,18,0,1,'in_stock',0,NULL,5,1,0,0,0.00,0,1230,959.4,NULL,NULL,15,12,19,572,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','1235035912724',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(68,'Dual Camera 20MP',NULL,NULL,NULL,'published','[\"products\\/25-1.jpg\"]',NULL,'GN-189-A1',0,16,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1658,NULL,NULL,NULL,14,17,19,805,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','0948328456379',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(69,'Dual Camera 20MP',NULL,NULL,NULL,'published','[\"products\\/25-1.jpg\"]',NULL,'GN-189-A1-A2',0,16,0,1,'in_stock',0,NULL,6,1,0,0,0.00,0,1658,NULL,NULL,NULL,14,17,19,805,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','2480634209174',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(70,'Smart Watches',NULL,NULL,NULL,'published','[\"products\\/26-2.jpg\"]',NULL,'BV-103-A1',0,16,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,995,NULL,NULL,NULL,19,18,12,585,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','2105742868821',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(71,'Smart Watches',NULL,NULL,NULL,'published','[\"products\\/26-1.jpg\"]',NULL,'BV-103-A1-A2',0,16,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,995,NULL,NULL,NULL,19,18,12,585,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','9394159246541',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(72,'Smart Watches',NULL,NULL,NULL,'published','[\"products\\/26-1.jpg\"]',NULL,'BV-103-A1-A3',0,16,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,995,NULL,NULL,NULL,19,18,12,585,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','2001731245294',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(73,'Beat Headphone',NULL,NULL,NULL,'published','[\"products\\/27-1.jpg\"]',NULL,'L0-155-A1',0,18,0,1,'in_stock',0,NULL,7,1,0,0,0.00,0,2292,NULL,NULL,NULL,14,18,20,752,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','8367001949687',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(74,'Red & Black Headphone (Digital)',NULL,NULL,NULL,'published','[\"products\\/28-1.jpg\"]',NULL,'EU-120-A1',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,372,290.16,NULL,NULL,18,15,20,781,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','8726228532339',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(75,'Red & Black Headphone (Digital)',NULL,NULL,NULL,'published','[\"products\\/28-1.jpg\"]',NULL,'EU-120-A1-A2',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,372,334.8,NULL,NULL,18,15,20,781,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','4967332316277',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(76,'Red & Black Headphone (Digital)',NULL,NULL,NULL,'published','[\"products\\/28-1.jpg\"]',NULL,'EU-120-A1-A3',0,20,0,1,'in_stock',0,NULL,1,1,0,0,0.00,0,372,260.4,NULL,NULL,18,15,20,781,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'digital','9369969686818',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(77,'Samsung Smart TV',NULL,NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'KD-126-A1',0,10,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1901,NULL,NULL,NULL,11,11,11,533,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','6717931739223',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(78,'Samsung Smart TV',NULL,NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'KD-126-A1-A2',0,10,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1901,NULL,NULL,NULL,11,11,11,533,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','2415746509089',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(79,'Samsung Smart TV',NULL,NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'KD-126-A1-A3',0,10,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1901,NULL,NULL,NULL,11,11,11,533,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','3190669673800',NULL,NULL,0,0,'auto_generate',0,0,0,NULL),(80,'Samsung Smart TV',NULL,NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'KD-126-A1-A4',0,10,0,1,'in_stock',0,NULL,3,1,0,0,0.00,0,1901,NULL,NULL,NULL,11,11,11,533,NULL,'standard',0,'2026-06-27 16:42:36','2026-06-27 16:42:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','4449835137745',NULL,NULL,0,0,'auto_generate',0,0,0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`),
  KEY `idx_products_fk` (`ec_products_id`),
  KEY `idx_products_products_lang` (`ec_products_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('ar',1,'مكبر صوت منزلي ذكي',NULL,NULL,NULL),('ar',2,'سماعات رأس بصوت جهير فائق',NULL,NULL,NULL),('ar',3,'سماعة بلوتوث في علبة',NULL,NULL,NULL),('ar',5,'كاميرا هيكفيجن HK-35VS8',NULL,NULL,NULL),('ar',6,'كاميرا سامسونج SS-24',NULL,NULL,NULL),('ar',7,'سوار ساعة جلدي',NULL,NULL,NULL),('ar',9,'ماك بوك برو 2015',NULL,NULL,NULL),('ar',10,'ماك بوك إير 12 بوصة',NULL,NULL,NULL),('ar',11,'ساعة آبل سيريال 7',NULL,NULL,NULL),('ar',13,'لوحة مفاتيح آبل',NULL,NULL,NULL),('ar',14,'ماك سيف 80 واط',NULL,NULL,NULL),('ar',15,'بلايستيشن محمول',NULL,NULL,NULL),('ar',17,'ساعات ذكية أنيقة',NULL,NULL,NULL),('ar',18,'ساعات ذكية سوداء',NULL,NULL,NULL),('ar',19,'سوار ساعة جلدي سيريال 3',NULL,NULL,NULL),('ar',21,'ساعة منبه تاريخية',NULL,NULL,NULL),('ar',22,'نظارات سوداء',NULL,NULL,NULL),('ar',23,'فأرة فيليبس',NULL,NULL,NULL),('ar',25,'كاميرا مزدوجة 20 ميجابكسل',NULL,NULL,NULL),('ar',26,'ساعات ذكية',NULL,NULL,NULL),('ar',27,'سماعة بيت',NULL,NULL,NULL),('ar',29,'معدات صوتية',NULL,NULL,NULL),('ar',30,'تلفزيونات ذكية',NULL,NULL,NULL),('ar',31,'تلفزيون سامسونج الذكي',NULL,NULL,NULL),('fr',1,'Enceinte intelligente',NULL,NULL,NULL),('fr',2,'Casque Ultra Bass',NULL,NULL,NULL),('fr',3,'Casque Bluetooth en boîte',NULL,NULL,NULL),('fr',5,'Caméra Hikvision HK-35VS8',NULL,NULL,NULL),('fr',6,'Caméra Samsung SS-24',NULL,NULL,NULL),('fr',7,'Bracelet de montre en cuir',NULL,NULL,NULL),('fr',9,'Macbook Pro 2015',NULL,NULL,NULL),('fr',10,'Macbook Air 12 pouces',NULL,NULL,NULL),('fr',11,'Apple Watch Série 7',NULL,NULL,NULL),('fr',13,'Clavier Apple',NULL,NULL,NULL),('fr',14,'MacSafe 80W',NULL,NULL,NULL),('fr',15,'Console de jeu portable',NULL,NULL,NULL),('fr',17,'Montres connectées tendance',NULL,NULL,NULL),('fr',18,'Montres connectées noires',NULL,NULL,NULL),('fr',19,'Bracelet de montre en cuir Série 3',NULL,NULL,NULL),('fr',21,'Réveil historique',NULL,NULL,NULL),('fr',22,'Lunettes noires',NULL,NULL,NULL),('fr',23,'Souris Phillips',NULL,NULL,NULL),('fr',25,'Double caméra 20MP',NULL,NULL,NULL),('fr',26,'Montres connectées',NULL,NULL,NULL),('fr',27,'Casque Beat',NULL,NULL,NULL),('fr',29,'Équipement audio',NULL,NULL,NULL),('fr',30,'Télévisions intelligentes',NULL,NULL,NULL),('fr',31,'TV intelligente Samsung',NULL,NULL,NULL),('id',1,'Speaker Rumah Pintar',NULL,NULL,NULL),('id',2,'Headphone Ultra Bass',NULL,NULL,NULL),('id',3,'Headphone Bluetooth Kotak',NULL,NULL,NULL),('id',5,'Kamera Hikvision HK-35VS8',NULL,NULL,NULL),('id',6,'Kamera Samsung SS-24',NULL,NULL,NULL),('id',7,'Tali Jam Tangan Kulit',NULL,NULL,NULL),('id',9,'Macbook Pro 2015',NULL,NULL,NULL),('id',10,'Macbook Air 12 inci',NULL,NULL,NULL),('id',11,'Apple Watch Seri 7',NULL,NULL,NULL),('id',13,'Keyboard Apple',NULL,NULL,NULL),('id',14,'MacSafe 80W',NULL,NULL,NULL),('id',15,'Playstation Genggam',NULL,NULL,NULL),('id',17,'Jam Tangan Pintar Keren',NULL,NULL,NULL),('id',18,'Jam Tangan Pintar Hitam',NULL,NULL,NULL),('id',19,'Tali Jam Tangan Kulit Seri 3',NULL,NULL,NULL),('id',21,'Jam Alarm Klasik',NULL,NULL,NULL),('id',22,'Kacamata Hitam',NULL,NULL,NULL),('id',23,'Mouse Phillips',NULL,NULL,NULL),('id',25,'Kamera Ganda 20MP',NULL,NULL,NULL),('id',26,'Jam Tangan Pintar',NULL,NULL,NULL),('id',27,'Headphone Beat',NULL,NULL,NULL),('id',29,'Peralatan Audio',NULL,NULL,NULL),('id',30,'TV Pintar',NULL,NULL,NULL),('id',31,'Samsung Smart TV',NULL,NULL,NULL),('tr',1,'Akıllı Ev Hoparlörü',NULL,NULL,NULL),('tr',2,'Ultra Bass Kulaklık',NULL,NULL,NULL),('tr',3,'Kutulu Bluetooth Kulaklık',NULL,NULL,NULL),('tr',5,'Kamera Hikvision HK-35VS8',NULL,NULL,NULL),('tr',6,'Kamera Samsung SS-24',NULL,NULL,NULL),('tr',7,'Deri Saat Kayışı',NULL,NULL,NULL),('tr',9,'Macbook Pro 2015',NULL,NULL,NULL),('tr',10,'Macbook Air 12 inç',NULL,NULL,NULL),('tr',11,'Apple Watch Seri 7',NULL,NULL,NULL),('tr',13,'Apple Klavye',NULL,NULL,NULL),('tr',14,'MacSafe 80W',NULL,NULL,NULL),('tr',15,'El Oyun Konsolu',NULL,NULL,NULL),('tr',17,'Havalı Akıllı Saatler',NULL,NULL,NULL),('tr',18,'Siyah Akıllı Saatler',NULL,NULL,NULL),('tr',19,'Deri Saat Kayışı Seri 3',NULL,NULL,NULL),('tr',21,'Tarihi Çalar Saat',NULL,NULL,NULL),('tr',22,'Siyah Gözlük',NULL,NULL,NULL),('tr',23,'Phillips Fare',NULL,NULL,NULL),('tr',25,'Çift Kamera 20MP',NULL,NULL,NULL),('tr',26,'Akıllı Saatler',NULL,NULL,NULL),('tr',27,'Beat Kulaklık',NULL,NULL,NULL),('tr',29,'Ses Ekipmanı',NULL,NULL,NULL),('tr',30,'Akıllı Televizyonlar',NULL,NULL,NULL),('tr',31,'Samsung Akıllı TV',NULL,NULL,NULL),('vi',1,'Loa thông minh gia đình',NULL,NULL,NULL),('vi',2,'Tai nghe Ultra Bass',NULL,NULL,NULL),('vi',3,'Tai nghe Bluetooth hộp',NULL,NULL,NULL),('vi',5,'Camera Hikvision HK-35VS8',NULL,NULL,NULL),('vi',6,'Camera Samsung SS-24',NULL,NULL,NULL),('vi',7,'Dây đồng hồ da',NULL,NULL,NULL),('vi',9,'Macbook Pro 2015',NULL,NULL,NULL),('vi',10,'Macbook Air 12 inch',NULL,NULL,NULL),('vi',11,'Apple Watch Series 7',NULL,NULL,NULL),('vi',13,'Bàn phím Apple',NULL,NULL,NULL),('vi',14,'MacSafe 80W',NULL,NULL,NULL),('vi',15,'Máy chơi game cầm tay',NULL,NULL,NULL),('vi',17,'Đồng hồ thông minh thời thượng',NULL,NULL,NULL),('vi',18,'Đồng hồ thông minh đen',NULL,NULL,NULL),('vi',19,'Dây đồng hồ da Series 3',NULL,NULL,NULL),('vi',21,'Đồng hồ báo thức cổ điển',NULL,NULL,NULL),('vi',22,'Kính đen',NULL,NULL,NULL),('vi',23,'Chuột Phillips',NULL,NULL,NULL),('vi',25,'Camera kép 20MP',NULL,NULL,NULL),('vi',26,'Đồng hồ thông minh',NULL,NULL,NULL),('vi',27,'Tai nghe Beat',NULL,NULL,NULL),('vi',29,'Thiết bị âm thanh',NULL,NULL,NULL),('vi',30,'TV thông minh',NULL,NULL,NULL),('vi',31,'TV thông minh Samsung',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_unique` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `badge_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`),
  KEY `ec_reviews_product_id_status_index` (`product_id`,`status`),
  KEY `ec_reviews_customer_id_status_index` (`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,9,NULL,NULL,31,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(2,10,NULL,NULL,19,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(3,1,NULL,NULL,19,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(4,9,NULL,NULL,6,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(5,8,NULL,NULL,28,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(6,6,NULL,NULL,24,2,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(7,6,NULL,NULL,20,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(8,2,NULL,NULL,11,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(9,2,NULL,NULL,25,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(10,7,NULL,NULL,3,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(11,7,NULL,NULL,24,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(12,10,NULL,NULL,6,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(13,6,NULL,NULL,6,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(14,6,NULL,NULL,1,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(15,9,NULL,NULL,12,5,'Clean & perfect source code','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(16,10,NULL,NULL,27,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(17,4,NULL,NULL,21,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(18,3,NULL,NULL,6,5,'Clean & perfect source code','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(19,3,NULL,NULL,19,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(20,6,NULL,NULL,21,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(21,4,NULL,NULL,27,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(22,10,NULL,NULL,25,3,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(23,6,NULL,NULL,9,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(24,3,NULL,NULL,17,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(25,10,NULL,NULL,2,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(26,9,NULL,NULL,28,5,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(27,2,NULL,NULL,28,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(28,7,NULL,NULL,21,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(29,1,NULL,NULL,12,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(30,9,NULL,NULL,15,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(31,5,NULL,NULL,18,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(32,9,NULL,NULL,9,4,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(33,6,NULL,NULL,12,4,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(34,3,NULL,NULL,23,5,'Clean & perfect source code','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(35,5,NULL,NULL,17,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(36,2,NULL,NULL,24,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(37,4,NULL,NULL,8,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(38,1,NULL,NULL,10,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(39,5,NULL,NULL,24,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(40,9,NULL,NULL,30,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(41,1,NULL,NULL,29,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(42,2,NULL,NULL,18,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(43,9,NULL,NULL,24,2,'Clean & perfect source code','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(44,10,NULL,NULL,9,1,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(45,7,NULL,NULL,29,5,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(46,8,NULL,NULL,8,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(47,7,NULL,NULL,25,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(48,6,NULL,NULL,28,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(49,9,NULL,NULL,23,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(50,5,NULL,NULL,31,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(51,8,NULL,NULL,4,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(52,4,NULL,NULL,13,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(53,9,NULL,NULL,1,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(54,1,NULL,NULL,5,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(55,10,NULL,NULL,5,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(56,4,NULL,NULL,11,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(57,9,NULL,NULL,21,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(58,7,NULL,NULL,8,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(59,2,NULL,NULL,14,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(60,10,NULL,NULL,3,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(61,7,NULL,NULL,7,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(62,3,NULL,NULL,28,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(63,3,NULL,NULL,22,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(64,7,NULL,NULL,18,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(65,2,NULL,NULL,27,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(66,1,NULL,NULL,15,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(67,1,NULL,NULL,27,3,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(68,5,NULL,NULL,7,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(69,9,NULL,NULL,16,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(70,9,NULL,NULL,3,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(71,2,NULL,NULL,22,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(72,1,NULL,NULL,16,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(73,9,NULL,NULL,25,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(74,6,NULL,NULL,14,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(75,10,NULL,NULL,29,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(76,7,NULL,NULL,11,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(77,6,NULL,NULL,26,4,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(78,3,NULL,NULL,12,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(79,4,NULL,NULL,15,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(80,7,NULL,NULL,9,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(81,5,NULL,NULL,13,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(82,9,NULL,NULL,5,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(83,8,NULL,NULL,10,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(84,8,NULL,NULL,26,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(85,3,NULL,NULL,11,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(86,8,NULL,NULL,11,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(87,3,NULL,NULL,10,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(88,1,NULL,NULL,30,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(89,10,NULL,NULL,26,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(90,10,NULL,NULL,20,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(91,1,NULL,NULL,31,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(92,7,NULL,NULL,2,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(93,7,NULL,NULL,22,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(94,6,NULL,NULL,3,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(95,10,NULL,NULL,13,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(96,5,NULL,NULL,4,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(97,9,NULL,NULL,4,5,'Clean & perfect source code','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(98,6,NULL,NULL,13,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(99,6,NULL,NULL,5,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(100,1,NULL,NULL,4,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(101,8,NULL,NULL,18,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(102,8,NULL,NULL,21,1,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(103,4,NULL,NULL,17,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(104,3,NULL,NULL,21,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(105,5,NULL,NULL,15,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(106,1,NULL,NULL,1,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(107,8,NULL,NULL,7,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(108,7,NULL,NULL,31,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(109,5,NULL,NULL,11,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(110,1,NULL,NULL,8,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(111,1,NULL,NULL,22,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(112,8,NULL,NULL,6,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(113,9,NULL,NULL,22,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(114,4,NULL,NULL,4,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(115,7,NULL,NULL,15,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(116,8,NULL,NULL,20,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(117,4,NULL,NULL,14,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(118,6,NULL,NULL,11,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(119,7,NULL,NULL,27,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(120,4,NULL,NULL,26,3,'Clean & perfect source code','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(121,5,NULL,NULL,25,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(122,3,NULL,NULL,25,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(123,8,NULL,NULL,29,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(124,3,NULL,NULL,4,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(125,3,NULL,NULL,2,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(126,7,NULL,NULL,16,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(127,4,NULL,NULL,7,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(128,4,NULL,NULL,24,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(129,5,NULL,NULL,5,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(130,10,NULL,NULL,4,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(131,7,NULL,NULL,13,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(132,6,NULL,NULL,23,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(133,2,NULL,NULL,2,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(134,8,NULL,NULL,5,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(135,8,NULL,NULL,22,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(136,5,NULL,NULL,1,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(137,1,NULL,NULL,17,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(138,2,NULL,NULL,6,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(139,1,NULL,NULL,18,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(140,8,NULL,NULL,2,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(141,4,NULL,NULL,10,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(142,7,NULL,NULL,30,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(143,1,NULL,NULL,13,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(144,3,NULL,NULL,13,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(145,4,NULL,NULL,1,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(146,2,NULL,NULL,20,3,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(147,7,NULL,NULL,28,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(148,5,NULL,NULL,23,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(149,4,NULL,NULL,31,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(150,9,NULL,NULL,13,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(151,5,NULL,NULL,19,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(152,7,NULL,NULL,12,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(153,4,NULL,NULL,18,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(154,3,NULL,NULL,3,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(155,1,NULL,NULL,26,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(156,2,NULL,NULL,17,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(157,4,NULL,NULL,19,4,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(158,8,NULL,NULL,14,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(159,5,NULL,NULL,26,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(160,1,NULL,NULL,24,4,'Clean & perfect source code','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(161,7,NULL,NULL,20,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(162,6,NULL,NULL,16,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(163,8,NULL,NULL,30,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(164,7,NULL,NULL,6,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(165,9,NULL,NULL,19,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(166,10,NULL,NULL,16,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(167,5,NULL,NULL,9,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(168,5,NULL,NULL,6,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(169,3,NULL,NULL,18,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(170,6,NULL,NULL,19,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(171,4,NULL,NULL,6,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:36','2026-06-27 16:42:36',NULL),(172,2,NULL,NULL,5,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(173,2,NULL,NULL,1,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(174,9,NULL,NULL,27,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(175,10,NULL,NULL,15,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(176,10,NULL,NULL,21,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(177,9,NULL,NULL,10,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(178,10,NULL,NULL,31,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(179,1,NULL,NULL,14,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(180,6,NULL,NULL,2,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(181,2,NULL,NULL,12,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(182,3,NULL,NULL,27,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(183,10,NULL,NULL,7,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(184,10,NULL,NULL,28,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(185,6,NULL,NULL,27,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(186,1,NULL,NULL,3,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(187,10,NULL,NULL,18,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(188,4,NULL,NULL,23,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(189,4,NULL,NULL,16,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(190,8,NULL,NULL,12,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(191,5,NULL,NULL,14,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(192,5,NULL,NULL,27,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(193,8,NULL,NULL,19,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(194,3,NULL,NULL,8,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(195,5,NULL,NULL,3,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(196,3,NULL,NULL,15,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(197,6,NULL,NULL,25,2,'Clean & perfect source code','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(198,6,NULL,NULL,22,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(199,4,NULL,NULL,25,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(200,2,NULL,NULL,31,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(201,8,NULL,NULL,17,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(202,7,NULL,NULL,1,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(203,10,NULL,NULL,12,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(204,9,NULL,NULL,20,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(205,8,NULL,NULL,13,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(206,9,NULL,NULL,14,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(207,2,NULL,NULL,3,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(208,8,NULL,NULL,31,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(209,3,NULL,NULL,30,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(210,8,NULL,NULL,15,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(211,6,NULL,NULL,30,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(212,5,NULL,NULL,21,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(213,5,NULL,NULL,20,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(214,6,NULL,NULL,10,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(215,9,NULL,NULL,8,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(216,3,NULL,NULL,24,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(217,5,NULL,NULL,28,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(218,4,NULL,NULL,29,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(219,7,NULL,NULL,26,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(220,3,NULL,NULL,31,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(221,2,NULL,NULL,21,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(222,9,NULL,NULL,2,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(223,2,NULL,NULL,26,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(224,1,NULL,NULL,6,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(225,9,NULL,NULL,11,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(226,5,NULL,NULL,10,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(227,4,NULL,NULL,20,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(228,8,NULL,NULL,1,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(229,2,NULL,NULL,29,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(230,10,NULL,NULL,30,2,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(231,4,NULL,NULL,5,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(232,1,NULL,NULL,9,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(233,7,NULL,NULL,23,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(234,9,NULL,NULL,17,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(235,1,NULL,NULL,2,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(236,2,NULL,NULL,13,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(237,6,NULL,NULL,29,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(238,10,NULL,NULL,11,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(239,2,NULL,NULL,15,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(240,5,NULL,NULL,30,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(241,1,NULL,NULL,21,2,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(242,6,NULL,NULL,17,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(243,7,NULL,NULL,17,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(244,3,NULL,NULL,1,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(245,5,NULL,NULL,2,2,'Clean & perfect source code','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(246,6,NULL,NULL,15,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(247,10,NULL,NULL,23,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(248,3,NULL,NULL,16,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(249,3,NULL,NULL,5,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(250,8,NULL,NULL,9,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(251,7,NULL,NULL,19,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(252,3,NULL,NULL,7,1,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(253,3,NULL,NULL,26,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(254,6,NULL,NULL,4,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(255,5,NULL,NULL,22,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(256,8,NULL,NULL,16,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(257,9,NULL,NULL,26,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(258,1,NULL,NULL,28,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(259,1,NULL,NULL,11,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(260,4,NULL,NULL,2,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(261,8,NULL,NULL,24,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(262,3,NULL,NULL,29,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(263,2,NULL,NULL,10,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(264,2,NULL,NULL,4,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(265,1,NULL,NULL,23,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(266,1,NULL,NULL,20,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(267,10,NULL,NULL,14,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(268,4,NULL,NULL,3,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(269,3,NULL,NULL,14,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(270,10,NULL,NULL,17,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(271,10,NULL,NULL,8,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(272,5,NULL,NULL,16,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(273,10,NULL,NULL,22,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(274,4,NULL,NULL,30,4,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(275,7,NULL,NULL,14,2,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(276,8,NULL,NULL,25,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(277,9,NULL,NULL,29,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(278,4,NULL,NULL,9,2,'Clean & perfect source code','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(279,5,NULL,NULL,29,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(280,2,NULL,NULL,19,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(281,2,NULL,NULL,7,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(282,10,NULL,NULL,1,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(283,1,NULL,NULL,25,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(284,2,NULL,NULL,16,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(285,8,NULL,NULL,3,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(286,10,NULL,NULL,24,4,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(287,4,NULL,NULL,28,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(288,2,NULL,NULL,8,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(289,10,NULL,NULL,10,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(290,8,NULL,NULL,23,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(291,6,NULL,NULL,7,2,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(292,6,NULL,NULL,8,4,'Best ecommerce CMS online store!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(293,2,NULL,NULL,9,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(294,4,NULL,NULL,22,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(295,7,NULL,NULL,5,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(296,9,NULL,NULL,7,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(297,6,NULL,NULL,18,2,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(298,2,NULL,NULL,30,2,'Clean & perfect source code','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(299,3,NULL,NULL,20,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(300,9,NULL,NULL,18,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(301,7,NULL,NULL,4,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(302,4,NULL,NULL,12,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(303,6,NULL,NULL,31,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(304,1,NULL,NULL,7,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(305,5,NULL,NULL,12,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(306,7,NULL,NULL,10,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(307,3,NULL,NULL,9,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(308,8,NULL,NULL,27,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(309,5,NULL,NULL,8,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(310,2,NULL,NULL,23,5,'Good app, good backup service and support. Good documentation.','published','auto','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL);
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shipments_order_id_unique` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2026-06-27 16:42:37','2026-06-27 16:42:37');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code_from` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zip_range` (`zip_code_from`,`zip_code_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2026-06-27 16:42:37','2026-06-27 16:42:37'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2026-06-27 16:42:37','2026-06-27 16:42:37'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2026-06-27 16:42:37','2026-06-27 16:42:37');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(8,4,'Resolution','select','[{\"id\":\"res_1080p\",\"value\":\"1920x1080\"},{\"id\":\"res_1440p\",\"value\":\"2560x1440\"},{\"id\":\"res_4k\",\"value\":\"3840x2160\"}]',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(9,4,'Panel Type','select','[{\"id\":\"panel_ips\",\"value\":\"IPS\"},{\"id\":\"panel_va\",\"value\":\"VA\"},{\"id\":\"panel_tn\",\"value\":\"TN\"},{\"id\":\"panel_oled\",\"value\":\"OLED\"}]',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(10,4,'HDR Support','radio','[{\"id\":\"hdr_10\",\"value\":\"HDR10\"},{\"id\":\"hdr_10plus\",\"value\":\"HDR10+\"},{\"id\":\"hdr_dolby\",\"value\":\"Dolby Vision\"},{\"id\":\"hdr_none\",\"value\":\"None\"}]',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`),
  KEY `idx_specification_attributes_fk` (`ec_specification_attributes_id`),
  KEY `idx_specification_attributes_specification_attributes_lang` (`ec_specification_attributes_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes_translations` VALUES ('ar',1,'الارتفاع',NULL,NULL),('ar',2,'العرض',NULL,NULL),('ar',3,'الوزن',NULL,NULL),('ar',4,'الطاقة',NULL,NULL),('ar',5,'السرعة',NULL,NULL),('ar',6,'عمر البطارية',NULL,NULL),('ar',7,'حجم الشاشة',NULL,NULL),('ar',8,'الدقة',NULL,NULL),('ar',9,'نوع اللوحة','[{\"id\":\"panel_ips\",\"value\":\"IPS\"},{\"id\":\"panel_va\",\"value\":\"VA\"},{\"id\":\"panel_tn\",\"value\":\"TN\"},{\"id\":\"panel_oled\",\"value\":\"OLED\"}]',NULL),('ar',10,'دعم HDR','[{\"id\":\"hdr_10\",\"value\":\"HDR10\"},{\"id\":\"hdr_10plus\",\"value\":\"HDR10+\"},{\"id\":\"hdr_dolby\",\"value\":\"Dolby Vision\"},{\"id\":\"hdr_none\",\"value\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f\"}]',NULL),('fr',1,'Height',NULL,NULL),('fr',2,'Width',NULL,NULL),('fr',3,'Weight',NULL,NULL),('fr',4,'Power',NULL,NULL),('fr',5,'Speed',NULL,NULL),('fr',6,'Battery Life',NULL,NULL),('fr',7,'Screen Size',NULL,NULL),('fr',8,'Resolution',NULL,NULL),('fr',9,'Panel Type',NULL,NULL),('fr',10,'HDR Support',NULL,NULL),('id',1,'Height',NULL,NULL),('id',2,'Width',NULL,NULL),('id',3,'Weight',NULL,NULL),('id',4,'Power',NULL,NULL),('id',5,'Speed',NULL,NULL),('id',6,'Battery Life',NULL,NULL),('id',7,'Screen Size',NULL,NULL),('id',8,'Resolution',NULL,NULL),('id',9,'Panel Type',NULL,NULL),('id',10,'HDR Support',NULL,NULL),('tr',1,'Height',NULL,NULL),('tr',2,'Width',NULL,NULL),('tr',3,'Weight',NULL,NULL),('tr',4,'Power',NULL,NULL),('tr',5,'Speed',NULL,NULL),('tr',6,'Battery Life',NULL,NULL),('tr',7,'Screen Size',NULL,NULL),('tr',8,'Resolution',NULL,NULL),('tr',9,'Panel Type',NULL,NULL),('tr',10,'HDR Support',NULL,NULL),('vi',1,'Chiều cao',NULL,NULL),('vi',2,'Chiều rộng',NULL,NULL),('vi',3,'Cân nặng',NULL,NULL),('vi',4,'Công suất',NULL,NULL),('vi',5,'Tốc độ',NULL,NULL),('vi',6,'Thời lượng pin',NULL,NULL),('vi',7,'Kích thước màn hình',NULL,NULL),('vi',8,'Độ phân giải',NULL,NULL),('vi',9,'Loại tấm nền','[{\"id\":\"panel_ips\",\"value\":\"IPS\"},{\"id\":\"panel_va\",\"value\":\"VA\"},{\"id\":\"panel_tn\",\"value\":\"TN\"},{\"id\":\"panel_oled\",\"value\":\"OLED\"}]',NULL),('vi',10,'Hỗ trợ HDR','[{\"id\":\"hdr_10\",\"value\":\"HDR10\"},{\"id\":\"hdr_10plus\",\"value\":\"HDR10+\"},{\"id\":\"hdr_dolby\",\"value\":\"Dolby Vision\"},{\"id\":\"hdr_none\",\"value\":\"Kh\\u00f4ng h\\u1ed7 tr\\u1ee3\"}]',NULL);
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(2,'Performance',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(3,'Battery',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(4,'Display',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
INSERT INTO `ec_specification_groups_translations` VALUES ('ar',1,'الأبعاد',NULL),('ar',2,'الأداء',NULL),('ar',3,'البطارية',NULL),('ar',4,'الشاشة',NULL),('fr',1,'Dimensions',NULL),('fr',2,'Performance',NULL),('fr',3,'Battery',NULL),('fr',4,'Display',NULL),('id',1,'Dimensions',NULL),('id',2,'Performance',NULL),('id',3,'Battery',NULL),('id',4,'Display',NULL),('tr',1,'Dimensions',NULL),('tr',2,'Performance',NULL),('tr',3,'Battery',NULL),('tr',4,'Display',NULL),('vi',1,'Kích thước',NULL),('vi',2,'Hiệu suất',NULL),('vi',3,'Pin',NULL),('vi',4,'Màn hình',NULL);
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL),(2,'Technical Specification',NULL,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
INSERT INTO `ec_specification_tables_translations` VALUES ('ar',1,'المواصفات العامة',NULL),('ar',2,'المواصفات الفنية',NULL),('fr',1,'General Specification',NULL),('fr',2,'Technical Specification',NULL),('id',1,'General Specification',NULL),('id',2,'Technical Specification',NULL),('tr',1,'General Specification',NULL),('tr',2,'Technical Specification',NULL),('vi',1,'Thông số chung',NULL),('vi',2,'Thông số kỹ thuật',NULL);
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shopwise','sales@botble.com','123-456-7890','123 Street, Old Trafford','US','New York','New York',1,1,'2026-06-27 16:42:39','2026-06-27 16:42:39',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2026-06-27 16:42:37','2026-06-27 16:42:37'),(2,'None',0,2,'published','2026-06-27 16:42:37','2026-06-27 16:42:37'),(3,'Import Tax',15,3,'published','2026-06-27 16:42:37','2026-06-27 16:42:37');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL),(2,'Payment',1,'published','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL),(3,'Order &amp; Returns',2,'published','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`),
  KEY `idx_faq_cat_trans_faq_cat_id` (`faq_categories_id`),
  KEY `idx_faq_cat_trans_faq_cat_lang` (`faq_categories_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('ar',1,'الشحن'),('ar',2,'الدفع'),('ar',3,'الطلبات والمرتجعات'),('fr',1,'Livraison'),('fr',2,'Paiement'),('fr',3,'Commandes et retours'),('id',1,'Pengiriman'),('id',2,'Pembayaran'),('id',3,'Pesanan & Pengembalian'),('tr',1,'Kargo'),('tr',2,'Ödeme'),('tr',3,'Sipariş ve İadeler'),('vi',1,'Vận chuyển'),('vi',2,'Thanh toán'),('vi',3,'Đơn hàng & Đổi trả');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney\'s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2026-06-27 16:42:26','2026-06-27 16:42:26'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven\'t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2026-06-27 16:42:26','2026-06-27 16:42:26');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`),
  KEY `idx_faqs_trans_faqs_id` (`faqs_id`),
  KEY `idx_faqs_trans_faq_lang` (`faqs_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('ar',1,'ما هي طرق الشحن المتاحة؟','نحن نقدم عدة طرق شحن بما في ذلك الشحن القياسي والسريع والتوصيل في نفس اليوم حسب موقعك.'),('ar',2,'هل تقومون بالشحن دوليًا؟','نعم، نحن نشحن إلى العديد من الدول حول العالم. تختلف رسوم الشحن ومدة التوصيل حسب الوجهة.'),('ar',3,'كم من الوقت سيستغرق وصول طردي؟','عادة ما يستغرق الشحن القياسي من 5 إلى 7 أيام عمل، بينما يستغرق الشحن السريع من 2 إلى 3 أيام عمل.'),('ar',4,'ما هي طرق الدفع المقبولة؟','نحن نقبل جميع بطاقات الائتمان الرئيسية وPayPal والتحويل البنكي والدفع عند الاستلام.'),('ar',5,'هل الشراء عبر الإنترنت آمن؟','نعم، نحن نستخدم تشفير SSL ومعالجة دفع آمنة لحماية معلوماتك الشخصية والمالية.'),('ar',6,'كيف أقوم بتقديم طلب؟','ببساطة تصفح منتجاتنا، أضف العناصر إلى سلة التسوق، وانتقل إلى صفحة الدفع لإكمال طلبك.'),('ar',7,'كيف يمكنني إلغاء أو تغيير طلبي؟','يمكنك إلغاء أو تعديل طلبك قبل شحنه عن طريق الاتصال بفريق خدمة العملاء لدينا.'),('ar',8,'هل أحتاج إلى حساب لتقديم طلب؟','لا، يمكنك الطلب كضيف. ومع ذلك، إنشاء حساب يتيح لك تتبع طلباتك وحفظ معلوماتك للمرات القادمة.'),('ar',9,'كيف أتتبع طلبي؟','بمجرد شحن طلبك، ستتلقى بريدًا إلكترونيًا يحتوي على رقم التتبع. يمكنك أيضًا تتبع طلبك من حسابك.'),('ar',10,'كيف يمكنني إرجاع منتج؟','يمكنك إرجاع أي منتج خلال 30 يومًا من الشراء. يرجى التأكد من أن المنتج في حالته الأصلية مع جميع العلامات.'),('fr',1,'Quelles sont les méthodes de livraison disponibles ?','Nous proposons plusieurs méthodes de livraison, notamment la livraison standard, express et le jour même selon votre emplacement.'),('fr',2,'Livrez-vous à l\'international ?','Oui, nous livrons dans de nombreux pays à travers le monde. Les frais de livraison et les délais varient selon la destination.'),('fr',3,'Combien de temps faudra-t-il pour recevoir mon colis ?','La livraison standard prend généralement 5 à 7 jours ouvrables, tandis que la livraison express prend 2 à 3 jours ouvrables.'),('fr',4,'Quels modes de paiement sont acceptés ?','Nous acceptons toutes les principales cartes de crédit, PayPal, le virement bancaire et le paiement à la livraison.'),('fr',5,'Est-ce que l\'achat en ligne est sûr ?','Oui, nous utilisons le cryptage SSL et un traitement de paiement sécurisé pour protéger vos informations personnelles et financières.'),('fr',6,'Comment passer une commande ?','Parcourez simplement nos produits, ajoutez des articles à votre panier et passez à la caisse pour finaliser votre commande.'),('fr',7,'Comment annuler ou modifier ma commande ?','Vous pouvez annuler ou modifier votre commande avant son expédition en contactant notre service client.'),('fr',8,'Ai-je besoin d\'un compte pour passer une commande ?','Non, vous pouvez commander en tant qu\'invité. Cependant, créer un compte vous permet de suivre vos commandes et de sauvegarder vos informations.'),('fr',9,'Comment suivre ma commande ?','Une fois votre commande expédiée, vous recevrez un e-mail avec un numéro de suivi. Vous pouvez également suivre votre commande depuis votre compte.'),('fr',10,'Comment retourner un produit ?','Vous pouvez retourner tout produit dans les 30 jours suivant l\'achat. Veuillez vous assurer que le produit est dans son état d\'origine avec toutes les étiquettes.'),('id',1,'Metode pengiriman apa saja yang tersedia?','Kami menawarkan beberapa metode pengiriman termasuk pengiriman standar, ekspres, dan pengiriman di hari yang sama tergantung lokasi Anda.'),('id',2,'Apakah Anda mengirim ke luar negeri?','Ya, kami mengirim ke banyak negara di seluruh dunia. Biaya pengiriman dan waktu pengiriman bervariasi tergantung tujuan.'),('id',3,'Berapa lama paket saya akan sampai?','Pengiriman standar biasanya memakan waktu 5-7 hari kerja, sedangkan pengiriman ekspres memakan waktu 2-3 hari kerja.'),('id',4,'Metode pembayaran apa saja yang diterima?','Kami menerima semua kartu kredit utama, PayPal, transfer bank, dan bayar di tempat.'),('id',5,'Apakah belanja online aman?','Ya, kami menggunakan enkripsi SSL dan pemrosesan pembayaran yang aman untuk melindungi informasi pribadi dan keuangan Anda.'),('id',6,'Bagaimana cara melakukan pemesanan?','Cukup telusuri produk kami, tambahkan item ke keranjang, dan lanjutkan ke checkout untuk menyelesaikan pesanan Anda.'),('id',7,'Bagaimana cara membatalkan atau mengubah pesanan saya?','Anda dapat membatalkan atau mengubah pesanan sebelum dikirim dengan menghubungi tim layanan pelanggan kami.'),('id',8,'Apakah saya perlu akun untuk melakukan pemesanan?','Tidak, Anda bisa memesan sebagai tamu. Namun, membuat akun memungkinkan Anda melacak pesanan dan menyimpan informasi untuk pemesanan berikutnya.'),('id',9,'Bagaimana cara melacak pesanan saya?','Setelah pesanan Anda dikirim, Anda akan menerima email dengan nomor pelacakan. Anda juga dapat melacak pesanan dari akun Anda.'),('id',10,'Bagaimana cara mengembalikan produk?','Anda dapat mengembalikan produk apa pun dalam waktu 30 hari sejak pembelian. Pastikan produk dalam kondisi asli dengan semua label.'),('tr',1,'Hangi kargo yöntemleri mevcut?','Konumunuza bağlı olarak standart, hızlı ve aynı gün teslimat dahil olmak üzere çeşitli kargo yöntemleri sunuyoruz.'),('tr',2,'Uluslararası kargo yapıyor musunuz?','Evet, dünya genelinde birçok ülkeye kargo gönderiyoruz. Kargo ücretleri ve teslimat süreleri varış noktasına göre değişir.'),('tr',3,'Paketimin gelmesi ne kadar sürer?','Standart kargo genellikle 5-7 iş günü, hızlı kargo ise 2-3 iş günü sürer.'),('tr',4,'Hangi ödeme yöntemleri kabul ediliyor?','Tüm büyük kredi kartlarını, PayPal, banka havalesi ve kapıda ödemeyi kabul ediyoruz.'),('tr',5,'Online alışveriş güvenli mi?','Evet, kişisel ve finansal bilgilerinizi korumak için SSL şifreleme ve güvenli ödeme işleme kullanıyoruz.'),('tr',6,'Nasıl sipariş verebilirim?','Ürünlerimize göz atın, sepetinize ekleyin ve siparişinizi tamamlamak için ödeme sayfasına geçin.'),('tr',7,'Siparişimi nasıl iptal edebilir veya değiştirebilirim?','Siparişiniz gönderilmeden önce müşteri hizmetleri ekibimizle iletişime geçerek iptal edebilir veya değiştirebilirsiniz.'),('tr',8,'Sipariş vermek için hesap oluşturmam gerekiyor mu?','Hayır, misafir olarak sipariş verebilirsiniz. Ancak hesap oluşturmak siparişlerinizi takip etmenizi ve bilgilerinizi kaydetmenizi sağlar.'),('tr',9,'Siparişimi nasıl takip ederim?','Siparişiniz gönderildikten sonra takip numarası içeren bir e-posta alacaksınız. Ayrıca hesabınızdan da takip edebilirsiniz.'),('tr',10,'Bir ürünü nasıl iade edebilirim?','Satın alma tarihinden itibaren 30 gün içinde herhangi bir ürünü iade edebilirsiniz. Ürünün orijinal durumunda ve tüm etiketleriyle birlikte olduğundan emin olun.'),('vi',1,'Có những phương thức vận chuyển nào?','Chúng tôi cung cấp nhiều phương thức vận chuyển bao gồm vận chuyển tiêu chuẩn, nhanh và giao hàng trong ngày tùy thuộc vào vị trí của bạn.'),('vi',2,'Bạn có giao hàng quốc tế không?','Có, chúng tôi giao hàng đến nhiều quốc gia trên thế giới. Phí vận chuyển và thời gian giao hàng khác nhau tùy theo điểm đến.'),('vi',3,'Mất bao lâu để nhận được gói hàng?','Vận chuyển tiêu chuẩn thường mất 5-7 ngày làm việc, trong khi vận chuyển nhanh mất 2-3 ngày làm việc.'),('vi',4,'Những phương thức thanh toán nào được chấp nhận?','Chúng tôi chấp nhận tất cả các thẻ tín dụng chính, PayPal, chuyển khoản ngân hàng và thanh toán khi nhận hàng.'),('vi',5,'Mua hàng trực tuyến có an toàn không?','Có, chúng tôi sử dụng mã hóa SSL và xử lý thanh toán an toàn để bảo vệ thông tin cá nhân và tài chính của bạn.'),('vi',6,'Làm thế nào để đặt hàng?','Chỉ cần duyệt qua các sản phẩm, thêm vào giỏ hàng và tiến hành thanh toán để hoàn tất đơn hàng.'),('vi',7,'Làm thế nào để hủy hoặc thay đổi đơn hàng?','Bạn có thể hủy hoặc thay đổi đơn hàng trước khi giao bằng cách liên hệ đội ngũ hỗ trợ khách hàng.'),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Không, bạn có thể đặt hàng với tư cách khách. Tuy nhiên, tạo tài khoản giúp bạn theo dõi đơn hàng và lưu thông tin cho lần sau.'),('vi',9,'Làm thế nào để theo dõi đơn hàng?','Sau khi đơn hàng được gửi đi, bạn sẽ nhận được email có mã theo dõi. Bạn cũng có thể theo dõi đơn hàng từ tài khoản của mình.'),('vi',10,'Làm thế nào để trả lại sản phẩm?','Bạn có thể trả lại bất kỳ sản phẩm nào trong vòng 30 ngày kể từ ngày mua. Vui lòng đảm bảo sản phẩm còn nguyên trạng với đầy đủ nhãn mác.');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','f61d4acb69e542c88f16022309ca0f26',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'ar','f61d4acb69e542c88f16022309ca0f26',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'vi','f61d4acb69e542c88f16022309ca0f26',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'fr','f61d4acb69e542c88f16022309ca0f26',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'id','f61d4acb69e542c88f16022309ca0f26',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'tr','f61d4acb69e542c88f16022309ca0f26',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','61a130783b92f54cd405e1a251ad6d58',1,'Botble\\Menu\\Models\\MenuLocation'),(8,'en_US','e1c51daf17effcf14d76577ffe8f2563',1,'Botble\\Menu\\Models\\Menu'),(9,'ar','61a130783b92f54cd405e1a251ad6d58',2,'Botble\\Menu\\Models\\MenuLocation'),(10,'ar','e1c51daf17effcf14d76577ffe8f2563',2,'Botble\\Menu\\Models\\Menu'),(11,'vi','61a130783b92f54cd405e1a251ad6d58',3,'Botble\\Menu\\Models\\MenuLocation'),(12,'vi','e1c51daf17effcf14d76577ffe8f2563',3,'Botble\\Menu\\Models\\Menu'),(13,'fr','61a130783b92f54cd405e1a251ad6d58',4,'Botble\\Menu\\Models\\MenuLocation'),(14,'fr','e1c51daf17effcf14d76577ffe8f2563',4,'Botble\\Menu\\Models\\Menu'),(15,'id','61a130783b92f54cd405e1a251ad6d58',5,'Botble\\Menu\\Models\\MenuLocation'),(16,'id','e1c51daf17effcf14d76577ffe8f2563',5,'Botble\\Menu\\Models\\Menu'),(17,'tr','61a130783b92f54cd405e1a251ad6d58',6,'Botble\\Menu\\Models\\MenuLocation'),(18,'tr','e1c51daf17effcf14d76577ffe8f2563',6,'Botble\\Menu\\Models\\Menu'),(19,'en_US','a7752883dc1fbd20dd344ee842b5f1cf',7,'Botble\\Menu\\Models\\Menu'),(20,'ar','a7752883dc1fbd20dd344ee842b5f1cf',8,'Botble\\Menu\\Models\\Menu'),(21,'vi','a7752883dc1fbd20dd344ee842b5f1cf',9,'Botble\\Menu\\Models\\Menu'),(22,'fr','a7752883dc1fbd20dd344ee842b5f1cf',10,'Botble\\Menu\\Models\\Menu'),(23,'id','a7752883dc1fbd20dd344ee842b5f1cf',11,'Botble\\Menu\\Models\\Menu'),(24,'tr','a7752883dc1fbd20dd344ee842b5f1cf',12,'Botble\\Menu\\Models\\Menu'),(25,'en_US','cf6fcd37373f9170bb24a4b357d968c8',13,'Botble\\Menu\\Models\\Menu'),(26,'ar','cf6fcd37373f9170bb24a4b357d968c8',14,'Botble\\Menu\\Models\\Menu'),(27,'vi','cf6fcd37373f9170bb24a4b357d968c8',15,'Botble\\Menu\\Models\\Menu'),(28,'fr','cf6fcd37373f9170bb24a4b357d968c8',16,'Botble\\Menu\\Models\\Menu'),(29,'id','cf6fcd37373f9170bb24a4b357d968c8',17,'Botble\\Menu\\Models\\Menu'),(30,'tr','cf6fcd37373f9170bb24a4b357d968c8',18,'Botble\\Menu\\Models\\Menu'),(31,'en_US','ccdbf6dad519e2c3384061ffdf0e08f0',19,'Botble\\Menu\\Models\\Menu'),(32,'ar','ccdbf6dad519e2c3384061ffdf0e08f0',20,'Botble\\Menu\\Models\\Menu'),(33,'vi','ccdbf6dad519e2c3384061ffdf0e08f0',21,'Botble\\Menu\\Models\\Menu'),(34,'fr','ccdbf6dad519e2c3384061ffdf0e08f0',22,'Botble\\Menu\\Models\\Menu'),(35,'id','ccdbf6dad519e2c3384061ffdf0e08f0',23,'Botble\\Menu\\Models\\Menu'),(36,'tr','ccdbf6dad519e2c3384061ffdf0e08f0',24,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Arabic','ar','ar','sa',0,1,1),(3,'Tiếng Việt','vi','vi','vn',0,2,0),(4,'Français','fr','fr','fr',0,3,0),(5,'Bahasa Indonesia','id','id','id',0,4,0),(6,'Türkçe','tr','tr','tr',0,5,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`),
  KEY `media_files_folder_deleted_name` (`folder_id`,`deleted_at`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',11496,'brands/1.png','[]','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL,'public'),(2,0,'2','2',1,'image/png',11496,'brands/2.png','[]','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL,'public'),(3,0,'3','3',1,'image/png',11496,'brands/3.png','[]','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL,'public'),(4,0,'4','4',1,'image/png',11496,'brands/4.png','[]','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL,'public'),(5,0,'5','5',1,'image/png',11496,'brands/5.png','[]','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL,'public'),(6,0,'6','6',1,'image/png',11496,'brands/6.png','[]','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL,'public'),(7,0,'7','7',1,'image/png',11496,'brands/7.png','[]','2026-06-27 16:42:26','2026-06-27 16:42:26',NULL,'public'),(8,0,'p-1','p-1',2,'image/png',11496,'product-categories/p-1.png','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(9,0,'p-2','p-2',2,'image/png',11496,'product-categories/p-2.png','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(10,0,'p-3','p-3',2,'image/png',11496,'product-categories/p-3.png','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(11,0,'p-4','p-4',2,'image/png',11496,'product-categories/p-4.png','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(12,0,'p-5','p-5',2,'image/png',11496,'product-categories/p-5.png','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(13,0,'p-6','p-6',2,'image/png',11496,'product-categories/p-6.png','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(14,0,'p-7','p-7',2,'image/png',11496,'product-categories/p-7.png','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(15,0,'1','1',3,'image/jpeg',9670,'customers/1.jpg','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(16,0,'10','10',3,'image/jpeg',9670,'customers/10.jpg','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(17,0,'2','2',3,'image/jpeg',9670,'customers/2.jpg','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(18,0,'3','3',3,'image/jpeg',9670,'customers/3.jpg','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(19,0,'4','4',3,'image/jpeg',9670,'customers/4.jpg','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(20,0,'5','5',3,'image/jpeg',9670,'customers/5.jpg','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(21,0,'6','6',3,'image/jpeg',9670,'customers/6.jpg','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(22,0,'7','7',3,'image/jpeg',9670,'customers/7.jpg','[]','2026-06-27 16:42:27','2026-06-27 16:42:27',NULL,'public'),(23,0,'8','8',3,'image/jpeg',9670,'customers/8.jpg','[]','2026-06-27 16:42:28','2026-06-27 16:42:28',NULL,'public'),(24,0,'9','9',3,'image/jpeg',9670,'customers/9.jpg','[]','2026-06-27 16:42:28','2026-06-27 16:42:28',NULL,'public'),(25,0,'1-1','1-1',4,'image/jpeg',9670,'products/1-1.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(26,0,'1-2','1-2',4,'image/jpeg',9670,'products/1-2.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(27,0,'1-3','1-3',4,'image/jpeg',9670,'products/1-3.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(28,0,'1','1',4,'image/jpeg',9670,'products/1.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(29,0,'10-1','10-1',4,'image/jpeg',9670,'products/10-1.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(30,0,'10','10',4,'image/jpeg',9670,'products/10.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(31,0,'11-1','11-1',4,'image/jpeg',9670,'products/11-1.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(32,0,'11','11',4,'image/jpeg',9670,'products/11.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(33,0,'12-1','12-1',4,'image/jpeg',9670,'products/12-1.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(34,0,'12','12',4,'image/jpeg',9670,'products/12.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(35,0,'13-1','13-1',4,'image/jpeg',9670,'products/13-1.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(36,0,'13','13',4,'image/jpeg',9670,'products/13.jpg','[]','2026-06-27 16:42:30','2026-06-27 16:42:30',NULL,'public'),(37,0,'14-1','14-1',4,'image/jpeg',9670,'products/14-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(38,0,'14','14',4,'image/jpeg',9670,'products/14.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(39,0,'15-1','15-1',4,'image/jpeg',9670,'products/15-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(40,0,'15','15',4,'image/jpeg',9670,'products/15.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(41,0,'16','16',4,'image/jpeg',9670,'products/16.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(42,0,'17','17',4,'image/jpeg',9670,'products/17.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(43,0,'18-1','18-1',4,'image/jpeg',9670,'products/18-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(44,0,'18-2','18-2',4,'image/jpeg',9670,'products/18-2.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(45,0,'18','18',4,'image/jpeg',9670,'products/18.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(46,0,'19-1','19-1',4,'image/jpeg',9670,'products/19-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(47,0,'19','19',4,'image/jpeg',9670,'products/19.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(48,0,'2-1','2-1',4,'image/jpeg',9670,'products/2-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(49,0,'2-2','2-2',4,'image/jpeg',9670,'products/2-2.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(50,0,'2-3','2-3',4,'image/jpeg',9670,'products/2-3.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(51,0,'2','2',4,'image/jpeg',9670,'products/2.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(52,0,'20-1','20-1',4,'image/jpeg',9670,'products/20-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(53,0,'20','20',4,'image/jpeg',9670,'products/20.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(54,0,'21-1','21-1',4,'image/jpeg',9670,'products/21-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(55,0,'21','21',4,'image/jpeg',9670,'products/21.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(56,0,'22-1','22-1',4,'image/jpeg',9670,'products/22-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(57,0,'22','22',4,'image/jpeg',9670,'products/22.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(58,0,'23-1','23-1',4,'image/jpeg',9670,'products/23-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(59,0,'23','23',4,'image/jpeg',9670,'products/23.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(60,0,'24-1','24-1',4,'image/jpeg',9670,'products/24-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(61,0,'24','24',4,'image/jpeg',9670,'products/24.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(62,0,'25-1','25-1',4,'image/jpeg',9670,'products/25-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(63,0,'25','25',4,'image/jpeg',9670,'products/25.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(64,0,'26-1','26-1',4,'image/jpeg',9670,'products/26-1.jpg','[]','2026-06-27 16:42:31','2026-06-27 16:42:31',NULL,'public'),(65,0,'26-2','26-2',4,'image/jpeg',9670,'products/26-2.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(66,0,'26','26',4,'image/jpeg',9670,'products/26.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(67,0,'27-1','27-1',4,'image/jpeg',9670,'products/27-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(68,0,'27','27',4,'image/jpeg',9670,'products/27.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(69,0,'28-1','28-1',4,'image/jpeg',9670,'products/28-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(70,0,'28','28',4,'image/jpeg',9670,'products/28.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(71,0,'29-1','29-1',4,'image/jpeg',9670,'products/29-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(72,0,'29','29',4,'image/jpeg',9670,'products/29.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(73,0,'3-1','3-1',4,'image/jpeg',9670,'products/3-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(74,0,'3-2','3-2',4,'image/jpeg',9670,'products/3-2.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(75,0,'3-3','3-3',4,'image/jpeg',9670,'products/3-3.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(76,0,'3','3',4,'image/jpeg',9670,'products/3.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(77,0,'30-1','30-1',4,'image/jpeg',9670,'products/30-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(78,0,'30','30',4,'image/jpeg',9670,'products/30.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(79,0,'31-1','31-1',4,'image/jpeg',9670,'products/31-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(80,0,'31','31',4,'image/jpeg',9670,'products/31.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(81,0,'4-1','4-1',4,'image/jpeg',9670,'products/4-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(82,0,'4-2','4-2',4,'image/jpeg',9670,'products/4-2.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(83,0,'4-3','4-3',4,'image/jpeg',9670,'products/4-3.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(84,0,'4','4',4,'image/jpeg',9670,'products/4.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(85,0,'5-1','5-1',4,'image/jpeg',9670,'products/5-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(86,0,'5-2','5-2',4,'image/jpeg',9670,'products/5-2.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(87,0,'5-3','5-3',4,'image/jpeg',9670,'products/5-3.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(88,0,'5','5',4,'image/jpeg',9670,'products/5.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(89,0,'6-1','6-1',4,'image/jpeg',9670,'products/6-1.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(90,0,'6','6',4,'image/jpeg',9670,'products/6.jpg','[]','2026-06-27 16:42:32','2026-06-27 16:42:32',NULL,'public'),(91,0,'7-1','7-1',4,'image/jpeg',9670,'products/7-1.jpg','[]','2026-06-27 16:42:33','2026-06-27 16:42:33',NULL,'public'),(92,0,'7','7',4,'image/jpeg',9670,'products/7.jpg','[]','2026-06-27 16:42:33','2026-06-27 16:42:33',NULL,'public'),(93,0,'8-1','8-1',4,'image/jpeg',9670,'products/8-1.jpg','[]','2026-06-27 16:42:33','2026-06-27 16:42:33',NULL,'public'),(94,0,'8','8',4,'image/jpeg',9670,'products/8.jpg','[]','2026-06-27 16:42:33','2026-06-27 16:42:33',NULL,'public'),(95,0,'9-1','9-1',4,'image/jpeg',9670,'products/9-1.jpg','[]','2026-06-27 16:42:33','2026-06-27 16:42:33',NULL,'public'),(96,0,'9','9',4,'image/jpeg',9670,'products/9.jpg','[]','2026-06-27 16:42:33','2026-06-27 16:42:33',NULL,'public'),(97,0,'1','1',5,'image/jpeg',9670,'news/1.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(98,0,'10','10',5,'image/jpeg',9670,'news/10.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(99,0,'11','11',5,'image/jpeg',9670,'news/11.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(100,0,'2','2',5,'image/jpeg',9670,'news/2.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(101,0,'3','3',5,'image/jpeg',9670,'news/3.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(102,0,'4','4',5,'image/jpeg',9670,'news/4.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(103,0,'5','5',5,'image/jpeg',9670,'news/5.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(104,0,'6','6',5,'image/jpeg',9670,'news/6.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(105,0,'7','7',5,'image/jpeg',9670,'news/7.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(106,0,'8','8',5,'image/jpeg',9670,'news/8.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(107,0,'9','9',5,'image/jpeg',9670,'news/9.jpg','[]','2026-06-27 16:42:37','2026-06-27 16:42:37',NULL,'public'),(108,0,'1','1',6,'image/jpeg',9670,'testimonials/1.jpg','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(109,0,'2','2',6,'image/jpeg',9670,'testimonials/2.jpg','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(110,0,'3','3',6,'image/jpeg',9670,'testimonials/3.jpg','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(111,0,'4','4',6,'image/jpeg',9670,'testimonials/4.jpg','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(112,0,'1','1',7,'image/jpeg',11865,'sliders/1.jpg','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(113,0,'2','2',7,'image/jpeg',11865,'sliders/2.jpg','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(114,0,'3','3',7,'image/jpeg',11865,'sliders/3.jpg','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(115,0,'cod','cod',8,'image/png',12121,'payments/cod.png','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(116,0,'bank-transfer','bank-transfer',8,'image/png',29089,'payments/bank-transfer.png','[]','2026-06-27 16:42:38','2026-06-27 16:42:38',NULL,'public'),(117,0,'stripe','stripe',8,'image/webp',7516,'payments/stripe.webp','[]','2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,'public'),(118,0,'paypal','paypal',8,'image/png',3001,'payments/paypal.png','[]','2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,'public'),(119,0,'mollie','mollie',8,'image/png',8968,'payments/mollie.png','[]','2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,'public'),(120,0,'paystack','paystack',8,'image/png',31015,'payments/paystack.png','[]','2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,'public'),(121,0,'razorpay','razorpay',8,'image/png',8489,'payments/razorpay.png','[]','2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,'public'),(122,0,'sslcommerz','sslcommerz',8,'image/png',3482,'payments/sslcommerz.png','[]','2026-06-27 16:42:39','2026-06-27 16:42:39',NULL,'public'),(123,0,'american-express','american-express',9,'image/png',2377,'general/american-express.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(124,0,'b-1','b-1',9,'image/jpeg',6086,'general/b-1.jpg','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(125,0,'b-2','b-2',9,'image/jpeg',6086,'general/b-2.jpg','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(126,0,'b-3','b-3',9,'image/jpeg',6086,'general/b-3.jpg','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(127,0,'banner-footer','banner-footer',9,'image/png',92460,'general/banner-footer.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(128,0,'discover','discover',9,'image/png',1709,'general/discover.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(129,0,'favicon','favicon',9,'image/png',1034,'general/favicon.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(130,0,'furniture-banner3','furniture-banner3',9,'image/jpeg',26362,'general/furniture-banner3.jpg','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(131,0,'insta-1','insta-1',9,'image/jpeg',1556,'general/insta-1.jpg','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(132,0,'logo-light','logo-light',9,'image/png',3047,'general/logo-light.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(133,0,'logo','logo',9,'image/png',3370,'general/logo.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(134,0,'master-card','master-card',9,'image/png',2539,'general/master-card.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(135,0,'newsletter','newsletter',9,'image/jpeg',4338,'general/newsletter.jpg','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(136,0,'paypal','paypal',9,'image/png',1925,'general/paypal.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(137,0,'visa','visa',9,'image/png',2033,'general/visa.png','[]','2026-06-27 16:42:41','2026-06-27 16:42:41',NULL,'public'),(138,0,'1','1',10,'image/jpeg',13645,'promotion/1.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(139,0,'10','10',10,'image/jpeg',19195,'promotion/10.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(140,0,'2','2',10,'image/jpeg',13930,'promotion/2.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(141,0,'3','3',10,'image/jpeg',16561,'promotion/3.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(142,0,'4','4',10,'image/jpeg',17689,'promotion/4.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(143,0,'5','5',10,'image/jpeg',17665,'promotion/5.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(144,0,'6','6',10,'image/jpeg',8445,'promotion/6.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(145,0,'7','7',10,'image/jpeg',8675,'promotion/7.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(146,0,'8','8',10,'image/jpeg',9228,'promotion/8.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public'),(147,0,'9','9',10,'image/jpeg',11178,'promotion/9.jpg','[]','2026-06-27 16:42:42','2026-06-27 16:42:42',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folder_permissions`
--

DROP TABLE IF EXISTS `media_folder_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folder_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `permission` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'view',
  `granted_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_folder_permissions_folder_id_user_id_unique` (`folder_id`,`user_id`),
  KEY `media_folder_permissions_folder_id_index` (`folder_id`),
  KEY `media_folder_permissions_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folder_permissions`
--

LOCK TABLES `media_folder_permissions` WRITE;
/*!40000 ALTER TABLE `media_folder_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_folder_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2026-06-27 16:42:26','2026-06-27 16:42:26',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL),(3,0,'customers',NULL,'customers',0,'2026-06-27 16:42:27','2026-06-27 16:42:27',NULL),(4,0,'products',NULL,'products',0,'2026-06-27 16:42:30','2026-06-27 16:42:30',NULL),(5,0,'news',NULL,'news',0,'2026-06-27 16:42:37','2026-06-27 16:42:37',NULL),(6,0,'testimonials',NULL,'testimonials',0,'2026-06-27 16:42:38','2026-06-27 16:42:38',NULL),(7,0,'sliders',NULL,'sliders',0,'2026-06-27 16:42:38','2026-06-27 16:42:38',NULL),(8,0,'payments',NULL,'payments',0,'2026-06-27 16:42:38','2026-06-27 16:42:38',NULL),(9,0,'general',NULL,'general',0,'2026-06-27 16:42:41','2026-06-27 16:42:41',NULL),(10,0,'promotion',NULL,'promotion',0,'2026-06-27 16:42:42','2026-06-27 16:42:42',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2026-06-27 16:42:40','2026-06-27 16:42:40'),(2,2,'main-menu','2026-06-27 16:42:40','2026-06-27 16:42:40'),(3,3,'main-menu','2026-06-27 16:42:40','2026-06-27 16:42:40'),(4,4,'main-menu','2026-06-27 16:42:40','2026-06-27 16:42:40'),(5,5,'main-menu','2026-06-27 16:42:40','2026-06-27 16:42:40'),(6,6,'main-menu','2026-06-27 16:42:41','2026-06-27 16:42:41');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(2,1,1,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(3,1,1,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Homepage 2',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(4,1,1,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Homepage 3',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(5,1,1,12,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Homepage 4',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(6,1,1,13,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Homepage 5',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(7,1,1,14,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Homepage 6',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(8,1,0,NULL,NULL,'/products',NULL,1,'Products',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(9,1,0,NULL,NULL,'#',NULL,2,'Shop',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(10,1,9,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Product Category',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(11,1,9,1,'Botble\\Ecommerce\\Models\\Brand',NULL,NULL,1,'Brand',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(12,1,9,1,'Botble\\Ecommerce\\Models\\ProductTag',NULL,NULL,2,'Product Tag',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(13,1,9,NULL,NULL,'products/beat-headphone',NULL,3,'Product Single',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(14,1,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Blog',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(15,1,14,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(16,1,14,1,'Botble\\Blog\\Models\\Category',NULL,NULL,1,'Blog Category',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(17,1,14,1,'Botble\\Blog\\Models\\Tag',NULL,NULL,2,'Blog Tag',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(18,1,14,NULL,NULL,'blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,3,'Blog Single',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(19,1,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'FAQ',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(20,1,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Contact',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(21,2,0,NULL,NULL,'/',NULL,0,'الرئيسية',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(22,2,21,NULL,NULL,'/',NULL,0,'الرئيسية',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(23,2,21,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'الرئيسية 2',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(24,2,21,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'الرئيسية 3',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(25,2,21,12,'Botble\\Page\\Models\\Page',NULL,NULL,3,'الرئيسية 4',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(26,2,21,13,'Botble\\Page\\Models\\Page',NULL,NULL,4,'الرئيسية 5',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(27,2,21,14,'Botble\\Page\\Models\\Page',NULL,NULL,5,'الرئيسية 6',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(28,2,0,NULL,NULL,'/products',NULL,1,'المنتجات',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(29,2,0,NULL,NULL,'#',NULL,2,'المتجر',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(30,2,29,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'فئة المنتج',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(31,2,29,1,'Botble\\Ecommerce\\Models\\Brand',NULL,NULL,1,'العلامة التجارية',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(32,2,29,1,'Botble\\Ecommerce\\Models\\ProductTag',NULL,NULL,2,'وسم المنتج',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(33,2,29,NULL,NULL,'products/beat-headphone',NULL,3,'منتج فردي',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(34,2,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,3,'المدونة',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(35,2,34,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'المدونة مع شريط جانبي',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(36,2,34,1,'Botble\\Blog\\Models\\Category',NULL,NULL,1,'فئة المدونة',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(37,2,34,1,'Botble\\Blog\\Models\\Tag',NULL,NULL,2,'وسم المدونة',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(38,2,34,NULL,NULL,'blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,3,'مقال فردي',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(39,2,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'الأسئلة الشائعة',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(40,2,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,5,'اتصل بنا',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(41,3,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(42,3,41,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(43,3,41,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Trang chủ 2',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(44,3,41,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Trang chủ 3',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(45,3,41,12,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Trang chủ 4',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(46,3,41,13,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Trang chủ 5',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(47,3,41,14,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Trang chủ 6',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(48,3,0,NULL,NULL,'/products',NULL,1,'Sản phẩm',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(49,3,0,NULL,NULL,'#',NULL,2,'Cửa hàng',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(50,3,49,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(51,3,49,1,'Botble\\Ecommerce\\Models\\Brand',NULL,NULL,1,'Thương hiệu',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(52,3,49,1,'Botble\\Ecommerce\\Models\\ProductTag',NULL,NULL,2,'Thẻ sản phẩm',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(53,3,49,NULL,NULL,'products/beat-headphone',NULL,3,'Sản phẩm đơn',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(54,3,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Tin tức',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(55,3,54,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Tin tức thanh bên',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(56,3,54,1,'Botble\\Blog\\Models\\Category',NULL,NULL,1,'Danh mục tin tức',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(57,3,54,1,'Botble\\Blog\\Models\\Tag',NULL,NULL,2,'Thẻ tin tức',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(58,3,54,NULL,NULL,'blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,3,'Bài viết đơn',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(59,3,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Câu hỏi thường gặp',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(60,3,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Liên hệ',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(61,4,0,NULL,NULL,'/',NULL,0,'Accueil',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(62,4,61,NULL,NULL,'/',NULL,0,'Accueil',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(63,4,61,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Accueil 2',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(64,4,61,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Accueil 3',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(65,4,61,12,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Accueil 4',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(66,4,61,13,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Accueil 5',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(67,4,61,14,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Accueil 6',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(68,4,0,NULL,NULL,'/products',NULL,1,'Produits',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(69,4,0,NULL,NULL,'#',NULL,2,'Boutique',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(70,4,69,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Catégorie de produits',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(71,4,69,1,'Botble\\Ecommerce\\Models\\Brand',NULL,NULL,1,'Marque',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(72,4,69,1,'Botble\\Ecommerce\\Models\\ProductTag',NULL,NULL,2,'Tag produit',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(73,4,69,NULL,NULL,'products/beat-headphone',NULL,3,'Produit individuel',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(74,4,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Blog',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(75,4,74,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog barre latérale',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(76,4,74,1,'Botble\\Blog\\Models\\Category',NULL,NULL,1,'Catégorie du blog',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(77,4,74,1,'Botble\\Blog\\Models\\Tag',NULL,NULL,2,'Tag du blog',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(78,4,74,NULL,NULL,'blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,3,'Article du blog',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(79,4,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'FAQ',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(80,4,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Contact',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(81,5,0,NULL,NULL,'/',NULL,0,'Beranda',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(82,5,81,NULL,NULL,'/',NULL,0,'Beranda',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(83,5,81,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Beranda 2',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(84,5,81,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Beranda 3',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(85,5,81,12,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Beranda 4',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(86,5,81,13,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Beranda 5',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(87,5,81,14,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Beranda 6',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(88,5,0,NULL,NULL,'/products',NULL,1,'Produk',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(89,5,0,NULL,NULL,'#',NULL,2,'Toko',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(90,5,89,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Kategori Produk',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(91,5,89,1,'Botble\\Ecommerce\\Models\\Brand',NULL,NULL,1,'Merek',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(92,5,89,1,'Botble\\Ecommerce\\Models\\ProductTag',NULL,NULL,2,'Tag Produk',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(93,5,89,NULL,NULL,'products/beat-headphone',NULL,3,'Produk Tunggal',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(94,5,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Blog',NULL,'_self',1,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(95,5,94,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Sidebar',NULL,'_self',0,'2026-06-27 16:42:40','2026-06-27 16:42:40'),(96,5,94,1,'Botble\\Blog\\Models\\Category',NULL,NULL,1,'Kategori Blog',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(97,5,94,1,'Botble\\Blog\\Models\\Tag',NULL,NULL,2,'Tag Blog',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(98,5,94,NULL,NULL,'blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,3,'Artikel Blog',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(99,5,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'FAQ',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(100,5,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Kontak',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(101,6,0,NULL,NULL,'/',NULL,0,'Ana Sayfa',NULL,'_self',1,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(102,6,101,NULL,NULL,'/',NULL,0,'Ana Sayfa',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(103,6,101,10,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Ana Sayfa 2',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(104,6,101,11,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Ana Sayfa 3',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(105,6,101,12,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Ana Sayfa 4',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(106,6,101,13,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Ana Sayfa 5',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(107,6,101,14,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Ana Sayfa 6',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(108,6,0,NULL,NULL,'/products',NULL,1,'Ürünler',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(109,6,0,NULL,NULL,'#',NULL,2,'Mağaza',NULL,'_self',1,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(110,6,109,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Ürün Kategorisi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(111,6,109,1,'Botble\\Ecommerce\\Models\\Brand',NULL,NULL,1,'Marka',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(112,6,109,1,'Botble\\Ecommerce\\Models\\ProductTag',NULL,NULL,2,'Ürün Etiketi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(113,6,109,NULL,NULL,'products/beat-headphone',NULL,3,'Tekil Ürün',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(114,6,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Blog',NULL,'_self',1,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(115,6,114,3,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Kenar Çubuğu',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(116,6,114,1,'Botble\\Blog\\Models\\Category',NULL,NULL,1,'Blog Kategorisi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(117,6,114,1,'Botble\\Blog\\Models\\Tag',NULL,NULL,2,'Blog Etiketi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(118,6,114,NULL,NULL,'blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,3,'Blog Yazısı',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(119,6,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'SSS',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(120,6,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,5,'İletişim',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(121,7,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(122,7,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,1,'FAQ',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(123,7,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Location',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(124,7,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Affiliates',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(125,7,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Contact',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(126,8,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'من نحن',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(127,8,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,1,'الأسئلة الشائعة',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(128,8,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,2,'الموقع',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(129,8,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'الشركاء',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(130,8,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,4,'اتصل بنا',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(131,9,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Giới thiệu',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(132,9,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Câu hỏi thường gặp',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(133,9,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Vị trí',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(134,9,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Đối tác',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(135,9,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Liên hệ',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(136,10,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'À propos',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(137,10,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,1,'FAQ',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(138,10,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Emplacement',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(139,10,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Affiliés',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(140,10,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Contact',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(141,11,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Tentang Kami',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(142,11,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,1,'FAQ',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(143,11,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Lokasi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(144,11,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Afiliasi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(145,11,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Kontak',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(146,12,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Hakkımızda',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(147,12,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,1,'SSS',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(148,12,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Konum',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(149,12,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,3,'İş Ortakları',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(150,12,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,4,'İletişim',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(151,13,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Television',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(152,13,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Mobile',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(153,13,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'Headphone',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(154,13,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Watches',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(155,13,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'Game',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(156,14,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'تلفزيون',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(157,14,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'هاتف محمول',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(158,14,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'سماعات',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(159,14,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'ساعات',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(160,14,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'ألعاب',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(161,15,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Tivi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(162,15,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Điện thoại',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(163,15,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'Tai nghe',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(164,15,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Đồng hồ',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(165,15,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'Trò chơi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(166,16,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Télévision',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(167,16,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Mobile',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(168,16,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'Casque',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(169,16,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Montres',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(170,16,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'Jeux',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(171,17,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Televisi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(172,17,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Ponsel',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(173,17,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'Headphone',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(174,17,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Jam Tangan',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(175,17,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'Game',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(176,18,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Televizyon',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(177,18,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Cep Telefonu',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(178,18,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'Kulaklık',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(179,18,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Saat',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(180,18,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'Oyun',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(181,19,0,NULL,NULL,'/customer/overview',NULL,0,'My profile',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(182,19,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(183,19,0,NULL,NULL,'customer/orders',NULL,2,'Orders',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(184,19,0,NULL,NULL,'/orders/tracking',NULL,3,'Order tracking',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(185,20,0,NULL,NULL,'/customer/overview',NULL,0,'ملفي الشخصي',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(186,20,0,NULL,NULL,'/wishlist',NULL,1,'قائمة الرغبات',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(187,20,0,NULL,NULL,'customer/orders',NULL,2,'الطلبات',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(188,20,0,NULL,NULL,'/orders/tracking',NULL,3,'تتبع الطلب',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(189,21,0,NULL,NULL,'/customer/overview',NULL,0,'Hồ sơ của tôi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(190,21,0,NULL,NULL,'/wishlist',NULL,1,'Danh sách yêu thích',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(191,21,0,NULL,NULL,'customer/orders',NULL,2,'Đơn hàng',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(192,21,0,NULL,NULL,'/orders/tracking',NULL,3,'Theo dõi đơn hàng',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(193,22,0,NULL,NULL,'/customer/overview',NULL,0,'Mon profil',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(194,22,0,NULL,NULL,'/wishlist',NULL,1,'Liste de souhaits',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(195,22,0,NULL,NULL,'customer/orders',NULL,2,'Commandes',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(196,22,0,NULL,NULL,'/orders/tracking',NULL,3,'Suivi de commande',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(197,23,0,NULL,NULL,'/customer/overview',NULL,0,'Profil Saya',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(198,23,0,NULL,NULL,'/wishlist',NULL,1,'Daftar Keinginan',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(199,23,0,NULL,NULL,'customer/orders',NULL,2,'Pesanan',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(200,23,0,NULL,NULL,'/orders/tracking',NULL,3,'Lacak Pesanan',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(201,24,0,NULL,NULL,'/customer/overview',NULL,0,'Profilim',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(202,24,0,NULL,NULL,'/wishlist',NULL,1,'İstek Listesi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(203,24,0,NULL,NULL,'customer/orders',NULL,2,'Siparişler',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41'),(204,24,0,NULL,NULL,'/orders/tracking',NULL,3,'Sipariş Takibi',NULL,'_self',0,'2026-06-27 16:42:41','2026-06-27 16:42:41');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2026-06-27 16:42:40','2026-06-27 16:42:40'),(2,'القائمة الرئيسية','main-menu-ar','published','2026-06-27 16:42:40','2026-06-27 16:42:40'),(3,'Menu chính','main-menu-vi','published','2026-06-27 16:42:40','2026-06-27 16:42:40'),(4,'Menu principal','main-menu-fr','published','2026-06-27 16:42:40','2026-06-27 16:42:40'),(5,'Menu Utama','main-menu-id','published','2026-06-27 16:42:40','2026-06-27 16:42:40'),(6,'Ana Menü','main-menu-tr','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(7,'Useful Links','useful-links','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(8,'روابط مفيدة','useful-links-ar','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(9,'Liên kết hữu ích','useful-links-vi','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(10,'Liens utiles','useful-links-fr','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(11,'Tautan Berguna','useful-links-id','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(12,'Faydalı Bağlantılar','useful-links-tr','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(13,'Categories','categories','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(14,'الفئات','categories-ar','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(15,'Danh mục','categories-vi','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(16,'Catégories','categories-fr','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(17,'Kategori','categories-id','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(18,'Kategoriler','categories-tr','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(19,'My Account','my-account','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(20,'حسابي','my-account-ar','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(21,'Tài khoản','my-account-vi','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(22,'Mon compte','my-account-fr','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(23,'Akun Saya','my-account-id','published','2026-06-27 16:42:41','2026-06-27 16:42:41'),(24,'Hesabım','my-account-tr','published','2026-06-27 16:42:41','2026-06-27 16:42:41');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`),
  KEY `meta_boxes_ref_idx` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_ids','[[1,3,5,6,7]]',1,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(2,'faq_ids','[[1,3,4,6,10]]',2,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(3,'faq_ids','[[1,2,3,6,8]]',3,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(4,'faq_ids','[[2,3,4,5,9]]',4,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(5,'faq_ids','[[2,4,7,8,9]]',5,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(6,'faq_ids','[[3,5,7,9,10]]',6,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(7,'faq_ids','[[2,3,4,6,10]]',7,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(8,'faq_ids','[[3,5,6,7,10]]',8,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(9,'faq_ids','[[3,4,7,8,9]]',9,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(10,'faq_ids','[[1,2,3,6,9]]',10,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(11,'faq_ids','[[2,3,7,8,10]]',11,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(12,'faq_ids','[[2,5,7,8,10]]',12,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(13,'faq_ids','[[1,3,5,6,9]]',13,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:33','2026-06-27 16:42:33'),(14,'faq_ids','[[2,3,5,8,10]]',14,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(15,'faq_ids','[[2,4,5,8,9]]',15,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(16,'faq_ids','[[1,6,8,9,10]]',16,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(17,'faq_ids','[[3,4,7,8,9]]',17,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(18,'faq_ids','[[1,5,7,8,9]]',18,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(19,'faq_ids','[[1,3,6,8,10]]',19,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(20,'faq_ids','[[1,2,8,9,10]]',20,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(21,'faq_ids','[[2,3,7,8,10]]',21,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(22,'faq_ids','[[1,3,5,9,10]]',22,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(23,'faq_ids','[[1,2,4,7,9]]',23,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(24,'faq_ids','[[1,4,5,6,8]]',24,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(25,'faq_ids','[[2,3,4,8,9]]',25,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(26,'faq_ids','[[2,5,6,7,8]]',26,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(27,'faq_ids','[[1,2,5,9,10]]',27,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(28,'faq_ids','[[1,2,4,6,9]]',28,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(29,'faq_ids','[[1,2,5,7,10]]',29,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(30,'faq_ids','[[1,2,3,8,9]]',30,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(31,'faq_ids','[[1,2,3,7,10]]',31,'Botble\\Ecommerce\\Models\\Product','2026-06-27 16:42:34','2026-06-27 16:42:34'),(32,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(33,'sub_title','[\"New Tranding\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(34,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(35,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(36,'button_text','[\"\\u062a\\u0633\\u0648\\u0642\\u064a \\u0627\\u0644\\u0622\\u0646\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(37,'sub_title','[\"\\u0635\\u064a\\u062d\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(38,'button_text','[\"\\u0627\\u0643\\u062a\\u0634\\u0641 \\u0627\\u0644\\u0622\\u0646\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(39,'button_text','[\"\\u062a\\u0633\\u0648\\u0642 \\u0627\\u0644\\u0622\\u0646\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(40,'button_text','[\"Mua ngay\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(41,'sub_title','[\"Xu h\\u01b0\\u1edbng m\\u1edbi\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(42,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(43,'button_text','[\"Mua ngay\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(44,'button_text','[\"Acheter\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(45,'sub_title','[\"Nouvelle tendance\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(46,'button_text','[\"D\\u00e9couvrir\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(47,'button_text','[\"Acheter\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(48,'button_text','[\"Belanja sekarang\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(49,'sub_title','[\"Tren Baru\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(50,'button_text','[\"Temukan sekarang\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(51,'button_text','[\"Belanja sekarang\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(52,'button_text','[\"Al\\u0131\\u015fveri\\u015fe ba\\u015fla\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(53,'sub_title','[\"Yeni Trend\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(54,'button_text','[\"Ke\\u015ffet\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38'),(55,'button_text','[\"Al\\u0131\\u015fveri\\u015fe ba\\u015fla\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2026-06-27 16:42:38','2026-06-27 16:42:38');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(36,'2024_07_12_100000_change_random_hash_for_media',1),(37,'2024_09_30_024515_create_sessions_table',1),(38,'2024_12_01_000000_add_indexes_to_pages_translations_table',1),(39,'2024_12_01_000000_add_key_prefix_index_to_slugs_table',1),(40,'2024_12_19_000001_create_device_tokens_table',1),(41,'2024_12_19_000002_create_push_notifications_table',1),(42,'2024_12_19_000003_create_push_notification_recipients_table',1),(43,'2024_12_30_000001_create_user_settings_table',1),(44,'2025_07_06_030754_add_phone_to_users_table',1),(45,'2025_07_31_add_performance_indexes_to_slugs_table',1),(46,'2025_11_10_000000_cleanup_duplicate_widgets',1),(47,'2026_03_07_153100_add_index_to_meta_boxes_table',1),(48,'2026_03_23_000000_create_media_folder_permissions_table',1),(49,'2026_03_27_085220_add_folder_deleted_name_index_to_media_files_table',1),(50,'2026_04_20_000000_add_sessions_invalidated_at_to_users_table',1),(51,'2020_11_18_150916_ads_create_ads_table',2),(52,'2021_12_02_035301_add_ads_translations_table',2),(53,'2023_04_17_062645_add_open_in_new_tab',2),(54,'2023_11_07_023805_add_tablet_mobile_image',2),(55,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(56,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(57,'2024_04_27_100730_improve_analytics_setting',3),(58,'2015_06_29_025744_create_audit_history',4),(59,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(60,'2025_05_05_000001_add_user_type_to_audit_histories_table',4),(61,'2025_11_07_000001_add_actor_type_to_audit_histories_table',4),(62,'2015_06_18_033822_create_blog_table',5),(63,'2021_02_16_092633_remove_default_value_for_author_type',5),(64,'2021_12_03_030600_create_blog_translations',5),(65,'2022_04_19_113923_add_index_to_table_posts',5),(66,'2023_08_29_074620_make_column_author_id_nullable',5),(67,'2024_07_30_091615_fix_order_column_in_categories_table',5),(68,'2024_12_01_000000_add_indexes_to_blog_translations_tables',5),(69,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(70,'2026_05_12_000000_change_description_column_type_in_blog_tables',5),(71,'2016_06_17_091537_create_contacts_table',6),(72,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(73,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(74,'2024_03_25_000001_update_captcha_settings_for_contact',6),(75,'2024_04_19_063914_create_custom_fields_table',6),(76,'2024_12_01_000000_add_indexes_to_contact_translations_tables',6),(77,'2020_03_05_041139_create_ecommerce_tables',7),(78,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(79,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(80,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(81,'2021_02_18_073505_update_table_ec_reviews',7),(82,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(83,'2021_03_10_025153_change_column_tax_amount',7),(84,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(85,'2021_04_28_074008_ecommerce_create_product_label_table',7),(86,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(87,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(88,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(89,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(90,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(91,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(92,'2021_11_23_071403_correct_languages_for_product_variations',7),(93,'2021_11_28_031808_add_product_tags_translations',7),(94,'2021_12_01_031123_add_featured_image_to_ec_products',7),(95,'2022_01_01_033107_update_table_ec_shipments',7),(96,'2022_02_16_042457_improve_product_attribute_sets',7),(97,'2022_03_22_075758_correct_product_name',7),(98,'2022_04_19_113334_add_index_to_ec_products',7),(99,'2022_04_28_144405_remove_unused_table',7),(100,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(101,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(102,'2022_06_16_095633_add_index_to_some_tables',7),(103,'2022_06_30_035148_create_order_referrals_table',7),(104,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(105,'2022_08_14_032836_create_ec_order_returns_table',7),(106,'2022_08_14_033554_create_ec_order_return_items_table',7),(107,'2022_08_15_040324_add_billing_address',7),(108,'2022_08_30_091114_support_digital_products_table',7),(109,'2022_09_13_095744_create_options_table',7),(110,'2022_09_13_104347_create_option_value_table',7),(111,'2022_10_05_163518_alter_table_ec_order_product',7),(112,'2022_10_12_041517_create_invoices_table',7),(113,'2022_10_12_142226_update_orders_table',7),(114,'2022_10_13_024916_update_table_order_returns',7),(115,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(116,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(117,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(118,'2022_11_19_041643_add_ec_tax_product_table',7),(119,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(120,'2022_12_17_041532_fix_address_in_order_invoice',7),(121,'2022_12_26_070329_create_ec_product_views_table',7),(122,'2023_01_04_033051_fix_product_categories',7),(123,'2023_01_09_050400_add_ec_global_options_translations_table',7),(124,'2023_01_10_093754_add_missing_option_value_id',7),(125,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(126,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(127,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(128,'2023_02_27_095752_remove_duplicate_reviews',7),(129,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(130,'2023_04_21_082427_create_ec_product_categorizables_table',7),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(132,'2023_05_17_025812_fix_invoice_issue',7),(133,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(134,'2023_05_27_144611_fix_exchange_rate_setting',7),(135,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(136,'2023_06_30_042512_create_ec_order_tax_information_table',7),(137,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(138,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(139,'2023_08_15_064505_create_ec_tax_rules_table',7),(140,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(141,'2023_08_22_094114_drop_unique_for_barcode',7),(142,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(143,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(144,'2023_09_19_024955_create_discount_product_categories_table',7),(145,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(146,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(147,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(148,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(149,'2023_12_25_040604_ec_create_review_replies_table',7),(150,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(151,'2024_01_16_070706_fix_translation_tables',7),(152,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(153,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(154,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(155,'2024_03_29_042242_migrate_old_captcha_settings',7),(156,'2024_03_29_093946_create_ec_order_return_histories_table',7),(157,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(158,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(159,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(160,'2024_05_07_073153_improve_table_wishlist',7),(161,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(162,'2024_05_15_021503_fix_invoice_path',7),(163,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(164,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(165,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(166,'2024_07_14_071826_make_customer_email_nullable',7),(167,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(168,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(169,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(170,'2024_08_19_132849_create_specification_tables',7),(171,'2024_09_07_060744_add_author_column_to_specification_tables',7),(172,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(173,'2024_09_25_073928_remove_wrong_product_slugs',7),(174,'2024_12_01_000000_add_indexes_to_ecommerce_translations_tables',7),(175,'2025_01_10_000000_fix_order_invoice_rounding_issues',7),(176,'2025_01_15_050230_migrate_old_theme_options',7),(177,'2025_01_15_optimize_products_export_index',7),(178,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(179,'2025_01_24_044641_migrate_old_country_data',7),(180,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(181,'2025_02_13_021247_add_tax_translations',7),(182,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(183,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',7),(184,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',7),(185,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',7),(186,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',7),(187,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',7),(188,'2025_06_17_091813_increase_note_in_shipments_table',7),(189,'2025_06_24_000001_create_ec_product_license_codes_table',7),(190,'2025_06_24_080427_add_license_code_type_to_products_table',7),(191,'2025_07_06_062402_create_ec_customer_deletion_requests_table',7),(192,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',7),(193,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',7),(194,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',7),(195,'2025_07_15_090809_create_ec_abandoned_carts_table',7),(196,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',7),(197,'2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table',7),(198,'2025_08_01_161205_optimize_product_variation_query_indexes',7),(199,'2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables',7),(200,'2025_09_05_025247_create_ec_product_specification_attribute_translations_table',7),(201,'2025_09_08_025516_add_variations_count_to_ec_products_table',7),(202,'2025_09_08_080248_add_slug_column_to_ec_product_categories_table',7),(203,'2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table',7),(204,'2025_09_08_080443_populate_slug_column_for_product_categories',7),(205,'2025_09_08_081216_add_slug_column_to_ec_products_table',7),(206,'2025_09_08_081237_add_slug_column_to_ec_products_translations_table',7),(207,'2025_09_08_081321_populate_slug_column_for_products',7),(208,'2025_09_10_073321_add_performance_indexes_to_ecommerce_tables',7),(209,'2025_09_18_093922_fix_tax_rounding_in_order_products_and_invoices',7),(210,'2025_09_21_030756_add_reviews_cache_to_ec_products_table',7),(211,'2025_09_30_090432_add_performance_indexes_to_ec_product_categories_table',7),(212,'2025_10_10_090331_add_number_format_style_to_ec_currencies_table',7),(213,'2025_10_10_092235_add_space_between_price_and_currency_to_ec_currencies_table',7),(214,'2025_10_11_074318_add_price_includes_tax_to_ec_products_table',7),(215,'2025_10_13_043527_generate_slugs_for_product_collections',7),(216,'2025_10_22_020518_add_verification_code_to_ec_customer_deletion_requests_table',7),(217,'2025_10_22_090000_remove_duplicate_order_addresses',7),(218,'2025_10_28_133220_add_unique_order_id_to_shipments_table',7),(219,'2025_10_28_134738_fix_order_payment_shipment_discount_data_issues',7),(220,'2025_11_05_032148_add_performance_indexes_to_ecommerce_tables',7),(221,'2025_11_10_100000_create_ec_order_metadata_table',7),(222,'2025_11_12_100000_improve_ec_customer_recently_viewed_products_table',7),(223,'2025_11_18_214150_add_covering_indexes_to_product_relation_tables',7),(224,'2025_12_02_045049_add_index_to_product_labels_table',7),(225,'2025_12_12_150000_add_sequence_columns_to_abandoned_carts',7),(226,'2025_12_16_160000_add_is_new_until_to_ec_products_table',7),(227,'2025_12_28_000628_add_images_column_to_ec_order_returns_table',7),(228,'2026_01_05_162601_update_missing_slugs_for_ec_product_categories_table',7),(229,'2026_01_09_024811_add_currency_code_to_ec_products_table',7),(230,'2026_01_11_221755_add_price_columns_to_ec_product_up_sale_relations_table',7),(231,'2026_01_14_035001_add_customer_id_to_ec_cart_table',7),(232,'2026_01_26_084750_add_customer_id_to_ec_review_replies_table',7),(233,'2026_01_31_144854_add_zip_code_range_to_ec_shipping_rule_items_table',7),(234,'2026_02_02_090000_create_ec_order_product_tax_components_table',7),(235,'2026_02_02_090001_create_ec_invoice_item_tax_components_table',7),(236,'2026_02_02_090002_add_tax_class_to_ec_customers_table',7),(237,'2026_02_02_090003_add_tax_class_to_ec_products_table',7),(238,'2026_02_02_090004_add_tax_breakdown_to_ec_order_product_table',7),(239,'2026_02_03_090000_drop_foreign_key_from_ec_order_product_tax_components_table',7),(240,'2026_02_07_090000_remove_duplicate_product_variation_records',7),(241,'2026_02_11_090000_add_price_per_product_to_options_tables',7),(242,'2026_02_11_090000_add_shipping_tax_amount_to_ec_orders_and_invoices_table',7),(243,'2026_02_11_160300_convert_specification_options_to_id_based_format',7),(244,'2026_03_03_150041_add_content_to_ec_product_tags_table',7),(245,'2026_03_04_000001_add_name_to_ec_shipping_rule_items_table',7),(246,'2026_03_04_000002_normalize_zip_codes_in_ec_shipping_rule_items_table',7),(247,'2026_03_06_020547_make_comment_nullable_in_ec_reviews_table',7),(248,'2026_03_06_020805_fix_empty_status_in_ec_invoices_table',7),(249,'2026_03_10_105000_add_badge_type_to_ec_reviews_table',7),(250,'2026_04_24_000001_reconcile_payment_amount_with_order_total',7),(251,'2026_04_25_000001_backfill_missing_order_shipping_addresses',7),(252,'2018_07_09_221238_create_faq_table',8),(253,'2021_12_03_082134_create_faq_translations',8),(254,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(255,'2024_12_01_000000_add_indexes_to_faq_translations_tables',8),(256,'2016_10_03_032336_create_languages_table',9),(257,'2023_09_14_022423_add_index_for_language_table',9),(258,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(259,'2021_12_03_075608_create_page_translations',10),(260,'2023_07_06_011444_create_slug_translations_table',10),(261,'2024_12_01_000000_add_indexes_to_slugs_translations_table',10),(262,'2019_11_18_061011_create_country_table',11),(263,'2021_12_03_084118_create_location_translations',11),(264,'2021_12_03_094518_migrate_old_location_data',11),(265,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(266,'2022_01_16_085908_improve_plugin_location',11),(267,'2022_08_04_052122_delete_location_backup_tables',11),(268,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(269,'2023_07_26_041451_add_more_columns_to_location_table',11),(270,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(271,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(272,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(273,'2024_08_17_094600_add_image_into_countries',11),(274,'2025_01_08_093652_add_zip_code_to_cities',11),(275,'2025_07_31_083459_add_indexes_for_location_search_performance',11),(276,'2017_10_24_154832_create_newsletter_table',12),(277,'2024_03_25_000001_update_captcha_settings_for_newsletter',12),(278,'2017_05_18_080441_create_payment_tables',13),(279,'2021_03_27_144913_add_customer_type_into_table_payments',13),(280,'2021_05_24_034720_make_column_currency_nullable',13),(281,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(282,'2021_10_19_020859_update_metadata_field',13),(283,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(284,'2022_07_07_153354_update_charge_id_in_table_payments',13),(285,'2024_07_04_083133_create_payment_logs_table',13),(286,'2025_04_12_000003_add_payment_fee_to_payments_table',13),(287,'2025_05_22_000001_add_payment_fee_type_to_settings_table',13),(288,'2017_07_11_140018_create_simple_slider_table',14),(289,'2026_01_10_000001_add_status_to_simple_slider_items_table',14),(290,'2025_04_08_040931_create_social_logins_table',15),(291,'2018_07_09_214610_create_testimonial_table',16),(292,'2021_12_03_083642_create_testimonials_translations',16),(293,'2024_12_01_000000_add_indexes_to_testimonials_translations_table',16),(294,'2016_10_07_193005_create_translations_table',17),(295,'2023_12_12_105220_drop_translations_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Top Categories\" subtitle=\"Browse our most popular product categories, handpicked for your convenience.\"][/featured-product-categories]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Trending Products\"][/trending-products]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Our Brands\"][/featured-brands]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(2,'Contact us','<div>[contact-form][/contact-form]</div><div>[google-map]959 Homestead Street Eastlake, NYC[/google-map]</div>',1,NULL,NULL,NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(3,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(4,'About us','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,NULL,NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(5,'FAQ','<div>[faqs enable_lazy_loading=\"yes\"][/faqs]</div>',1,NULL,NULL,NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(6,'Location','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,NULL,NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(7,'Affiliates','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,NULL,NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(8,'Brands','<p>[all-brands enable_lazy_loading=\"yes\"][/all-brands]</p>',1,NULL,NULL,NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(10,'Homepage 2','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-2\" title=\"Deal Of The Days\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Featured Products\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Our Brands\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Subscribe Our Newsletter\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(11,'Homepage 3','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Worldwide\" icon2=\"flaticon-money-back\" title2=\"Money Returns\" subtitle2=\"30 Days money return\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Customer Support\" icon4=\"flaticon-lock\" title4=\"Payment Security\" subtitle4=\"Safe Payment\"][/our-features]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Exclusive Products\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Trending Items\"][/trending-products]</div><div>[instagram enable_lazy_loading=\"yes\" title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Our Brands\"][/featured-brands]</div>',1,NULL,'homepage',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(12,'Homepage 4','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" style=\"style-4\" link=\"products\" title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-4\" number_of_displays=\"8\" title=\"Our Top Products\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Big Sale Deal\" description=\"Sale 40% Off\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks enable_lazy_loading=\"yes\" style=\"style-4\" on_sale_product_title=\"Special Offers\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Latest News\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(13,'Homepage 5','<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Best deals for you\"][/flash-sale]</div><div>[trending-products enable_lazy_loading=\"yes\" ads_key=\"YKE9S2TUEEJB\" title=\"Trending Products\"][/trending-products]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Our Brands\"][/featured-brands]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(14,'Homepage 6','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-6\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Trending Products\"][/trending-products]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Our Client Say!\"][/testimonials]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[featured-brands title=\"Our Brands\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('ar',1,'الرئيسية',NULL,'<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"أفضل الفئات\" subtitle=\"تصفح فئات منتجاتنا الأكثر شعبية، مختارة خصيصاً لراحتك.\"][/featured-product-categories]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"أفضل العروض لك\"][/flash-sale]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"منتجات حصرية\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"المنتجات الرائجة\"][/trending-products]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"منتجات مميزة\" top_rated_product_title=\"المنتجات الأعلى تقييماً\" on_sale_product_title=\"منتجات بأسعار مخفضة\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"علاماتنا التجارية\"][/featured-brands]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"زوروا مدونتنا\" subtitle=\"مدونتنا تحدث بأحدث صيحات العالم بانتظام\"][/featured-news]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"ماذا يقول عملاؤنا!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"توصيل مجاني\" subtitle1=\"شحن مجاني لجميع الطلبات الأمريكية أو الطلبات التي تزيد عن 200$\" icon2=\"flaticon-money-back\" title2=\"ضمان إرجاع 30 يوم\" subtitle2=\"ببساطة أعده خلال 30 يوماً للاستبدال\" icon3=\"flaticon-support\" title3=\"دعم على مدار الساعة\" subtitle3=\"اتصل بنا 24 ساعة في اليوم، 7 أيام في الأسبوع\"][/our-features]</div><div>[newsletter-form title=\"اشترك في نشرتنا الإخبارية الآن\" subtitle=\"سجل الآن للحصول على تحديثات حول العروض الترويجية.\"][/newsletter-form]</div>'),('ar',2,'اتصل بنا',NULL,NULL),('ar',3,'المدونة',NULL,NULL),('ar',4,'من نحن',NULL,NULL),('ar',5,'الأسئلة الشائعة',NULL,NULL),('ar',6,'الموقع',NULL,NULL),('ar',7,'الشركاء',NULL,NULL),('ar',8,'العلامات التجارية',NULL,NULL),('ar',9,'سياسة ملفات تعريف الارتباط',NULL,NULL),('ar',10,'الرئيسية 2',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"منتجات حصرية\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-2\" title=\"صفقة اليوم\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"منتجات مميزة\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"علاماتنا التجارية\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"اشترك في نشرتنا الإخبارية\"][/newsletter-form]</div>'),('ar',11,'الرئيسية 3',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"توصيل مجاني\" subtitle1=\"عالمياً\" icon2=\"flaticon-money-back\" title2=\"استرداد الأموال\" subtitle2=\"استرداد الأموال خلال 30 يوماً\" icon3=\"flaticon-support\" title3=\"دعم على مدار الساعة\" subtitle3=\"دعم العملاء\" icon4=\"flaticon-lock\" title4=\"أمان الدفع\" subtitle4=\"دفع آمن\"][/our-features]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"منتجات حصرية\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-3\" title=\"العناصر الرائجة\"][/trending-products]</div><div>[instagram enable_lazy_loading=\"yes\" title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands enable_lazy_loading=\"yes\" style=\"style-3\" title=\"علاماتنا التجارية\"][/featured-brands]</div>'),('ar',12,'الرئيسية 4',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" style=\"style-4\" link=\"products\" title=\"أفضل الفئات\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-4\" number_of_displays=\"8\" title=\"أفضل منتجاتنا\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"عرض التخفيضات الكبير\" description=\"خصم 40%\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks enable_lazy_loading=\"yes\" style=\"style-4\" on_sale_product_title=\"عروض خاصة\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"آخر الأخبار\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"اشترك في نشرتنا الإخبارية الآن\" subtitle=\"سجل الآن للحصول على تحديثات حول العروض الترويجية.\"][/newsletter-form]</div>'),('ar',13,'الرئيسية 5',NULL,'<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"منتجات حصرية\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"أفضل العروض لك\"][/flash-sale]</div><div>[trending-products enable_lazy_loading=\"yes\" ads_key=\"YKE9S2TUEEJB\" title=\"المنتجات الرائجة\"][/trending-products]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"علاماتنا التجارية\"][/featured-brands]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"منتجات مميزة\" top_rated_product_title=\"المنتجات الأعلى تقييماً\" on_sale_product_title=\"منتجات بأسعار مخفضة\"][/product-blocks]</div><div>[newsletter-form title=\"اشترك في نشرتنا الإخبارية الآن\" subtitle=\"سجل الآن للحصول على تحديثات حول العروض الترويجية.\"][/newsletter-form]</div>'),('ar',14,'الرئيسية 6',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"أفضل الفئات\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-6\" title=\"منتجات حصرية\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"المنتجات الرائجة\"][/trending-products]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"ماذا يقول عملاؤنا!\"][/testimonials]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"زوروا مدونتنا\" subtitle=\"مدونتنا تحدث بأحدث صيحات العالم بانتظام\"][/featured-news]</div><div>[featured-brands title=\"علاماتنا التجارية\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"اشترك في نشرتنا الإخبارية الآن\" subtitle=\"سجل الآن للحصول على تحديثات حول العروض الترويجية.\"][/newsletter-form]</div>'),('fr',1,'Accueil',NULL,'<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Meilleures Catégories\" subtitle=\"Parcourez nos catégories de produits les plus populaires, sélectionnées pour votre commodité.\"][/featured-product-categories]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Meilleures offres pour vous\"][/flash-sale]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Produits Exclusifs\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Produits Tendance\"][/trending-products]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Produits en Vedette\" top_rated_product_title=\"Produits Les Mieux Notés\" on_sale_product_title=\"Produits en Promotion\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Nos Marques\"][/featured-brands]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Visitez Notre Blog\" subtitle=\"Notre blog met à jour les dernières tendances du monde régulièrement\"][/featured-news]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Nos Clients Disent !\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Livraison Gratuite\" subtitle1=\"Livraison gratuite pour toutes les commandes américaines ou les commandes de plus de 200$\" icon2=\"flaticon-money-back\" title2=\"Garantie de Retour 30 Jours\" subtitle2=\"Retournez-le simplement dans les 30 jours pour un échange\" icon3=\"flaticon-support\" title3=\"Support En Ligne 24/7\" subtitle3=\"Contactez-nous 24 heures sur 24, 7 jours sur 7\"][/our-features]</div><div>[newsletter-form title=\"Inscrivez-vous à Notre Newsletter\" subtitle=\"Inscrivez-vous maintenant pour recevoir les mises à jour sur les promotions.\"][/newsletter-form]</div>'),('fr',2,'Contactez-nous',NULL,NULL),('fr',3,'Blog',NULL,NULL),('fr',4,'À propos',NULL,NULL),('fr',5,'FAQ',NULL,NULL),('fr',6,'Emplacement',NULL,NULL),('fr',7,'Affiliés',NULL,NULL),('fr',8,'Marques',NULL,NULL),('fr',9,'Politique de cookies',NULL,NULL),('fr',10,'Accueil 2',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Produits Exclusifs\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-2\" title=\"Offre du Jour\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Produits en Vedette\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Nos Marques\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Abonnez-vous à Notre Newsletter\"][/newsletter-form]</div>'),('fr',11,'Accueil 3',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Livraison Gratuite\" subtitle1=\"Mondial\" icon2=\"flaticon-money-back\" title2=\"Remboursement\" subtitle2=\"Remboursement sous 30 jours\" icon3=\"flaticon-support\" title3=\"Support En Ligne 24/7\" subtitle3=\"Service Client\" icon4=\"flaticon-lock\" title4=\"Sécurité de Paiement\" subtitle4=\"Paiement Sécurisé\"][/our-features]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Produits Exclusifs\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Articles Tendance\"][/trending-products]</div><div>[instagram enable_lazy_loading=\"yes\" title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Nos Marques\"][/featured-brands]</div>'),('fr',12,'Accueil 4',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" style=\"style-4\" link=\"products\" title=\"Meilleures Catégories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-4\" number_of_displays=\"8\" title=\"Nos Meilleurs Produits\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Grande Promotion\" description=\"Remise de 40%\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks enable_lazy_loading=\"yes\" style=\"style-4\" on_sale_product_title=\"Offres Spéciales\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Dernières Nouvelles\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Inscrivez-vous à Notre Newsletter\" subtitle=\"Inscrivez-vous maintenant pour recevoir les mises à jour sur les promotions.\"][/newsletter-form]</div>'),('fr',13,'Accueil 5',NULL,'<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Produits Exclusifs\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Meilleures offres pour vous\"][/flash-sale]</div><div>[trending-products enable_lazy_loading=\"yes\" ads_key=\"YKE9S2TUEEJB\" title=\"Produits Tendance\"][/trending-products]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Nos Marques\"][/featured-brands]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Produits en Vedette\" top_rated_product_title=\"Produits Les Mieux Notés\" on_sale_product_title=\"Produits en Promotion\"][/product-blocks]</div><div>[newsletter-form title=\"Inscrivez-vous à Notre Newsletter\" subtitle=\"Inscrivez-vous maintenant pour recevoir les mises à jour sur les promotions.\"][/newsletter-form]</div>'),('fr',14,'Accueil 6',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Meilleures Catégories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-6\" title=\"Produits Exclusifs\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Produits Tendance\"][/trending-products]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Nos Clients Disent !\"][/testimonials]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Visitez Notre Blog\" subtitle=\"Notre blog met à jour les dernières tendances du monde régulièrement\"][/featured-news]</div><div>[featured-brands title=\"Nos Marques\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Inscrivez-vous à Notre Newsletter\" subtitle=\"Inscrivez-vous maintenant pour recevoir les mises à jour sur les promotions.\"][/newsletter-form]</div>'),('id',1,'Beranda',NULL,'<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Kategori Teratas\" subtitle=\"Jelajahi kategori produk kami yang paling populer, dipilih khusus untuk kenyamanan Anda.\"][/featured-product-categories]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Penawaran terbaik untuk Anda\"][/flash-sale]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Produk Eksklusif\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Produk Tren\"][/trending-products]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Produk Unggulan\" top_rated_product_title=\"Produk Paling Diminati\" on_sale_product_title=\"Produk Diskon\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Merek Kami\"][/featured-brands]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Kunjungi Blog Kami\" subtitle=\"Blog kami memperbarui tren terbaru dunia secara berkala\"][/featured-news]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Kata Pelanggan Kami!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Pengiriman Gratis\" subtitle1=\"Gratis ongkir untuk semua pesanan AS atau pesanan di atas $200\" icon2=\"flaticon-money-back\" title2=\"Garansi Pengembalian 30 Hari\" subtitle2=\"Cukup kembalikan dalam 30 hari untuk penukaran\" icon3=\"flaticon-support\" title3=\"Dukungan Online 24/7\" subtitle3=\"Hubungi kami 24 jam sehari, 7 hari seminggu\"][/our-features]</div><div>[newsletter-form title=\"Bergabung Newsletter Kami Sekarang\" subtitle=\"Daftar sekarang untuk mendapatkan info promosi.\"][/newsletter-form]</div>'),('id',2,'Hubungi Kami',NULL,NULL),('id',3,'Blog',NULL,NULL),('id',4,'Tentang Kami',NULL,NULL),('id',5,'FAQ',NULL,NULL),('id',6,'Lokasi',NULL,NULL),('id',7,'Afiliasi',NULL,NULL),('id',8,'Merek',NULL,NULL),('id',9,'Kebijakan Cookie',NULL,NULL),('id',10,'Beranda 2',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Produk Eksklusif\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-2\" title=\"Penawaran Hari Ini\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Produk Unggulan\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Merek Kami\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Berlangganan Newsletter Kami\"][/newsletter-form]</div>'),('id',11,'Beranda 3',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Pengiriman Gratis\" subtitle1=\"Seluruh Dunia\" icon2=\"flaticon-money-back\" title2=\"Pengembalian Dana\" subtitle2=\"Pengembalian dana 30 hari\" icon3=\"flaticon-support\" title3=\"Dukungan Online 24/7\" subtitle3=\"Dukungan Pelanggan\" icon4=\"flaticon-lock\" title4=\"Keamanan Pembayaran\" subtitle4=\"Pembayaran Aman\"][/our-features]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Produk Eksklusif\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Item Tren\"][/trending-products]</div><div>[instagram enable_lazy_loading=\"yes\" title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Merek Kami\"][/featured-brands]</div>'),('id',12,'Beranda 4',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" style=\"style-4\" link=\"products\" title=\"Kategori Teratas\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-4\" number_of_displays=\"8\" title=\"Produk Teratas Kami\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Penawaran Diskon Besar\" description=\"Diskon 40%\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks enable_lazy_loading=\"yes\" style=\"style-4\" on_sale_product_title=\"Penawaran Spesial\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Berita Terbaru\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Bergabung Newsletter Kami Sekarang\" subtitle=\"Daftar sekarang untuk mendapatkan info promosi.\"][/newsletter-form]</div>'),('id',13,'Beranda 5',NULL,'<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Produk Eksklusif\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Penawaran terbaik untuk Anda\"][/flash-sale]</div><div>[trending-products enable_lazy_loading=\"yes\" ads_key=\"YKE9S2TUEEJB\" title=\"Produk Tren\"][/trending-products]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Merek Kami\"][/featured-brands]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Produk Unggulan\" top_rated_product_title=\"Produk Paling Diminati\" on_sale_product_title=\"Produk Diskon\"][/product-blocks]</div><div>[newsletter-form title=\"Bergabung Newsletter Kami Sekarang\" subtitle=\"Daftar sekarang untuk mendapatkan info promosi.\"][/newsletter-form]</div>'),('id',14,'Beranda 6',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Kategori Teratas\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-6\" title=\"Produk Eksklusif\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Produk Tren\"][/trending-products]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Kata Pelanggan Kami!\"][/testimonials]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Kunjungi Blog Kami\" subtitle=\"Blog kami memperbarui tren terbaru dunia secara berkala\"][/featured-news]</div><div>[featured-brands title=\"Merek Kami\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Bergabung Newsletter Kami Sekarang\" subtitle=\"Daftar sekarang untuk mendapatkan info promosi.\"][/newsletter-form]</div>'),('tr',1,'Ana Sayfa',NULL,'<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"En İyi Kategoriler\" subtitle=\"En popüler ürün kategorilerimize göz atın, kolaylığınız için özenle seçildi.\"][/featured-product-categories]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Sizin için en iyi fırsatlar\"][/flash-sale]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Özel Ürünler\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Trend Ürünler\"][/trending-products]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Öne Çıkan Ürünler\" top_rated_product_title=\"En Çok Beğenilen Ürünler\" on_sale_product_title=\"İndirimli Ürünler\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Markalarımız\"][/featured-brands]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Blogumuzu Ziyaret Edin\" subtitle=\"Blogumuz dünyanın en yeni trendlerini düzenli olarak günceller\"][/featured-news]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Müşterilerimiz Ne Diyor!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Ücretsiz Teslimat\" subtitle1=\"Tüm ABD siparişlerinde veya 200$ üzeri siparişlerde ücretsiz kargo\" icon2=\"flaticon-money-back\" title2=\"30 Gün İade Garantisi\" subtitle2=\"Değişim için 30 gün içinde iade edin\" icon3=\"flaticon-support\" title3=\"7/24 Çevrimiçi Destek\" subtitle3=\"Günde 24 saat, haftada 7 gün bize ulaşın\"][/our-features]</div><div>[newsletter-form title=\"Bültenimize Şimdi Katılın\" subtitle=\"Promosyonlar hakkında güncellemeler almak için şimdi kaydolun.\"][/newsletter-form]</div>'),('tr',2,'Bize Ulaşın',NULL,NULL),('tr',3,'Blog',NULL,NULL),('tr',4,'Hakkımızda',NULL,NULL),('tr',5,'SSS',NULL,NULL),('tr',6,'Konum',NULL,NULL),('tr',7,'İş Ortakları',NULL,NULL),('tr',8,'Markalar',NULL,NULL),('tr',9,'Çerez Politikası',NULL,NULL),('tr',10,'Ana Sayfa 2',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Özel Ürünler\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-2\" title=\"Günün Fırsatı\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Öne Çıkan Ürünler\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Markalarımız\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Bültenimize Abone Olun\"][/newsletter-form]</div>'),('tr',11,'Ana Sayfa 3',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Ücretsiz Teslimat\" subtitle1=\"Dünya Çapında\" icon2=\"flaticon-money-back\" title2=\"Para İadesi\" subtitle2=\"30 gün para iadesi\" icon3=\"flaticon-support\" title3=\"7/24 Çevrimiçi Destek\" subtitle3=\"Müşteri Desteği\" icon4=\"flaticon-lock\" title4=\"Ödeme Güvenliği\" subtitle4=\"Güvenli Ödeme\"][/our-features]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Özel Ürünler\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Trend Ürünler\"][/trending-products]</div><div>[instagram enable_lazy_loading=\"yes\" title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Markalarımız\"][/featured-brands]</div>'),('tr',12,'Ana Sayfa 4',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" style=\"style-4\" link=\"products\" title=\"En İyi Kategoriler\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-4\" number_of_displays=\"8\" title=\"En İyi Ürünlerimiz\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Büyük İndirim Fırsatı\" description=\"%40 İndirim\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks enable_lazy_loading=\"yes\" style=\"style-4\" on_sale_product_title=\"Özel Teklifler\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Son Haberler\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Bültenimize Şimdi Katılın\" subtitle=\"Promosyonlar hakkında güncellemeler almak için şimdi kaydolun.\"][/newsletter-form]</div>'),('tr',13,'Ana Sayfa 5',NULL,'<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Özel Ürünler\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Sizin için en iyi fırsatlar\"][/flash-sale]</div><div>[trending-products enable_lazy_loading=\"yes\" ads_key=\"YKE9S2TUEEJB\" title=\"Trend Ürünler\"][/trending-products]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Markalarımız\"][/featured-brands]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Öne Çıkan Ürünler\" top_rated_product_title=\"En Çok Beğenilen Ürünler\" on_sale_product_title=\"İndirimli Ürünler\"][/product-blocks]</div><div>[newsletter-form title=\"Bültenimize Şimdi Katılın\" subtitle=\"Promosyonlar hakkında güncellemeler almak için şimdi kaydolun.\"][/newsletter-form]</div>'),('tr',14,'Ana Sayfa 6',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"En İyi Kategoriler\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-6\" title=\"Özel Ürünler\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Trend Ürünler\"][/trending-products]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Müşterilerimiz Ne Diyor!\"][/testimonials]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Blogumuzu Ziyaret Edin\" subtitle=\"Blogumuz dünyanın en yeni trendlerini düzenli olarak günceller\"][/featured-news]</div><div>[featured-brands title=\"Markalarımız\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Bültenimize Şimdi Katılın\" subtitle=\"Promosyonlar hakkında güncellemeler almak için şimdi kaydolun.\"][/newsletter-form]</div>'),('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Danh Mục Hàng Đầu\" subtitle=\"Duyệt qua các danh mục sản phẩm phổ biến nhất của chúng tôi, được chọn lọc cho sự tiện lợi của bạn.\"][/featured-product-categories]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Ưu đãi tốt nhất cho bạn\"][/flash-sale]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Sản Phẩm Độc Quyền\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Sản Phẩm Thịnh Hành\"][/trending-products]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Sản Phẩm Nổi Bật\" top_rated_product_title=\"Sản Phẩm Được Đánh Giá Cao\" on_sale_product_title=\"Sản Phẩm Đang Giảm Giá\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Thương Hiệu Của Chúng Tôi\"][/featured-brands]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Ghé Thăm Blog\" subtitle=\"Blog của chúng tôi cập nhật xu hướng mới nhất thế giới thường xuyên\"][/featured-news]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Khách Hàng Nói Gì!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Giao Hàng Miễn Phí\" subtitle1=\"Miễn phí vận chuyển cho tất cả đơn hàng tại Mỹ hoặc đơn hàng trên 200$\" icon2=\"flaticon-money-back\" title2=\"Đảm Bảo Trả Hàng 30 Ngày\" subtitle2=\"Chỉ cần trả lại trong vòng 30 ngày để đổi hàng\" icon3=\"flaticon-support\" title3=\"Hỗ Trợ Trực Tuyến 24/7\" subtitle3=\"Liên hệ chúng tôi 24 giờ mỗi ngày, 7 ngày mỗi tuần\"][/our-features]</div><div>[newsletter-form title=\"Đăng Ký Nhận Bản Tin Ngay\" subtitle=\"Đăng ký ngay để nhận thông tin về các chương trình khuyến mãi.\"][/newsletter-form]</div>'),('vi',2,'Liên hệ',NULL,NULL),('vi',3,'Tin tức',NULL,NULL),('vi',4,'Giới thiệu',NULL,NULL),('vi',5,'Câu hỏi thường gặp',NULL,NULL),('vi',6,'Vị trí',NULL,NULL),('vi',7,'Đối tác',NULL,NULL),('vi',8,'Thương hiệu',NULL,NULL),('vi',9,'Chính sách Cookie',NULL,NULL),('vi',10,'Trang chủ 2',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" title=\"Sản Phẩm Độc Quyền\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-2\" title=\"Ưu Đãi Trong Ngày\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Sản Phẩm Nổi Bật\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Thương Hiệu Của Chúng Tôi\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Đăng Ký Nhận Bản Tin\"][/newsletter-form]</div>'),('vi',11,'Trang chủ 3',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Giao Hàng Miễn Phí\" subtitle1=\"Toàn thế giới\" icon2=\"flaticon-money-back\" title2=\"Hoàn Tiền\" subtitle2=\"Hoàn tiền trong 30 ngày\" icon3=\"flaticon-support\" title3=\"Hỗ Trợ Trực Tuyến 24/7\" subtitle3=\"Hỗ Trợ Khách Hàng\" icon4=\"flaticon-lock\" title4=\"Bảo Mật Thanh Toán\" subtitle4=\"Thanh Toán An Toàn\"][/our-features]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Sản Phẩm Độc Quyền\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Sản Phẩm Xu Hướng\"][/trending-products]</div><div>[instagram enable_lazy_loading=\"yes\" title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands enable_lazy_loading=\"yes\" style=\"style-3\" title=\"Thương Hiệu Của Chúng Tôi\"][/featured-brands]</div>'),('vi',12,'Trang chủ 4',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" style=\"style-4\" link=\"products\" title=\"Danh Mục Hàng Đầu\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products enable_lazy_loading=\"yes\" style=\"style-4\" number_of_displays=\"8\" title=\"Sản Phẩm Hàng Đầu\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale enable_lazy_loading=\"yes\" style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Đại Giảm Giá\" description=\"Giảm 40%\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks enable_lazy_loading=\"yes\" style=\"style-4\" on_sale_product_title=\"Ưu Đãi Đặc Biệt\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Tin Tức Mới Nhất\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Đăng Ký Nhận Bản Tin Ngay\" subtitle=\"Đăng ký ngay để nhận thông tin về các chương trình khuyến mãi.\"][/newsletter-form]</div>'),('vi',13,'Trang chủ 5',NULL,'<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Sản Phẩm Độc Quyền\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale enable_lazy_loading=\"yes\" title=\"Ưu đãi tốt nhất cho bạn\"][/flash-sale]</div><div>[trending-products enable_lazy_loading=\"yes\" ads_key=\"YKE9S2TUEEJB\" title=\"Sản Phẩm Thịnh Hành\"][/trending-products]</div><div>[featured-brands enable_lazy_loading=\"yes\" title=\"Thương Hiệu Của Chúng Tôi\"][/featured-brands]</div><div>[product-blocks enable_lazy_loading=\"yes\" featured_product_title=\"Sản Phẩm Nổi Bật\" top_rated_product_title=\"Sản Phẩm Được Đánh Giá Cao\" on_sale_product_title=\"Sản Phẩm Đang Giảm Giá\"][/product-blocks]</div><div>[newsletter-form title=\"Đăng Ký Nhận Bản Tin Ngay\" subtitle=\"Đăng ký ngay để nhận thông tin về các chương trình khuyến mãi.\"][/newsletter-form]</div>'),('vi',14,'Trang chủ 6',NULL,'<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories enable_lazy_loading=\"yes\" title=\"Danh Mục Hàng Đầu\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections enable_lazy_loading=\"yes\" style=\"style-6\" title=\"Sản Phẩm Độc Quyền\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products enable_lazy_loading=\"yes\" title=\"Sản Phẩm Thịnh Hành\"][/trending-products]</div><div>[testimonials enable_lazy_loading=\"yes\" title=\"Khách Hàng Nói Gì!\"][/testimonials]</div><div>[featured-news enable_lazy_loading=\"yes\" title=\"Ghé Thăm Blog\" subtitle=\"Blog của chúng tôi cập nhật xu hướng mới nhất thế giới thường xuyên\"][/featured-news]</div><div>[featured-brands title=\"Thương Hiệu Của Chúng Tôi\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Đăng Ký Nhận Bản Tin Ngay\" subtitle=\"Đăng ký ngay để nhận thông tin về các chương trình khuyến mãi.\"][/newsletter-form]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (4,1),(3,1),(4,2),(3,3),(2,4),(4,4),(4,5),(2,5),(2,6),(1,7),(4,7),(4,8),(2,8),(2,9),(3,9),(3,10),(2,11),(1,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (2,1),(3,1),(2,2),(4,2),(1,3),(3,3),(5,3),(2,4),(4,4),(5,4),(1,5),(5,5),(4,5),(1,6),(3,6),(2,6),(1,7),(3,7),(2,8),(3,8),(5,8),(3,9),(2,9),(1,9),(2,10),(5,10),(1,10),(5,11),(3,11),(4,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men\'s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1337,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1634,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2466,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2484,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',895,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1273,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',708,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1587,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1769,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',2057,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1403,NULL,'2026-06-27 16:42:38','2026-06-27 16:42:38');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`),
  KEY `idx_posts_trans_posts_id` (`posts_id`),
  KEY `idx_posts_trans_post_lang` (`posts_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('ar',1,'4 نصائح خبراء لاختيار محفظة الرجال المناسبة',NULL,NULL),('ar',2,'حقائب كلاتش أنيقة: كيفية شراء وارتداء حقيبة كلاتش مصممة',NULL,NULL),('ar',3,'أهم صيحات حقائب اليد لعام 2020',NULL,NULL),('ar',4,'كيفية مطابقة لون حقيبة اليد مع الملابس',NULL,NULL),('ar',5,'كيفية العناية بالحقائب الجلدية',NULL,NULL),('ar',6,'نحن مغرمون بأكبر 10 صيحات حقائب الصيف',NULL,NULL),('ar',7,'الصفات الأساسية للموسيقى الناجحة',NULL,NULL),('ar',8,'9 أشياء أحبها في حلاقة رأسي',NULL,NULL),('ar',9,'لماذا العمل الجماعي يحقق الأحلام حقًا',NULL,NULL),('ar',10,'العالم يلبي احتياجات الأشخاص العاديين',NULL,NULL),('ar',11,'المتقاضون على الشاشة ليسوا ممثلين',NULL,NULL),('fr',1,'4 conseils d\'experts pour choisir le bon portefeuille pour homme',NULL,NULL),('fr',2,'Pochettes élégantes : comment acheter et porter une pochette de créateur',NULL,NULL),('fr',3,'Les tendances sacs à main 2020 à connaître',NULL,NULL),('fr',4,'Comment assortir la couleur de votre sac à main avec une tenue',NULL,NULL),('fr',5,'Comment entretenir les sacs en cuir',NULL,NULL),('fr',6,'Les 10 plus grandes tendances sacs de l\'été',NULL,NULL),('fr',7,'Les qualités essentielles d\'une musique réussie',NULL,NULL),('fr',8,'9 choses que j\'aime dans le fait de me raser la tête',NULL,NULL),('fr',9,'Pourquoi le travail d\'équipe fait vraiment fonctionner les rêves',NULL,NULL),('fr',10,'Le monde est fait pour les gens ordinaires',NULL,NULL),('fr',11,'Les plaignants à l\'écran ne sont pas des acteurs',NULL,NULL),('id',1,'4 tips ahli untuk memilih dompet pria yang tepat',NULL,NULL),('id',2,'Clutch mewah: Cara membeli dan memakai tas clutch desainer',NULL,NULL),('id',3,'Tren tas tangan teratas tahun 2020 yang perlu diketahui',NULL,NULL),('id',4,'Cara mencocokkan warna tas tangan dengan pakaian',NULL,NULL),('id',5,'Cara merawat tas kulit',NULL,NULL),('id',6,'10 tren tas terbesar musim panas',NULL,NULL),('id',7,'Kualitas penting dari musik yang sangat sukses',NULL,NULL),('id',8,'9 hal yang saya sukai dari mencukur kepala',NULL,NULL),('id',9,'Mengapa kerja tim benar-benar mewujudkan impian',NULL,NULL),('id',10,'Dunia melayani orang-orang biasa',NULL,NULL),('id',11,'Para pihak berperkara di layar bukan aktor',NULL,NULL),('tr',1,'Doğru erkek cüzdanını seçmek için 4 uzman ipucu',NULL,NULL),('tr',2,'Şık el çantaları: Tasarımcı el çantası nasıl alınır ve kullanılır',NULL,NULL),('tr',3,'2020 yılının en önemli çanta trendleri',NULL,NULL),('tr',4,'El çantanızın rengini kıyafetinizle nasıl uyumlu hale getirirsiniz',NULL,NULL),('tr',5,'Deri çantalar nasıl bakılır',NULL,NULL),('tr',6,'Yazın en büyük 10 çanta trendi',NULL,NULL),('tr',7,'Başarılı müziğin temel nitelikleri',NULL,NULL),('tr',8,'Başımı kazıma konusunda sevdiğim 9 şey',NULL,NULL),('tr',9,'Takım çalışması neden gerçekten hayalleri gerçekleştirir',NULL,NULL),('tr',10,'Dünya sıradan insanlara hitap ediyor',NULL,NULL),('tr',11,'Ekrandaki davacılar aktör değil',NULL,NULL),('vi',1,'4 mẹo chuyên gia để chọn ví nam phù hợp',NULL,NULL),('vi',2,'Clutch thời thượng: Cách mua và sử dụng túi clutch hàng hiệu',NULL,NULL),('vi',3,'Xu hướng túi xách hàng đầu năm 2020',NULL,NULL),('vi',4,'Cách phối màu túi xách với trang phục',NULL,NULL),('vi',5,'Cách chăm sóc túi da',NULL,NULL),('vi',6,'10 xu hướng túi xách lớn nhất mùa hè',NULL,NULL),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công',NULL,NULL),('vi',8,'9 điều tôi thích khi cạo đầu',NULL,NULL),('vi',9,'Tại sao làm việc nhóm thực sự biến giấc mơ thành hiện thực',NULL,NULL),('vi',10,'Thế giới phục vụ cho những người bình thường',NULL,NULL),('vi',11,'Những người kiện tụng trên màn hình không phải diễn viên',NULL,NULL);
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.phone-number\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"pages.export\":true,\"pages.import\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"blog.reports\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"ecommerce.customer-carts.index\":true,\"ecommerce.customer-carts.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.pending-orders\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"product-license-codes.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"ecommerce.product-specifications.import\":true,\"ecommerce.product-specifications.export\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"page-translations.export\":true,\"page-translations.import\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2026-06-27 16:42:26','2026-06-27 16:42:26');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','2f18a86fb9e9f2b40c11293b88ae0f2c',NULL,'2026-06-27 16:42:41'),(2,'api_enabled','0',NULL,'2026-06-27 16:42:41'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2026-06-27 16:42:41'),(4,'analytics_dashboard_widgets','0','2026-06-27 16:42:22','2026-06-27 16:42:22'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2026-06-27 16:42:22','2026-06-27 16:42:22'),(6,'api_layer_api_key','',NULL,'2026-06-27 16:42:41'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2026-06-27 16:42:25','2026-06-27 16:42:25'),(10,'payment_cod_fee_type','fixed',NULL,'2026-06-27 16:42:41'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2026-06-27 16:42:41'),(12,'theme','shopwise',NULL,'2026-06-27 16:42:41'),(13,'show_admin_bar','1',NULL,'2026-06-27 16:42:41'),(14,'language_hide_default','1',NULL,'2026-06-27 16:42:41'),(16,'language_display','all',NULL,'2026-06-27 16:42:41'),(17,'language_hide_languages','[]',NULL,'2026-06-27 16:42:41'),(18,'language_switcher_display','dropdown',NULL,'2026-06-27 16:42:41'),(19,'admin_favicon','general/favicon.png',NULL,'2026-06-27 16:42:41'),(20,'admin_logo','general/logo-light.png',NULL,'2026-06-27 16:42:41'),(21,'simple_slider_using_assets','0',NULL,'2026-06-27 16:42:41'),(22,'payment_cod_status','1',NULL,'2026-06-27 16:42:41'),(23,'payment_bank_transfer_status','1',NULL,'2026-06-27 16:42:41'),(24,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2026-06-27 16:42:41'),(25,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2026-06-27 16:42:41'),(26,'payment_stripe_payment_type','stripe_checkout',NULL,'2026-06-27 16:42:41'),(27,'plugins_ecommerce_customer_new_order_status','0',NULL,'2026-06-27 16:42:41'),(28,'plugins_ecommerce_admin_new_order_status','0',NULL,'2026-06-27 16:42:41'),(29,'ecommerce_is_enabled_support_digital_products','1',NULL,'2026-06-27 16:42:41'),(30,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2026-06-27 16:42:41'),(31,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2026-06-27 16:42:41'),(32,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2026-06-27 16:42:41'),(33,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2026-06-27 16:42:41'),(34,'ecommerce_store_order_prefix','SF',NULL,'2026-06-27 16:42:41'),(35,'ecommerce_enable_product_specification','1',NULL,'2026-06-27 16:42:41'),(36,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2026-06-27 16:42:41'),(37,'payment_cod_logo','payments/cod.png',NULL,'2026-06-27 16:42:41'),(38,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2026-06-27 16:42:41'),(39,'payment_stripe_logo','payments/stripe.webp',NULL,'2026-06-27 16:42:41'),(40,'payment_paypal_logo','payments/paypal.png',NULL,'2026-06-27 16:42:41'),(41,'payment_mollie_logo','payments/mollie.png',NULL,'2026-06-27 16:42:41'),(42,'payment_paystack_logo','payments/paystack.png',NULL,'2026-06-27 16:42:41'),(43,'payment_razorpay_logo','payments/razorpay.png',NULL,'2026-06-27 16:42:41'),(44,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2026-06-27 16:42:41'),(45,'permalink-botble-blog-models-post','blog',NULL,'2026-06-27 16:42:41'),(46,'permalink-botble-blog-models-category','blog',NULL,'2026-06-27 16:42:41'),(47,'ecommerce_store_name','Shopwise',NULL,NULL),(48,'ecommerce_store_phone','123-456-7890',NULL,NULL),(49,'ecommerce_store_address','123 Street, Old Trafford',NULL,NULL),(50,'ecommerce_store_state','New York',NULL,NULL),(51,'ecommerce_store_city','New York',NULL,NULL),(52,'ecommerce_store_country','US',NULL,NULL),(53,'theme-shopwise-site_title','Shopwise - Laravel Ecommerce system',NULL,'2026-06-27 16:42:41'),(54,'theme-shopwise-seo_description','Shopwise is designed for the eCommerce site. His design is suitable for small and big projects. It was built for your Shopping store, fashion store, clothing store, digital store, watch store, men store, women store, kids store, accessories store, Shoe store and etc.',NULL,'2026-06-27 16:42:41'),(55,'theme-shopwise-copyright','© 2026 Botble Technologies. All Rights Reserved.',NULL,'2026-06-27 16:42:41'),(56,'theme-shopwise-favicon','general/favicon.png',NULL,'2026-06-27 16:42:41'),(57,'theme-shopwise-logo','general/logo.png',NULL,'2026-06-27 16:42:41'),(58,'theme-shopwise-logo_footer','general/logo-light.png',NULL,'2026-06-27 16:42:41'),(59,'theme-shopwise-address','959 Homestead Street Eastlake, NYC',NULL,'2026-06-27 16:42:41'),(60,'theme-shopwise-hotline','123-456-7890',NULL,'2026-06-27 16:42:41'),(61,'theme-shopwise-email','info@sitename.com',NULL,'2026-06-27 16:42:41'),(62,'theme-shopwise-payment_methods','[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]',NULL,'2026-06-27 16:42:41'),(63,'theme-shopwise-newsletter_image','general/newsletter.jpg',NULL,'2026-06-27 16:42:41'),(64,'theme-shopwise-homepage_id','1',NULL,'2026-06-27 16:42:41'),(65,'theme-shopwise-blog_page_id','3',NULL,'2026-06-27 16:42:41'),(66,'theme-shopwise-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2026-06-27 16:42:41'),(67,'theme-shopwise-cookie_consent_learn_more_url','/cookie-policy',NULL,'2026-06-27 16:42:41'),(68,'theme-shopwise-cookie_consent_learn_more_text','Cookie Policy',NULL,'2026-06-27 16:42:41'),(69,'theme-shopwise-about-us','If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text',NULL,'2026-06-27 16:42:41'),(70,'theme-shopwise-footer_text_color','#ffffff',NULL,'2026-06-27 16:42:41'),(71,'theme-shopwise-footer_background_color','#202325',NULL,'2026-06-27 16:42:41'),(72,'theme-shopwise-footer_background_image','general/banner-footer.png',NULL,'2026-06-27 16:42:41'),(73,'theme-shopwise-header_menu_text_color','#ffffff',NULL,'2026-06-27 16:42:41'),(74,'theme-shopwise-header_menu_background_color','#1D2224',NULL,'2026-06-27 16:42:41'),(75,'theme-shopwise-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ion-social-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"},{\"key\":\"social-color\",\"value\":\"#3b5998\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ion-social-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"},{\"key\":\"social-color\",\"value\":\"#00acee\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"ion-social-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"},{\"key\":\"social-color\",\"value\":\"#c4302b\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ion-social-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/instagram.com\"},{\"key\":\"social-color\",\"value\":\"#3f729b\"}]]',NULL,'2026-06-27 16:42:41'),(76,'theme-shopwise-ar-site_title','شوب وايز - نظام التجارة الإلكترونية',NULL,'2026-06-27 16:42:41'),(77,'theme-shopwise-ar-seo_description','شوب وايز مصمم لمواقع التجارة الإلكترونية. تصميمه مناسب للمشاريع الصغيرة والكبيرة.',NULL,'2026-06-27 16:42:41'),(78,'theme-shopwise-ar-copyright','© 2026 بوتبل تكنولوجيز. جميع الحقوق محفوظة.',NULL,'2026-06-27 16:42:41'),(79,'theme-shopwise-ar-cookie_consent_message','سيتم تحسين تجربتك على هذا الموقع من خلال السماح بملفات تعريف الارتباط',NULL,'2026-06-27 16:42:41'),(80,'theme-shopwise-ar-cookie_consent_learn_more_text','سياسة ملفات تعريف الارتباط',NULL,'2026-06-27 16:42:41'),(81,'theme-shopwise-ar-about-us','إذا كنت ستستخدم Lorem Ipsum فيجب التأكد من عدم وجود نص مخفي',NULL,'2026-06-27 16:42:41'),(82,'theme-shopwise-vi-site_title','Shopwise - Hệ thống thương mại điện tử',NULL,'2026-06-27 16:42:41'),(83,'theme-shopwise-vi-seo_description','Shopwise được thiết kế cho trang thương mại điện tử. Thiết kế phù hợp cho các dự án nhỏ và lớn.',NULL,'2026-06-27 16:42:41'),(84,'theme-shopwise-vi-copyright','© 2026 Botble Technologies. Bảo lưu mọi quyền.',NULL,'2026-06-27 16:42:41'),(85,'theme-shopwise-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie',NULL,'2026-06-27 16:42:41'),(86,'theme-shopwise-vi-cookie_consent_learn_more_text','Chính sách Cookie',NULL,'2026-06-27 16:42:41'),(87,'theme-shopwise-vi-about-us','Nếu bạn sử dụng Lorem Ipsum cần đảm bảo không có văn bản ẩn',NULL,'2026-06-27 16:42:41'),(88,'theme-shopwise-fr-site_title','Shopwise - Système e-commerce Laravel',NULL,'2026-06-27 16:42:41'),(89,'theme-shopwise-fr-seo_description','Shopwise est conçu pour les sites e-commerce. Son design convient aux petits et grands projets.',NULL,'2026-06-27 16:42:41'),(90,'theme-shopwise-fr-copyright','© 2026 Botble Technologies. Tous droits réservés.',NULL,'2026-06-27 16:42:41'),(91,'theme-shopwise-fr-cookie_consent_message','Votre expérience sur ce site sera améliorée en autorisant les cookies',NULL,'2026-06-27 16:42:41'),(92,'theme-shopwise-fr-cookie_consent_learn_more_text','Politique de cookies',NULL,'2026-06-27 16:42:41'),(93,'theme-shopwise-fr-about-us','Si vous utilisez Lorem Ipsum, assurez-vous qu\'il n\'y a pas de texte caché',NULL,'2026-06-27 16:42:41'),(94,'theme-shopwise-id-site_title','Shopwise - Sistem E-commerce Laravel',NULL,'2026-06-27 16:42:42'),(95,'theme-shopwise-id-seo_description','Shopwise dirancang untuk situs e-commerce. Desainnya cocok untuk proyek kecil dan besar.',NULL,'2026-06-27 16:42:42'),(96,'theme-shopwise-id-copyright','© 2026 Botble Technologies. Hak cipta dilindungi.',NULL,'2026-06-27 16:42:42'),(97,'theme-shopwise-id-cookie_consent_message','Pengalaman Anda di situs ini akan ditingkatkan dengan mengizinkan cookie',NULL,'2026-06-27 16:42:42'),(98,'theme-shopwise-id-cookie_consent_learn_more_text','Kebijakan Cookie',NULL,'2026-06-27 16:42:42'),(99,'theme-shopwise-id-about-us','Jika Anda akan menggunakan Lorem Ipsum, pastikan tidak ada teks tersembunyi',NULL,'2026-06-27 16:42:42'),(100,'theme-shopwise-tr-site_title','Shopwise - Laravel E-ticaret Sistemi',NULL,'2026-06-27 16:42:42'),(101,'theme-shopwise-tr-seo_description','Shopwise e-ticaret siteleri için tasarlanmıştır. Tasarımı küçük ve büyük projeler için uygundur.',NULL,'2026-06-27 16:42:42'),(102,'theme-shopwise-tr-copyright','© 2026 Botble Technologies. Tüm hakları saklıdır.',NULL,'2026-06-27 16:42:42'),(103,'theme-shopwise-tr-cookie_consent_message','Çerezlere izin vererek bu sitedeki deneyiminiz iyileştirilecektir',NULL,'2026-06-27 16:42:42'),(104,'theme-shopwise-tr-cookie_consent_learn_more_text','Çerez Politikası',NULL,'2026-06-27 16:42:42'),(105,'theme-shopwise-tr-about-us','Lorem Ipsum kullanacaksanız gizli metin olmadığından emin olun',NULL,'2026-06-27 16:42:42');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Woman Fashion','sliders/1.jpg','products','Get up to 50% off Today Only!',1,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(2,1,'Man Fashion','sliders/2.jpg','products','50% off in all products',2,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(3,1,'Summer Sale','sliders/3.jpg','products','Taking your Viewing Experience to Next Level',3,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(4,2,'أزياء نسائية','sliders/1.jpg','products','احصلي على خصم يصل إلى 50% اليوم فقط!',1,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(5,2,'أزياء رجالية','sliders/2.jpg','products','خصم 50% على جميع المنتجات',2,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(6,2,'تخفيضات الصيف','sliders/3.jpg','products','ارتقِ بتجربة المشاهدة إلى المستوى التالي',3,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(7,3,'Thời trang nữ','sliders/1.jpg','products','Giảm giá đến 50% chỉ trong hôm nay!',1,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(8,3,'Thời trang nam','sliders/2.jpg','products','Giảm 50% tất cả sản phẩm',2,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(9,3,'Sale mùa hè','sliders/3.jpg','products','Nâng tầm trải nghiệm mua sắm của bạn',3,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(10,4,'Mode femme','sliders/1.jpg','products','Jusqu\'à 50% de réduction aujourd\'hui seulement !',1,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(11,4,'Mode homme','sliders/2.jpg','products','50% de réduction sur tous les produits',2,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(12,4,'Soldes d\'été','sliders/3.jpg','products','Élevez votre expérience au niveau supérieur',3,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(13,5,'Fashion Wanita','sliders/1.jpg','products','Diskon hingga 50% hanya hari ini!',1,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(14,5,'Fashion Pria','sliders/2.jpg','products','Diskon 50% untuk semua produk',2,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(15,5,'Sale Musim Panas','sliders/3.jpg','products','Tingkatkan pengalaman belanja Anda',3,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(16,6,'Kadın Modası','sliders/1.jpg','products','Sadece bugün %50\'ye varan indirim!',1,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(17,6,'Erkek Modası','sliders/2.jpg','products','Tüm ürünlerde %50 indirim',2,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(18,6,'Yaz İndirimi','sliders/3.jpg','products','Alışveriş deneyiminizi bir üst seviyeye taşıyın',3,'published','2026-06-27 16:42:38','2026-06-27 16:42:38');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(2,'سلايدر الرئيسية','home-slider-ar',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(3,'Slider trang chủ','home-slider-vi',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(4,'Slider d\'accueil','home-slider-fr',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(5,'Slider Beranda','home-slider-id',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(6,'Ana Sayfa Slider','home-slider-tr',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_key_prefix` (`key`,`prefix`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2026-06-27 16:42:26','2026-06-27 16:42:26'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2026-06-27 16:42:26','2026-06-27 16:42:26'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2026-06-27 16:42:26','2026-06-27 16:42:26'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2026-06-27 16:42:26','2026-06-27 16:42:26'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2026-06-27 16:42:26','2026-06-27 16:42:26'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2026-06-27 16:42:26','2026-06-27 16:42:26'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2026-06-27 16:42:26','2026-06-27 16:42:26'),(8,'television',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(9,'home-audio-theaters',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(10,'tv-videos',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(11,'camera-photos-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(12,'cellphones-accessories',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(13,'headphones',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(14,'videos-games',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(15,'wireless-speakers',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(16,'office-electronic',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(17,'mobile',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(18,'digital-cables',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(19,'audio-video-cables',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(20,'batteries',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(21,'headphone',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(22,'computer-tablets',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(23,'laptop',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(24,'monitors',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(25,'computer-components',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(26,'watches',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(27,'drive-storages',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(28,'gaming-laptop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(29,'security-protection',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(30,'accessories',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(31,'game',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(32,'camera',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(33,'audio',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(34,'mobile-tablet',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(35,'accessories',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(36,'home-audio-theater',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(37,'tv-smart-box',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(38,'printer',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(39,'computer',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(40,'fax-machine',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(41,'mouse',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2026-06-27 16:42:27','2026-06-27 16:42:27'),(42,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(43,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(44,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(45,'chikie-bluetooth-speaker-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:42'),(46,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(47,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(48,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(49,'apple-iphone-13-plus-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:42'),(50,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(51,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(52,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(53,'macbook-pro-13-inch-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:42'),(54,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:33','2026-06-27 16:42:33'),(55,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(56,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(57,'apple-airpods-serial-3-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:42'),(58,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(59,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(60,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(61,'macbook-pro-2015-13-inch-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:42'),(62,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(63,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(64,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(65,'gaming-keyboard-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:42'),(66,'dual-camera-20mp',25,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(67,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(68,'beat-headphone',27,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(69,'red-black-headphone-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:42'),(70,'audio-equipment',29,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(71,'smart-televisions',30,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(72,'samsung-smart-tv',31,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:34','2026-06-27 16:42:34'),(73,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-06-27 16:42:37','2026-06-27 16:42:37'),(74,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-06-27 16:42:37','2026-06-27 16:42:37'),(75,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-06-27 16:42:37','2026-06-27 16:42:37'),(76,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-06-27 16:42:37','2026-06-27 16:42:37'),(77,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-06-27 16:42:37','2026-06-27 16:42:37'),(78,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2026-06-27 16:42:37','2026-06-27 16:42:37'),(79,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2026-06-27 16:42:37','2026-06-27 16:42:39'),(80,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2026-06-27 16:42:37','2026-06-27 16:42:39'),(81,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2026-06-27 16:42:37','2026-06-27 16:42:39'),(82,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(83,'general',1,'Botble\\Blog\\Models\\Tag','tag','2026-06-27 16:42:38','2026-06-27 16:42:38'),(84,'design',2,'Botble\\Blog\\Models\\Tag','tag','2026-06-27 16:42:38','2026-06-27 16:42:38'),(85,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2026-06-27 16:42:38','2026-06-27 16:42:38'),(86,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2026-06-27 16:42:38','2026-06-27 16:42:38'),(87,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2026-06-27 16:42:38','2026-06-27 16:42:38'),(88,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(89,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(90,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(91,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(92,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(93,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(94,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(95,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(96,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(97,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(98,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2026-06-27 16:42:38','2026-06-27 16:42:39'),(99,'homepage',1,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(100,'contact-us',2,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(101,'blog',3,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(102,'about-us',4,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(103,'faq',5,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(104,'location',6,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(105,'affiliates',7,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(106,'brands',8,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(107,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(108,'homepage-2',10,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(109,'homepage-3',11,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(110,'homepage-4',12,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(111,'homepage-5',13,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(112,'homepage-6',14,'Botble\\Page\\Models\\Page','','2026-06-27 16:42:38','2026-06-27 16:42:38'),(113,'headphone-ultra-bass',32,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(114,'headphone-ultra-bass',33,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(115,'headphone-ultra-bass',34,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(116,'headphone-ultra-bass',35,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(117,'boxed-bluetooth-headphone',36,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(118,'boxed-bluetooth-headphone',37,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(119,'boxed-bluetooth-headphone',38,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(120,'apple-iphone-13-plus-digital',39,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(121,'apple-iphone-13-plus-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(122,'apple-iphone-13-plus-digital',41,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(123,'apple-watch-serial-7',42,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(124,'apple-watch-serial-7',43,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(125,'apple-watch-serial-7',44,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(126,'apple-watch-serial-7',45,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(127,'apple-watch-serial-7',46,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(128,'macbook-pro-13-inch-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(129,'macbook-pro-13-inch-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(130,'apple-keyboard',49,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(131,'apple-keyboard',50,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(132,'apple-keyboard',51,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(133,'hand-playstation',52,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(134,'hand-playstation',53,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(135,'hand-playstation',54,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(136,'apple-airpods-serial-3-digital',55,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(137,'apple-airpods-serial-3-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(138,'leather-watch-band-serial-3',57,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(139,'leather-watch-band-serial-3',58,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(140,'leather-watch-band-serial-3',59,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(141,'black-glasses',60,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(142,'black-glasses',61,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(143,'black-glasses',62,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(144,'phillips-mouse',63,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(145,'phillips-mouse',64,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(146,'gaming-keyboard-digital',65,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(147,'gaming-keyboard-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(148,'gaming-keyboard-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(149,'dual-camera-20mp',68,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(150,'dual-camera-20mp',69,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(151,'smart-watches',70,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(152,'smart-watches',71,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(153,'smart-watches',72,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(154,'beat-headphone',73,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(155,'red-black-headphone-digital',74,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(156,'red-black-headphone-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(157,'red-black-headphone-digital',76,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(158,'samsung-smart-tv',77,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(159,'samsung-smart-tv',78,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(160,'samsung-smart-tv',79,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(161,'samsung-smart-tv',80,'Botble\\Ecommerce\\Models\\Product','products','2026-06-27 16:42:42','2026-06-27 16:42:42'),(162,'new-arrival',1,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2026-06-27 16:42:42','2026-06-27 16:42:42'),(163,'best-sellers',2,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2026-06-27 16:42:42','2026-06-27 16:42:42'),(164,'special-offer',3,'Botble\\Ecommerce\\Models\\ProductCollection','collections','2026-06-27 16:42:42','2026-06-27 16:42:42');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`),
  KEY `idx_slugid_key_prefix` (`slugs_id`,`key`,`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2026-06-27 16:42:38','2026-06-27 16:42:38');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`tags_id`),
  KEY `idx_tags_trans_tags_id` (`tags_id`),
  KEY `idx_tags_trans_tag_lang` (`tags_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('ar',1,'عام',NULL),('ar',2,'تصميم',NULL),('ar',3,'أزياء',NULL),('ar',4,'العلامة التجارية',NULL),('ar',5,'حديث',NULL),('fr',1,'Général',NULL),('fr',2,'Design',NULL),('fr',3,'Mode',NULL),('fr',4,'Image de marque',NULL),('fr',5,'Moderne',NULL),('id',1,'Umum',NULL),('id',2,'Desain',NULL),('id',3,'Fashion',NULL),('id',4,'Branding',NULL),('id',5,'Modern',NULL),('tr',1,'Genel',NULL),('tr',2,'Tasarım',NULL),('tr',3,'Moda',NULL),('tr',4,'Markalaşma',NULL),('tr',5,'Modern',NULL),('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Adam Williams','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/1.jpg','CEO Of Microsoft','published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(2,'Retha Deowalim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/2.jpg','CEO Of Apple','published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(3,'Sam J. Wasim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/3.jpg','Pio Founder','published','2026-06-27 16:42:38','2026-06-27 16:42:38'),(4,'Usan Gulwarm','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/4.jpg','CEO Of Facewarm','published','2026-06-27 16:42:38','2026-06-27 16:42:38');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`),
  KEY `idx_testimonials_trans_testimonials_id` (`testimonials_id`),
  KEY `idx_testimonials_trans_testimonial_lang` (`testimonials_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
INSERT INTO `testimonials_translations` VALUES ('ar',1,'آدم ويليامز','تجربة رائعة مع هذا المتجر. المنتجات عالية الجودة والخدمة ممتازة. أنصح الجميع بالتسوق من هنا.','الرئيس التنفيذي لمايكروسوفت'),('ar',2,'ريثا ديواليم','تجربة رائعة مع هذا المتجر. المنتجات عالية الجودة والخدمة ممتازة. أنصح الجميع بالتسوق من هنا.','الرئيس التنفيذي لآبل'),('ar',3,'سام ج. وسيم','تجربة رائعة مع هذا المتجر. المنتجات عالية الجودة والخدمة ممتازة. أنصح الجميع بالتسوق من هنا.','مؤسس بيو'),('ar',4,'أوسان جولوارم','تجربة رائعة مع هذا المتجر. المنتجات عالية الجودة والخدمة ممتازة. أنصح الجميع بالتسوق من هنا.','الرئيس التنفيذي لفيسوارم'),('fr',1,'Adam Williams','Une expérience formidable avec cette boutique. Des produits de haute qualité et un service excellent. Je recommande à tous.','PDG de Microsoft'),('fr',2,'Retha Deowalim','Une expérience formidable avec cette boutique. Des produits de haute qualité et un service excellent. Je recommande à tous.','PDG d\'Apple'),('fr',3,'Sam J. Wasim','Une expérience formidable avec cette boutique. Des produits de haute qualité et un service excellent. Je recommande à tous.','Fondateur de Pio'),('fr',4,'Usan Gulwarm','Une expérience formidable avec cette boutique. Des produits de haute qualité et un service excellent. Je recommande à tous.','PDG de Facewarm'),('id',1,'Adam Williams','Pengalaman luar biasa dengan toko ini. Produk berkualitas tinggi dan layanan yang sangat baik. Saya merekomendasikan semua orang untuk berbelanja di sini.','CEO Microsoft'),('id',2,'Retha Deowalim','Pengalaman luar biasa dengan toko ini. Produk berkualitas tinggi dan layanan yang sangat baik. Saya merekomendasikan semua orang untuk berbelanja di sini.','CEO Apple'),('id',3,'Sam J. Wasim','Pengalaman luar biasa dengan toko ini. Produk berkualitas tinggi dan layanan yang sangat baik. Saya merekomendasikan semua orang untuk berbelanja di sini.','Pendiri Pio'),('id',4,'Usan Gulwarm','Pengalaman luar biasa dengan toko ini. Produk berkualitas tinggi dan layanan yang sangat baik. Saya merekomendasikan semua orang untuk berbelanja di sini.','CEO Facewarm'),('tr',1,'Adam Williams','Bu mağazayla harika bir deneyim. Yüksek kaliteli ürünler ve mükemmel hizmet. Herkese buradan alışveriş yapmalarını öneriyorum.','Microsoft CEO'),('tr',2,'Retha Deowalim','Bu mağazayla harika bir deneyim. Yüksek kaliteli ürünler ve mükemmel hizmet. Herkese buradan alışveriş yapmalarını öneriyorum.','Apple CEO'),('tr',3,'Sam J. Wasim','Bu mağazayla harika bir deneyim. Yüksek kaliteli ürünler ve mükemmel hizmet. Herkese buradan alışveriş yapmalarını öneriyorum.','Pio Kurucusu'),('tr',4,'Usan Gulwarm','Bu mağazayla harika bir deneyim. Yüksek kaliteli ürünler ve mükemmel hizmet. Herkese buradan alışveriş yapmalarını öneriyorum.','Facewarm CEO'),('vi',1,'Adam Williams','Trải nghiệm tuyệt vời với cửa hàng này. Sản phẩm chất lượng cao và dịch vụ xuất sắc. Tôi khuyên mọi người nên mua sắm tại đây.','Giám đốc điều hành Microsoft'),('vi',2,'Retha Deowalim','Trải nghiệm tuyệt vời với cửa hàng này. Sản phẩm chất lượng cao và dịch vụ xuất sắc. Tôi khuyên mọi người nên mua sắm tại đây.','Giám đốc điều hành Apple'),('vi',3,'Sam J. Wasim','Trải nghiệm tuyệt vời với cửa hàng này. Sản phẩm chất lượng cao và dịch vụ xuất sắc. Tôi khuyên mọi người nên mua sắm tại đây.','Nhà sáng lập Pio'),('vi',4,'Usan Gulwarm','Trải nghiệm tuyệt vời với cửa hàng này. Sản phẩm chất lượng cao và dịch vụ xuất sắc. Tôi khuyên mọi người nên mua sắm tại đây.','Giám đốc điều hành Facewarm');
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `sessions_invalidated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@company.com',NULL,NULL,'$2y$12$CZAQJj.PRsufvC5Q1ZypA.8ucp7QfxEe/DoXbCxhD13NtammepFzC',NULL,'2026-06-27 16:42:26','2026-06-27 16:42:26','System','Admin','admin',NULL,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `widgets_unique_index` (`theme`,`sidebar_id`,`widget_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','shopwise',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(2,'CustomMenuWidget','footer_sidebar','shopwise',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(3,'CustomMenuWidget','footer_sidebar','shopwise',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(4,'BlogSearchWidget','primary_sidebar','shopwise',0,'{\"id\":\"BlogSearchWidget\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(5,'BlogCategoriesWidget','primary_sidebar','shopwise',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":10}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(6,'RecentPostsWidget','primary_sidebar','shopwise',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(7,'TagsWidget','primary_sidebar','shopwise',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(8,'CustomMenuWidget','footer_sidebar','shopwise-ar',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0645\\u0641\\u064a\\u062f\\u0629\",\"menu_id\":\"useful-links-ar\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(9,'CustomMenuWidget','footer_sidebar','shopwise-ar',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"\\u0627\\u0644\\u0641\\u0626\\u0627\\u062a\",\"menu_id\":\"categories-ar\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(10,'CustomMenuWidget','footer_sidebar','shopwise-ar',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"\\u062d\\u0633\\u0627\\u0628\\u064a\",\"menu_id\":\"my-account-ar\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(11,'BlogCategoriesWidget','primary_sidebar','shopwise-ar',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"\\u0627\\u0644\\u0641\\u0626\\u0627\\u062a\",\"number_display\":10}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(12,'BlogSearchWidget','primary_sidebar','shopwise-ar',0,'{\"id\":\"BlogSearchWidget\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(13,'RecentPostsWidget','primary_sidebar','shopwise-ar',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u0642\\u0627\\u0644\\u0627\\u062a\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(14,'TagsWidget','primary_sidebar','shopwise-ar',4,'{\"id\":\"TagsWidget\",\"name\":\"\\u0627\\u0644\\u0648\\u0633\\u0648\\u0645\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(15,'CustomMenuWidget','footer_sidebar','shopwise-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft h\\u1eefu \\u00edch\",\"menu_id\":\"useful-links-vi\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(16,'CustomMenuWidget','footer_sidebar','shopwise-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c\",\"menu_id\":\"categories-vi\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(17,'CustomMenuWidget','footer_sidebar','shopwise-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"T\\u00e0i kho\\u1ea3n\",\"menu_id\":\"my-account-vi\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(18,'BlogCategoriesWidget','primary_sidebar','shopwise-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\",\"number_display\":10}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(19,'BlogSearchWidget','primary_sidebar','shopwise-vi',0,'{\"id\":\"BlogSearchWidget\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(20,'RecentPostsWidget','primary_sidebar','shopwise-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(21,'TagsWidget','primary_sidebar','shopwise-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Th\\u1ebb\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(22,'CustomMenuWidget','footer_sidebar','shopwise-fr',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Liens utiles\",\"menu_id\":\"useful-links-fr\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(23,'CustomMenuWidget','footer_sidebar','shopwise-fr',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Cat\\u00e9gories\",\"menu_id\":\"categories-fr\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(24,'CustomMenuWidget','footer_sidebar','shopwise-fr',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Mon compte\",\"menu_id\":\"my-account-fr\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(25,'BlogCategoriesWidget','primary_sidebar','shopwise-fr',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Cat\\u00e9gories\",\"number_display\":10}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(26,'BlogSearchWidget','primary_sidebar','shopwise-fr',0,'{\"id\":\"BlogSearchWidget\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(27,'RecentPostsWidget','primary_sidebar','shopwise-fr',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Articles r\\u00e9cents\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(28,'TagsWidget','primary_sidebar','shopwise-fr',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(29,'CustomMenuWidget','footer_sidebar','shopwise-id',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Tautan Berguna\",\"menu_id\":\"useful-links-id\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(30,'CustomMenuWidget','footer_sidebar','shopwise-id',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Kategori\",\"menu_id\":\"categories-id\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(31,'CustomMenuWidget','footer_sidebar','shopwise-id',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Akun Saya\",\"menu_id\":\"my-account-id\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(32,'BlogCategoriesWidget','primary_sidebar','shopwise-id',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Kategori\",\"number_display\":10}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(33,'BlogSearchWidget','primary_sidebar','shopwise-id',0,'{\"id\":\"BlogSearchWidget\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(34,'RecentPostsWidget','primary_sidebar','shopwise-id',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Postingan Terbaru\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(35,'TagsWidget','primary_sidebar','shopwise-id',4,'{\"id\":\"TagsWidget\",\"name\":\"Tag\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(36,'CustomMenuWidget','footer_sidebar','shopwise-tr',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Faydal\\u0131 Ba\\u011flant\\u0131lar\",\"menu_id\":\"useful-links-tr\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(37,'CustomMenuWidget','footer_sidebar','shopwise-tr',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Kategoriler\",\"menu_id\":\"categories-tr\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(38,'CustomMenuWidget','footer_sidebar','shopwise-tr',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Hesab\\u0131m\",\"menu_id\":\"my-account-tr\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(39,'BlogCategoriesWidget','primary_sidebar','shopwise-tr',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Kategoriler\",\"number_display\":10}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(40,'BlogSearchWidget','primary_sidebar','shopwise-tr',0,'{\"id\":\"BlogSearchWidget\"}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(41,'RecentPostsWidget','primary_sidebar','shopwise-tr',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Son Yaz\\u0131lar\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41'),(42,'TagsWidget','primary_sidebar','shopwise-tr',4,'{\"id\":\"TagsWidget\",\"name\":\"Etiketler\",\"number_display\":5}','2026-06-27 16:42:41','2026-06-27 16:42:41');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-28  6:42:43
