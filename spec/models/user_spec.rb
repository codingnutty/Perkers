require 'rails_helper'

RSpec.describe User, type: :model do
  context "#associations" do
  it {should have_many :favourites}
  it {should have_many :perks}
  end
end

describe User do
  describe 'instantiation' do
    let!(:user) { build(:user) }
    it 'instantiates a user' do
      expect(user.class.name).to eq("User")
    end
  end

  let!(:bad_user) {User.new}
  it 'Validates presence of email' do
    expect{bad_user.save!}.to raise_error{ActiveRecord::RecordInvalid}
  end

  let!(:no_pswd) { User.new(email: "fakeuser@gmail.com") }
  it 'Is invalid without a password' do
    expect{no_pswd.save!}.to raise_error{ActiveRecord::RecordInvalid}
  end
end

