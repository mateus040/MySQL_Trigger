DELIMITER //
CREATE PROCEDURE insere_dados()
BEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = TRUE;
START TRANSACTION;
	INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) VALUES (last_insert_id(), 1, 2.50, 2, quantidade * preco_unitario);
    INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) VALUES (last_insert_id(), 2, 2.00, 1, quantidade * preco_unitario);
	IF erro_sql = FALSE THEN
		COMMIT;
		SELECT 'Transação efetivada com sucesso.' AS Resultado;
	ELSE
		ROLLBACK;
		SELECT 'Erro na transação.' AS Resultado;
	END IF;
END //
DELIMITER ;

select * from venda_item;
select * from produto;