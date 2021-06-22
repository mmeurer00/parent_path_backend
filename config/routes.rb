Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :resources do
    resources :favorites, only: [:create, :destroy]
  end

  resources :posts do
    resources :favorites, only: [:create, :destroy]
  end

  resources :users

end
