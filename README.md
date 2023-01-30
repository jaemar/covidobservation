# Covid Observation

### System Requirements
- Ubuntu OS
- Ruby 3.1.1
- Rails 7.0.4
- SQLite3
- Docker

### Instruction
- Clone project
   ```console
    foo@bar:~$ git clone git@github.com:jaemar/covidobservation.git 
  ```
- Go to project folder
   ```console
    foo@bar:~$ cd covidobservation
  ```
#### Using Docker

- Install [Docker](https://www.docker.com/)
- Build app docker image
   ```console
    foo@bar:~$ docker build -t covidobservation .
  ```
- Run docker image
   ```console
    foo@bar:~$ docker run -p 3000:3000 covidobservation
  ```

#### Using Rails
- Install Gems via **bundle install**
   ```console
    foo@bar:~$ bundle install
  ```
- Migrate database
   ```console
    foo@bar:~$ rails db:migrate
  ```
- Run rails server
   ```console
    foo@bar:~$ rails s
  ```

#### Running Rspec
- Migrate database
   ```console
    foo@bar:~$ rails db:migrate RAILS_ENV=test
  ```
- Run rails server
   ```console
    foo@bar:~$ rspec
  ```
