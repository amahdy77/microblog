require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:dev.sqlite3"
require './models'

get '/signup' do 
	erb :signup
end

post '/signup' do 

end 