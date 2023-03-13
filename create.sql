drop database if exists Project;

create database Project;
use Project;

CREATE TABLE Carrier (
`id` tinyint NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(50) NOT NULL
);

CREATE TABLE Port_of_Loading (
`id` tinyint NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(50) NOT NULL
);

CREATE TABLE Container_type (
`id` tinyint NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(50) NOT NULL
);

CREATE TABLE Freight_tariffs (
`id` tinyint NOT NULL AUTO_INCREMENT PRIMARY KEY,
`carrier_id` tinyint NOT NULL,
`port_id` tinyint NOT NULL,
`container_id` tinyint NOT NULL,
`price` DECIMAL(10,2) NOT NULL,
FOREIGN KEY (`carrier_id`) REFERENCES Carrier(`id`),
FOREIGN KEY (`port_id`) REFERENCES Port_of_Loading(`id`),
FOREIGN KEY (`container_id`) REFERENCES Container_type(`id`)
);