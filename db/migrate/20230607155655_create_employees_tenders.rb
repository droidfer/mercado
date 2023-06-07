class CreateEmployeesTenders < ActiveRecord::Migration[7.0]
  def change
    create_table :employees_tenders do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :tender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
