USE [Jardineria]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 7/03/2024 4:16:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[codigo_cliente] [int] NOT NULL,
	[nombre_cliente] [varchar](50) NOT NULL,
	[nombre_contacto] [varchar](30) NOT NULL,
	[apellido_contacto] [varchar](30) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
	[fax] [varchar](50) NOT NULL,
	[linea_direccion1] [varchar](50) NOT NULL,
	[linea_direccion2] [varchar](50) NULL,
	[ciudad] [varchar](50) NOT NULL,
	[region] [varchar](50) NULL,
	[pais] [varchar](50) NOT NULL,
	[codigo_postal] [varchar](10) NOT NULL,
	[codigo_empleado_rep_ventas] [int] NOT NULL,
	[limite_credito] [decimal](15, 2) NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[codigo_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_pedido]    Script Date: 7/03/2024 4:16:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_pedido](
	[codigo_pedido] [varchar](20) NOT NULL,
	[codigo_prodcuto] [varchar](20) NOT NULL,
	[cantidad] [int] NULL,
	[precio_unidad] [decimal](15, 2) NULL,
	[numero_linea] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 7/03/2024 4:16:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[codigo_empleado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NOT NULL,
	[extension] [varchar](10) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[codigo_oficina] [varchar](10) NULL,
	[codigo_jefe] [int] NULL,
	[puesto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[codigo_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gama_producto]    Script Date: 7/03/2024 4:16:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gama_producto](
	[gama] [varchar](50) NOT NULL,
	[descripcion_texto] [text] NOT NULL,
	[descripcion_html] [text] NULL,
	[imagen] [varchar](256) NULL,
 CONSTRAINT [PK_game_producto] PRIMARY KEY CLUSTERED 
(
	[gama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oficina]    Script Date: 7/03/2024 4:16:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oficina](
	[codigo_oficina] [varchar](10) NOT NULL,
	[ciudad] [varchar](30) NULL,
	[pais] [varchar](50) NULL,
	[region] [varchar](50) NULL,
	[codigo_postal] [varchar](10) NULL,
	[telefono] [varchar](15) NULL,
	[linea_direccion1] [varchar](50) NULL,
	[linea_direccion2] [varchar](50) NULL,
 CONSTRAINT [PK_oficina] PRIMARY KEY CLUSTERED 
(
	[codigo_oficina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 7/03/2024 4:16:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[codigo_cliente] [int] NOT NULL,
	[forma_pago] [varchar](40) NOT NULL,
	[id_transaccion] [varchar](50) NOT NULL,
	[fecha_pago] [date] NOT NULL,
	[total] [decimal](15, 2) NOT NULL,
 CONSTRAINT [PK_pago] PRIMARY KEY CLUSTERED 
(
	[id_transaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 7/03/2024 4:16:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[codigo_pedido] [varchar](20) NOT NULL,
	[fecha_pedido] [date] NOT NULL,
	[fecha_esperada] [date] NOT NULL,
	[fecha_entrega] [date] NULL,
	[estado] [varchar](15) NOT NULL,
	[comentarios] [text] NULL,
	[codigo_cliente] [int] NOT NULL,
 CONSTRAINT [PK_pedido] PRIMARY KEY CLUSTERED 
(
	[codigo_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 7/03/2024 4:16:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[codigo_producto] [varchar](20) NOT NULL,
	[nombre] [varchar](70) NOT NULL,
	[gama] [varchar](50) NOT NULL,
	[dimensiones] [varchar](25) NOT NULL,
	[proveedor] [varchar](50) NOT NULL,
	[descripcion] [text] NOT NULL,
	[cantidad_en_stock] [smallint] NULL,
	[precio_de_venta] [decimal](15, 2) NOT NULL,
	[precio_proveedor] [decimal](15, 2) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[codigo_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK_cliente_empleado] FOREIGN KEY([codigo_empleado_rep_ventas])
REFERENCES [dbo].[empleado] ([codigo_empleado])
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK_cliente_empleado]
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD  CONSTRAINT [FK_detalle_pedido_pedido] FOREIGN KEY([codigo_pedido])
REFERENCES [dbo].[pedido] ([codigo_pedido])
GO
ALTER TABLE [dbo].[detalle_pedido] CHECK CONSTRAINT [FK_detalle_pedido_pedido]
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD  CONSTRAINT [FK_detalle_pedido_Producto] FOREIGN KEY([codigo_prodcuto])
REFERENCES [dbo].[Producto] ([codigo_producto])
GO
ALTER TABLE [dbo].[detalle_pedido] CHECK CONSTRAINT [FK_detalle_pedido_Producto]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_empleado] FOREIGN KEY([codigo_jefe])
REFERENCES [dbo].[empleado] ([codigo_empleado])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_empleado]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_oficina] FOREIGN KEY([codigo_oficina])
REFERENCES [dbo].[oficina] ([codigo_oficina])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_oficina]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [FK_pago_cliente] FOREIGN KEY([codigo_cliente])
REFERENCES [dbo].[cliente] ([codigo_cliente])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [FK_pago_cliente]
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [FK_pedido_cliente] FOREIGN KEY([codigo_cliente])
REFERENCES [dbo].[cliente] ([codigo_cliente])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [FK_pedido_cliente]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_game_producto] FOREIGN KEY([gama])
REFERENCES [dbo].[gama_producto] ([gama])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_game_producto]
GO
