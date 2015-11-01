require 'rails_helper'

RSpec.describe "perk_categories/new", type: :view do
  before(:each) do
    assign(:perk_category, PerkCategory.new())
  end

  it "renders new perk_category form" do
    render

    assert_select "form[action=?][method=?]", perk_categories_path, "post" do
    end
  end
end
