class Funding < ActiveRecord::Base
  has_many :stuffs    

  validates_presence_of :name
end
