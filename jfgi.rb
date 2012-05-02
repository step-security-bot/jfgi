require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
	haml 	:index
end

get '/search/:query' do
	haml	:search
#	sleep 15
#	redirect to("http://www.google.com/search?q=#{params[:query]}")
end

get '/info' do
	haml :info
end