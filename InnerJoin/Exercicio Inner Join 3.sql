
/*CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);


CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    validade DATE NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Medicamentos', 'Produtos voltados para tratamentos de saúde.'),
('Higiene', 'Produtos de cuidados pessoais e limpeza.'),
('Cosméticos', 'Produtos de beleza e cuidados estéticos.'),
('Vitaminas', 'Suplementos e complexos vitamínicos.'),
('Infantil', 'Produtos voltados ao cuidado infantil.');


INSERT INTO tb_produtos (nome_produto, quantidade, valor, validade, id_categoria)
VALUES
('Paracetamol', 100, 15.00, '2025-12-31', 1),
('Shampoo', 50, 25.00, '2024-06-30', 2),
('Base Facial', 30, 55.00, '2024-09-15', 3),
('Vitamina C', 80, 45.00, '2025-05-20', 4),
('Fralda Infantil', 40, 60.00, '2025-01-01', 5),
('Protetor Solar', 25, 75.00, '2024-07-10', 3),
('Ibuprofeno', 70, 20.00, '2025-11-30', 1),
('Sabonete Líquido', 60, 10.00, '2024-03-01', 2);*/

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.quantidade, p.valor, p.validade, c.nome_categoria, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;

SELECT p.nome_produto, p.quantidade, p.valor, p.validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';