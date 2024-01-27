

SELECT *
FROM CovidDeaths

-- Select Data that we are going to be Using

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM CovidDeaths
ORDER BY 1



-- Total Cases vs Total Deaths

SELECT location, population, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM CovidDeaths
ORDER BY DeathPercentage DESC



-- Total Cases vs Population

SELECT location, population, total_cases, total_deaths, (total_cases/population)*100 as PercentPopulationInfected
FROM CovidDeaths
ORDER BY PercentPopulationInfected DESC



-- Countries with highest infection rate compared to population

SELECT location, population, MAX(total_cases) AS HighestInfectionCount, MAX((total_cases/population))*100 as PercentPopulationInfected
FROM CovidDeaths
GROUP BY location, population
ORDER BY PercentPopulationInfected DESC



-- Countries with highest death count per population

SELECT location, population, MAX(cast(total_deaths AS int)) AS TotalDeathCount
FROM CovidDeaths
GROUP BY location, population
ORDER BY TotalDeathCount DESC



-- Continents with the highest death count per population

SELECT continent, population, MAX(cast(total_deaths AS int)) AS TotalDeathCount
FROM CovidDeaths
WHERE continent is not null
GROUP BY continent, population
ORDER BY TotalDeathCount DESC



-- Global Number

SELECT SUM(new_cases) AS TotalCases, SUM(CAST(new_deaths AS int)) AS TotalDeaths, SUM(CAST(new_deaths AS int))/SUM(new_cases) AS DeathPercentage
FROM CovidDeaths
WHERE continent is not null
ORDER BY DeathPercentage DESC



-- Total PoPulation vs Vaccination

SELECT 
	dea.continent,
	dea.location,
	dea.date,
	dea.population,
	vac.new_vaccinations,
	SUM(CAST(vac.new_vaccinations AS INT)) OVER (Partition by dea.location Order by dea.location, dea.date) as RollingPeopleVaccinated
FROM CovidDeaths dea

JOIN CovidVaccinations vac
ON dea.location = vac.location
AND dea.date = vac.date

WHERE dea.continent is not null
ORDER BY continent, location