# Support System db
This is the database of the Support System 

# Prerequisite
1. maven
2. docker (optional)
3. docker-compose (optional)

# How to use
1. bring up the mysql (8.0.21) docker
```
docker-compose up
```
or build the mysql database with `sql-scripts/create_dbs.sql`

2. build the project
```
mvn clean install
```
