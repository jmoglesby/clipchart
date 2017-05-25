class MoneyPoolController < ApplicationController
  def manual_adjust_current_balance_cents
    MoneyPool.manual_adjust_current_balance_cents

    redirect_to root_path
  end

  def show
    @money_pool = MoneyPool.find(params[:id])
  end
end
