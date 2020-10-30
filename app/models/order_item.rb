# frozen_string_literal: true

class OrderItem < ApplicationRecord
  belongs_to :order

  validates :drink_name,
            :person_name, presence: true
end
