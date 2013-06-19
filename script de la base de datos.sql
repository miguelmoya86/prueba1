USE [apruebe2]
GO
/****** Object:  Table [dbo].[comuna]    Script Date: 11/20/2012 02:38:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comuna](
	[cod_comu] [varchar](6) NOT NULL,
	[nombre] [varchar](30) NULL,
 CONSTRAINT [PK_comuna] PRIMARY KEY CLUSTERED 
(
	[cod_comu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 11/20/2012 02:38:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[nombre] [varchar](30) NULL,
	[apellido] [varchar](30) NULL,
	[edad] [int] NULL,
	[e_mail] [varchar](30) NULL,
	[usuario] [varchar](15) NOT NULL,
	[password] [varchar](6) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 11/20/2012 02:38:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[direccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[calle] [varchar](30) NOT NULL,
	[numero] [varchar](8) NOT NULL,
	[usuario] [varchar](15) NOT NULL,
	[cod_comu] [varchar](6) NOT NULL,
 CONSTRAINT [PK_direccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK__direccion__usuar__014935CB]    Script Date: 11/20/2012 02:38:47 ******/
ALTER TABLE [dbo].[direccion]  WITH CHECK ADD FOREIGN KEY([usuario])
REFERENCES [dbo].[usuario] ([usuario])
GO
