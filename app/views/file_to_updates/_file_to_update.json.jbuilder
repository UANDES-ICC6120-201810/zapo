json.extract! file_to_update, :id, :name, :file, :file_package_id, :created_at, :updated_at
json.url file_to_update_url(file_to_update, format: :json)
