Rails.application.routes.draw do
  resources :incidents
  root "site#index"
end
