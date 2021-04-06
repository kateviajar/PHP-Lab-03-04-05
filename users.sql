Create database if not exists the_registry;
USE the_registry;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_users_email` (`email`)
);

CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `the_registry`.`books` 
ADD COLUMN `userID` INT(11) NULL AFTER `title`;

SELECT * FROM users;
SELECT * FROM books;