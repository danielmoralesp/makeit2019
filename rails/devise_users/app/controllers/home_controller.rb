class HomeController < ApplicationController
  
  	before_action :authenticate_user!, except: [:index]#Este callback sirve para que primero el usuario se tenga que logear antes de ver las vistas
  
  def index
  end
  
  def my_setup
  end

  def new
  end

end
