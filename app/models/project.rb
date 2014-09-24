class Project < ActiveRecord::Base
  has_many :rewards
  has_many :donations, through: :rewards
  has_many :backers, through: :donations, class_name: 'User'
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
end
