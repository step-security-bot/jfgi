# Confid.ru file for Heroku.
#

require './jfgi'
$stdout.sync = true
#use NewRelic::Rack::DeveloperMode
run Sinatra::Application
