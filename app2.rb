require 'sinatra'

get '/' do
  @title = "Title in /"
  erb :home
end

get '/ruta2' do
  erb :ruta2
end

get '/ruta3' do
  erb :ruta3
end
