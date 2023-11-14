CREATE DATABASE OscarDB;

USE OscarDB;

CREATE TABLE melhorFilme (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    Lancamento DATE
);

SELECT * FROM melhorFilme;

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Tár',
        'Musical/Drama',
        '2023/01/26'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Top Gun: Maverick',
        'Ação/Aventura',
        '2022/05/26'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Os Fabelmans',
        'Drama/Amadurecimento',
        '2023/01/12'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Tudo em todo o lugar ao mesmo tempo',
        'Ficção científica/Aventura',
        '2022/06/23'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Triângulo da tristeza',
        'Comédia/Drama',
        '2023/02/16'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Elvis',
        'Musical/Drama',
        '2022/07/14'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Avatar: O caminho da água',
        'Ficção científica/Ação',
        '2022/12/15'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Women talking',
        'Drama/Thriller',
        '2023/03/02'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Os Banshees de Inisherin',
        'Comédia/Drama',
        '2022/10/20'
    );

INSERT INTO
    melhorFilme (
        Nome,
        Tipo_de_Filme,
        Lancamento
    )
VALUES (
        'Nada de Novo no Front',
        'Guerra/Ação',
        '2022/09/29'
    );