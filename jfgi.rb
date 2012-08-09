#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
	haml 	:index
end

get '/search/:query' do
	haml	:index
	sleep 15
	redirect to("http://www.google.com/search?q=#{params[:query]}")
end

get '/info' do
	haml :info
end
