class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.text :name
      t.text :color
      t.number :screentime
      t.timestamps
    end
  end
end
