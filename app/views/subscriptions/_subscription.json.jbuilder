json.extract! subscription, :id, :email, :card_number, :card_code, :card_month, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
