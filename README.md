# Business Intelligence Homework

The focus of this work is to understand the impact of the air pollution both in the environment and in the people themselves. The data used has historical information about the controlled substances (such as CFGs) usage, CO2 emissions and air pollution level in different countries, and information about the deaths related to it, the earth temperature and ozone hole size. The goal is to assess if CO2 emissions have direct impact on those other things, through different types of data visualization.

## Results

The resulting report can be seen in the following link, with all conclusions taken from the data: [PowerBI Report](https://app.powerbi.com/view?r=eyJrIjoiM2I2ZmQxNTQtZDc0Yy00N2RkLThjNGEtODNiMTMxNWMyZGRkIiwidCI6IjZhMzU0OGFiLTc1NzAtNDI3MS05MWE4LTU4ZGEwMDY5NzAyOSIsImMiOjh9).

## Setup

This project was built using **Pentaho**, **Docker**, **Docker-compose**, **PostgreSQL**, **pgAdmin** and **Microsoft PowerBI**. Please make sure you have all properly installed to be able to run the project.

## Usage

From the root folder, run the following commands to initialize de PostgreSQL database and pgAdmin:

```
docker-compose build
docker-compose up
```

Access pgAdmin through the web at http://localhost:8080/ and login with the following credentials:
```
Email: postgres@bi.com
Password: postgresbi
```

Add the server with the following attributes:

```
Name: postgres
Host-name: postgres
Port: 5432
Username: postgres
Password: postgresbi
```

Open the desired job from the jobs folder in Pentaho and change the `PROJECT_PATH` environment variable inside the `Set Path` step to the path to this projects root folder.

Run the job in order to run all ETL tasks and get the final dataset.

Open `BI-report` and connect to the PostgreSQL database.
