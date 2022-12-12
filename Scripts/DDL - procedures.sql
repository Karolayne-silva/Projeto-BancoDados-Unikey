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


delimiter // 
CREATE PROCEDURE lista_alunos(IN matricula INT, IN email VARCHAR(35), IN telefone INT, IN nome VARCHAR(35), IN tipo_user VARCHAR(35))
    BEGIN
    SELECT * FROM usuario WHERE tipo_user = 'aluno';
    END // 
delimiter;

-- call lista_aluno()


delimiter //
CREATE PROCEDURE lista_professores(IN matricula INT, IN email VARCHAR(35), IN telefone INT, IN nome VARCHAR(35), IN tipo_user VARCHAR(35))
        BEGIN
        SELECT * FROM usuario WHERE tipo_user = 'professor';
        END;
delimiter ; 

-- call lista_professores()



delimiter //
CREATE PROCEDURE lista_funcionarios(IN email VARCHAR(35), IN senha VARCHAR(35) )
    BEGIN
    SELECT * FROM usuario WHERE tipo_user = 'funcionario';
    END;
delimiter ;

-- call lista_funcionarios()



delimiter //
CREATE PROCEDURE busca_usuario(IN matricula INT)
    BEGIN
    SELECT * FROM usuario WHERE matricula = matricula;
    END;
delimiter ;

-- call busca_usuario();



delimiter //
CREATE PROCEDURE atualiza_usuario(IN matricula INT, IN email VARCHAR(35), IN telefone INT, IN nome VARCHAR(35), IN tipo_user VARCHAR(35))
    BEGIN
    UPDATE usuario
    SET email = email, telefone = telefone, nome = nome, tipo_user = tipo_user
    WHERE matricula = matricula;
    END;
delimiter ; 

-- call atualiza_usuario ();

