-- Continents
CREATE TABLE continents (
                            id SERIAL PRIMARY KEY,
                            name VARCHAR(100) NOT NULL
);

-- Countries
CREATE TABLE countries (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(100) NOT NULL,
                           continent_id INT REFERENCES continents(id),
                           population BIGINT,
                           area DOUBLE PRECISION
);

-- People
CREATE TABLE people (
                        id SERIAL PRIMARY KEY,
                        name VARCHAR(100),
                        age INT
);

-- Citizenship (Many-to-Many)
CREATE TABLE person_country (
                                person_id INT REFERENCES people(id),
                                country_id INT REFERENCES countries(id),
                                PRIMARY KEY (person_id, country_id)
);