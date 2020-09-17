class Order < ApplicationRecord
  has_many :order_items

  accepts_nested_attributes_for :order_items

  validates :name, presence: true
  validates :name, uniqueness: true, if: ->(o) { o.name.present? }
end
