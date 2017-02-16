class RemoveCategoryFromEquips < ActiveRecord::Migration[5.0]
  def change
    remove_column :equips, :category, :string
  end
end
