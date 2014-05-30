# GigHub

### GA WDI DC April 2014, Project 1

### Overview

**GigHub** is an application for aggregating, listing and tracking concerts. GigHub was developed as an initial Rails individual project for the April 2014 Web Development Immersive course at General Assembly DC. It was developed over a four day sprint to model the agile software development process.

### Technologies Used

* Ruby 2.1.1
* Rails 4.1.1
* PostgreSQL 9.3.4
* Hand-rolled authentication using [bcrypt-ruby](http://bcrypt-ruby.rubyforge.org/)
* [SeatGeek API](http://platform.seatgeek.com/), [Spotify search API](https://developer.spotify.com/technologies/web-api/search/), and [HTTParty](https://github.com/jnunemaker/httparty)
* Testing using [rspec-rails](https://github.com/rspec/rspec-rails), [capybara](https://github.com/jnicklas/capybara), [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) and [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)

### User Stories Completed

* As an admin, I want to be able to run a database update from the SeatGeek API or automate it to keep the events listing current.
* As a user I can see the homepage so I can navigate events.
* As a user, I want to sign up with an email and password, so my account is secure. Only I can see my saved concerts.
* As a user, I want to sign in and out to keep my favorite events private.
* As a user, I want to filter/sort by venue so I can look at the schedule for one venue.
* As a user, I want to see the events grouped by date on the homepage, so I can clearly see what's happening each day and make a decision.
* As a user, I want to save events to my account so I can keep track of them.
* As a user, I want to see a picture of the performer for added recognition.
* As a user, I want to be able to listen to some songs to decide whether I want to attend a concert.
* As a user, I want to be able to access the ticketing page via the listings so I can check prices and purchase tickets to the event.

### Backlog

A full list of user stories can be found by looking at [this Pivotal Tracker Project](https://www.pivotaltracker.com/projects/1086252)

### ERD

<img src="/blob/master/gighub_erd.png">
