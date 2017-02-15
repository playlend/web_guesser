require 'sinatra'
require 'sinatra/reloader'

def check_guess(guess)
	random_num = rand(101)
	if guess.class == NilClass 
	elsif guess.class == String
		guess = guess.to_i
		if guess == random_num
			message = "Your guess is correct!"
		elsif guess > random_num
			message = "Your guess is too high! The secret number is #{random_num}!"
		elsif guess < random_num
			message = "Your guess is too low! The secret number is #{random_num}!"
		end			
	end
	message
end
get '/' do
	guess = params["guess"]
	message = check_guess(guess)
	erb :index, :locals => {:message=>message}
end