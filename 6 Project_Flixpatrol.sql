

SELECT *
FROM [7_Flixpatrol]



--

SELECT 
	Genre,
	Type,
	[Watchtime in Million]
FROM [7_Flixpatrol]
ORDER BY [Watchtime in Million] DESC



-- Showing The most watchtime TV Show Film 2020's

SELECT 
	Type,
	COUNT(Type) AS CountType
FROM [7_Flixpatrol]
GROUP BY Type

SELECT 
	Title,
	Type,
	Premiere,
	[Watchtime in Million]
FROM [7_Flixpatrol]
WHERE Type like 'TV%'
AND Premiere like '202%'
ORDER BY [Watchtime in Million] DESC



-- Showing The most watchtime Movie Film 2020's

SELECT 
	Title,
	Type,
	Premiere,
	[Watchtime in Million]
FROM [7_Flixpatrol]
WHERE Type like 'Mov%'
AND Premiere like '202%'
ORDER BY [Watchtime in Million] DESC