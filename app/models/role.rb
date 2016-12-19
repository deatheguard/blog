# defines what roles are available in the application
class Role < ActiveRecord::Base
  has_many :users_roles
  has_many :users, through: :users_roles
  validates :name, uniqueness: true
end
