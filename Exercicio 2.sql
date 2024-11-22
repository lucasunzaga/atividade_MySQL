 CREATE DATABASE db_Ecommerce;

USE db_Ecommerce;

CREATE TABLE tb_produtos (

	id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    quantidade INT,
    valor DECIMAL(10, 2) NOT NULL, 
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, marca, quantidade, valor)
VALUES ('Smartphone Galaxy S23', 'Samsung', 50, 3999.99),
       ('Notebook ThinkPad X1 Carbon', 'Lenovo', 20, 8999.99),
       ('Smart TV OLED CX 55"', 'LG', 15, 7499.90),
       ('Console PlayStation 5', 'Sony', 25, 4499.90),
       ('Fone de Ouvido QuietComfort 45', 'Bose', 100, 1999.00),
       ('Smartwatch Series 9', 'Apple', 30, 4299.00),
       ('Monitor UltraWide 34"', 'Dell', 10, 5999.99),
       ('Caixa de Som Bluetooth Charge 5', 'JBL', 70, 899.90),
       ('Câmera Mirrorless Alpha 7 IV', 'Sony', 5, 14999.90),
       ('Roteador AX6000 WiFi 6', 'TP-Link', 40, 1399.99);

SELECT * FROM tb_produtos WHERE valor > 5000;

SELECT * FROM tb_produtos WHERE valor < 5000;

UPDATE tb_produtos SET marca = 'Acer' WHERE id = 2;

SELECT * FROM tb_produtos;