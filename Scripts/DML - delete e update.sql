DELETE FROM usuario; 

DELETE FROM usuario WHERE tipo_user = ‘visitante’;
DELETE FROM usuario WHERE email = 'jessica13@gmail.com';

DELETE FROM usuario WHERE matricula = ‘0020011194’;

DELETE FROM usuario WHERE nome = ‘%aiara’;

UPDATE usuario
SET nome = 'Vitoria Oliveira'
WHERE matricula = '00200011897';

UPDATE usuario
SET nome = 'Vitoria Oliveira'
WHERE email = 'vitoria@gmail.com';

UPDATE usuario
SET telefone = '11 99999-9999'
WHERE matricula = '0020011193'; 

UPDATE usuario
SET tipo_user = 'Aluno'
WHERE email = 'carolfac@gmail.com';

UPDATE usuario
SET email = 'gaboramalho@gmail.com'
WHERE nome = 'Gabriel'; 

UPDATE usuario
SET tipo_user = 'aluno'
WHERE nome LIKE 'richar%';  
