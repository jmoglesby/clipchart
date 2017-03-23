class AddColorToChildren < ActiveRecord::Migration[5.0]
  def change
    remove_column :children, :color
    add_column :children, :color, :integer, default: 3, null: false
  end
end
