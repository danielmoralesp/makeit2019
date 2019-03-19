require 'sinatra'


## Paramteros nombrados
## Hash params
get '/makers/:nombre' do
  "<h1> Hola #{params['nombre'].capitalize}. </h1>"
end

# get '/saludo/:nombre' do |n|
#   "Hola #{n}"
# end

### Query string
## ?
#
# http://localhost:4567/?nombre=pedro


get '/' do
  unless params[:nombre]
    "<h1> Hola Desconocido! </h1>"
  else
    "<h1> Hola #{params[:nombre]}! </h1>"
  end
end
