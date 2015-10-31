require 'rails_helper'

RSpec.describe "categories_perks/new", type: :view do
  before(:each) do
    assign(:categories_perk, CategoriesPerk.new())
  end

  it "renders new categories_perk form" do
    render

    assert_select "form[action=?][method=?]", categories_perks_path, "post" do
    end
  end
end
