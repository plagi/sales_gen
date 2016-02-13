require "rails_helper"

RSpec.describe AdCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ad_categories").to route_to("ad_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/ad_categories/new").to route_to("ad_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/ad_categories/1").to route_to("ad_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ad_categories/1/edit").to route_to("ad_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ad_categories").to route_to("ad_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ad_categories/1").to route_to("ad_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ad_categories/1").to route_to("ad_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ad_categories/1").to route_to("ad_categories#destroy", :id => "1")
    end

  end
end
