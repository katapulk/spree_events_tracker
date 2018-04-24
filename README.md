SpreeEventsTracker
==================

Spree Events Tracker is a spree extension used to track various user activities. This extension can be used to track
  1. Keywords searched by User
  2. Products detail page and other pages visited by User
  3. Product added/removed/updated to cart
  4. Checkout flow during completion of an order

Demo
----
Try Spree Events Tracker for Spree master with direct deployment on Heroku:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/vinsol-spree-contrib/spree-demo-heroku/tree/spree-events-tracker-master)

Try Spree Events Tracker for Spree 3-4 with direct deployment on Heroku:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/vinsol-spree-contrib/spree-demo-heroku/tree/spree-events-tracker-3-4)

Try Spree Events Tracker for Spree 3-1 with direct deployment on Heroku:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/vinsol-spree-contrib/spree-demo-heroku/tree/spree-events-tracker-3-1)

Installation
------------

1. Add this extension to your Gemfile:

  #### Spree >= 3.2

  ```ruby
  gem 'spree_events_tracker', github: 'vinsol-spree-contrib/spree_events_tracker', branch: 'master'
  ```

  #### Spree < 3.2

  ```ruby
  gem 'spree_events_tracker', github: 'vinsol-spree-contrib/spree_events_tracker', branch: 'X-X-stable'
  ```

  The `branch` option is important: it must match the version of Spree you're using.
  For example, use `3-0-stable` if you're using Spree `3-0-stable` or any `3.0.x` version.

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g spree_events_tracker:install
  ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.

Testing
-------

  #### Spree >= 3.1

  For Building Dependencies:
  ```shell
  appraisal install
  ```

  The dummy app can be regenerated by using:
  ```shell
  appraisal spree-3-1 rake test_app

  ```
  This will run rake test_app using the dependencies configured for Spree 3.1. Similarly you can use spree-3-2 and spree-master for generating dummy applications using dependencies for Spree 3.2 and latest version of Spree


  ```shell
  appraisal spree-3-1 rspec
  ```
  This will run rspec using the dependencies configured for Spree 3.1. Similarly you can use spree-3-2 and spree-master to run rspec using dependencies for Spree 3.2 and latest version of Spree


  #### Spree 3.0 and Spree 2.x

  First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

  ```shell
  bundle
  bundle exec rspec spec
  ```

Contributing
------------

  1. Fork the repository.
  2. Clone your repository.
  3. Run `bundle install`.
  5. Make the required changes.
  6. Ensure all specs are passing.
  7. Submit your pull request.

Credits
-------

[![vinsol.com: Ruby on Rails, iOS and Android developers](http://vinsol.com/vin_logo.png "Ruby on Rails, iOS and Android developers")](http://vinsol.com)

Copyright (c) 2017 [vinsol.com](http://vinsol.com "Ruby on Rails, iOS and Android developers"), released under the New MIT License
