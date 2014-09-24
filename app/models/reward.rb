class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :donations
end
