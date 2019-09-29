CREATE DATABASE `cars`CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE `cars`.`cars` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `brand` VARCHAR(15) NOT NULL,
    `model` VARCHAR(20) NOT NULL,
    `seats` MEDIUMINT(2) NOT NULL,
    `color` VARCHAR(10),
    `year` MEDIUMINT(4) NOT NULL,
    `country` VARCHAR(10),
    PRIMARY KEY (`id`)
);