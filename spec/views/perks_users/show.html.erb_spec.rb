require 'rails_helper'

RSpec.describe "perks_users/show", type: :view do
  before(:each) do
    @perks_user = assign(:perks_user, PerksUser.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
