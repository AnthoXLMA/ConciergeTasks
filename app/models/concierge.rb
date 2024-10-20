class Concierge < ApplicationRecord
  has_many :restaurant_bookings
  has_many :transfer_bookings
end
