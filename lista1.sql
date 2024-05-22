
use avaliacao_22a;



INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES 
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('História Fictícia', 'Autor Fictício', 2000, TRUE, 'História', '000-0000000000', 'Editora Fictícia', 300, 'Inglês');

UPDATE livros SET disponivel = FALSE WHERE ano_publicacao < 2000;

UPDATE livros SET editora = 'Plume Books' WHERE titulo = '1984';

UPDATE livros SET idioma = 'Inglês' WHERE editora = 'Penguin Books';

UPDATE livros SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)' WHERE isbn = '978-0439708180';

DELETE FROM livros WHERE categoria = 'Terror';

DELETE FROM livros WHERE idioma = 'Francês' AND ano_publicacao < 1970;

DELETE FROM livros WHERE titulo = 'As Crônicas de Nárnia';

DELETE FROM livros WHERE editora = 'Penguin Books';

SELECT * FROM livros WHERE quantidade_paginas > 500;

SELECT categoria, COUNT(*) AS total FROM livros GROUP BY categoria;

SELECT * FROM livros LIMIT 5;

SELECT SUM(quantidade_paginas) AS total_paginas, AVG(quantidade_paginas) AS media_paginas FROM livros WHERE categoria = 'Drama';

SELECT AVG(ano_publicacao) AS media_ano_publicacao FROM livros WHERE disponivel = TRUE;

SELECT MAX(ano_publicacao) AS mais_recente, MIN(ano_publicacao) AS mais_antigo FROM livros;

SELECT * FROM livros ORDER BY ano_publicacao DESC;

(SELECT titulo FROM livros WHERE idioma = 'Inglês')
UNION
(SELECT titulo FROM livros WHERE idioma = 'Português');

SELECT * FROM livros WHERE autor = 'George Orwell';
