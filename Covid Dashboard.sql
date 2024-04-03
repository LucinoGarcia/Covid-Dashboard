

/*
-- cumulative 
SELECT
	SUM(new_cases) as total_cases, 
    SUM(CAST(IFNULL(new_deaths, 0) AS SIGNED)) as TotalDeathCount,
    (SUM(CAST(IFNULL(new_deaths, 0) AS SIGNED)) / SUM(new_cases)*100) as DeathPercentage
FROM 
	CovidData.`allcoviddata`
WHERE
	continent is not null 
ORDER BY
	1,2
*/


/*
SELECT 
	continent,
	SUM(CAST(IFNULL(new_deaths, 0) AS SIGNED)) as TotalDeathCount
FROM 
	CovidData.`allcoviddata`
WHERE
    TRIM(continent) <> '' 
    AND location NOT IN ('World', 'European Union', 'International')
GROUP BY
	continent
ORDER BY
	TotalDeathCount desc
*/


/*
SELECT
    Location,
    Population,
    MAX(total_cases) AS HighestInfectionCount,
    MAX((total_cases / Population)) * 100 AS PercentPopulationInfected
FROM
    CovidData.`allcoviddata`
GROUP BY
    Location,
    Population
ORDER BY
    PercentPopulationInfected DESC;
*/


SELECT
    Location,
    Population,
    date,
    MAX(total_cases) AS HighestInfectionCount,
    MAX((total_cases / Population)) * 100 AS PercentPopulationInfected
FROM
    CovidData.`allcoviddata`
GROUP BY
    Location,
    Population,
    date
ORDER BY
    PercentPopulationInfected DESC;

