7️⃣ Count countries per continent
SELECT c.name, COUNT(ct.id) AS country_count
FROM continents c
         LEFT JOIN countries ct
                   ON c.id = ct.continent_id
GROUP BY c.name;



8️⃣ Total area per continent
SELECT c.name, SUM(ct.area) AS total_area
FROM continents c
         JOIN countries ct
              ON c.id = ct.continent_id
GROUP BY c.name
ORDER BY total_area DESC;


9️⃣ Average population density per continent
SELECT c.name,
       AVG(ct.population / ct.area) AS avg_density
FROM continents c
         JOIN countries ct
              ON c.id = ct.continent_id
GROUP BY c.name;


10 Smallest country by area per continent
SELECT con.name AS continent,
       co.name AS country,
       co.area
FROM continents con
         JOIN countries co
              ON con.id = co.continent_id
WHERE co.area =
      (
          SELECT MIN(area)
          FROM countries
          WHERE continent_id = con.id

        );

11 Continents with average country population < 20M
SELECT con.name
FROM continents con
         JOIN countries co
              ON con.id = co.continent_id
GROUP BY con.name
HAVING AVG(co.population) < 20000000;

