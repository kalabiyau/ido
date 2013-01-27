# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "ido/version"

Gem::Specification.new do |s|
  s.name        = 'ido'
  s.version     = Ido::VERSION
  s.date        = '2013-01-27'
  s.summary     = "Harvest Accounting tool for command line"
  s.description = "Allows you to follow the git-flow with auto adding time tracking to your harvest account"
  s.authors     = ["Artem Chernikov"]
  s.email       = 'skullzeek@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/kalabiyau/ido'
end
