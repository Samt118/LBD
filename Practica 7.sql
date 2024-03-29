USE [AvancePIADef]
GO
ALTER TABLE [dbo].[StockMobiliario] DROP CONSTRAINT [FK__StockMobi__Mobil__5EBF139D]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK__Reservaci__Huesp__619B8048]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK__Reservaci__Habit__628FA481]
GO
ALTER TABLE [dbo].[Planta] DROP CONSTRAINT [FK__Planta__Habitaci__5DCAEF64]
GO
ALTER TABLE [dbo].[Municipio] DROP CONSTRAINT [FK__Municipio__Pais___6383C8BA]
GO
ALTER TABLE [dbo].[Municipio] DROP CONSTRAINT [FK__Municipio__Estad__6477ECF3]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Pais_id__5812160E]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Municip__59FA5E80]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Estado___59063A47]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Servicios__5070F446]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Reservaci__5165187F]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Planta_id__5535A963]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Pais_id__52593CB8]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Municipio__5441852A]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Mobiliari__5629CD9C]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Ingresos___571DF1D5]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Estado_id__534D60F1]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Empleado___656C112C]
GO
ALTER TABLE [dbo].[Estado] DROP CONSTRAINT [FK__Estado__Pais_id__70DDC3D8]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Pais_i__5AEE82B9]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Munici__5CD6CB2B]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Estado__5BE2A6F2]
GO
ALTER TABLE [dbo].[CargosXHabitacion] DROP CONSTRAINT [FK__CargosXHa__Servi__60A75C0F]
GO
ALTER TABLE [dbo].[CargosXHabitacion] DROP CONSTRAINT [FK__CargosXHa__Habit__5FB337D6]
GO
/****** Object:  Table [dbo].[StockMobiliario]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[StockMobiliario]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Planta]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Planta]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Municipio]
GO
/****** Object:  Table [dbo].[Mobiliario]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Mobiliario]
GO
/****** Object:  Table [dbo].[Ingresos]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Ingresos]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Huesped]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[CargosXHabitacion]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP TABLE [dbo].[CargosXHabitacion]
GO
USE [master]
GO
/****** Object:  Database [AvancePIADef]    Script Date: 18/10/2019 10:51:31 p. m. ******/
DROP DATABASE [AvancePIADef]
GO
/****** Object:  Database [AvancePIADef]    Script Date: 18/10/2019 10:51:31 p. m. ******/
CREATE DATABASE [AvancePIADef]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AvancePIADef', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AvancePIADef.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AvancePIADef_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AvancePIADef_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AvancePIADef] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AvancePIADef].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AvancePIADef] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AvancePIADef] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AvancePIADef] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AvancePIADef] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AvancePIADef] SET ARITHABORT OFF 
GO
ALTER DATABASE [AvancePIADef] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AvancePIADef] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AvancePIADef] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AvancePIADef] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AvancePIADef] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AvancePIADef] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AvancePIADef] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AvancePIADef] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AvancePIADef] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AvancePIADef] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AvancePIADef] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AvancePIADef] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AvancePIADef] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AvancePIADef] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AvancePIADef] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AvancePIADef] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AvancePIADef] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AvancePIADef] SET RECOVERY FULL 
GO
ALTER DATABASE [AvancePIADef] SET  MULTI_USER 
GO
ALTER DATABASE [AvancePIADef] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AvancePIADef] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AvancePIADef] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AvancePIADef] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AvancePIADef] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AvancePIADef', N'ON'
GO
ALTER DATABASE [AvancePIADef] SET QUERY_STORE = OFF
GO
USE [AvancePIADef]
GO
/****** Object:  Table [dbo].[CargosXHabitacion]    Script Date: 18/10/2019 10:51:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargosXHabitacion](
	[CargosXHabitacion_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[Servicios_id] [int] NOT NULL,
	[CargoXServicio] [int] NOT NULL,
	[CostoTotal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CargosXHabitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Empleado_id] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Pais_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Municipio_id] [int] NOT NULL,
	[Edad] [int] NOT NULL,
	[Puesto] [varchar](30) NOT NULL,
	[Turno] [varchar](10) NOT NULL,
	[Calle] [varchar](30) NOT NULL,
	[Sueldo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Estado_id] [int] NOT NULL,
	[NombreEstado] [varchar](60) NOT NULL,
	[Pais_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Estado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[Habitacion_id] [int] NOT NULL,
	[EstadoDeHabitacion] [varchar](13) NOT NULL,
	[Tipo] [char](6) NOT NULL,
	[CostoDeHabitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Habitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[Hotel_id] [int] NOT NULL,
	[Servicios_id] [int] NOT NULL,
	[Reservacion_id] [int] NOT NULL,
	[Pais_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Municipio_id] [int] NOT NULL,
	[Planta_id] [int] NOT NULL,
	[Mobiliario_id] [int] NOT NULL,
	[Empleado_id] [int] NOT NULL,
	[Nombre] [char](30) NOT NULL,
	[RFC] [varchar](15) NOT NULL,
	[CodigoPostal] [varchar](5) NOT NULL,
	[Calle] [varchar](30) NOT NULL,
	[Ingresos_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Huesped](
	[Huesped_id] [int] NOT NULL,
	[Pais_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Municipio_id] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Edad] [int] NOT NULL,
	[Calle] [varchar](30) NOT NULL,
	[Colonia] [varchar](60) NOT NULL,
	[NumeroDomicilio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Huesped_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingresos]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingresos](
	[Ingresos_id] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[GananciaXDia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ingresos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mobiliario]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mobiliario](
	[Mobiliario_id] [int] NOT NULL,
	[NombreMobiliario] [varchar](20) NOT NULL,
	[#XMobiliario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mobiliario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[Municipio_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Pais_id] [int] NOT NULL,
	[NombreMunicipio] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Municipio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Pais_id] [int] NOT NULL,
	[NombrePais] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pais_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planta]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planta](
	[Planta_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[#Planta] [int] NOT NULL,
	[#HabitacionesGrandes] [int] NOT NULL,
	[#HabitacionesMedianas] [int] NOT NULL,
	[#HabitacionesChicas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Planta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[Reservacion_id] [int] NOT NULL,
	[Huesped_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Reservacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicios_id] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Servicios_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockMobiliario]    Script Date: 18/10/2019 10:51:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockMobiliario](
	[StockMobiliario_id] [int] NOT NULL,
	[Mobiliario_id] [int] NOT NULL,
	[#Muebles] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StockMobiliario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (1, N'God', 1, 2, 2, 36, N'Barredor', N'2:00-3:00', N'LosArandanos', 25)
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (2, N'Esther', 3, 7, 7, 25, N'Trapea', N'5:00-7:00', N'Manzana', 3)
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (3, N'Ed', 4, 11, 11, 36, N'Barredor', N'2:00-3:00', N'LosArandanos', 25)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (1, N'Aguascalientes', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (2, N'Chiapas', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (3, N'NuevoLeon', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (4, N'BuenosAires', 2)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (5, N'Catamarca', 2)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (6, N'Cordoba', 2)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (7, N'Antioquia', 3)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (8, N'Cauca', 3)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (9, N'Bolivar', 3)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (10, N'Tarapaca', 4)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (11, N'Antofagasta', 4)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (12, N'Valparaiso', 4)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (13, N'Concepcion', 5)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (14, N'Central', 5)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (15, N'Cordillera', 5)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad], [Calle], [Colonia], [NumeroDomicilio]) VALUES (1, 1, 2, 2, N'Jose', 20, N'LosPinos', N'BuenaVista', 223)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad], [Calle], [Colonia], [NumeroDomicilio]) VALUES (2, 1, 3, 3, N'Mateo', 18, N'Minerales', N'Amatista', 15)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad], [Calle], [Colonia], [NumeroDomicilio]) VALUES (3, 3, 8, 8, N'Sergio', 25, N'LosTermos', N'Yeti', 450)
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (1, 1, 1, N'Aguascalientes')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (2, 2, 1, N'Aldama')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (3, 3, 1, N'Monterrey')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (4, 4, 2, N'Ensenada')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (5, 5, 2, N'Andalgala')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (6, 6, 2, N'Canalete')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (7, 7, 3, N'Abejorral')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (8, 8, 3, N'Almaguer')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (9, 9, 3, N'Arjona')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (10, 10, 4, N'Tamarugal')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (11, 11, 4, N'Antofagasta')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (12, 12, 4, N'LosAndes')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (13, 13, 5, N'Arroyito')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (14, 14, 5, N'Aregua')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (15, 15, 5, N'Caraguatay')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (1, N'Mexico')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (2, N'Argentina')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (3, N'Colombia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (4, N'Chile')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (5, N'Paraguay')
ALTER TABLE [dbo].[CargosXHabitacion]  WITH CHECK ADD FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[CargosXHabitacion]  WITH CHECK ADD FOREIGN KEY([Servicios_id])
REFERENCES [dbo].[Servicios] ([Servicios_id])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([Estado_id])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([Municipio_id])
REFERENCES [dbo].[Municipio] ([Municipio_id])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Empleado_id])
REFERENCES [dbo].[Empleado] ([Empleado_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([Estado_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Ingresos_id])
REFERENCES [dbo].[Ingresos] ([Ingresos_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Mobiliario_id])
REFERENCES [dbo].[Mobiliario] ([Mobiliario_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Municipio_id])
REFERENCES [dbo].[Municipio] ([Municipio_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Planta_id])
REFERENCES [dbo].[Planta] ([Planta_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Reservacion_id])
REFERENCES [dbo].[Reservacion] ([Reservacion_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Servicios_id])
REFERENCES [dbo].[Servicios] ([Servicios_id])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([Estado_id])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([Municipio_id])
REFERENCES [dbo].[Municipio] ([Municipio_id])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([Estado_id])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Planta]  WITH CHECK ADD FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD FOREIGN KEY([Huesped_id])
REFERENCES [dbo].[Huesped] ([Huesped_id])
GO
ALTER TABLE [dbo].[StockMobiliario]  WITH CHECK ADD FOREIGN KEY([Mobiliario_id])
REFERENCES [dbo].[Mobiliario] ([Mobiliario_id])
GO
USE [master]
GO
ALTER DATABASE [AvancePIADef] SET  READ_WRITE 
GO
