require 'rubygems'
require 'sinatra'


get '/' do
	haml 	:index
end

get '/search/:query' do
	haml	:search
end


__END__