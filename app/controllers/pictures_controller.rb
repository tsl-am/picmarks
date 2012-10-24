class PicturesController < ApplicationController
  
  def edit
    @picture = Picture.find_by_id(params[:id])
  end
  
  def update
    p = Picture.find_by_id(params[:id])
    p.update_attributes params[:picture]
    
    redirect_to picture_url(p.id)
  end
  
  def destroy
    p = Picture.find_by_id(params[:id])
    p.destroy
    redirect_to pictures_url
  end
  
  def new
    @picture = Picture.new
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
    # create_input = {}
    # create_input[:url] = params[:picture][:url]
    # create_input[:title] = params[:picture][:title]

    # Picture.create create_input
    
    Picture.create params[:picture]
  
    redirect_to pictures_url
  end
end














