class PerkCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :perk

  validates :category_id, presence: true
  validates :perk_id, presence: true
end
