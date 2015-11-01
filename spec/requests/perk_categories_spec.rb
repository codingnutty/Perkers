require 'rails_helper'

RSpec.describe "PerkCategories", type: :request do
  describe "GET /perk_categories" do
    it "works! (now write some real specs)" do
      get perk_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
