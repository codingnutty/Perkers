require 'rails_helper'

RSpec.describe "CategoriesPerks", type: :request do
  describe "GET /categories_perks" do
    it "works! (now write some real specs)" do
      get categories_perks_path
      expect(response).to have_http_status(200)
    end
  end
end
