class RemoveColumnsFromArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :songs
    remove_column :artists, :genre
  end
end
