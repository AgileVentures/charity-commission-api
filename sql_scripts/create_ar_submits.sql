CREATE TABLE IF NOT EXISTS `ar_submits` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(14) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `arno` varchar(4) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `submit_date` datetime DEFAULT NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);