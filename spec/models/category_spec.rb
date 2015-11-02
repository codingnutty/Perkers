require 'rails_helper'

RSpec.describe Category, type: :model do
  context "#associations" do
  it {should have_many :perk_categories}
  it {should have_many :perks}
  end
end