json.extract! device, :id, :brand, :model, :description, :serial_number, :repair_id, :created_at, :updated_at
json.url device_url(device, format: :json)
