require 'rails_helper'

RSpec.describe User, type: :model do
  context "#associations" do
    it {should have_many :locations}
    it {should have_many :perks_users}
    it {should have_many :perks}
  end
end
