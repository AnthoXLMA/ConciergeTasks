class AddReferenceToGuests < ActiveRecord::Migration[7.1]
  def change
    add_reference :guests, :concierge, foreign_key: true
  end
end
