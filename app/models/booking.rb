class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :quantity, presence: true #numericality: { greater_than: 0, less_than_or_equal_to: 10 }
end
