12 Person with biggest number of citizenships
SELECT p.id, p.name, COUNT(pc.country_id) AS citizenship_count
FROM people p
         JOIN person_country pc
              ON p.id = pc.person_id
GROUP BY p.id, p.name
ORDER BY citizenship_count DESC
    LIMIT 1;

13 People with no citizenship
SELECT p.id, p.name
FROM people p
         LEFT JOIN person_country pc
                   ON p.id = pc.person_id
WHERE pc.country_id IS NULL;

14 Country with least people
SELECT c.name
FROM countries c
         LEFT JOIN person_country pc
                   ON c.id = pc.country_id
GROUP BY c.name
ORDER BY COUNT(pc.person_id)
    LIMIT 1;

15 Continent with most people
SELECT con.name
FROM continents con
         JOIN countries co ON con.id = co.continent_id
         JOIN person_country pc ON co.id = pc.country_id
GROUP BY con.name
ORDER BY COUNT(pc.person_id) DESC
    LIMIT 1;


16 Pairs of people with same name
SELECT p1.id AS person1_id,
       p2.id AS person2_id,
       p1.name
FROM people p1
         JOIN people p2
              ON p1.name = p2.name
                  AND p1.id < p2.id;

