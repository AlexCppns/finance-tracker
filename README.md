# Finance tracker

## Summary

[Work in progress]. This is a small rails application to keep track of various investments.

![ScreenShot](/screenshots/main.png)


![ScreenShot](/screenshots/charts.png)

Right now there is no admin interface to fill the data in. The seed.rb file can be edited though.


To do:

* [ ] Update readme section
* [x] Pull data from backend
* [x] Update seed file
* [ ] Write unit tests
* [ ] Build an admin interface with login

## Kickstart

Dependencies:
* postgres
* ruby 2.x

Installation:
* Build: `bundle`
* Setup database
  * edit database.yml with your postgres configuration
  * Create database: `rake db:create && rake db:migrate`
  * Seed demo data (optional): `rake db:seed`
* Start server: `rails s`
