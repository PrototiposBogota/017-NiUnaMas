json.extract! victim, :id, :name, :surname, :email, :password, :phone_number, :document_type, :document_number, :attendant_name, :attendant_phone_number, :sexual_orientation, :district, :picture, :created_at, :updated_at
json.url victim_url(victim, format: :json)
