

SELECT *
FROM [3_VideoGame]


-- Part 1

SELECT
	title,
	release_date,
	DATEDIFF(day, release_date, '2024-01-01') AS ReleasedDay,
	DATEDIFF(month, release_date, '2024-01-01') AS ReleasedMonth,
	DATEDIFF(year, release_date, '2024-01-01') AS ReleasedYear,
	total_sales
FROM [3_VideoGame]
ORDER BY 1


-- Part 2

SELECT title, critic_score
FROM [3_VideoGame]
WHERE title like 'GT%'
ORDER BY 1


-- Part 3

SELECT console, COUNT(console) AS CountConsole
FROM [3_VideoGame]
	GROUP BY console


-- Part 4

SELECT genre, COUNT(genre) AS CountGenre
FROM [3_VideoGame]
	GROUP BY genre


-- Part 5

SELECT developer, COUNT(developer) AS CountDeveloper
FROM [3_VideoGame]
	GROUP BY developer
-- WHERE developer is null
ORDER BY 1

SELECT developer, genre, COUNT(genre) AS CreatedGenre
FROM [3_VideoGame]
	WHERE developer like 'Epic Games'
	GROUP BY developer, genre
ORDER BY 2


-- Part 6

SELECT publisher, COUNT(publisher) AS CountPubliser
FROM [3_VideoGame]
GROUP BY publisher

SELECT publisher, genre, COUNT(genre) AS CreatedGenre
FROM [3_VideoGame]
	WHERE developer like 'Activ%'
	GROUP BY publisher, genre
ORDER BY 2

