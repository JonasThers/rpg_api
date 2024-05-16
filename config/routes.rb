Rails.application.routes.draw do
  root "characters#index"

  resources :characters
  resources :enemies
  resources :non_playable_characters
end
