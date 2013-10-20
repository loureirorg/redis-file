# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redis-file/version"

Gem::Specification.new do |s|
  s.name        = "redis-file"
  s.version     = RedisFile::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Daniel Loureiro"]
  s.email       = ["loureirorg@gmail.com"]
  s.homepage    = "https://github.com/loureirorg/redis-file"
  s.license     = "MIT"
  s.summary     = %q{Fake (local file) driver for redis-rb.}
  s.description = %q{Fake (local file) driver for redis-rb. Useful for development environment and machines without Redis.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency(%q<redis>, ["~> 3.0.0"])
  s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
end
