#### Setear la Base de Datos
DataMapper::setup(:default, "sqlite://#{Dir.pwd}/index.sqlite")
# DataMapper::setup(:default, "sqlite://#{Dir.pwd}/index.db")
# DataMapper::setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/index.db")

# Definimos el modelo/base de datos/tabla
class Notes
  include DataMapper::Resource

  property :id,           Serial # un integer autoincremental
  property :content,      Text, :required => true
  property :created_at,   DateTime
  property :updated_at,   DateTime
  property :complete,     Boolean, :required => true, :default => 0
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

  post '/' do
    n = Notes.new
    n.content = params[:content]
    n.created_at = Time.now
    n.updated_at = Time.now
    n.save
    redirect '/'
  end

  get '/:id' do
    @note = Notes.get params[:id]
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
    @title = "Confirma el borrado de la nota #{@note}?"
    erb :delete
  end
  

  post '/note/:id/delete' do
    n = Notes.get params[:id]
    n.destroy
    redirect '/'
  end

end

### rutas: get, post, put, delete
