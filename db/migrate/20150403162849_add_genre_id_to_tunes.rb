class AddGenreIdToTunes < ActiveRecord::Migration
  def change
    add_reference :tunes, :genre, index: true
    add_foreign_key :tunes, :genres
  end
end
