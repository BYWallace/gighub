class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :seatgeek_id
      t.index :seatgeek_id, unique: true
      t.string :name, null: false
      t.text :address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
