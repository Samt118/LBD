USE [AvanceDeHotelBD2]
GO
ALTER TABLE [dbo].[Whisky] DROP CONSTRAINT [FK__Whisky__CostoXWh__1F98B2C1]
GO
ALTER TABLE [dbo].[Vodka] DROP CONSTRAINT [FK__Vodka__CostoXVod__208CD6FA]
GO
ALTER TABLE [dbo].[Vino] DROP CONSTRAINT [FK__Vino__CostoXVino__1DB06A4F]
GO
ALTER TABLE [dbo].[TiposDeBebida] DROP CONSTRAINT [FK__TiposDeBe__Whisk__1AD3FDA4]
GO
ALTER TABLE [dbo].[TiposDeBebida] DROP CONSTRAINT [FK__TiposDeBe__Vodka__1BC821DD]
GO
ALTER TABLE [dbo].[TiposDeBebida] DROP CONSTRAINT [FK__TiposDeBe__Vino___18EBB532]
GO
ALTER TABLE [dbo].[TiposDeBebida] DROP CONSTRAINT [FK__TiposDeBe__Tequi__17F790F9]
GO
ALTER TABLE [dbo].[TiposDeBebida] DROP CONSTRAINT [FK__TiposDeBe__Cerve__19DFD96B]
GO
ALTER TABLE [dbo].[Tequila] DROP CONSTRAINT [FK__Tequila__CostoXT__1CBC4616]
GO
ALTER TABLE [dbo].[StockMobiliario] DROP CONSTRAINT [FK__StockMobi__Mobil__123EB7A3]
GO
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT [FK__Servicios__Spa_i__1332DBDC]
GO
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT [FK__Servicios__Resta__17036CC0]
GO
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT [FK__Servicios__Pisci__160F4887]
GO
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT [FK__Servicios__Minib__14270015]
GO
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT [FK__Servicios__Billa__151B244E]
GO
ALTER TABLE [dbo].[Restaurant] DROP CONSTRAINT [FK__Restauran__Plati__29221CFB]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK__Reservaci__Huesp__07C12930]
GO
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK__Reservaci__Habit__08B54D69]
GO
ALTER TABLE [dbo].[RecursosHumanos] DROP CONSTRAINT [FK__RecursosH__Turno__2CF2ADDF]
GO
ALTER TABLE [dbo].[RecursosHumanos] DROP CONSTRAINT [FK__RecursosH__Puest__2BFE89A6]
GO
ALTER TABLE [dbo].[RecursosHumanos] DROP CONSTRAINT [FK__RecursosH__Emple__2B0A656D]
GO
ALTER TABLE [dbo].[Recibo] DROP CONSTRAINT [FK__Recibo__CostoXSe__2645B050]
GO
ALTER TABLE [dbo].[Recibo] DROP CONSTRAINT [FK__Recibo__CostoXBe__282DF8C2]
GO
ALTER TABLE [dbo].[Recibo] DROP CONSTRAINT [FK__Recibo__CostoDeH__2739D489]
GO
ALTER TABLE [dbo].[Planta] DROP CONSTRAINT [FK__Planta__Habitaci__2A164134]
GO
ALTER TABLE [dbo].[Minibar] DROP CONSTRAINT [FK__Minibar__TiposDe__3493CFA7]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Pais_id__2EDAF651]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Municip__30C33EC3]
GO
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [FK__Huesped__Estado___2FCF1A8A]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Servicios__09A971A2]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Reservaci__0A9D95DB]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__RecursosH__2DE6D218]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Planta_id__0E6E26BF]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Pais_id__0B91BA14]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Municipio__0D7A0286]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Mobiliari__0F624AF8]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK__Hotel__Estado_id__0C85DE4D]
GO
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [FK__Habitacio__Estad__10566F31]
GO
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [FK__Habitacio__Costo__114A936A]
GO
ALTER TABLE [dbo].[Estado] DROP CONSTRAINT [FK__Estado__Pais_id__4E53A1AA]
GO
ALTER TABLE [dbo].[Estado] DROP CONSTRAINT [FK__Estado__Pais_id__4D5F7D71]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Pais_i__31B762FC]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Munici__339FAB6E]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK__Empleado__Estado__32AB8735]
GO
ALTER TABLE [dbo].[CostoXServicios] DROP CONSTRAINT [FK__CostoXSer__Costo__06CD04F7]
GO
ALTER TABLE [dbo].[CostoXServicios] DROP CONSTRAINT [FK__CostoXSer__Costo__05D8E0BE]
GO
ALTER TABLE [dbo].[CostoXServicios] DROP CONSTRAINT [FK__CostoXSer__Costo__04E4BC85]
GO
ALTER TABLE [dbo].[CostoXServicios] DROP CONSTRAINT [FK__CostoXSer__Costo__03F0984C]
GO
ALTER TABLE [dbo].[CostoXBebidas] DROP CONSTRAINT [FK__CostoXBeb__Costo__25518C17]
GO
ALTER TABLE [dbo].[CostoXBebidas] DROP CONSTRAINT [FK__CostoXBeb__Costo__245D67DE]
GO
ALTER TABLE [dbo].[CostoXBebidas] DROP CONSTRAINT [FK__CostoXBeb__Costo__236943A5]
GO
ALTER TABLE [dbo].[CostoXBebidas] DROP CONSTRAINT [FK__CostoXBeb__Costo__22751F6C]
GO
ALTER TABLE [dbo].[CostoXBebidas] DROP CONSTRAINT [FK__CostoXBeb__Costo__2180FB33]
GO
ALTER TABLE [dbo].[Cerveza] DROP CONSTRAINT [FK__Cerveza__CostoXC__1EA48E88]
GO
/****** Object:  Table [dbo].[Whisky]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Whisky]
GO
/****** Object:  Table [dbo].[Vodka]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Vodka]
GO
/****** Object:  Table [dbo].[Vino]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Vino]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Turno]
GO
/****** Object:  Table [dbo].[TiposDeBebida]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[TiposDeBebida]
GO
/****** Object:  Table [dbo].[Tequila]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Tequila]
GO
/****** Object:  Table [dbo].[StockMobiliario]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[StockMobiliario]
GO
/****** Object:  Table [dbo].[Spa]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Spa]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Restaurant]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[RecursosHumanos]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[RecursosHumanos]
GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Recibo]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Platillos]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Platillos]
GO
/****** Object:  Table [dbo].[Planta]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Planta]
GO
/****** Object:  Table [dbo].[Piscina]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Piscina]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Municipio]
GO
/****** Object:  Table [dbo].[Mobiliario]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Mobiliario]
GO
/****** Object:  Table [dbo].[Minibar]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Minibar]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Huesped]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[EstadoDeHabitacion]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[EstadoDeHabitacion]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[CostoXWhisky]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoXWhisky]
GO
/****** Object:  Table [dbo].[CostoXVodka]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoXVodka]
GO
/****** Object:  Table [dbo].[CostoXVino]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoXVino]
GO
/****** Object:  Table [dbo].[CostoXTequila]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoXTequila]
GO
/****** Object:  Table [dbo].[CostoXServicios]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoXServicios]
GO
/****** Object:  Table [dbo].[CostoXCerveza]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoXCerveza]
GO
/****** Object:  Table [dbo].[CostoXBebidas]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoXBebidas]
GO
/****** Object:  Table [dbo].[CostoSpa]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoSpa]
GO
/****** Object:  Table [dbo].[CostoRestaurant]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoRestaurant]
GO
/****** Object:  Table [dbo].[CostoPiscina]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoPiscina]
GO
/****** Object:  Table [dbo].[CostoDeHabitacion]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoDeHabitacion]
GO
/****** Object:  Table [dbo].[CostoBillar]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[CostoBillar]
GO
/****** Object:  Table [dbo].[Cerveza]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Cerveza]
GO
/****** Object:  Table [dbo].[Billar]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP TABLE [dbo].[Billar]
GO
USE [master]
GO
/****** Object:  Database [AvanceDeHotelBD2]    Script Date: 11/10/2019 02:48:02 p. m. ******/
DROP DATABASE [AvanceDeHotelBD2]
GO
/****** Object:  Database [AvanceDeHotelBD2]    Script Date: 11/10/2019 02:48:02 p. m. ******/
CREATE DATABASE [AvanceDeHotelBD2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AvanceDeHotelBD2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AvanceDeHotelBD2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AvanceDeHotelBD2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AvanceDeHotelBD2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AvanceDeHotelBD2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AvanceDeHotelBD2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AvanceDeHotelBD2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET ARITHABORT OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET RECOVERY FULL 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET  MULTI_USER 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AvanceDeHotelBD2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AvanceDeHotelBD2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AvanceDeHotelBD2', N'ON'
GO
ALTER DATABASE [AvanceDeHotelBD2] SET QUERY_STORE = OFF
GO
USE [AvanceDeHotelBD2]
GO
/****** Object:  Table [dbo].[Billar]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billar](
	[Billar_id] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Billar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cerveza]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cerveza](
	[Cerveza_id] [int] NOT NULL,
	[CostoXCerveza_id] [int] NOT NULL,
	[Marca] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cerveza_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoBillar]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoBillar](
	[CostoBillar_id] [int] NOT NULL,
	[PrecioEntrada] [int] NOT NULL,
	[Horas] [int] NOT NULL,
	[CostoTotal]  AS ([PrecioEntrada]*[Horas]),
PRIMARY KEY CLUSTERED 
(
	[CostoBillar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoDeHabitacion]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoDeHabitacion](
	[CostoDeHabitacion_id] [int] NOT NULL,
	[Costo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CostoDeHabitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoPiscina]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoPiscina](
	[CostoPiscina_id] [int] NOT NULL,
	[PrecioEntrada] [int] NOT NULL,
	[Horas] [int] NOT NULL,
	[CostoTotal]  AS ([PrecioEntrada]*[Horas]),
PRIMARY KEY CLUSTERED 
(
	[CostoPiscina_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoRestaurant]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoRestaurant](
	[CostoRestaurant_id] [int] NOT NULL,
	[PrecioEntrada] [int] NOT NULL,
	[#Personas] [int] NOT NULL,
	[CostoTotal]  AS ([PrecioEntrada]*[#Personas]),
PRIMARY KEY CLUSTERED 
(
	[CostoRestaurant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoSpa]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoSpa](
	[CostoSpa_id] [int] NOT NULL,
	[PrecioEntrada] [int] NOT NULL,
	[Horas] [int] NOT NULL,
	[CostoTotal]  AS ([PrecioEntrada]*[Horas]),
PRIMARY KEY CLUSTERED 
(
	[CostoSpa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoXBebidas]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoXBebidas](
	[CostoXBebidas_id] [int] NOT NULL,
	[CostoXTequila_id] [int] NOT NULL,
	[CostoXVino_id] [int] NOT NULL,
	[CostoXWhisky_id] [int] NOT NULL,
	[CostoXVodka_id] [int] NOT NULL,
	[CostoXCerveza_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CostoXBebidas_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoXCerveza]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoXCerveza](
	[CostoXCerveza_id] [int] NOT NULL,
	[#Cervezas] [int] NOT NULL,
	[PrecioBase] [int] NOT NULL,
	[CostoTotal]  AS ([#Cervezas]*[PrecioBase]),
PRIMARY KEY CLUSTERED 
(
	[CostoXCerveza_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoXServicios]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoXServicios](
	[CostoXServicios_id] [int] NOT NULL,
	[CostoSpa_id] [int] NOT NULL,
	[CostoBillar_id] [int] NOT NULL,
	[CostoPiscina_id] [int] NOT NULL,
	[CostoRestaurant_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CostoXServicios_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoXTequila]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoXTequila](
	[CostoXTequila_id] [int] NOT NULL,
	[#Tequilas] [int] NOT NULL,
	[PrecioBase] [int] NOT NULL,
	[CostoTotal]  AS ([#Tequilas]*[PrecioBase]),
PRIMARY KEY CLUSTERED 
(
	[CostoXTequila_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoXVino]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoXVino](
	[CostoXVino_id] [int] NOT NULL,
	[#Vinos] [int] NOT NULL,
	[PrecioBase] [int] NOT NULL,
	[CostoTotal]  AS ([#Vinos]*[PrecioBase]),
PRIMARY KEY CLUSTERED 
(
	[CostoXVino_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoXVodka]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoXVodka](
	[CostoXVodka_id] [int] NOT NULL,
	[#Vodkas] [int] NOT NULL,
	[PrecioBase] [int] NOT NULL,
	[CostoTotal]  AS ([#Vodkas]*[PrecioBase]),
PRIMARY KEY CLUSTERED 
(
	[CostoXVodka_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostoXWhisky]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostoXWhisky](
	[CostoXWhisky_id] [int] NOT NULL,
	[#Whiskys] [int] NOT NULL,
	[PrecioBase] [int] NOT NULL,
	[CostoTotal]  AS ([#Whiskys]*[PrecioBase]),
PRIMARY KEY CLUSTERED 
(
	[CostoXWhisky_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/10/2019 02:48:03 p. m. ******/
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
	[Calle] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/10/2019 02:48:03 p. m. ******/
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
/****** Object:  Table [dbo].[EstadoDeHabitacion]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoDeHabitacion](
	[EstadoDeHabitacion_id] [int] NOT NULL,
	[Estado] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EstadoDeHabitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[Habitacion_id] [int] NOT NULL,
	[EstadoDeHabitacion_id] [int] NOT NULL,
	[CostoDeHabitacion_id] [int] NOT NULL,
	[Tipo] [char](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Habitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 11/10/2019 02:48:03 p. m. ******/
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
	[RecursosHumanos_id] [int] NOT NULL,
	[Nombre] [char](30) NOT NULL,
	[RFC] [varchar](15) NOT NULL,
	[CodigoPostal] [varchar](5) NOT NULL,
	[Calle] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 11/10/2019 02:48:03 p. m. ******/
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
PRIMARY KEY CLUSTERED 
(
	[Huesped_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Minibar]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Minibar](
	[Minibar_id] [int] NOT NULL,
	[TiposDeBebida_id] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Minibar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mobiliario]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mobiliario](
	[Mobiliario_id] [int] NOT NULL,
	[NombreMobiliario] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mobiliario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[Municipio_id] [int] NOT NULL,
	[NombreMunicipio] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Municipio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 11/10/2019 02:48:03 p. m. ******/
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
/****** Object:  Table [dbo].[Piscina]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piscina](
	[Piscina_id] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Piscina_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planta]    Script Date: 11/10/2019 02:48:03 p. m. ******/
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
/****** Object:  Table [dbo].[Platillos]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillos](
	[Platillos_id] [int] NOT NULL,
	[NombrePlatillo] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Platillos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[Puesto_id] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Puesto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recibo](
	[Recibo_id] [int] NOT NULL,
	[CostoDeHabitacion_id] [int] NOT NULL,
	[CostoXBebidas_id] [int] NOT NULL,
	[CostoXServicios_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Recibo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecursosHumanos]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecursosHumanos](
	[RecursosHumanos_id] [int] NOT NULL,
	[Empleado_id] [int] NOT NULL,
	[Puesto_id] [int] NOT NULL,
	[Turno_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RecursosHumanos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 11/10/2019 02:48:03 p. m. ******/
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
/****** Object:  Table [dbo].[Restaurant]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[Restaurant_id] [int] NOT NULL,
	[Platillos_id] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Restaurant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicios_id] [int] NOT NULL,
	[Spa_id] [int] NOT NULL,
	[Minibar_id] [int] NOT NULL,
	[Billar_id] [int] NOT NULL,
	[Piscina_id] [int] NOT NULL,
	[Restaurant_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Servicios_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spa]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spa](
	[Spa_id] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Spa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockMobiliario]    Script Date: 11/10/2019 02:48:03 p. m. ******/
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
/****** Object:  Table [dbo].[Tequila]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tequila](
	[Tequila_id] [int] NOT NULL,
	[CostoXTequila_id] [int] NOT NULL,
	[Marca] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tequila_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDeBebida]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDeBebida](
	[TiposDeBebida_id] [int] NOT NULL,
	[Tequila_id] [int] NOT NULL,
	[Vino_id] [int] NOT NULL,
	[Cerveza_id] [int] NOT NULL,
	[Whisky_id] [int] NOT NULL,
	[Vodka_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TiposDeBebida_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[Turno_id] [int] NOT NULL,
	[Dias] [varchar](9) NOT NULL,
	[Horas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Turno_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vino]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vino](
	[Vino_id] [int] NOT NULL,
	[CostoXVino_id] [int] NOT NULL,
	[Marca] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Vino_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vodka]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vodka](
	[Vodka_id] [int] NOT NULL,
	[CostoXVodka_id] [int] NOT NULL,
	[Marca] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Vodka_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Whisky]    Script Date: 11/10/2019 02:48:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Whisky](
	[Whisky_id] [int] NOT NULL,
	[CostoXWhisky] [int] NOT NULL,
	[Marca] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Whisky_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (1, N'Aguas_Calientes', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (2, N'Baja_California', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (3, N'Baja_California_Sur', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (4, N'Campeche', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (5, N'Chiapas', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (6, N'Chiahuahua', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (7, N'CDMX', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (8, N'Coahuila', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (9, N'Colima', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (10, N'Durango', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (11, N'Guanajuato', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (12, N'Guerrero', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (13, N'Hidalgo', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (14, N'Jalisco', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (15, N'Michoacan', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (16, N'Morelos', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (17, N'Nayarit', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (18, N'Nuevo_Leon', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (19, N'Oaxaca', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (20, N'Puebla', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (21, N'Queretaro', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (22, N'QuintanaRoo', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (23, N'SanLuisPotosi', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (24, N'Sinaloa', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (25, N'Sonora', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (26, N'Tabasco', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (27, N'Tamaulipas', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (28, N'Tlaxcala', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (29, N'Veracruz', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (30, N'Yucatan', 1)
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado], [Pais_id]) VALUES (31, N'Zacatecas', 1)
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (1, N'´Mexico')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (2, N'EstadosUnidos')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (3, N'´Argentina')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (4, N'Peru')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (5, N'Bolivia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (6, N'Venezuela')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (7, N'Chile')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (8, N'Brazil')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (9, N'Ecuador')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (10, N'Guatemala')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (11, N'Honduras')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (12, N'Paraguay')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (13, N'Colombia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (14, N'El Salvador')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (15, N'Nicaragua')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (16, N'Panama')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (17, N'RepublicaDominicana')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (18, N'Haiti')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (19, N'PuertoRico')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (20, N'Guayana')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (21, N'Guadalupe')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (22, N'Martinica')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (23, N'SanPedroYMiquelon')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (24, N'SanMartin')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (25, N'SanBartolome')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (26, N'Canada')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (27, N'AntiguaYBarbuda')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (28, N'Bahamas')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (29, N'Barbados')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (30, N'Belice')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (31, N'Dominica')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (32, N'Jamaica')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (33, N'Granada')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (34, N'SanCristobalYNieves')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (35, N'SanVicenteYLasGranadinas')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (36, N'SantaLucia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (37, N'Surinam')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (38, N'TrinidadyTobago')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (39, N'Anguila')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (40, N'Aruba')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (41, N'Bonaire')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (42, N'Curazao')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (43, N'Groenlandia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (44, N'Clipperton')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (45, N'IslaNavaza')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (46, N'IslasGeorgias')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (47, N'IslasMalvinas')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (48, N'IslasTurcas')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (49, N'IslasVirgenes')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (50, N'PuertoRico')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (51, N'Albania')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (52, N'Alemania')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (53, N'Andorra')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (54, N'Armenia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (55, N'Austria')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (56, N'Azerbaiyan')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (57, N'Belgica')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (58, N'Bielorrusia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (59, N'Bosnia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (60, N'Bulgaria')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (61, N'Chipre')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (62, N'Vaticano')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (63, N'Croacia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (64, N'Dinamarca')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (65, N'Eslovaquia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (66, N'Eslovenia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (67, N'España')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (68, N'Estonia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (69, N'Finlandia')
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (70, N'Francia')
ALTER TABLE [dbo].[Cerveza]  WITH CHECK ADD FOREIGN KEY([CostoXCerveza_id])
REFERENCES [dbo].[CostoXCerveza] ([CostoXCerveza_id])
GO
ALTER TABLE [dbo].[CostoXBebidas]  WITH CHECK ADD FOREIGN KEY([CostoXTequila_id])
REFERENCES [dbo].[CostoXTequila] ([CostoXTequila_id])
GO
ALTER TABLE [dbo].[CostoXBebidas]  WITH CHECK ADD FOREIGN KEY([CostoXVino_id])
REFERENCES [dbo].[CostoXVino] ([CostoXVino_id])
GO
ALTER TABLE [dbo].[CostoXBebidas]  WITH CHECK ADD FOREIGN KEY([CostoXWhisky_id])
REFERENCES [dbo].[CostoXWhisky] ([CostoXWhisky_id])
GO
ALTER TABLE [dbo].[CostoXBebidas]  WITH CHECK ADD FOREIGN KEY([CostoXVodka_id])
REFERENCES [dbo].[CostoXVodka] ([CostoXVodka_id])
GO
ALTER TABLE [dbo].[CostoXBebidas]  WITH CHECK ADD FOREIGN KEY([CostoXCerveza_id])
REFERENCES [dbo].[CostoXCerveza] ([CostoXCerveza_id])
GO
ALTER TABLE [dbo].[CostoXServicios]  WITH CHECK ADD FOREIGN KEY([CostoSpa_id])
REFERENCES [dbo].[CostoSpa] ([CostoSpa_id])
GO
ALTER TABLE [dbo].[CostoXServicios]  WITH CHECK ADD FOREIGN KEY([CostoBillar_id])
REFERENCES [dbo].[CostoBillar] ([CostoBillar_id])
GO
ALTER TABLE [dbo].[CostoXServicios]  WITH CHECK ADD FOREIGN KEY([CostoPiscina_id])
REFERENCES [dbo].[CostoPiscina] ([CostoPiscina_id])
GO
ALTER TABLE [dbo].[CostoXServicios]  WITH CHECK ADD FOREIGN KEY([CostoRestaurant_id])
REFERENCES [dbo].[CostoRestaurant] ([CostoRestaurant_id])
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
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD FOREIGN KEY([CostoDeHabitacion_id])
REFERENCES [dbo].[CostoDeHabitacion] ([CostoDeHabitacion_id])
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD FOREIGN KEY([EstadoDeHabitacion_id])
REFERENCES [dbo].[EstadoDeHabitacion] ([EstadoDeHabitacion_id])
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
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([RecursosHumanos_id])
REFERENCES [dbo].[RecursosHumanos] ([RecursosHumanos_id])
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
ALTER TABLE [dbo].[Minibar]  WITH CHECK ADD FOREIGN KEY([TiposDeBebida_id])
REFERENCES [dbo].[TiposDeBebida] ([TiposDeBebida_id])
GO
ALTER TABLE [dbo].[Planta]  WITH CHECK ADD FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD FOREIGN KEY([CostoDeHabitacion_id])
REFERENCES [dbo].[CostoDeHabitacion] ([CostoDeHabitacion_id])
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD FOREIGN KEY([CostoXBebidas_id])
REFERENCES [dbo].[CostoXBebidas] ([CostoXBebidas_id])
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD FOREIGN KEY([CostoXServicios_id])
REFERENCES [dbo].[CostoXServicios] ([CostoXServicios_id])
GO
ALTER TABLE [dbo].[RecursosHumanos]  WITH CHECK ADD FOREIGN KEY([Empleado_id])
REFERENCES [dbo].[Empleado] ([Empleado_id])
GO
ALTER TABLE [dbo].[RecursosHumanos]  WITH CHECK ADD FOREIGN KEY([Puesto_id])
REFERENCES [dbo].[Puesto] ([Puesto_id])
GO
ALTER TABLE [dbo].[RecursosHumanos]  WITH CHECK ADD FOREIGN KEY([Turno_id])
REFERENCES [dbo].[Turno] ([Turno_id])
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD FOREIGN KEY([Huesped_id])
REFERENCES [dbo].[Huesped] ([Huesped_id])
GO
ALTER TABLE [dbo].[Restaurant]  WITH CHECK ADD FOREIGN KEY([Platillos_id])
REFERENCES [dbo].[Platillos] ([Platillos_id])
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD FOREIGN KEY([Billar_id])
REFERENCES [dbo].[Billar] ([Billar_id])
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD FOREIGN KEY([Minibar_id])
REFERENCES [dbo].[Minibar] ([Minibar_id])
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD FOREIGN KEY([Piscina_id])
REFERENCES [dbo].[Piscina] ([Piscina_id])
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD FOREIGN KEY([Restaurant_id])
REFERENCES [dbo].[Restaurant] ([Restaurant_id])
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD FOREIGN KEY([Spa_id])
REFERENCES [dbo].[Spa] ([Spa_id])
GO
ALTER TABLE [dbo].[StockMobiliario]  WITH CHECK ADD FOREIGN KEY([Mobiliario_id])
REFERENCES [dbo].[Mobiliario] ([Mobiliario_id])
GO
ALTER TABLE [dbo].[Tequila]  WITH CHECK ADD FOREIGN KEY([CostoXTequila_id])
REFERENCES [dbo].[CostoXTequila] ([CostoXTequila_id])
GO
ALTER TABLE [dbo].[TiposDeBebida]  WITH CHECK ADD FOREIGN KEY([Cerveza_id])
REFERENCES [dbo].[Cerveza] ([Cerveza_id])
GO
ALTER TABLE [dbo].[TiposDeBebida]  WITH CHECK ADD FOREIGN KEY([Tequila_id])
REFERENCES [dbo].[Tequila] ([Tequila_id])
GO
ALTER TABLE [dbo].[TiposDeBebida]  WITH CHECK ADD FOREIGN KEY([Vino_id])
REFERENCES [dbo].[Vino] ([Vino_id])
GO
ALTER TABLE [dbo].[TiposDeBebida]  WITH CHECK ADD FOREIGN KEY([Vodka_id])
REFERENCES [dbo].[Vodka] ([Vodka_id])
GO
ALTER TABLE [dbo].[TiposDeBebida]  WITH CHECK ADD FOREIGN KEY([Whisky_id])
REFERENCES [dbo].[Whisky] ([Whisky_id])
GO
ALTER TABLE [dbo].[Vino]  WITH CHECK ADD FOREIGN KEY([CostoXVino_id])
REFERENCES [dbo].[CostoXVino] ([CostoXVino_id])
GO
ALTER TABLE [dbo].[Vodka]  WITH CHECK ADD FOREIGN KEY([CostoXVodka_id])
REFERENCES [dbo].[CostoXVodka] ([CostoXVodka_id])
GO
ALTER TABLE [dbo].[Whisky]  WITH CHECK ADD FOREIGN KEY([CostoXWhisky])
REFERENCES [dbo].[CostoXWhisky] ([CostoXWhisky_id])
GO
USE [master]
GO
ALTER DATABASE [AvanceDeHotelBD2] SET  READ_WRITE 
GO
