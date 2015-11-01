require 'rails_helper'

RSpec.describe "perk_categories/edit", type: :view do
  before(:each) do
    @perk_category = assign(:perk_category, PerkCategory.create!())
  end

  it "renders the edit perk_category form" do
    render

    assert_select "form[action=?][method=?]", perk_category_path(@perk_category), "post" do
    end
  end
end
