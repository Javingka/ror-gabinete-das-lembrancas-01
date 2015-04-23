json.array!(@photos) do |photo|
  json.extract! photo, :id, :picture, :gabinete_object_id
  json.url photo_url(photo, format: :json)
end
