class Child < ApplicationRecord
  validates :name, presence:  true,
                   length:    {minimum: 2}

  enum color: [ :red, :orange, :yellow, :green, :blue, :purple ]

# back-end 'screentime' is now 'points' in the UI

  def self.daily_reset_and_distribution

    Child.all.each do |child|
      case child.color
        when 'red'
          # MoneyPool.adjust_current_balance_cents -75
        when 'orange'
          child.screentime += 1    # points
          # MoneyPool.adjust_current_balance_cents -50
        when 'yellow'
          child.screentime += 2    # points
          # MoneyPool.adjust_current_balance_cents -25
        when 'green'
          child.screentime += 3    # points
          # MoneyPool.adjust_current_balance_cents 25
        # when 'pink'
          # child.screentime += 10
          # MoneyPool.adjust_current_balance_cents 50
        when 'blue'
          child.screentime += 4    # points
          # MoneyPool.adjust_current_balance_cents 75
        when 'purple'
          child.screentime += 5    # points
          # MoneyPool.adjust_current_balance_cents 100
      end

      child.color = 'red'
      child.save
    end
  end

end
