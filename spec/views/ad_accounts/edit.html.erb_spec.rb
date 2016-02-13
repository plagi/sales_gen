require 'rails_helper'

RSpec.describe "ad_accounts/edit", type: :view do
  before(:each) do
    @ad_account = assign(:ad_account, AdAccount.create!(
      :email => "MyString",
      :phone => "MyString",
      :login => "MyString",
      :token => "MyString",
      :data => "",
      :client => nil
    ))
  end

  it "renders the edit ad_account form" do
    render

    assert_select "form[action=?][method=?]", ad_account_path(@ad_account), "post" do

      assert_select "input#ad_account_email[name=?]", "ad_account[email]"

      assert_select "input#ad_account_phone[name=?]", "ad_account[phone]"

      assert_select "input#ad_account_login[name=?]", "ad_account[login]"

      assert_select "input#ad_account_token[name=?]", "ad_account[token]"

      assert_select "input#ad_account_data[name=?]", "ad_account[data]"

      assert_select "input#ad_account_client_id[name=?]", "ad_account[client_id]"
    end
  end
end
