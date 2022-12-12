-- Usuário --
INSERT INTO usuario (email, telefone, matricula, nome, tipo_user) VALUES ('moanagin@gmail.com', '987205234', '0020011641', 'Moana', 'aluno'), 
('lorenfac@gamil.com', '997205334', '0020011475', 'Lorena', 'aluno'), ('fab01@gmail.com', '986078925', '0020011123', 'Fabiola', 'aluno'), 
('jessica13@gmail.com', '988951016', '0020011642', 'Jessica', 'aluno'), ('carolfac@gmail.com', '988067890', NULL, 'Carol', 'professor'), 
('weidran@gmail.com', '998675432', '0020011646', 'Weid', 'aluno'), ('wedja02@gmail.com', '998705400', NULL, 'Wedja', 'visitante'), 
('julimaria@gmail.com', '988000080', '0020011676', 'Juliana', 'aluno'), ('eduardamaria@gmail.com', '997205238', '0020011656', 'Eduarda ', 'aluno'),
('brunag@gmail.com', '999951017', NULL, 'Bruna', 'visitante'), ('paulo21@gmail.com', '998765423', NULL, 'Paulo', 'visitante'), 
('arnottramos@gmail.com', '988950917', NULL, 'Arnott', 'professor'), ('miguelzin@gmail.com', '986078310', NULL, 'Miguel', 'visitante'),
('raonimonteiro@gmail.com', '988920000', NULL, 'Raoni', 'professor'), ('vitor072gmail.com', '986543204', NULL, 'Vitor', 'visitante'),
('eduardop@gmail.com', '987409763', '0020011637', 'Eduardo', 'aluno'), ('daymaria@gmail.com', '988275470', '0020011648', 'Dayana', 'aluno'), 
('kaykay@gmail.com', '988907215', NULL, 'Kaylanne', 'visitante'), ('adri123@gmail.com', '998170640', '0020011456', 'Adrielly', 'aluno'), 
('yagomin@gmail.com', '987430679', '0020011698', 'Yago', 'aluno'), ('carlos@gmail.com', '987651587', NULL, 'Carlos', 'professor'),
('richarlyyson@gmail.com', '986458711', '0020011433', 'Richarlyson', 'aluno'), ('mariaregis@gmail.com', '998451714','0020011190', 'Maria Regina', 'aluno'),
('maiara@gmail.com', '998651819','0020011191', 'Maiara', 'aluno'), ('everton@gmail.com', '987561934', '0020011192', 'Everton', 'aluno'), 
('ayrton@gmail.com', '987888645', '0020011193', 'Ayrton', 'aluno'), ('gilmar@gmail.com', '990914578', '0020011194', 'Gilmar', 'aluno'), 
('vitoria@gmail.com', '998756342', '0020011452', 'Vitoria', 'aluno'), ('maria@gmail.com', '997875634', '0020011897', 'Maria', 'aluno'),
('gabriel@gmail.com', '991923487', '0020011387', 'Gabriel', 'aluno'), ('talita@gmail.com', '995983809', '0020011376', 'Talita', 'aluno'), 
('pamela@gmail.com', '981823765', '0020011973', 'Pamela', 'aluno'), ('paulo@gmail.com', '980803365', '0020011999', 'Paulo', 'aluno'), 
('jhonata@gmail.com', '988814509', '0020011234', 'Jhonata', 'aluno');

-- Funcionario --

INSERT INTO funcionario (email, senha) values ('monicavi@gmail.com', '483jdf'), ('josefinamed@gmail.com', '85438'), ('romulo@gmail.com', 'fh3954'), ('jose@gmail.com', '472947');


-- Armário --

INSERT INTO armario (id_armario, num_armario, `status`) values (Default, 1, 1), (Default, 2, 0), (Default, 3, 1), (Default, 4, 0), (Default, 5, 1), (Default, 6, 1),
(Default, 7, 1), (Default, 8, 0), (Default, 9, 1), (Default, 10, 1), (Default, 11, 1), (Default, 12, 1), (Default, 13, 1), (Default, 14, 1), (Default, 15, 1), (Default, 16, 1),
(Default, 17, 1), (Default, 18, 1), (Default, 19, 1), (Default, 20, 1), (Default, 21, 0), (Default, 22, 0), (Default, 23, 0), (Default, 24, 0), (Default, 25, 0),
(Default, 26, 0), (Default, 27, 0), (Default, 28, 0), (Default, 29, 0), (Default, 30, 0), (Default, 31, 1), (Default, 32, 0), (Default, 33, 1), (Default, 34, 0), (Default, 35, 0),
(Default, 36, 0), (Default, 37, 0), (Default, 38, 0), (Default, 39, 0), (Default, 40, 0), (Default, 41, 0), (Default, 42, 0), (Default, 43, 0), (Default, 44, 0), (Default, 45, 0),
(Default, 46, 0), (Default, 47, 0), (Default, 48, 0), (Default, 49, 0), (Default, 50, 0), (Default, 51, 0), (Default, 52, 0), (Default, 53, 0), (Default, 54, 0),
(Default, 55, 0), (Default, 56, 0), (Default, 57, 0), (Default, 58, 0), (Default, 59, 0), (Default, 60, 0), (Default, 61, 0), (Default, 62, 0), (Default, 63, 0), (Default, 64, 0), (Default, 65, 0),
(Default, 66, 0), (Default, 67, 0), (Default, 68, 0), (Default, 69, 0), (Default, 70, 0), (Default, 71, 0), (Default, 72, 0), (Default, 73, 0), (Default, 74, 0), (Default, 75, 0),
(Default, 76, 0);


-- Alugar --

INSERT INTO alugar (inicio_aluguel, fim_aluguel, usuario_email, armario_id_armario, funcionario_email) VALUES ( '2022-01-19 10:30:54', NULL, 'moanagin@gmail.com', 1, 'monicavi@gmail.com'), 
('2022-01-19 14:25:00', '2022-01-19 18:00:00', 'lorenfac@gamil.com', 2, 'monicavi@gmail.com'), ('2022-01-22 19:30:00', NULL, 'fab01@gmail.com', 3, 'monicavi@gmail.com'), 
('2022-02-02 08:51:00', '2022-02-02 14:10:00', 'jessica13@gmail.com', 4, 'josefinamed@gmail.com'), ('2022-02-10 13:00:00', NULL, 'carolfac@gmail.com', 5, 'josefinamed@gmail.com'),
('2022-03-20 16:30:30', NULL, 'weidran@gmail.com', 6, 'romulo@gmail.com'), ('2022-04-15 10:30:00', NULL, 'wedja02@gmail.com', 7, 'romulo@gmail.com'),
('2022-05-27 08:30:00 ', '2022-05-27 11:50:00', 'julimaria@gmail.com', 8, 'monicavi@gmail.com'), ('2022-06-03 09:00:00', '2022-06-03 16:00:00', 'eduardamaria@gmail.com', 9, 'josefinamed@gmail.com'),
('2022-06-10 14:40:00', NULL, 'brunag@gmail.com', 10, 'monicavi@gmail.com'), ('2022-06-10 19:00:00', NULL, 'paulo21@gmail.com', 11, 'jose@gmail.com'), 
('2022-06-10 11:40:00', NULL, 'arnottramos@gmail.com', 12, 'monicavi@gmail.com'), ('2022-07-23 10:00:00', NULL, 'miguelzin@gmail.com', 13, 'josefinamed@gmail.com'), 
('2022-08-09 08:00:00', NULL, 'raonimonteiro@gmail.com', 13, 'monicavi@gmail.com'), ('2022-09-18 13:50:00 ', NULL, 'vitor072gmail.com', 14, 'josefinamed@gmail.com'),
('2022-10-15 09:24:20', NULL, 'eduardop@gmail.com', 15, 'monicavi@gmail.com'), ('2022-10-15 12:20:34', NULL, 'daymaria@gmail.com', 16, 'romulo@gmail.com'), 
('2022-10-16 08:00:00', NULL, 'kaykay@gmail.com', 17, 'monicavi@gmail.com'), ('2022-11-08 13:00:00', NULL, 'adri123@gmail.com', 18, 'romulo@gmail.com'), 
('2022-11-11 09:50:09', NULL, 'yagomin@gmail.com', 19, 'monicavi@gmail.com'), ('2022-10-11 09:51:09', NULL, 'carlos@gmail.com', 20, 'romulo@gmail.com'), 
('2022-10-11 09:51:09', '2022-10-11 12:30:00', 'richarlyyson@gmail.com', 2, 'monicavi@gmail.com'), ('2022-11-07 09:50:09', '2022-11-07 12:21:00', 'mariaregis@gmail.com', 2, 'romulo@gmail.com'), 
('2022-11-21 11:30:09', '2022-11-21 12:45:00', 'maiara@gmail.com', 2, 'monicavi@gmail.com'), ('2022-11-21 10:00:09', '2022-11-21 12:21:00', 'everton@gmail.com', 2, 'josefinamed@gmail.com'), 
('2022-11-21 15:23:09', '2022-11-21 15:44:00', 'ayrton@gmail.com', 2, 'monicavi@gmail.com'), ('2022-11-21 08:12:09', '2022-11-21 10:21:00', 'gilmar@gmail.com', 2, 'monicavi@gmail.com'),
( '2022-11-22 08:12:09', '2022-11-22 10:21:00', 'vitoria@gmail.com', 8, 'monicavi@gmail.com'), ('2022-11-22 11:12:09', '2022-11-22 12:30:00', 'maria@gmail.com', 8, 'josefinamed@gmail.com'),
('2022-11-22 13:15:09', '2022-11-22 14:02:00', 'gabriel@gmail.com', 8, 'monicavi@gmail.com'), ('2022-11-22 10:30:09', '2022-11-22 11:21:00', 'talita@gmail.com', 9, 'monicavi@gmail.com'),
('2022-11-22 12:00:09', '2022-11-22 13:10:00', 'pamela@gmail.com', 9, 'josefinamed@gmail.com'), ('2022-11-22 14:23:09', '2022-11-22 14:50:00', 'paulo@gmail.com', 9, 'josefinamed@gmail.com'),
('2022-11-22 16:12:09', NULL, 'jhonata@gmail.com', 9, 'jose@gmail.com');
