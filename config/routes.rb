Rails.application.routes.draw do
  root to: 'pages#home'

  resources :categories, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :products, only: [:index, :show] do
      resource :options, only: [:show]
    end
  end

  resources :products, only: [:new, :create, :edit, :update]
  resources :options, only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
