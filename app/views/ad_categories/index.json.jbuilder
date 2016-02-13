json.array!(@ad_categories) do |ad_category|
  json.extract! ad_category, :id, :name, :url, :title, :ad_texts, :fast_urls, :client_id, :deleted_at, :ad_text1, :ad_text2, :ad_text3, :ad_text4, :ad_text5, :fast_url1, :fast_url2, :fast_url3, :fast_url4, :fast_url_title1, :fast_url_title2, :fast_url_title3, :fast_url_title4
  json.url ad_category_url(ad_category, format: :json)
end
