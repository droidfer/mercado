class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.string :brand
      t.string :manufacturer
      t.text :description
      t.belongs_to :subcategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
