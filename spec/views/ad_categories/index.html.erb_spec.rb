require 'rails_helper'

RSpec.describe "ad_categories/index", type: :view do
  before(:each) do
    assign(:ad_categories, [
      AdCategory.create!(
        :name => "Name",
        :url => "Url",
        :title => "Title",
        :ad_texts => "",
        :fast_urls => "",
        :client => nil,
        :ad_text1 => "Ad Text1",
        :ad_text2 => "Ad Text2",
        :ad_text3 => "Ad Text3",
        :ad_text4 => "Ad Text4",
        :ad_text5 => "Ad Text5",
        :fast_url1 => "Fast Url1",
        :fast_url2 => "Fast Url2",
        :fast_url3 => "Fast Url3",
        :fast_url4 => "Fast Url4",
        :fast_url_title1 => "Fast Url Title1",
        :fast_url_title2 => "Fast Url Title2",
        :fast_url_title3 => "Fast Url Title3",
        :fast_url_title4 => "Fast Url Title4"
      ),
      AdCategory.create!(
        :name => "Name",
        :url => "Url",
        :title => "Title",
        :ad_texts => "",
        :fast_urls => "",
        :client => nil,
        :ad_text1 => "Ad Text1",
        :ad_text2 => "Ad Text2",
        :ad_text3 => "Ad Text3",
        :ad_text4 => "Ad Text4",
        :ad_text5 => "Ad Text5",
        :fast_url1 => "Fast Url1",
        :fast_url2 => "Fast Url2",
        :fast_url3 => "Fast Url3",
        :fast_url4 => "Fast Url4",
        :fast_url_title1 => "Fast Url Title1",
        :fast_url_title2 => "Fast Url Title2",
        :fast_url_title3 => "Fast Url Title3",
        :fast_url_title4 => "Fast Url Title4"
      )
    ])
  end

  it "renders a list of ad_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Ad Text1".to_s, :count => 2
    assert_select "tr>td", :text => "Ad Text2".to_s, :count => 2
    assert_select "tr>td", :text => "Ad Text3".to_s, :count => 2
    assert_select "tr>td", :text => "Ad Text4".to_s, :count => 2
    assert_select "tr>td", :text => "Ad Text5".to_s, :count => 2
    assert_select "tr>td", :text => "Fast Url1".to_s, :count => 2
    assert_select "tr>td", :text => "Fast Url2".to_s, :count => 2
    assert_select "tr>td", :text => "Fast Url3".to_s, :count => 2
    assert_select "tr>td", :text => "Fast Url4".to_s, :count => 2
    assert_select "tr>td", :text => "Fast Url Title1".to_s, :count => 2
    assert_select "tr>td", :text => "Fast Url Title2".to_s, :count => 2
    assert_select "tr>td", :text => "Fast Url Title3".to_s, :count => 2
    assert_select "tr>td", :text => "Fast Url Title4".to_s, :count => 2
  end
end
