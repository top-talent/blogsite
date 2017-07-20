Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :users

  resources :articles do
    resources :comments
  end

  get '/about' => 'home#about'
end
