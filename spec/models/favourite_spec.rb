require 'rails_helper'

RSpec.describe Favourite, type: :model do
  context "#associations" do
  it {should belong_to :perk}
  it {should belong_to :user}
  end
end