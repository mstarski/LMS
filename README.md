# Library Management System
Application that manages various bookstores by having a database with different books, authors, collections etc.
Written for learning purposes in Ruby on Rails web framework.

## Starting an app

To run an application
```shell
 $ make init && rails s
```
App should be up and running on localhost:3000

## Other options:

```shell
$ make reset #Completely resets the database (it will not be seeded again)
$ make seed #Seeds the database
$ make clean-db #Resets and seeds the database
$ make fonts #Downloads the fonts for the app
$ make clean #Deletes assets (fonts only right now)
```
