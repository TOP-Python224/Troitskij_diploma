drop database if exists project;

create database project;
use project;

CREATE TABLE `carrier` (
    `id` tinyint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `port_of_loading` (
    `id` tinyint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `container_type` (
    `id` tinyint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `freight_tariffs` (
    `id` tinyint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `carrier_id` tinyint unsigned NOT NULL,
    `port_id` tinyint unsigned NOT NULL,
    `container_id` tinyint unsigned NOT NULL,
    `price` DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (`carrier_id`) REFERENCES `carrier`(`id`),
    FOREIGN KEY (`port_id`) REFERENCES `port_of_loading`(`id`),
    FOREIGN KEY (`container_id`) REFERENCES `container_type`(`id`)
);