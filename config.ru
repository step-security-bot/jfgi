# Config.ru file for Heroku.
#

require 'rubygems'
require 'bundler'


Bundler.require

require './jfgi'
$stdout.sync = true
#use NewRelic::Rack::DeveloperMode
run Sinatra::Application
