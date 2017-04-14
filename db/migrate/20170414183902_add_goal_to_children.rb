class AddGoalToChildren < ActiveRecord::Migration[5.0]
  def change
    add_column :children, :goal, :text
  end
end
