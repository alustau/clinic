Clinic 
=============

Clinic is a simple project with goal to practice ruby on rails

## Table of Contents
- [Features](#features)
- [Required](#required)
- [Installation](#installation)
- [Testing](#testing)

## Features

* Create a Doctor
* List all Doctors
* Update a Doctor
* Remove a Doctor

## Required

* Docker
* Docker Compose

## Installation

1- Clone this project running this:
```shell
$ git clone https://github.com/alustau/clinic.git 
```
2- Enter in project folder:
```shell
$ cd clinic
```
3- Build the Dockerfile:
```shell
$ docker-compose build
```
4- Boot the app:
```shell
$ docker-compose up
```
5- In another terminal, create database:
```shell
$ docker-compose run web rake db:create
```
6- Run migrations
```shell
$ docker-compose run web rake db:migrate
```

8- Go to http://0.0.0.0:3000

## Testing

To run unit test of app, run this command:
```shell
$ docker-compose run web rake test
```
