json.array!(@projects) do |project|
  json.extract! project, :id, :name, :url, :budget, :client_id, :deleted_at
  json.url project_url(project, format: :json)
end
