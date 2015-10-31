require 'rails_helper'

RSpec.describe "categories_perks/index", type: :view do
  before(:each) do
    assign(:categories_perks, [
      CategoriesPerk.create!(),
      CategoriesPerk.create!()
    ])
  end

  it "renders a list of categories_perks" do
    render
  end
end
