# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

User.create!(:name => "Admin", :username => "admin1234", :email => "admin@gmail.com", :password => "adminadmin", :address => "633 Folsom Street",:city => "San Francisco",
    :state => "CA",
    :zipcode => "94107")

User.create!(:name => "Katie Thomas", :username => "kat6247", :email => "katie@gmail.com", :password => "katiekatie", :address => "115 Mills Ave",:city => "San Francisco",
    :state => "CA",
    :zipcode => "94107")

User.create!(:name => "Mary Jone", :username => "maryjones", :email => "mary@gmail.com", :password => "marymary", :address => "620 Folsom Street",:city => "San Francisco",
    :state => "CA",
    :zipcode => " 94107")


users = 7.times do
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

random_brand = rand(1.. Brand.count)
Perk.create!( :title => "Hot Stone Massage",
    :discount => rand(1...80),
    :address => "200 Folsom Street",
    :city => "San Francisco",
    :state => "CA",
    :zipcode => " 94107",
    :brand_id => random_brand )

random_brand = rand(1.. Brand.count)
Perk.create!( :title => "Sky diving",
    :discount => rand(1...80),
    :address => "20 Folsom Street",
    :city => "San Francisco",
    :state => "CA",
    :zipcode => " 94107",
    :brand_id => random_brand )

random_brand = rand(1.. Brand.count)
Perk.create!( :title => "Fine Dine at Sky View",
    :discount => rand(1...80),
    :address => "200 Broadway Street",
    :city => "San Francisco",
    :state => "CA",
    :zipcode => " 94107",
    :brand_id => random_brand )



perks = 7.times do
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
  Category.create!(:cat_name => Faker::Commerce.department,:description => Faker::Company.bs )
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
    :perk_id => random_perk)
end
