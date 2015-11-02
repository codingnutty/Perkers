class Favourite < ActiveRecord::Base
  belongs_to :perk
  belongs_to :user

  validates :user_id, presence: true
  validates :perk_id, presence: true

end
