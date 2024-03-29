USE [Hotel8]
GO
ALTER TABLE [dbo].[StockMobiliario] DROP CONSTRAINT [FK__StockMobi__Mobil__5BE2A6F2]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK__Reservaci__Huesp__5EBF139D]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK__Reservaci__Habit__5FB337D6]
GO
ALTER TABLE [dbo].[Planta] DROP CONSTRAINT [FK__Planta__Habitaci__5AEE82B9]
GO
ALTER TABLE [dbo].[Municipio] DROP CONSTRAINT [FK__Municipio__Pais___619B8048]
GO
ALTER TABLE [dbo].[Municipio] DROP CONSTRAINT [FK__Municipio__Estad__628FA481]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Pais_id__5535A963]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Municip__571DF1D5]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Estado___5629CD9C]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Servicios__4E88ABD4]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Reservaci__4F7CD00D]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Planta_id__534D60F1]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Pais_id__5070F446]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Municipio__52593CB8]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Mobiliari__5441852A]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Estado_id__5165187F]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Empleado___6383C8BA]
GO
ALTER TABLE [dbo].[Estado] DROP CONSTRAINT [FK__Estado__Pais_id__60A75C0F]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Pais_i__5812160E]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Munici__59FA5E80]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Estado__59063A47]
GO
ALTER TABLE [dbo].[CargosXHabitacion] DROP CONSTRAINT [FK__CargosXHa__Servi__5DCAEF64]
GO
ALTER TABLE [dbo].[CargosXHabitacion] DROP CONSTRAINT [FK__CargosXHa__Habit__5CD6CB2B]
GO
/****** Object:  Table [dbo].[StockMobiliario]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[StockMobiliario]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Planta]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Planta]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Municipio]
GO
/****** Object:  Table [dbo].[Mobiliario]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Mobiliario]
GO
/****** Object:  Table [dbo].[Humano]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Humano]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[CargosXHabitacion]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[CargosXHabitacion]
GO
/****** Object:  View [dbo].[Empleados Recepcion]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP VIEW [dbo].[Empleados Recepcion]
GO
/****** Object:  View [dbo].[Empleados Limpieza]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP VIEW [dbo].[Empleados Limpieza]
GO
/****** Object:  View [dbo].[Empleados Mexico]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP VIEW [dbo].[Empleados Mexico]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  View [dbo].[Clientes Mexico]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP VIEW [dbo].[Clientes Mexico]
GO
/****** Object:  View [dbo].[Clientes Paraguay]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP VIEW [dbo].[Clientes Paraguay]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP TABLE [dbo].[Huesped]
GO
USE [master]
GO
/****** Object:  Database [Hotel8]    Script Date: 25/10/2019 06:51:20 p. m. ******/
DROP DATABASE [Hotel8]
GO
/****** Object:  Database [Hotel8]    Script Date: 25/10/2019 06:51:20 p. m. ******/
CREATE DATABASE [Hotel8]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hotel8', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL\MSSQL\DATA\Hotel8.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hotel8_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL\MSSQL\DATA\Hotel8_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Hotel8] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotel8].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotel8] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hotel8] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hotel8] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hotel8] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hotel8] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hotel8] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hotel8] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hotel8] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hotel8] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hotel8] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hotel8] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hotel8] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hotel8] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hotel8] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hotel8] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hotel8] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hotel8] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hotel8] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hotel8] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hotel8] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hotel8] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hotel8] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hotel8] SET RECOVERY FULL 
GO
ALTER DATABASE [Hotel8] SET  MULTI_USER 
GO
ALTER DATABASE [Hotel8] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hotel8] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hotel8] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hotel8] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hotel8] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hotel8', N'ON'
GO
ALTER DATABASE [Hotel8] SET QUERY_STORE = OFF
GO
USE [Hotel8]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
PRIMARY KEY CLUSTERED 
(
	[Huesped_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Clientes Paraguay]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Clientes Paraguay] as
select Nombre
from Huesped
where Pais_id =5;
GO
/****** Object:  View [dbo].[Clientes Mexico]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Clientes Mexico] as
select Nombre
from Huesped
where Pais_id =1;
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
	[Sueldo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Empleados Mexico]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Empleados Mexico] as
select Nombre
from Empleado
where Pais_id =1;
GO
/****** Object:  View [dbo].[Empleados Limpieza]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Empleados Limpieza] as
select Nombre, Sueldo
from Empleado
where Puesto ='Limpieza';
GO
/****** Object:  View [dbo].[Empleados Recepcion]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Empleados Recepcion] as
select Nombre, Sueldo
from Empleado
where Puesto ='Recepcion';
GO
/****** Object:  Table [dbo].[CargosXHabitacion]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargosXHabitacion](
	[CargosXHabitacion_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[Servicios_id] [int] NOT NULL,
	[CostoTotal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CargosXHabitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Estado_id] [int] NOT NULL,
	[Pais_id] [int] NOT NULL,
	[NombreEstado] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Estado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[Habitacion_id] [int] NOT NULL,
	[EstadoDeHabitacion] [varchar](13) NOT NULL,
	[Tipo] [char](7) NOT NULL,
	[CostoDeHabitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Habitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
/****** Object:  Table [dbo].[Humano]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Humano](
	[Huesped_id] [int] NOT NULL,
	[Pais_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Municipio_id] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Edad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mobiliario]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
/****** Object:  Table [dbo].[Municipio]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
/****** Object:  Table [dbo].[Pais]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
/****** Object:  Table [dbo].[Planta]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
/****** Object:  Table [dbo].[Reservacion]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
/****** Object:  Table [dbo].[Servicios]    Script Date: 25/10/2019 06:51:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicios_id] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Costo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Servicios_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockMobiliario]    Script Date: 25/10/2019 06:51:21 p. m. ******/
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
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Sueldo]) VALUES (1, N'Agustin', 1, 1, 1, 30, N'Secretario', N'2:00-5:00', 8000)
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Sueldo]) VALUES (2, N'Avelardo', 3, 7, 21, 45, N'Limpieza', N'2:00-6:00', 6000)
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Sueldo]) VALUES (3, N'Carlos', 1, 2, 4, 35, N'Limpieza', N'6:00-10:00', 6000)
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Sueldo]) VALUES (4, N'Karla', 1, 3, 7, 32, N'Recepcion', N'9:00-13:00', 9000)
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Sueldo]) VALUES (5, N'Amelia', 1, 3, 9, 33, N'Publicista', N'6:00-13:00', 12000)
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (1, 1, N'Aguascalientes')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (2, 1, N'Campeche')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (3, 1, N'Durango')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (4, 2, N'Buenos Aires')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (5, 2, N'Catamarca')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (6, 2, N'Mendoza')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (7, 3, N'Bogota')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (8, 3, N'Boyaca')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (9, 3, N'Cordoba')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (10, 4, N'Aragua')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (11, 4, N'Carabobo')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (12, 4, N'Trujillo')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (13, 5, N'Concepcion')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (14, 5, N'Guaira')
INSERT [dbo].[Estado] ([Estado_id], [Pais_id], [NombreEstado]) VALUES (15, 5, N'Misiones')
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad]) VALUES (1, 1, 3, 8, N'Sergio', 18)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad]) VALUES (2, 1, 3, 7, N'Abraham', 23)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad]) VALUES (3, 1, 3, 9, N'Francisco', 34)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad]) VALUES (4, 1, 3, 9, N'Elizabeth', 33)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad]) VALUES (5, 2, 5, 15, N'Aurelio', 38)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad]) VALUES (6, 5, 14, 41, N'Miguel', 29)
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad]) VALUES (7, 4, 10, 30, N'Maria', 26)
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (1, 1, 1, N'Aguascalientes')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (2, 1, 1, N'Calvillo')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (3, 1, 1, N'Cosio')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (4, 2, 1, N'Candelaria')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (5, 2, 1, N'Carmen')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (6, 2, 1, N'Escarcega')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (7, 3, 1, N'Canatlan')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (8, 3, 1, N'Canelas')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (9, 3, 1, N'Cuencame')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (10, 4, 2, N'Avellaneda')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (11, 4, 2, N'Berisso')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (12, 4, 2, N'Cañuelas')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (13, 5, 2, N'Andalgala')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (14, 5, 2, N'Belen')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (15, 5, 2, N'Santa Maria')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (16, 6, 2, N'Departamento Capital')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (17, 6, 2, N'Departamento Junin')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (18, 6, 2, N'Departamento La Paz')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (19, 7, 3, N'Usaquen')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (20, 7, 3, N'Santa Fe')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (21, 7, 3, N'Bosa')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (22, 8, 3, N'La Libertad')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (23, 8, 3, N'El Cocuy')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (24, 8, 3, N'El Espino')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (25, 9, 3, N'Monteria')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (26, 9, 3, N'Cerete')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (27, 9, 3, N'Chinu')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (28, 10, 4, N'Bolivar')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (29, 10, 4, N'Girardot')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (30, 10, 4, N'Camatagua')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (31, 11, 4, N'Valencia')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (32, 11, 4, N'Bejuma')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (33, 11, 4, N'Guacara')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (34, 12, 4, N'Candelaria')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (35, 12, 4, N'Escuque')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (36, 12, 4, N'La Ceiba')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (37, 13, 5, N'Arroyito')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (38, 13, 5, N'Belen')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (39, 13, 5, N'Loreto')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (40, 14, 5, N'Borja')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (41, 14, 5, N'Coronel Martinez')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (42, 14, 5, N'Doctor Bottrell')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (43, 15, 5, N'Ayolas')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (44, 15, 5, N'San Miguel')
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (45, 15, 5, N'Santa Rosa')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (1, N'Mexico')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (2, N'Argentina')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (3, N'Colombia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (4, N'Venezuela')
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
ALTER DATABASE [Hotel8] SET  READ_WRITE 
GO
