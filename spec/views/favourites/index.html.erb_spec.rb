require 'rails_helper'

RSpec.describe "favourites/index", type: :view do
  before(:each) do
    assign(:favourites, [
      Favourite.create!(),
      Favourite.create!()
    ])
  end

  it "renders a list of favourites" do
    render
  end
end
