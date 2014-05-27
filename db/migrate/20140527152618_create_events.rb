class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :seatgeek_id
      t.index :seatgeek_id, unique: true
      t.string :title, null: false
      t.datetime :datetime_local
      t.integer :lowest_price
      t.float :popularity

      t.references :venue

      t.timestamps
    end
  end
end
