class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :value, default: 0
      t.references :user, index: true
      t.references :perk, index: true

      t.timestamps null: false
    end
  end
end
