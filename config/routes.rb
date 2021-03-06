Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :albums, except: [:index, :show]
  resources :artists, only: [:index, :show] do
    resources :albums, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
