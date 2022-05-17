CREATE TABLE IF NOT EXISTS uf (
	chave BIGINT,
	codigo TEXT,
	nome VARCHAR(150),
	PRIMARY KEY (`chave`)
);
insert into uf (chave, codigo, nome) values (1, 'ipsum', 'Zhenshan');
insert into uf (chave, codigo, nome) values (2, 'orci', 'Ciudad Vieja');
insert into uf (chave, codigo, nome) values (3, 'massa', 'Saýat');
insert into uf (chave, codigo, nome) values (4, 'tristique', 'Silva Jardim');
insert into uf (chave, codigo, nome) values (5, 'nisl', 'Bugo');
insert into uf (chave, codigo, nome) values (6, 'praesent', 'Tuojiang');
insert into uf (chave, codigo, nome) values (7, 'arcu', 'Chacarita');
insert into uf (chave, codigo, nome) values (8, 'odio', 'Briteiros Santa Leocádia');
insert into uf (chave, codigo, nome) values (9, 'et', 'Dancheng');
insert into uf (chave, codigo, nome) values (10, 'nulla', 'Vol’no-Nadezhdinskoye');
insert into uf (chave, codigo, nome) values (11, 'maecenas', 'Vostryakovo');
insert into uf (chave, codigo, nome) values (12, 'purus', 'Batad');
insert into uf (chave, codigo, nome) values (13, 'et', 'Malasin');
insert into uf (chave, codigo, nome) values (14, 'eu', 'Kafyr-Kumukh');
insert into uf (chave, codigo, nome) values (15, 'etiam', 'Mosty');
insert into uf (chave, codigo, nome) values (16, 'posuere', 'Châlons-en-Champagne');
insert into uf (chave, codigo, nome) values (17, 'in', 'Nueva Helvecia');
insert into uf (chave, codigo, nome) values (18, 'quis', 'Xiali');
insert into uf (chave, codigo, nome) values (19, 'justo', 'Tayzhina');
insert into uf (chave, codigo, nome) values (20, 'nascetur', 'Érd');
insert into uf (chave, codigo, nome) values (21, 'massa', 'Dumalinao');
insert into uf (chave, codigo, nome) values (22, 'proin', 'Doumen');
insert into uf (chave, codigo, nome) values (23, 'vitae', 'Kerva');
insert into uf (chave, codigo, nome) values (24, 'dictumst', 'Karangboyo');
insert into uf (chave, codigo, nome) values (25, 'ligula', 'Bęczarka');
insert into uf (chave, codigo, nome) values (26, 'primis', 'Los Guayos');
insert into uf (chave, codigo, nome) values (27, 'amet', 'Ozëry');
insert into uf (chave, codigo, nome) values (28, 'morbi', 'Rautjärvi');
insert into uf (chave, codigo, nome) values (29, 'risus', 'Cabittaogan');
insert into uf (chave, codigo, nome) values (30, 'donec', 'Kafr Şaqr');
insert into uf (chave, codigo, nome) values (31, 'morbi', 'Shanling');
insert into uf (chave, codigo, nome) values (32, 'ultrices', 'Roissy Charles-de-Gaulle');
insert into uf (chave, codigo, nome) values (33, 'orci', 'Trnovska Vas');
insert into uf (chave, codigo, nome) values (34, 'orci', 'Tambakrejo');
insert into uf (chave, codigo, nome) values (35, 'erat', 'Krajan Waturoyo');
insert into uf (chave, codigo, nome) values (36, 'nec', 'Patrocínio');
insert into uf (chave, codigo, nome) values (37, 'diam', 'Stamford');
insert into uf (chave, codigo, nome) values (38, 'ultrices', 'Maubara');
insert into uf (chave, codigo, nome) values (39, 'accumsan', 'Pilar do Sul');
insert into uf (chave, codigo, nome) values (40, 'vestibulum', 'Zhangbagou');
insert into uf (chave, codigo, nome) values (41, 'sapien', 'Saramech');
insert into uf (chave, codigo, nome) values (42, 'at', 'Hongchuan');
insert into uf (chave, codigo, nome) values (43, 'in', 'Dishnā');
insert into uf (chave, codigo, nome) values (44, 'in', 'Eslöv');
insert into uf (chave, codigo, nome) values (45, 'aliquam', 'Rayevskiy');
insert into uf (chave, codigo, nome) values (46, 'morbi', 'Polanica-Zdrój');
insert into uf (chave, codigo, nome) values (47, 'interdum', 'Lewolen');
insert into uf (chave, codigo, nome) values (48, 'donec', 'Sułkowice');
insert into uf (chave, codigo, nome) values (49, 'luctus', 'Plaju');
insert into uf (chave, codigo, nome) values (50, 'est', 'Santander');


CREATE TABLE IF NOT EXISTS `pessoa` (
  `chave` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(25) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `uf` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`chave`),
  KEY `uf` (`uf`),
  CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`uf`) REFERENCES `uf` (`chave`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela teste.pessoa: ~50 rows (aproximadamente)
INSERT INTO `pessoa` (`chave`, `codigo`, `nome`, `uf`) VALUES
	(1, '1', 'Leann', 1),
	(2, '2', 'Flossi', 2),
	(3, '3', 'Marlyn', 3),
	(4, '4', 'Jasun', 4),
	(5, '5', 'Towney', 5),
	(6, '6', 'Giacopo', 6),
	(7, '7', 'Maiga', 7),
	(8, '8', 'Arv', 8),
	(9, '9', 'Ozzie', 9),
	(10, '10', 'Breanne', 10),
	(11, '11', 'Gavra', 11),
	(12, '12', 'Cassandra', 12),
	(13, '13', 'Morton', 13),
	(14, '14', 'Billie', 14),
	(15, '15', 'Vanda', 15),
	(16, '16', 'Rodney', 16),
	(17, '17', 'Hilary', 17),
	(18, '18', 'Lev', 18),
	(19, '19', 'Hube', 19),
	(20, '20', 'Gav', 20),
	(21, '21', 'Kittie', 21),
	(22, '22', 'Austen', 22),
	(23, '23', 'Yorke', 23),
	(24, '24', 'Marlow', 24),
	(25, '25', 'Zachery', 25),
	(26, '26', 'Maryjane', 26),
	(27, '27', 'Lauree', 27),
	(28, '28', 'Fanchette', 28),
	(29, '29', 'Ned', 29),
	(30, '30', 'Zak', 30),
	(31, '31', 'Llewellyn', 31),
	(32, '32', 'Wolf', 32),
	(33, '33', 'Job', 33),
	(34, '34', 'Zara', 34),
	(35, '35', 'Terri', 35),
	(36, '36', 'Rivkah', 36),
	(37, '37', 'Becca', 37),
	(38, '38', 'Algernon', 38),
	(39, '39', 'Rosetta', 39),
	(40, '40', 'Abraham', 40),
	(41, '41', 'Durand', 41),
	(42, '42', 'Adriano', 42),
	(43, '43', 'Maddalena', 43),
	(44, '44', 'Lorrayne', 44),
	(45, '45', 'Edgar', 45),
	(46, '46', 'Wenda', 46),
	(47, '47', 'Sibelle', 47),
	(48, '48', 'Kenton', 48),
	(49, '49', 'Anastasia', 49),
	(50, '50', 'Benedict', 50);
	


create table recurso (
	chave BIGINT,
	codigo TEXT,
	nome VARCHAR(150),
	PRIMARY KEY (`chave`)
);
insert into recurso (chave, codigo, nome) values (1, 'vestibulum', 'ipsum primis');
insert into recurso (chave, codigo, nome) values (2, 'consequat', 'tellus nisi');
insert into recurso (chave, codigo, nome) values (3, 'risus', 'vulputate elementum');
insert into recurso (chave, codigo, nome) values (4, 'id', 'quisque');
insert into recurso (chave, codigo, nome) values (5, 'curabitur', 'nulla');
insert into recurso (chave, codigo, nome) values (6, 'adipiscing', 'mus');
insert into recurso (chave, codigo, nome) values (7, 'enim', 'nascetur');
insert into recurso (chave, codigo, nome) values (8, 'bibendum', 'id massa');
insert into recurso (chave, codigo, nome) values (9, 'id', 'in');
insert into recurso (chave, codigo, nome) values (10, 'urna', 'habitasse platea');
insert into recurso (chave, codigo, nome) values (11, 'commodo', 'amet justo');
insert into recurso (chave, codigo, nome) values (12, 'lacus', 'sit');
insert into recurso (chave, codigo, nome) values (13, 'ut', 'luctus');
insert into recurso (chave, codigo, nome) values (14, 'quam', 'integer pede');
insert into recurso (chave, codigo, nome) values (15, 'aliquam', 'nunc viverra');
insert into recurso (chave, codigo, nome) values (16, 'in', 'libero rutrum');
insert into recurso (chave, codigo, nome) values (17, 'posuere', 'elit sodales');
insert into recurso (chave, codigo, nome) values (18, 'luctus', 'congue');
insert into recurso (chave, codigo, nome) values (19, 'placerat', 'magna');
insert into recurso (chave, codigo, nome) values (20, 'in', 'morbi');
insert into recurso (chave, codigo, nome) values (21, 'vestibulum', 'pretium');
insert into recurso (chave, codigo, nome) values (22, 'congue', 'congue eget');
insert into recurso (chave, codigo, nome) values (23, 'amet', 'quam sollicitudin');
insert into recurso (chave, codigo, nome) values (24, 'quam', 'augue');
insert into recurso (chave, codigo, nome) values (25, 'sed', 'curae');
insert into recurso (chave, codigo, nome) values (26, 'tincidunt', 'primis in');
insert into recurso (chave, codigo, nome) values (27, 'nascetur', 'vitae');
insert into recurso (chave, codigo, nome) values (28, 'integer', 'in purus');
insert into recurso (chave, codigo, nome) values (29, 'et', 'sem');
insert into recurso (chave, codigo, nome) values (30, 'eros', 'in ante');
insert into recurso (chave, codigo, nome) values (31, 'erat', 'sapien sapien');
insert into recurso (chave, codigo, nome) values (32, 'hac', 'diam');
insert into recurso (chave, codigo, nome) values (33, 'vestibulum', 'id');
insert into recurso (chave, codigo, nome) values (34, 'phasellus', 'suscipit');
insert into recurso (chave, codigo, nome) values (35, 'sapien', 'tortor sollicitudin');
insert into recurso (chave, codigo, nome) values (36, 'dolor', 'ullamcorper augue');
insert into recurso (chave, codigo, nome) values (37, 'leo', 'pede posuere');
insert into recurso (chave, codigo, nome) values (38, 'vestibulum', 'parturient montes');
insert into recurso (chave, codigo, nome) values (39, 'venenatis', 'lacus at');
insert into recurso (chave, codigo, nome) values (40, 'luctus', 'purus');
insert into recurso (chave, codigo, nome) values (41, 'eros', 'ut odio');
insert into recurso (chave, codigo, nome) values (42, 'nulla', 'ut');
insert into recurso (chave, codigo, nome) values (43, 'accumsan', 'id');
insert into recurso (chave, codigo, nome) values (44, 'convallis', 'et');
insert into recurso (chave, codigo, nome) values (45, 'integer', 'id');
insert into recurso (chave, codigo, nome) values (46, 'praesent', 'tortor quis');
insert into recurso (chave, codigo, nome) values (47, 'viverra', 'purus eu');
insert into recurso (chave, codigo, nome) values (48, 'mus', 'ipsum primis');
insert into recurso (chave, codigo, nome) values (49, 'nascetur', 'vel');
insert into recurso (chave, codigo, nome) values (50, 'aenean', 'et');

CREATE TABLE IF NOT EXISTS `pedido` (
  `chave` bigint(20) NOT NULL AUTO_INCREMENT,
  `movimentacao` date DEFAULT NULL,
  `pessoa` bigint(20) DEFAULT NULL,
  `recurso` bigint(20) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `unitario` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`chave`),
  KEY `pessoa` (`pessoa`),
  KEY `recurso` (`recurso`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`pessoa`) REFERENCES `pessoa` (`chave`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`recurso`) REFERENCES `recurso` (`chave`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;


INSERT INTO `pedido` (`chave`, `movimentacao`, `pessoa`, `recurso`, `quantidade`, `unitario`, `total`) VALUES
	(1, '2006-02-10', 50, 24, 96.34, 2, 83.31),
	(2, '2006-02-06', 49, 26, 1.81, 5, 77.27),
	(3, '2006-02-11', 8, 29, 71.6, 8, 80.78),
	(4, '2006-01-01', 6, 6, 89.39, 4, 24.44),
	(5, '2006-01-13', 50, 8, 99.78, 7, 19.19),
	(6, '2006-01-28', 35, 17, 2.33, 6, 41.43),
	(7, '2006-01-01', 49, 36, 75.75, 9, 10.31),
	(8, '2005-12-08', 1, 16, 99.32, 7, 93.51),
	(9, '2006-02-10', 22, 2, 57.17, 3, 14.09),
	(10, '2005-12-10', 47, 35, 61.85, 5, 47.17),
	(11, '2005-12-05', 27, 47, 29.85, 6, 28.79),
	(12, '2005-12-05', 45, 47, 72.29, 4, 88.64),
	(13, '2006-01-30', 19, 39, 87.05, 10, 67.65),
	(14, '2005-12-03', 3, 24, 2.15, 7, 8.23),
	(15, '2005-12-22', 14, 9, 1.46, 8, 99),
	(16, '2006-01-18', 19, 26, 33.7, 10, 53.3),
	(17, '2006-02-15', 46, 49, 27.61, 3, 66.71),
	(18, '2005-12-18', 6, 26, 67, 9, 88.5),
	(19, '2005-12-13', 9, 28, 33.69, 10, 57.4),
	(20, '2005-12-28', 49, 2, 39.87, 1, 44.18),
	(21, '2005-12-25', 29, 7, 57.34, 6, 88.27),
	(22, '2006-01-07', 41, 27, 48.75, 5, 90.75),
	(23, '2006-01-19', 17, 25, 6.5, 5, 45.55),
	(24, '2005-12-09', 44, 27, 90.16, 8, 29.64),
	(25, '2006-01-30', 9, 48, 26.7, 3, 2.07),
	(26, '2006-02-12', 2, 27, 64.13, 4, 63.93),
	(27, '2006-01-27', 34, 29, 50.56, 1, 72.33),
	(28, '2006-02-10', 12, 13, 57.32, 7, 69.27),
	(29, '2006-01-14', 47, 22, 33.91, 3, 30.52),
	(30, '2006-01-25', 27, 32, 40.95, 5, 28.42),
	(31, '2005-12-08', 32, 11, 28.42, 4, 66.76),
	(32, '2006-02-09', 18, 5, 26.23, 7, 47.89),
	(33, '2006-01-20', 31, 15, 4.51, 1, 12.13),
	(34, '2006-01-24', 5, 14, 55.73, 8, 36.09),
	(35, '2006-01-27', 33, 36, 44.51, 10, 82.75),
	(36, '2006-01-09', 6, 45, 4.91, 9, 68.45),
	(37, '2006-01-22', 44, 46, 52.96, 2, 18.93),
	(38, '2005-12-07', 25, 3, 29.82, 3, 12.4),
	(39, '2006-01-26', 26, 37, 22.46, 6, 86.63),
	(40, '2005-12-09', 41, 21, 15.13, 4, 74.82),
	(41, '2005-12-14', 39, 39, 3.67, 1, 13.77),
	(42, '2005-12-25', 25, 7, 46.52, 7, 38.89),
	(43, '2005-12-02', 38, 44, 86.56, 4, 13.37),
	(44, '2005-12-30', 29, 19, 84.01, 6, 14.1),
	(45, '2006-02-09', 18, 44, 1.9, 10, 92.05),
	(46, '2006-01-01', 32, 5, 17.54, 2, 16.53),
	(47, '2005-12-18', 24, 37, 13.58, 5, 20.83),
	(48, '2006-02-01', 15, 13, 45.32, 1, 64.87),
	(49, '2005-12-20', 19, 1, 67.43, 6, 13.44),
	(50, '2006-01-23', 23, 17, 32.66, 10, 27.61);