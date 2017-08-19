Rails.application.routes.draw do

  root to: "static_pages#home"
  resources :bitcoins
  resources :bitcoin_steps
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
