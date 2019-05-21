# TheBigOne

<h3>How to run project:</h3>

1. Prerequisites
    * Openjdk 11 (e.g. sudo apt install openjdk-11-jdk)
    * Maven (e.g. sudo apt install maven)
    * Docker - container platform (e.g. sudo apt install docker)
2. Build project via Maven
    * `mvn clean` then `mvn install`
3. Build and start docker container
    * `sudo docker-compose -f docker-compose.yml up --build`

<hr/>
Your site will be hosted on: <b>localhost:8080</b><br/>
and postgresql server on: <b>localhost:5432</b><br/>