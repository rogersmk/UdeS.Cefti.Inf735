USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'Country'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'Province'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'City'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'PostalCode'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[DimRegion] DROP CONSTRAINT [DF_DimRegion_Country]
GO

ALTER TABLE [dbo].[DimRegion] DROP CONSTRAINT [DF_DimRegion_Province]
GO

ALTER TABLE [dbo].[DimRegion] DROP CONSTRAINT [DF_DimRegion_City]
GO

ALTER TABLE [dbo].[DimRegion] DROP CONSTRAINT [DF_DimRegion_PostalCode]
GO

/****** Object:  Table [dbo].[DimRegion]    Script Date: 10/31/2018 7:43:15 PM ******/
DROP TABLE [dbo].[DimRegion]
GO

/****** Object:  Table [dbo].[DimRegion]    Script Date: 10/31/2018 7:43:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimRegion](
	[Id]			[bigint] IDENTITY(1,1)	NOT NULL,
	[PostalCode]	[nchar](7)				NOT NULL,
	[City]			[nchar](32)				NOT NULL,
	[Province]		[nchar](32)				NOT NULL,
	[Country]		[nchar](64)				NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimRegion] ADD  CONSTRAINT [DF_DimRegion_PostalCode]  DEFAULT (N'G1Q 1Q9') FOR [PostalCode]
GO

ALTER TABLE [dbo].[DimRegion] ADD  CONSTRAINT [DF_DimRegion_City]  DEFAULT (N'Montreal') FOR [City]
GO

ALTER TABLE [dbo].[DimRegion] ADD  CONSTRAINT [DF_DimRegion_Province]  DEFAULT (N'Quebec') FOR [Province]
GO

ALTER TABLE [dbo].[DimRegion] ADD  CONSTRAINT [DF_DimRegion_Country]  DEFAULT (N'Canada') FOR [Country]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Dimension Region Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Dimension Region Postal Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'PostalCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Dimension Region City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'City'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Dimension Region Province' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'Province'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Dimension Region Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion',
	@level2type=N'COLUMN',@level2name=N'Country'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Dimension Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimRegion'
GO

