class Order < ApplicationRecord
  belongs_to :user
  has_many :invited_members, dependent: :destroy
  has_many :order_informations, dependent: :destroy
  has_attached_file :menu, styles: { large: "900x900>", thumb: "100x100>" }
  validates_attachment_content_type :menu, content_type: /\Aimage\/.*\z/
  enum status: [:waiting, :finished, :cancelled]
  enum meal: [:breakfast, :lunch, :dinner]
  validates_inclusion_of :status, :in => %w( waiting finished cancelled )
  validates_inclusion_of :meal, :in => %w( breakfast lunch dinner )

end
