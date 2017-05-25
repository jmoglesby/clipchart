class Child < ApplicationRecord
  validates :name, presence: true,
                    length: {minimum: 2}

  enum color: [ :red, :orange, :yellow, :green, :pink, :blue, :purple ]

  def self.daily_reset_and_distribution

    Child.all.each do |child|
      case child.color
        when 'red'
          MoneyPool.adjust_current_balance_cents -75
        when 'orange'
          MoneyPool.adjust_current_balance_cents -50
        when 'yellow'
          MoneyPool.adjust_current_balance_cents -25
        when 'green'
          child.screentime += 5
          MoneyPool.adjust_current_balance_cents 25
        when 'pink'
          child.screentime += 10
          MoneyPool.adjust_current_balance_cents 50
        when 'blue'
          child.screentime += 15
          MoneyPool.adjust_current_balance_cents 75
        when 'purple'
          child.screentime += 20
          MoneyPool.adjust_current_balance_cents 100
      end

      child.color = 'green'
      child.save
    end
  end

end
