class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.text :name
      t.integer :color, default: 3, null: false
      t.integer :screentime, default: 0, null: false
      t.timestamps
    end
  end
end
