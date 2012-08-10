#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'

hit_counter ||= 0

get '/' do
	haml 	:index
        hit_counter += 1
end

get '/search/:query' do
	haml	:index
	sleep 15
	redirect to("http://www.google.com/search?q=#{params[:query]}")
        hit_counter += 1
end

get '/info' do
	haml :info
        hit_counter += 1
end
