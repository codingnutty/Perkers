class CategoriesPerks < ActiveRecord::Base
  belongs_to :category
  belongs_to :perk
end
