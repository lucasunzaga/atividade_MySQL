
/*CREATE DATABASE db_pizzaria;

USE db_pizzaria;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);


CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    ingredientes TEXT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Tradicional', 'Com sabores tradicionais.'),
('Especial', 'Combinações únicas e diferenciadas.'),
('Vegetariana', 'Ingredientes exclusivamente vegetais.'),
('Doce', 'Coberturas doces para sobremesa.'),
('Premium', 'Ingredientes de alta qualidade.');


INSERT INTO tb_pizzas (nome_pizza, tamanho, valor, ingredientes, id_categoria)
VALUES
('Margherita', 'Grande', 40.00, 'Molho de tomate, muçarela, manjericão', 1),
('Pepperoni', 'Pequena', 55.00, 'Molho de tomate, muçarela, pepperoni', 2),
('Quatro Queijos', 'Grande', 60.00, 'Muçarela, provolone, gorgonzola, parmesão', 2),
('Vegetariana', 'Pequena', 45.00, 'Molho de tomate, pimentão, cebola, cogumelos', 3),
('Chocolate', 'Grande', 50.00, 'Creme de avelã, chocolate granulado', 4),
('Brigadeiro', 'Pequena', 35.00, 'Leite condensado, chocolate granulado', 4),
('Portuguesa', 'Grande', 48.00, 'Molho de tomate, muçarela, presunto, ovos', 1),
('Trufada', 'Grande', 100.00, 'Molho de tomate, queijo brie, azeite trufado', 5);*/

SELECT * FROM tb_pizzas
WHERE valor > 45.00;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome_pizza LIKE '%M%';

SELECT p.nome_pizza, p.tamanho, p.valor, p.ingredientes, c.nome_categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;

SELECT p.nome_pizza, p.tamanho, p.valor, p.ingredientes, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';