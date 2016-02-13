class CreateAdAccounts < ActiveRecord::Migration
  def change
    create_table :ad_accounts do |t|
      t.string :email
      t.string :phone
      t.string :login
      t.string :token
      t.json :data
      t.references :client, index: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
