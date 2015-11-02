require 'rails_helper'

RSpec.describe Perk_category, type: :model do
  context "#associations" do
  it {should belong_to :category}
  it {should belong_to :perk}
  end
end