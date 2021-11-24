CREATE DATABASE ayuda;

USE ayuda;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

insert into usuario (nome, email,senha)
values
('Pedro Souza','pedro@gmail.com','pedro123'),
('Maria Paula','maria@gmail.com','maria123'),
('Carlos Jose','carlos@gmail.com','carlos123'),
('Paulo Silva','paulo@gmail.com','paulo123');

select * from usuario;

CREATE TABLE serie (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nomeSerie VARCHAR(60)
); 

insert into serie (nomeSerie)
values
('Friends'),
('Modern Family'),
('One day at a Time'),
('Pretty Smart'),
('The good Place'),
('Black Mirror'),
('Bridgerton'),
('How to Get Away'),
('WandaVision');

select * from serie;

CREATE TABLE comentario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fk_serie INT,
	FOREIGN KEY (fk_serie) REFERENCES serie(id),
	nota INT,
    descricao VARCHAR(250),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

insert into comentario (fk_serie, nota, descricao, fk_usuario)
values
(2, 10, 'Melhor série eveeeer, todas as 11 temproadas são demais!',3),
(6, 10, 'Black Mirror é o tipo de serie que voce se arrepender te der demorado tanto tempo pra assistir',4),
(4, 7, 'Série bem levinha, ideal pra quem quer assistir um besteirol',3),
(2, 9, 'Com muitas situações engraçadas e boa química, Modern Family continua sendo uma ótima série, divertida e familiar. Adorei.',2),
(2, 10, 'Vida cotidiana de uma família americana moderna, com suas situações diversas. Bem engraçada.',1),
(7, 8, 'Otima série de época, me supreendi com o final.',3),
(1, 10, 'Me lembra os velhos tempos, nao canso de rever',3),
(3, 9, 'Faz muitas críticas sociais fortíssimas, com enredos bem trabalhados e muita empatia.',3);

select * from comentario;

select count(id) from comentario;

select round(avg(nota),2) from comentario where fk_serie= 2;

select * from comentario cm inner join usuario us on cm.fk_usuario= us.id;


/*CREATE TABLE comentario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    serie VARCHAR(45),
	nota INT,
    descricao VARCHAR(250),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 