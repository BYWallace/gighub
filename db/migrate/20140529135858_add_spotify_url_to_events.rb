class AddSpotifyUrlToEvents < ActiveRecord::Migration
  def change
    add_column :events, :spotify_url, :text, :null => true
  end
end
