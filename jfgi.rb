#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'

hit_counter ||= 0

get '/' do
	haml 	:index, :locals => { :hit_counter => hit_counter }, :format => :html5
        hit_counter += 1
end

get '/search/:query' do
	haml	:index, :format => :html5
	sleep 15
	redirect to("http://www.google.com/search?q=#{params[:query]}")
        hit_counter += 1
end

get '/info' do
	haml :info, :format => :html5
        hit_counter += 1
end
