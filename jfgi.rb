#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'
require './helpers'

hit_counter = update_counter 
time_delay = 15
get '/' do
        update_counter
	haml 	:index, :locals => { :hit_counter => hit_counter }, :format => :html5
end

get '/search/:query' do
        update_counter
	haml	:search, :locals => { :query => params[:query], :hit_counter => hit_counter, :time_delay => time_delay}, :format => :html5
end

get '/info' do
        update_counter
	haml :info, :format => :html5
end
