CREATE DATABASE IF NOT EXISTS  exerciciotriggers;

USE exerciciotriggers;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    ultima_acao DATETIME
);

CREATE TABLE acesso (
    id_acesso INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    acao ENUM('login', 'logout'),
    data_acesso DATETIME,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);



DELIMITER //
CREATE TRIGGER atualiza_ultima_acao AFTER INSERT ON acesso
FOR EACH ROW
BEGIN
    DECLARE tipo_acao VARCHAR(10);
    
    SELECT acao INTO tipo_acao FROM acesso WHERE id_acesso = NEW.id_acesso;
    
    IF tipo_acao IN ('login', 'logout') THEN
        UPDATE usuario SET ultima_acao = NEW.data_acesso WHERE id = NEW.id_usuario;
    END IF;
END;
//
DELIMITER ;
