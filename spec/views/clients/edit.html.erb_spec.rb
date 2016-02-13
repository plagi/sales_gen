require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :user => nil,
      :name => "MyString",
      :state_id => 1,
      :phone => "MyString",
      :data => "",
      :legal_form => "MyString",
      :legal_name => "MyString",
      :legal_inn => "MyString",
      :legal_kpp => "MyString",
      :legal_ogrn => "MyString",
      :legal_address => "MyString",
      :post_address => "MyString",
      :legal_bank_name => "MyString",
      :legal_bank_bic => "MyString",
      :legal_cor_acc_num => "MyString",
      :legal_bank_acc_num => "MyString",
      :legal_ceo_reason => "MyString",
      :legal_ceo_position => "MyString",
      :legal_ceo_full_name => "MyString",
      :balance => "9.99",
      :web_site => "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input#client_user_id[name=?]", "client[user_id]"

      assert_select "input#client_name[name=?]", "client[name]"

      assert_select "input#client_state_id[name=?]", "client[state_id]"

      assert_select "input#client_phone[name=?]", "client[phone]"

      assert_select "input#client_data[name=?]", "client[data]"

      assert_select "input#client_legal_form[name=?]", "client[legal_form]"

      assert_select "input#client_legal_name[name=?]", "client[legal_name]"

      assert_select "input#client_legal_inn[name=?]", "client[legal_inn]"

      assert_select "input#client_legal_kpp[name=?]", "client[legal_kpp]"

      assert_select "input#client_legal_ogrn[name=?]", "client[legal_ogrn]"

      assert_select "input#client_legal_address[name=?]", "client[legal_address]"

      assert_select "input#client_post_address[name=?]", "client[post_address]"

      assert_select "input#client_legal_bank_name[name=?]", "client[legal_bank_name]"

      assert_select "input#client_legal_bank_bic[name=?]", "client[legal_bank_bic]"

      assert_select "input#client_legal_cor_acc_num[name=?]", "client[legal_cor_acc_num]"

      assert_select "input#client_legal_bank_acc_num[name=?]", "client[legal_bank_acc_num]"

      assert_select "input#client_legal_ceo_reason[name=?]", "client[legal_ceo_reason]"

      assert_select "input#client_legal_ceo_position[name=?]", "client[legal_ceo_position]"

      assert_select "input#client_legal_ceo_full_name[name=?]", "client[legal_ceo_full_name]"

      assert_select "input#client_balance[name=?]", "client[balance]"

      assert_select "input#client_web_site[name=?]", "client[web_site]"
    end
  end
end
