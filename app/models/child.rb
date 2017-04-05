class Child < ApplicationRecord
  validates :name, presence: true,
                    length: {minimum: 2}

  enum color: [ :Red, :Orange, :Yellow, :Green, :Pink, :Blue, :Purple ]

  def self.daily_reset_and_distribution

    Child.all.each do |child|
      case child.color
        when "Red"
          MoneyPool.adjust_current_balance_cents -75
        when "Orange"
          MoneyPool.adjust_current_balance_cents -50
        when "Yellow"
          MoneyPool.adjust_current_balance_cents -25
        when "Green"
          child.screentime += 5
          MoneyPool.adjust_current_balance_cents 25
        when "Pink"
          child.screentime += 10
          MoneyPool.adjust_current_balance_cents 50
        when "Blue"
          child.screentime += 15
          MoneyPool.adjust_current_balance_cents 75
        when "Purple"
          child.screentime += 20
          MoneyPool.adjust_current_balance_cents 100
      end

      child.color = "Green"
      child.save
    end
  end

end
