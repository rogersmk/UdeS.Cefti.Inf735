USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDesign'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDesign',
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDesign',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[DimDesign] DROP CONSTRAINT [DF_DimDesign_Type]
GO

/****** Object:  Table [dbo].[DimDesign]    Script Date: 10/31/2018 8:06:15 PM ******/
DROP TABLE [dbo].[DimDesign]
GO

/****** Object:  Table [dbo].[DimDesign]    Script Date: 10/31/2018 8:06:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDesign](
	[Id]	[bigint] IDENTITY(1,1)	NOT NULL,
	[Type]	[nchar](10)				NOT NULL,
 CONSTRAINT [PK_DimDesign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimDesign] ADD  CONSTRAINT [DF_DimDesign_Type]  DEFAULT (N'Inca') FOR [Type]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Design Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDesign',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Design Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDesign',
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Design' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDesign'
GO

