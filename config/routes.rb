Rails.application.routes.draw do

  resources :comments
  devise_for :users, :controllers => { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'


  resources :clients do
    resources :yoga_classes, only: [:new, :show]
  end

  get 'yoga_classes/thirty_minute_yoga_classes', to: 'yoga_classes#thirty_minute_yoga_classes', as: 'thirty_minute_yoga_classes'
  get 'yoga_classes/fourty_five_minute_yoga_classes', to: 'yoga_classes#fourty_five_minute_yoga_classes', as: 'fourty_five_minute_yoga_classes'
  get 'yoga_classes/sixty_minute_yoga_classes', to: 'yoga_classes#sixty_minute_yoga_classes', as: 'sixty_minute_yoga_classes'

  resources :yoga_classes
end
