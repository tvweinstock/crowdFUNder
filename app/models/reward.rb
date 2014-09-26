class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :donations
  has_many :rewards, through: :donations

end
