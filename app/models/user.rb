class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :locations, as: :locatable
  has_many :perks_users
  has_many :perks, through: :perks_users

  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }

end
