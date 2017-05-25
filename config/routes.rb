Rails.application.routes.draw do
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :children do
    member do
      put :color_up
      put :color_down
      post :redeem_screentime
    end
    collection do
      post :daily_reset_and_distribution
    end
  end

  resource :money_pool do
    post :adjust_current_balance_cents
    post :manual_adjust_current_balance_cents
  end

  root 'children#index'

  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
end
