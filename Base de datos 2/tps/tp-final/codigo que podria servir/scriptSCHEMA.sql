USE [master]
GO
/****** Object:  Database [biblioteca]    Script Date: 26/10/2022 15:12:52 ******/
CREATE DATABASE [biblioteca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'biblioteca', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\biblioteca.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'biblioteca_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\biblioteca_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [biblioteca] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [biblioteca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [biblioteca] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [biblioteca] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [biblioteca] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [biblioteca] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [biblioteca] SET ARITHABORT OFF 
GO
ALTER DATABASE [biblioteca] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [biblioteca] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [biblioteca] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [biblioteca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [biblioteca] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [biblioteca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [biblioteca] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [biblioteca] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [biblioteca] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [biblioteca] SET  ENABLE_BROKER 
GO
ALTER DATABASE [biblioteca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [biblioteca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [biblioteca] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [biblioteca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [biblioteca] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [biblioteca] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [biblioteca] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [biblioteca] SET RECOVERY FULL 
GO
ALTER DATABASE [biblioteca] SET  MULTI_USER 
GO
ALTER DATABASE [biblioteca] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [biblioteca] SET DB_CHAINING OFF 
GO
ALTER DATABASE [biblioteca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [biblioteca] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [biblioteca] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [biblioteca] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'biblioteca', N'ON'
GO
ALTER DATABASE [biblioteca] SET QUERY_STORE = OFF
GO
USE [biblioteca]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[ID_persona_alum] [int] NOT NULL,
	[Anio_ingreso] [datetime] NOT NULL,
	[Anio_cursa] [int] NOT NULL,
	[Turno] [varchar](10) NOT NULL,
	[Divicion] [varchar](10) NOT NULL,
 CONSTRAINT [ID_persona_alum_PK] PRIMARY KEY CLUSTERED 
(
	[ID_persona_alum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[ID_persona_aut] [int] NOT NULL,
	[Referencia] [varchar](20) NOT NULL,
 CONSTRAINT [ID_persona_aut_PK] PRIMARY KEY CLUSTERED 
(
	[ID_persona_aut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autor_libro]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor_libro](
	[ID_persona_aut_lib] [int] NOT NULL,
	[ID_libro_aut_lib] [int] NOT NULL,
 CONSTRAINT [ID_autor_libro_PK] PRIMARY KEY CLUSTERED 
(
	[ID_persona_aut_lib] ASC,
	[ID_libro_aut_lib] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[ID_categoria] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [ID_categoria_PK] PRIMARY KEY CLUSTERED 
(
	[ID_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docente]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docente](
	[ID_persona_doc] [int] NOT NULL,
	[Anio_ingreso] [datetime] NOT NULL,
	[Titulo] [varchar](20) NOT NULL,
 CONSTRAINT [ID_persona_doc_PK] PRIMARY KEY CLUSTERED 
(
	[ID_persona_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editorial]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editorial](
	[ID_editorial] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Direccion] [varchar](20) NOT NULL,
	[Telefono] [varchar](10) NOT NULL,
	[ID_localidad_edi] [int] NOT NULL,
 CONSTRAINT [ID_editorial_PK] PRIMARY KEY CLUSTERED 
(
	[ID_editorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[ID_libro] [int] NOT NULL,
	[Titulo] [varchar](20) NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[ID_editorial_lib] [int] NOT NULL,
	[ID_categoria_lib] [int] NOT NULL,
 CONSTRAINT [ID_libro_PK] PRIMARY KEY CLUSTERED 
(
	[ID_libro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[ID_localidad] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[ID_provincia] [int] NOT NULL,
 CONSTRAINT [ID_localidad_PK] PRIMARY KEY CLUSTERED 
(
	[ID_localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[ID_persona] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
	[Direccion] [varchar](20) NOT NULL,
	[Telefono] [varchar](10) NOT NULL,
	[ID_localidad_per] [int] NOT NULL,
 CONSTRAINT [ID_persona_PK] PRIMARY KEY CLUSTERED 
(
	[ID_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamo](
	[ID_persona_pres] [int] NOT NULL,
	[ID_libro_pres] [int] NOT NULL,
	[Fecha_prestamo] [datetime] NULL,
	[Fecha_devolucion] [datetime] NULL,
 CONSTRAINT [ID_prestamo_PK] PRIMARY KEY CLUSTERED 
(
	[ID_persona_pres] ASC,
	[ID_libro_pres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 26/10/2022 15:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[ID_provincia] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [ID_provincia_PK] PRIMARY KEY CLUSTERED 
(
	[ID_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [ID_persona_alum_FK] FOREIGN KEY([ID_persona_alum])
REFERENCES [dbo].[Persona] ([ID_persona])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [ID_persona_alum_FK]
GO
ALTER TABLE [dbo].[Autor]  WITH CHECK ADD  CONSTRAINT [ID_persona_aut_FK] FOREIGN KEY([ID_persona_aut])
REFERENCES [dbo].[Persona] ([ID_persona])
GO
ALTER TABLE [dbo].[Autor] CHECK CONSTRAINT [ID_persona_aut_FK]
GO
ALTER TABLE [dbo].[Autor_libro]  WITH CHECK ADD  CONSTRAINT [ID_libro_aut_lib_FK] FOREIGN KEY([ID_libro_aut_lib])
REFERENCES [dbo].[Libro] ([ID_libro])
GO
ALTER TABLE [dbo].[Autor_libro] CHECK CONSTRAINT [ID_libro_aut_lib_FK]
GO
ALTER TABLE [dbo].[Autor_libro]  WITH CHECK ADD  CONSTRAINT [ID_persona_aut_lib_FK] FOREIGN KEY([ID_persona_aut_lib])
REFERENCES [dbo].[Persona] ([ID_persona])
GO
ALTER TABLE [dbo].[Autor_libro] CHECK CONSTRAINT [ID_persona_aut_lib_FK]
GO
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [ID_persona_doc_FK] FOREIGN KEY([ID_persona_doc])
REFERENCES [dbo].[Persona] ([ID_persona])
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [ID_persona_doc_FK]
GO
ALTER TABLE [dbo].[Editorial]  WITH CHECK ADD  CONSTRAINT [ID_localidad_edi_FK] FOREIGN KEY([ID_localidad_edi])
REFERENCES [dbo].[Localidad] ([ID_localidad])
GO
ALTER TABLE [dbo].[Editorial] CHECK CONSTRAINT [ID_localidad_edi_FK]
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD  CONSTRAINT [ID_categoria_lib_FK] FOREIGN KEY([ID_categoria_lib])
REFERENCES [dbo].[Categoria] ([ID_categoria])
GO
ALTER TABLE [dbo].[Libro] CHECK CONSTRAINT [ID_categoria_lib_FK]
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD  CONSTRAINT [ID_editorial_lib_FK] FOREIGN KEY([ID_editorial_lib])
REFERENCES [dbo].[Editorial] ([ID_editorial])
GO
ALTER TABLE [dbo].[Libro] CHECK CONSTRAINT [ID_editorial_lib_FK]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [ID_provincia_FK] FOREIGN KEY([ID_provincia])
REFERENCES [dbo].[Provincia] ([ID_provincia])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [ID_provincia_FK]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [ID_localidad_per_FK] FOREIGN KEY([ID_localidad_per])
REFERENCES [dbo].[Localidad] ([ID_localidad])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [ID_localidad_per_FK]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [ID_libro_pres_FK] FOREIGN KEY([ID_libro_pres])
REFERENCES [dbo].[Libro] ([ID_libro])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [ID_libro_pres_FK]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [ID_persona_pres_FK] FOREIGN KEY([ID_persona_pres])
REFERENCES [dbo].[Persona] ([ID_persona])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [ID_persona_pres_FK]
GO
USE [master]
GO
ALTER DATABASE [biblioteca] SET  READ_WRITE 
GO
