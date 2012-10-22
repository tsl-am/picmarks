class PicturesController < ApplicationController
  
  def edit
    @picture = Picture.find_by_id(params[:id])
  end
  
  def update
    picture = Picture.find_by_id(params[:id])
    picture.url = params[:url]
    picture.title = params[:title]
    picture.save
    redirect_to picture_url(picture.id)
  end
  
  def destroy
    p = Picture.find_by_id(params[:id])
    p.destroy
    redirect_to pictures_url
  end
  
  def new
  end
  
  def show
    @pic = Picture.find_by_id(params[:id])
  end
  
  def index
    @pictures = Picture.all
    
    # Support: /pictures.json
    respond_to do |format|
      format.html # render 'index'
      format.json { render :json => @pictures }
    end
    
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    
    redirect_to pictures_url
  end
end














