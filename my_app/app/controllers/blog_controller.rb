class BlogController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
    ## title y content se renderizan vacios o nil
  end

  def create
    
  end
end
