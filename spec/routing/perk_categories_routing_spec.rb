require "rails_helper"

RSpec.describe PerkCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/perk_categories").to route_to("perk_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/perk_categories/new").to route_to("perk_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/perk_categories/1").to route_to("perk_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/perk_categories/1/edit").to route_to("perk_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/perk_categories").to route_to("perk_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/perk_categories/1").to route_to("perk_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/perk_categories/1").to route_to("perk_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/perk_categories/1").to route_to("perk_categories#destroy", :id => "1")
    end

  end
end
