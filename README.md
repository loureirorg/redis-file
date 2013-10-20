# redis-file [![Build Status](https://secure.travis-ci.org/loureirorg/redis-file.png)](http://travis-ci.org/loureirorg/redis-file)
This a fake implementation of redis-rb for machines without Redis or development/test environments


## Installation

Install the gem:

    gem install redis-file

Add it to your Gemfile:

    gem "redis-file"


## Versions

redis-file currently supports redis-rb v3.0.0 or later, if you are using
redis-rb v2.2.x install the version 0.3.x:

    gem install redis-file -v "~> 0.3.0"

or use the branch 0-3-x on your Gemfile:

    gem "redis-file", :git => "git://github.com/loureirorg/redis-file.git", :branch => "0-3-x"


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

Copyleft 2013 Daniel Loureiro (based on work of Guillermo Iguaran). See LICENSE for
further details.
