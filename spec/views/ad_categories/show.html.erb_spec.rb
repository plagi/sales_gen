require 'rails_helper'

RSpec.describe "ad_categories/show", type: :view do
  before(:each) do
    @ad_category = assign(:ad_category, AdCategory.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Ad Text1/)
    expect(rendered).to match(/Ad Text2/)
    expect(rendered).to match(/Ad Text3/)
    expect(rendered).to match(/Ad Text4/)
    expect(rendered).to match(/Ad Text5/)
    expect(rendered).to match(/Fast Url1/)
    expect(rendered).to match(/Fast Url2/)
    expect(rendered).to match(/Fast Url3/)
    expect(rendered).to match(/Fast Url4/)
    expect(rendered).to match(/Fast Url Title1/)
    expect(rendered).to match(/Fast Url Title2/)
    expect(rendered).to match(/Fast Url Title3/)
    expect(rendered).to match(/Fast Url Title4/)
  end
end
