require "rails_helper"

  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

describe "Perk", :js => true do
  let!(:perk) { FactoryGirl.create :perk }

  it "Shows a list of perks" do
    visit perks_path
    expect(page).to have_content(perk.title)
  end
  context "Create Button" do
    it "creates a new perk" do
        visit perks_path(perk)
        click_on('Add Perk')
        fill_in 'Title', with: "perk.title"
        fill_in 'Discount', with: perk.discount
        fill_in 'Address', with: perk.address
        fill_in 'Zipcode', with: perk.zipcode
        fill_in 'City', with: perk.city
        fill_in 'State', with: perk.state
        within(:css, "#add_perk") do
        click_on('Create Perk')
      end
        expect(page).to have_content("Perk Details")
    end
  end
end