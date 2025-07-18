USE [bd_16_byciclon]
GO
/****** Object:  Table [dbo].[tb_cliente]    Script Date: 08/07/2025 09:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[idEndereco] [int] NOT NULL,
	[idRegional] [int] NOT NULL,
	[nome] [varchar](40) NOT NULL,
	[email] [varchar](40) NOT NULL,
	[cpf] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_enderecos]    Script Date: 08/07/2025 09:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_enderecos](
	[idEndereco] [int] IDENTITY(1,1) NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[uf] [varchar](1) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[bairro] [varchar](50) NOT NULL,
	[rua] [varchar](50) NOT NULL,
	[numero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_itens_pedidos]    Script Date: 08/07/2025 09:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_itens_pedidos](
	[idItem] [int] IDENTITY(1,1) NOT NULL,
	[idPedido] [int] NOT NULL,
	[idproduto] [int] NOT NULL,
	[quantidade] [int] NOT NULL,
	[precoUnitario] [money] NOT NULL,
	[desconto] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_pedidos]    Script Date: 08/07/2025 09:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pedidos](
	[idPedido] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idVendedor] [int] NOT NULL,
	[dataPedido] [date] NOT NULL,
	[qtItens] [int] NOT NULL,
	[valorTotal] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_produtos]    Script Date: 08/07/2025 09:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_produtos](
	[idProduto] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[linha] [varchar](255) NOT NULL,
	[valorUnitario] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_vendedores]    Script Date: 08/07/2025 09:44:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_vendedores](
	[idVendedor] [int] IDENTITY(1,1) NOT NULL,
	[idEndereco] [int] NOT NULL,
	[idReginal] [int] NOT NULL,
	[nome] [varchar](40) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[cpf] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
