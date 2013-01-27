require 'bundler'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
Bundler::GemHelper.install_tasks

task :default => :spec

desc "Full dev bundle console"
task :console do
  sh "irb -rubygems -I lib -r ido.rb"
end
