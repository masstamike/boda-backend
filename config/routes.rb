Rails.application.routes.draw do
  resources :rsvps

  root 'rsvps#index'
end
