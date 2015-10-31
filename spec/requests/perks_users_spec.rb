require 'rails_helper'

RSpec.describe "PerksUsers", type: :request do
  describe "GET /perks_users" do
    it "works! (now write some real specs)" do
      get perks_users_path
      expect(response).to have_http_status(200)
    end
  end
end
