class Group < ApplicationRecord
  belongs_to :user
  has_many :categories
  
  validates :password, length: { in: 6..10 }
end
