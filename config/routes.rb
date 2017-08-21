Rails.application.routes.draw do

  root to: "static_pages#home"
  match 'dashboard', to: 'static_pages#dashboard', via: 'get'
  resources :bitcoins do
    member { post :approve }
    member { post :confirm }
  end

  resources :bitcoin_steps
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
