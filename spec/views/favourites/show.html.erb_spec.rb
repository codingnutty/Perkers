require 'rails_helper'

RSpec.describe "favourites/show", type: :view do
  before(:each) do
    @favourite = assign(:favourite, Favourite.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
