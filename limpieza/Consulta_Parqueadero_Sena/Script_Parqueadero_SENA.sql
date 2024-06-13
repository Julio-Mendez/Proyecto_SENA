USE [Parqueadero_Sena]
GO
/****** Object:  Table [dbo].[acudientes]    Script Date: 1/03/2024 1:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acudientes](
	[Cedula_Acudiente] [int] NOT NULL,
	[Nombre_Acudiente] [varchar](30) NULL,
	[Tipo_Acudiente] [varchar](5) NULL,
	[Celular_Acudiente] [int] NULL,
	[Fijo_Acudiente] [int] NULL,
	[Correo_Acudiente] [varchar](20) NULL,
	[Direccion_Acudiente] [varchar](20) NOT NULL,
 CONSTRAINT [PK__acudient__9BF103BDF01E5760] PRIMARY KEY CLUSTERED 
(
	[Cedula_Acudiente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estudiantes]    Script Date: 1/03/2024 1:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estudiantes](
	[Doc_Estudiante] [int] NOT NULL,
	[Nombre_Estudiante] [varchar](50) NOT NULL,
	[Genero_Estudiante] [varchar](10) NOT NULL,
	[Fecha_Nac_Estudiante] [datetime] NOT NULL,
	[Direccion_Estudiante] [varchar](20) NOT NULL,
 CONSTRAINT [PK__estudian__860C8731EB7470BE] PRIMARY KEY CLUSTERED 
(
	[Doc_Estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estudiantes_acudientes]    Script Date: 1/03/2024 1:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estudiantes_acudientes](
	[Doc_Estudiante] [int] NOT NULL,
	[Cedula_Acudiente] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[motos]    Script Date: 1/03/2024 1:17:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motos](
	[Placa_Moto] [varchar](10) NOT NULL,
	[Color_Moto] [varchar](10) NOT NULL,
	[Modelo_Moto] [int] NOT NULL,
	[Venci_Soat_Moto] [datetime] NOT NULL,
	[Doc_Estudiante] [int] NOT NULL,
 CONSTRAINT [PK__motos__DF84749A0E8415A4] PRIMARY KEY CLUSTERED 
(
	[Placa_Moto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[estudiantes_acudientes]  WITH CHECK ADD  CONSTRAINT [FK_estudiantes_acudientes_acudientes] FOREIGN KEY([Cedula_Acudiente])
REFERENCES [dbo].[acudientes] ([Cedula_Acudiente])
GO
ALTER TABLE [dbo].[estudiantes_acudientes] CHECK CONSTRAINT [FK_estudiantes_acudientes_acudientes]
GO
ALTER TABLE [dbo].[estudiantes_acudientes]  WITH CHECK ADD  CONSTRAINT [FK_estudiantes_acudientes_estudiantes] FOREIGN KEY([Doc_Estudiante])
REFERENCES [dbo].[estudiantes] ([Doc_Estudiante])
GO
ALTER TABLE [dbo].[estudiantes_acudientes] CHECK CONSTRAINT [FK_estudiantes_acudientes_estudiantes]
GO
ALTER TABLE [dbo].[motos]  WITH CHECK ADD  CONSTRAINT [FK_motos_estudiantes] FOREIGN KEY([Doc_Estudiante])
REFERENCES [dbo].[estudiantes] ([Doc_Estudiante])
GO
ALTER TABLE [dbo].[motos] CHECK CONSTRAINT [FK_motos_estudiantes]
GO
