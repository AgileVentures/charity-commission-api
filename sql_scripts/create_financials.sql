CREATE TABLE IF NOT EXISTS `financials` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(14) NOT NULL DEFAULT '0',
  `fystart` datetime DEFAULT NULL,
  `fyend` datetime DEFAULT NULL ,
  `income` int(11) DEFAULT NULL,
  `expend` int(11) DEFAULT NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);