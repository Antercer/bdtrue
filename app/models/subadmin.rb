class Subadmin < ActiveRecord::Base
  belongs_to :user1
  belongs_to :user2
  belongs_to :board
end
