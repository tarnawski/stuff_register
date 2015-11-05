class Stuff < ActiveRecord::Base
  belongs_to :users
  belongs_to :types
  belongs_to :rooms
  has_and_belongs_to_many :fundings
end
