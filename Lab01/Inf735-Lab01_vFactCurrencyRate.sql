CREATE VIEW vFactCurrencyRate AS
SELECT f.CurrencyKey, CurrencyAlternateKey, CurrencyName, FullDateAlternateKey,
	f.TimeKey, AverageRate, EndOfDayRate, InsertDate
FROM FactCurrencyRate f
JOIN DimCurrency c ON (c.CurrencyKey = f.CurrencyKey)
JOIN DimTime t ON (t.TimeKey = f.TimeKey)