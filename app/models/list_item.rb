class ListItem < ActiveRecord::Base
  belongs_to :list
#  belongs_to :user
  
  validates :list, presence: true
#  validates :user, presence: true

  def days_left
    7 - (DateTime.now.to_date - created_at.to_date).to_i
  end
end