require 'sinatra'
require 'dotenv'

env = ENV['RAILS_ENV'].nil? ? ENV['RACK_ENV'] : ENV['RAILS_ENV']
path = ".env.#{env}"
Dotenv.load(path, '.env')

require File.expand_path '../testSporeSinatraPaaS2.rb', __FILE__
run TestSporeSinatraPaaS2.new