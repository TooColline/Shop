# ECommerce Shop

This is a simple E-Commerce site for selling products. Built with Ruby on Rails.

## External Dependencies

This web application is written with Ruby using the Ruby on Rails framework and a PostgreSQL database. You need Ruby version 2.5.1 for the application to work

* To install rvm , visit [RVM](https://rvm.io/rvm/install)
* To install this ruby version, you can run the command below but you can use other channels to install it as well e.g. `rbenv`.
    ```bash
    rvm install ruby-2.5.1
    ```
* To install PostgreSQL, run
    ```bash
    brew install postgres
    ```

*To know more about Ruby or Rails visit [Ruby Lang](https://www.ruby-lang.org) or [Ruby on Rails](http://rubyonrails.org/).*

## Installation

Please make sure you have **Ruby(v 2.5.1) and PostgreSQL** installed. Take the following steps to setup the application on your local machine:

1. Run `git clone https://github.com/TooColline/Shop.git` to clone this repository

2. Run `bundle install` to install all required gems

3. Run `cp config/application.yml.sample config/application.yml` to create the `application.yml` file.

*Note* Update the postgres username and password if you have one or you can skip step 3

```yml
POSTGRES_USER: 'your-postgres-username'
POSTGRES_PASSWORD: 'your-postgres-password'
```

### Configuring the database

* After creating your `config/application.yml`, you need to create these 2 databases `Shop_development` and `Shop_test`. To create them, run:

    ```bash
    rake db:create
    ```
* You can also just run the above command if you've already setup postgres

## Run the server

* After creating the DB run:

    ```bash
    rake db:seed
    rails s
    ```

* This will load the sample data to the DB and then visit ```http://localhost:3000/```

## Limitations

* Shop is still in development

## Coding Style

Refer to this links below for our coding style:

* https://github.com/bbatsov/ruby-style-guide
* https://github.com/bbatsov/rails-style-guide

## How to Contribute

* Fork this repository
* Clone it.
* Create your feature branch on your local machine with `git checkout -b your-feature-branch`
* Push your changes to your remote branch with `git push origin your-feature-branch` ensure you avoid redundancy in your commit messsage.
* Open a pull request to the `develop` branch and describe how your feature works