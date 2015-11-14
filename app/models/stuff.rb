class Stuff < ActiveRecord::Base
  belongs_to :users
  belongs_to :types
  belongs_to :rooms
  belongs_to :fundings

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
  validates_presence_of :type_id
  validates_presence_of :room_id
  validates_presence_of :user_id
  validates_presence_of :funding_id
  validates_presence_of :inventory_id
end
