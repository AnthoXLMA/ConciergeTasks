class CreateTransferBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :transfer_bookings do |t|
      t.date :day
      t.integer :numberofpax
      t.integer :numberofpiecesofluggage
      t.string :pickuplocalplace
      t.float :dropofflocalplace
      t.string :pickuptime
      t.string :typeofvehicle
      t.time :eta

      t.timestamps
    end
  end
end
