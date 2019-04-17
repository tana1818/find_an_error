class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :parent_id, null: true, index: true
      t.references :group, foreign_key: true
      t.integer :division, null: false
      t.timestamps
    end
  end
end
