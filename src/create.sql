DROP TABLE IF EXISTS country CASCADE;
DROP TABLE IF EXISTS country_metrics CASCADE;
DROP TABLE IF EXISTS ozone_hole CASCADE;
DROP TABLE IF EXISTS substance CASCADE;
DROP TABLE IF EXISTS substance_metrics CASCADE;

CREATE TABLE country
(
    code       CHAR(3) PRIMARY KEY,
    name       VARCHAR UNIQUE NOT NULL,
    population INTEGER        NOT NULL,
    area       INTEGER        NOT NULL,
    density    INTEGER        NOT NULL
);

CREATE TABLE country_metrics
(
    country         CHAR(3) REFERENCES country (code) ON DELETE CASCADE,
    year            INTEGER NOT NULL,
    emissions       FLOAT,
    avg_temperature FLOAT,
    max_temperature FLOAT,
    min_temperature FLOAT,
    pm25            FLOAT,
    pm10            FLOAT,
    no2             FLOAT,
    total_deaths    FLOAT,
    indoor_deaths   FLOAT,
    outdoor_deaths  FLOAT,
    ozone_deaths    FLOAT
);

CREATE TABLE ozone_hole
(
    year    INTEGER PRIMARY KEY,
    area    INTEGER NOT NULL,
    minimum FLOAT NOT NULL
);

CREATE TABLE substance
(
    code CHAR(5) PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE substance_metrics
(
    substance CHAR(5) REFERENCES substance (code) ON DELETE CASCADE,
    year      INTEGER NOT NULL,
    value     FLOAT   NOT NULL
);