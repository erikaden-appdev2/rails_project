json.extract! photo, :id, :url, :trip_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
