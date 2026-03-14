1️⃣ Country with biggest population
SELECT id, name
FROM countries
ORDER BY population DESC
    LIMIT 1;


2️⃣ Top 10 countries with lowest population density
Population density = population / area

SELECT name
FROM countries
ORDER BY (population / area) ASC
    LIMIT 10;

3️⃣ Countries with density higher than average
SELECT name
FROM countries
WHERE (population / area) >
      (
          SELECT AVG(population / area)
          FROM countries
      );


4️⃣ Country with longest name
SELECT name
FROM countries
WHERE LENGTH(name) =
      (
          SELECT MAX(LENGTH(name))
          FROM countries
      );


5️⃣ Countries containing letter “F”
SELECT name
FROM countries
WHERE name ILIKE '%f%'
ORDER BY name;



6️⃣ Country with population closest to average
SELECT name
FROM countries
ORDER BY ABS(population - (SELECT AVG(population) FROM countries))
    LIMIT 1;