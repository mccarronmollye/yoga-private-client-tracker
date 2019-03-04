Rails.application.routes.draw do

  resources :clients do
    resources :yoga_classes, only: [:new, :show]
  end

  resources :yoga_classes

  devise_for :users, :controllers => { registrations: 'registrations' }, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'
end
