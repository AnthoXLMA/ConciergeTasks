class AddConciergeToRestaurantBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :restaurant_bookings, :concierge, null: false, foreign_key: true
  end
end
