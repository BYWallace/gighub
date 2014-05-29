class AddSeatGeekUrlToEvents < ActiveRecord::Migration
  def change
    add_column :events, :seatgeek_url, :text
  end
end
