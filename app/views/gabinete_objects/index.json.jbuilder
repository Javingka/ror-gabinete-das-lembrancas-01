json.array!(@gabinete_objects) do |gabinete_object|
  json.extract! gabinete_object, :id, :nome, :descripcao, :exhibit_id
  json.url gabinete_object_url(gabinete_object, format: :json)
end
