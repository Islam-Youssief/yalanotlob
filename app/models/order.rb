class Order
  include Mongoid::Document
  field :meal, type: String
  field :restaurantName, type: String
  field :menuImage, type: Hash
  field :status, type: String
  field :date, type: DateTime, default: Time.now
  field :totalPrice, type: Integer, default: 0
  field :friends, type: Array
  field :groups, type: Array
  field :items, type: Array
  embeds_many :friends, store_as: "friend"
  embeds_many :groups, store_as: "groups"
  include Mongoid::Timestamps
end
