class MoneyPoolsController < ApplicationController
  def manual_adjust_current_balance_cents
   MoneyPool.manual_adjust_current_balance_cents(params[:value])

   redirect_to root_path
  end

  def show
    @money_pool = MoneyPool.find(1)
  end

  private

  def money_pool_params
    params.require(:money_pool).permit(:id)
  end
end
