require 'sinatra'

get '/' do
  erb :form
end

post '/form' do
  if params[:frase] == params[:frase].upcase
    "<h1>Ahhh si, manzanas!</h1>"
  else
    "<h1>Habla más duro mijito</h1>"
  end
end
