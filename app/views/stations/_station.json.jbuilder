json.extract! station, :id, :railway_name, :station_name, :minutes_to_walk, :building_id, :created_at, :updated_at
json.url station_url(station, format: :json)
