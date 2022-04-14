class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.integer :category_doctors, array: true, default: []
      t.timestamps
    end
  end
end
