json.extract! tour_service, :id, :name, :price, :description, :created_at, :updated_at
json.url tour_service_url(tour_service, format: :json)
