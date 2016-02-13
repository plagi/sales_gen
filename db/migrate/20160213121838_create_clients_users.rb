class CreateClientsUsers < ActiveRecord::Migration
  def change
    create_table :clients_users do |t|
      t.belongs_to :client, index: true
      t.belongs_to :user, index: true
    end
  end
end
