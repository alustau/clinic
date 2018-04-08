Clinic 
=============

Clinic is a simple project with goal to practice ruby on rails

## Table of Contents
- [Features](#features)
- [Required](#required)
- [Installation](#installation)

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
2- Enter in project folder.
```shell
$ cd clinic
```
3- Build the Dockerfile:
```shell
$ docker-compose build
```
4- Create database
```shell
$ docker-compose run web rake db:create
```
5- Run migration
```shell
$ docker-compose run web rake db:migrate
```
6- Start up the server
```shell
$ docker-compose up
```
http://0.0.0.0:3000

