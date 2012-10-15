class PicturesController < ApplicationController

  # Support /pictures/1
  # Support /pictures/2
  # Support /pictures/3, etc.
  #
  # I should see the correct picture
  # with the correct title for that picture

  # /pictures/99
  def show
    x = params[:id].to_i
    @pic = picture_data[x - 1]
  end
  
  def picture_data
    return [ { :url => "http://www.trbimg.com/img-507b73f3/turbine/chi-ct-parking-meter-photo-1120121014192342/600", 
               :title => "Parking Evil" },
             { :url => "http://www.trbimg.com/img-507b59e4/turbine/la-153334522.jpg-20121014/600",
              :title => "Candidates" },
             { :url => "http://www.trbimg.com/img-5078b31c/turbine/ct-top-less-crowded-ruins-sites-pg-009/600",
              :title => "Mayan Ruins" }
            ]
  end
  def pic1
    @pic1 = picture_data[0]
  end

  def pic2
    @pic2 = picture_data[1]
  end

  
  def index
    @pics = picture_data
  end
  
  
  
end