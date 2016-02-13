class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.references :user, index: true
      t.string :name
      t.integer :state_id
      t.string :phone
      t.json :data
      t.string :legal_form
      t.string :legal_name
      t.string :legal_inn
      t.string :legal_kpp
      t.string :legal_ogrn
      t.string :legal_address
      t.string :post_address
      t.string :legal_bank_name
      t.string :legal_bank_bic
      t.string :legal_cor_acc_num
      t.string :legal_bank_acc_num
      t.string :legal_ceo_reason
      t.string :legal_ceo_position
      t.string :legal_ceo_full_name
      t.datetime :deleted_at
      t.decimal :balance
      t.string :web_site

      t.timestamps
    end
  end
end
