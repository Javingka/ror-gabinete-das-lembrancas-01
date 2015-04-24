json.array!(@histories) do |history|
  json.extract! history, :id, :memoria, :gabinete_object_id
  json.url history_url(history, format: :json)
end
