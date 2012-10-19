class PicturesController < ApplicationController
  def new
  end
  
  def show
    @pic = Picture.find_by_id(params[:id])
  end
  
  def index
    @pictures = Picture.all
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    
    redirect_to '/pictures'
  end
end














