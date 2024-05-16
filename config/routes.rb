Rails.application.routes.draw do
  root "characters#index"

  resources :characters
  resources :enemies
end
