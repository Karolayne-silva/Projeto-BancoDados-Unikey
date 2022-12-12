CREATE VIEW rel3 as 
SELECT concat(count(ar.num_armario), ' armários') "Quantidade de armários"
	FROM alugar a
		INNER JOIN usuario u on u.email = a.usuario_email
        INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
			WHERE u.tipo_user = 'professor';
            
            
CREATE VIEW rel4 as 
SELECT u.nome "nome", u.tipo_user "Tipo usuario", u.email "E-mail", u.telefone "Telefone", ar.num_armario "Nº Armário"
	FROM alugar a
		INNER JOIN usuario u ON u.email = a.usuario_email
        INNER JOIN armario ar ON ar.id_Armario = a.armario_id_armario
			WHERE hour(a.inicio_aluguel) BETWEEN 13 AND 18;

CREATE VIEW rel5 as 
SELECT ar.num_armario,
	CASE WHEN status = 0  THEN "Desocupado"
		ELSE "Ocupado" END "Situação"
        FROM alugar a
			RIGHT JOIN armario ar on ar.id_armario = a.armario_id_armario;
            
CREATE VIEW rel9 as
SELECT concat(count(ar.num_armario), ' armários') "Quantidade de armários"
	FROM alugar a
		INNER JOIN usuario u on u.email = a.usuario_email
                                 INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
			    WHERE u.nome like "E%";

CREATE VIEW rel6 as 
SELECT u.nome"Nome" , u.matricula "Matricula" , u.email"E-mail", time_format(timediff(a.fim_aluguel, a.inicio_aluguel), '%H:%i:%s') "Tempo", ar.num_armario"Nº armário"
	FROM alugar a
		INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
        INNER JOIN usuario u ON u.email = a.usuario_email
			WHERE u.tipo_user = 'Aluno' and a.fim_aluguel is not null;
            
CREATE VIEW rel17 as 
SELECT tipo_user "Tipo de usuário" , count(email) "Quantidade"
	FROM usuario
		group by tipo_user
			order by count(email) desc;
            
CREATE VIEW rel18 as 
SELECT ar.num_armario,
	CASE WHEN status = 0  THEN "Desocupado"
		ELSE "Ocupado" END "Situação"
        FROM alugar a
			RIGHT JOIN armario ar on ar.id_armario = a.armario_id_armario;

CREATE VIEW rel20 as
SELECT u.tipo_user"Tipo de usuário", u.email"E-mail", u.telefone"Telefone", ar.num_armario"Número do armário", f.email"Funcionário"
	FROM alugar a
		INNER JOIN usuario u ON u.email = a.usuario_email
        INNER JOIN funcionario f ON f.email = a.funcionario_email
        INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
			WHERE ar.num_armario = 2;

CREATE VIEW rel16 as 
SELECT ar.num_armario, a.inicio_aluguel, a.fim_aluguel
	FROM alugar a
		INNER JOIN armario ar ON ar.id_armario = a.armario_id_armario
	             INNER JOIN usuario u ON u.email = a.usuario_email
			WHERE a.funcionario_email = "monicavi@gmail.com";
            
CREATE VIEW rel2 as 
SELECT u.nome"Nome", u.email "E-mail", u.matricula "Matricula", ar.num_armario "Nº Armário"
	FROM alugar a
		INNER JOIN usuario u on u.email = a.usuario_email
        INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
			WHERE a.fim_aluguel BETWEEN '2022-11-21 00:00:00' AND '2022-11-21 23:59:59';
            
