require 'sinatra'

get '/name/user/profile/:id' do
  erb :index3
end

post '/hello' do
  "Hola #{params[:nombre]} desde post"
  redirect_to "/"
end

get '/hello' do
  "Hola desde get"
end
