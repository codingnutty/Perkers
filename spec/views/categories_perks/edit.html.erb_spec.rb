require 'rails_helper'

RSpec.describe "categories_perks/edit", type: :view do
  before(:each) do
    @categories_perk = assign(:categories_perk, CategoriesPerk.create!())
  end

  it "renders the edit categories_perk form" do
    render

    assert_select "form[action=?][method=?]", categories_perk_path(@categories_perk), "post" do
    end
  end
end
