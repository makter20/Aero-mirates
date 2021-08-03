# Aero-mirates

## How to start the database
### Start the Oracle database/server docker container
- Install docker if you don't have it
  - https://docs.docker.com/get-docker/
- Pull Oracle image for docker if you don't have it.  Note: This is the docker image we used for hw3
```
docker pull epiclabs/docker-oracle-xe-11g
```
- Launch Oracle container (name=`cs157a`, password=`cs157a`)
```
docker run --name cs157a -dp 1521:1521 -e ORACLE_PASSWORD=cs157a epiclabs/docker-oracle-xe-11g
```
- Make sure the container is running
```
> docker ps
CONTAINER ID   IMAGE                           COMMAND                  CREATED         STATUS         PORTS                                                 NAMES
f4bb25ffb011   epiclabs/docker-oracle-xe-11g   "/usr/sbin/startup.sh"   7 seconds ago   Up 4 seconds   0.0.0.0:1521->1521/tcp, :::1521->1521/tcp, 8080/tcp   cs157a
```
### Run the database setup scripts
- createTables.sql
    - This file contains the DDL statements used to create our tables
- loadData.sql
    - This file contains the DML statements to load our initial/default data into the database

## How to execute sql scripts using vscode and the Oracle Explorer extension
- Install vscode and Oracle Explorer extension
- Create a new database connection pointing to your oracle container
    - Hit `F1` and type in `Oracle: New Connection`
    - username=`system`
    - password=`cs157a` as specified in `docker run`, or default password `oracle`
        - If you ave the password now you won't need to type it for every sql file later
- For each sql file you edit, you need to "connect" to the database
    - Easiest way to do this is to open your sql file, hit `F1` and type in `Oracle: Connect`

- Open sql file, Ctrl+R or right click-> execute all
