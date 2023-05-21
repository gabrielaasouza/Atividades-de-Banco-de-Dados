USE atividades;

CREATE TABLE Livros (
    livros_id INT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13)
);

INSERT INTO Livros (livros_id, titulo, autor, editora, ano_publicacao, isbn) VALUES 
(1, 'A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
(2, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
(3, 'O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488'),
(5, '1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '97885221061-9'),
(6, 'Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');

-- 1º Adicione a regra AUTO_INCREMENT para a chave primária remova os dados referentes ao ID dos livros do script de inserção.
ALTER TABLE livros
MODIFY livros_id INT NOT NULL AUTO_INCREMENT;

INSERT livros (titulo, autor, editora, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488'),
('1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '97885221061-9'),
('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');

-- 2º Crie uma tabela para 'Autores' e outra para 'Editoras', para separar essas informações. 
-- Elas devem conter chaves primárias para gerar relacionamentos.

CREATE table Autores (
	id INT PRIMARY KEY AUTO_INCREMENT,
    autor_nome VARCHAR(255)
);

CREATE table Editoras (
	id INT PRIMARY KEY AUTO_INCREMENT,
    editora_nome VARCHAR(255)
);

-- 3º Utilizando ALTER TABLE, elimine as colunas 'autor' e 'editora' da tabela 'Livros' e 
-- adicione as colunas 'autor_id' e 'editora_id' para fazer a referências como chave estrangeiras das referidas tabelas.

ALTER TABLE livros DROP COLUMN autor;
ALTER TABLE livros DROP COLUMN editora;

ALTER TABLE livros ADD COLUMN autor INT;
ALTER TABLE livros ADD COLUMN editora INT;

ALTER TABLE `livros` ADD FOREIGN KEY (`editora`) REFERENCES `editoras` (`id`); -- tabela, coluna, tabela(coluna)
ALTER TABLE `livros` ADD FOREIGN KEY (`autor`) REFERENCES `autores` (`id`);

-- Ideia do Paulo de substituir os dados antes de deletar pelos outros
-- INSERT INTO editoras (editora_nome)
-- SELECT editora
--  FROM `livros`;
  
-- 4º Retire os valores para autores e para as editoras do script inicial e insira-os nas novas tabelas.
INSERT autores (autor_nome) VALUES 
('John Green'),
('J.K. Rowling'),
('J.R.R. Tolkien'),
('J.D. Salinger'),
('George Orwell'),
('Rick Riordan');

INSERT editoras (editora_nome) VALUES 
('Intrínseca'),
('Rocco'),
('Martins Fontes'),
('Little, Brown and Company'),
('Companhia Editora Nacional'),
('Intrínseca');

-- 5º Inserindo dados

INSERT INTO 
Livros ( titulo, autor, editora, ano_publicacao, isbn) 
VALUES 
('Grande Sertão: Veredas', 1, 1, 1956, '9788520923251'),
('Memórias Póstumas de Brás Cubas', 2, 2, 1881, '9788535910663'),
('Vidas Secas', 3, 3, 1938, '9788572326972'),
('O Alienista', 2, 4, 1882, '9788572327429'),
('O Cortiço', 4, 5, 1890, '9788579027048'),
('Dom Casmurro', 2, 5, 1899, '9788583862093'),
('Macunaíma', 6, 3, 1928, '9788503012302');

-- -------------------------------------------------------------------------------------------