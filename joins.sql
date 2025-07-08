USE bd_16_byciclon

--- relacionamento entre as tabelas tb_cliente --> tb_enderecos
ALTER TABLE tb_cliente
ADD CONSTRAINT fk_cliente_enderecos
FOREIGN KEY (idEndereco) REFERENCES tb_enderecos(idEndereco)

--- relacionamento entre as tabelas tb_cliente --> tb_regional
ALTER TABLE tb_cliente 
ADD CONSTRAINT fk_cliente_regional
FOREIGN KEY (idRegional) REFERENCES tb_regional(idRegional)

--- relacionamento entre as tabelas tb_vendedores --> tb_enderecos
ALTER TABLE tb_vendedores
ADD CONSTRAINT fk_vendedor_enderecos
FOREIGN KEY (idEndereco)  REFERENCES tb_enderecos(idEndereco)

--- tb_vendedores --> tb_regionais
ALTER TABLE tb_vendedores
ADD CONSTRAINT fk_vendedores_regionais
FOREIGN KEY (idRegional) REFERENCES tb_regional(idRegional)

--- tb_pedidos -->tb_cliente
ALTER TABLE tb_pedidos 
ADD CONSTRAINT fk_pedidos_cliente
FOREIGN KEY (idCliente) REFERENCES tb_cliente(idCliente)

--- tb_pedidos ---> tb_vendedores
ALTER TABLE tb_pedidos
ADD CONSTRAINT fk_pedidos_vendedores
FOREIGN KEY (idVendedor) REFERENCES tb_vendedores(idVendedor)

--- tb_itens_pedidos --> tb_pedidos
ALTER TABLE tb_itens_pedidos
ADD CONSTRAINT fk_itens_pedidos_pedidos
FOREIGN KEY (idPedido) REFERENCES tb_pedidos(idPedido)

--- tb_itens_pedidos --> tb_produtos
ALTER TABLE tb_itens_pedidos
ADD CONSTRAINT fk_itens_pedidos_produto
FOREIGN KEY (idProduto) REFERENCES tb_produtos(idProduto)


