Rails.application.routes.draw do
  root "characters#index"

  resources :characters
  post '/characters/:id/inflict_damage/:damage', to: 'characters#inflict_damage'
  post '/characters/:id/gain_experience/:experience', to: 'characters#gain_experience'
  
  resources :enemies 
  post '/enemies/:id/inflict_damage/:damage', to: 'enemies#inflict_damage'
  resources :non_playable_characters
end
