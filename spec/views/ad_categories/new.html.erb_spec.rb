require 'rails_helper'

RSpec.describe "ad_categories/new", type: :view do
  before(:each) do
    assign(:ad_category, AdCategory.new(
      :name => "MyString",
      :url => "MyString",
      :title => "MyString",
      :ad_texts => "",
      :fast_urls => "",
      :client => nil,
      :ad_text1 => "MyString",
      :ad_text2 => "MyString",
      :ad_text3 => "MyString",
      :ad_text4 => "MyString",
      :ad_text5 => "MyString",
      :fast_url1 => "MyString",
      :fast_url2 => "MyString",
      :fast_url3 => "MyString",
      :fast_url4 => "MyString",
      :fast_url_title1 => "MyString",
      :fast_url_title2 => "MyString",
      :fast_url_title3 => "MyString",
      :fast_url_title4 => "MyString"
    ))
  end

  it "renders new ad_category form" do
    render

    assert_select "form[action=?][method=?]", ad_categories_path, "post" do

      assert_select "input#ad_category_name[name=?]", "ad_category[name]"

      assert_select "input#ad_category_url[name=?]", "ad_category[url]"

      assert_select "input#ad_category_title[name=?]", "ad_category[title]"

      assert_select "input#ad_category_ad_texts[name=?]", "ad_category[ad_texts]"

      assert_select "input#ad_category_fast_urls[name=?]", "ad_category[fast_urls]"

      assert_select "input#ad_category_client_id[name=?]", "ad_category[client_id]"

      assert_select "input#ad_category_ad_text1[name=?]", "ad_category[ad_text1]"

      assert_select "input#ad_category_ad_text2[name=?]", "ad_category[ad_text2]"

      assert_select "input#ad_category_ad_text3[name=?]", "ad_category[ad_text3]"

      assert_select "input#ad_category_ad_text4[name=?]", "ad_category[ad_text4]"

      assert_select "input#ad_category_ad_text5[name=?]", "ad_category[ad_text5]"

      assert_select "input#ad_category_fast_url1[name=?]", "ad_category[fast_url1]"

      assert_select "input#ad_category_fast_url2[name=?]", "ad_category[fast_url2]"

      assert_select "input#ad_category_fast_url3[name=?]", "ad_category[fast_url3]"

      assert_select "input#ad_category_fast_url4[name=?]", "ad_category[fast_url4]"

      assert_select "input#ad_category_fast_url_title1[name=?]", "ad_category[fast_url_title1]"

      assert_select "input#ad_category_fast_url_title2[name=?]", "ad_category[fast_url_title2]"

      assert_select "input#ad_category_fast_url_title3[name=?]", "ad_category[fast_url_title3]"

      assert_select "input#ad_category_fast_url_title4[name=?]", "ad_category[fast_url_title4]"
    end
  end
end
