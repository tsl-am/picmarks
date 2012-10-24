class Picture < ActiveRecord::Base
  attr_accessible :title, :url
  
  validates :url, :presence => true
  validates :title, :presence => true
  
end
