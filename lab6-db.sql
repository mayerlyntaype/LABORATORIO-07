create schema `db-lab6`;


create table direccion (
	direc varchar(100),
    telefono varchar(100),
    email varchar(100),
    dias varchar(50),
    hora_inicio time,
    hora_cierre time
);

create table equipo (
	direccion varchar(50),
    coordinacion varchar(50),
    comunicacion varchar(50),
    administracion varchar(50)
);

create table contacto (
	nombre varchar(50),
    email varchar(50),
    asunto varchar(50),
    descripcion varchar(200)
);


INSERT INTO direccion (direc, telefono, email, dias, hora_inicio, hora_cierre) 
VALUES ('C/ Padre Feijoo, 5-1, 1504 A Coruna', '+34981216252/ =34 627484802', 'info@vilaseco.com', 'Lunes-Viernes', '10:00:00', '15:00:00' );

INSERT INTO equipo (direccion, coordinacion, comunicacion, administracion) 
VALUES ('Miriam Vilaseco', 'Silvia García-Calvo','Carolina Núñez Roca', 'Julio Fresco');




CREATE TABLE `artistas_destacados` (
  `idartistas_destacados` INT NOT NULL,
  `anio_artistas` INT(4) NOT NULL,
  `nombre_artistas` VARCHAR(60) NOT NULL,
  `link_foto_artistas` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idartistas_destacados`));

ALTER TABLE `artistas_destacados` 
ADD COLUMN `apellido_artistas` VARCHAR(60) NOT NULL AFTER `nombre_artistas`;

INSERT INTO `artistas_destacados` (`idartistas_destacados`, `anio_artistas`, `nombre_artistas`, `apellido_artistas`, `link_foto_artistas`) VALUES ('1', '2021', 'Soledad', 'Torres', 'https://media.istockphoto.com/photos/close-up-portrait-of-beautiful-woman-picture-id1132090209?k=20&m=1132090209&s=612x612&w=0&h=GpoNHGU-WmXmRx8u7y3DBHrt9n-fbSIlnpQ9flo-OEc=');
INSERT INTO `artistas_destacados` (`idartistas_destacados`, `anio_artistas`, `nombre_artistas`, `apellido_artistas`, `link_foto_artistas`) VALUES ('2', '2022', 'Angeles', 'Lima', 'https://media.istockphoto.com/photos/beautiful-woman-at-the-beach-picture-id545444792?k=20&m=545444792&s=612x612&w=0&h=GWDa22Q92xa_v_vouMaB7eUu-9H2zPeZjEgk3gbBAjQ=');






CREATE TABLE `navar2` (
  `idnavar2` INT NOT NULL AUTO_INCREMENT,
  `navar` VARCHAR(45) NULL,
  `linknavar` VARCHAR(100) NULL,
  PRIMARY KEY (`idnavar2`));

INSERT INTO `navar2` (`idnavar2`, `navar`, `linknavar`) VALUES ('1', 'Home', 'paginaprincipal.html');
INSERT INTO `navar2` (`navar`, `linknavar`) VALUES ('Quienes Somos', 'Quien/quienessomos.html');
INSERT INTO `navar2` (`navar`, `linknavar`) VALUES ('Galeria', 'Galeria/galeria.html');
INSERT INTO `navar2` (`navar`, `linknavar`) VALUES ('Contactanos', 'Form/contactanos.html');









CREATE TABLE `imagenes` (
  `idimagenes` int(11) NOT NULL AUTO_INCREMENT,
  `contendio` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idimagenes`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

UPDATE `imagenes` SET `idimagenes` = '15', `contendio` = 'https://i.ibb.co/hF7nyLd/Carlos-V-en-la-Batalla-de-M-hlberg.jpg' WHERE (`idimagenes` = '15');
UPDATE `imagenes` SET `idimagenes` = '1', `contendio` = 'https://i.ibb.co/sCtxR6d/El-3-de-mayo-en-Madrid-o-Los-fusilamientos.jpg' WHERE (`idimagenes` = '1');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/s1HrSDY/La-noche-estrellada.jpg' WHERE (`idimagenes` = '14');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/styG2s4/El-caballero-de-la-mano-en-el-pecho.jpg' WHERE (`idimagenes` = '13');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/YDdrbWD/El-sue-o-de-Jacob.jpg' WHERE (`idimagenes` = '12');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/yXbYG2C/La-Anunciaci-n.jpg' WHERE (`idimagenes` = '11');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/s1cTLqG/Autorretrato.jpg' WHERE (`idimagenes` = '10');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/Vjx3N0z/Tr-ptico-del-Jard-n-de-las-delicias.jpg' WHERE (`idimagenes` = '9');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/ZSKJtcn/Las-tres-Gracias.jpg' WHERE (`idimagenes` = '8');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/F3xc42R/Las-meninas.jpg' WHERE (`idimagenes` = '7');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/F5ZzzMj/La-Crucifixi-n.jpg' WHERE (`idimagenes` = '5');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/pJjn4vn/Judit-en-el-banquete-de-Holofernes.jpg' WHERE (`idimagenes` = '4');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/qp9gkJm/monaliza.webp' WHERE (`idimagenes` = '2');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/THVC4g2/El-Descendimiento.jpg' WHERE (`idimagenes` = '3');
UPDATE `imagenes` SET `contendio` = 'https://i.ibb.co/C5GZsk7/La-Inmaculada-Concepci-n.jpg' WHERE (`idimagenes` = '6');


CREATE TABLE `titulo` (
  `idmenu` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

UPDATE `titulo` SET `contenido` = 'GALERIA EN PHP Y MY SQL' WHERE (`idmenu` = '1');
