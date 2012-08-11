#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'

hit_counter ||= ENV['HITS']
time_delay = 15
get '/' do
        ENV['HITS'] += 1
	haml 	:index, :locals => { :hit_counter => hit_counter }, :format => :html5
end

get '/search/:query' do
        ENV['HITS'] += 1
	haml	:search, :locals => { :query => params[:query], :hit_counter => hit_counter, :time_delay => time_delay}, :format => :html5
#	sleep 15
#	redirect to("http://www.google.com/search?q=#{params[:query]}")
end

get '/info' do
        ENV['HITS'] += 1
	haml :info, :format => :html5
end
