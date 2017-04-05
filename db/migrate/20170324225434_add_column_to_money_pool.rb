class AddColumnToMoneyPool < ActiveRecord::Migration[5.0]
  def change
    add_column :money_pools, :current_balance_in_cents, :integer
  end
end
