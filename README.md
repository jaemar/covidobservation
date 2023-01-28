# Covid Observation

### System Requirements
- Ubuntu OS
- Ruby 3.1.1
- Rails 7.0.4
- SQLite3
- Docker

### Instruction
- Install [Docker](https://www.docker.com/)
- Clone project
    ```console
    foo@bar:~$ git clone git@github.com:jaemar/covidobservation.git 
    ```
- Go to project folder
    ```console
    foo@bar:~$ cd covidobservation
    ```
- Build app docker image
    ```console
    foo@bar:~$ docker build -t covidobservation .
    ```
- Run docker image
    ```console
    foo@bar:~$ docker run -p 3000:3000 covidobservation
    ```
