class CreateActivityBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :activity_bookings do |t|
      t.date :dayofactivity
      t.integer :numberofpax
      t.string :guestname
      t.string :activityname
      t.text :description
      t.text :addons

      t.timestamps
    end
  end
end
