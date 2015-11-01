class Favourite < ActiveRecord::Base

  belongs_to :perk
  belongs_to :user

end
