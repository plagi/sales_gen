class CreatePlusWords < ActiveRecord::Migration
  def change
    create_table :plus_words do |t|
      t.references :keyword, index: true
      t.references :word, index: true
      t.integer :index

      t.timestamps
    end
  end
end
