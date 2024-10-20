class AddReferenceToRestaurantBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :restaurant_bookings, :restaurant, null: false, foreign_key: true
  end
end
