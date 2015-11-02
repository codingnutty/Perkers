require 'rails_helper'

RSpec.describe Perk, type: :model do
  context "#associations" do
  it {should have_many :favourites}
  it {should have_many :users}
  it {should belong_to :brand}
  it {should have_many :perk_categories}
  it {should have_many :categories}
  end
end

describe Perk do
  describe 'instantiation' do
    let!(:perk) { build(:perk) }

    it 'instantiates a perk' do
      expect(perk.class.name).to eq("Perk")
    end
  end
end

