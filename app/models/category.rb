class Category < ActiveRecord::Base
  has_many :perk_categories
  has_many :perks, through: :perk_categories
end
