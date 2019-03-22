json.extract! order, :id, :meal, :restaurantName, :menuImage, :status, :date, :totalPrice, :members, :items, :created_at, :updated_at
json.url order_url(order, format: :json)
