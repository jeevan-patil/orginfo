
CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` TEXT NOT NULL,
  `city` VARCHAR(255) NULL DEFAULT NULL,
  `state` VARCHAR(255) NULL DEFAULT NULL,
  `country` VARCHAR(255) NULL DEFAULT NULL,
  `role` VARCHAR(45) NULL DEFAULT NULL,
  `active` INT(1) NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC));
  
  INSERT INTO `users` VALUES (1,'Jeevan Patil','jbkpatil@gmail.com','jeevan','Pune','Maharashtra','India','ROLE_ADMIN',1,NULL,NULL);
  INSERT INTO `users` VALUES (2,'Chandan Nayak','travion@gmail.com','chandan','Pune','Maharashtra','India','ROLE_ADMIN',1,NULL,NULL);
  INSERT INTO `users` VALUES (3,'Sachin Tendulkar','sachin@gmail1.com','sachin','Pune','Maharashtra','India','ROLE_ADMIN',1,NULL,NULL);