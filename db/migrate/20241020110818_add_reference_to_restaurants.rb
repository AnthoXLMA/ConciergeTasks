class AddReferenceToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_reference :restaurants, :location, null: false, foreign_key: true
  end
end
