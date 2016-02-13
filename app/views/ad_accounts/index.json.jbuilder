json.array!(@ad_accounts) do |ad_account|
  json.extract! ad_account, :id, :email, :phone, :login, :token, :data, :client_id, :deleted_at
  json.url ad_account_url(ad_account, format: :json)
end
