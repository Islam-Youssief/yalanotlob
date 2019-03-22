class Group
  include Mongoid::Document
  field :groupName, type: String
  field :owner, type: BSON::ObjectId
  field :members, type: String

  has_and_belongs_to_many :users
end
