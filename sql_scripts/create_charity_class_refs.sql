CREATE TABLE IF NOT EXISTS `charity_class_refs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classno` int(11) NOT NULL DEFAULT '0',
  `classtext` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);