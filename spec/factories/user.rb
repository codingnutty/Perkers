require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.name {Faker::Name.name }
    f.username { Faker::Internet.user_name }
    f.email { Faker::Internet.email}
    f.password {"password"}
    f.address {FFaker::AddressUS.street_address}
    f.city {FFaker::AddressUS.city}
    f.state {FFaker::AddressUS.state_abbr}
    f.zipcode {FFaker::AddressUS.zip_code}
  end
end