 CREATE DATABASE db_Escola;

USE db_Escola;

CREATE TABLE tb_alunos (

	id BIGINT AUTO_INCREMENT,
    matricula VARCHAR (255),
    aluno VARCHAR(255) NOT NULL,
    nota DECIMAL(4,2),
    turma VARCHAR (255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(matricula, aluno, nota, turma)
VALUES (202301, "André", 8.5, "Turma A"),
       (202302, "Beatriz", 9.2, "Turma B"),
       (202303, "Carlos", 7.8, "Turma A"),
       (202304, "Diana", 8.0, "Turma B"),
       (202305, "Eduardo", 6.5, "Turma C"),
       (202306, "Fernanda", 9.0, "Turma A"),
       (202307, "Gabriel", 7.2, "Turma C"),
       (202308, "Helena", 8.8, "Turma B"),
       (202309, "Igor", 6.9, "Turma A"),
       (202310, "Juliana", 8.4, "Turma C");

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET turma = "Turma B" WHERE id = 1;

SELECT * FROM tb_alunos;