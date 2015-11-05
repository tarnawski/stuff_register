class Funding < ActiveRecord::Base
  has_and_belongs_to_many :stuffs    
end
