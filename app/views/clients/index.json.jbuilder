json.array!(@clients) do |client|
  json.extract! client, :id, :user_id, :name, :state_id, :phone, :data, :legal_form, :legal_name, :legal_inn, :legal_kpp, :legal_ogrn, :legal_address, :post_address, :legal_bank_name, :legal_bank_bic, :legal_cor_acc_num, :legal_bank_acc_num, :legal_ceo_reason, :legal_ceo_position, :legal_ceo_full_name, :deleted_at, :balance, :web_site
  json.url client_url(client, format: :json)
end
