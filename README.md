# Covid Observation

### System dependencies
- Ruby 3.1.1
- Rails 7.0.4
- SQLite3
- Docker

### Instruction
- Install [Docker](https://www.docker.com/)
- Build app docker image
    ```console
    foo@bar:~$ docker build -t covidobservation .
    ```
- Run docker image
    ```console
    foo@bar:~$ docker run -p 3000:3000 covidobservation
    ```
