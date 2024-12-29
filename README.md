# Support System db
This is the database of the Support System project.

# Prerequisite
Ensure the following tools are installed:

1. maven
2. docker
3. docker-compose

# How to use
1. Bring up the PostgreSQL database with Docker:
    ``` bash
    docker-compose up -d
    ```

2. Build the project to apply Liquibase changes:
    ``` bash
    mvn clean install
    ```

## To Build a Fresh Database with Docker

1. Remove any existing data and rebuild the containers:
    ```bash
    rm -rf postgres-data
    docker-compose up --build --force-recreate -d
    ```

2. Rebuild the project and apply the Liquibase changes:
    ```bash
    mvn clean install
    ```

### Optional Clean-up
To stop the containers and remove volumes:
```bash
docker-compose down -v
```