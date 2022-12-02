CREATE DATABASE  IF NOT EXISTS `posts-app` 


DROP TABLE IF EXISTS `likes`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `posts`;

CREATE TABLE `users` (
  `email` varchar(100) NOT NULL,
  `names` varchar(50) NOT NULL,
  `lastnames` varchar(50) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('davileo846@gmail.com','David Leonardo','Malaver','2022-12-02','2022-12-02'),('emailprueba@mail.com','user prueba','perez','2022-12-01','2022-12-01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



CREATE TABLE `posts` (
  `id_posts` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id_posts`),
  UNIQUE KEY `id_posts_UNIQUE` (`id_posts`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Publicacion de prueba','Esta publicación se creo desde thunder client','2022-12-01','2022-12-01'),(2,'Hola soy yo de nuevo','Este mensaje se autodestruira en 30seg',NULL,NULL),(3,'Bye New York','Inserte descripción aqui',NULL,NULL),(4,'Nuevo post','Primera publicacion desde FrontEnd','2022-12-02','2022-12-02'),(5,'Casa Nueva','Costo 1000000000','2022-12-02','2022-12-02'),(6,'Me quede sin ideas','XDXD','2022-12-02','2022-12-02'),(7,'Me quede sin ideas x2','toy triste','2022-12-02','2022-12-02'),(8,'Nuevo post 1223354','asdfghjklñ.,mnbvcxzaAWERTYHJK','2022-12-02','2022-12-02'),(9,'dfdfdgfg','fgfdgwewdc','2022-12-02','2022-12-02'),(10,'new post','otra vez xd','2022-12-02','2022-12-02'),(11,'la tristeza ','invade mi alma','2022-12-02','2022-12-02'),(12,'la tristeza ','invade mi alma','2022-12-02','2022-12-02'),(13,'la tristeza ','invade mi alma','2022-12-02','2022-12-02'),(14,'porque no funciona ','una descripcion interesante','2022-12-02','2022-12-02'),(15,'volviendo a probar esta monda','a ver si funciona','2022-12-02','2022-12-02');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;



CREATE TABLE `likes` (
  `id_post` int NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_post`,`email`),
  KEY `email_idx` (`email`),
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `users` (`email`),
  CONSTRAINT `id_post` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_posts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
