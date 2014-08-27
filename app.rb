require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:dev.sqlite3"
require './models'

get '/signup' do 
	erb :signup
end

get '/signupsubmission' do
	erb :signupsubmission
end

get '/brainfreeze' do
	erb :brainfreeze
end

post '/signup' do 
	@user = User.new(fname: params[:fname], lname: params[:lname], email: params[:email], phone: params[:phone])
	@profile = Profile.new(username: params[:username], password: params[:password], city: params[:city], state: params[:state] )
	if @user.save && @profile.save
		redirect '/signupsubmission'
	else
		redirect '/brainfreeze'
	end
end 