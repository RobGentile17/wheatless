class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :user_id

      t.timestamps
    end

    add_index :recipes, [:user_id, :name]
  end
end
