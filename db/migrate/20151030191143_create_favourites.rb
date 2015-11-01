class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :count, default: 0
      t.references :user, index: true, foreign_key: true
      t.references :perk, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
