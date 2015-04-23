json.array!(@exhibits) do |exhibit|
  json.extract! exhibit, :id, :cidade, :datainicio, :datafim, :local
  json.url exhibit_url(exhibit, format: :json)
end
