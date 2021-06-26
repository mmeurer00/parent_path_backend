Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :resources
  resources :posts

  resources :users do
      resources :favorites, only: [:index, :create, :destroy]
  end

end
