require 'sinatra'
#
# get '/' do #estoy en el home de la pag
#   "Hola Mundo Modificado"
# end
#
# # get '/search' do #Estamos yendo a una nueva dirección de la app
# #   "Hola Mundo"
# # end
# #
# # http//localhost:3000/search #Donde está alojado el servidor
# # http//127.0.0.0:3000/search
#
# post '/' do
#   User.save("New User") #crear un recurso y protege la información que saca de la base de daos
# end
#
# put '/' do
#                 #Actualizar un recurso
# end
#
# patch '/' do
#               #Actualizar un recurso
# end
#
# delete '/' do
#                #Eliminar recurso
# end
#
# #Dos metodos en la misma ruta al tiempo, si hay condicionales para ejecutar los metodos deben ir dentro del metodo
# #No poner un slash al final del user porque el sistema esperaría otra dirección
# get '/user' do #
# "Leyendo un recurso"
# end
#
# post '/user' do
# "Enviando un formulario"
# end

#---------------------

# get '/hola/:nombre' do
#   "Hola #{params['nombre']}" #Params es muy usado para variables nombrables, se puede llamar con comillas simples o con los dos punto al inicio de la variable
# end

# get '/primer_erb' do #es buena práctica que el nombre index se le asigne al home, en este caso index solo por el ejemplo
#   @codigo = "Hola Mundo" #Estoy pasando ruby al HTML que es el index.erb
#   @codigo2 = Time.now
#   erb :index
# end
#
# get '/segundo' do
#   @codigo = "Hola Mundo" #Estoy pasando ruby al HTML que es el index.erb
#   @codigo2 = Time.now
#   erb :segundo #Es buena práctica que el erb se llame de la misma manera que la ruta
# end

#Query String
#son propiedades despues del signo de interrogación. ?

get '/' do
  unless params[:nombre] #A menos que o si no recibe la variable nombre
    "Hola Desconocido!"
  else
    "Hola #{params[:nombre]}!"
end
end
