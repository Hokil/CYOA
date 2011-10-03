class Story < ActiveRecord::Base
  validates_presence_of :title
  
  has_many :beginnings
end
