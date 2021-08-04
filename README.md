# Aero-mirates
## How to start the database
### Start the Oracle database/server docker container
- Install docker if you don't have it
  - https://docs.docker.com/get-docker/
- Pull Oracle image for docker if you don't have it.  Note: This is the docker image we used for hw3
```
docker pull epiclabs/docker-oracle-xe-11g
```
- Launch an Oracle container
    ```
    docker run --name cs157a -dp 1521:1521 epiclabs/docker-oracle-xe-11g
    ```
  - The container name is your choice for local deployment, but it's `cs157a` in the command above
  - The port should be `1521` (default) for our application
  - For development, we use the default login/password for the epiclabs Oracle container, `System`/`oracle`
    - In the future, the password can be set via environment variable flag
      - `-e ORACLE_PASSWORD=cs157a`
- After launching the container, check if it started successfully via `docker ps`
```
> docker ps
CONTAINER ID   IMAGE                           COMMAND                  CREATED         STATUS         PORTS                                                 NAMES
f4bb25ffb011   epiclabs/docker-oracle-xe-11g   "/usr/sbin/startup.sh"   7 seconds ago   Up 4 seconds   0.0.0.0:1521->1521/tcp, :::1521->1521/tcp, 8080/tcp   cs157a
```
### Run the database setup scripts
There are many ways to run sql scripts against an oracle instance - use your favorite tool!
- To set prepare the database for our application, run these two scripts from the `DB` folder in this order.
1. `createTables.sql`
    - This file contains the DDL statements used to create our tables
2. `loadData.sql`
    - This file contains the DML statements to load our initial/default data into the database

### Teardown
- You can stop/delete the container when finished.
- A `drop.sql` file is also provided in the `DB` folder in case you want to keep the Oracle container running.

### How to run the database scripts from vscode
You can run the sql directly from within vscode using the steps below
- Run the sql scripts against the container using vscode and the Oracle Explorer extension
- Install vscode and Oracle Explorer extension
- Create a new database connection pointing to your oracle container
    - Hit `F1` and type in `Oracle: New Connection`
    - username=`system`
    - password=`cs157a` as specified in `docker run`, or default password `oracle`
        - If you ave the password now you won't need to type it for every sql file later
- For each sql file you edit, you need to "connect" to the database
    - Easiest way to do this is to open your sql file, hit `F1` and type in `Oracle: Connect`

- Open sql file, Ctrl+R or right click-> execute all

---

## How to launch the application
- The database container should be running and configured before starting the app server.  The application will connect to the database using the port and credentials described above.

### Download Tomcat v8.5 Server
- Visit https://tomcat.apache.org/download-80.cgi and download the zip. 
- Extract to your desired directory

### Run the TravelAgency web application using Eclipse
- Install Eclipse for Eclipse IDE for Java EE Developer
- Open Eclipse and navigate to the top right and click File > Import > Git > Projects from Git (with smart import) > Clone URI
    - Use the github repository link as the URl and fill out your github username and password in the Authentication box
    - Click Next > Click Next
    - In the Destination box change "Aero-Mirates" to "TravelAgency" in the directory path.
    - Click Next > Click Finish
    - In the top bar click Window > Show view > Server > Server to show server view
    - At the server window create a new server using tomcat v8.5 which will prompt you to add the tomcat v8.5 downloaded earlier. Press Finish.
    - Right click on the project and go to Properties > Project Facets > Runtime (tab on the right) and make sure the apache tomcat v8.5 server box is checked.
    - Navigate to the top bar and click Window > Web Browser > and choose your desired web browser (Chrome or firefox will work best)
- Your eclipse should now be ready to run the program. Simply navigate through the project TravelAgency/src/main/webapp/allJSPclasses and choose either login.jsp for user functionality or adminLogin.jsp for admin functionality. 
    - Press the green play button (Run) at the top and follow the prompts on the webpage. 
