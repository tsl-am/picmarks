class PicturesController < ApplicationController
  def new
  end
  
  def show
    x = params[:id].to_i
    @pic = picture_data[x - 1]
    @width = params[:width]
    @color = params[:color]
  end
  
  def index
    @pictures = Picture.all
    @width = params[:width]
    @color = params[:color]
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    
    redirect_to '/pictures'
  end
end














