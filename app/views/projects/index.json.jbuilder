json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :verified, :status, :begins_at, :ends_at, :price, :user_id
  json.url project_url(project, format: :json)
end
