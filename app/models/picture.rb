class Picture < ActiveRecord::Base
  attr_accessible :title, :url, :favorite
  
  validates :url, :presence => true
  validates :title, :presence => true
end