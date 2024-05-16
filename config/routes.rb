Rails.application.routes.draw do
  root "characters#index"

  resources :characters
  resources :enemies 
  post '/enemies/:id/inflict_damage/:damage', to: 'enemies#inflict_damage'
  resources :non_playable_characters
end
