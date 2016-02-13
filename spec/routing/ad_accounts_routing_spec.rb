require "rails_helper"

RSpec.describe AdAccountsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ad_accounts").to route_to("ad_accounts#index")
    end

    it "routes to #new" do
      expect(:get => "/ad_accounts/new").to route_to("ad_accounts#new")
    end

    it "routes to #show" do
      expect(:get => "/ad_accounts/1").to route_to("ad_accounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ad_accounts/1/edit").to route_to("ad_accounts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ad_accounts").to route_to("ad_accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ad_accounts/1").to route_to("ad_accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ad_accounts/1").to route_to("ad_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ad_accounts/1").to route_to("ad_accounts#destroy", :id => "1")
    end

  end
end
