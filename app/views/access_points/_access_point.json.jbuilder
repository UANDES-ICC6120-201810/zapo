json.extract! access_point, :id, :mac, :ip, :status, :token, :last_message, :created_at, :updated_at
json.url access_point_url(access_point, format: :json)
