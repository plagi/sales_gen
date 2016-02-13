require 'rails_helper'

RSpec.describe "AdAccounts", type: :request do
  describe "GET /ad_accounts" do
    it "works! (now write some real specs)" do
      get ad_accounts_path
      expect(response).to have_http_status(200)
    end
  end
end
