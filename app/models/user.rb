class User < ActiveRecord::Base
  has_many :locations, as: :locatable
  has_many :perks_users
  has_many :perks, through: :perks_users
end
