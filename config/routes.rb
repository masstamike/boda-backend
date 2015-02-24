Rails.application.routes.draw do
  resources :rsvps

  root 'rsvps#index'

  match '*any' => 'application#options', :via => [:options]
end
