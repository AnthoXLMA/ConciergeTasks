class CreateGuests < ActiveRecord::Migration[7.1]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
