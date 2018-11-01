USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFormat'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFormat',
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFormat',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[DimFormat] DROP CONSTRAINT [DF_DimFormat_Type]
GO

/****** Object:  Table [dbo].[DimFormat]    Script Date: 10/31/2018 8:02:28 PM ******/
DROP TABLE [dbo].[DimFormat]
GO

/****** Object:  Table [dbo].[DimFormat]    Script Date: 10/31/2018 8:02:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimFormat](
	[Id]	[bigint] IDENTITY(1,1)	NOT NULL,
	[Type]	[nchar](8)				NOT NULL,
 CONSTRAINT [PK_DimFormat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimFormat] ADD  CONSTRAINT [DF_DimFormat_Type]  DEFAULT (N'small') FOR [Type]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Format Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFormat',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Format Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFormat',
	@level2type=N'COLUMN',@level2name=N'Type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Format' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimFormat'
GO

