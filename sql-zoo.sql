-- This is a comment in sql code
-- SELECT basics 
--1
SELECT population FROM world
WHERE name = 'germany'
--2
SELECT name, population FROM world
WHERE name IN ('sweden', 'norway', 'denmark')
--3
SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000
--SELECT name
--1
SELECT name FROM world
  WHERE name LIKE 'y%'
--2
SELECT name FROM world
  WHERE name LIKE '%y'
--3
SELECT name FROM world
  WHERE name LIKE '%x%'
--4
SELECT name FROM world
  WHERE name LIKE '%land'
--5
SELECT name FROM world
  WHERE name LIKE 'c%ia'
--6
SELECT name FROM world
  WHERE name LIKE '%oo%'
--7
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'
--8
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name
--9
SELECT name FROM world
 WHERE name LIKE '%o__o%'
--10
SELECT name FROM world
 WHERE LENGTH(name) = 4
--11
SELECT name
  FROM world
 WHERE name LIKE capital
--12
SELECT name
  FROM world
 WHERE capital = concat(name, ' City')
--13
SELECT capital, name FROM world
WHERE capital LIKE concat(name, '%')
--14
SELECT capital, name FROM world
WHERE capital LIKE concat(name, '%') AND name <> capital
--15
SELECT name, REPLACE(capital, name, '') FROM world
WHERE capital LIKE concat(name, '%') AND name <> capital

--SELECT from WORLD tutorial
--1
SELECT name, continent, population FROM world
--2
SELECT name FROM world WHERE population > 200000000
--3
SELECT name, gdp/population FROM world
WHERE gdp/population > 200000000
--4 
SELECT name, population/1000000 FROM world
WHERE continent = 'south america'
--5
SELECT name, population FROM world
WHERE name IN ('france', 'germany', 'italy')
--6
SELECT name FROM world
WHERE name LIKE 'united%'
--7
SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000
--8
SELECT name, population, area FROM world
WHERE area > 3000000 XOR population > 250000000
--9
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world
WHERE continent = 'south america'
--10
SELECT name, ROUND(gdp/population, -3) FROM world
WHERE gdp > 1000000000000
--11
SELECT name, capital FROM world
 WHERE LENGTH(name) = LENGTH(capital)
 --12
 SELECT name, capital FROM world 
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital
--13
SELECT name
   FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%'
  AND name NOT LIKE '% %'


