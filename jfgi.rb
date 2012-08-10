#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'

hit_counter ||= 0

get '/' do
        hit_counter += 1
	haml 	:index, :locals => { :hit_counter => hit_counter }, :format => :html5
end

get '/search/:query' do
        hit_counter += 1
	haml	:index, :format => :html5
	sleep 15
	redirect to("http://www.google.com/search?q=#{params[:query]}")
end

get '/info' do
        hit_counter += 1
	haml :info, :format => :html5
end
