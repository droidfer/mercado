class CreateTenders < ActiveRecord::Migration[7.0]
  def change
    create_table :tenders do |t|
      t.string :name
      t.string :rfq_id
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
