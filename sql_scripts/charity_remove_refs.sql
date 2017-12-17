CREATE TABLE IF NOT EXISTS `charity_remove_refs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(3) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `text` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);