class CreatePerksUsers < ActiveRecord::Migration
  def change
    create_table :perks_users do |t|
      t.integer :perk_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
