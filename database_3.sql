CREATE TABLE `brand_country` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `name` varchar(10) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO cars.`brand_country` (`name`) VALUES
('Sweden'),
('Germany'),
('USA'),
('France');

TRUNCATE TABLE `cars`.`cars`;

ALTER TABLE `cars`.`cars` CHANGE `country` `brand_country_id` INT(11) NOT NULL, ADD KEY `bc_key` (`brand_country_id`);

ALTER TABLE `cars`.`cars` ADD CONSTRAINT `FK_brand_country` FOREIGN KEY (`brand_country_id`) REFERENCES `cars`.`brand_country`(`id`) ON UPDATE NO ACTION ON DELETE RESTRICT;

INSERT INTO cars.`cars` (brand, model, seats, color, `year`, brand_country_id) VALUES
('volvo', 's80', '5', 'Grey', '2002', 1),
('audi', 'TT', '2', 'Red', '2007', 2),
('volkswagen', 'golf mk2', '4', 'Blue', '2004', 2),
('ford', 'focus', '5', 'white', '2015', 3),
('bmw', '320d', '5', 'grey', '2010', 2),
('renault', 'megane', '5', 'blue', '2009', 4);

