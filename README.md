# README

This is my first rails project and I built it in 3 days

*this is still a work in progres*

This is a basic image directory. You can
* Upload images
* Have an image feed
* Delete images
* Title images
* Go to an image page

## Setup

* Ruby version
  `2.7.0 `

* System dependencies
  * PostgreSQL
  * A working computer

* Configuration
  In `<MAIN>/config/database.yml`
  edit 
  ```
  development:
    <<: *default
    database: <development db name>
    host: <development db url>
    port: <development db port>

  .
  .
  .

  test:
    <<: *default
    database: <testing db name>
    host: <testing db url>
    port: <testing db port>
  ```
  replace `<something>` to be what the variable asks, including the `<>`

* Database creation
  `rails db:setup`

* Database initialization
  `rails db:migrate`

* How to run the test suite
  `rails test`
