-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.22 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for adonis
CREATE DATABASE IF NOT EXISTS `adonis` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `adonis`;

-- Dumping structure for table adonis.adonis_schema
CREATE TABLE IF NOT EXISTS `adonis_schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table adonis.adonis_schema: ~5 rows (approximately)
DELETE FROM `adonis_schema`;
/*!40000 ALTER TABLE `adonis_schema` DISABLE KEYS */;
INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
	(4, '1503248427885_user', 1, '2021-06-26 12:36:37'),
	(5, '1503248427886_token', 1, '2021-06-26 12:36:37'),
	(6, '1624709896079_employees_schema', 1, '2021-06-26 12:36:37'),
	(7, '1624710588837_add_employees_schema', 1, '2021-06-26 12:36:37'),
	(12, '1624800772261_calendars_schema', 2, '2021-06-27 13:50:22');
/*!40000 ALTER TABLE `adonis_schema` ENABLE KEYS */;

-- Dumping structure for table adonis.calendars
CREATE TABLE IF NOT EXISTS `calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `days` json DEFAULT NULL,
  `shifts` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table adonis.calendars: ~1 rows (approximately)
DELETE FROM `calendars`;
/*!40000 ALTER TABLE `calendars` DISABLE KEYS */;
INSERT INTO `calendars` (`id`, `days`, `shifts`, `created_at`, `updated_at`) VALUES
	(15, '[{"workable": true, "lastShift": {"id": 3, "name": "Freddie", "shifts": 2, "status": 1, "surname": "Hart", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:53", "doubleWork": false, "updated_at": "2021-06-27 14:50:53"}, "firstShift": {"id": 9, "name": "Stevie", "shifts": 2, "status": 1, "surname": "Kelly", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:30", "doubleWork": false, "updated_at": "2021-06-27 21:31:10"}}, {"workable": true, "lastShift": {"id": 6, "name": "Angie", "shifts": 2, "status": 1, "surname": "Moore", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:24", "doubleWork": false, "updated_at": "2021-06-27 20:40:46"}, "firstShift": {"id": 2, "name": "Jerica", "shifts": 2, "status": 1, "surname": "Stevens", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:40", "doubleWork": false, "updated_at": "2021-06-27 14:50:40"}}, {"workable": true, "lastShift": {"id": 1, "name": "Brenna", "shifts": 2, "status": 1, "surname": "Duncan", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:48:35", "doubleWork": false, "updated_at": "2021-06-27 20:18:10"}, "firstShift": {"id": 3, "name": "Freddie", "shifts": 1, "status": 1, "surname": "Hart", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:53", "doubleWork": false, "updated_at": "2021-06-27 14:50:53"}}, {"workable": true, "lastShift": {"id": 4, "name": "Adib", "shifts": 2, "status": 1, "surname": "Castillo", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:04", "doubleWork": false, "updated_at": "2021-06-27 14:51:04"}, "firstShift": {"id": 5, "name": "Alannah", "shifts": 2, "status": 1, "surname": "Thompson", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:15", "doubleWork": false, "updated_at": "2021-06-27 20:40:42"}}, {"workable": true, "lastShift": {"id": 10, "name": "Sebastian", "shifts": 2, "status": 1, "surname": "Mason", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:42", "doubleWork": false, "updated_at": "2021-06-27 21:31:14"}, "firstShift": {"id": 9, "name": "Stevie", "shifts": 1, "status": 1, "surname": "Kelly", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:30", "doubleWork": false, "updated_at": "2021-06-27 21:31:10"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": true, "lastShift": {"id": 8, "name": "Angela", "shifts": 2, "status": 1, "surname": "Lawrence", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:21", "doubleWork": false, "updated_at": "2021-06-27 21:31:06"}, "firstShift": {"id": 6, "name": "Angie", "shifts": 1, "status": 1, "surname": "Moore", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:24", "doubleWork": false, "updated_at": "2021-06-27 20:40:46"}}, {"workable": true, "lastShift": {"id": 4, "name": "Adib", "shifts": 1, "status": 1, "surname": "Castillo", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:04", "doubleWork": false, "updated_at": "2021-06-27 14:51:04"}, "firstShift": {"id": 7, "name": "Kevin", "shifts": 2, "status": 1, "surname": "O\'Neill", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:07", "doubleWork": false, "updated_at": "2021-06-27 21:31:02"}}, {"workable": true, "lastShift": {"id": 1, "name": "Brenna", "shifts": 1, "status": 1, "surname": "Duncan", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:48:35", "doubleWork": false, "updated_at": "2021-06-27 20:18:10"}, "firstShift": {"id": 10, "name": "Sebastian", "shifts": 1, "status": 1, "surname": "Mason", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:42", "doubleWork": false, "updated_at": "2021-06-27 21:31:14"}}, {"workable": true, "lastShift": {"id": 2, "name": "Jerica", "shifts": 1, "status": 1, "surname": "Stevens", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:40", "doubleWork": false, "updated_at": "2021-06-27 14:50:40"}, "firstShift": {"id": 8, "name": "Angela", "shifts": 1, "status": 1, "surname": "Lawrence", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:21", "doubleWork": false, "updated_at": "2021-06-27 21:31:06"}}, {"workable": true, "lastShift": {"id": 5, "name": "Alannah", "shifts": 1, "status": 1, "surname": "Thompson", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:15", "doubleWork": false, "updated_at": "2021-06-27 20:40:42"}, "firstShift": {"id": 7, "name": "Kevin", "shifts": 1, "status": 1, "surname": "O\'Neill", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:07", "doubleWork": false, "updated_at": "2021-06-27 21:31:02"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": false, "lastShift": null, "firstShift": null}]', 2, '2021-06-27 21:31:35', '2021-06-27 21:31:35'),
	(16, '[{"workable": true, "lastShift": {"id": 1, "name": "Brenna", "shifts": 2, "status": 1, "surname": "Duncan", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:48:35", "doubleWork": false, "updated_at": "2021-06-27 20:18:10"}, "firstShift": {"id": 3, "name": "Freddie", "shifts": 2, "status": 1, "surname": "Hart", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:53", "doubleWork": false, "updated_at": "2021-06-27 14:50:53"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": true, "lastShift": {"id": 9, "name": "Stevie", "shifts": 2, "status": 1, "surname": "Kelly", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:30", "doubleWork": false, "updated_at": "2021-06-27 21:31:10"}, "firstShift": {"id": 4, "name": "Adib", "shifts": 2, "status": 1, "surname": "Castillo", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:04", "doubleWork": false, "updated_at": "2021-06-27 14:51:04"}}, {"workable": true, "lastShift": {"id": 1, "name": "Brenna", "shifts": 1, "status": 1, "surname": "Duncan", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:48:35", "doubleWork": false, "updated_at": "2021-06-27 20:18:10"}, "firstShift": {"id": 10, "name": "Sebastian", "shifts": 2, "status": 1, "surname": "Mason", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:42", "doubleWork": false, "updated_at": "2021-06-27 21:31:14"}}, {"workable": true, "lastShift": {"id": 8, "name": "Angela", "shifts": 2, "status": 1, "surname": "Lawrence", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:21", "doubleWork": false, "updated_at": "2021-06-27 21:31:06"}, "firstShift": {"id": 9, "name": "Stevie", "shifts": 1, "status": 1, "surname": "Kelly", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:30", "doubleWork": false, "updated_at": "2021-06-27 21:31:10"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": true, "lastShift": {"id": 3, "name": "Freddie", "shifts": 1, "status": 1, "surname": "Hart", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:53", "doubleWork": false, "updated_at": "2021-06-27 14:50:53"}, "firstShift": {"id": 4, "name": "Adib", "shifts": 1, "status": 1, "surname": "Castillo", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:04", "doubleWork": false, "updated_at": "2021-06-27 14:51:04"}}, {"workable": true, "lastShift": {"id": 10, "name": "Sebastian", "shifts": 1, "status": 1, "surname": "Mason", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:42", "doubleWork": false, "updated_at": "2021-06-27 21:31:14"}, "firstShift": {"id": 8, "name": "Angela", "shifts": 1, "status": 1, "surname": "Lawrence", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:21", "doubleWork": false, "updated_at": "2021-06-27 21:31:06"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": true, "lastShift": {"id": 2, "name": "Jerica", "shifts": 2, "status": 1, "surname": "Stevens", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:40", "doubleWork": false, "updated_at": "2021-06-27 14:50:40"}, "firstShift": {"id": 5, "name": "Alannah", "shifts": 2, "status": 1, "surname": "Thompson", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:15", "doubleWork": false, "updated_at": "2021-06-27 20:40:42"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": false, "lastShift": null, "firstShift": null}]', 2, '2021-06-27 21:36:17', '2021-06-27 21:36:17'),
	(17, '[{"workable": true, "lastShift": {"id": 7, "name": "Kevin", "shifts": "5", "status": 1, "surname": "O\'Neill", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:07", "doubleWork": false, "updated_at": "2021-06-27 21:31:02"}, "firstShift": {"id": 1, "name": "Brenna", "shifts": "5", "status": 1, "surname": "Duncan", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:48:35", "doubleWork": false, "updated_at": "2021-06-27 20:18:10"}}, {"workable": true, "lastShift": {"id": 10, "name": "Sebastian", "shifts": "5", "status": 1, "surname": "Mason", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:42", "doubleWork": false, "updated_at": "2021-06-27 21:31:14"}, "firstShift": {"id": 4, "name": "Adib", "shifts": "5", "status": 1, "surname": "Castillo", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:04", "doubleWork": false, "updated_at": "2021-06-27 14:51:04"}}, {"workable": true, "lastShift": {"id": 9, "name": "Stevie", "shifts": "5", "status": 1, "surname": "Kelly", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:30", "doubleWork": false, "updated_at": "2021-06-27 21:31:10"}, "firstShift": {"id": 8, "name": "Angela", "shifts": "5", "status": 1, "surname": "Lawrence", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:21", "doubleWork": false, "updated_at": "2021-06-27 21:31:06"}}, {"workable": true, "lastShift": {"id": 1, "name": "Brenna", "shifts": 4, "status": 1, "surname": "Duncan", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:48:35", "doubleWork": false, "updated_at": "2021-06-27 20:18:10"}, "firstShift": {"id": 10, "name": "Sebastian", "shifts": 4, "status": 1, "surname": "Mason", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:42", "doubleWork": false, "updated_at": "2021-06-27 21:31:14"}}, {"workable": true, "lastShift": {"id": 8, "name": "Angela", "shifts": 4, "status": 1, "surname": "Lawrence", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:21", "doubleWork": false, "updated_at": "2021-06-27 21:31:06"}, "firstShift": {"id": 5, "name": "Alannah", "shifts": "5", "status": 1, "surname": "Thompson", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:15", "doubleWork": false, "updated_at": "2021-06-27 20:40:42"}}, {"workable": true, "lastShift": {"id": 3, "name": "Freddie", "shifts": 4, "status": 1, "surname": "Hart", "cooldown": 2, "schedule": null, "created_at": "2021-06-27 14:50:53", "doubleWork": true, "updated_at": "2021-06-27 14:50:53"}, "firstShift": {"id": 3, "name": "Freddie", "shifts": "5", "status": 1, "surname": "Hart", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:53", "doubleWork": false, "updated_at": "2021-06-27 14:50:53"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": true, "lastShift": {"id": 10, "name": "Sebastian", "shifts": 3, "status": 1, "surname": "Mason", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:42", "doubleWork": false, "updated_at": "2021-06-27 21:31:14"}, "firstShift": {"id": 2, "name": "Jerica", "shifts": "5", "status": 1, "surname": "Stevens", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:40", "doubleWork": false, "updated_at": "2021-06-27 14:50:40"}}, {"workable": true, "lastShift": {"id": 4, "name": "Adib", "shifts": 4, "status": 1, "surname": "Castillo", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:04", "doubleWork": false, "updated_at": "2021-06-27 14:51:04"}, "firstShift": {"id": 9, "name": "Stevie", "shifts": 4, "status": 1, "surname": "Kelly", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:30", "doubleWork": false, "updated_at": "2021-06-27 21:31:10"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": true, "lastShift": {"id": 10, "name": "Sebastian", "shifts": 2, "status": 1, "surname": "Mason", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:42", "doubleWork": false, "updated_at": "2021-06-27 21:31:14"}, "firstShift": {"id": 3, "name": "Freddie", "shifts": 3, "status": 1, "surname": "Hart", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:50:53", "doubleWork": false, "updated_at": "2021-06-27 14:50:53"}}, {"workable": true, "lastShift": {"id": 9, "name": "Stevie", "shifts": 3, "status": 1, "surname": "Kelly", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:52:30", "doubleWork": false, "updated_at": "2021-06-27 21:31:10"}, "firstShift": {"id": 6, "name": "Angie", "shifts": "5", "status": 1, "surname": "Moore", "cooldown": 0, "schedule": null, "created_at": "2021-06-27 14:51:24", "doubleWork": false, "updated_at": "2021-06-27 20:40:46"}}, {"workable": false, "lastShift": null, "firstShift": null}, {"workable": false, "lastShift": null, "firstShift": null}]', 5, '2021-06-27 22:00:04', '2021-06-27 22:00:04');
/*!40000 ALTER TABLE `calendars` ENABLE KEYS */;

-- Dumping structure for table adonis.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `schedule` json DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table adonis.employees: ~10 rows (approximately)
DELETE FROM `employees`;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `name`, `surname`, `status`, `schedule`, `created_at`, `updated_at`) VALUES
	(1, 'Brenna', 'Duncan', 1, NULL, '2021-06-27 14:48:35', '2021-06-27 20:18:10'),
	(2, 'Jerica', 'Stevens', 1, NULL, '2021-06-27 14:50:40', '2021-06-27 14:50:40'),
	(3, 'Freddie', 'Hart', 1, NULL, '2021-06-27 14:50:53', '2021-06-27 14:50:53'),
	(4, 'Adib', 'Castillo', 1, NULL, '2021-06-27 14:51:04', '2021-06-27 14:51:04'),
	(5, 'Alannah', 'Thompson', 1, NULL, '2021-06-27 14:51:15', '2021-06-27 20:40:42'),
	(6, 'Angie', 'Moore', 1, NULL, '2021-06-27 14:51:24', '2021-06-27 20:40:46'),
	(7, 'Kevin', 'O\'Neill', 1, NULL, '2021-06-27 14:52:07', '2021-06-27 21:31:02'),
	(8, 'Angela', 'Lawrence', 1, NULL, '2021-06-27 14:52:21', '2021-06-27 21:31:06'),
	(9, 'Stevie', 'Kelly', 1, NULL, '2021-06-27 14:52:30', '2021-06-27 21:31:10'),
	(10, 'Sebastian', 'Mason', 1, NULL, '2021-06-27 14:52:42', '2021-06-27 21:31:14');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table adonis.tokens
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`),
  KEY `tokens_user_id_foreign` (`user_id`),
  KEY `tokens_token_index` (`token`),
  CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table adonis.tokens: ~0 rows (approximately)
DELETE FROM `tokens`;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;

-- Dumping structure for table adonis.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table adonis.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
