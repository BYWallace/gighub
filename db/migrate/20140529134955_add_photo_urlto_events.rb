class AddPhotoUrltoEvents < ActiveRecord::Migration
  def change
    add_column :events, :photo_url, :text, :null => true
  end
end
