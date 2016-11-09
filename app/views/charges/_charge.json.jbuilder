json.extract! charge, :id, :Product, :Amount, :Card_type, :Card_last4, :user_id, :created_at, :updated_at
json.url charge_url(charge, format: :json)