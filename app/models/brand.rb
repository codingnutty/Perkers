class Brand < ActiveRecord::Base
  has_many :perks

  # validation ensures that brand name entry is not blank
  validates :brand_name, presence: true
end
