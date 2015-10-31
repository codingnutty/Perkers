class Perk < ActiveRecord::Base
  has_many :perks_users
  has_many :users, through: :perks_users
  belongs_to :brand
  has_many :categories_perks
  has_many :categories, through: :categories_perks
end
