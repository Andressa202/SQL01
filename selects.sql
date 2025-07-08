USE bd_16_byciclon

SELECT c.nome, c.email, e.uf, e.cidade 
FROM tb_cliente c
JOIN tb_enderecos e ON c.idEndereco = e.idEndereco
WHERE e.uf = 'SP';


--- Pedidos com o valor acima de 300
SELECT p.idPedido , p.dataPedido AS calendario, c.nome
AS cliente, p.valorTotal
FROM tb_pedidos p
JOIN tb_cliente c ON p.idCliente = c.idCliente
WHERE p.valorTotal < 3000

--- produtos da linha MTB
SELECT nome, linha, valorUnitario
FROM tb_produtos
WHERE linha = 'MTB'; 

--- cliente que começa com a letra 'Y'
SELECT nome, email
FROM tb_cliente
WHERE nome LIKE 'L%';

--- pedidos feitos entre duas datas 
SELECT idPedido, dataPedido, valorTotal
FROM tb_pedidos
WHERE dataPedido BETWEEN '2024/06/22' and '2025/10/21';

--- ver itens de um pedido especifico
SELECT p.idPedido As CodPedido, pr.nome As Produto, i.quantidade, i.precoUnitario, i.desconto 
FROM tb_itens_pedidos i 
JOIN tb_pedidos p ON i.idPedido = p.idPedido
JOIN tb_produtos pr ON i.idproduto = pr.idProduto
WHERE p.idPedido = 1 

--- lista de vendedores e suas regiões
SELECT v.nome AS Vendedor , v.email As Email, r.nomeRegional As Regiao
FROM tb_vendedores v 
JOIN tb_regional r ON v.idReginal = r.idRegional;

--- clientes e seus respectivos vendedores (por pedido)
SELECT c.nome AS Cliente,  v.nome AS Vendedor , p.dataPedido
FROM tb_pedidos p 
JOIN tb_cliente c ON p.idCliente = c.idCliente
JOIN tb_vendedores v ON p.idVendedor = v.idVendedor; 

--- produtos com valor entra 2000 e 3000
SELECT  idProduto, nome,  valorUnitario
FROM tb_produtos
WHERE valorUnitario BETWEEN 2000 AND 3000;  
