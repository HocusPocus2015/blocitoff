class User < ActiveRecord::Base
  has_many :lists
  has_many :list_items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
