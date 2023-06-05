class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.belongs_to :tender, null: false, foreign_key: true
      t.integer :status, default: 0
      t.decimal :price
      t.datetime :presented_at

      t.timestamps
    end
  end
end
