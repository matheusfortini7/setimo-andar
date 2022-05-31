Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :properties do
    resources :sales, only: %i[create show]
  end
  resources :sales, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
