
Picmarks::Application.routes.draw do

  get "/pictures/:id/edit" => 'pictures#edit', :as => :edit_picture
  get "/pictures"  => "pictures#index", :as => :pictures
  post "/pictures" => 'pictures#create'

  get "/pictures/new" => "pictures#new", :as => :new_picture

  get "/pictures/:id" => 'pictures#show', :as => :picture
  delete "/pictures/:id" => 'pictures#destroy'
  put "/pictures/:id" => 'pictures#update'
    
end

# def picture_url(id)
#   return "/pictures/#{id}"
# end