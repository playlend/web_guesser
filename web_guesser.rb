require 'sinatra'
require 'sinatra/reloader'

random_num = rand(101)

get '/' do
	erb :index
end