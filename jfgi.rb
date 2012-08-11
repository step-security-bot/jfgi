#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'haml'
require 'data_mapper'

class Counter
  include DataMapper::Resource
  property :id, Serial
  property :time, DateTime
  property :hits, Integer
end

def update_counter(counter)
  counter.hits += 1
  counter.save
end

configure do
  DataMapper.setup(:default, (ENV["HEROKU_POSTGRESQL_ONYX_URL"] ||'postgres://localhost/mydb'))
  DataMapper.auto_upgrade!
end


counter = Counter.get(1) || Counter.create(:time => Time.now, :hits => 1) 
hits_counter = counter.hits.to_i
time_delay = 15
get '/' do
        update_counter(counter)
	haml 	:index, :locals => { :hit_counter => hit_counter }, :format => :html5
end

get '/search/:query' do
        update_counter(counter)
	haml	:search, :locals => { :query => params[:query], :hit_counter => hit_counter, :time_delay => time_delay}, :format => :html5
end

get '/info' do
        update_counter(counter)
	haml :info, :format => :html5
end
