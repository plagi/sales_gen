class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
