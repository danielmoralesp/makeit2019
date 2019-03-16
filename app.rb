require 'sinatra'

# get '/' do
#   "Hola Mundo! modificado"
# end
#
# post '/' do
#   # crear un recurso
# end
#
# put '/' do
#   # actualizar un recurso
# end
#
# patch '/' do
#   #actualizar recurso
# end
#
# delete '/' do
#   # eliminar recurso
# end
#
#
#
# get '/user' do
#   "Leyendo un recurso"
# end
#
# post '/user' do
#   "Enviando un formulario"
# end



# get 'post/:id' do
#   "Hola #{params[:nombre]} #{params[:apellido]}"
# end

get '/' do

  if @codigo == "2019-03-15 19:05:16 -0500"
    @codigo = Time.now
  else
    @codigo2 = "String"
  end

  erb :index
end

get '/ruta1' do
  erb :ruta1
end




# get '/search' do
#   "Esta es la busqueda"
# end

# root /
# path /
# home /
# raiz /
#
# www.mysite.com/
# www.mysite.com/search
#
# hhtp://localhost:3000/search
# http://127.0.0.0:3000/search

# hhtp://localhost:4567
# http://127.0.0.0:4567
