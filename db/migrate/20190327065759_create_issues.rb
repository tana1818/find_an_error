class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.string :large_tag, null: false
      t.string :middle_tag
      t.string :small_tag
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
