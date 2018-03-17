class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |a|
      a.string :name
      a.string :songs
      a.string :genre
    end
  end
end
