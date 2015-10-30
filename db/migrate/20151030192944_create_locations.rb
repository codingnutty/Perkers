class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :country
      t.integer :locatable_id
      t.string  :locatable_type

      t.timestamps null: false
    end
  end
end
