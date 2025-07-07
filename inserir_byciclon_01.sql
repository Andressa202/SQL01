INSERT INTO tb_enderecos(pais, uf, cidade, bairro, rua, numero) VALUES
('Brasil', 'SP', 'Osasco', 'Centro', 'Rua das Camélias', 100),
('Brasil', 'BA', 'Salvador', 'Rio Vermelho', 'Av Cardeal', 300);

INSERT INTO tb_regional(nomeRegional, enderecoRegional, telefoneRegional) VALUES
('Sudeste', 'Av Paulista 1439', '(11)99555-4444'),
('Nordeste', 'Rua Caetés)', '(71)99444-5555');

INSERT INTO tb_cliente(idEndereco, idRegional, nome, email, cpf) VALUES
(1,1, 'Yasmin', 'yasmin02@gmail.com', '12345678912'),
(2,2, 'Luna', 'Luna33@gmail.com', '21987654321');

INSERT INTO tb_vendedores(idEndereco, idReginal, nome, email, cpf) VALUES
(2,1, 'Caio', 'caio55@gmail.com', '12345678998'),
(2,1, 'Maria', 'maria11@gmail.com', '98987654321');

INSERT INTO	tb_produtos(nome, linha, valorUnitario) VALUES
('Montain Bike Specialized', 'MTB', 3500.90 ),
('Caloi Ceci', 'Speed', 2800.00),
('Barra Forte', 'MTB', 4000.10);

INSERT INTO tb_pedidos(idCliente, IdVendedor, dataPedido, qtItens. valorTotal) VALUES
(1,1, '2025-07-20', 2, 5000),
(2,2, '2025-06-10', 1, 3000),
(2,1, '2025-05-19', 3, 2000);

INSERT INTO tb_itens_pedidos(idPedido, idProduto, quantidade, precoUnitario, desconto) VALUES
(1,1,1, 3600.00,0.00),
(2,2,2, 9000.00,0.00),
(2,1,1, 5400.00,0.00);