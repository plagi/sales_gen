class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.string :title
      t.string :text
      t.string :url
      t.decimal :cpc
      t.decimal :cpc2
      t.references :keyword, index: true

      t.timestamps
    end
  end
end
