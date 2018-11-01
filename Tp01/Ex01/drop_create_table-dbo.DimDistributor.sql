USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDistributor'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDistributor',
	@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDistributor',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[DimDistributor] DROP CONSTRAINT [DF_DimDistributor_Name]
GO

/****** Object:  Table [dbo].[DimDistributor]    Script Date: 10/31/2018 7:49:02 PM ******/
DROP TABLE [dbo].[DimDistributor]
GO

/****** Object:  Table [dbo].[DimDistributor]    Script Date: 10/31/2018 7:49:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDistributor](
	[Id]	[bigint] IDENTITY(1,1)	NOT NULL,
	[Name]	[nchar](32)				NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimDistributor] ADD  CONSTRAINT [DF_DimDistributor_Name]  DEFAULT (N'DimensionDistributorName') FOR [Name]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension DistributorId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDistributor',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Distributor Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDistributor',
	@level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Distributor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDistributor'
GO

