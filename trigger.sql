-- Criação do banco de dados "ExemploTriggers" se não existir e seleção do mesmo

CREATE DATABASE IF NOT EXISTS ExemploTriggers;

USE ExemploTriggers;

-- Criando a tabela de clientes e definindo sua estrutura

CREATE TABLE
    IF NOT EXISTS clientes (
        id_cliente INT AUTO_INCREMENT PRIMARY KEY,
        -- Identificador único do cliente
        nome VARCHAR(100),
        -- Nome do cliente
        email VARCHAR(100) -- Endereço de e-mail do cliente
    );

-- Criando a tabela de histórico de novos clientes e definindo sua estrutura

CREATE TABLE
    IF NOT EXISTS historico_novos_clientes (
        id_registro INT AUTO_INCREMENT PRIMARY KEY,
        -- Identificador único do registro
        id_cliente INT,
        -- Identificador do cliente relacionado
        nome_cliente VARCHAR(100),
        -- Nome do cliente registrado
        email_cliente VARCHAR(100),
        -- E-mail do cliente registrado
        data_insercao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        -- Data de inserção do registro
        FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente) -- Chave estrangeira referenciando a tabela de clientes
    );

-- Criando a tabela de pedidos e definindo sua estrutura

CREATE TABLE
    IF NOT EXISTS pedidos (
        id_pedido INT PRIMARY KEY,
        -- Identificador único do pedido
        descricao VARCHAR(100),
        -- Descrição do pedido
        status VARCHAR(50) -- Status do pedido
    );

-- Criando a tabela de histórico de pedidos e definindo sua estrutura

CREATE TABLE
    IF NOT EXISTS historico_pedidos (
        id_historico INT AUTO_INCREMENT PRIMARY KEY,
        -- Identificador único do histórico
        id_pedido INT,
        -- Identificador do pedido relacionado
        descricao_anterior VARCHAR(100),
        -- Descrição anterior do pedido
        status_anterior VARCHAR(50),
        -- Status anterior do pedido
        data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        -- Data de modificação do registro
        FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido) -- Chave estrangeira referenciando a tabela de pedidos
    );

-- Criando a tabela de histórico de exclusão de pedidos e definindo sua estrutura

CREATE TABLE
    IF NOT EXISTS historico_exclusao_pedidos (
        id_exclusao INT AUTO_INCREMENT PRIMARY KEY,
        -- Identificador único da exclusão
        id_pedido INT,
        -- Identificador do pedido excluído
        descricao_excluida VARCHAR(100),
        -- Descrição do pedido excluído
        status_excluido VARCHAR(50),
        -- Status do pedido excluído
        data_exclusao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        -- Data de exclusão do registro
        FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido) -- Chave estrangeira referenciando a tabela de pedidos
    );

-- Criando o trigger para registrar novos clientes na tabela de histórico de novos clientes após uma inserção na tabela de clientes

DELIMITER //

CREATE TRIGGER IF NOT EXISTS AFTER_INSERT_CLIENTE AFTER 
INSERT ON CLIENTES FOR EACH ROW BEGIN 
-- REGISTRANDO OS DETALHES DO NOVO CLIENTE NO HISTÓRICO DE NOVOS CLIENTES 
	-- Registrando os detalhes do novo cliente no histórico de novos clientes
	INSERT INTO
	    historico_novos_clientes (
	        id_cliente,
	        nome_cliente,
	        email_cliente
	    )
	VALUES (
	        NEW.id_cliente,
	        NEW.nome,
	        NEW.email
	    );
	END;


DELIMITER ;

