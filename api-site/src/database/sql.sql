/* para workbench - local - desenvolvimento */
CREATE DATABASE ayuda;

USE ayuda;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE comentario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    serie VARCHAR(45),
	nota INT,
    descricao VARCHAR(250),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 
select * from comentario;

