class CreateRestaurantBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurant_bookings do |t|
      t.date :day
      t.integer :numberofguest
      t.string :guestname
      t.string :typeofreservation
      t.time :tablebookingtime
      t.string :restaurantname

      t.timestamps
    end
  end
end
