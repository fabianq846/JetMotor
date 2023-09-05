json.extract! motor, :id, :equipment_type, :name, :description, :photo, :created_at, :updated_at
json.url motor_url(motor, format: :json)
json.photo url_for(motor.photo)
