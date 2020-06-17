# Gymnasium
Gymnasium is a web application built using Hibernate framework 

# Requirements
Hibernate framework of version 4.3.11

Apache Tomcat server of latest version

MySQL database

# MySQL Database queries
create database gymnasium;

use database gymnasium;

CREATE TABLE `final_register` (
  `id` DOUBLE NOT NULL AUTO_INCREMENT,
  `contact` VARCHAR(45) NOT NULL DEFAULT '',
  `email` VARCHAR(45) NOT NULL DEFAULT '',
  `fname` VARCHAR(45) NOT NULL DEFAULT '',
  `gender` VARCHAR(45) NOT NULL DEFAULT '',
  `instructor` VARCHAR(45) NOT NULL DEFAULT '',
  `lname` VARCHAR(45) NOT NULL DEFAULT '',
  `packages` VARCHAR(45) NOT NULL DEFAULT '',
  `price` VARCHAR(45) NOT NULL DEFAULT '',
  `slot` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY(`id`)
);

CREATE TABLE `user_login` (
  `id` DOUBLE NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL DEFAULT '',
  `firstName` VARCHAR(45) NOT NULL DEFAULT '',
  `lastName` VARCHAR(45) NOT NULL DEFAULT '',
  `lastName` VARCHAR(45) NOT NULL DEFAULT '',
  `password` VARCHAR(45) NOT NULL DEFAULT '',
  `username` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY(`id`));
