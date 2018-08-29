json.extract! help_center, :id, :name, :latitude, :longitude, :phone_number, :picture, :schedule, :address, :created_at, :updated_at
json.url help_center_url(help_center, format: :json)
