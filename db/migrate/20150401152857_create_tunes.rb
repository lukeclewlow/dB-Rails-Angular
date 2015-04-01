class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      t.string :artist
      t.string :title
      t.text :blog
      t.text :link

      t.timestamps null: false
    end
  end
end
