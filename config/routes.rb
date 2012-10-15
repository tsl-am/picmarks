Picmarks::Application.routes.draw do
  
  get "/pictures", :controller => 'pictures', :action => 'index'


  get "/pictures/:id", :controller => 'pictures', :action => 'show'
  
  # get "/pictures/1", :controller => 'pictures', :action => 'pic1'
  # get "/pictures/2", :controller => 'pictures', :action => 'pic2'
  
  # Support /pictures/1
  # Support /pictures/2
  # Support /pictures/3, etc.
  #
  # I should see the correct picture
  # with the correct title or caption for that picture
  
end
