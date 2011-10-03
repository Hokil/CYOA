class Beginning < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :story_id
  
  belongs_to :story
  has_many :choices
end
