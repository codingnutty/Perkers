class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.string :title
      t.string :discount

      t.timestamps null: false
    end
  end
end
