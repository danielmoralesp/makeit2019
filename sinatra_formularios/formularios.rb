require 'sinatra'

get '/' do
if

erb :index
end

post '/hello' do

"Hola #{params[:nombre]}"
end
