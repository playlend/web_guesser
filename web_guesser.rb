require 'sinatra'
require 'sinatra/reloader'

random_num = rand(101)

get '/' do
	"The secret number is #{random_num}"	
end