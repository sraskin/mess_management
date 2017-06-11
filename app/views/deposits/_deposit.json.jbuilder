json.extract! deposit, :id, :user_id, :member_id, :name, :amount, :date, :comments, :created_at, :updated_at
json.url deposit_url(deposit, format: :json)
