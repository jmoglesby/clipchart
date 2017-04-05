class MoneyPool < ApplicationRecord
  def self.money_pool
    @money_pool ||= MoneyPool.find_or_create_by(id: 1)
  end

  validates_inclusion_of :id, in: [1] # Only allow one

  def self.current_balance_in_cents
    money_pool.current_balance_in_cents
  end

  def self.current_balance
    current_balance_in_cents.to_f / 100
  end

  def self.adjust_current_balance_cents(value)
    money_pool.current_balance_in_cents += value
    money_pool.save
  end

end
