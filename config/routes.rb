Rails.application.routes.draw do

  resources :children do
    member do
      put :color_up
      put :color_down
    end
    collection do
      post :daily_reset_and_distribution
    end
  end

  resource :money_pool

  root 'children#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
