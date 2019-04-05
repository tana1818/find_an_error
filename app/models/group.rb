class Group < ApplicationRecord
  belongs_to :user

  validates :password, length: { in: 6..10 } 
end
