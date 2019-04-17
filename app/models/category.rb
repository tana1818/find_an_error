class Category < ApplicationRecord
  acts_as_tree

  # has_many :children, class_name: :Category, foreign_key: :parent_id
  # belongs_to :parent, class_name: :Category
  belongs_to :group

end
