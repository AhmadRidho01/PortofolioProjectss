

SELECT *
FROM [3_VideoGame]


-- Part 1

SELECT title, console
FROM [3_VideoGame]
ORDER BY 1


-- Part 2

SELECT title, genre, developer, publisher
FROM [3_VideoGame]
-- WHERE developer is null
ORDER BY 1


-- Part 3

SELECT title, critic_score
FROM [3_VideoGame]
-- WHERE critic_score is null
ORDER BY 1


-- Part 4

SELECT
	title,
	release_date,
	DATEDIFF(day, release_date, '2024-01-01') AS ReleasedDay,
	DATEDIFF(month, release_date, '2024-01-01') AS ReleasedMonth,
	DATEDIFF(year, release_date, '2024-01-01') AS ReleasedYear,
	total_sales
FROM [3_VideoGame]
ORDER BY 1