# README

This RoR project contains all essential to get Vanilla Forum up and running with LDAP Authentication with help of jsConnect.

# Dependencies

* A Vanilla fourm instance up and running.

* Vanilla's jsConnect plugin enabled.

* Ruby version `2.5.0 or above`

* System dependencies `Build on Ubuntu 16.04 but should work on any ubuntu version`

* Configuration `Bundler version 2 or above` , access to `https://rubygems.org` for Gem installation

* Database ` Postgresql version 9 or above`

# What does it contains 

It contains configuration of following :

* Authentication using `LDAP` with help of `Devise LDAP` Gem

* Implmenetation of `jsConnect` 

* Configuration of two end points `vanilla-connect` and `forum`

* `rails_admin` for master data management. Configured on `/admin`

* `exception_notifier` for triggering an email whenever any exception triggers in application.

* `whenever` to setup any schedule job (cronjobs)

* `puma` app server *althoguth rails5 comes with default `puma`

* `rspec` for testing
 
* Pre-configured `database.yml` file. You are suppose to set the environment variables.

* Pre-configured `SMTP` and `ldap.yml`.

* Pre-configured `devise` gem to use LDAP for authentication on `user` model.

* Pre-configured `role` and `user` models.

# What I need to configure ?

If you have all above mentioned prerequites then following are the things to be done, it should not take more than 5 mins for development instance:

* For **production** environment 
    * Update `database.yml` file with your database name and credentials.
    * Update `config.ru` with you application **context-path**
    * Update `seed.rb` for `role` and `user` models so that we can have initial level of authentication.
    * Run following commands
        * `bundle install`
        * `rake db:create` -- It will create a database
        * `rake db:migrate` -- Create database schema
        * `rake db:seed` -- to create user and role records.
    * Start your rails server with `rails s` and access in browser via `http://localhost:3000/<context-path>`
    * Configure your `vanilla` forum's `jsConnect` plugin to provide appropriate URLs.

# Others details
 
