-- Mysql script to generate main charities table

CREATE TABLE `charities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `regno` varchar(14) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `subno` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `orgtype` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `gd` text CHARACTER SET latin1,
  `aob` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `aob_defined` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `nhs` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `ha_no` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `corr` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `add1` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `add2` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `add3` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `add4` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `add5` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `postcode` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fax` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `lon` double NULL,
  `lat` double NULL,
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8