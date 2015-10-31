require 'rails_helper'

RSpec.describe "perks_users/edit", type: :view do
  before(:each) do
    @perks_user = assign(:perks_user, PerksUser.create!())
  end

  it "renders the edit perks_user form" do
    render

    assert_select "form[action=?][method=?]", perks_user_path(@perks_user), "post" do
    end
  end
end
