USE [biblioteca]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Autor]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Autor_libro]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Categoria]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Docente]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Editorial]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Libro]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Localidad]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Prestamo]    Script Date: 26/10/2022 10:56:58 ******/
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
/****** Object:  Table [dbo].[Provincia]    Script Date: 26/10/2022 10:56:58 ******/
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
