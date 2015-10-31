require 'rails_helper'

RSpec.describe "perks_users/index", type: :view do
  before(:each) do
    assign(:perks_users, [
      PerksUser.create!(),
      PerksUser.create!()
    ])
  end

  it "renders a list of perks_users" do
    render
  end
end
