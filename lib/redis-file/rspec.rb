# Require this either in your Gemfile or in RSpec's
# support scripts. Examples:
#
#   # Gemfile
#   group :test do
#     gem "rspec"
#     gem "redis-file", :require => "redis-file/rspec"
#   end
#
#   # spec/support/redis-file.rb
#   require 'redis-file/rspec'
#

require 'rspec/core'
require 'redis-file'

RSpec.configure do |c|

  c.before do    
    Redis::Connection::File.reset_all_databases
  end

end
