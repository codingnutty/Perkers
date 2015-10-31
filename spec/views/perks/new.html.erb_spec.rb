require 'rails_helper'

RSpec.describe "perks/new", type: :view do
  before(:each) do
    assign(:perk, Perk.new())
  end

  it "renders new perk form" do
    render

    assert_select "form[action=?][method=?]", perks_path, "post" do
    end
  end
end
