class Donation < ActiveRecord::Base
  belongs_to :reward
  belongs_to :backer, foreign_key: 'user_id', class_name: 'User'

  
end
