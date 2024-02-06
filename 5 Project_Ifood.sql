

SELECT *
FROM [6_Ifood]



-- Display income customers/year

SELECT
	Income
FROM [6_Ifood]
ORDER BY 1 DESC


-- Display Influential Variables, when your product is meat

SELECT
	Income,
	MntWines,
	MntFruits,
	MntFishProducts,
	MntSweetProducts
FROM [6_Ifood]
ORDER BY 1 DESC


-- Display the frequency of payment methods

SELECT
	MntMeatProducts,
	NumCatalogPurchases,
	NumStorePurchases
FROM [6_Ifood]
ORDER BY 1 DESC


-- Showing all data that we are to be using, when your product is meat

SELECT 
	MntMeatProducts,
	Income,
	MntWines,
	MntFruits,
	MntFishProducts,
	MntSweetProducts,
	NumCatalogPurchases,
	NumStorePurchases
FROM [6_Ifood]
ORDER BY 1 DESC