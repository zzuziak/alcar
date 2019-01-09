Rails.application.routes.draw do
  devise_for :users,
  path: "konto",
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'cmon_let_me_in' }
    
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
