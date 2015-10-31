# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

User.delete_all
Perk.delete_all
Brand.delete_all
Category.delete_all

users = 10.times do
  User.create!( :name => Faker::Name.name,
    :username => Faker::Internet.user_name,
    :email => Faker::Internet.email,
    :password => "password",
    :address => FFaker::AddressUS.street_address,
    :city => FFaker::AddressUS.city,
    :state => FFaker::AddressUS.state_abbr,
    :zipcode => FFaker::AddressUS.zip_code )
end

perks = 10.times do
  Perk.create!( :title => FFaker::Product.product_name,
    :discount => rand(1...80),
    :address => FFaker::AddressUS.street_address,
    :city => FFaker::AddressUS.city,
    :state => FFaker::AddressUS.state_abbr,
    :zipcode => FFaker::AddressUS.zip_code )
end

brands = 10.times do
  Brand.create!(:brand_name => FFaker::Product.brand )
end

categories = 10.times do
  Category.create!(:cat_name => Faker::Commerce.department )
end