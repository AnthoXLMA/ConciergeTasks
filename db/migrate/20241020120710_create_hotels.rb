class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :title
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
