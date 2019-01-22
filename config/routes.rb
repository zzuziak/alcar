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
  get 'cookies', to: 'pages#cookies'

  resources :categories, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :products
  end

  resources :hours, only: [:edit, :update]
end
