
/*CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


CREATE TABLE tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);


CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(50) NOT NULL,
    nivel INT DEFAULT 1,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe INT NOT NULL,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);


INSERT INTO tb_classes (nome_classe, descricao)
VALUES
('Guerreiro', 'Especialista em combates corpo a corpo.'),
('Mago', 'Usa magias para ataques à distância.'),
('Arqueiro', 'Especialista em ataques rápidos e precisos com arco.'),
('Assassino', 'Mestre em furtividade e ataques críticos.'),
('Paladino', 'Defensor com equilíbrio entre ataque e defesa.');


INSERT INTO tb_personagens (nome_personagem, nivel, poder_ataque, poder_defesa, id_classe) 
VALUES
('Thorin', 10, 2500, 1800, 1),
('Elyria', 12, 3200, 900, 2),
('Legolas', 8, 2100, 1200, 3),
('Shadow', 15, 3500, 800, 4),
('Alduin', 20, 4000, 2000, 5),
('Cassandra', 9, 1800, 1500, 1),
('Arwen', 11, 2200, 1300, 3),
('Cyrus', 14, 2800, 1700, 4);*/

/*SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT p.nome_personagem, p.nivel, p.poder_ataque, p.poder_defesa, c.nome_classe, c.descricao FROM tb_personagens p
INNER JOIN tb_classes c
ON p.id_classe = c.id_classe;*/

SELECT p.nome_personagem, p.nivel, p.poder_ataque, p.poder_defesa, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';

