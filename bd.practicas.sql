
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


DROP DATABASE IF EXISTS node_mysql_crud_db;
CREATE DATABASE node_mysql_crud_db;
USE node_mysql_crud_db;

DROP SCHEMA IF EXISTS `practicas_profesionales` ;
CREATE SCHEMA IF NOT EXISTS `practicas_profesionales` DEFAULT CHARACTER SET utf8 ;
USE `practicas_profesionales` ;

DROP TABLE IF EXISTS `practicas_profesionales`.`employees` ;

CREATE TABLE IF NOT EXISTS `employees` (
`id` BIGINT UNSIGNED AUTO_INCREMENT,
`first_name` VARCHAR(255) NOT NULL,
`last_name` VARCHAR(255) NOT NULL,
`email` VARCHAR(255) NOT NULL,
`phone` VARCHAR(50) NOT NULL,
`organization` VARCHAR(255) NOT NULL,
`designation` VARCHAR(100) NOT NULL,
`salary` DECIMAL(11,2) UNSIGNED DEFAULT 0.00,
`status` TINYINT UNSIGNED DEFAULT 0,
`is_deleted` TINYINT UNSIGNED DEFAULT 0,
`created_at` DATETIME NOT NULL,
`updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO employees (`first_name`, `last_name`, `email`,`phone`, `organization`, `designation`, `salary`, `status`, `is_deleted`, `created_at`) VALUES ('John', 'Doe', 'johndoe@gmail.com', '1234567890', 'BR SoftechPvt Ltd', 'Full Stack Developer', '500.00', '1', '0', '2019-11-19 03:30:30');

INSERT INTO employees (`first_name`, `last_name`, `email`, `phone`, `organization`, `designation`, `salary`, `status`, `is_deleted`, `created_at`) VALUES ('Jane', 'Doe', 'janedoe@gmail.com', '9876543210', 'RG Infotech Jaipur', 'PHP Developer', '450.00', '1', '0', '2019-11-19 03:35:30');