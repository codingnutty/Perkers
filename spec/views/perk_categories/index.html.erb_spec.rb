require 'rails_helper'

RSpec.describe "perk_categories/index", type: :view do
  before(:each) do
    assign(:perk_categories, [
      PerkCategory.create!(),
      PerkCategory.create!()
    ])
  end

  it "renders a list of perk_categories" do
    render
  end
end
