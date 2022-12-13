DELETE FROM alugar WHERE usuario_email IN (SELECT email
	FROM usuario
		 WHERE email LIKE 'a%' OR email LIKE 'A%' ); 
            
DELETE FROM usuario WHERE email LIKE 'a%' OR email LIKE 'A%';

DELETE FROM usuario WHERE email IN (SELECT email WHERE telefone IS NULL);

DELETE FROM usuario WHERE email IN (SELECT email WHERE telefone = '9999999999');

DELETE FROM alugar WHERE usuario_email IN (SELECT email
	FROM usuario
		 WHERE tipo_user = 'visitante');
            
DELETE FROM usuario WHERE email in (SELECT email WHERE tipo_user = 'visitante');

DELETE FROM alugar WHERE usuario_email IN (SELECT email
	FROM usuario
		 WHERE email LIKE '%@gmail.com' );
         
DELETE FROM usuario WHERE email LIKE '%@gmail.com';



UPDATE usuario
SET nome = 'Vitoria Oliveira'
WHERE email = 'vitoria@gmail.com';

UPDATE usuario
SET telefone = '99999999'
WHERE email = 'gabriel@gmail.com'; 

UPDATE usuario
SET tipo_user = 'Aluno'
WHERE email = 'carolfac@gmail.com';

UPDATE usuario
SET nome = 'ayrton maia'
WHERE email = 'ayrton@gmail.com'; 

UPDATE usuario
SET tipo_user = 'aluno'
WHERE email = 'kaykay@gmail.com';

