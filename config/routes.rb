Rails.application.routes.draw do

  resources :children do
    put 'color_up' => :color_up
    put 'color_down' => :color_down
  end

  root 'children#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
