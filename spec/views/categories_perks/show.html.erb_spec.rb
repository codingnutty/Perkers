require 'rails_helper'

RSpec.describe "categories_perks/show", type: :view do
  before(:each) do
    @categories_perk = assign(:categories_perk, CategoriesPerk.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
