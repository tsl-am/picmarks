Picmarks::Application.routes.draw do
  
  get "/pictures", :controller => 'pictures', :action => 'index'
  
end
