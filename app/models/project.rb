class Project < ActiveRecord::Base
  has_many :rewards
  has_many :donations, through: :rewards
  has_many :backers, through: :donations, class_name: 'User'
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  accepts_nested_attributes_for :rewards, allow_destroy: true
  validates :name, presence: true
  validates :goal, presence: true

  def current_funding
  	total = 0
  	donations.each do |donation|
  		total += donation.amount
  	end
  	total
  end

  def funding_left
     self.goal - current_funding
  end
end
