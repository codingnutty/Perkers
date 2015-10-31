require "rails_helper"

RSpec.describe CategoriesPerksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/categories_perks").to route_to("categories_perks#index")
    end

    it "routes to #new" do
      expect(:get => "/categories_perks/new").to route_to("categories_perks#new")
    end

    it "routes to #show" do
      expect(:get => "/categories_perks/1").to route_to("categories_perks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/categories_perks/1/edit").to route_to("categories_perks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/categories_perks").to route_to("categories_perks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/categories_perks/1").to route_to("categories_perks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/categories_perks/1").to route_to("categories_perks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/categories_perks/1").to route_to("categories_perks#destroy", :id => "1")
    end

  end
end
