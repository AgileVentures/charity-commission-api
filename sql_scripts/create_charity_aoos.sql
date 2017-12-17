CREATE TABLE IF NOT EXISTS `charity_aoos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(14) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `aootype` char(1) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `aookey` int(11) NOT NULL DEFAULT '0',
  `welsh` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `master` int(11) DEFAULT NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);