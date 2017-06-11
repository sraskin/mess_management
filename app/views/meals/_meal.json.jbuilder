json.extract! meal, :id, :user_id, :member_id, :breakfast, :lunch, :dinner, :guest, :total, :created_at, :updated_at
json.url meal_url(meal, format: :json)
