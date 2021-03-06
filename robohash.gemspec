# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "robohash/version"

Gem::Specification.new do |s|
  s.name        = "robohash"
  s.version     = Robohash::VERSION
  s.authors     = ["xecutioner"]
  s.email       = ["xecutioner.kapil@gmail.com"]
  s.homepage    = "http://github.com/xecutioner/robohash"
  s.summary     = %q{Robohash downloader}
  s.description = %q{Downloads random robot images from robohash.org}
  s.add_development_dependency "rspec"
  s.add_development_dependency "httparty"
  s.rubyforge_project = "robohash"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
