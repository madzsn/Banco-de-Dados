
    CREATE DATABASE OscarDB;

USE OscarDB;

-- criando Tabela melhorFilme
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



-- criando Tabela de melhorDiretor
CREATE TABLE melhorDiretor (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Diretor VARCHAR(255),
    Filme VARCHAR(255)
);

SELECT * FROM melhorDiretor;

INSERT INTO
    melhorDiretor (
        Nome_Diretor,
        Filme
    )
VALUES (
        'Martin Mcdonagh',
        'Os Banshees de Insherin'
    );

INSERT INTO
    melhorDiretor (
        Nome_Diretor,
        Filme
    )
VALUES (
        'Daniel Kwan & Daniel Scheinert',
        'Tudo em Todo o Lugar ao Mesmo Tempo'
    );

INSERT INTO
    melhorDiretor (
        Nome_Diretor,
        Filme
    )
VALUES (
        'Steven Spielberg',
        'Os Fabelmans'
    );

INSERT INTO
    melhorDiretor (
        Nome_Diretor,
        Filme
    )
VALUES (
        'Todd Field',
        'Tár'
    );

INSERT INTO
    melhorDiretor (
        Nome_Diretor,
        Filme
    )
VALUES (
        'Ruben Östlund',
        'Triângulo da Tristeza'
    );

-- Tabela melhorAtriz
CREATE TABLE melhorAtriz (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Atriz VARCHAR(255),
    Filme VARCHAR(255)
);

SELECT * FROM melhorAtriz;

INSERT INTO
    melhorAtriz (
        Atriz,
        Filme
    )
VALUES (
        'Cate Blanchett',
        'Tár'
    );

INSERT INTO
    melhorAtriz (
        Atriz,
        Filme
    )
VALUES (
        'Ana de Armas',
        'Blonde'
    );

INSERT INTO
    melhorAtriz (
        Atriz,
        Filme
    )
VALUES (
        'Andrea Riseborough',
        'To Leslie'
    );

INSERT INTO
    melhorAtriz (
        Atriz,
        Filme
    )
VALUES (
        'Michelle Williams',
        'Os Fabelmans'
    );

INSERT INTO
    melhorAtriz (
        Atriz,
        Filme
    )
VALUES (
        'Michelle Yeoh',
        'Tudo em Todo Lugar ao Mesmo Tempo'
    );

-- Tabela melhorAtor
CREATE TABLE melhorAtor (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Ator VARCHAR(255),
    Filme VARCHAR(255)
);

SELECT * FROM melhorAtor;

INSERT INTO
    melhorAtor (
        Ator,
        Filme
    )
VALUES (
        'Austin',
        'Elvis'
    );

INSERT INTO
    melhorAtor (
        Ator,
        Filme
    )
VALUES (
        'Colin Farrel',
        'Os Banshees de Inisherin'
    );

INSERT INTO
    melhorAtor (
        Ator,
        Filme
    )
VALUES (
        'Brendan Fraser',
        'A Baleia'
    );

INSERT INTO
    melhorAtor (
        Ator,
        Filme
    )
VALUES (
        'Paul Mescal',
        'Aftersun'
    );

INSERT INTO
    melhorAtor (
        Ator,
        Filme
    )
VALUES (
        'Bill Nighy',
        'Living'
    );


-- Tabela melhorAtorCoadjuvante
CREATE TABLE melhorAtorCoadjuvante (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Ator VARCHAR(255),
    Filme VARCHAR(255)
);

SELECT * FROM melhorAtorCoadjuvante;

INSERT INTO
    melhorAtorCoadjuvante (
<<<<<<< Updated upstream
        AtorCoadjuvante,
=======
        Ator,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Ke Huy Quan',
        'Tudo em todo o lugar ao mesmo tempo'
    );

INSERT INTO
    melhorAtorCoadjuvante (
<<<<<<< Updated upstream
        AtorCoadjuvante,
=======
        Ator,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Brendan Gleeson',
        'Os Banshees de Inisherin'
    );

INSERT INTO
    melhorAtorCoadjuvante (
<<<<<<< Updated upstream
        AtorCoadjuvante,
=======
        Ator,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Judd Hirsch',
        'Os Fabelmans'
    );

INSERT INTO
    melhorAtorCoadjuvante (
<<<<<<< Updated upstream
        AtorCoadjuvante,
=======
        Ator,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Brian Tyree Henry',
        'Passagem'
    );

INSERT INTO
    melhorAtorCoadjuvante (
<<<<<<< Updated upstream
        AtorCoadjuvante,
=======
        Ator,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Barry Keoghan',
        'Os Banshees de Inisherin'
    );


-- Tabela melhorAtrizCoadjuvante
CREATE TABLE melhorAtrizCoadjuvante (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Atriz VARCHAR(255),
    Filme VARCHAR(255)
);

SELECT * FROM melhorAtrizCoadjuvante;

INSERT INTO
    melhorAtrizCoadjuvante (
<<<<<<< Updated upstream
        AtrizCoadjuvante,
=======
        Atriz,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Angela Bassett',
        'Pantera Negra: Wakanda para sempre'
    );

INSERT INTO
    melhorAtrizCoadjuvante (
<<<<<<< Updated upstream
        AtrizCoadjuvante,
=======
        Atriz,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Hong Chau',
        'A baleia'
    );

INSERT INTO
    melhorAtrizCoadjuvante (
<<<<<<< Updated upstream
        AtrizCoadjuvante,
=======
        Atriz,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Kerry Condon',
        'Os Banshees de Inisherin'
    );

INSERT INTO
    melhorAtrizCoadjuvante (
<<<<<<< Updated upstream
        AtrizCoadjuvante,
=======
        Atriz,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Jamie Lee Curtis',
        'Tudo em todo o lugar ao mesmo tempo'
    );

INSERT INTO
    melhorAtrizCoadjuvante (
<<<<<<< Updated upstream
        AtrizCoadjuvante,
=======
        Atriz,
>>>>>>> Stashed changes
        Filme
    )
VALUES (
        'Stephanie Hsu',
        'Tudo em todo o lugar ao mesmo tempo'
    );


-- Tabela melhorRoteiroOriginal
CREATE TABLE melhorRoteiroOriginal (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorRoteiroOriginal;

INSERT INTO
    melhorRoteiroOriginal (
        Filme
    )
VALUES (
        'Os Banshees de Inisherin'
    );

INSERT INTO
    melhorRoteiroOriginal (
        Filme
    )
VALUES (
        'Tár'
    );

INSERT INTO
    melhorRoteiroOriginal (
        Filme
    )
VALUES (
        'Os Fabelmans'
    );

INSERT INTO
    melhorRoteiroOriginal (
        Filme
    )
VALUES (
        'Tudo em todo lugar ao mesmo tempo'
    );

INSERT INTO
    melhorRoteiroOriginal (
        Filme
    )
VALUES (
        'Triângulo da Tristeza'
    );


-- Tabela melhorRoteiroAdaptado
CREATE TABLE melhorRoteiroAdaptado (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorRoteiroAdaptado;

INSERT INTO
    melhorRoteiroAdaptado (
        Filme
    )
VALUES (
        'Living'
    );

INSERT INTO
    melhorRoteiroAdaptado (
        Filme
    )
VALUES (
        'Nada de novo no front'
    );

INSERT INTO
    melhorRoteiroAdaptado (
        Filme
    )
VALUES (
        'Glass Onion'
    );

INSERT INTO
    melhorRoteiroAdaptado (
        Filme
    )
VALUES (
        'Top Gun: Maverick'
    );

INSERT INTO
    melhorRoteiroAdaptado (
        Filme
    )
VALUES (
        'Women Talking'
    );


-- Tabela melhorAnimacao
CREATE TABLE melhorAnimacao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255),
    Tipo_de_Filme VARCHAR(255)
);

SELECT * FROM melhorAnimacao;

INSERT INTO
    melhorAnimacao (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Pinóquio',
        'Fantasia'
    );

INSERT INTO
    melhorAnimacao (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Gato de Botas 2: O último pedido',
        'Aventura'
    );

INSERT INTO
    melhorAnimacao (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Red: Crescer é uma fera',
        'Comédia'
    );

INSERT INTO
    melhorAnimacao (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Marcell the shell with shoes on',
        'Comédia'
    );

INSERT INTO
    melhorAnimacao (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'A fera do Mar',
        'Aventura'
    );


-- Tabela melhorDocumentário
CREATE TABLE melhorDocumentario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255),
    Tipo_de_Filme VARCHAR(255)
);

SELECT * FROM melhorDocumentario;

INSERT INTO
    melhorDocumentario (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'All that breathes',
        'Documental'
    );

INSERT INTO
    melhorDocumentario (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'All the beauty and the bloodshed',
        'Drama'
    );

INSERT INTO
    melhorDocumentario (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Fire of love',
        'Romance'
    );

INSERT INTO
    melhorDocumentario (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'A house made of splinters',
        'Documental'
    );

INSERT INTO
    melhorDocumentario (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Navalny',
        'Drama'
    );



-- Tabela melhorFilmeInternacional
CREATE TABLE melhorFilmeInternacional (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255),
    País_do_Filme VARCHAR(255)
);

SELECT * FROM melhorFilmeInternacional;

INSERT INTO
    melhorFilmeInternacional (
        Filme,
        País_do_Filme
    )
VALUES (
        'Nada de novo no front',
        'Alemanha'
    );

INSERT INTO
    melhorFilmeInternacional (
        Filme,
        País_do_Filme
    )
VALUES (
        'Argentina, 1985',
        'Argentina'
    );

INSERT INTO
    melhorFilmeInternacional (
        Filme,
        País_do_Filme
    )
VALUES (
        'Close',
        'Bélgica'
    );

INSERT INTO
    melhorFilmeInternacional (
        Filme,
        País_do_Filme
    )
VALUES (
        'EO',
        'Polônia'
    );

INSERT INTO
    melhorFilmeInternacional (
        Filme,
        País_do_Filme
    )
VALUES (
        'A quiet girl',
        'Irlanda'
    );


-- Tabela melhorMontagem
CREATE TABLE melhorMontagem (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorMontagem;

INSERT INTO
    melhorMontagem (
        Filme
    )
VALUES (
        'Top Gun: Maverick'
    );

INSERT INTO
    melhorMontagem (
        Filme
    )
VALUES (
        'Tár'
    );

INSERT INTO
    melhorMontagem (
        Filme
    )
VALUES (
        'Tudo em todo lugar ao mesmo tempo'
    );

INSERT INTO
    melhorMontagem (
        Filme
    )
VALUES (
        'Os Banshees de Insherin'
    );

INSERT INTO
    melhorMontagem (
        Filme
    )
VALUES (
        'Elvis'
    );


-- Tabela melhorDirecaoFotografia
CREATE TABLE melhorDirecaoFotografia (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorDirecaoFotografia;

INSERT INTO
    melhorDirecaoFotografia (
        Filme
    )
VALUES (
        'Nada de novo no front'
    );

INSERT INTO
    melhorDirecaoFotografia (
        Filme
    )
VALUES (
        'Bardo'
    );

INSERT INTO
    melhorDirecaoFotografia (
        Filme
    )
VALUES (
        'Elvis'
    );

INSERT INTO
    melhorDirecaoFotografia (
        Filme
    )
VALUES (
        'Tár'
    );

INSERT INTO
    melhorDirecaoFotografia (
        Filme
    )
VALUES (
        'Império da Luz'
    );


-- Tabela melhorSom
CREATE TABLE melhorSom (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorSom;

INSERT INTO
    melhorSom (
        Filme
    )
VALUES (
        'Nada de novo no front'
    );

INSERT INTO
    melhorSom (
        Filme
    )
VALUES (
        'Avatar: O caminho da água'
    );

INSERT INTO
    melhorSom (
        Filme
    )
VALUES (
        'Batman'
    );

INSERT INTO
    melhorSom (
        Filme
    )
VALUES (
        'Elvis'
    );

INSERT INTO
    melhorSom (
        Filme
    )
VALUES (
        'Top Gun: Maverick'
    );


-- Tabela melhorDesignProducao
CREATE TABLE melhorDesignProducao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorDesignProducao;

INSERT INTO
    melhorDesignProducao (
        Filme
    )
VALUES (
        'Nada de novo no front'
    );

INSERT INTO
    melhorDesignProducao (
        Filme
    )
VALUES (
        'Avatar: O caminho da água'
    );

INSERT INTO
    melhorDesignProducao (
        Filme
    )
VALUES (
        'Babiônia'
    );

INSERT INTO
    melhorDesignProducao (
        Filme
    )
VALUES (
        'Elvis'
    );

INSERT INTO
    melhorDesignProducao (
        Filme
    )
VALUES (
        'Os Fabelmans'
    );


-- Tabela melhorFigurino
CREATE TABLE melhorFigurino (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorFigurino;

INSERT INTO
    melhorFigurino (
        Filme
    )
VALUES (
        'Elvis'
    );

INSERT INTO
    melhorFigurino (
        Filme
    )
VALUES (
        'Pantera Negra; Wakanda para sempre'
    );

INSERT INTO
    melhorFigurino (
        Filme
    )
VALUES (
        'Tudo em todo lugar ao mesmo tempo'
    );

INSERT INTO
    melhorFigurino (
        Filme
    )
VALUES (
        'Sra.Harris vai para Paris'
    );

INSERT INTO
    melhorFigurino (
        Filme
    )
VALUES (
        'Babilônia'
    );


-- Tabela melhorMaquiagemPenteado
CREATE TABLE melhorMaquiagemPenteado (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorMaquiagemPenteado;

INSERT INTO
    melhorMaquiagemPenteado (
        Filme
    )
VALUES (
        'Elvis'
    );

INSERT INTO
    melhorMaquiagemPenteado (
        Filme
    )
VALUES (
        'A baleia'
    );

INSERT INTO
    melhorMaquiagemPenteado (
        Filme
    )
VALUES (
        'Nada de novo no front'
    );

INSERT INTO
    melhorMaquiagemPenteado (
        Filme
    )
VALUES (
        'Batman'
    );

INSERT INTO
    melhorMaquiagemPenteado (
        Filme
    )
VALUES (
        'Pantera Negra: Wakanda para sempre'
    );


-- Tabela melhorEfeitoEspecial
CREATE TABLE melhorEfeitoEspecial (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorEfeitoEspecial;

INSERT INTO
    melhorEfeitoEspecial (
        Filme
    )
VALUES (
        'Top Gun: Maverick'
    );

INSERT INTO
    melhorEfeitoEspecial (
        Filme
    )
VALUES (
        'Nada de novo no front'
    );

INSERT INTO
    melhorEfeitoEspecial (
        Filme
    )
VALUES (
        'Avatar: O caminho da água'
    );

INSERT INTO
    melhorEfeitoEspecial (
        Filme
    )
VALUES (
        'Batman'
    );

INSERT INTO
    melhorEfeitoEspecial (
        Filme
    )
VALUES (
        'Pantera Negra: Wakanda para sempre'
    );

-- Tabela de melhorTrilhaSonora
CREATE TABLE melhorTrilhaSonora (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255)
);

SELECT * FROM melhorTrilhaSonora;

INSERT INTO
    melhorTrilhaSonora (
        Filme
    )
VALUES (
        'Os Banshees de Inisherin'
    );

INSERT INTO
    melhorTrilhaSonora (
        Filme
    )
VALUES (
        'Babilônia'
    );

INSERT INTO
    melhorTrilhaSonora (
        Filme
    )
VALUES (
        'Nada de novo no front'
    );

INSERT INTO
    melhorTrilhaSonora (
        Filme
    )
VALUES (
        'Tudo em todo lugar ao mesmo tempo'
    );

INSERT INTO
    melhorTrilhaSonora (
        Filme
    )
VALUES (
        'Os Fabelmans'
    );


-- Tabela de melhorCancaoOriginal
CREATE TABLE melhorCancaoOriginal (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Musica VARCHAR(255),
    Compositores VARCHAR(255),
    Filme VARCHAR(255)
);

SELECT * FROM melhorCancaoOriginal;

INSERT INTO
    melhorCancaoOriginal (
        Musica,
        Compositores,
        Filme
    )
VALUES (
        'Hold My Hand',
        'Lady Gaga & BloodPop',
        'Top Gun: Maverick'
    );

INSERT INTO
    melhorCancaoOriginal (
        Musica,
        Compositores,
        Filme
    )
VALUES (
        'Lift Me Up',
        'Tems, Ludwig Goransson, Rihanna & Ryan Coogler',
        'Pantera Negra: Wakanda para sempre'
    );

INSERT INTO
    melhorCancaoOriginal (
        Musica,
        Compositores,
        Filme
    )
VALUES (
        'Naatu Naatu',
        'Kala Bhairava, M.M Keeravani & Rahul Sipligunj',
        'RRR: revolta, rebelião, revolução'
    );

INSERT INTO
    melhorCancaoOriginal (
        Musica,
        Compositores,
        Filme
    )
VALUES (
        'This Is A Life',
        'David Byrne, Ryan Lott & Mitski',
        'Tudo em todo lugar ao mesmo tempo'
    );

INSERT INTO
    melhorCancaoOriginal (
        Musica,
        Compositores,
        Filme
    )
VALUES (
        'Applause',
        'Diane Warren',
        'Tell It like a woman'
    );


-- Tabela melhorCurtaMetragem
CREATE TABLE melhorCurtaMetragem (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Filme VARCHAR(255),
    Tipo_de_Filme VARCHAR(255)
);

SELECT * FROM melhorCurtaMetragem;

INSERT INTO
    melhorCurtaMetragem (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'An Irish Goodbye',
        'Drama'
    );

INSERT INTO
    melhorCurtaMetragem (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Ivalu',
        'Drama'
    );

INSERT INTO
    melhorCurtaMetragem (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Le Pupille',
        'Drama'
    );

INSERT INTO
    melhorCurtaMetragem (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'Night Ride',
        'Drama'
    );

INSERT INTO
    melhorCurtaMetragem (
        Filme,
        Tipo_de_Filme
    )
VALUES (
        'The Red Suitcase',
        'Drama'
<<<<<<< Updated upstream
    );
=======
    );
>>>>>>> Stashed changes
