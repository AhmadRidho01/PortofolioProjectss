

SELECT *
FROM [4_GoodReads]


-- Goodreads Books

SELECT
	Book,
	[Publication Date],
	Author,
	SUBSTRING([Publication Date], LEN([Publication Date]) -15, 10) AS MonthPublished,
	SUBSTRING([Publication Date], LEN([Publication Date]) -4, 5) AS YearPublished
FROM [4_GoodReads]
GROUP BY Book, Author, [Publication Date]
ORDER BY YearPublished ASC

-- DELETE FROM [4_GoodReads] WHERE [Publication Date] BETWEEN 1 AND 26;


-- Series and Volume Books

SELECT
	Book,
	Series,
	[Release number]
FROM [4_GoodReads]
ORDER BY 1


-- Books Information

SELECT
	Book,
	Genres,
	Description
FROM [4_GoodReads]
	WHERE Genres like '%His%'
ORDER BY 1





-- TOP 10 Goodreads Book by Rating in 1980's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%198%'
ORDER BY Rating DESC


-- TOP 10 Goodreads Book by Number of Voters in 1980's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%198%'
ORDER BY [Number of voters] DESC



-- TOP 10 Goodreads Book by Rating in 1990's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%199%'
ORDER BY Rating DESC


-- TOP 10 Goodreads Book by Number of Voters in 1990's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%199%'
ORDER BY [Number of voters] DESC



-- TOP 10 Goodreads Book by Rating in 2000's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%200%'
ORDER BY Rating DESC


-- TOP 10 Goodreads Book by Number of Voters in 2000's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%200%'
ORDER BY [Number of voters] DESC



-- TOP 10 Goodreads Book by Rating in 2010's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%201%'
ORDER BY Rating DESC


-- TOP 10 Goodreads Book by Number of Voters in 2010's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%201%'
ORDER BY [Number of voters] DESC



-- TOP 10 Goodreads Book by Rating in 2020's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%202%'
ORDER BY Rating DESC


-- TOP 10 Goodreads Book by Number of Voters in 2020's

SELECT TOP 10
	Book,
	[Publication Date],
	Rating,
	[Number of voters]
FROM [4_GoodReads]
	WHERE [Publication Date] like '%202%'
ORDER BY [Number of voters] DESC
