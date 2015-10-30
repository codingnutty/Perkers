class CreateCategoriesPerks < ActiveRecord::Migration
  def change
    create_table :categories_perks do |t|
      t.integer :category_id
      t.integer :perk_id

      t.timestamps null: false
    end
  end
end
