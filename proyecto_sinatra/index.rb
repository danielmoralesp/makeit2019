#### Setear la Base de Datos
DataMapper::setup(:default, "sqlite://#{Dir.pwd}/index.sqlite")
# DataMapper::setup(:default, "sqlite://#{Dir.pwd}/index.db")
# DataMapper::setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/index.db")

# Definimos el modelo/base de datos/tabla
class Notes
  include DataMapper::Resource

  property :id,           Serial # un integer autoincremental
  property :content,      Text, :required => true, :default => 0
  property :created_at,   DateTime
  property :updated_at,   DateTime
end

DataMapper.auto_upgrade!

#### Clase MiApp
class MiApp < Sinatra::Base
  ## CRUD
  get '/' do
    @notes = Notes.all :order => :id.desc
    @title = "Todas las notas"
    erb :index
  end
end

### rutas: get, post, put, delete
