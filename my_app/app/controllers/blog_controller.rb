class BlogController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
    ## title y content se renderizan vacios o nil
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
    	redirect_to blog_index_path, notice: "El blog ha sido guardado exitosamente"
    	# flash[:notice] = "El blog ha sido guardado exitosamente"
    else
    	flash[:alert] = "El post no ha sido guardado, favor repetir la informacion"
    	render :new
    end
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def edit
  	@blog = Blog.find(params[:id])
  end

  def update
  	@blog = Blog.find(params[:id])


  	if @blog.update(blog_params)
  		redirect_to blog_index_path
  	else
  		render :edit
  	end
  end

  def destroy
  	blog = Blog.find(params[:id])
  	blog.destroy

  	redirect_to blog_index_path
  end


  private
  	def blog_params
  		params.require(:blog).permit(:title, :content)
  	end
end
