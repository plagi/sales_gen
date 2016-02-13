class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.integer :budget
      t.references :client, index: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
