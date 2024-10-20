class AddReferenceToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :concierge, null: false, foreign_key: true
  end
end
