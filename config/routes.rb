Rails.application.routes.draw do
  resources :portfolios
  get 'angular-items', to: 'portfolios#angular'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      post :toogle_status
    end
  end

  root to: 'pages#home'
end
