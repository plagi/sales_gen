class CreateMinusWords < ActiveRecord::Migration
  def change
    create_table :minus_words do |t|
      t.references :word, index: true
      t.references :ad_category, index: true

      t.timestamps
    end
  end
end
