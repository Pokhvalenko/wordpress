-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-08-04 07:53:39','2021-08-04 07:53:39','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://scratch.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://scratch.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','scratch','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','pokhvalenkosvyat@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','awesomeTheme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','awesomeTheme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','24','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','8','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1643615616','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:4:{i:2;a:1:{s:7:\"content\";s:83:\"<!-- wp:search {\"label\":\"Search\",\"placeholder\":\"Search\",\"buttonText\":\"Search\"} /-->\";}i:5;a:1:{s:7:\"content\";s:152:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2>Archives</h2>\n<!-- /wp:heading -->\n\n<!-- wp:archives /--></div>\n<!-- /wp:group -->\";}i:8;a:1:{s:7:\"content\";s:83:\"<!-- wp:search {\"label\":\"Search\",\"placeholder\":\"Search\",\"buttonText\":\"Search\"} /-->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:7:\"block-8\";}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-5\";i:2;s:10:\"nav_menu-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:6:{i:1628693621;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1628711621;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1628754820;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628754876;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628754877;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','};GML! _gOs-wUteq7Ig%OSf|.lfXNhs2Q?/mX))I8`.,]nmb(3!t}lM#{TT.maL','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','e520{Np%c.JD~gOt.=y_%^wlV=`/m0F}h%1iII<DgN)?IzofRzX4k*3T5,%;[*(S','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:2:{i:2;a:2:{s:5:\"title\";s:4:\"Menu\";s:8:\"nav_menu\";i:3;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1628740920;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1628668430;s:7:\"checked\";a:4:{s:12:\"awesomeTheme\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (127,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1628084845;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (145,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (148,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (153,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (154,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (157,'theme_mods_awesomeTheme','a:9:{s:18:\"custom_css_post_id\";i:70;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:3;}s:16:\"background_image\";s:0:\"\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"bottom\";s:15:\"background_size\";s:7:\"contain\";s:16:\"background_color\";s:6:\"afafaf\";s:12:\"header_image\";s:13:\"remove-header\";s:16:\"header_textcolor\";s:6:\"ffffff\";}','yes');
INSERT INTO `wp_options` VALUES (162,'current_theme','Awesome Theme','yes');
INSERT INTO `wp_options` VALUES (163,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (164,'theme_switched_via_customizer','','yes');
INSERT INTO `wp_options` VALUES (165,'customize_stashed_theme_mods','a:0:{}','no');
INSERT INTO `wp_options` VALUES (174,'recovery_mode_email_last_sent','1628103680','yes');
INSERT INTO `wp_options` VALUES (175,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (191,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":3,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (207,'_site_transient_timeout_browser_a02ae86a42ae172822f307e07a0629f8','1628775551','no');
INSERT INTO `wp_options` VALUES (208,'_site_transient_browser_a02ae86a42ae172822f307e07a0629f8','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.131\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (219,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1628668430;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:1:{s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";}}','no');
INSERT INTO `wp_options` VALUES (220,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (318,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (397,'_site_transient_timeout_theme_roots','1628670229','no');
INSERT INTO `wp_options` VALUES (398,'_site_transient_theme_roots','a:4:{s:12:\"awesomeTheme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (402,'_transient_doing_cron','1628740919.1346409320831298828125','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (4,5,'_wp_trash_meta_time','1628084846');
INSERT INTO `wp_postmeta` VALUES (5,6,'_edit_lock','1628230655:1');
INSERT INTO `wp_postmeta` VALUES (6,8,'_edit_lock','1628615682:1');
INSERT INTO `wp_postmeta` VALUES (7,10,'_edit_lock','1628231415:1');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (9,2,'_wp_trash_meta_time','1628103205');
INSERT INTO `wp_postmeta` VALUES (10,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (11,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (12,3,'_wp_trash_meta_time','1628103210');
INSERT INTO `wp_postmeta` VALUES (13,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (41,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (42,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (43,17,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (44,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (45,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (46,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (47,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (48,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (50,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (51,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (52,18,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (53,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (54,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (55,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (56,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (57,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,19,'_edit_lock','1628627982:1');
INSERT INTO `wp_postmeta` VALUES (62,21,'_edit_lock','1628568041:1');
INSERT INTO `wp_postmeta` VALUES (65,24,'_edit_lock','1628106821:1');
INSERT INTO `wp_postmeta` VALUES (66,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (67,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (68,26,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (69,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (70,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (71,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (72,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (73,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (75,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (76,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (77,27,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (78,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (79,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (80,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (81,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (82,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (84,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (85,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (86,28,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (87,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (88,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (89,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (90,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (91,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (93,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (94,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (95,29,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (96,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (97,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (98,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (99,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (100,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (102,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (103,6,'_wp_page_template','page-notitle.php');
INSERT INTO `wp_postmeta` VALUES (104,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (105,10,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (106,30,'_wp_attached_file','2021/08/pexels-henry-co-1939485-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (107,30,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:42:\"2021/08/pexels-henry-co-1939485-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"pexels-henry-co-1939485-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"pexels-henry-co-1939485-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"pexels-henry-co-1939485-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"pexels-henry-co-1939485-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"pexels-henry-co-1939485-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:37:\"pexels-henry-co-1939485-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:27:\"pexels-henry-co-1939485.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (108,30,'_wp_attachment_is_custom_background','awesomeTheme');
INSERT INTO `wp_postmeta` VALUES (109,31,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (110,31,'_wp_trash_meta_time','1628231941');
INSERT INTO `wp_postmeta` VALUES (111,32,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (112,32,'_wp_trash_meta_time','1628231970');
INSERT INTO `wp_postmeta` VALUES (113,33,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (114,33,'_wp_trash_meta_time','1628232000');
INSERT INTO `wp_postmeta` VALUES (115,30,'_wp_attachment_custom_header_last_used_awesomeTheme','1628232283');
INSERT INTO `wp_postmeta` VALUES (116,30,'_wp_attachment_is_custom_header','awesomeTheme');
INSERT INTO `wp_postmeta` VALUES (117,34,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (118,34,'_wp_trash_meta_time','1628232283');
INSERT INTO `wp_postmeta` VALUES (119,35,'_edit_lock','1628232767:1');
INSERT INTO `wp_postmeta` VALUES (120,36,'_wp_attached_file','2021/08/cook.jpg');
INSERT INTO `wp_postmeta` VALUES (121,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2021/08/cook.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"cook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1594813408\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"100\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (122,37,'_wp_attached_file','2021/08/cropped-cook.jpg');
INSERT INTO `wp_postmeta` VALUES (123,37,'_wp_attachment_context','custom-header');
INSERT INTO `wp_postmeta` VALUES (124,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2021/08/cropped-cook.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-cook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1594813408\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"100\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:36;}');
INSERT INTO `wp_postmeta` VALUES (125,37,'_wp_attachment_custom_header_last_used_awesomeTheme','1628232783');
INSERT INTO `wp_postmeta` VALUES (126,37,'_wp_attachment_is_custom_header','awesomeTheme');
INSERT INTO `wp_postmeta` VALUES (127,35,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (128,35,'_wp_trash_meta_time','1628232783');
INSERT INTO `wp_postmeta` VALUES (129,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (130,21,'_thumbnail_id','67');
INSERT INTO `wp_postmeta` VALUES (135,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,39,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (145,39,'_wp_trash_meta_time','1628248680');
INSERT INTO `wp_postmeta` VALUES (146,40,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (147,40,'_wp_trash_meta_time','1628250203');
INSERT INTO `wp_postmeta` VALUES (148,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (149,8,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (150,42,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (151,42,'_wp_trash_meta_time','1628269335');
INSERT INTO `wp_postmeta` VALUES (152,43,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (153,43,'_wp_trash_meta_time','1628269343');
INSERT INTO `wp_postmeta` VALUES (158,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (161,44,'_edit_lock','1628627935:1');
INSERT INTO `wp_postmeta` VALUES (164,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,47,'_edit_lock','1628567792:1');
INSERT INTO `wp_postmeta` VALUES (168,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (169,49,'_edit_lock','1628668271:1');
INSERT INTO `wp_postmeta` VALUES (180,44,'_wp_old_slug','pakistan-is-failing-its-women');
INSERT INTO `wp_postmeta` VALUES (185,1,'_edit_lock','1628567920:1');
INSERT INTO `wp_postmeta` VALUES (186,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,52,'_wp_attached_file','2021/08/200px-BBC_News_2019.svg_.png');
INSERT INTO `wp_postmeta` VALUES (190,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:36:\"2021/08/200px-BBC_News_2019.svg_.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"200px-BBC_News_2019.svg_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (191,49,'_thumbnail_id','78');
INSERT INTO `wp_postmeta` VALUES (194,47,'_thumbnail_id','65');
INSERT INTO `wp_postmeta` VALUES (197,53,'_wp_attached_file','2021/08/gate.jpg');
INSERT INTO `wp_postmeta` VALUES (198,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2021/08/gate.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"gate-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (199,44,'_thumbnail_id','75');
INSERT INTO `wp_postmeta` VALUES (202,54,'_wp_attached_file','2021/08/Без-названия.png');
INSERT INTO `wp_postmeta` VALUES (203,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:35:\"2021/08/Без-названия.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Без-названия-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (206,19,'_thumbnail_id','76');
INSERT INTO `wp_postmeta` VALUES (209,1,'_thumbnail_id','66');
INSERT INTO `wp_postmeta` VALUES (212,55,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (213,55,'_wp_trash_meta_time','1628416062');
INSERT INTO `wp_postmeta` VALUES (214,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (215,56,'_edit_lock','1628628028:1');
INSERT INTO `wp_postmeta` VALUES (216,56,'_thumbnail_id','76');
INSERT INTO `wp_postmeta` VALUES (219,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (220,58,'_edit_lock','1628480144:1');
INSERT INTO `wp_postmeta` VALUES (221,58,'_thumbnail_id','30');
INSERT INTO `wp_postmeta` VALUES (230,60,'_edit_lock','1628480361:1');
INSERT INTO `wp_postmeta` VALUES (231,60,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (232,60,'_wp_trash_meta_time','1628480379');
INSERT INTO `wp_postmeta` VALUES (244,26,'_wp_old_date','2021-08-04');
INSERT INTO `wp_postmeta` VALUES (245,27,'_wp_old_date','2021-08-04');
INSERT INTO `wp_postmeta` VALUES (246,28,'_wp_old_date','2021-08-04');
INSERT INTO `wp_postmeta` VALUES (247,29,'_wp_old_date','2021-08-04');
INSERT INTO `wp_postmeta` VALUES (248,63,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (249,63,'_wp_trash_meta_time','1628489956');
INSERT INTO `wp_postmeta` VALUES (259,65,'_wp_attached_file','2021/08/news.jpg');
INSERT INTO `wp_postmeta` VALUES (260,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:16:\"2021/08/news.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"news-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"news-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (267,66,'_wp_attached_file','2021/08/view.jpg');
INSERT INTO `wp_postmeta` VALUES (268,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:16:\"2021/08/view.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"view-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"view-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (273,67,'_wp_attached_file','2021/08/tut.jpg');
INSERT INTO `wp_postmeta` VALUES (274,67,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:15:\"2021/08/tut.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"tut-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"tut-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (281,68,'_wp_attached_file','2021/08/view-1.jpg');
INSERT INTO `wp_postmeta` VALUES (282,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2021/08/view-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"view-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"view-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"view-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (287,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (288,69,'_wp_trash_meta_time','1628615803');
INSERT INTO `wp_postmeta` VALUES (291,72,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (292,72,'_wp_trash_meta_time','1628615869');
INSERT INTO `wp_postmeta` VALUES (297,74,'_wp_attached_file','2021/08/programming-evolution.jpg');
INSERT INTO `wp_postmeta` VALUES (298,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1540;s:6:\"height\";i:800;s:4:\"file\";s:33:\"2021/08/programming-evolution.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"programming-evolution-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"programming-evolution-1024x532.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"programming-evolution-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"programming-evolution-768x399.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"programming-evolution-1536x798.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:798;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (301,75,'_wp_attached_file','2021/08/computer.jpg');
INSERT INTO `wp_postmeta` VALUES (302,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:900;s:6:\"height\";i:675;s:4:\"file\";s:20:\"2021/08/computer.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"computer-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"computer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"computer-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (305,76,'_wp_attached_file','2021/08/top-10-programming-languages-2020-Stackscale.jpg');
INSERT INTO `wp_postmeta` VALUES (306,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1470;s:6:\"height\";i:1020;s:4:\"file\";s:56:\"2021/08/top-10-programming-languages-2020-Stackscale.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"top-10-programming-languages-2020-Stackscale-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"top-10-programming-languages-2020-Stackscale-1024x711.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:711;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"top-10-programming-languages-2020-Stackscale-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"top-10-programming-languages-2020-Stackscale-768x533.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (311,77,'_wp_attached_file','2021/08/programming-coding.jpg');
INSERT INTO `wp_postmeta` VALUES (312,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:886;s:4:\"file\";s:30:\"2021/08/programming-coding.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"programming-coding-300x222.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"programming-coding-1024x756.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:756;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"programming-coding-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"programming-coding-768x567.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:567;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:90:\"Programming code abstract technology background of software developer and  Computer script\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:90:\"Programming code abstract technology background of software developer and  Computer script\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:46:{i:0;s:6:\"coding\";i:1;s:8:\"computer\";i:2;s:10:\"technology\";i:3;s:10:\"spider web\";i:4;s:8:\"abstract\";i:5;s:4:\"data\";i:6;s:8:\"internet\";i:7;s:11:\"backgrounds\";i:8;s:4:\"html\";i:9;s:8:\"language\";i:10;s:4:\"blue\";i:11;s:18:\"information medium\";i:12;s:25:\"digitally generated image\";i:13;s:8:\"security\";i:14;s:8:\"business\";i:15;s:26:\"light - natural phenomenon\";i:16;s:5:\"speed\";i:17;s:16:\"computer network\";i:18;s:9:\"exploding\";i:19;s:16:\"computer graphic\";i:20;s:13:\"surface level\";i:21;s:5:\"shape\";i:22;s:6:\"modern\";i:23;s:12:\"illustration\";i:24;s:7:\"science\";i:25;s:10:\"connection\";i:26;s:10:\"futuristic\";i:27;s:11:\"outer space\";i:28;s:6:\"cyborg\";i:29;s:19:\"computer programmer\";i:30;s:4:\"java\";i:31;s:4:\"neon\";i:32;s:11:\"binary code\";i:33;s:11:\"film script\";i:34;s:10:\"mobile app\";i:35;s:9:\"receiving\";i:36;s:15:\"form - document\";i:37;s:19:\"creative occupation\";i:38;s:17:\"computer language\";i:39;s:15:\"geometric shape\";i:40;s:20:\"financial technology\";i:41;s:12:\"techno music\";i:42;s:12:\"grid pattern\";i:43;s:17:\"technical routine\";i:44;s:21:\"mathematical function\";i:45;s:3:\"css\";}}}');
INSERT INTO `wp_postmeta` VALUES (317,78,'_wp_attached_file','2021/08/best-programming-languages-2020-Hero.jpg');
INSERT INTO `wp_postmeta` VALUES (318,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:974;s:6:\"height\";i:619;s:4:\"file\";s:48:\"2021/08/best-programming-languages-2020-Hero.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"best-programming-languages-2020-Hero-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"best-programming-languages-2020-Hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"best-programming-languages-2020-Hero-768x488.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (321,58,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (322,58,'_wp_trash_meta_time','1628668422');
INSERT INTO `wp_postmeta` VALUES (323,58,'_wp_desired_post_slug','random-post');
INSERT INTO `wp_postmeta` VALUES (324,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (325,1,'_wp_trash_meta_time','1628669217');
INSERT INTO `wp_postmeta` VALUES (326,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (327,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-08-04 07:53:39','2021-08-04 07:53:39','<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2021-08-11 08:06:57','2021-08-11 08:06:57','',0,'http://scratch.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-08-04 07:53:39','2021-08-04 07:53:39','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://scratch.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-08-04 18:53:25','2021-08-04 18:53:25','',0,'http://scratch.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-08-04 07:53:39','2021-08-04 07:53:39','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://scratch.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-08-04 18:53:30','2021-08-04 18:53:30','',0,'http://scratch.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-08-04 13:47:26','2021-08-04 13:47:26','{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\"\n            ],\n            \"sidebar-2\": [\n                \"block-5\",\n                \"block-6\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-04 13:47:25\"\n    }\n}','','','trash','closed','closed','','e4da20a0-e1a6-4d66-be31-8d3d17a12344','','','2021-08-04 13:47:26','2021-08-04 13:47:26','',0,'http://scratch.local/e4da20a0-e1a6-4d66-be31-8d3d17a12344/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-08-04 18:52:43','2021-08-04 18:52:43','','Contact','','publish','closed','closed','','contact','','','2021-08-05 19:52:01','2021-08-05 19:52:01','',0,'http://scratch.local/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-08-04 18:52:43','2021-08-04 18:52:43','','Contact','','inherit','closed','closed','','6-revision-v1','','','2021-08-04 18:52:43','2021-08-04 18:52:43','',6,'http://scratch.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-08-04 18:52:59','2021-08-04 18:52:59','This is my Home Page','Home','','publish','closed','closed','','home','','','2021-08-06 11:44:16','2021-08-06 11:44:16','',0,'http://scratch.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-08-04 18:52:59','2021-08-04 18:52:59','','Home','','inherit','closed','closed','','8-revision-v1','','','2021-08-04 18:52:59','2021-08-04 18:52:59','',8,'http://scratch.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-08-04 18:53:10','2021-08-04 18:53:10','<!-- wp:paragraph -->\r\n<p>Something about me</p>\r\n<!-- /wp:paragraph -->','About me','','publish','closed','closed','','about','','','2021-08-06 06:20:23','2021-08-06 06:20:23','',0,'http://scratch.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-08-04 18:53:10','2021-08-04 18:53:10','','About me','','inherit','closed','closed','','10-revision-v1','','','2021-08-04 18:53:10','2021-08-04 18:53:10','',10,'http://scratch.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-08-04 18:53:25','2021-08-04 18:53:25','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://scratch.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-04 18:53:25','2021-08-04 18:53:25','',2,'http://scratch.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-08-04 18:53:30','2021-08-04 18:53:30','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://scratch.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-08-04 18:53:30','2021-08-04 18:53:30','',3,'http://scratch.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-08-04 19:35:07','2021-08-04 19:35:07',' ','','','publish','closed','closed','','17','','','2021-08-04 19:35:07','2021-08-04 19:35:07','',0,'http://scratch.local/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-08-04 19:35:07','2021-08-04 19:35:07',' ','','','publish','closed','closed','','18','','','2021-08-04 19:35:07','2021-08-04 19:35:07','',0,'http://scratch.local/?p=18',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-08-04 19:45:59','2021-08-04 19:45:59','<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<!-- /wp:paragraph -->','Lorem Ipsum','','publish','open','open','','lorem-ipsum','','','2021-08-10 20:41:54','2021-08-10 20:41:54','',0,'http://scratch.local/?p=19',0,'post','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-08-04 19:45:59','2021-08-04 19:45:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Lorem Ipsum','','inherit','closed','closed','','19-revision-v1','','','2021-08-04 19:45:59','2021-08-04 19:45:59','',19,'http://scratch.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-08-04 19:46:36','2021-08-04 19:46:36','<!-- wp:paragraph -->\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n<!-- /wp:paragraph -->','de Finibus','','publish','open','open','','de-finibus','','','2021-08-10 04:03:01','2021-08-10 04:03:01','',0,'http://scratch.local/?p=21',0,'post','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-08-04 19:46:36','2021-08-04 19:46:36','<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','de Finibus','','inherit','closed','closed','','21-revision-v1','','','2021-08-04 19:46:36','2021-08-04 19:46:36','',21,'http://scratch.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-08-04 19:53:05','2021-08-04 19:53:05','<!-- wp:paragraph -->\n<p>Something about me</p>\n<!-- /wp:paragraph -->','About me','','inherit','closed','closed','','10-revision-v1','','','2021-08-04 19:53:05','2021-08-04 19:53:05','',10,'http://scratch.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-08-04 19:56:01','2021-08-04 19:56:01','','Blog','','publish','closed','closed','','blog','','','2021-08-04 19:56:01','2021-08-04 19:56:01','',0,'http://scratch.local/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-08-04 19:56:01','2021-08-04 19:56:01','','Blog','','inherit','closed','closed','','24-revision-v1','','','2021-08-04 19:56:01','2021-08-04 19:56:01','',24,'http://scratch.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-08-09 12:07:19','2021-08-04 19:56:56',' ','','','publish','closed','closed','','26','','','2021-08-09 12:07:19','2021-08-09 12:07:19','',0,'http://scratch.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-08-09 12:07:19','2021-08-04 19:56:56',' ','','','publish','closed','closed','','27','','','2021-08-09 12:07:19','2021-08-09 12:07:19','',0,'http://scratch.local/?p=27',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-08-09 12:07:19','2021-08-04 19:56:56',' ','','','publish','closed','closed','','28','','','2021-08-09 12:07:19','2021-08-09 12:07:19','',0,'http://scratch.local/?p=28',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-08-09 12:07:19','2021-08-04 19:56:56',' ','','','publish','closed','closed','','29','','','2021-08-09 12:07:19','2021-08-09 12:07:19','',0,'http://scratch.local/?p=29',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-08-06 06:38:33','2021-08-06 06:38:33','','pexels-henry-&-co-1939485','','inherit','open','closed','','pexels-henry-co-1939485','','','2021-08-06 06:38:33','2021-08-06 06:38:33','',0,'http://scratch.local/wp-content/uploads/2021/08/pexels-henry-co-1939485.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-08-06 06:39:01','2021-08-06 06:39:01','{\n    \"awesomeTheme::background_image\": {\n        \"value\": \"http://scratch.local/wp-content/uploads/2021/08/pexels-henry-co-1939485-scaled.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:39:01\"\n    }\n}','','','trash','closed','closed','','c022c7cc-90af-4b32-b513-50f80f115626','','','2021-08-06 06:39:01','2021-08-06 06:39:01','',0,'http://scratch.local/c022c7cc-90af-4b32-b513-50f80f115626/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-08-06 06:39:30','2021-08-06 06:39:30','{\n    \"awesomeTheme::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:39:30\"\n    },\n    \"awesomeTheme::background_position_y\": {\n        \"value\": \"bottom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:39:30\"\n    },\n    \"awesomeTheme::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:39:30\"\n    }\n}','','','trash','closed','closed','','c94338c8-5cf2-4da0-9852-a665a697d23d','','','2021-08-06 06:39:30','2021-08-06 06:39:30','',0,'http://scratch.local/c94338c8-5cf2-4da0-9852-a665a697d23d/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-08-06 06:40:00','2021-08-06 06:40:00','{\n    \"awesomeTheme::background_color\": {\n        \"value\": \"#afafaf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:40:00\"\n    }\n}','','','trash','closed','closed','','121fe07f-d9ba-414e-974b-ccd1e2eba2c2','','','2021-08-06 06:40:00','2021-08-06 06:40:00','',0,'http://scratch.local/121fe07f-d9ba-414e-974b-ccd1e2eba2c2/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-08-06 06:44:43','2021-08-06 06:44:43','{\n    \"awesomeTheme::header_image\": {\n        \"value\": \"http://scratch.local/wp-content/uploads/2021/08/pexels-henry-co-1939485-scaled.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:44:43\"\n    },\n    \"awesomeTheme::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://scratch.local/wp-content/uploads/2021/08/pexels-henry-co-1939485-scaled.jpg\",\n            \"thumbnail_url\": \"http://scratch.local/wp-content/uploads/2021/08/pexels-henry-co-1939485-scaled.jpg\",\n            \"timestamp\": 1628232275450,\n            \"attachment_id\": 30,\n            \"width\": 1707,\n            \"height\": 2560\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:44:43\"\n    }\n}','','','trash','closed','closed','','4072bcf6-dca4-4009-9ccc-33d865c8e0c4','','','2021-08-06 06:44:43','2021-08-06 06:44:43','',0,'http://scratch.local/4072bcf6-dca4-4009-9ccc-33d865c8e0c4/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-08-06 06:53:03','2021-08-06 06:53:03','{\n    \"awesomeTheme::header_image\": {\n        \"value\": \"http://scratch.local/wp-content/uploads/2021/08/cropped-cook.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:53:03\"\n    },\n    \"awesomeTheme::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://scratch.local/wp-content/uploads/2021/08/cropped-cook.jpg\",\n            \"thumbnail_url\": \"http://scratch.local/wp-content/uploads/2021/08/cropped-cook.jpg\",\n            \"timestamp\": 1628232779029,\n            \"attachment_id\": 37,\n            \"width\": 200\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 06:53:03\"\n    }\n}','','','trash','closed','closed','','91043030-e9c8-4c2d-8a40-3d665a0d008b','','','2021-08-06 06:53:03','2021-08-06 06:53:03','',0,'http://scratch.local/?p=35',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-08-06 06:52:54','2021-08-06 06:52:54','','cook','','inherit','open','closed','','cook','','','2021-08-06 06:52:54','2021-08-06 06:52:54','',0,'http://scratch.local/wp-content/uploads/2021/08/cook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-08-06 06:52:58','2021-08-06 06:52:58','','cropped-cook.jpg','','inherit','open','closed','','cropped-cook-jpg','','','2021-08-06 06:52:58','2021-08-06 06:52:58','',0,'http://scratch.local/wp-content/uploads/2021/08/cropped-cook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-08-06 10:18:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-08-06 10:18:06','0000-00-00 00:00:00','',0,'http://scratch.local/?p=38',0,'post','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-08-06 11:18:00','2021-08-06 11:18:00','{\n    \"awesomeTheme::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 11:18:00\"\n    },\n    \"awesomeTheme::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 11:18:00\"\n    }\n}','','','trash','closed','closed','','1a7e7108-6b05-4cc3-8810-6d332d4748ff','','','2021-08-06 11:18:00','2021-08-06 11:18:00','',0,'http://scratch.local/1a7e7108-6b05-4cc3-8810-6d332d4748ff/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-08-06 11:43:23','2021-08-06 11:43:23','{\n    \"awesomeTheme::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 11:43:23\"\n    }\n}','','','trash','closed','closed','','61ac8589-18eb-4608-908d-391aa2606229','','','2021-08-06 11:43:23','2021-08-06 11:43:23','',0,'http://scratch.local/61ac8589-18eb-4608-908d-391aa2606229/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-08-06 11:44:16','2021-08-06 11:44:16','This is my Home Page','Home','','inherit','closed','closed','','8-revision-v1','','','2021-08-06 11:44:16','2021-08-06 11:44:16','',8,'http://scratch.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-08-06 17:02:15','2021-08-06 17:02:15','{\n    \"awesomeTheme::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 17:02:15\"\n    }\n}','','','trash','closed','closed','','ded2313a-4d51-4869-bba5-a7a16800c126','','','2021-08-06 17:02:15','2021-08-06 17:02:15','',0,'http://scratch.local/ded2313a-4d51-4869-bba5-a7a16800c126/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-08-06 17:02:23','2021-08-06 17:02:23','{\n    \"awesomeTheme::background_color\": {\n        \"value\": \"#eaeaea\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-06 17:02:23\"\n    }\n}','','','trash','closed','closed','','d1f7135d-d3ac-4691-885c-5e541c54449c','','','2021-08-06 17:02:23','2021-08-06 17:02:23','',0,'http://scratch.local/d1f7135d-d3ac-4691-885c-5e541c54449c/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-08-08 07:06:26','2021-08-08 07:06:26','<div class=\"el__leafmedia el__leafmedia--sourced-paragraph\">\r\n\r\nCops in Wyoming, Michigan, are backpedaling after handcuffing two African American men and a 15-year-old African American teen for simply touring a house for sale. Last Sunday, Army veteran Roy Thorne and his 15-year-old son Samuel went with their real estate agent Roy Brown to tour a home in the Grand Rapids area and soon found themselves handcuffed by a half dozen cops – after a neighbor saw the men entering the home and reported a break-in.\r\n\r\n</div>','Neighbors call cops','','publish','open','open','','neighbors-call-cops','','','2021-08-10 20:38:23','2021-08-10 20:38:23','',0,'http://scratch.local/?p=44',0,'post','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-08-08 07:06:26','2021-08-08 07:06:26','<div class=\"el__leafmedia el__leafmedia--sourced-paragraph\">\r\n<p class=\"zn-body__paragraph speakable\" data-paragraph-id=\"paragraph_B41013C4-C316-87CD-438D-13D2087FB944\"><cite class=\"el-editorial-source\">Islamabad, Pakistan (CNN)</cite>Few cases of femicide make headlines in Pakistan, but the beheading of an ambassador\'s daughter promises to test a legal system activists say has repeatedly failed victims of violence and needs urgent reform. According to a police report seen by CNN, Noor Mukadam, 27, died on July 20 after being allegedly tortured and killed by an acquaintance -- Zahir Jaffer, the 30-year-old son of an influential family and a dual Pakistan-US national.</p>\r\n\r\n</div>','Pakistan is failing its women','','inherit','closed','closed','','44-revision-v1','','','2021-08-08 07:06:26','2021-08-08 07:06:26','',44,'http://scratch.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-08-08 07:07:25','2021-08-08 07:07:25','<div class=\"el__leafmedia el__leafmedia--sourced-paragraph\">\r\n\r\nCops in Wyoming, Michigan, are backpedaling after handcuffing two African American men and a 15-year-old African American teen for simply touring a house for sale. Last Sunday, Army veteran Roy Thorne and his 15-year-old son Samuel went with their real estate agent Roy Brown to tour a home in the Grand Rapids area and soon found themselves handcuffed by a half dozen cops – after a neighbor saw the men entering the home and reported a break-in.\r\n\r\n</div>','Neighbors call cops','','inherit','closed','closed','','44-revision-v1','','','2021-08-08 07:07:25','2021-08-08 07:07:25','',44,'http://scratch.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-08-08 07:09:04','2021-08-08 07:09:04','Sen. Bill Hagerty of Tennessee is opposed to President Joe Biden\'s infrastructure bill. But he went another step further on Saturday by refusing to expedite a vote on it, arguing that he cannot speed up something that will add to the national deficit. The bipartisan $1.2 trillion bills is already anticipated to reach final passage this weekend and cleared the upper chamber Saturday afternoon in a 67-27 procedural vote that included 18 Republicans. Senate Minority Leader Mitch McConnell was among them.','A lone GOP senator','','publish','open','open','','a-lone-gop-senator','','','2021-08-10 03:58:53','2021-08-10 03:58:53','',0,'http://scratch.local/?p=47',0,'post','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-08-08 07:09:04','2021-08-08 07:09:04','Sen. Bill Hagerty of Tennessee is opposed to President Joe Biden\'s infrastructure bill. But he went another step further on Saturday by refusing to expedite a vote on it, arguing that he cannot speed up something that will add to the national deficit. The bipartisan $1.2 trillion bills is already anticipated to reach final passage this weekend and cleared the upper chamber Saturday afternoon in a 67-27 procedural vote that included 18 Republicans. Senate Minority Leader Mitch McConnell was among them.','A lone GOP senator','','inherit','closed','closed','','47-revision-v1','','','2021-08-08 07:09:04','2021-08-08 07:09:04','',47,'http://scratch.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-08-08 07:10:01','2021-08-08 07:10:01','<p id=\"6PZxsB\">“I am very sorry for Messi and Barça. Now is not a good time for either side. I think Barça will not be the same because Barça with Messi is one thing, and Barça without Messi is another,” he said. “But Barça will continue to be Barça and Messi will continue to be Messi. It’s a new challenge for Messi and for Barça, but I think challenges make you better most of the time because they force you out of your comfort zone.”</p>\r\nSource | Diario Sport','Barcelona Post','','publish','open','open','','messi-to-leave-barcelona','','','2021-08-10 20:44:44','2021-08-10 20:44:44','',0,'http://scratch.local/?p=49',0,'post','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-08-08 07:10:01','2021-08-08 07:10:01','<p id=\"6PZxsB\">“I am very sorry for Messi and Barça. Now is not a good time for either side. I think Barça will not be the same because Barça with Messi is one thing, and Barça without Messi is another,” he said. “But Barça will continue to be Barça and Messi will continue to be Messi. It’s a new challenge for Messi and for Barça, but I think challenges make you better most of the time because they force you out of your comfort zone.”</p>\r\nSource | Diario Sport','Messi to leave Barcelona','','inherit','closed','closed','','49-revision-v1','','','2021-08-08 07:10:01','2021-08-08 07:10:01','',49,'http://scratch.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-08-08 09:40:06','2021-08-08 09:40:06','<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-08-08 09:40:06','2021-08-08 09:40:06','',1,'http://scratch.local/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-08-08 09:44:42','2021-08-08 09:44:42','','200px-BBC_News_2019.svg','','inherit','open','closed','','200px-bbc_news_2019-svg','','','2021-08-08 09:44:42','2021-08-08 09:44:42','',49,'http://scratch.local/wp-content/uploads/2021/08/200px-BBC_News_2019.svg_.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-08-08 09:45:41','2021-08-08 09:45:41','','gate','','inherit','open','closed','','gate','','','2021-08-08 09:45:41','2021-08-08 09:45:41','',44,'http://scratch.local/wp-content/uploads/2021/08/gate.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-08-08 09:46:05','2021-08-08 09:46:05','','Без названия','','inherit','open','closed','','%d0%b1%d0%b5%d0%b7-%d0%bd%d0%b0%d0%b7%d0%b2%d0%b0%d0%bd%d0%b8%d1%8f','','','2021-08-08 09:46:05','2021-08-08 09:46:05','',21,'http://scratch.local/wp-content/uploads/2021/08/Без-названия.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-08-08 09:47:42','2021-08-08 09:47:42','{\n    \"awesomeTheme::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-08 09:47:42\"\n    },\n    \"awesomeTheme::background_color\": {\n        \"value\": \"#f9f9f9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-08 09:47:42\"\n    }\n}','','','trash','closed','closed','','75ac5716-72a4-4eb2-a938-d074cc4134ec','','','2021-08-08 09:47:42','2021-08-08 09:47:42','',0,'http://scratch.local/75ac5716-72a4-4eb2-a938-d074cc4134ec/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-08-08 15:09:27','2021-08-08 15:09:27','This is a tutorial post','Tutorial Post','','publish','open','open','','tutorial-post','','','2021-08-10 20:42:19','2021-08-10 20:42:19','',0,'http://scratch.local/?p=56',0,'post','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-08-08 15:09:27','2021-08-08 15:09:27','This is a tutorial post','Tutorial Post','','inherit','closed','closed','','56-revision-v1','','','2021-08-08 15:09:27','2021-08-08 15:09:27','',56,'http://scratch.local/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-08-08 15:17:14','2021-08-08 15:17:14','Random post from random category','Random post','','trash','open','open','','random-post__trashed','','','2021-08-11 07:53:42','2021-08-11 07:53:42','',0,'http://scratch.local/?p=58',0,'post','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-08-08 15:17:14','2021-08-08 15:17:14','Random post from random category','Random post','','inherit','closed','closed','','58-revision-v1','','','2021-08-08 15:17:14','2021-08-08 15:17:14','',58,'http://scratch.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-08-09 03:39:39','2021-08-09 03:39:39','{\n    \"awesomeTheme::background_color\": {\n        \"value\": \"#3f0099\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-09 03:39:39\"\n    }\n}','','','trash','closed','closed','','4b768554-8795-4d03-8d15-e96706a709b9','','','2021-08-09 03:39:39','2021-08-09 03:39:39','',0,'http://scratch.local/?p=60',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-08-09 03:58:45','2021-08-09 03:58:45','<p id=\"6PZxsB\">“I am very sorry for Messi and Barça. Now is not a good time for either side. I think Barça will not be the same because Barça with Messi is one thing, and Barça without Messi is another,” he said. “But Barça will continue to be Barça and Messi will continue to be Messi. It’s a new challenge for Messi and for Barça, but I think challenges make you better most of the time because they force you out of your comfort zone.”</p>\r\nSource | Diario Sport','Barcelona Post','','inherit','closed','closed','','49-revision-v1','','','2021-08-09 03:58:45','2021-08-09 03:58:45','',49,'http://scratch.local/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-08-09 06:19:16','2021-08-09 06:19:16','{\n    \"awesomeTheme::background_color\": {\n        \"value\": \"#afafaf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-09 06:19:16\"\n    }\n}','','','trash','closed','closed','','ef91f178-5491-459f-84af-9125233426aa','','','2021-08-09 06:19:16','2021-08-09 06:19:16','',0,'http://scratch.local/ef91f178-5491-459f-84af-9125233426aa/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-08-10 03:58:16','2021-08-10 03:58:16','','news','','inherit','open','closed','','news','','','2021-08-10 03:58:16','2021-08-10 03:58:16','',49,'http://scratch.local/wp-content/uploads/2021/08/news.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-08-10 04:00:38','2021-08-10 04:00:38','','view','','inherit','open','closed','','view','','','2021-08-10 04:00:38','2021-08-10 04:00:38','',44,'http://scratch.local/wp-content/uploads/2021/08/view.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-08-10 04:02:34','2021-08-10 04:02:34','','tut','','inherit','open','closed','','tut','','','2021-08-10 04:02:34','2021-08-10 04:02:34','',56,'http://scratch.local/wp-content/uploads/2021/08/tut.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-08-10 06:08:30','2021-08-10 06:08:30','','view','','inherit','open','closed','','view-2','','','2021-08-10 06:08:30','2021-08-10 06:08:30','',44,'http://scratch.local/wp-content/uploads/2021/08/view-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-08-10 17:16:43','2021-08-10 17:16:43','{\n    \"custom_css[awesomeTheme]\": {\n        \"value\": \".carousel .item {\\n    height: 100px;\\n    overflow: hidden;\\n}\\n\\n.carousel .item img {\\n    width: 100%;\\n    height: auto;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-10 17:16:43\"\n    }\n}','','','trash','closed','closed','','7c1c31b0-429e-45a2-a78d-106853818fba','','','2021-08-10 17:16:43','2021-08-10 17:16:43','',0,'http://scratch.local/7c1c31b0-429e-45a2-a78d-106853818fba/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-08-10 17:16:43','2021-08-10 17:16:43','.carousel .item {\n    height: 300px;\n    overflow: hidden;\n}\n\n.carousel .item img {\n    width: 100%;\n    height: auto;\n}','awesomeTheme','','publish','closed','closed','','awesometheme','','','2021-08-10 17:17:49','2021-08-10 17:17:49','',0,'http://scratch.local/awesometheme/',0,'custom_css','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-08-10 17:16:43','2021-08-10 17:16:43','.carousel .item {\n    height: 100px;\n    overflow: hidden;\n}\n\n.carousel .item img {\n    width: 100%;\n    height: auto;\n}','awesomeTheme','','inherit','closed','closed','','70-revision-v1','','','2021-08-10 17:16:43','2021-08-10 17:16:43','',70,'http://scratch.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-08-10 17:17:49','2021-08-10 17:17:49','{\n    \"custom_css[awesomeTheme]\": {\n        \"value\": \".carousel .item {\\n    height: 300px;\\n    overflow: hidden;\\n}\\n\\n.carousel .item img {\\n    width: 100%;\\n    height: auto;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-10 17:17:49\"\n    }\n}','','','trash','closed','closed','','2056027f-2b0c-4a46-a974-260342f53c1f','','','2021-08-10 17:17:49','2021-08-10 17:17:49','',0,'http://scratch.local/2056027f-2b0c-4a46-a974-260342f53c1f/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-08-10 17:17:49','2021-08-10 17:17:49','.carousel .item {\n    height: 300px;\n    overflow: hidden;\n}\n\n.carousel .item img {\n    width: 100%;\n    height: auto;\n}','awesomeTheme','','inherit','closed','closed','','70-revision-v1','','','2021-08-10 17:17:49','2021-08-10 17:17:49','',70,'http://scratch.local/?p=73',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-08-10 20:34:08','2021-08-10 20:34:08','','programming evolution','','inherit','open','closed','','programming-evolution','','','2021-08-10 20:34:08','2021-08-10 20:34:08','',44,'http://scratch.local/wp-content/uploads/2021/08/programming-evolution.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-08-10 20:38:18','2021-08-10 20:38:18','','computer','','inherit','open','closed','','computer','','','2021-08-10 20:38:18','2021-08-10 20:38:18','',44,'http://scratch.local/wp-content/uploads/2021/08/computer.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-08-10 20:41:47','2021-08-10 20:41:47','','top-10-programming-languages-2020-Stackscale','','inherit','open','closed','','top-10-programming-languages-2020-stackscale','','','2021-08-10 20:41:47','2021-08-10 20:41:47','',19,'http://scratch.local/wp-content/uploads/2021/08/top-10-programming-languages-2020-Stackscale.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-08-10 20:43:32','2021-08-10 20:43:32','','Programming code abstract technology background of software developer and  Computer script','Programming code abstract technology background of software developer and  Computer script','inherit','open','closed','','programming-code-abstract-technology-background-of-software-developer-and-computer-script','','','2021-08-10 20:43:32','2021-08-10 20:43:32','',49,'http://scratch.local/wp-content/uploads/2021/08/programming-coding.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-08-10 20:44:38','2021-08-10 20:44:38','','best-programming-languages-2020-Hero','','inherit','open','closed','','best-programming-languages-2020-hero','','','2021-08-10 20:44:38','2021-08-10 20:44:38','',49,'http://scratch.local/wp-content/uploads/2021/08/best-programming-languages-2020-Hero.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-08-10 20:47:00','2021-08-10 20:47:00','<p id=\"6PZxsB\">“I am very sorry for Messi and Barça. Now is not a good time for either side. I think Barça will not be the same because Barça with Messi is one thing, and Barça without Messi is another,” he said. “But Barça will continue to be Barça and Messi will continue to be Messi. It’s a new challenge for Messi and for Barça, but I think challenges make you better most of the time because they force you out of your comfort zone.”</p>\nSource | Diario Sport','Barcelona Post','','inherit','closed','closed','','49-autosave-v1','','','2021-08-10 20:47:00','2021-08-10 20:47:00','',49,'http://scratch.local/?p=79',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `wp_term_relationships` VALUES (1,7,0);
INSERT INTO `wp_term_relationships` VALUES (17,3,0);
INSERT INTO `wp_term_relationships` VALUES (18,3,0);
INSERT INTO `wp_term_relationships` VALUES (19,8,0);
INSERT INTO `wp_term_relationships` VALUES (21,8,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (44,7,0);
INSERT INTO `wp_term_relationships` VALUES (47,6,0);
INSERT INTO `wp_term_relationships` VALUES (49,6,0);
INSERT INTO `wp_term_relationships` VALUES (56,8,0);
INSERT INTO `wp_term_relationships` VALUES (58,6,0);
INSERT INTO `wp_term_relationships` VALUES (58,9,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'post_format','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'post_format','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Navigation','main-navigation',0);
INSERT INTO `wp_terms` VALUES (3,'Footer Navigation','footer-navigation',0);
INSERT INTO `wp_terms` VALUES (4,'post-format-aside','post-format-aside',0);
INSERT INTO `wp_terms` VALUES (5,'post-format-image','post-format-image',0);
INSERT INTO `wp_terms` VALUES (6,'News','news',0);
INSERT INTO `wp_terms` VALUES (7,'Reviews','reviews',0);
INSERT INTO `wp_terms` VALUES (8,'Tutorials','tutorials',0);
INSERT INTO `wp_terms` VALUES (9,'Random','random',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','pokhvalenkosvyat');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"1c43db685ec21f7cd55d0581563f4af3db2f91063f2af3008c6ef10d4fc89b52\";a:4:{s:10:\"expiration\";i:1628608123;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36\";s:5:\"login\";i:1628435323;}s:64:\"461c289a8d5245f5eae6a0221aac97c05cf0a3d324dd201ac56f3832ef26ed26\";a:4:{s:10:\"expiration\";i:1628777569;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36\";s:5:\"login\";i:1628604769;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1628232001');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `wp_users` VALUES (1,'pokhvalenkosvyat','$P$BKx4tNO79Zj0NyBuuZW/8XD/TLjcOt0','pokhvalenkosvyat','pokhvalenkosvyat@gmail.com','http://scratch.local','2021-08-04 07:53:38','',0,'pokhvalenkosvyat');
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

-- Dump completed on 2021-08-12  7:02:00
