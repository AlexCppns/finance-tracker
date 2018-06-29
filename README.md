# Finance tracker

## Summary

[Work in progress]. This is a small rails application to keep track of various investments.

![ScreenShot](/screenshots/main.png)


![ScreenShot](/screenshots/charts.png)

Right now there is no admin interface to fill the data in. The seed.rb file can be edited though.


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

## Contribute

Please refer to each project's style guidelines and guidelines for submitting patches and additions. In general, we follow the "fork-and-pull" Git workflow.

Fork the repo on GitHub
Clone the project to your own machine
Commit changes to your own branch
Push your work back up to your fork
Submit a Pull request so that we can review your changes
NOTE: Be sure to merge the latest from "upstream" before making a pull request!

Currently need to complete the following:

* [ ] Update readme section
* [ ] Write unit tests
* [ ] Build an admin interface with login
