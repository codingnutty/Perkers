class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :state

      t.timestamps null: false
    end
  end
end
