class CreateConcierges < ActiveRecord::Migration[7.1]
  def change
    create_table :concierges do |t|
      t.string :firstname
      t.text :lastname
      t.string :email

      t.timestamps
    end
  end
end
