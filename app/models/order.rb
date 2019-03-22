class Order
  include Mongoid::Document
  field :meal, type: String
  field :restaurantName, type: String
  field :menuImage, type: String
  field :status, type: String
  field :date, type: String
  field :totalPrice, type: String
  field :friends, type: String
  field :groups, type: String
  field :items, type: String
end
