/*-- CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores (

	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_admissao DATE NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);*/

/*INSERT INTO tb_colaboradores (nome, data_admissao, cargo, salario)
VALUES ("Paollo", "2022-02-18", "Beck-End", 3214.86);*/



-- SELECT * FROM tb_colaboradores 	WHERE salario > 2000;

-- SELECT * FROM tb_colaboradores 	WHERE salario < 2000

UPDATE tb_colaboradores SET cargo = "Back End" WHERE id = 5;

SELECT * FROM tb_colaboradores;