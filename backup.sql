-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: wp_blog
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2018-11-02 04:31:36','2018-11-02 04:31:36','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:8080','yes'),(2,'home','http://localhost:8080','yes'),(3,'blogname','blog','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','admin@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:2:{i:0;s:49:\"custom-post-type-maker/custom-post-type-maker.php\";i:1;s:15:\"details-cpt.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:3:{i:0;s:62:\"/var/www/html/blog/wp-content/themes/unite-child/functions.php\";i:2;s:58:\"/var/www/html/blog/wp-content/themes/unite-child/style.css\";i:3;s:0:\"\";}','no'),(40,'template','unite','yes'),(41,'stylesheet','unite-child','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','0','yes'),(93,'initial_db_version','38590','yes'),(94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'sidebars_widgets','a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:8:\"search-2\";i:1;s:13:\"custom_html-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}s:5:\"home1\";a:0:{}s:5:\"home2\";a:0:{}s:5:\"home3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'nonce_key',' .roUL?S1z@k#r TS/zLR#1>xP<Y+4dE6tPvR~RNRr2kz:#g|mHU:$9zv:6Q><BO','no'),(109,'nonce_salt','=zg GcO|}W?kZ>a=t#tIj@w=sRCkJsHiH&+,|_bXu-k*O2STPoF3~7H~GB9HAN%.','no'),(110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_custom_html','a:2:{i:2;a:2:{s:5:\"title\";s:11:\"Last movies\";s:7:\"content\";s:12:\"[lastmovies]\";}s:12:\"_multiwidget\";i:1;}','yes'),(113,'cron','a:5:{i:1541363525;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1541392325;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1541392421;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541436151;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(115,'auth_key','$+4~L8#DQ/`TonU|:YC)uub[RPR$Z_ibXF/O,7181,5pw@L:LocDsh2J N >r6)^','no'),(116,'auth_salt','G6FE{e=GNmx?^NxzPU!kYI,/%Q-00T)*9yd,L%.!Ti?*?OJ)=Tgm)%jV<9pIE7)<','no'),(117,'logged_in_key','`32t0:hj:{?EJ?_fjPIH{k*Cqkyr:ME|frXQ;D W2!@dXvEq|GofQ=9`9?q5raga','no'),(118,'logged_in_salt','!;6:<I~;OMNwHhjcrBGpaFU!jl(!A`%62ZGitM`Qy>MGG+y}O_}-}+A,<|<suIV$','no'),(119,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1541350467;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}','no'),(125,'_site_transient_timeout_browser_6a356487460bec0330715c878bc279a2','1541737958','no'),(126,'_site_transient_browser_6a356487460bec0330715c878bc279a2','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(127,'can_compress_scripts','1','no'),(134,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1541350471;s:7:\"checked\";a:5:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:11:\"unite-child\";s:5:\"1.0.0\";s:5:\"unite\";s:5:\"2.0.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(135,'theme_mods_twentyseventeen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541133969;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(136,'current_theme','Unite Child','yes'),(137,'theme_mods_unite','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541176154;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:5:\"home1\";a:0:{}s:5:\"home2\";a:0:{}s:5:\"home3\";a:0:{}}}}','yes'),(138,'theme_switched','','yes'),(139,'widget_unite_tabbed_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(140,'widget_unite-social','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(160,'theme_mods_unite-child','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:9;}s:18:\"custom_css_post_id\";i:-1;}','yes'),(169,'category_children','a:0:{}','yes'),(170,'_transient_timeout_plugin_slugs','1541307928','no'),(171,'_transient_plugin_slugs','a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:49:\"custom-post-type-maker/custom-post-type-maker.php\";i:2;s:15:\"details-cpt.php\";i:3;s:9:\"hello.php\";}','no'),(172,'recently_activated','a:0:{}','yes'),(176,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1541350471;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:49:\"custom-post-type-maker/custom-post-type-maker.php\";s:5:\"1.1.6\";s:15:\"details-cpt.php\";s:1:\"1\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"custom-post-type-maker/custom-post-type-maker.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/custom-post-type-maker\";s:4:\"slug\";s:22:\"custom-post-type-maker\";s:6:\"plugin\";s:49:\"custom-post-type-maker/custom-post-type-maker.php\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/custom-post-type-maker/\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/plugin/custom-post-type-maker.1.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-maker/assets/icon-256x256.png?rev=1594742\";s:2:\"1x\";s:67:\"https://ps.w.org/custom-post-type-maker/assets/icon.svg?rev=1594742\";s:3:\"svg\";s:67:\"https://ps.w.org/custom-post-type-maker/assets/icon.svg?rev=1594742\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/custom-post-type-maker/assets/banner-1544x500.png?rev=1603227\";s:2:\"1x\";s:77:\"https://ps.w.org/custom-post-type-maker/assets/banner-772x250.png?rev=1603227\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(177,'cptm_plugin_settings_changed','','yes'),(206,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:9;}}','yes'),(294,'_site_transient_timeout_theme_roots','1541352269','no'),(295,'_site_transient_theme_roots','a:5:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:11:\"unite-child\";s:7:\"/themes\";s:5:\"unite\";s:7:\"/themes\";}','no'),(301,'Actors_children','a:0:{}','yes'),(302,'_transient_is_multi_author','0','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(7,8,'_edit_last','1'),(8,8,'_edit_lock','1541361465:1'),(9,8,'cptm_name','Film'),(10,8,'cptm_label',''),(11,8,'cptm_singular_name','Movies'),(12,8,'cptm_description',''),(13,8,'cptm_icon_slug',''),(14,8,'cptm_icon_url',''),(15,8,'cptm_public','1'),(16,8,'cptm_show_ui','1'),(17,8,'cptm_has_archive','0'),(18,8,'cptm_exclude_from_search','0'),(19,8,'cptm_capability_type','page'),(20,8,'cptm_hierarchical','1'),(21,8,'cptm_rewrite','1'),(22,8,'cptm_withfront','1'),(23,8,'cptm_feeds','1'),(24,8,'cptm_pages','1'),(25,8,'cptm_custom_rewrite_slug',''),(26,8,'cptm_query_var','1'),(27,8,'cptm_show_in_rest','1'),(28,8,'cptm_publicly_queryable','1'),(29,8,'cptm_menu_position','20'),(30,8,'cptm_show_in_menu','1'),(31,8,'cptm_supports','a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:13:\"custom-fields\";i:3;s:8:\"comments\";}'),(32,8,'cptm_builtin_taxonomies','a:0:{}'),(33,8,'cptm_tax_post_types','a:0:{}'),(34,9,'_edit_last','1'),(35,9,'_edit_lock','1541180883:1'),(36,9,'cptm_supports','a:0:{}'),(37,9,'cptm_builtin_taxonomies','a:0:{}'),(38,9,'cptm_tax_name','Genre'),(39,9,'cptm_tax_label',''),(40,9,'cptm_tax_singular_name',''),(41,9,'cptm_tax_show_ui','1'),(42,9,'cptm_tax_hierarchical','0'),(43,9,'cptm_tax_rewrite','1'),(44,9,'cptm_tax_custom_rewrite_slug',''),(45,9,'cptm_tax_query_var','1'),(46,9,'cptm_tax_show_in_rest','1'),(47,9,'cptm_tax_show_admin_column','1'),(48,9,'cptm_tax_post_types','a:1:{i:0;s:4:\"film\";}'),(49,10,'_edit_last','1'),(50,10,'cptm_supports','a:0:{}'),(51,10,'cptm_builtin_taxonomies','a:0:{}'),(52,10,'cptm_tax_name','Country'),(53,10,'cptm_tax_label',''),(54,10,'cptm_tax_singular_name',''),(55,10,'cptm_tax_show_ui','1'),(56,10,'cptm_tax_hierarchical','0'),(57,10,'cptm_tax_rewrite','1'),(58,10,'cptm_tax_custom_rewrite_slug',''),(59,10,'cptm_tax_query_var','1'),(60,10,'cptm_tax_show_in_rest','1'),(61,10,'cptm_tax_show_admin_column','1'),(62,10,'cptm_tax_post_types','a:1:{i:0;s:4:\"film\";}'),(63,10,'_edit_lock','1541180960:1'),(64,11,'_edit_last','1'),(65,11,'cptm_supports','a:0:{}'),(66,11,'cptm_builtin_taxonomies','a:0:{}'),(67,11,'cptm_tax_name','Year'),(68,11,'cptm_tax_label',''),(69,11,'cptm_tax_singular_name',''),(70,11,'cptm_tax_show_ui','1'),(71,11,'cptm_tax_hierarchical','0'),(72,11,'cptm_tax_rewrite','1'),(73,11,'cptm_tax_custom_rewrite_slug',''),(74,11,'cptm_tax_query_var','1'),(75,11,'cptm_tax_show_in_rest','1'),(76,11,'cptm_tax_show_admin_column','1'),(77,11,'cptm_tax_post_types','a:1:{i:0;s:4:\"film\";}'),(78,11,'_edit_lock','1541180991:1'),(79,12,'_edit_last','1'),(80,12,'_edit_lock','1541186118:1'),(81,12,'cptm_supports','a:0:{}'),(82,12,'cptm_builtin_taxonomies','a:0:{}'),(83,12,'cptm_tax_name','Actors'),(84,12,'cptm_tax_label',''),(85,12,'cptm_tax_singular_name',''),(86,12,'cptm_tax_show_ui','1'),(87,12,'cptm_tax_hierarchical','1'),(88,12,'cptm_tax_rewrite','1'),(89,12,'cptm_tax_custom_rewrite_slug',''),(90,12,'cptm_tax_query_var','1'),(91,12,'cptm_tax_show_in_rest','1'),(92,12,'cptm_tax_show_admin_column','1'),(93,12,'cptm_tax_post_types','a:2:{i:0;s:4:\"post\";i:1;s:4:\"film\";}'),(94,2,'_edit_lock','1541181247:1'),(95,18,'_edit_last','1'),(96,18,'_edit_lock','1541197409:1'),(97,18,'post_views_count','22'),(98,1,'post_views_count','9'),(99,24,'_edit_last','1'),(100,24,'_edit_lock','1541197477:1'),(101,24,'cptm_name','price'),(102,24,'post_views_count','16'),(103,18,'Price','27.8'),(104,26,'_wp_trash_meta_status','publish'),(105,26,'_wp_trash_meta_time','1541188568'),(115,28,'_menu_item_type','post_type'),(116,28,'_menu_item_menu_item_parent','0'),(117,28,'_menu_item_object_id','2'),(118,28,'_menu_item_object','page'),(119,28,'_menu_item_target',''),(120,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(121,28,'_menu_item_xfn',''),(122,28,'_menu_item_url',''),(124,24,'_wp_trash_meta_status','publish'),(125,24,'_wp_trash_meta_time','1541197765'),(126,24,'_wp_desired_post_slug','24-2'),(127,18,'_wp_trash_meta_status','publish'),(128,18,'_wp_trash_meta_time','1541197769'),(129,18,'_wp_desired_post_slug','ksdd'),(130,30,'_edit_last','1'),(131,30,'_edit_lock','1541199262:1'),(132,30,'price','2.88'),(133,30,'ticket','all'),(134,30,'post_views_count','34'),(135,33,'_edit_last','1'),(136,33,'_edit_lock','1541203424:1'),(137,33,'price','12'),(138,33,'release','12/23/12334'),(139,34,'_edit_last','1'),(140,34,'_edit_lock','1541203539:1'),(141,34,'price','123'),(142,34,'release','12/23/1111'),(143,34,'post_views_count','29'),(144,35,'_edit_last','1'),(145,35,'_edit_lock','1541306701:1'),(146,35,'_wp_page_template','default'),(156,35,'_wp_trash_meta_status','publish'),(157,35,'_wp_trash_meta_time','1541307532'),(158,35,'_wp_desired_post_slug','last-movies'),(159,40,'_menu_item_type','custom'),(160,40,'_menu_item_menu_item_parent','0'),(161,40,'_menu_item_object_id','40'),(162,40,'_menu_item_object','custom'),(163,40,'_menu_item_target',''),(164,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(165,40,'_menu_item_xfn',''),(166,40,'_menu_item_url','http://localhost:8080/?post_type=film'),(167,33,'_wp_trash_meta_status','draft'),(168,33,'_wp_trash_meta_time','1541361630'),(169,33,'_wp_desired_post_slug',''),(170,34,'_wp_trash_meta_status','publish'),(171,34,'_wp_trash_meta_time','1541361630'),(172,34,'_wp_desired_post_slug','lolo'),(173,30,'_wp_trash_meta_status','publish'),(174,30,'_wp_trash_meta_time','1541361631'),(175,30,'_wp_desired_post_slug','test'),(176,41,'_edit_last','1'),(177,41,'_edit_lock','1541361628:1'),(178,41,'price','12.89'),(179,41,'release','20/02/2019'),(180,42,'_edit_last','1'),(181,42,'_edit_lock','1541361764:1'),(182,42,'price','4.28'),(183,42,'release','12/06/2014'),(184,43,'_edit_last','1'),(185,43,'_edit_lock','1541362019:1'),(186,43,'price','4.25'),(187,43,'release','20/10/2010');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2018-11-02 04:31:36','2018-11-02 04:31:36','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2018-11-02 04:31:36','2018-11-02 04:31:36','',0,'http://localhost:8080/?p=1',0,'post','',1),(2,1,'2018-11-02 04:31:36','2018-11-02 04:31:36','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8080/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2018-11-02 04:31:36','2018-11-02 04:31:36','',0,'http://localhost:8080/?page_id=2',0,'page','',0),(3,1,'2018-11-02 04:31:36','2018-11-02 04:31:36','<h2>Who we are</h2><p>Our website address is: http://localhost:8080.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>','Privacy Policy','','draft','closed','open','','privacy-policy','','','2018-11-02 04:31:36','2018-11-02 04:31:36','',0,'http://localhost:8080/?page_id=3',0,'page','',0),(4,1,'2018-11-02 04:32:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-11-02 04:32:39','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=4',0,'post','',0),(6,1,'2018-11-02 16:42:31','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-11-02 16:42:31','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=6',0,'post','',0),(8,1,'2018-11-02 16:56:43','2018-11-02 16:56:43','','Film','','publish','closed','closed','','film','','','2018-11-03 17:18:02','2018-11-03 17:18:02','',0,'http://localhost:8080/?post_type=cptm&#038;p=8',0,'cptm','',0),(9,1,'2018-11-02 17:50:21','2018-11-02 17:50:21','','','','publish','closed','closed','','9','','','2018-11-02 17:50:21','2018-11-02 17:50:21','',0,'http://localhost:8080/?post_type=cptm_tax&#038;p=9',0,'cptm_tax','',0),(10,1,'2018-11-02 17:51:33','2018-11-02 17:51:33','','','','publish','closed','closed','','10','','','2018-11-02 17:51:33','2018-11-02 17:51:33','',0,'http://localhost:8080/?post_type=cptm_tax&#038;p=10',0,'cptm_tax','',0),(11,1,'2018-11-02 17:52:08','2018-11-02 17:52:08','','','','publish','closed','closed','','11','','','2018-11-02 17:52:08','2018-11-02 17:52:08','',0,'http://localhost:8080/?post_type=cptm_tax&#038;p=11',0,'cptm_tax','',0),(12,1,'2018-11-02 17:52:42','2018-11-02 17:52:42','','Actors','','publish','closed','closed','','12','','','2018-11-02 19:17:36','2018-11-02 19:17:36','',0,'http://localhost:8080/?post_type=cptm_tax&#038;p=12',0,'cptm_tax','',0),(13,1,'2018-11-02 17:59:11','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-11-02 17:59:11','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=film&p=13',0,'film','',0),(14,1,'2018-11-02 18:03:32','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-11-02 18:03:32','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=film&p=14',0,'film','',0),(15,1,'2018-11-02 18:04:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-11-02 18:04:13','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=film&p=15',0,'film','',0),(16,1,'2018-11-02 18:28:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-11-02 18:28:18','0000-00-00 00:00:00','',0,'http://localhost:8080/?page_id=16',0,'page','',0),(17,1,'2018-11-02 18:29:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-11-02 18:29:07','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=17',0,'post','',0),(18,1,'2018-11-02 18:41:07','2018-11-02 18:41:07','This a test description','post cusmndd','','trash','closed','closed','','ksdd__trashed','','','2018-11-02 22:29:29','2018-11-02 22:29:29','',0,'http://localhost:8080/?post_type=film&#038;p=18',0,'film','',0),(19,1,'2018-11-02 18:46:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-11-02 18:46:15','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=film&p=19',0,'film','',0),(20,1,'2018-11-02 21:39:12','2018-11-02 21:39:12','This a test description','post cusmndd','','inherit','closed','closed','','18-autosave-v1','','','2018-11-02 21:39:12','2018-11-02 21:39:12','',18,'http://localhost:8080/?p=20',0,'revision','',0),(21,1,'2018-11-02 19:17:28','2018-11-02 19:17:28','','Actors','','inherit','closed','closed','','12-autosave-v1','','','2018-11-02 19:17:28','2018-11-02 19:17:28','',12,'http://localhost:8080/?p=21',0,'revision','',0),(22,1,'2018-11-02 19:23:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-11-02 19:23:24','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=22',0,'post','',0),(23,1,'2018-11-02 19:23:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-11-02 19:23:30','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=23',0,'post','',0),(24,1,'2018-11-02 19:25:43','2018-11-02 19:25:43','','test custom','','trash','closed','closed','','24-2__trashed','','','2018-11-02 22:29:25','2018-11-02 22:29:25','',0,'http://localhost:8080/?post_type=film&#038;p=24',0,'film','',0),(26,1,'2018-11-02 19:56:08','2018-11-02 19:56:08','{\n    \"nav_menu[9]\": {\n        \"value\": {\n            \"name\": \"films\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-02 19:56:08\"\n    }\n}','','','trash','closed','closed','','1c528ac3-edb2-4b72-833d-867c5f80fcd4','','','2018-11-02 19:56:08','2018-11-02 19:56:08','',0,'http://localhost:8080/?p=26',0,'customize_changeset','',0),(28,1,'2018-11-02 20:15:34','2018-11-02 20:15:34',' ','','','publish','closed','closed','','28','','','2018-11-04 05:06:20','2018-11-04 05:06:20','',0,'http://localhost:8080/?p=28',1,'nav_menu_item','',0),(29,1,'2018-11-02 20:56:30','2018-11-02 20:56:30','<code><?php the_meta(); ?></code>','test custom','','inherit','closed','closed','','24-autosave-v1','','','2018-11-02 20:56:30','2018-11-02 20:56:30','',24,'http://localhost:8080/?p=29',0,'revision','',0),(30,1,'2018-11-02 22:32:16','2018-11-02 22:32:16','Description film','test','','trash','open','closed','','test__trashed','','','2018-11-04 20:00:31','2018-11-04 20:00:31','',0,'http://localhost:8080/?post_type=film&#038;p=30',0,'film','',0),(31,1,'2018-11-02 22:52:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2018-11-02 22:52:43','0000-00-00 00:00:00','',0,'http://localhost:8080/?page_id=31',0,'page','',0),(32,1,'2018-11-02 22:55:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-11-02 22:55:33','0000-00-00 00:00:00','',0,'http://localhost:8080/?post_type=film&p=32',0,'film','',0),(33,1,'2018-11-04 20:00:30','2018-11-04 20:00:30','defrcgvvgg bbhbh','lolo','','trash','open','open','','__trashed','','','2018-11-04 20:00:30','2018-11-04 20:00:30','',0,'http://localhost:8080/?post_type=film&#038;p=33',0,'film','',0),(34,1,'2018-11-03 00:07:57','2018-11-03 00:07:57','asd adsf adf ','lolo','','trash','open','closed','','lolo__trashed','','','2018-11-04 20:00:30','2018-11-04 20:00:30','',0,'http://localhost:8080/?post_type=film&#038;p=34',0,'film','',0),(35,1,'2018-11-04 04:16:58','2018-11-04 04:16:58','[helloworld]','Last movies','','trash','closed','closed','','last-movies__trashed','','','2018-11-04 04:58:52','2018-11-04 04:58:52','',0,'http://localhost:8080/?page_id=35',0,'page','',0),(36,1,'2018-11-04 04:04:48','2018-11-04 04:04:48','[helloworld]','Last movies','','inherit','closed','closed','','35-revision-v1','','','2018-11-04 04:04:48','2018-11-04 04:04:48','',35,'http://localhost:8080/?p=36',0,'revision','',0),(39,1,'2018-11-04 04:46:01','0000-00-00 00:00:00','{\n    \"unite-child::nav_menu_locations[social-menu]\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-04 04:46:01\"\n    },\n    \"nav_menu_item[27]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-04 04:44:01\"\n    },\n    \"unite-child::nav_menu_locations[footer-links]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-04 04:46:01\"\n    },\n    \"nav_menu_item[28]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8080/?page_id=2\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 9,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Sample Page\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-04 04:45:01\"\n    },\n    \"nav_menu_item[37]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 35,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8080/?page_id=35\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 9,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Last movies\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-04 04:45:01\"\n    }\n}','','','auto-draft','closed','closed','','e3fbb7ab-03c3-4d1b-83fd-f909020fad3d','','','2018-11-04 04:46:01','2018-11-04 04:46:01','',0,'http://localhost:8080/?p=39',0,'customize_changeset','',0),(40,1,'2018-11-04 05:06:20','2018-11-04 05:06:20','','Movies','','publish','closed','closed','','movies','','','2018-11-04 05:06:20','2018-11-04 05:06:20','',0,'http://localhost:8080/?p=40',2,'nav_menu_item','',0),(41,1,'2018-11-04 20:02:44','2018-11-04 20:02:44','a short description of the film...','Follow me','','publish','open','closed','','follow-me','','','2018-11-04 20:02:44','2018-11-04 20:02:44','',0,'http://localhost:8080/?post_type=film&#038;p=41',0,'film','',0),(42,1,'2018-11-04 20:05:03','2018-11-04 20:05:03','in a far far away land a samurai...','Samurai','','publish','open','closed','','samurai','','','2018-11-04 20:05:03','2018-11-04 20:05:03','',0,'http://localhost:8080/?post_type=film&#038;p=42',0,'film','',0),(43,1,'2018-11-04 20:06:59','2018-11-04 20:06:59','a pretty woman walking down the street','Pretty woman','','publish','open','closed','','pretty-woman','','','2018-11-04 20:06:59','2018-11-04 20:06:59','',0,'http://localhost:8080/?post_type=film&#038;p=43',0,'film','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(18,2,0),(18,4,0),(18,5,0),(18,6,0),(18,10,0),(24,3,0),(24,7,0),(24,8,0),(28,9,0),(30,3,0),(30,4,0),(30,5,0),(30,6,0),(34,5,0),(34,11,0),(34,12,0),(34,13,0),(40,9,0),(41,3,0),(41,5,0),(41,8,0),(41,14,0),(41,15,0),(42,2,0),(42,3,0),(42,8,0),(42,16,0),(42,18,0),(42,19,0),(43,2,0),(43,8,0),(43,20,0),(43,21,0),(43,22,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'Genre','',0,2),(3,3,'Genre','',0,2),(4,4,'Year','',0,0),(5,5,'Actors','',0,1),(6,6,'Country','',0,0),(7,7,'Year','',0,0),(8,8,'Country','',0,3),(9,9,'nav_menu','',0,2),(10,10,'post_tag','',0,1),(11,11,'Year','',0,0),(12,12,'Country','',0,0),(13,13,'Genre','',0,0),(14,14,'Actors','',0,1),(15,15,'Year','',0,1),(16,16,'Actors','',0,1),(17,17,'Actors','',0,0),(18,18,'Year','',0,1),(19,19,'Country','',0,1),(20,20,'Actors','',0,1),(21,21,'Year','',0,1),(22,22,'Genre','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Drama','drama',0),(3,'Action','action',0),(4,'2009','2009',0),(5,'colin','colin',0),(6,'cuba','cuba',0),(7,'1000','1000',0),(8,'usa','usa',0),(9,'films','films',0),(10,'th','th',0),(11,'2344','2344',0),(12,'asa','asa',0),(13,'233d','233d',0),(14,'salma hayek','salma-hayek',0),(15,'2019','2019',0),(16,'tom cruise','tom-cruise',0),(17,'2014','2014',0),(18,'2014','2014',0),(19,'Japan','japan',0),(20,'julia roberts','julia-roberts',0),(21,'2010','2010',0),(22,'comedy','comedy',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers','wp496_privacy,theme_editor_notice'),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"c3b48709063b774789a526400d312aa71472d69f394107370242b7183621cd49\";a:4:{s:10:\"expiration\";i:1541478798;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1541305998;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(19,1,'metaboxhidden_nav-menus','a:6:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";i:2;s:10:\"add-Actors\";i:3;s:8:\"add-Year\";i:4;s:11:\"add-Country\";i:5;s:9:\"add-Genre\";}'),(20,1,'closedpostboxes_page','a:1:{i:0;s:15:\"siderbar-layout\";}'),(21,1,'metaboxhidden_page','a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),(22,1,'closedpostboxes_nav-menus','a:0:{}'),(23,1,'edit_cptm_per_page','20'),(24,1,'wp_user-settings','posts_list_mode=list&editor=tinymce'),(25,1,'wp_user-settings-time','1541306470'),(26,1,'edit_cptm_tax_per_page','20'),(27,1,'manageedit-filmcolumnshidden','a:2:{i:0;s:4:\"tags\";i:1;s:4:\"date\";}'),(28,1,'edit_film_per_page','20'),(29,1,'nav_menu_recently_edited','9'),(30,1,'closedpostboxes_film','a:1:{i:0;s:13:\"trackbacksdiv\";}'),(31,1,'metaboxhidden_film','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BMUvN4aRRmt2qURalLob3xrTIwqu1E0','admin','admin@gmail.com','','2018-11-02 04:31:36','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-04 18:22:55
