require 'rails_helper'

RSpec.describe "perks/show", type: :view do
  before(:each) do
    @perk = assign(:perk, Perk.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
