class WelcomeController < ApplicationController

  def index
	@name = "Mi nombre es xxxx... "
  end

  def about
  	#### operacion methodo post
  	if current_user.loggued_id?
  		redirect_to welcome_prices_path
  	else
  		redirect_to root_path
  	end
  end

  def contact_us
  	
  end

  def prices
  	
  end


  # vistas / metodos / acciones
end
