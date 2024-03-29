USE [LBD02]
GO
/****** Object:  Table [dbo].[Minibar]    Script Date: 13/09/2019 01:00:59 a. m. ******/
DROP TABLE [dbo].[Minibar]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 13/09/2019 01:00:59 a. m. ******/
DROP TABLE [dbo].[Huesped]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 13/09/2019 01:00:59 a. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Billar]    Script Date: 13/09/2019 01:00:59 a. m. ******/
DROP TABLE [dbo].[Billar]
GO
/****** Object:  Table [dbo].[Alberca]    Script Date: 13/09/2019 01:00:59 a. m. ******/
DROP TABLE [dbo].[Alberca]
GO
/****** Object:  Table [dbo].[Alberca]    Script Date: 13/09/2019 01:01:00 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alberca](
	[Alberca_id] [int] NOT NULL,
	[Tiempo] [int] NOT NULL,
	[NumPersonas] [int] NOT NULL,
	[Tamaño] [char](10) NOT NULL,
	[CostoTamaño] [int] NOT NULL,
	[CostoInicial]  AS ([CostoTamaño]+[NumPersonas]*(1.5)),
	[CostoTotal]  AS ([CostoTamaño]+([NumPersonas]*(1.5))*[Tiempo]),
PRIMARY KEY CLUSTERED 
(
	[Alberca_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billar]    Script Date: 13/09/2019 01:01:00 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billar](
	[Billar_id] [int] NOT NULL,
	[Tiempo] [int] NOT NULL,
	[NumPersonas] [int] NOT NULL,
	[Bebida] [char](20) NULL,
	[Costo] [int] NULL,
	[NumBebidas] [int] NULL,
	[CostoTiempo]  AS ([Tiempo]*[NumPersonas]),
	[CostoBebidas]  AS (([NumBebidas]*[Costo])*(1.16)),
	[Total]  AS ((([Tiempo]*[NumPersonas])*[NumBebidas])*(1.16)),
PRIMARY KEY CLUSTERED 
(
	[Billar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 13/09/2019 01:01:00 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Empleado_id] [int] NOT NULL,
	[PrimerNombre] [char](30) NOT NULL,
	[SegundoNombre] [char](30) NOT NULL,
	[PrimerApellido] [char](40) NOT NULL,
	[SegundoApellido] [char](40) NULL,
	[Apellidos]  AS (([PrimerApellido]+'')+[SegundoApellido]),
	[NombreCompleto]  AS (((((([PrimerNombre]+'')+[SegundoNombre])+'')+[PrimerApellido])+'')+[SegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 13/09/2019 01:01:00 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Huesped](
	[Huesped_id] [int] NOT NULL,
	[PrimerNombre] [char](30) NOT NULL,
	[SegundoNombre] [char](30) NOT NULL,
	[PrimerApellido] [char](40) NOT NULL,
	[SegundoApellido] [char](40) NULL,
	[Apellidos]  AS (([PrimerApellido]+'')+[SegundoApellido]),
	[NombreCompleto]  AS (((((([PrimerNombre]+'')+[SegundoNombre])+'')+[PrimerApellido])+'')+[SegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[Huesped_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Minibar]    Script Date: 13/09/2019 01:01:00 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Minibar](
	[Minibar_id] [int] NOT NULL,
	[NombreBebida] [char](20) NULL,
	[Costo] [int] NOT NULL,
	[NumBebidas] [int] NULL,
	[Total]  AS ([Costo]*[NumBebidas]),
	[TotalIVA]  AS ([NumBebidas]*(1.16)),
PRIMARY KEY CLUSTERED 
(
	[Minibar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
