CREATE DATABASE IF NOT EXISTS  exerciciotriggers;

USE exerciciotriggers;

CREATE TABLE IF NOT EXISTS estoque (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_item INT NOT NULL,
    quantidade VARCHAR(10) NOT NULL,
    data_atualização DATE
);

CREATE TABLE IF NOT EXISTS historico_estoque (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_estoque INT NOT NULL,
    novo_estoque VARCHAR(255) NOT NULL,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_estoque) REFERENCES estoque(id)
);


DELIMITER //
CREATE TRIGGER after_estoque_insert
AFTER INSERT ON estoque
FOR EACH ROW
BEGIN
    IF NEW.estoque > 3000 THEN
        INSERT INTO historico_estoque (id_item, quantidade_anterior, quantidade_nova, data_atualizacao)
    VALUES (OLD.id_item, quantidade_anterior, quantidade_nova, NOW());
    END IF;
END;
DELIMITER ;

SELECT * FROM historico_estoque;

SELECT * FROM esoque;