USE [UdeS.Cefti.Inf735.Lab01.Ex1.DW]
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'CONSTRAINT',@level2name=N'FK_FactDrumSales_DimRegion'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'CONSTRAINT',@level2name=N'FK_FactDrumSales_DimAccessory'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportFeesUSD'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportCommissionUSD'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'SalesCommissionUSD'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'AccessorySalesAmountUSD'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TotalSalesAmountUSD'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'ChangeRate'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportFeesCanadaPostCND'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportFeesCND'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportCommissionCND'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'SalesCommissionCND'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'AccessorySalesAmountCND'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TotalSalesAmountCND'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'Quantity'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'RegionKey'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'DateKey'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'DesignKey'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'AccessoryKey'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'FormatKey'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'DrumKey'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'ClientKey'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'DistributorKey'
GO

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [FK_FactDrumSales_DimRegion]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [FK_FactDrumSales_DimFormat]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [FK_FactDrumSales_DimDrum]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [FK_FactDrumSales_DimDistributor]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [FK_FactDrumSales_DimDesign]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [FK_FactDrumSales_DimDate]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [FK_FactDrumSales_DimClient]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [FK_FactDrumSales_DimAccessory]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_TransportFeesUSD]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_TransportCommissionUSD]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_SalesCommission]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_AccessorySalesAmountUSD]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_TotalSalesAmountUSD]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_TransportFeesCanadaPostCND]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_TransportFees]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_TransportCommissionCND]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_SalesCommissionCND]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_AccessoriesAmountCND]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_AmountCND]
GO

ALTER TABLE [dbo].[FactDrumSales] DROP CONSTRAINT [DF_FactDrumSales_Quantity]
GO

/****** Object:  Table [dbo].[FactDrumSales]    Script Date: 11/1/2018 1:12:47 PM ******/
DROP TABLE [dbo].[FactDrumSales]
GO

/****** Object:  Table [dbo].[FactDrumSales]    Script Date: 11/1/2018 1:12:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactDrumSales](
	[Id]							[bigint] IDENTITY(1,1)	NOT NULL,
	[DistributorKey]				[bigint]				NOT NULL,
	[ClientKey]						[bigint]				NOT NULL,
	[DrumKey]						[bigint]				NOT NULL,
	[FormatKey]						[bigint]				NOT NULL,
	[AccessoryKey]					[bigint]				NOT NULL,
	[DesignKey]						[bigint]				NOT NULL,
	[DateKey]						[bigint]				NOT NULL,
	[RegionKey]						[bigint]				NOT NULL,
	[Quantity]						[bigint]				NOT NULL,
	[TotalSalesAmountCND]			[decimal](18, 2)		NOT NULL,
	[AccessorySalesAmountCND]		[decimal](18, 2)		NOT NULL,
	[SalesCommissionCND]			[decimal](18, 2)		NOT NULL,
	[TransportCommissionCND]		[decimal](18, 2)		NOT NULL,
	[TransportFeesCND]				[decimal](18, 2)		NOT NULL,
	[TransportFeesCanadaPostCND]	[decimal](18, 2)		NOT NULL,
	[ChangeRate]					[decimal](2, 2)			NOT NULL,
	[TotalSalesAmountUSD]			[decimal](18, 2)		NOT NULL,
	[AccessorySalesAmountUSD]		[decimal](18, 2)		NOT NULL,
	[SalesCommissionUSD]			[decimal](18, 2)		NOT NULL,
	[TransportCommissionUSD]		[decimal](18, 2)		NOT NULL,
	[TransportFeesUSD]				[decimal](18, 2)		NOT NULL,
 CONSTRAINT [PK_FactDrumSales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_Quantity]						DEFAULT ((1)) FOR [Quantity]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_AmountCND]					DEFAULT ((1)) FOR [TotalSalesAmountCND]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_AccessoriesAmountCND]			DEFAULT ((1)) FOR [AccessorySalesAmountCND]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_SalesCommissionCND]			DEFAULT ((1)) FOR [SalesCommissionCND]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_TransportCommissionCND]		DEFAULT ((1)) FOR [TransportCommissionCND]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_TransportFees]				DEFAULT ((1)) FOR [TransportFeesCND]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_TransportFeesCanadaPostCND]	DEFAULT ((1)) FOR [TransportFeesCanadaPostCND]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_TotalSalesAmountUSD]			DEFAULT ((1)) FOR [TotalSalesAmountUSD]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_AccessorySalesAmountUSD]		DEFAULT ((1)) FOR [AccessorySalesAmountUSD]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_SalesCommission]				DEFAULT ((1)) FOR [SalesCommissionUSD]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_TransportCommissionUSD]		DEFAULT ((1)) FOR [TransportCommissionUSD]
GO

ALTER TABLE [dbo].[FactDrumSales]
ADD  CONSTRAINT [DF_FactDrumSales_TransportFeesUSD]				DEFAULT ((1)) FOR [TransportFeesUSD]
GO

ALTER TABLE [dbo].[FactDrumSales]  WITH CHECK ADD
CONSTRAINT [FK_FactDrumSales_DimAccessory]
FOREIGN KEY([DistributorKey])		REFERENCES [dbo].[DimAccessory] ([Id])
GO

ALTER TABLE [dbo].[FactDrumSales] CHECK
CONSTRAINT [FK_FactDrumSales_DimAccessory]
GO

ALTER TABLE [dbo].[FactDrumSales]  WITH CHECK ADD
CONSTRAINT [FK_FactDrumSales_DimClient]
FOREIGN KEY([ClientKey])			REFERENCES [dbo].[DimClient] ([Id])
GO

ALTER TABLE [dbo].[FactDrumSales] CHECK
CONSTRAINT [FK_FactDrumSales_DimClient]
GO

ALTER TABLE [dbo].[FactDrumSales]  WITH CHECK ADD
CONSTRAINT [FK_FactDrumSales_DimDate]
FOREIGN KEY([DateKey])				REFERENCES [dbo].[DimDate] ([Id])
GO

ALTER TABLE [dbo].[FactDrumSales] CHECK
CONSTRAINT [FK_FactDrumSales_DimDate]
GO

ALTER TABLE [dbo].[FactDrumSales]  WITH CHECK ADD
CONSTRAINT [FK_FactDrumSales_DimDesign]
FOREIGN KEY([DesignKey])			REFERENCES [dbo].[DimDesign] ([Id])
GO

ALTER TABLE [dbo].[FactDrumSales] CHECK
CONSTRAINT [FK_FactDrumSales_DimDesign]
GO

ALTER TABLE [dbo].[FactDrumSales]  WITH CHECK ADD
CONSTRAINT [FK_FactDrumSales_DimDistributor]
FOREIGN KEY([DistributorKey])		REFERENCES [dbo].[DimDistributor] ([Id])
GO

ALTER TABLE [dbo].[FactDrumSales] CHECK
CONSTRAINT [FK_FactDrumSales_DimDistributor]
GO

ALTER TABLE [dbo].[FactDrumSales]  WITH CHECK ADD
CONSTRAINT [FK_FactDrumSales_DimDrum]
FOREIGN KEY([DrumKey])				REFERENCES [dbo].[DimDrum] ([Id])
GO

ALTER TABLE [dbo].[FactDrumSales] CHECK
CONSTRAINT [FK_FactDrumSales_DimDrum]
GO

ALTER TABLE [dbo].[FactDrumSales]  WITH CHECK ADD
CONSTRAINT [FK_FactDrumSales_DimFormat]
FOREIGN KEY([FormatKey])			REFERENCES [dbo].[DimFormat] ([Id])
GO

ALTER TABLE [dbo].[FactDrumSales] CHECK
CONSTRAINT [FK_FactDrumSales_DimFormat]
GO

ALTER TABLE [dbo].[FactDrumSales]  WITH CHECK ADD
CONSTRAINT [FK_FactDrumSales_DimRegion]
FOREIGN KEY([RegionKey])			REFERENCES [dbo].[DimRegion] ([Id])
GO

ALTER TABLE [dbo].[FactDrumSales] CHECK
CONSTRAINT [FK_FactDrumSales_DimRegion]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Id' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Distributor Key' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'DistributorKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Client Key' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'ClientKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Drum Key' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'DrumKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Format Key' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'FormatKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Accessory Key' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'AccessoryKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Design Key' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'DesignKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Date Key' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'DateKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Region Key' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'RegionKey'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales Quantity' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'Quantity'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Total Sales Amount in CND' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TotalSalesAmountCND'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Accessory Sales Amount CND' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'AccessorySalesAmountCND'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Sales Commission CND' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'SalesCommissionCND'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Transport Commission CND' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportCommissionCND'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Transport Fees CND' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportFeesCND'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Transport Fees Canada Post CND' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportFeesCanadaPostCND'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Change Rate' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'ChangeRate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Total Sales Amount USD' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TotalSalesAmountUSD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Accessory Sales Amount USD' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'AccessorySalesAmountUSD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Sales Commission USD' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'SalesCommissionUSD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Transport Commission USD' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportCommissionUSD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales-Transport Fees USD' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'COLUMN',@level2name=N'TransportFeesUSD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fact Drum Sales' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK to FactDrumSales from DimAccessory' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	@level2type=N'CONSTRAINT',@level2name=N'FK_FactDrumSales_DimAccessory'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FK to FactDrumSales from DimRegion' ,
	@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactDrumSales',
	level2type=N'CONSTRAINT',@level2name=N'FK_FactDrumSales_DimRegion'
GO

