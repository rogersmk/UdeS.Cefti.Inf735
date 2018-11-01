USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory',
	@level2type=N'COLUMN',@level2name=N'Model'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory',
	@level2type=N'COLUMN',@level2name=N'Brand'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory',
	@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[DimAccessory] DROP CONSTRAINT [DF_DimAccessory_Brand]
GO

ALTER TABLE [dbo].[DimAccessory] DROP CONSTRAINT [DF_DimAccessory_Name]
GO

/****** Object:  Table [dbo].[DimAccessory]    Script Date: 10/31/2018 7:36:52 PM ******/
DROP TABLE [dbo].[DimAccessory]
GO

/****** Object:  Table [dbo].[DimAccessory]    Script Date: 10/31/2018 7:36:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimAccessory](
	[Id]	[bigint] IDENTITY(1,1)	NOT NULL,
	[Name]	[nchar](32)				NOT NULL,
	[Brand]	[nchar](16)				NOT NULL,
	[Model]	[uniqueidentifier]		NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimAccessory] ADD  CONSTRAINT [DF_DimAccessory_Name]  DEFAULT (N'AccessoryName') FOR [Name]
GO

ALTER TABLE [dbo].[DimAccessory] ADD  CONSTRAINT [DF_DimAccessory_Brand]  DEFAULT (N'AccessoryBrand') FOR [Brand]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accessory Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accessory Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory',
	@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accessory Brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory',
	@level2type=N'COLUMN',@level2name=N'Brand'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accessory Model' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory',
	@level2type=N'COLUMN',@level2name=N'Model'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Accessory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimAccessory'
GO

