require 'rails_helper'

RSpec.describe "ad_accounts/index", type: :view do
  before(:each) do
    assign(:ad_accounts, [
      AdAccount.create!(
        :email => "Email",
        :phone => "Phone",
        :login => "Login",
        :token => "Token",
        :data => "",
        :client => nil
      ),
      AdAccount.create!(
        :email => "Email",
        :phone => "Phone",
        :login => "Login",
        :token => "Token",
        :data => "",
        :client => nil
      )
    ])
  end

  it "renders a list of ad_accounts" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
