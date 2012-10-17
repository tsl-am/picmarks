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
    @pics = picture_data
    if params[:url]
      p = Picture.new
      p.url = params[:url]
      p.title = params[:title]
      p.save
    end
    @width = params[:width]
    @color = params[:color]
  end
  
  def picture_data
    return [
      { :url => "http://www.trbimg.com/img-507b73f3/turbine/chi-ct-parking-meter-photo-1120121014192342/600", 
        :title => "Parking Evil"
      },
      { :url => "http://www.trbimg.com/img-507b59e4/turbine/la-153334522.jpg-20121014/600",
        :title => "Candidates"
      },
      { :url => "http://www.trbimg.com/img-5078b31c/turbine/ct-top-less-crowded-ruins-sites-pg-009/600",
        :title => "Mayan Ruins"
      }
    ]
  end 
end






