CREATE TABLE IF NOT EXISTS `charity_classes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(14) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `charity_class` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);