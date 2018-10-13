CREATE VIEW vFactVentesInternet
AS
SELECT	NomProduit = CASE ISNULL (p.FrenchProductName, '')
			WHEN '' THEN p.EnglishProductName
			ELSE p.FrenchProductName END,
		sc.FrenchProductSubcategoryName SubCatégorie,
		c.FrenchProductCategoryName Catégorie,
		p.Color Couleur,
		p.ProductLine LigneProduit,
		p.DealerPrice PrixMarchand,
		ot.CalendarYear AnnéeCommande,
		ot.CalendarQuarter TrimestreCommande,
		ot.FrenchMonthName NomMoisCommande,
		ot.DayNumberOfMonth JourCommande,
		ot.MonthNumberOfYear MoisCommande,
		ot.FrenchDayNameOfWeek NomJourCommande,
		ot.FullDateAlternateKey DateCommande,
		st.CalendarYear AnnéeLivraison,
		st.CalendarQuarter TrimestreLivraison,
		st.FrenchMonthName NomMoisLivraison,
		st.DayNumberOfMonth JourLivraison,
		st.MonthNumberOfYear MoisLivraison,
		st.FrenchDayNameOfWeek NomJourCLivraison,
		st.FullDateAlternateKey DateLivraison,
		cust.LastName + ', ' + cust.FirstName NomClient,
		ÉtatCivil = CASE cust.MaritalStatus
			WHEN 'S' THEN 'Célibataire'
			WHEN 'M' THEN 'Marié(e)'
			ELSE 'Autre' END,
		Sexe = CASE cust.Gender
			WHEN 'M' THEN 'Homme'
			WHEN 'F' THEN 'Femme' END,
		YEAR (getdate() - convert(datetime,cust.BirthDate)) - 1900 Âge,
		cust.FrenchEducation Éducation,
		YearlyIncome RevenuAnnuel,
		TotalChildren NombreEnfants,
		YEAR (getdate() - convert(datetime,cust.DateFirstPurchase)) - 1900 
					AnciennetéClient,
		geocust.FrenchCountryRegionName Pays,
		geocust.StateProvinceName Province,
		geocust.City Ville,
		terr.SalesTerritoryGroup TerritoireVentes,
		Promotion = CASE ISNULL (prom.FrenchPromotionType, '')
			WHEN '' THEN prom.EnglishPromotionType
			ELSE prom.FrenchPromotionType END,
		UnitPrice PrixUnitaire,
		OrderQuantity QuantitéVendue,
		SalesAmount MontantVente,
		TotalProductCost CoûtTotalProduit,
		TaxAmt MontantTaxes,
		Freight CoûtLivraison
FROM	FactInternetSales f
JOIN	DimProduct p ON (p.ProductKey = f.ProductKey)
JOIN	DimDate ot ON (ot.DateKey = f.OrderDateKey)
JOIN	DimProductSubcategory sc ON (sc.ProductSubcategoryKey = 
						p.ProductSubcategoryKey) 
JOIN	DimProductCategory c ON (c.ProductCategoryKey = sc.ProductCategoryKey)
JOIN	DimDate st ON (st.DateKey = f.ShipDateKey)
JOIN	DimCustomer cust ON (cust.CustomerKey = f.CustomerKey)
JOIN	DimGeography geocust ON (geocust.GeographyKey = cust.GeographyKey)
JOIN	DimSalesTerritory terr ON (terr.SalesTerritoryKey = 
						f.SalesTerritoryKey)
JOIN	DimPromotion prom ON (prom.PromotionKey = f.PromotionKey)

