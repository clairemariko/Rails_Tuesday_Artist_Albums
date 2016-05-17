class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.references :album, index: true, foreign_key: true
      t.text :title
      t.integer :number

      t.timestamps null: false
    end
  end
end
