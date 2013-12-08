# redis-file [![Build Status](https://secure.travis-ci.org/loureirorg/redis-file.png)](http://travis-ci.org/loureirorg/redis-file)
This is a Ruby implementation of Redis for machines without Redis or development/test environments. In short, it emulates a fully functional Redis server, so you don't need to install a truly Redis. It's like a SQLite equivalent for Redis.

## Why use this instead a real Redis?

Try to answer this question: why some developers use SQLite? Why Apple, Google, Microsoft and many others big software companies use SQLite, a weak and fragile database, in their products? Mozilla Firefox, Google Chrome, Apple Safari all theses products use SQLite. Why if there is a myriad of good and free databases? There are some answers for why use SQLite which are valid for redis-file too.

1. your software will store few data. Safari, FF, Chrome uses SQLite to store the user's preferences - why use some Mysql, PostgreSQL to just store a single table with few records? At the same way, why use a full Redis to store few keys?
2. your hosting provider charges you to use Redis and you want to save some money. redis-file is slow, because is written in Ruby (unlike Redis, which is written in C), it loads an entire Rails environment, and use disk. But for a small amount of data and/or a limited budget it can be better than use Redis.
3. you are developing some projects which uses Redis and you don't want the data of one project conflit with other.

These are some appropriate uses for redis-file, but for the most cases (namely for very large datasets) you have to use a true Redis server.

## Installation

Install the gem:

    gem install redis-file

Add it to your Gemfile:

    gem "redis-file"


## Versions

redis-file follow the same version number of the [fakeredis](https://github.com/guilleiguaran/fakeredis) project. Changes at fakeredis will be adopted by this project.

[![redis-file Version](https://badge.fury.io/rb/redis-file.png)](http://badge.fury.io/rb/redis-file): redis-file (this gem)

[![fakeredis Version](https://badge.fury.io/rb/fakeredis.png)](http://badge.fury.io/rb/fakeredis): fakredis (the gem which is based on)

## Usage

You can use redis-file without any changes:

    require "redis-file"
    
    redis = Redis.new
    
    >> redis.set "foo", "bar"
    => "OK"
    
    >> redis.get "foo"
    => "bar"

Read [redis-rb](https://github.com/ezmobius/redis-rb) documentation and
[Redis](http://redis.io) homepage for more info about commands

## Usage with RSpec

Require this either in your Gemfile or in RSpec's support scripts. So either: 

    # Gemfile
    group :test do
      gem "rspec"
      gem "redis-file", :require => "redis-file/rspec"
    end

Or:

    # spec/support/redis-file.rb
    require 'redis-file/rspec'

## Acknowledgements

* [guilleiguaran](https://github.com/guilleiguaran): The creator of Fakeredis, which this project is based on
* [dim](https://github.com/dim)
* [czarneckid](https://github.com/czarneckid)
* [obrie](https://github.com/obrie)
* [jredville](https://github.com/jredville)
* [redsquirrel](https://github.com/redsquirrel)
* [dpick](https://github.com/dpick)
* [caius](https://github.com/caius) 
* [Travis-CI](http://travis-ci.org/)


## Contributing to redis-file

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.


## Copyright

Public Domain - 2013 Daniel Loureiro (heavily based on the work of Guillermo Iguaran). See LICENSE for
further details.
