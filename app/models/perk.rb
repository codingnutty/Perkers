class Perk < ActiveRecord::Base


  has_many :favourites
  has_many :users, through: :favourites
  belongs_to :brand
  has_many :perk_categories
  has_many :categories, through: :perk_categories

  def favourite_count
    self.favourites.count
  end



end
