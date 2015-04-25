json.array!(@comments) do |comment|
  json.extract! comment, :id, :comentario, :pessoa, :exhibit_id
  json.url comment_url(comment, format: :json)
end
