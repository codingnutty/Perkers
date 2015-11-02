class Perk < ActiveRecord::Base
  has_many :favourites
  has_many :users, through: :favourites
  belongs_to :brand
  has_many :perk_categories
  has_many :categories, through: :perk_categories

# ensures title and discount fields are not empty
  validates :title, :discount, presence: true

# ensures title is unique
  validates :title, uniqueness: true

# ensures length of state is 2 letter abbreviation
  validates :state, length: { is: 2 }

# ensures discount is a numebr between 0 to 100
  validates_numericality_of :discount, :greater_than => 0, :less_than => 100

# method calculates number of favourites for a perk
  def favourite_count
    self.favourites.count
  end


  def paginate
    self.per_page = 20
  end
end
