# Finance tracker

## Summary

This project is 'work in progress'.

To do:

* [ ] Update readme section
* [ ] Pull data from backend
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
