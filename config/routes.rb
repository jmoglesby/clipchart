Rails.application.routes.draw do

  resources :children

  get 'welcome/home'

  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
