USE [GerenciadorDeRepositorios]
GO
/****** Object:  Table [dbo].[Favoritos]    Script Date: 27/06/2024 23:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favoritos](
	[ID] [uniqueidentifier] NOT NULL,
	[IDRepositorio] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Favoritos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repositorios]    Script Date: 27/06/2024 23:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repositorios](
	[ID] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](250) NOT NULL,
	[Descricao] [varchar](250) NOT NULL,
	[Linguagem] [varchar](50) NOT NULL,
	[UltimaDataDeAtualizacao] [date] NOT NULL,
	[DonoDoRepositorio] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Repositorios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Favoritos_Repositorios] FOREIGN KEY([IDRepositorio])
REFERENCES [dbo].[Repositorios] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favoritos] CHECK CONSTRAINT [FK_Favoritos_Repositorios]
GO
