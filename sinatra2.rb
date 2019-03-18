require 'sinatra'


## Paramteros nombrados
## Hash params
get '/hola/:nombre' do
  "Hola #{params['nombre']}."
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
    "Hola Desconocido!"
  else
    "Hola #{params[:nombre]}!"
  end
end
