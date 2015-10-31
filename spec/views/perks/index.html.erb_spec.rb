require 'rails_helper'

RSpec.describe "perks/index", type: :view do
  before(:each) do
    assign(:perks, [
      Perk.create!(),
      Perk.create!()
    ])
  end

  it "renders a list of perks" do
    render
  end
end
