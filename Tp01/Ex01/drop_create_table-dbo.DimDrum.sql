USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDrum'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDrum',
	@level2type=N'COLUMN',@level2name=N'Model'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDrum',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[DimDrum] DROP CONSTRAINT [DF_DimDrum_Model]
GO

/****** Object:  Table [dbo].[DimDrum]    Script Date: 10/31/2018 8:08:31 PM ******/
DROP TABLE [dbo].[DimDrum]
GO

/****** Object:  Table [dbo].[DimDrum]    Script Date: 10/31/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDrum](
	[Id]	[bigint] IDENTITY(1,1)	NOT NULL,
	[Model]	[nchar](16)				NOT NULL,
 CONSTRAINT [PK_DimDrum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimDrum] ADD  CONSTRAINT [DF_DimDrum_Model]  DEFAULT (N'Conga') FOR [Model]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Drum Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDrum',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Drum Model' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDrum',
	@level2type=N'COLUMN',@level2name=N'Model'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Drum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDrum'
GO

