class Category < ActiveRecord::Base
  has_many :perk_categories
  has_many :perks, through: :perk_categories

  # validation ensures that category name entry is not blank
  validates :cat_name, presence: true
end
