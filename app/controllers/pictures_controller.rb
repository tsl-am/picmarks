class PicturesController < ApplicationController
  
  def index
    @pics = ["http://www.trbimg.com/img-507b73f3/turbine/chi-ct-parking-meter-photo-1120121014192342/600", 
            "http://www.trbimg.com/img-507b59e4/turbine/la-153334522.jpg-20121014/600", 
            "http://www.trbimg.com/img-5078b31c/turbine/ct-top-less-crowded-ruins-sites-pg-009/600"]
  end
  
end