require 'rails_helper'

RSpec.describe "perks/edit", type: :view do
  before(:each) do
    @perk = assign(:perk, Perk.create!())
  end

  it "renders the edit perk form" do
    render

    assert_select "form[action=?][method=?]", perk_path(@perk), "post" do
    end
  end
end
