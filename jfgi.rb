#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'

hit_counter ||= ENV['HITS']
time_delay = 15
get '/' do
        update_counter
	haml 	:index, :locals => { :hit_counter => hit_counter }, :format => :html5
end

get '/search/:query' do
        update_counter
	haml	:search, :locals => { :query => params[:query], :hit_counter => hit_counter, :time_delay => time_delay}, :format => :html5
#	sleep 15
#	redirect to("http://www.google.com/search?q=#{params[:query]}")
end

get '/info' do
        update_counter
	haml :info, :format => :html5
end

def update_counter
  current_count = ENV['HITS'].to_i
  new_count = current_count + 1
  ENV['HITS'] = new_count.to_s
end
