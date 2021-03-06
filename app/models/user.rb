class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :password, length: { minimum: 3 }, on: :create
  validates :password, length: { minimum: 3, allow_blank: true }, on: :update
  validates :password, confirmation: true
  validates :password_confirmation, presence: true, on: :create

  validates :email, uniqueness: true

  has_many :owned_projects, class_name: 'Project'
  has_many :donations
  has_many :rewards, :through => :donations
  has_many :backed_projects, :through => :rewards, :source => :project
end
