USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'CurrentDate'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'Day'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'Month'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'Year'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[DimDate] DROP CONSTRAINT [DF_DimDate_Day]
GO

ALTER TABLE [dbo].[DimDate] DROP CONSTRAINT [DF_DimDate_Month]
GO

ALTER TABLE [dbo].[DimDate] DROP CONSTRAINT [DF_DimDate_Year]
GO

/****** Object:  Table [dbo].[DimDate]    Script Date: 10/31/2018 7:55:48 PM ******/
DROP TABLE [dbo].[DimDate]
GO

/****** Object:  Table [dbo].[DimDate]    Script Date: 10/31/2018 7:55:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDate](
	[Id]			[bigint] IDENTITY(1,1)	NOT NULL,
	[Year]			[numeric](4, 0)			NOT NULL,
	[Month]			[smallint]				NOT NULL,
	[Day]			[smallint]				NOT NULL,
	[CurrentDate]	[date]					NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimDate] ADD  CONSTRAINT [DF_DimDate_Year]  DEFAULT ((0)) FOR [Year]
GO

ALTER TABLE [dbo].[DimDate] ADD  CONSTRAINT [DF_DimDate_Month]  DEFAULT ((1)) FOR [Month]
GO

ALTER TABLE [dbo].[DimDate] ADD  CONSTRAINT [DF_DimDate_Day]  DEFAULT ((1)) FOR [Day]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Date Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Date Year' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'Year'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Date Month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'Month'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Date Day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'Day'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Date Current Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate',
	@level2type=N'COLUMN',@level2name=N'CurrentDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate'
GO

