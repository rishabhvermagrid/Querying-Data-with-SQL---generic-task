Querying Data with SQL

Practical task:

Create a ticket on the board for tasks (should be 2 tickets) described below, estimate them after you reviewed the requirements.


For the sake of this task we will put aside our capstone project for a while. In a new project / module:

Model the schema for storing Continents, Countries and People
Country belongs to a single continent, continent has many countries
Country has many people, one person can belong to multiple countries (have multiple citizenships)
Fill the created tables with data. Data can be randomly generated
Write SQL queries to find the following data about countries:
Country with the biggest population (id and name of the country)
Top 10 countries with the lowest population density (names of the countries)
Countries with population density higher than average across all countries
Country with the longest name (if several countries have name of the same length, show all of them)
All countries with name containing letter “F”, sorted in alphabetical order
Country which has a population, closest to the average population of all countries
Write SQL queries to find the following data about countries and continents:
Count of countries for each continent
Total area for each continent (print continent name and total area), sorted by area from biggest to smallest
Average population density per continent
For each continent, find a country with the smallest area (print continent name, country name and area)
Find all continents, which have average country population less than 20 million
Write SQL queries to find the following data about people
Person with the biggest number of citizenships
All people who have no citizenship
Country with the least people in People table
Continent with the most people in People table
Find pairs of people with the same name - print 2 ids and the name
