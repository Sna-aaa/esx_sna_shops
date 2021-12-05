DROP TABLE `shops`;

CREATE TABLE `shops` (
	`id` int NOT NULL AUTO_INCREMENT,
	`store` varchar(3) NOT NULL,
	`item` varchar(30) NOT NULL,
	`stock` int NOT NULL,
	PRIMARY KEY (`id`)
);

INSERT INTO `shops` (store, item, stock) VALUES
	('100','bread', 300),
	('100','water', 500),
	('101','bread', 300),
	('101','water', 500),
	('102','bread', 300),
	('102','water', 500),
	('103','bread', 300),
	('103','water', 500),
	('104','bread', 300),
	('104','water', 500),
	('105','bread', 300),
	('105','water', 500),
	('106','bread', 300),
	('106','water', 500),
	('107','bread', 300),
	('107','water', 500)
;
