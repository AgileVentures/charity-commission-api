CREATE TABLE `main_charities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(14) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `coyno` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `trustees` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `fyend` char(4) CHARACTER SET latin1 DEFAULT NULL,
  `welsh` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `incomedate` varchar(255) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `grouptype` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `web` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162071 DEFAULT CHARSET=utf8