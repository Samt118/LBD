USE [Practica_2]
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Nombre] ON [dbo].[Minibar]
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Apellidos] ON [dbo].[Minibar]
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Nombre] ON [dbo].[Huesped]
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Apellidos] ON [dbo].[Huesped]
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Nombre] ON [dbo].[Empleado]
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Apellidos] ON [dbo].[Empleado]
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Nombre] ON [dbo].[Billar]
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Apellidos] ON [dbo].[Billar]
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Nombre] ON [dbo].[Alberca]
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP INDEX [Ind_Apellidos] ON [dbo].[Alberca]
GO
/****** Object:  Table [dbo].[Minibar]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP TABLE [dbo].[Minibar]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP TABLE [dbo].[Huesped]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Billar]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP TABLE [dbo].[Billar]
GO
/****** Object:  Table [dbo].[Alberca]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP TABLE [dbo].[Alberca]
GO
USE [master]
GO
/****** Object:  Database [Practica_2]    Script Date: 29/09/2019 03:36:37 p. m. ******/
DROP DATABASE [Practica_2]
GO
/****** Object:  Database [Practica_2]    Script Date: 29/09/2019 03:36:37 p. m. ******/
CREATE DATABASE [Practica_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD02', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBD02.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBD02_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBD02_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica_2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica_2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practica_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica_2] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica_2] SET  MULTI_USER 
GO
ALTER DATABASE [Practica_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica_2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica_2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica_2', N'ON'
GO
ALTER DATABASE [Practica_2] SET QUERY_STORE = OFF
GO
USE [Practica_2]
GO
/****** Object:  Table [dbo].[Alberca]    Script Date: 29/09/2019 03:36:37 p. m. ******/
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
/****** Object:  Table [dbo].[Billar]    Script Date: 29/09/2019 03:36:37 p. m. ******/
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/09/2019 03:36:37 p. m. ******/
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
/****** Object:  Table [dbo].[Huesped]    Script Date: 29/09/2019 03:36:37 p. m. ******/
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
/****** Object:  Table [dbo].[Minibar]    Script Date: 29/09/2019 03:36:37 p. m. ******/
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
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Apellidos] ON [dbo].[Alberca]
(
	[CostoTotal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Nombre] ON [dbo].[Alberca]
(
	[CostoInicial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Apellidos] ON [dbo].[Billar]
(
	[CostoBebidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Nombre] ON [dbo].[Billar]
(
	[CostoTiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Apellidos] ON [dbo].[Empleado]
(
	[Apellidos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Nombre] ON [dbo].[Empleado]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Apellidos] ON [dbo].[Huesped]
(
	[Apellidos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Nombre] ON [dbo].[Huesped]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Apellidos]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Apellidos] ON [dbo].[Minibar]
(
	[TotalIVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [Ind_Nombre]    Script Date: 29/09/2019 03:36:38 p. m. ******/
CREATE NONCLUSTERED INDEX [Ind_Nombre] ON [dbo].[Minibar]
(
	[Total] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Practica_2] SET  READ_WRITE 
GO
