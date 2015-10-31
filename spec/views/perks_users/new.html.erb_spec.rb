require 'rails_helper'

RSpec.describe "perks_users/new", type: :view do
  before(:each) do
    assign(:perks_user, PerksUser.new())
  end

  it "renders new perks_user form" do
    render

    assert_select "form[action=?][method=?]", perks_users_path, "post" do
    end
  end
end
