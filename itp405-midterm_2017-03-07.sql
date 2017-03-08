CREATE TABLE `authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;

INSERT INTO `authors` (`id`, `first_name`, `last_name`)
VALUES
	(1,'Cody','Lindley'),
	(2,'David','Powers'),
	(3,'Douglas','Crockford');

/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`id`, `author_id`, `publisher_id`, `title`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'JavaScript Enlightenment','2017-03-05 14:44:18','2017-03-05 14:44:18'),
	(2,2,2,'PHP Object Oriented Solutions','2017-03-05 14:44:35','2017-03-05 14:44:35'),
	(3,3,1,'JavaScript The Good Parts','2017-03-05 14:45:20','2017-03-05 14:45:20');

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table publishers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `publishers`;

CREATE TABLE `publishers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;

INSERT INTO `publishers` (`id`, `name`)
VALUES
	(1,'O\'Reilly Media'),
	(2,'Apress');


CREATE TABLE `reviews` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `headline` varchar(100) DEFAULT NULL,
  `body` varchar(500) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `reviews` (`id`, `book_id`, `headline`, `body`, `rating`, `created_at`, `updated_at`)
VALUES
	(1,1,'A must read!','If you\'re learning JS, you have to read this book!',5,'2017-03-06 05:31:20','2017-03-06 05:31:20'),
	(2,2,'Great intro to OOP for PHP developers','Excellent!',5,'2017-03-06 05:31:56','2017-03-06 05:31:56'),
	(3,1,'JavaScript \'Object\' Enlightenment','This book is great if you are an intermediate level JavaScript developer.',5,'2017-03-06 05:33:03','2017-03-06 05:33:03');

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `remember_token` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`, `admin`, `name`, `remember_token`)
VALUES
	(1,'dtang@usc.edu','$2y$10$wS5EzZ9caoF9ve9A2iBdi.jGpdNSFwaqct59KZot7jOb3atk3YN7W','2017-03-05 13:44:13','2017-03-05 13:44:13',1,'David Tang','GXPsQxPAn4n4KnJRtVZ4rvqGogNigQKuSlUUN6uCvLKoiIo61PXrSjGMt7bQ'),
	(2,'itp@usc.edu','$2y$10$wS5EzZ9caoF9ve9A2iBdi.jGpdNSFwaqct59KZot7jOb3atk3YN7W','2017-03-05 13:44:13','2017-03-05 13:44:13',0,'ITP',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
