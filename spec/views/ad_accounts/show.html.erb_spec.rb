require 'rails_helper'

RSpec.describe "ad_accounts/show", type: :view do
  before(:each) do
    @ad_account = assign(:ad_account, AdAccount.create!(
      :email => "Email",
      :phone => "Phone",
      :login => "Login",
      :token => "Token",
      :data => "",
      :client => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Login/)
    expect(rendered).to match(/Token/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
