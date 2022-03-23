# Rails Scheduling Assignment

The purpose of this assignment is to demonstrate competence in the concepts, process, and tooling required to develop web applications with Ruby on Rails. The end result will be a basic application that stores technicians and work orders in a database, displays them on a scheduling grid, and allows the user to select slots in the schedule.

## Versions

- Ruby Version 3.0.1
- Rails Version 6.1.4
- PostgreSQL Database

## Usage

```ruby
# create database and migrate
rails db:create db:migrate

#rake task for importing CSV files
bundle exec rake import:scheduler

#start server on http://localhost:3000/
rails s

```
## Description

Overall the assignment was very straightforward. The most time consuming part of it was trying to get the pop up to work with all blank cells, at the beginning I had the correct approach but then I complicated it more by trying to do it from scratch. I did encounter a problem where technician 4 had an overlapping time in location 4 and 5, but it didn't affect the application since it overlapped on the same hour and either or could of workwed. 

## Future Improvements

- Start and end shift time to create a full schedule. 
- Edit/Delete times/locations
- Better way to show available time between times so the user doesn't click on many cells without knowing. 
- Implement task to send reminders to Technicians/Clients
