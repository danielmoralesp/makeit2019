####Configurar la base de datos

DataMapper::setup(:default, "sqlite://#{Dir.pwd}/index.sqlite")
#DataMapper::(:default, "sqlite://#{Dir.pwd}/index.db") En caso que la anterior linea me genere error, entonces podemos intentar con esta linea
#DataMapper::(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/index.sqlite.db") En caso que la anterior linea me genere error, entonces podemos intentar con esta linea
#DataMapper::(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/index.sqlite.db") En caso que la anterior linea me genere error, entonces podemos intentar con esta linea

#Definimos el modelo, es decir, la base de datos o una tabla
class Notes
include DataMapper::Resource

property :id,             Serial # un integer autoincremental
property :content,        Text, :required => true, :default => 0 #Hasta 500 caractertes
property :created_at,     DateTime #Fecha Actual
property :updated_at,     DateTime #Fecha Actual
property :complete,       Boolean, :required => true, :default => 0

end

DataMapper.auto_upgrade!
###Clase MiApp
class MiApp < Sinatra::Base

#VAMOS A HACER EL CRUD: Create....  Update .... Delete...

get '/' do
  @notes = Notes.all :order => :id.desc
  @title = "Todas las notas"
  erb :index
end

post '/' do
  n = Notes.new
  n.content = params[:content]
  n.created_at = Time.now
  n.updated_at = Time.now
  n.save
  redirect '/'
end

get '/:id' do #Es obligatorio, vamos a identificar la nota que vamos a editar
@note = Notes.get params[:id] #Metodo para buscar, en este caso el paramsID
@title = "Editar la nota #{@note}"
erb :edit
end

post '/:id' do
  n = Notes.get params[:id]
  n.content = params[:content]
  n.complete = params[:complete] ? 1 : 0
  n.updated_at = Time.now
  n.save
  redirect '/'
  end

get '/:id/complete' do
n = Notes.get params[:id]
n.complete = n.complete ? 0 : 1
n.updated_at = Time.now
n.save
redirect '/'
end

get '/:id/delete' do
@note = Notes.get params[:id]
@title = "Confirma que desea borrar la nota #{@note}?"
erb :delete
end

post '/note/:id/delete' do
  n = Notes.get params[:id]
  n.destroy
  redirect '/'
end

end


#Rutas: get, post, put, delete
