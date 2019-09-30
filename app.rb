require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Nat is ite"
end

get '/secret' do
  "I see dead people"
end

get '/wild' do
"This is wild"
end

get '/random-walrus' do
  @name = ["Woolly", "Tuskers", "John", "Bert"].sample
  erb :index
end

post '/named-walrus' do
  @name = params[:name]
  erb :index
end

get '/naming-form' do
  erb :form
end
