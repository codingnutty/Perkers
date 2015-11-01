require 'rails_helper'

RSpec.describe "perk_categories/show", type: :view do
  before(:each) do
    @perk_category = assign(:perk_category, PerkCategory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
