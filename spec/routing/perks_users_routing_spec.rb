require "rails_helper"

RSpec.describe PerksUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/perks_users").to route_to("perks_users#index")
    end

    it "routes to #new" do
      expect(:get => "/perks_users/new").to route_to("perks_users#new")
    end

    it "routes to #show" do
      expect(:get => "/perks_users/1").to route_to("perks_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/perks_users/1/edit").to route_to("perks_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/perks_users").to route_to("perks_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/perks_users/1").to route_to("perks_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/perks_users/1").to route_to("perks_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/perks_users/1").to route_to("perks_users#destroy", :id => "1")
    end

  end
end
