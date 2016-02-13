class CreateAdCategories < ActiveRecord::Migration
  def change
    create_table :ad_categories do |t|
      t.string :name
      t.string :url
      t.string :title
      t.json :ad_texts
      t.json :fast_urls
      t.references :client, index: true
      t.datetime :deleted_at
      t.string :ad_text1
      t.string :ad_text2
      t.string :ad_text3
      t.string :ad_text4
      t.string :ad_text5
      t.string :fast_url1
      t.string :fast_url2
      t.string :fast_url3
      t.string :fast_url4
      t.string :fast_url_title1
      t.string :fast_url_title2
      t.string :fast_url_title3
      t.string :fast_url_title4

      t.timestamps
    end
  end
end
