class Inventory < ActiveRecord::Base

  validates_presence_of :stuff_id
  validates_presence_of :comment
end
