delimiter // 
CREATE TRIGGER tgr_alugar_after_update AFTER UPDATE
ON alugar
FOR EACH ROW
BEGIN
    IF new.fim_aluguel is not null then
    update armario set status = 0 where id_armario = old.armario_id_armario;
    end if;
END //
delimiter ;


delimiter //
CREATE TRIGGER tgr_alugar_before_upd BEFORE UPDATE
on alugar
FOR EACH ROW 
BEGIN
	DECLARE data varchar(32);
	select dayname(curdate()) into data;
	IF data = 'Sunday' THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Não é possível fazer alteração no Domingo';
    END IF;
END //
delimiter ;


delimiter //
CREATE TRIGGER tgr_alugar_before_insert BEFORE INSERT
on alugar
FOR EACH ROW 
BEGIN
	DECLARE data varchar(32);
	select dayname(curdate()) into data;
	IF data = 'Sunday' THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Não é possível fazer alteração no Domingo';
    END IF;
END //
delimiter ;


delimiter //
CREATE TRIGGER tgr_alugar_before_del BEFORE DELETE
on alugar
FOR EACH ROW 
BEGIN
	DECLARE data varchar(32);
	select dayname(curdate()) into data;
	IF data = 'Sunday' THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Não é possível fazer alteração no Domingo';
    END IF;
END //
delimiter ;

delimiter //
CREATE TRIGGER tgr_alugar_before_update_1 BEFORE UPDATE
ON alugar 
FOR EACH ROW 
BEGIN
	IF old.fim_aluguel is not null then 
		SIGNAL SQLSTATE '45000' SET message_text = 'Não é possível fazer alteração';
	END IF;
END //
delimiter ;


delimiter //
CREATE TRIGGER tgr_dataPagamento BEFORE INSERT ON alugar
FOR EACH ROW
BEGIN
     SET NEW.inicio_aluguel = NOW();
END //
delimiter ;
