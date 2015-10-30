class Category < ActiveRecord::Base
  has_many :categories_perks
  has_many :perks through: :categories_perks
end
