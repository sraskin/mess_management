json.extract! member, :id, :user_id, :name, :phone, :address, :created_at, :updated_at
json.url member_url(member, format: :json)
