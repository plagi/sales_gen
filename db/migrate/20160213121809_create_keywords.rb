class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.references :ad_category, index: true
      t.datetime :deleted_at
      t.string :name

      t.timestamps
    end
  end
end
