CREATE DATABASE `tpbasesdedatos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `e-mail` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tpbasesdedatos`.`usuarios`
(`id`, `nombre`, `e-mail`)
VALUES
(default, 'Pepe', 'pepe@gmail.com'),
(default, 'Guille', 'guille@gmail.com'),
(default, 'Gisela', 'gisela@gmail.com'),
(default, 'German', 'nino@gmail.com'),
(default, 'Claudio', 'kai@gmail.com'),
(default, 'Pedro', 'pedro@gmail.com'),
(default, 'Arturo', 'turi@gmail.com'),
(default, 'Irene', 'ire@gmail.com'),
(default, 'Gaston', 'gaston@gmail.com'),
(default, 'Margarita', 'maggie@gmail.com');


CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tpbasesdedatos`.`categorias`
(`id`, `nombre`)
VALUES
(default, 'Rock'),
(default, 'Folk'),
(default, 'Tango'),
(default, 'Clasica'),
(default, 'Techno'),
(default, 'Dance'),
(default, 'Folclore'),
(default, 'Jazz'),
(default, 'Blues'),
(default, 'Country');


CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
 `descripcion` varchar(200) NOT NULL,
 `fecha_crea` datetime NOT NULL,
  `fecha_mod` datetime DEFAULT NULL,
  `eliminar` int(11) DEFAULT NULL,
  `id_usuario (FK)` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Fk_usuarios_id` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tpbasesdedatos`.`notas`
(`id`,
`titulo`,
`descripcion`,
`fecha_crea`,
`fecha_modi`,
`eliminar`,
`id_usuario (FK)`)
VALUES
(default, 'BLAH1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit1', now(), null, 1,1),
(default, 'BLAH2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit2', now(), null, 0,2),
(default, 'BLAH3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit3', now(), null, 1,3),
(default, 'BLAH4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit4', now(), null, 0,4),
(default, 'BLAH5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit5', now(), null, 1,5),
(default, 'BLAH6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit6', now(), null, 0,6),
(default, 'BLAH7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit7', now(), null, 1,7),
(default, 'BLAH8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit8', now(), null, 0,8),
(default, 'BLAH9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit9', now(), null, 1,9),
(default, 'BLAH10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit10', now(), null, 0,10);


CREATE TABLE `notas_has_categorias` (
  `notas_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  PRIMARY KEY (`notas_id`),
  CONSTRAINT `Fk_categ_nota` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota-categ` FOREIGN KEY (`notas_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


