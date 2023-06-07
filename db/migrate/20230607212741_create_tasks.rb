class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.belongs_to :tender, null: false, foreign_key: true
      t.integer :status, default: 0
      t.datetime :publish_at
      t.datetime :finish_at

      t.timestamps
    end
  end
end
