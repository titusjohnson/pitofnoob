# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.25)
# Database: pitofnoob
# Generation Time: 2012-09-23 01:21:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `author` varchar(128) DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `date_authored` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `active`, `date_authored`)
VALUES
	(1,'Here\'s a first post bro','Hey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. \n\nHey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. \nHey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. \n\n\nHey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. \n\nHey, here is a body. Text is a body. Here is a total body body totally a body man. \n\nHey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. \n\nHey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. Hey, here is a body. Text is a body. Here is a total body body totally a body man. ','Kow',1,'0000-00-00 00:00:00');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts_tags`;

CREATE TABLE `posts_tags` (
  `post_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `posts_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `posts_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
