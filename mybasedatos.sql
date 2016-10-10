-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.10-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para mybasedatos
CREATE DATABASE IF NOT EXISTS `mybasedatos` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `mybasedatos`;


-- Volcando estructura para tabla mybasedatos.counselor
CREATE TABLE IF NOT EXISTS `counselor` (
  `counselor_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nick_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telephone` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `member_since` date DEFAULT '0000-00-00',
  PRIMARY KEY (`counselor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla mybasedatos.counselor: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `counselor` DISABLE KEYS */;
INSERT INTO `counselor` (`counselor_id`, `first_name`, `nick_name`, `last_name`, `telephone`, `email`, `member_since`) VALUES
	(1, 'Jake', '"The Snake"', 'Roberts', '412 565-5656', 'snake@ifpwafcad.com', '2003-09-10'),
	(2, 'Andre', '"The Giant"', '', '606 443-4567', 'bobo@ifpwafcad.com', '2001-01-12'),
	(3, 'Brutus', '"The Barber"', 'Beefcake', '555 555-4432', 'beefcake@ifpwafcad.com', '2005-03-08'),
	(4, 'Randy', '"Macho Man"', 'Savage', '555 317-4444', 'machoman@hotmail.com', '2000-11-10'),
	(5, 'Ricky', '"The Dragon"', 'Steamboat', '334 612-5678', 'r_steamboat@ifpwafcad.com', '1996-01-01'),
	(6, 'George', '"The Animal"', 'Steele', '412 565-5656', 'george@ifpwafcad.com', '2016-10-09'),
	(7, 'Koko', '"The Birdman"', 'B. Ware', '553 499-8162', 'birdman@ifpwafcad.com', '1999-12-03'),
	(8, 'Greg', '"The Hammer"', 'Valentine', '617 889-5545', 'valentino@ifpwafcad.com', '1998-05-07'),
	(9, 'Bobby', '"The Brain"', 'Heenan', '777 513-3333', 'b_heenan@ifpwafcad.com', '2002-07-09');
/*!40000 ALTER TABLE `counselor` ENABLE KEYS */;


-- Volcando estructura para tabla mybasedatos.subject
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `counselor_idfk` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla mybasedatos.subject: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`subject_id`, `name`, `description`, `counselor_idfk`) VALUES
	(1, 'Financial Consultancy', 'Investment advice and financial planning guidance, helping you to maximize your net worth through proper asset allocation. This includes the stocks, bonds, mutual funds, insurance products, and gambling strategies proven to work.', 9),
	(2, 'Existential Psychotherapy', 'Often wonder what the purpose of life is? After learning the basics of Existential Psychotherapy, you\'ll understand why you\'re happy when you\'re feeling happy, and why you\'re not feeling happy when you\'re not happy, allowing you to transcend to a state of pure bliss.', 7),
	(3, 'Temper Management', 'Are your angry outbursts affecting your relationships with loved-ones? Do tantrums at work hinder your ability to perform? Temper management helps you to channel your anger into positive, life-changing productivity.', 4),
	(4, 'Past-Life Regression', 'Past-Life Regression is a journey of the soul, backward and forward through time, like a yo-yo.', 2),
	(5, 'Marriage Guidance', 'Even if you share a solid, caring and mutually beneficial relationship with your spouse, you may both still need urgent counseling. There\'s only one way to find out. Contact us now!', 1),
	(6, 'Crisis Management', 'Whether you\'re a fireman, executive CEO, or housewife, applying crisis management techniques at the right moment can be life-saving for you as well as all those around you.', 3),
	(7, 'Dream Analysis', 'Dream Analysis will allow you to delve into the depths of your subconcious. Your counselor will put you through a rigorous, disciplined training program, allowing you to remain in a waking state while dreaming. By the end, you\'ll be able to analyse your dreams while you are having them!', 8),
	(8, 'Hypnosis', 'Contrary to popular belief, hypnosis can be a powerful and effective form of counseling.', 6),
	(9, 'Reiki', 'Need a massage but are afraid to let a stranger touch your body? Reiki could be the perfect solution for you.', 5);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
