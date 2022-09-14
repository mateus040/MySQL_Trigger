/* INSERTS venda */
insert into venda (cliente, data_venda) values ("Jao", "2022-09-14 00:38:14");
insert into venda (cliente, data_venda) values ("Mateus", "2022-09-14 00:38:14");
insert into venda (cliente, data_venda) values ("Adauto", "2022-09-14 00:38:14");
insert into venda (cliente, data_venda) values ("Laura", "2022-09-14 00:35:15");
insert into venda (cliente, data_venda) values ("Rafa", "2022-09-14 00:35:15");

select * from venda;

/* INSERTS venda_item */
insert into venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) values (last_insert_id(), 1, 2.50, 2, quantidade * preco_unitario);
insert into venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) values (last_insert_id(), 2, 2.00, 1, quantidade * preco_unitario);
insert into venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) values (last_insert_id(), 3, 0.50, 3, quantidade * preco_unitario);
insert into venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) values (last_insert_id(), 3, 0.50, 2, quantidade * preco_unitario);
insert into venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) values (last_insert_id(), 4, 5.00, 1, quantidade * preco_unitario);
insert into venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) values (last_insert_id(), 5, 4.00, 3, quantidade * preco_unitario);
insert into venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) values (last_insert_id(), 6, 3.50, 2, quantidade * preco_unitario);

select * from venda_item;

/* VERIFICANDO SE O VALOR DO ESTOQUE FOI ALTERADO */
select * from produto;