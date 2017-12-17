CREATE TABLE IF NOT EXISTS `aoo_refs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aootype` varchar(1) NOT NULL DEFAULT '',
  `aookey` int(3) NOT NULL DEFAULT '0',
  `aooname` varchar(50) NOT NULL,
  `aoosort` varchar(50) NOT NULL,
  `welsh` varchar(1) NOT NULL,
  `master` varchar(2) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);