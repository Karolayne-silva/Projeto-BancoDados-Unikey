delimiter //
CREATE PROCEDURE atualizarTelefone (in emailUser varchar(35), in telefones varchar(45))
	BEGIN
		UPDATE usuario SET telefone = telefones
			WHERE email = emailUser;
	END //
delimiter ;

-- call atualizarTelefone();


delimiter //
CREATE PROCEDURE adicionarUser (in em varchar(35), in t int, in m varchar(35), in n varchar(35), in tu varchar(35))
	BEGIN 
		insert into usuario (email, matricula, telefone, nome, tipo_user) values
        (em, t, m, n, tu);
	END //
delimiter ;
-- call adicionarUser();


delimiter //
CREATE PROCEDURE deletarArmario (in num int)
	BEGIN 
		DELETE FROM armario WHERE id_armario = num;
	END //
delimiter ;

-- call deletarArmario();


delimiter //
CREATE PROCEDURE pesquisarHoraDataAluno (in numMatric varchar(45))
	BEGIN
		SELECT time_format(time(a.inicio_aluguel), '%h:%i:%s') "Hora", (date_format(date(a.inicio_aluguel), '%d/%m/%Y')) "Data"
			FROM alugar a
            INNER JOIN usuario u on u.email = a.usuario_email
            INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
				WHERE matricula = numMatric;
    END //
delimiter ;

-- call pesquisarHoraDataAluno();


delimiter //
CREATE PROCEDURE pesquisarAluguelArmario(in numero int)
	BEGIN 
		SELECT u.nome "Nome", u.tipo_user "Tipo de usuário", u.telefone "Telefone" , u.email "E-mail"
			FROM alugar a
				INNER JOIN armario ar on ar.id_armario = a.armario_id_armario
                INNER JOIN usuario u on u.email = a.usuario_email
					WHERE ar.num_armario = numero and status = 1;
    END //
delimiter ;

-- call pesquisarAluguelArmario();
