CREATE TABLE IF NOT EXISTS `charity_trustees` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(14) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `trustee` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);