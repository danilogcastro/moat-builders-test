class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :year
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
