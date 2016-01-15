class List < ActiveRecord::Base
  has_many :list_items, dependent: :destroy
  belongs_to :user
  validates :user, presence: true
  validates :title, length: {minimun: 5}
end