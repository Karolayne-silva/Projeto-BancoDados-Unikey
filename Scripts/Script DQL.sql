-- Relatório 1: Todos os usuários com nome, telefone e email que pegaram o armário 14

SELECT u.nome, u.telefone, u.email 
	FROM alugar a
    INNER JOIN usuario u on u.email = a.usuario_email
    INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
		WHERE ar.num_armario = 14;



-- Relatório 2: Todos os usuários que são alunos com nome, email e número do armário que pegaram armário em 21 de novembro

SELECT u.nome"Nome", u.email "E-mail", u.matricula "Matricula", ar.num_armario "Nº Armário"
	FROM alugar a
		INNER JOIN usuario u on u.email = a.usuario_email
        INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
			WHERE a.fim_aluguel BETWEEN '2022-11-21 00:00:00' AND '2022-11-21 23:59:59';




-- Relatório 3: Quantos armários foram pegos pelo tipo de usuário professor

SELECT concat(count(ar.num_armario), ' armários') "Quantidade de armários"
	FROM alugar a
		INNER JOIN usuario u on u.email = a.usuario_email
        INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
			WHERE u.tipo_user = 'professor';



-- Relatório 4: todos os usuários que pegaram armário entre 13h e 18h mostrando nome, tipo de usuário, email,  telefone, número do armário

SELECT u.nome "nome", u.tipo_user "Tipo usuario", u.email "E-mail", u.telefone "Telefone", ar.num_armario "Nº Armário"
	FROM alugar a
		INNER JOIN usuario u ON u.email = a.usuario_email
        INNER JOIN armario ar ON ar.id_Armario = a.armario_id_armario
			WHERE hour(a.inicio_aluguel) BETWEEN 13 AND 18;



-- Relatório 5: Lista de todos os armários que foram alugados por usuários que tem o nome que começa com a letra P, mostrando nome e email.

SELECT u.nome, u.email, ar.num_armario
	FROM alugar a
		INNER JOIN usuario u ON u.email = a.usuario_email
        INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
			WHERE u.nome LIKE "P%";



-- Relatório 6: Lista de alunos mostrando quanto tempo um aluno fica com um armário, nome, matrícula, e-mail e número do armário.

SELECT u.nome"Nome" , u.matricula "Matricula" , u.email"E-mail", time_format(timediff(a.fim_aluguel, a.inicio_aluguel), '%H:%i:%s') "Tempo", ar.num_armario"Nº armário"
	FROM alugar a
		INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
        INNER JOIN usuario u ON u.email = a.usuario_email
			WHERE u.tipo_user = 'Aluno' and a.fim_aluguel is not null;


-- Relatório 7: Lista de todos os armários que foram alugados por usuários que tem o nome que termina com a letra A, mostrando nome e email.

SELECT u.nome, u.email, ar.num_armario
	FROM alugar a
		INNER JOIN usuario u ON u.email = a.usuario_email
                                INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
			WHERE u.nome LIKE "%A";

-- Relatório 8: Lista dos armários que foram alugados por usuários que possuem telefone que termina com o número ‘0’, mostrando nome e telefone. 

SELECT u.nome, u.telefone, ar.num_armario
	FROM alugar a
		INNER JOIN usuario u ON u.email = a.usuario_email
		      INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
			WHERE u.telefone LIKE '%0';


-- Relatório 9: Quantidade de armários que foram pegos por pessoas que possuem o nome com a letra inicial “E”. 

SELECT concat(count(ar.num_armario), ' armários') "Quantidade de armários"
	FROM alugar a
		INNER JOIN usuario u on u.email = a.usuario_email
                                 INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
			    WHERE u.nome like "E%";


-- Relatório 10: Lista de armários que foram alugados por usuários que não possuem o começo do número de telefone “99”, mostrando nome e telefone ordenado por nome.

SELECT u.nome, u.telefone, ar.num_armario
	FROM alugar a
               INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
	    INNER JOIN usuario u ON u.email = a.usuario_email
             	WHERE u.telefone NOT LIKE "99%"
                                ORDER  BY nome;

-- Relatório 11: Lista dos armários que foram alugados por usuários que possuem a matrícula terminando com número “2”, mostrando nome e matrícula ordenado por nome.

SELECT u.nome, u.matricula, ar.num_armario
	FROM alugar a
		  INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
	              INNER JOIN  usuario u ON u.email = a.usuario_email
			  WHERE u.matricula like "%2"
					ORDER BY u.nome;


-- Relatório 12: Lista de todos os usuários que usaram o armário no dia 22 de novembro, mostrando nome, tipo_user, num_armario, inicio_aluguel e fim_aluguel, ordenar por fim_aluguel.

SELECT u.nome"Nome", u.tipo_user"Tipouser",  ar.num_armario"N Armario", a.inicio_aluguel"inicioaluguel", a.fim_aluguel"fimaluguel"
FROM alugar a
     INNER JOIN usuario u on u.email = a.usuario_email
        INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
	WHERE a.inicio_aluguel BETWEEN '2022-11-22 00:00:00' AND '2022-11-22 23:59:59'
                ORDER BY a.fim_aluguel; 



-- Relatório 13: Lista de todos os usuários do tipo visitante mostrando nome, email e telefone, ordenar por ordem alfabética. 

SELECT u.nome, u.email, u.telefone
          FROM usuario u
                    WHERE u.tipo_user = 'visitante' 
                              ORDER BY u.nome asc;







-- Relatório 14: Lista de todos os usuários que alugaram o armário de 8h da manhã até 13h, contendo nome, tipo_usuario, num_armario, fim_aluguel.


SELECT u.nome "Nome", u.tipo_user "Tipo usuario", ar.num_armario "N Armario", a.fim_aluguel "Fim Aluguel"
	FROM alugar a
		INNER JOIN usuario u ON u.email = a.usuario_email
                          INNER JOIN armario ar ON ar.id_Armario = a.armario_id_armario
		          WHERE hour(a.inicio_aluguel) BETWEEN 8 and 13;

-- Relatório 15: Lista dos usuários que alugaram o armário 2 no dia 21 de novembro, contendo nome, tipo_usuario, email e telefone. 


SELECT u.nome "Nome", u.tipo_user "Tipo usuario", u.email "Email", u.telefone "Telefone"
             FROM alugar a
                  INNER JOIN usuario u on u.email = a.usuario_email
                   INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
	            WHERE ar.num_armario = 2 AND a.inicio_aluguel BETWEEN '2022-11-21 00:00:00' AND '2022-11-21 23:59:59';



-- Relatório 16: Lista com os armários que a funcionária com email: 'monicavi@gmail.com' alugou, contendo num_armario, inicio_aluguel e fim_aluguel. 

SELECT ar.num_armario, a.inicio_aluguel, a.fim_aluguel
	FROM alugar a
		INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
	             INNER JOIN usuario u ON u.email = a.usuario_email
			WHERE a.funcionario_email = "monicavi@gmail.com"
		

-- Relatório 17: lista de quantos usuários tem de cada tipo ordenado pela quantidade

SELECT tipo_user "Tipo de usuário" , count(email) "Quantidade"
	FROM usuario
		group by tipo_user
			order by count(email) desc;


-- Relatório 18: listar os armários mostrando se está ocupado ou desocupado

SELECT ar.num_armario,
	CASE WHEN status = 0  THEN "Desocupado"
		ELSE "Ocupado" END "Situação"
        FROM alugar a
			RIGHT JOIN armario ar on ar.id_armario = a.armario_id_armario;


-- Relatório 19: Lista de quantos armários cada funcionário alugou, mostrando email do funcionário e quantidade de armários.

SELECT email, count(ar.id_armario)"Wuantidade de armários"
	FROM alugar a 
		INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
        INNER JOIN funcionario f ON f.email = a.funcionario_email
			GROUP BY f.email;


-- Relatório 20: lista dos funcionários que já alugaram o armário 2 mostrando tipo de usuário, email do usuário, telefone, número do armário, e-mail do funcionário.

SELECT u.tipo_user"Tipo de usuário", u.email"E-mail", u.telefone"Telefone", ar.num_armario"Número do armário", f.email"Funcionário"
	FROM alugar a
		INNER JOIN usuario u ON u.email = a.usuario_email
        INNER JOIN funcionario f ON f.email = a.funcionario_email
        INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
			WHERE ar.num_armario = 2;
