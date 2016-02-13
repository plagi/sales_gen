require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :user => nil,
        :name => "Name",
        :state_id => 1,
        :phone => "Phone",
        :data => "",
        :legal_form => "Legal Form",
        :legal_name => "Legal Name",
        :legal_inn => "Legal Inn",
        :legal_kpp => "Legal Kpp",
        :legal_ogrn => "Legal Ogrn",
        :legal_address => "Legal Address",
        :post_address => "Post Address",
        :legal_bank_name => "Legal Bank Name",
        :legal_bank_bic => "Legal Bank Bic",
        :legal_cor_acc_num => "Legal Cor Acc Num",
        :legal_bank_acc_num => "Legal Bank Acc Num",
        :legal_ceo_reason => "Legal Ceo Reason",
        :legal_ceo_position => "Legal Ceo Position",
        :legal_ceo_full_name => "Legal Ceo Full Name",
        :balance => "9.99",
        :web_site => "Web Site"
      ),
      Client.create!(
        :user => nil,
        :name => "Name",
        :state_id => 1,
        :phone => "Phone",
        :data => "",
        :legal_form => "Legal Form",
        :legal_name => "Legal Name",
        :legal_inn => "Legal Inn",
        :legal_kpp => "Legal Kpp",
        :legal_ogrn => "Legal Ogrn",
        :legal_address => "Legal Address",
        :post_address => "Post Address",
        :legal_bank_name => "Legal Bank Name",
        :legal_bank_bic => "Legal Bank Bic",
        :legal_cor_acc_num => "Legal Cor Acc Num",
        :legal_bank_acc_num => "Legal Bank Acc Num",
        :legal_ceo_reason => "Legal Ceo Reason",
        :legal_ceo_position => "Legal Ceo Position",
        :legal_ceo_full_name => "Legal Ceo Full Name",
        :balance => "9.99",
        :web_site => "Web Site"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Form".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Name".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Inn".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Kpp".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Ogrn".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Address".to_s, :count => 2
    assert_select "tr>td", :text => "Post Address".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Bank Name".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Bank Bic".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Cor Acc Num".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Bank Acc Num".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Ceo Reason".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Ceo Position".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Ceo Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Web Site".to_s, :count => 2
  end
end
