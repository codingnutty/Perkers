class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favourites
  has_many :perks, through: :favourites

# ensures username and name are unique
validates :address, :city, :state, :zipcode, :username, :name,:email, presence: true

#ensures email is unique
  validates :email, uniqueness: true

#ensures state is 2 characters in length (abbreviated form)
  validates :state, length: { is: 2 }

end
