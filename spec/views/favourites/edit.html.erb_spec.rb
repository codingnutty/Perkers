require 'rails_helper'

RSpec.describe "favourites/edit", type: :view do
  before(:each) do
    @favourite = assign(:favourite, Favourite.create!())
  end

  it "renders the edit favourite form" do
    render

    assert_select "form[action=?][method=?]", favourite_path(@favourite), "post" do
    end
  end
end
