require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Legal Form/)
    expect(rendered).to match(/Legal Name/)
    expect(rendered).to match(/Legal Inn/)
    expect(rendered).to match(/Legal Kpp/)
    expect(rendered).to match(/Legal Ogrn/)
    expect(rendered).to match(/Legal Address/)
    expect(rendered).to match(/Post Address/)
    expect(rendered).to match(/Legal Bank Name/)
    expect(rendered).to match(/Legal Bank Bic/)
    expect(rendered).to match(/Legal Cor Acc Num/)
    expect(rendered).to match(/Legal Bank Acc Num/)
    expect(rendered).to match(/Legal Ceo Reason/)
    expect(rendered).to match(/Legal Ceo Position/)
    expect(rendered).to match(/Legal Ceo Full Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Web Site/)
  end
end
