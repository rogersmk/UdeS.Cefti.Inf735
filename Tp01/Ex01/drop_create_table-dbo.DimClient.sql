USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient',
	@level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient',
	@level2type=N'COLUMN',@level2name=N'LastName'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient',
	@level2type=N'COLUMN',@level2name=N'FirstName'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[DimClient] DROP CONSTRAINT [DF_DimClient_Email]
GO

ALTER TABLE [dbo].[DimClient] DROP CONSTRAINT [DF_DimClient_LastName]
GO

ALTER TABLE [dbo].[DimClient] DROP CONSTRAINT [DF_DimClient_FirstName]
GO

/****** Object:  Table [dbo].[DimClient]    Script Date: 10/31/2018 7:36:32 PM ******/
DROP TABLE [dbo].[DimClient]
GO

/****** Object:  Table [dbo].[DimClient]    Script Date: 10/31/2018 7:36:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimClient](
	[Id]		[bigint] IDENTITY(1,1)	NOT NULL,
	[FirstName]	[nchar](32)				NOT NULL,
	[LastName]	[nchar](32)				NOT NULL,
	[Email]		[nchar](64)				NOT NULL,
 CONSTRAINT [PK_DimClient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimClient] ADD  CONSTRAINT [DF_DimClient_FirstName]  DEFAULT (N'FirstName') FOR [FirstName]
GO

ALTER TABLE [dbo].[DimClient] ADD  CONSTRAINT [DF_DimClient_LastName]  DEFAULT (N'LastName') FOR [LastName]
GO

ALTER TABLE [dbo].[DimClient] ADD  CONSTRAINT [DF_DimClient_Email]  DEFAULT (N'FirstName.LastName@me.com') FOR [Email]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id Client' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client First Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient',
	@level2type=N'COLUMN',@level2name=N'FirstName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client Last Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient',
	@level2type=N'COLUMN',@level2name=N'LastName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient',
	@level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dimension Client' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimClient'
GO

