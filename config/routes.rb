Rails.application.routes.draw do
  resources :incidents
  root "site#index"
  namespace :api do
    resources :slack_hook, only: %i[create]
  end
end
