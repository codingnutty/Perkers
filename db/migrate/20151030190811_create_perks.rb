class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.string :title
      t.string :discount
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
