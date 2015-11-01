# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(:name => "Admin", :username => "admin1234", :email => "admin@gmail.com", :password => "adminadmin", :address => "FFaker::AddressUS.street_address",:city => FFaker::AddressUS.city,
    :state => FFaker::AddressUS.state_abbr,
    :zipcode => FFaker::AddressUS.zip_code)

require 'faker'

User.delete_all
Perk.delete_all
Brand.delete_all
Category.delete_all

users = 9.times do
  User.create!( :name => Faker::Name.name,
    :username => Faker::Internet.user_name,
    :email => Faker::Internet.email,
    :password => "password",
    :address => FFaker::AddressUS.street_address,
    :city => FFaker::AddressUS.city,
    :state => FFaker::AddressUS.state_abbr,
    :zipcode => FFaker::AddressUS.zip_code )
end

brands = 10.times do
  Brand.create!(:brand_name => FFaker::Product.brand )
end


perks = 10.times do
  random_brand = rand(1.. Brand.count)
  Perk.create!( :title => FFaker::Product.product_name,
    :discount => rand(1...80),
    :address => FFaker::AddressUS.street_address,
    :city => FFaker::AddressUS.city,
    :state => FFaker::AddressUS.state_abbr,
    :zipcode => FFaker::AddressUS.zip_code,
    :brand_id => random_brand )
end

categories = 10.times do
  Category.create!(:cat_name => Faker::Commerce.department )
end

perk_categories = 10.times do
  random_category = rand(1.. Category.count)
  random_perk = rand(1..Perk.count)
  PerkCategory.create!(:perk_id  => random_perk,
    :category_id => random_category)
end

user_favourite_perks = 10.times do
  random_user = rand(1..User.count)
  random_perk = rand(1..Perk.count)
  Favourite.create!(
    :user_id => random_user,
    :perk_id => random_perk,
    :count => 1)
end
